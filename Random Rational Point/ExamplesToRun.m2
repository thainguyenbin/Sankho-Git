uninstallPackage "RandomRationalPoints";
loadPackage "RandomRationalPoints";
installPackage "RandomRationalPoints";
check RandomRationalPoints

allowableThreads = 8;
loadPackage "RandomRationalPoints";
loadPackage "FastLinAlg";
loadPackage "Cremona";

T = ZZ/101[x1,x2,x3,x4,x5,x6,x7];
 I =  ideal(x5*x6-x4*x7,x1*x6-x2*x7,x5^2-x1*x7,x4*x5-x2*x7,x4^2-x2*x6,x1*x4-x2*x5,x2*x3^3*x5+3*x2*x3^2*x7+8*x2^2*x5+3*x3*x4*x7-8*x4*x7+x6*x7,x1*x3^3*x5+3*x1*x3^2*x7+8*x1*x2*x5+3*x3*x5*x7-8*x5*x7+x7^2,x2*x3^3*x4+3*x2*x3^2*x6+8*x2^2*x4+3*x3*x4*x6-8*x4*x6+x6^2,x2^2*x3^3+3*x2*x3^2*x4+8*x2^3+3*x2*x3*x6-8*x2*x6+x4*x6,x1*x2*x3^3+3*x2*x3^2*x5+8*x1*x2^2+3*x2*x3*x7-8*x2*x7+x4*x7,x1^2*x3^3+3*x1*x3^2*x5+8*x1^2*x2+3*x1*x3*x7-8*x1*x7+x5*x7);
M = jacobian I;
J = I + chooseGoodMinors(25, 4, M);
T2 = ZZ/101[x1,x2,x3,x4,x5,x6,x7, Z];
J2 = ideal(apply(first entries gens J, t->homogenize(sub(t, T2), Z) ));

time randomPoints(J, Strategy=>LinearIntersection)



R = (ZZ/101)[YY_1, YY_2, YY_3, YY_4, YY_5, YY_6, YY_7, YY_8, YY_9];
I2 =  ideal(YY_8^2-YY_7*YY_9,YY_6*YY_8-YY_5*YY_9,YY_3*YY_8-YY_2*YY_9,YY_2*YY_8-YY_1*YY_9,YY_6*YY_7-YY_5*YY_8,YY_3*YY_7-YY_1*YY_9,YY_2*YY_7-YY_1*YY_8,YY_6^2-YY_4*YY_9,YY_5*YY_6-YY_4*YY_8,YY_4*YY_6+YY_1*YY_8-10*YY_1*YY_9-YY_2*YY_9+10*YY_3*YY_9,YY_3*YY_6-YY_8*YY_9-10*YY_9^2,YY_2*YY_6-YY_7*YY_9-10*YY_8*YY_9,YY_1*YY_6-YY_7*YY_8-10*YY_7*YY_9,YY_5^2-YY_4*YY_7,YY_4*YY_5+YY_1*YY_7-10*YY_1*YY_8-YY_1*YY_9+10*YY_2*YY_9,YY_3*YY_5-YY_7*YY_9-10*YY_8*YY_9,YY_2*YY_5-YY_7*YY_8-10*YY_7*YY_9,YY_1*YY_5-YY_7^2-10*YY_7*YY_8,YY_4^2+YY_7^2-YY_9^2,YY_3*YY_4-YY_5*YY_9-10*YY_6*YY_9,YY_2*YY_4-YY_5*YY_8-10*YY_5*YY_9,YY_1*YY_4-YY_5*YY_7-10*YY_5*YY_8,YY_2^2-YY_1*YY_3,YY_1*YY_2-10*YY_1*YY_3-YY_2*YY_3+10*YY_3^2+YY_4*YY_8+10*YY_4*YY_9,YY_1^2-YY_3^2+YY_4*YY_7+20*YY_4*YY_8-YY_4*YY_9);
M2 = jacobian I2;
J2 = I2 + chooseGoodMinors(15, 7, M2);
J3 = I2 + chooseGoodMinors(35, 7, M2);


extendingIdealByNonVanishingMinor(I, M, 4, Strategy=>GenericProjection)

R = ZZ/5[x,y]
R = ZZ/11[x,y,z]
I2 = intersect(ideal(x,y),ideal(x,z), ideal(y,z))

loadPackage "RandomRationalPoints";
loadPackage("Cremona", Reload=>true);
GF(103, 12)[t_0..t_6];
phi = toMap minors(3,matrix{{t_0..t_4},{t_1..t_5},{t_2..t_6}});
J = kernel(phi,2);
point((ring J)/J)
randomPoints(J, Verbose=>true, Strategy=>HybridProjectionIntersection, NumThreadsToUse=>3)
