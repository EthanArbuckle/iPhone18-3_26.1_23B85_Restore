@interface UIView(PUDisplayVelocity)
+ (void)_pu_animateView:()PUDisplayVelocity toCenter:bounds:transform:withInitialVelocity:usingSpringAnimation:completion:;
+ (void)pu_animateView:()PUDisplayVelocity toCenter:bounds:transform:usingDefaultDampedSpringWithDelay:initialVelocity:options:completion:;
+ (void)pu_animateView:()PUDisplayVelocity toCenter:bounds:transform:usingSpringWithDuration:delay:options:mass:stiffness:damping:initialVelocity:completion:;
+ (void)pu_animateView:()PUDisplayVelocity toCenter:bounds:transform:withDuration:delay:usingSpringWithDamping:initialVelocity:options:completion:;
@end

@implementation UIView(PUDisplayVelocity)

+ (void)_pu_animateView:()PUDisplayVelocity toCenter:bounds:transform:withInitialVelocity:usingSpringAnimation:completion:
{
  v138 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v30 = a5;
  v31 = a6;
  if (v29)
  {
    if (v30)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = [MEMORY[0x1E696AAA8] currentHandler];
    [v65 handleFailureInMethod:a2 object:a1 file:@"PUDisplayVelocity.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];

    if (v30)
    {
      goto LABEL_3;
    }
  }

  v66 = [MEMORY[0x1E696AAA8] currentHandler];
  [v66 handleFailureInMethod:a2 object:a1 file:@"PUDisplayVelocity.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"springAnimation != NULL"}];

LABEL_3:
  [v29 center];
  v33 = v32;
  v35 = v34;
  [v29 bounds];
  v69 = v37;
  v70 = v36;
  v67 = v39;
  v68 = v38;
  memset(&v136, 0, sizeof(v136));
  if (v29)
  {
    [v29 transform];
  }

  v134[0] = 0;
  v134[1] = v134;
  v134[2] = 0x2020000000;
  v135 = 1;
  v40 = dispatch_group_create();
  dispatch_group_enter(v40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke;
  block[3] = &unk_1E7B7E8B0;
  v41 = v31;
  v132 = v41;
  v133 = v134;
  dispatch_group_notify(v40, MEMORY[0x1E69E96A0], block);
  if (a7 == v33)
  {
    a7 = v33;
  }

  else
  {
    dispatch_group_enter(v40);
    v127[0] = MEMORY[0x1E69E9820];
    v127[1] = 3221225472;
    v127[2] = __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_2;
    v127[3] = &unk_1E7B7C518;
    v128 = v29;
    v129 = a7;
    v130 = v35;
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_3;
    v124[3] = &unk_1E7B7E8D8;
    v126 = v134;
    v125 = v40;
    (*(v30 + 2))(v30, v127, v124, a15 / (a7 - v33));
  }

  if (a8 != v35)
  {
    dispatch_group_enter(v40);
    v120[0] = MEMORY[0x1E69E9820];
    v120[1] = 3221225472;
    v120[2] = __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_4;
    v120[3] = &unk_1E7B7C518;
    v121 = v29;
    v122 = a7;
    v123 = a8;
    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_5;
    v117[3] = &unk_1E7B7E8D8;
    v119 = v134;
    v118 = v40;
    (*(v30 + 2))(v30, v120, v117, a16 / (a8 - v35));
  }

  v139.origin.x = a9;
  v139.origin.y = a10;
  v139.size.width = a11;
  v139.size.height = a12;
  v144.origin.y = v69;
  v144.origin.x = v70;
  v144.size.height = v67;
  v144.size.width = v68;
  if (!CGRectEqualToRect(v139, v144))
  {
    v140.origin.x = a9;
    v140.origin.y = a10;
    v140.size.width = a11;
    v140.size.height = a12;
    Width = CGRectGetWidth(v140);
    v141.origin.y = v69;
    v141.origin.x = v70;
    v141.size.height = v67;
    v141.size.width = v68;
    v43 = CGRectGetWidth(v141);
    v142.origin.x = a9;
    v142.origin.y = a10;
    v142.size.width = a11;
    v142.size.height = a12;
    Height = CGRectGetHeight(v142);
    v143.origin.y = v69;
    v143.origin.x = v70;
    v143.size.height = v67;
    v143.size.width = v68;
    v45 = Height / CGRectGetHeight(v143);
    v46 = 0.0;
    v47 = 0.0;
    if (Width / v43 != 1.0)
    {
      v47 = a17 / (Width / v43 + -1.0);
    }

    if (v45 != 1.0)
    {
      v46 = a17 / (v45 + -1.0);
    }

    v48 = (v47 + v46) * 0.5;
    dispatch_group_enter(v40);
    v111[0] = MEMORY[0x1E69E9820];
    v111[1] = 3221225472;
    v111[2] = __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_6;
    v111[3] = &unk_1E7B7FF20;
    v112 = v29;
    v113 = a9;
    v114 = a10;
    v115 = a11;
    v116 = a12;
    v108[0] = MEMORY[0x1E69E9820];
    v108[1] = 3221225472;
    v108[2] = __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_7;
    v108[3] = &unk_1E7B7E8D8;
    v110 = v134;
    v109 = v40;
    (*(v30 + 2))(v30, v111, v108, v48);
  }

  v49 = a4[1];
  *&t1.a = *a4;
  *&t1.c = v49;
  *&t1.tx = a4[2];
  t2 = v136;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v50 = *MEMORY[0x1E695EFF8];
    v105 = 0.0;
    v103 = 0.0;
    v104 = 0.0;
    v71 = v50;
    v106 = v50;
    t1 = v136;
    PUDecomposeTransform(&t1, &v106, &v105, &v104, &v103);
    v102 = v71;
    v100 = 0.0;
    v101 = 0.0;
    v99 = 0.0;
    v51 = a4[1];
    *&t1.a = *a4;
    *&t1.c = v51;
    *&t1.tx = a4[2];
    PUDecomposeTransform(&t1, &v102, &v101, &v100, &v99);
    if (!PXFloatApproximatelyEqualToFloat() || (PXFloatApproximatelyEqualToFloat() & 1) == 0)
    {
      v52 = PLUIGetLog();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        t1 = v136;
        v53 = NSStringFromCGAffineTransform(&t1);
        v54 = a4[1];
        *&t1.a = *a4;
        *&t1.c = v54;
        *&t1.tx = a4[2];
        v55 = NSStringFromCGAffineTransform(&t1);
        LODWORD(t2.a) = 138412546;
        *(&t2.a + 4) = v53;
        WORD2(t2.b) = 2112;
        *(&t2.b + 6) = v55;
        _os_log_impl(&dword_1B36F3000, v52, OS_LOG_TYPE_DEFAULT, "animation of translational transforms is not supported (%@ => %@)", &t2, 0x16u);
      }
    }

    if (v101 != v105 || v100 != v104)
    {
      v56 = v100 / v104;
      v57 = 0.0;
      v58 = 0.0;
      if (v101 / v105 != 1.0)
      {
        v58 = a17 / (v101 / v105 + -1.0);
      }

      if (v56 != 1.0)
      {
        v57 = a17 / (v56 + -1.0);
      }

      v59 = PXFloatApproximatelyEqualToFloat();
      v60 = v59;
      v105 = v101;
      if (v59)
      {
        v104 = v100;
      }

      dispatch_group_enter(v40);
      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_19;
      v93[3] = &unk_1E7B769C8;
      v61 = v29;
      v94 = v61;
      v95 = v106;
      v96 = v105;
      v97 = v104;
      v98 = v103;
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_2_20;
      v90[3] = &unk_1E7B7E8D8;
      v92 = v134;
      v62 = v40;
      v91 = v62;
      (*(v30 + 2))(v30, v93, v90, v58);
      if ((v60 & 1) == 0)
      {
        v104 = v100;
        dispatch_group_enter(v62);
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_3_21;
        v84[3] = &unk_1E7B769C8;
        v85 = v61;
        v86 = v106;
        v87 = v105;
        v88 = v104;
        v89 = v103;
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_4_22;
        v81[3] = &unk_1E7B7E8D8;
        v83 = v134;
        v82 = v62;
        (*(v30 + 2))(v30, v84, v81, v57);
      }
    }

    if (v99 != v103)
    {
      v63 = v99 - v103;
      v103 = v99;
      v64 = a18 / v63;
      dispatch_group_enter(v40);
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_5_23;
      v75[3] = &unk_1E7B769C8;
      v76 = v29;
      v77 = v106;
      v78 = v105;
      v79 = v104;
      v80 = v103;
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __123__UIView_PUDisplayVelocity___pu_animateView_toCenter_bounds_transform_withInitialVelocity_usingSpringAnimation_completion___block_invoke_6_24;
      v72[3] = &unk_1E7B7E8D8;
      v74 = v134;
      v73 = v40;
      (*(v30 + 2))(v30, v75, v72, v64);
    }
  }

  dispatch_group_leave(v40);

  _Block_object_dispose(v134, 8);
}

+ (void)pu_animateView:()PUDisplayVelocity toCenter:bounds:transform:usingSpringWithDuration:delay:options:mass:stiffness:damping:initialVelocity:completion:
{
  v30 = a11;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __158__UIView_PUDisplayVelocity__pu_animateView_toCenter_bounds_transform_usingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_completion___block_invoke;
  v37[3] = &unk_1E7B769A0;
  v38 = v30;
  v39 = a8;
  v40 = a9;
  v41 = a13;
  v42 = a17;
  v43 = a18;
  v31 = a12[1];
  v36[0] = *a12;
  v36[1] = v31;
  v36[2] = a12[2];
  v32 = v30;
  [a1 _pu_animateView:v32 toCenter:v36 bounds:v37 transform:a14 withInitialVelocity:a2 usingSpringAnimation:a3 completion:{a4, a5, a6, a7, a19, a20, a21}];
}

+ (void)pu_animateView:()PUDisplayVelocity toCenter:bounds:transform:usingDefaultDampedSpringWithDelay:initialVelocity:options:completion:
{
  v28 = a10;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __139__UIView_PUDisplayVelocity__pu_animateView_toCenter_bounds_transform_usingDefaultDampedSpringWithDelay_initialVelocity_options_completion___block_invoke;
  v33[3] = &unk_1E7B76978;
  v34 = v28;
  v35 = a8;
  v36 = a12;
  v29 = a11[1];
  v32[0] = *a11;
  v32[1] = v29;
  v32[2] = a11[2];
  v30 = v28;
  [a1 _pu_animateView:v30 toCenter:v32 bounds:v33 transform:a13 withInitialVelocity:a2 usingSpringAnimation:a3 completion:{a4, a5, a6, a7, a16, a17, a18}];
}

+ (void)pu_animateView:()PUDisplayVelocity toCenter:bounds:transform:withDuration:delay:usingSpringWithDamping:initialVelocity:options:completion:
{
  v29 = a11;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __147__UIView_PUDisplayVelocity__pu_animateView_toCenter_bounds_transform_withDuration_delay_usingSpringWithDamping_initialVelocity_options_completion___block_invoke;
  v36[3] = &unk_1E7B76950;
  v37 = v29;
  v38 = a8;
  v39 = a9;
  v40 = a17;
  v41 = a13;
  v30 = a12[1];
  v35[0] = *a12;
  v35[1] = v30;
  v35[2] = a12[2];
  v31 = v29;
  [a1 _pu_animateView:v31 toCenter:v35 bounds:v36 transform:a14 withInitialVelocity:a2 usingSpringAnimation:a3 completion:{a4, a5, a6, a7, a18, a19, a20}];
}

@end