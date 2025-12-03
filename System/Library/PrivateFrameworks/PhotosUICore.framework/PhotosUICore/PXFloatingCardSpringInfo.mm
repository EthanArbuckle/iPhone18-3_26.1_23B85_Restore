@interface PXFloatingCardSpringInfo
- (PXFloatingCardSpringInfo)initWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity;
- (double)valueAtTime:(double)time;
- (id)description;
@end

@implementation PXFloatingCardSpringInfo

- (id)description
{
  [(PXFloatingCardSpringInfo *)self mass];
  v4 = v3;
  [(PXFloatingCardSpringInfo *)self stiffness];
  v6 = v5;
  [(PXFloatingCardSpringInfo *)self damping];
  v8 = v7;
  [(PXFloatingCardSpringInfo *)self initialVelocity];
  SpringUtils::Spring::Spring(v27, v4, v6, v8, v9);
  v10 = MEMORY[0x1E696AEC0];
  if (v28 >= 1.0)
  {
    v11 = @"critically-damped";
  }

  else
  {
    v11 = @"underdamped";
  }

  [(PXFloatingCardSpringInfo *)self mass];
  v13 = v12;
  [(PXFloatingCardSpringInfo *)self stiffness];
  v15 = v14;
  [(PXFloatingCardSpringInfo *)self damping];
  v17 = v16;
  [(PXFloatingCardSpringInfo *)self initialVelocity];
  v19 = v18;
  [(PXFloatingCardSpringInfo *)self undershootTime];
  v21 = v20;
  [(PXFloatingCardSpringInfo *)self overshootTime];
  v23 = v22;
  [(PXFloatingCardSpringInfo *)self settlingTime];
  v25 = [v10 stringWithFormat:@"<%@: mass = %g, stiffness = %g, damping = %g, initialVelocity = %g, undershootTime = %g, overshootTime = %g, settlingTime = %g>", v11, v13, v15, v17, v19, v21, v23, v24];

  return v25;
}

- (double)valueAtTime:(double)time
{
  [(PXFloatingCardSpringInfo *)self mass];
  v6 = v5;
  [(PXFloatingCardSpringInfo *)self stiffness];
  v8 = v7;
  [(PXFloatingCardSpringInfo *)self damping];
  v10 = v9;
  [(PXFloatingCardSpringInfo *)self initialVelocity];
  SpringUtils::Spring::Spring(v17, v6, v8, v10, v11);
  if (v19 >= 1.0)
  {
    v12 = v21 + v22 * time;
    v15 = exp(-(time * v18));
  }

  else
  {
    v12 = exp(-(time * v19) * v18);
    v13 = v21;
    v14 = __sincos_stret(v20 * time);
    v15 = v22 * v14.__sinval + v13 * v14.__cosval;
  }

  return v12 * v15;
}

- (PXFloatingCardSpringInfo)initWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping initialVelocity:(double)velocity
{
  v88.receiver = self;
  v88.super_class = PXFloatingCardSpringInfo;
  v11 = [(PXFloatingCardSpringInfo *)&v88 init];
  if (v11)
  {
    if (mass <= 0.0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v11 file:@"PXFloatingCardSpringInfo.mm" lineNumber:396 description:{@"Invalid parameter not satisfying: %@", @"mass > 0"}];
    }

    if (stiffness <= 0.0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v11 file:@"PXFloatingCardSpringInfo.mm" lineNumber:397 description:{@"Invalid parameter not satisfying: %@", @"stiffness > 0"}];
    }

    if (damping <= 0.0)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:v11 file:@"PXFloatingCardSpringInfo.mm" lineNumber:398 description:{@"Invalid parameter not satisfying: %@", @"damping > 0"}];
    }

    v11->_mass = mass;
    v11->_stiffness = stiffness;
    v11->_damping = damping;
    v11->_initialVelocity = velocity;
    SpringUtils::Spring::Spring(v89, mass, stiffness, damping, velocity);
    v12 = v92;
    if (v92 < 1.0)
    {
      v14 = v93;
      v13 = v94;
      v15 = fabs(6.28318531 / v93);
      v16 = -v93;
      v85 = v15 * 0.5;
      v86 = v95;
      v17 = -v95;
      v18 = 0.0;
      v19 = 10;
      while (1)
      {
        v22 = __sincos_stret(v14 * v18);
        cosval = v22.__cosval;
        sinval = v22.__sinval;
        v23 = v86 * v22.__sinval + v13 * v22.__cosval;
        if (fabs(v23) < 0.001)
        {
          break;
        }

        v18 = v18 - v23 / ((v22.__sinval + v17 * v22.__cosval) * v16);
        if (!--v19)
        {
          v24 = __sincos_stret(v14 * v18);
          cosval = v24.__cosval;
          sinval = v24.__sinval;
          break;
        }
      }

      if ((sinval + v17 * cosval) * v16 >= 0.0)
      {
        v25 = v18;
      }

      else
      {
        v25 = v85 + v18;
      }

      v26 = fmod(v25, v15);
      if (v26 < 0.0)
      {
        v26 = v15 + v26;
      }

      v27 = __sincos_stret(v14 * (v15 * 0.25 + v26));
      v83 = v13;
      v28 = log(0.001 / fabs(v86 * v27.__sinval + v13 * v27.__cosval));
      v29 = v96;
      v30 = v97;
      v81 = v91;
      v31 = -v28 / (v12 * v91);
      v32 = -v96;
      v33 = 0.0;
      v34 = 10;
      do
      {
        v35 = __sincos_stret(v14 * v33);
        v36 = v30 * v35.__cosval + v29 * v35.__sinval;
        if (fabs(v36) < 0.000001)
        {
          break;
        }

        v33 = v33 - v36 / ((v35.__cosval * v32 + v30 * v35.__sinval) * v16);
        --v34;
      }

      while (v34);
      v37 = fmod(v33, v85);
      if (v37 >= 0.0)
      {
        v38 = v37;
      }

      else
      {
        v38 = v85 + v37;
      }

      v39 = exp(v81 * -(v38 * v12));
      v40 = __sincos_stret(v14 * v38);
      v41 = v39 * (v86 * v40.__sinval + v83 * v40.__cosval);
      if (v41 <= 1.0)
      {
        v42 = -1.0;
        if (v41 != 1.0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v42 = v38;
      }

      v38 = v85 + v38;
LABEL_35:
      if (v42 > v31 || (v54 = exp(v81 * -(v42 * v12)), v55 = __sincos_stret(v14 * v42), v54 * (v86 * v55.__sinval + v83 * v55.__cosval) < 1.0))
      {
        v42 = -1.0;
      }

      if (v38 > v31 || (v56 = exp(v81 * -(v38 * v12)), v57 = __sincos_stret(v14 * v38), v56 * (v86 * v57.__sinval + v83 * v57.__cosval) > 0.0))
      {
        v38 = -1.0;
      }

      v58 = -1.0;
      if (v42 < 0.0)
      {
        v59 = -1.0;
      }

      else
      {
        v59 = v42;
      }

      v11->_undershootTime = v59;
      if (v38 >= 0.0)
      {
        v58 = v38;
      }

LABEL_82:
      v11->_overshootTime = v58;
      v11->_settlingTime = v31;
      v76 = v11;
      goto LABEL_83;
    }

    v43 = 0.0;
    v44 = 0.0;
    if (v90 != 0.0)
    {
      v45 = 10;
      do
      {
        derivative = SpringUtils::Spring::first_derivative(v89, v44);
        if (fabs(derivative) < 0.000001)
        {
          break;
        }

        SpringUtils::Spring::second_derivative(v89, v44);
        v44 = v44 - derivative / v47;
        --v45;
      }

      while (v45);
    }

    v48 = fmax(v44, 0.0);
    v50 = v94;
    v49 = v95;
    v51 = v91;
    v52 = v94 + v95 * v48;
    v53 = v52 * exp(-(v48 * v91));
    if (fabs(v53) <= 0.002)
    {
      goto LABEL_49;
    }

    if (v53 > 1.0)
    {
      v82 = v48;
      v84 = -1.0;
      v43 = v48 + v48;
      goto LABEL_50;
    }

    if (v53 >= 0.0)
    {
LABEL_49:
      v82 = -1.0;
      v84 = -1.0;
    }

    else
    {
      v43 = v48 + v48;
      v82 = -1.0;
      v84 = v48;
    }

LABEL_50:
    v60 = 10;
    v31 = v43;
    while (1)
    {
      v61 = SpringUtils::Spring::first_derivative(v89, v31);
      if (fabs(v61) <= 2.22044605e-16 || (*&v61 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        break;
      }

      v63 = (v50 + v49 * v31) * exp(-(v31 * v51));
      v31 = v31 - (v63 + dbl_1A53812A0[v63 < 0.0]) / v61;
      if (!--v60)
      {
        if (v31 >= v84 && v31 >= 0.0 && v31 >= v82)
        {
          goto LABEL_81;
        }

        break;
      }
    }

    v65 = dbl_1A53812B0[v84 > 0.0];
    v66 = (v50 + v49 * (v43 * 0.5)) * exp(-(v43 * 0.5 * v51)) - v65;
    v67 = 0.1;
    v87 = v43 * 0.5;
    v68 = v43 * 0.5 + 0.1;
    if (((COERCE_UNSIGNED_INT64((v50 + v49 * v68) * exp(-(v68 * v51)) - v65) ^ *&v66) & 0x8000000000000000) != 0)
    {
      v70 = 0.0;
LABEL_68:
      v71 = v87 + v70;
      v31 = (v87 + v70 + v68) * 0.5;
      v72 = 32;
      do
      {
        v73 = (v50 + v49 * v31) * exp(-(v31 * v51));
        if (vabdd_f64(v73, v65) < 0.000000001)
        {
          break;
        }

        v74 = (v50 + v49 * v71) * exp(-(v71 * v51));
        if (v74 <= v73)
        {
          v75 = v74;
        }

        else
        {
          v75 = v73;
        }

        if (v74 <= v73)
        {
          v74 = v73;
        }

        if (v75 <= v65 && v74 >= v65)
        {
          v68 = v31;
        }

        else
        {
          v71 = v31;
        }

        v31 = (v71 + v68) * 0.5;
        --v72;
      }

      while (v72);
    }

    else
    {
      v69 = 32;
      while (--v69)
      {
        v70 = v67;
        v67 = v67 + v67;
        v68 = v87 + v67;
        if (((COERCE_UNSIGNED_INT64((v50 + v49 * (v87 + v67)) * exp(-((v87 + v67) * v51)) - v65) ^ *&v66) & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }
      }

      v31 = -1.0;
    }

LABEL_81:
    v58 = v84;
    v11->_undershootTime = v82;
    goto LABEL_82;
  }

LABEL_83:

  return v11;
}

@end