void sub_18916D0EC(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(UIVisualEffectView) initWithEffect_];
  type metadata accessor for _UIMagicMorphView();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7[OBJC_IVAR____UIMagicMorphView_appliesBackgroundFromView] = 0;
  v8 = v6;
  sub_1890DF7BC(v6);
  sub_188D738F8(1);
  *&v7[OBJC_IVAR____UIMagicMorphView_preferredMorphingAxis] = 1;
  *&v7[OBJC_IVAR____UIMagicMorphView_currentMorphingAxis] = 1;
  [a1 addSubview_];
  v9 = *(a2 + OBJC_IVAR____UITabMorphTransition_magicMorphView);
  *(a2 + OBJC_IVAR____UITabMorphTransition_magicMorphView) = v7;
  v10 = v7;

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v15[4] = sub_18916F6E0;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_188A4A8F0;
  v15[3] = &block_descriptor_134_1;
  v13 = _Block_copy(v15);
  v14 = v10;

  [a3 addNonIncrementingCompletion_];
  _Block_release(v13);
}

void sub_18916D2BC(void *a1)
{
  [a1 removeFromSuperview];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_18916BE48();
    [v3 setEnabled_];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____UITabMorphTransition_magicMorphView];
    *&v4[OBJC_IVAR____UITabMorphTransition_magicMorphView] = 0;
  }
}

void sub_18916D374(void *a1, uint64_t a2, char *a3, void *a4, void *a5)
{
  v9 = sub_18916EFBC(a1);
  v11 = v10;
  sub_18916F278(v9, v10, 0);
  sub_188D6C074(v11);
  [v9 contentCornerRadii];
  v52 = 0;
  v12 = &a3[OBJC_IVAR____UIMagicMorphView_overrideCornerRadii];
  v13 = v56;
  *(v12 + 2) = v55;
  *(v12 + 3) = v13;
  v14 = v54;
  *v12 = v53;
  *(v12 + 1) = v14;
  v12[64] = 0;
  sub_188D6180C();
  [v9 center];
  v16 = v15;
  v18 = v17;
  v19 = [v9 superview];
  [a4 convertPoint:v19 fromView:{v16, v18}];
  v21 = v20;
  v23 = v22;

  [a3 setCenter_];
  v24 = [v9 backgroundView];
  v25 = [(UIView *)v24 _typedStorage];
  sub_188A6852C(v49);

  if (v49[3])
  {
    sub_188A53994(v49, v50);
    sub_188ACE668(v49);
  }

  else
  {
    sub_18916F210(v49);
    memset(v50, 0, sizeof(v50));
    v51 = 0;
  }

  UIView._background.setter(v50);
  v26 = (a2 + OBJC_IVAR____UITabMorphTransition_activeViewContext);
  v27 = *(a2 + OBJC_IVAR____UITabMorphTransition_activeViewContext);
  v28 = v26[1];
  *v26 = v9;
  v26[1] = v11;
  v29 = v9;
  v30 = v11;
  sub_18916F0C0(v27, v28);
  v31 = [v29 contentView];
  [v31 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [a5 setFrame_];
  v40 = [v29 backgroundView];
  v41 = [v40 backgroundEffects];

  if (!v41)
  {
    sub_188A34624(0, &unk_1EA931120);
    sub_18A4A7548();
    v41 = sub_18A4A7518();
  }

  [a5 setBackgroundEffects_];

  v42 = [a5 layer];
  v43 = [v29 backgroundView];
  v44 = [v43 layer];

  [v44 borderWidth];
  v46 = v45;

  [v42 setBorderWidth_];
  v47 = [a5 layer];
  v48 = sub_18916F480(v29);
  [v47 setBorderColor_];
}

BOOL sub_18916D710(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  [a1 frame];
  if (CGRectIsEmpty(v20))
  {
    return 0;
  }

  [a2 frame];
  if (CGRectIsEmpty(v21))
  {
    return 0;
  }

  [a1 bounds];
  Center = UIRectGetCenter(v5, v6, v7);
  v9 = *(v2 + OBJC_IVAR____UITabMorphTransition_hostingContainerView);
  [a1 convertPoint:v9 toCoordinateSpace:Center];
  v11 = v10;
  v13 = v12;
  [a2 bounds];
  [a2 convertPoint:v9 toCoordinateSpace:{UIRectGetCenter(v14, v15, v16)}];
  return vabdd_f64(v13, v18) > 100.0 && vabdd_f64(v11, v17) > 100.0;
}

void sub_18916D804(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6, void (*a7)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_18916D8B4(a2, a3, a4, a5, 0);
    if (a6)
    {
      a7();
    }
  }
}

void sub_18916D8B4(void *a1, void *a2, void *a3, void *a4, char a5)
{
  v6 = *&v5[OBJC_IVAR____UITabMorphTransition_magicMorphView];
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR____UIMagicMorphView_backgroundView];
    if (v7)
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v45 = v13;
        v47 = a4;
        v14 = *&v5[OBJC_IVAR____UITabMorphTransition_hostingContainerView];
        v15 = *&v5[OBJC_IVAR____UITabMorphTransition_groupCompletion];
        if (a5 == 2 || (a5 & 1) != 0)
        {
          v16 = v6;
          v17 = v7;
          v44 = [a3 morphTargetSpringBehavior];
          if (a5 == 2 || (a5 & 1) != 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v18 = objc_opt_self();
          v19 = v6;
          v20 = v7;
          v44 = [v18 behaviorWithDampingRatio:1.0 response:0.2];
        }

        v42 = v15;
        v21 = OBJC_IVAR____UITabMorphTransition_intermediateShapeView;
        if (*&v5[OBJC_IVAR____UITabMorphTransition_intermediateShapeView])
        {
          v15 = v42;
        }

        else
        {
          v22 = [objc_allocWithZone(UIView) init];
          [v22 setAlpha_];
          [v14 addSubview_];
          v39 = *&v5[v21];
          *&v5[v21] = v22;
          v23 = v22;

          v24 = swift_allocObject();
          *(v24 + 16) = v23;
          v52 = sub_18902C28C;
          v53 = v24;
          aBlock = MEMORY[0x1E69E9820];
          v49 = 1107296256;
          v50 = sub_188A4A8F0;
          v51 = &block_descriptor_72_5;
          v25 = _Block_copy(&aBlock);
          v38 = v53;
          v40 = v23;

          v15 = v42;
          [v42 addNonIncrementingCompletion_];
          _Block_release(v25);
        }

LABEL_13:
        [v15 increment];
        v43 = objc_opt_self();
        v26 = swift_allocObject();
        *(v26 + 16) = v14;
        *(v26 + 24) = v6;
        *(v26 + 32) = a3;
        *(v26 + 40) = v47;
        *(v26 + 48) = a5;
        *(v26 + 56) = v5;
        *(v26 + 64) = a1;
        *(v26 + 72) = a2;
        *(v26 + 80) = v45;
        v52 = sub_18916F1CC;
        v53 = v26;
        aBlock = MEMORY[0x1E69E9820];
        v49 = 1107296256;
        v50 = sub_188A4A8F0;
        v51 = &block_descriptor_78_3;
        v41 = _Block_copy(&aBlock);
        v46 = v6;
        v27 = v7;
        v28 = v44;
        v29 = v14;
        v30 = a3;
        v31 = v47;
        v32 = v5;
        v33 = a1;
        v34 = a2;

        v35 = swift_allocObject();
        *(v35 + 16) = v15;
        v52 = sub_188EA97F0;
        v53 = v35;
        aBlock = MEMORY[0x1E69E9820];
        v49 = 1107296256;
        v50 = sub_188C3DD6C;
        v51 = &block_descriptor_84_5;
        v36 = _Block_copy(&aBlock);
        v37 = v15;

        [v43 _animateUsingSpringBehavior_tracking_animations_completion_];
        _Block_release(v36);
        _Block_release(v41);
      }
    }
  }
}

void sub_18916DCEC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7, void (*a8)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [a2 increment];
    v17 = sub_18916BE48();
    [v17 setEnabled_];

    sub_18916D8B4(a3, a4, a5, a6, 1);
    sub_18916DDF0(a5, a6);
    if ((a7 & 1) == 0)
    {
      a8();
    }

    [a2 complete];
  }
}

void sub_18916DDF0(void *a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____UITabMorphTransition_magicMorphView);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____UIMagicMorphView_backgroundView];
    if (v4)
    {
      v7 = *(v2 + OBJC_IVAR____UITabMorphTransition_groupCompletion);
      v8 = v4;
      v9 = v3;
      [v7 increment];
      v10 = [objc_opt_self() behaviorWithDampingRatio:0.8 response:0.2];
      v21 = objc_opt_self();
      v11 = swift_allocObject();
      v11[2] = v9;
      v11[3] = a1;
      v11[4] = a2;
      v11[5] = v8;
      v26 = sub_18916F1C0;
      v27 = v11;
      aBlock = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v24 = sub_188A4A8F0;
      v25 = &block_descriptor_60_2;
      v12 = _Block_copy(&aBlock);
      v20 = v8;
      v13 = v9;
      v14 = v10;
      v15 = a1;
      v16 = a2;

      v17 = swift_allocObject();
      *(v17 + 16) = v7;
      v26 = sub_18912B980;
      v27 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v24 = sub_188C3DD6C;
      v25 = &block_descriptor_66_4;
      v18 = _Block_copy(&aBlock);
      v19 = v7;

      [v21 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v18);
      _Block_release(v12);
    }
  }
}

void sub_18916E044(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void (*a6)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_18916BE48();
    [v13 setEnabled_];

    sub_18916D8B4(a2, a3, a4, a5, 2);
    sub_18916DDF0(a4, a5);
    a6();
  }
}

void sub_18916E118(int a1, int a2, id a3, uint64_t a4, void *a5)
{
  [a3 complete];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____UITabMorphTransition_currentRopeAnimation);
    v8 = Strong;
    v9 = v7;

    if (v7)
    {
      type metadata accessor for _UIRopeAnimation(0);
      v10 = a5;
      v11 = sub_18A4A7C88();

      if (v11)
      {
        swift_beginAccess();
        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = *&v12[OBJC_IVAR____UITabMorphTransition_currentRopeAnimation];
          *&v12[OBJC_IVAR____UITabMorphTransition_currentRopeAnimation] = 0;
        }
      }
    }
  }
}

void __swiftcall _UITabMorphTransition.init()(_UITabMorphTransition *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_18916E408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [a1 setHidden_];
  [a1 transitionDidEnd];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();

    sub_188F29584(0, 0, a4, a5);
    swift_endAccess();
  }
}

void sub_18916E4D0(void *a1, void *a2, void *a3, void *a4, unsigned __int8 a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v15 = a5;
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  [a2 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [a2 center];
  v102 = v24;
  v103 = v25;
  v101 = a4;
  if (v15 == 2)
  {
    v26 = a4;
LABEL_3:
    v27 = 0;
    goto LABEL_11;
  }

  v28 = v24;
  v29 = v25;
  v30 = a4;
  if (a5)
  {
    v27 = 1;
  }

  else
  {
    v87 = v23;
    v89 = v19;
    v90 = v17;
    v88 = v30;
    [a7 frame];
    Width = CGRectGetWidth(v104);
    [a7 frame];
    v32 = Width / CGRectGetHeight(v105);
    v33 = [a3 contentView];
    [v33 bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v42 = v35;
    v43 = v37;
    v44 = v39;
    v45 = v41;
    if (v32 <= 2.0)
    {
      Height = CGRectGetHeight(*&v42);
      [a3 center];
      v54 = v53;
      v56 = v55;
      v57 = [a3 superview];
      [a1 convertPoint:v57 fromView:{v54, v56}];
      v29 = v58;

      v103 = v29;
    }

    else
    {
      v21 = CGRectGetWidth(*&v42);
      [a3 center];
      v47 = v46;
      v49 = v48;
      v50 = [a3 superview];
      [a1 convertPoint:v50 fromView:{v47, v49}];
      v28 = v51;

      v102 = v28;
      Height = v87;
    }

    v59 = *(a6 + OBJC_IVAR____UITabMorphTransition_intermediateShapeView);
    if (!v59)
    {
      goto LABEL_3;
    }

    v60 = v59;
    [v60 setBounds_];
    [v60 setCenter_];
    v106.origin.x = v90;
    v106.origin.y = v89;
    v106.size.width = v21;
    v106.size.height = Height;
    [v60 _setContinuousCornerRadius_];
    v61 = objc_allocWithZone(type metadata accessor for _UIMagicMorphView.Destination());
    v62 = [objc_allocWithZone(UITargetedPreview) initWithView_];
    v63 = [v61 initWithPreview_];

    v101 = v63;
    v64 = v63;

    v65 = *&v88[OBJC_IVAR____UIMagicMorphDestination_shadowProperties];
    v66 = *&v64[OBJC_IVAR____UIMagicMorphDestination_shadowProperties];
    *&v64[OBJC_IVAR____UIMagicMorphDestination_shadowProperties] = v65;
    v67 = v65;

    v27 = 0;
    v64[OBJC_IVAR____UIMagicMorphDestination_allowsUserInteraction] = 0;
  }

LABEL_11:
  v68 = a5;
  v69 = objc_opt_self();
  v70 = swift_allocObject();
  v70[2] = a2;
  v70[3] = &v101;
  v70[4] = &v102;
  v70[5] = a9;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_18916F204;
  *(v71 + 24) = v70;
  *&v95 = sub_188E3FE50;
  *(&v95 + 1) = v71;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v94 = sub_188A4A968;
  *(&v94 + 1) = &block_descriptor_94_1;
  v72 = _Block_copy(&aBlock);
  a2;
  v73 = a9;

  [v69 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v72);
  if (v68 == 2)
  {
    v74 = 1;
  }

  else
  {
    v74 = v27;
  }

  if (a7 != a3)
  {
    [a3 alpha];
    [v73 setAlpha_];
  }

  if (v74)
  {
    v75 = [a3 backgroundView];
    v76 = [(UIView *)v75 _typedStorage];
    sub_188A6852C(&aBlock);

    v92[2] = v95;
    v92[3] = v96;
    v92[4] = v97;
    v92[5] = v98;
    v92[0] = aBlock;
    v92[1] = v94;
    if (*(&v94 + 1))
    {
      sub_188A53994(v92, v99);
      sub_188ACE668(v92);
    }

    else
    {
      sub_18916F210(v92);
      memset(v99, 0, sizeof(v99));
      v100 = 0;
    }

    UIView._background.setter(v99);
    v77 = [a3 backgroundView];
    v78 = [v77 backgroundEffects];

    if (!v78)
    {
      sub_188A34624(0, &unk_1EA931120);
      sub_18A4A7548();
      v78 = sub_18A4A7518();
    }

    [v73 setBackgroundEffects_];

    v79 = [v73 layer];
    v80 = [a3 backgroundView];
    v81 = [v80 layer];

    [v81 borderWidth];
    v83 = v82;

    [v79 setBorderWidth_];
    v84 = [v73 layer];
    v85 = sub_18916F480(a3);
    [v84 setBorderColor_];
  }

  v86 = v101;
}

id sub_18916EB88(void *a1, id *a2, double *a3, void *a4)
{
  v7 = *a2;
  sub_188D6C074(v7);

  [a1 setCenter_];
  [a1 bounds];

  return [a4 setFrame_];
}

void sub_18916EC0C(uint64_t a1, id a2, uint64_t a3, void *a4)
{
  [a2 contentCornerRadii];
  v11[64] = 0;
  v7 = a1 + OBJC_IVAR____UIMagicMorphView_overrideCornerRadii;
  v8 = v15;
  *(v7 + 32) = v14;
  *(v7 + 48) = v8;
  v9 = v13;
  *v7 = v12;
  *(v7 + 16) = v9;
  *(v7 + 64) = 0;
  sub_188D6180C();
  v10 = [a4 layer];
  [a2 contentCornerRadii];
  [v10 setCornerRadii_];
}

uint64_t sub_18916ECC8(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  *(v26 + 32) = a3;
  *(v26 + 40) = a4;
  *(v26 + 48) = a5;
  *(v26 + 56) = a6;
  *(v26 + 64) = a7;
  *(v26 + 72) = a8;
  *(v26 + 80) = a9;
  *(v26 + 88) = a17;
  *(v26 + 96) = a18;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_18916F654;
  *(v27 + 24) = v26;
  aBlock[4] = sub_188E3FE50;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_120_0;
  v28 = _Block_copy(aBlock);
  v29 = a1;

  [v25 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v28);

  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  return result;
}

void sub_18916EE90(char *a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  [a1 setCenter_];
  v25.origin.x = a4;
  v25.origin.y = a5;
  v25.size.width = a6;
  v25.size.height = a7;
  v26.origin.x = a8;
  v26.origin.y = a9;
  v26.size.width = a10;
  v26.size.height = a11;
  if (!CGRectEqualToRect(v25, v26))
  {
    [*&a1[OBJC_IVAR____UIMagicMorphView_backgroundView] setFrame_];
    [a1 setBounds_];
    a1[OBJC_IVAR____UIMagicMorphView_contentSizeDidChange] = 1;
    [a1 setNeedsLayout];
    if ([objc_opt_self() _isInAnimationBlock])
    {
      [a1 layoutIfNeeded];
    }

    sub_1890E07A8();
  }
}

id sub_18916EFBC(void *a1)
{
  v1 = a1;
  v2 = [v1 contentView];
  v3 = objc_allocWithZone(type metadata accessor for _UIMagicMorphView.Destination());
  v4 = [objc_allocWithZone(UITargetedPreview) initWithView_];
  v5 = [v3 initWithPreview_];

  v6 = [v1 shadowProperties];
  v7 = *&v5[OBJC_IVAR____UIMagicMorphDestination_shadowProperties];
  *&v5[OBJC_IVAR____UIMagicMorphDestination_shadowProperties] = v6;

  return v1;
}

void sub_18916F0C0(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t objectdestroy_16Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18916F210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_18916F278(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = [a1 componentKey];
  v9 = sub_18A4A7288();
  v11 = v10;

  [a1 setHidden_];
  v12 = OBJC_IVAR____UITabMorphTransition_activeViewContexts;
  swift_beginAccess();

  v13 = a1;
  v14 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v4 + v12);
  *(v4 + v12) = 0x8000000000000000;
  sub_188EA16FC(v13, v14, v9, v11, isUniquelyReferenced_nonNull_native);

  *(v4 + v12) = v23;
  swift_endAccess();
  [v13 prepareForTransitionToVisibility_];
  v16 = *(v4 + OBJC_IVAR____UITabMorphTransition_groupCompletion);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v13;
  v18[3] = v14;
  v18[4] = v17;
  v18[5] = v9;
  v18[6] = v11;
  aBlock[4] = sub_18916F6B0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A8F0;
  aBlock[3] = &block_descriptor_127_2;
  v19 = _Block_copy(aBlock);
  v20 = v13;
  v21 = v14;

  [v16 addNonIncrementingCompletion_];
  _Block_release(v19);
}

id sub_18916F480(void *a1)
{
  v2 = [a1 backgroundView];
  v3 = [v2 layer];

  v4 = [v3 borderColor];
  if (v4)
  {
    v5 = [a1 backgroundView];
    v6 = [v5 layer];

    [v6 borderWidth];
    v8 = v7;

    if (v8 > 0.0)
    {
      return v4;
    }
  }

  v9 = [a1 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  v11 = _UIFloatingTabBarGetPlatformMetrics(v10);
  v12 = [v11 sidebarBorderColor];
  if (v12)
  {
    v13 = v12;
    v4 = [v12 CGColor];
  }

  else
  {

    return 0;
  }

  return v4;
}

id sub_18916F5FC(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

double sub_18916F738(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (qword_1ED48C638 != -1)
  {
    v12 = a8;
    v13 = a7;
    v14 = a4;
    v15 = a3;
    v16 = a6;
    v17 = a2;
    v18 = a5;
    v19 = a1;
    swift_once();
    a1 = v19;
    a5 = v18;
    a2 = v17;
    a6 = v16;
    a3 = v15;
    a4 = v14;
    a7 = v13;
    a8 = v12;
  }

  result = vabdd_f64(a5, a1) / *&xmmword_1ED4A3470;
  v9 = vabdd_f64(a6, a2) / *&xmmword_1ED4A3470;
  v10 = vabdd_f64(a7, a3) / *(&xmmword_1ED4A3470 + 1);
  v11 = vabdd_f64(a8, a4) / *(&xmmword_1ED4A3470 + 1);
  if (result <= v9)
  {
    result = v9;
  }

  if (result <= v10)
  {
    result = v10;
  }

  if (result <= v11)
  {
    return v11;
  }

  return result;
}

double sub_18916F824@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ED48C638 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1ED4A3470;
  *a1 = xmmword_1ED4A3470;
  return result;
}

float64x2_t sub_18916F888@<Q0>(float64x2_t *a1@<X8>)
{
  if (qword_1ED48C638 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = vmulq_f64(xmmword_1ED4A3470, xmmword_1ED4A3470);
  *a1 = result;
  return result;
}

BOOL sub_18916F8F0(double *a1, double *a2)
{
  if (vabdd_f64(*v2, *a1) > *a2)
  {
    return 0;
  }

  if (vabdd_f64(v2[1], a1[1]) > *a2)
  {
    return 0;
  }

  v4 = a2[1];
  return vabdd_f64(v2[2], a1[2]) <= v4 && vabdd_f64(v2[3], a1[3]) <= v4;
}

void sub_18916FBE0(char a1)
{
  objc_msgSendSuper2(&v4, sel_setHighlighted_, a1 & 1);
  if ([v1 isHighlighted])
  {
    [v1 updateBackgroundView];
  }

  v2 = [v1 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v2 setHidden_];
  }
}

char *sub_18916FC98(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____UIContextMenuPinnedFooterView_itemView;
  *&v4[v9] = [objc_allocWithZone(_UIContextMenuCellContentView) init];
  *&v4[OBJC_IVAR____UIContextMenuPinnedFooterView_backgroundShapeInsets] = UIEdgeInsetsZero;
  *&v4[OBJC_IVAR____UIContextMenuPinnedFooterView_menuElement] = 0;
  v74.receiver = v4;
  v74.super_class = _UIContextMenuPinnedFooterView;
  v10 = objc_msgSendSuper2(&v74, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = objc_allocWithZone(_UIScrollPocketInteraction);
  v12 = v10;
  v73 = [v11 initWithStyle_];
  v13 = [v12 contentView];
  [v13 addInteraction_];

  v14 = OBJC_IVAR____UIContextMenuPinnedFooterView_itemView;
  [*&v12[OBJC_IVAR____UIContextMenuPinnedFooterView_itemView] setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = *&v12[v14];
  sub_188A34624(0, &qword_1EA92E700);
  [v15 setLayoutClass_];
  v16 = v12;
  v17 = [v16 &selRef_contentsIOSurface];
  [v17 addSubview_];

  v18 = [objc_allocWithZone(UIView) init];
  v19 = [v16 traitCollection];
  v20 = [v19 userInterfaceIdiom];

  v21 = _UIContextMenuSectionSeparatorBackgroundColor(v20);
  [v18 setBackgroundColor_];

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = [v16 &selRef_contentsIOSurface];
  [v22 addSubview_];

  v72 = [v16 platformMetrics];
  [v72 sectionSeparatorHeight];
  v24 = v23;
  [v72 sectionInsets];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [v16 _shouldReverseLayoutDirection];

  _UIEdgeInsetsFromDirectionalEdgeInsets();
  v33 = &v16[OBJC_IVAR____UIContextMenuPinnedFooterView_backgroundShapeInsets];
  *v33 = v34;
  *(v33 + 1) = v35;
  *(v33 + 2) = v36;
  *(v33 + 3) = v37;
  v71 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_18A66BC70;
  v39 = [v18 leadingAnchor];
  v40 = [v16 &selRef_contentsIOSurface];
  v41 = [v40 leadingAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v38 + 32) = v42;
  v43 = [v18 trailingAnchor];
  v44 = [v16 &selRef_contentsIOSurface];
  v45 = [v44 trailingAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v38 + 40) = v46;
  v47 = [v18 topAnchor];
  v48 = [v16 &selRef_contentsIOSurface];
  v49 = [v48 topAnchor];

  v50 = [v47 constraintEqualToAnchor_];
  *(v38 + 48) = v50;
  v51 = [v18 heightAnchor];
  v52 = [v51 constraintEqualToConstant_];

  *(v38 + 56) = v52;
  v53 = [*&v12[v14] leadingAnchor];
  v54 = [v16 &selRef_contentsIOSurface];
  v55 = [v54 leadingAnchor];

  v56 = [v53 constraintEqualToAnchor:v55 constant:v28];
  *(v38 + 64) = v56;
  v57 = [*&v12[v14] trailingAnchor];
  v58 = [v16 &selRef_contentsIOSurface];
  v59 = [v58 trailingAnchor];

  v60 = [v57 constraintEqualToAnchor:v59 constant:-v32];
  *(v38 + 72) = v60;
  v61 = [*&v12[v14] topAnchor];
  v62 = [v16 &selRef_contentsIOSurface];
  v63 = [v62 topAnchor];

  v64 = [v61 constraintEqualToAnchor:v63 constant:v26];
  *(v38 + 80) = v64;
  v65 = [*&v12[v14] bottomAnchor];
  v66 = [v16 &selRef_contentsIOSurface];

  v67 = [v66 bottomAnchor];
  v68 = [v65 constraintEqualToAnchor:v67 constant:-v30];

  *(v38 + 88) = v68;
  sub_188A34624(0, &qword_1ED48CFF0);
  v69 = sub_18A4A7518();

  [v71 activateConstraints_];

  return v16;
}

void sub_1891704C4()
{
  v1 = [v0 menuElement];
  if (v1)
  {
    v15 = v1;
    v2 = [v1 attributes];
    v3 = [v15 attributes] & 2 | v2 & 1;
    v4 = [v15 attributedTitle];
    v5 = [v0 itemView];
    v6 = v5;
    if (v4)
    {
      [v5 setAttributedTitle_];
    }

    else
    {
      v7 = [v15 title];
      if (!v7)
      {
        sub_18A4A7288();
        v7 = sub_18A4A7258();
      }

      [v6 setTitle_];
      v4 = v6;
      v6 = v7;
    }

    v8 = [v0 itemView];
    v9 = [v15 subtitle];
    [v8 setSubtitle_];

    v10 = [v0 itemView];
    v11 = [v15 image];
    [v10 setImage_];

    v12 = [v0 itemView];
    [v12 setOptions_];

    v13 = [v0 itemView];
    v14 = [v15 accessibilityIdentifier];
    [v13 setAccessibilityIdentifier_];
  }
}

void sub_18917077C()
{
  v1 = [v0 backgroundView];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = [v0 itemView];
      v6 = [v5 contentShape];

      v7 = [v0 traitCollection];
      v8 = [v7 userInterfaceIdiom];

      v28 = _UIContextMenuBackgroundDescriptorForContentShape(v8, v6);
      v9 = v2;
      v10 = [v0 contentView];
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      [v4 setFrame_];
      v19 = [v28 backgroundColor];
      [v4 setBackgroundColor_];

      v20 = [v28 effect];
      [v4 setEffect_];

      v21 = [v4 contentView];
      v22 = [v28 contentBackgroundColor];
      [v21 setBackgroundColor_];

      v23 = [v28 backgroundShape];
      if (v23)
      {
        v24 = v23;
        [v0 backgroundShapeInsets];
        v27 = [v24 shapeByApplyingInsets_];

        [v4 _applyShape_];
        v25 = v27;
      }

      else
      {

        v25 = v28;
      }

      return;
    }
  }

  v26 = [objc_allocWithZone(UIVisualEffectView) init];
  [v0 setBackgroundView_];

  [v0 updateBackgroundView];
}

id _UIContextMenuBackgroundDescriptorForContentShape(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _UIContextMenuGetPlatformMetrics(a1);
  v5 = [v4 menuHighlightBackgroundDescriptorProvider];
  v6 = (v5)[2](v5, v3);

  return v6;
}

id _UIContextMenuSectionSeparatorBackgroundColor(uint64_t a1)
{
  v1 = _UIContextMenuGetPlatformMetrics(a1);
  v2 = [v1 sectionSeparatorColor];

  return v2;
}

double sub_189170CD8(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v14 = swift_dynamicCastObjCProtocolConditional();
  if (v14)
  {
    v15 = v14;
    swift_unknownObjectRetain();
    v16 = a1;
    [objc_msgSend(v16 coordinateSpace)];
    a2 = v17;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return a2;
}

uint64_t sub_189170DE0@<X0>(uint64_t *a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    a1[3] = &type metadata for UIListContentConfiguration;
    a1[4] = &protocol witness table for UIListContentConfiguration;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *a1 = v4;

    return swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _UICustomContentConfiguration();
    v6 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration;

    return sub_188A53994(v6, a1);
  }
}

id sub_189170EC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = *(v6 + 16);
  v11(v16 - v12, v3, a1, v10);
  if (swift_dynamicCast())
  {
    v13 = *(v16[1] + 16);

    return v13;
  }

  else
  {
    v15 = type metadata accessor for _UICustomContentConfiguration();
    (v11)(v8, v3, a1);
    return sub_188C7D408(v8, v15, a1, a2);
  }
}

void (*UITabBarControllerSidebar.headerContentConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  if ([v1 headerContentConfiguration])
  {
    swift_getObjectType();
    sub_189170DE0(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  return sub_1891710E4;
}

double sub_1891710FC@<D0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  if ([v2 *a1])
  {
    swift_getObjectType();
    sub_189170DE0(a2);

    swift_unknownObjectRelease();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_189171170(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  sub_188BC6E54(a1, v14);
  v7 = *a2;
  sub_188BC6E54(v14, v11);
  v8 = v12;
  if (v12)
  {
    v9 = v13;
    __swift_project_boxed_opaque_existential_0(v11, v12);
    v8 = sub_189170EC8(v8, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
    sub_188BC6DEC(v11);
  }

  [v7 *a5];
  swift_unknownObjectRelease();
  return sub_188BC6DEC(v14);
}

void (*UITabBarControllerSidebar.footerContentConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  if ([v1 footerContentConfiguration])
  {
    swift_getObjectType();
    sub_189170DE0(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  return sub_1891712E0;
}

void sub_1891712EC(uint64_t *a1, char a2, SEL *a3)
{
  v5 = *a1;
  sub_188BC6E54(*a1, *a1 + 40);
  if (a2)
  {
    sub_188BC6E54(v5 + 40, v5 + 80);
    v6 = *(v5 + 104);
    if (v6)
    {
      v7 = *(v5 + 112);
      __swift_project_boxed_opaque_existential_0((v5 + 80), *(v5 + 104));
      v6 = sub_189170EC8(v6, v7);
      __swift_destroy_boxed_opaque_existential_0Tm(v5 + 80);
    }

    else
    {
      sub_188BC6DEC(v5 + 80);
    }

    [*(v5 + 120) *a3];
    swift_unknownObjectRelease();
    sub_188BC6DEC(v5 + 40);
  }

  else
  {
    v8 = *(v5 + 64);
    if (v8)
    {
      v9 = *(v5 + 72);
      __swift_project_boxed_opaque_existential_0((v5 + 40), *(v5 + 64));
      v8 = sub_189170EC8(v8, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v5 + 40);
    }

    else
    {
      sub_188BC6DEC(v5 + 40);
    }

    [*(v5 + 120) *a3];
    swift_unknownObjectRelease();
  }

  sub_188BC6DEC(v5);

  free(v5);
}

void UITabBarControllerSidebar.scroll(to:animated:)(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (v4 == 1)
    {
      v5 = [objc_opt_self() targetForFooter];
    }

    else
    {
      v5 = [objc_opt_self() targetForTab_];
    }
  }

  else
  {
    v5 = [objc_opt_self() targetForHeader];
  }

  v6 = v5;
  [v2 scrollToTarget:v6 animated:a2 & 1];
}

uint64_t sub_1891714EC(uint64_t a1, void **a2)
{
  sub_188A53994(a1, v7);
  v3 = *a2;
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_0(v7, v8);
  [v3 setContentConfiguration_];
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

uint64_t UITabSidebarItem.contentConfiguration.setter(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v4);
  [v2 setContentConfiguration_];
  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void (*UITabSidebarItem.contentConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = [v1 contentConfiguration];
  swift_getObjectType();
  sub_189170DE0(v4);
  swift_unknownObjectRelease();
  return sub_189171694;
}

void sub_189171694(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_188A53994(*a1, (v2 + 5));
    v4 = v2[8];
    v5 = v2[9];
    __swift_project_boxed_opaque_existential_0(v2 + 5, v4);
    [v3 setContentConfiguration_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 5));
  }

  else
  {
    v6 = v2[3];
    v7 = v2[4];
    __swift_project_boxed_opaque_existential_0(*a1, v6);
    [v3 setContentConfiguration_];
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);

  free(v2);
}

uint64_t (*UITabSidebarItem.backgroundConfiguration.modify(uint64_t *a1))()
{
  a1[1] = v1;
  v3 = [v1 backgroundConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4;
  return sub_189171828;
}

uint64_t UITabSidebarItem.accessories.getter()
{
  v1 = [v0 accessories];
  sub_189172888();
  v2 = sub_18A4A7548();

  if (v2 >> 62)
  {
    goto LABEL_38;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v15 = MEMORY[0x1E69E7CC0];
      sub_188CFB090(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v4 = 0;
      v5 = v15;
      while (1)
      {
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v7 = sub_188E49A80(v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v7 = *(v2 + 8 * v4 + 32);
        }

        v8 = v7;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v9 = 0;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v9 = 8;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v9 = 2;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v9 = 3;
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v9 = 4;
                }

                else
                {
                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    v9 = 5;
                  }

                  else
                  {
                    objc_opt_self();
                    if (swift_dynamicCastObjCClass())
                    {
                      v9 = 6;
                    }

                    else
                    {
                      objc_opt_self();
                      if (swift_dynamicCastObjCClass())
                      {
                        v9 = 7;
                      }

                      else
                      {
                        objc_opt_self();
                        v10 = swift_dynamicCastObjCClass();
                        if (v10)
                        {
                          v9 = [v10 customView];
                        }

                        else
                        {
                          objc_opt_self();
                          if (swift_dynamicCastObjCClass())
                          {
                            v9 = 1;
                          }

                          else
                          {
                            objc_opt_self();
                            if (!swift_dynamicCastObjCClass())
                            {
                              goto LABEL_42;
                            }

                            v9 = 9;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v12 = *(v15 + 16);
        v11 = *(v15 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_188CFB090((v11 > 1), v12 + 1, 1);
        }

        *(v15 + 16) = v12 + 1;
        v13 = v15 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v8;
        ++v4;
        if (v6 == v3)
        {

          return v5;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      v3 = sub_18A4A7F68();
      if (!v3)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_42:
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
LABEL_39:

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void UITabSidebarItem.accessories.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_18A4A8208();
    v4 = 40;
    do
    {
      v5 = *(a1 + v4);
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v4 += 16;
      --v3;
    }

    while (v3);
  }

  sub_189172888();
  v6 = sub_18A4A7518();

  [v1 setAccessories_];
}

uint64_t (*UITabSidebarItem.accessories.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = UITabSidebarItem.accessories.getter();
  return sub_189171D10;
}

id sub_189171D54@<X0>(uint64_t a1@<X8>)
{
  result = [v1 tab];
  v4 = result;
  if (result)
  {
    goto LABEL_4;
  }

  result = [v1 action];
  if (result)
  {
    v4 = 0;
LABEL_4:
    *a1 = result;
    *(a1 + 8) = v4 == 0;
    return result;
  }

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

void (*_UITabBarControllerSidebar._headerContentConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  if ([v1 headerContentConfiguration])
  {
    swift_getObjectType();
    sub_189170DE0(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  return sub_189171EEC;
}

double sub_189171F04@<D0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  if ([*a1 *a2])
  {
    swift_getObjectType();
    sub_189170DE0(a3);

    swift_unknownObjectRelease();
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_189171F84(uint64_t a1, SEL *a2)
{
  v4 = v2;
  sub_188BC6E54(a1, v12);
  sub_188BC6E54(v12, v9);
  v6 = v10;
  if (v10)
  {
    v7 = v11;
    __swift_project_boxed_opaque_existential_0(v9, v10);
    v6 = sub_189170EC8(v6, v7);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    sub_188BC6DEC(v9);
  }

  [v4 *a2];
  swift_unknownObjectRelease();
  sub_188BC6DEC(a1);
  return sub_188BC6DEC(v12);
}

void (*_UITabBarControllerSidebar._footerContentConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  if ([v1 footerContentConfiguration])
  {
    swift_getObjectType();
    sub_189170DE0(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  return sub_1891720F8;
}

void sub_189172110(uint64_t *a1, char a2, void (*a3)(char *))
{
  v4 = *a1;
  if (a2)
  {
    sub_188BC6E54(*a1, (v4 + 40));
    a3(v4 + 40);
    sub_188BC6DEC(v4);
  }

  else
  {
    a3(*a1);
  }

  free(v4);
}

double _sSo16UITabSidebarItemC5UIKitE18configurationStateAC019UICellConfigurationF0Vvg_0@<D0>(uint64_t a1@<X8>)
{
  sub_188C97D48([v1 configurationState], v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t _sSo16UITabSidebarItemC5UIKitE20contentConfigurationAC09UIContentF0_pvg_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 contentConfiguration];
  swift_getObjectType();
  sub_189170DE0(a1);

  return swift_unknownObjectRelease();
}

uint64_t sub_18917224C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 contentConfiguration];
  swift_getObjectType();
  sub_189170DE0(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1891722A8(uint64_t a1, void **a2)
{
  sub_188A53994(a1, v10);
  v3 = *a2;
  sub_188A53994(v10, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_0(v7, v8);
  [v3 setContentConfiguration_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

uint64_t _UITabSidebarItem._contentConfiguration.setter(uint64_t a1)
{
  v2 = v1;
  sub_188A53994(a1, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_0(v7, v8);
  [v2 setContentConfiguration_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

void (*_UITabSidebarItem._contentConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  v5 = [v1 contentConfiguration];
  swift_getObjectType();
  sub_189170DE0(v4);
  swift_unknownObjectRelease();
  return sub_189172474;
}

void sub_189172474(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  if (a2)
  {
    sub_188A53994(*a1, (v2 + 5));
    sub_188A53994((v2 + 5), (v2 + 10));
    v4 = v2[13];
    v5 = v2[14];
    __swift_project_boxed_opaque_existential_0(v2 + 10, v4);
    [v3 setContentConfiguration_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 5));
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 10));
    v6 = v2;
  }

  else
  {
    sub_188A53994(*a1, (v2 + 5));
    v7 = v2[8];
    v8 = v2[9];
    __swift_project_boxed_opaque_existential_0(v2 + 5, v7);
    [v3 setContentConfiguration_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    v6 = (v2 + 5);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v6);

  free(v2);
}

uint64_t sub_189172590@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 backgroundConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

void _sSo16UITabSidebarItemC5UIKitE23backgroundConfigurationAC012UIBackgroundF0Vvs_0(uint64_t a1)
{
  v2 = *(*a1 + 16);

  [v1 setBackgroundConfiguration_];
}

uint64_t (*_UITabSidebarItem._backgroundConfiguration.modify(uint64_t *a1))()
{
  a1[1] = v1;
  v3 = [v1 backgroundConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4;
  return sub_189172A50;
}

void sub_1891726DC(id *a1, char a2)
{
  v2 = a1[1];
  v3 = *(*a1 + 2);
  if (a2)
  {
    [a1[1] setBackgroundConfiguration_];
  }

  else
  {
    v4 = v3;

    [v2 setBackgroundConfiguration_];
  }
}

uint64_t sub_189172778@<X0>(SEL *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [v3 *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = swift_allocObject();
  *(result + 16) = v6;
  *a3 = result;
  return result;
}

uint64_t (*_UITabSidebarItem._accessories.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = UITabSidebarItem.accessories.getter();
  return sub_189172A5C;
}

void sub_189172830(uint64_t *a1, char a2)
{
  if (a2)
  {

    UITabSidebarItem.accessories.setter(v2);
  }

  else
  {
    UITabSidebarItem.accessories.setter(*a1);
  }
}

unint64_t sub_189172888()
{
  result = qword_1ED48BEB8;
  if (!qword_1ED48BEB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48BEB8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So25UITabBarControllerSidebarC5UIKitE12ScrollTargetO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18917295C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1891729B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_189172A60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v2 = [*&v0[OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_view] snapshotViewAfterScreenUpdates_];
    if (v2)
    {
      v3 = v2;
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v0;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_1891734F0;
      *(v6 + 24) = v5;
      aBlock[4] = sub_188E3FE50;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A968;
      aBlock[3] = &block_descriptor_23_3;
      v7 = _Block_copy(aBlock);
      v8 = v0;

      v9 = v3;

      [v4 performWithoutAnimation_];
      _Block_release(v7);
      LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

      if (v4)
      {
        __break(1u);
      }

      else
      {
        v10 = swift_unknownObjectWeakLoadStrong();
        if (v10)
        {

          v11 = swift_unknownObjectWeakLoadStrong();
          if (v11)
          {
            v12 = v11;
            [v11 _setDonatedTitleView_];
          }

          swift_unknownObjectWeakAssign();
        }

        v13 = &v8[OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_frameInGlobalCoordinateSpace];
        v14 = v8[OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_contributesToPocketContentRect];
        v15 = type metadata accessor for NavigationBarLargeTitleReparentingHelper.TemporaryDonatedTitle();
        v20 = *(v13 + 1);
        v21 = *v13;
        v16 = objc_allocWithZone(v15);
        *&v16[OBJC_IVAR____TtCC5UIKit40NavigationBarLargeTitleReparentingHelper21TemporaryDonatedTitle_view] = v9;
        v17 = &v16[OBJC_IVAR____TtCC5UIKit40NavigationBarLargeTitleReparentingHelper21TemporaryDonatedTitle_frameInGlobalCoordinateSpace];
        *v17 = v21;
        v17[1] = v20;
        *&v16[OBJC_IVAR____TtCC5UIKit40NavigationBarLargeTitleReparentingHelper21TemporaryDonatedTitle_parentID] = v8;
        v16[OBJC_IVAR____TtCC5UIKit40NavigationBarLargeTitleReparentingHelper21TemporaryDonatedTitle_contributesToPocketContentRect] = v14;
        v23.receiver = v16;
        v23.super_class = v15;
        v18 = v9;
        v19 = objc_msgSendSuper2(&v23, sel_init);
        [v22 _setDonatedTitleView_];

        swift_unknownObjectWeakAssign();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_189172D50()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong _donatedTitleView])
    {
      type metadata accessor for NavigationBarLargeTitleReparentingHelper.TemporaryDonatedTitle();
      v3 = swift_dynamicCastClass();
      if (v3 && *(v3 + OBJC_IVAR____TtCC5UIKit40NavigationBarLargeTitleReparentingHelper21TemporaryDonatedTitle_parentID) == v0)
      {
        [v2 _setDonatedTitleView_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_189172E10(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_189173490;
  *(v5 + 24) = v4;
  v9[4] = sub_188A4B574;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_188A4A968;
  v9[3] = &block_descriptor_133;
  v6 = _Block_copy(v9);
  v7 = v1;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    [*&v7[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView] recordFromStateForTransition_];
  }

  return result;
}

void sub_1891730AC()
{
  v1 = [v0 window];
  if (v1 || (v1 = swift_unknownObjectWeakLoadStrong()) != 0)
  {
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        [v3 _setDonatedTitleView_];
      }

      swift_unknownObjectWeakAssign();
    }

    v5 = *&v0[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
    [v0 bounds];
    [v5 setFrame_];
    [v5 _setFlipsHorizontalAxis_];

    [v0 addSubview_];
  }
}

void sub_1891732C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_recipientScrollViewRemovedFromWindowHandler];
    if (v1)
    {
      v3 = Strong;

      v1(v2);

      sub_188A55B8C(v1);
    }

    else
    {
    }
  }
}

void sub_189173490()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong _layoutDonatedTitleView];
}

id sub_1891734F0()
{
  v1 = *(v0 + 16);
  [*(*(v0 + 24) + OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_view) frame];

  return [v1 setFrame_];
}

void __swiftcall UIPopoverPresentationControllerSourceItem.frame(in:)(__C::CGRect_optional *__return_ptr retstr, UIView *in)
{
  [v2 frameInView_];
  y = v13.origin.y;
  x = v13.origin.x;
  width = v13.size.width;
  height = v13.size.height;
  IsNull = CGRectIsNull(v13);
  *v5.i64 = x;
  *&v5.i64[1] = y;
  *v6.i64 = width;
  *&v6.i64[1] = height;
  if (IsNull)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  v8 = vdupq_n_s64(v7);
  retstr->value.origin = vbicq_s8(v5, v8);
  retstr->value.size = vbicq_s8(v6, v8);
  retstr->is_nil = IsNull;
}

id sub_189173640()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UICoreGraphicsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_189173674(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_pocketInteraction];
  v4 = [v3 view];
  if (a1)
  {
    if (v4)
    {

      return;
    }

    v5 = sel_addInteraction_;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v5 = sel_removeInteraction_;
  }

  [v1 v5];
}

char *sub_18917372C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_pocketInteraction;
  *&v1[v4] = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle_];
  *&v1[OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_contentView] = a1;
  v22.receiver = v1;
  v22.super_class = ObjectType;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1891738E8();
  *&v14 = 0x7FEFFFFFFFFFFFFFLL;
  BYTE8(v14) = 0;
  v15 = 0x7FEFFFFFFFFFFFFFLL;
  v16 = 0;
  v17 = 0x7FEFFFFFFFFFFFFFLL;
  v18 = 0;
  v19 = 0x7FEFFFFFFFFFFFFFLL;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  UIView.cornerConfiguration.setter(&v14);
  [v6 addInteraction_];
  v7 = [(UIView *)v6 _traitOverrides];
  v8 = [(_UITraitOverrides *)v7 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  inited = swift_initStackObject();
  *(inited + 16) = v8;
  *&v14 = inited;
  sub_18914E584(2);
  v10 = v14;
  v11 = [(UIView *)v6 _traitOverrides];
  v12 = *(v10 + 16);

  [(_UITraitOverrides *)v11 _replaceWithOverrides:v12];

  return v6;
}

id sub_1891738E8()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_contentView;
  v9 = *&v1[OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_contentView];
  [v1 bounds];
  [v9 setFrame_];

  [*&v1[v8] setAutoresizingMask_];
  [*&v1[v8] setClipsToBounds_];
  v10 = [*&v1[v8] layer];
  [v10 setCornerRadius_];

  [*&v1[v8] setPreservesSuperviewLayoutMargins_];
  [*&v1[v8] setInsetsLayoutMarginsFromSafeArea_];
  v11 = qword_1ED48E920;
  v12 = *&v1[v8];
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_1ED48E930);
  sub_188AD8C44(v13, v4, type metadata accessor for _Glass._GlassVariant);
  _Glass.init(_:smoothness:)(v4, v7, 6.0);
  *(v7 + *(v5 + 56)) = 1;
  v17[3] = v5;
  v17[4] = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  sub_188AD8C44(v7, boxed_opaque_existential_0, type metadata accessor for _Glass);
  *(boxed_opaque_existential_0 + *(v5 + 52)) = 1;
  sub_188B7533C(v7);
  UIView._background.setter(v17);

  return [v1 addSubview_];
}

void sub_189173CA4(void *a1)
{
  v3 = OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_contentView;
  v4 = *&v1[OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_contentView];
  sub_188AF7A44();
  v12 = v4;
  if ((sub_18A4A7C88() & 1) == 0)
  {
    [*&v1[v3] removeFromSuperview];
  }

  v5 = *&v1[v3];
  *&v1[v3] = a1;
  v6 = a1;

  v7 = *&v1[v3];
  LOBYTE(v5) = sub_18A4A7C88();

  if ((v5 & 1) == 0 || (v8 = [*&v1[v3] superview]) == 0 || (v9 = v8, v10 = v1, v11 = sub_18A4A7C88(), v9, v10, (v11 & 1) == 0))
  {
    sub_1891738E8();
  }
}

id _UIWindowScenePreservedPlacement.keepInBackground.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_189173FBC();
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EA78);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setKeepInBackground_];
}

unint64_t sub_189173FBC()
{
  result = qword_1EA93EA70;
  if (!qword_1EA93EA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93EA70);
  }

  return result;
}

id (*_UIWindowScenePreservedPlacement.keepInBackground.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) keepInBackground];
  return sub_189174060;
}

uint64_t _UIWindowScenePreservedPlacement.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(_UIWindowScenePreservedPlacement) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EA78);
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

uint64_t _UIWindowScenePreservedPlacement.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

id static UIWindowScenePlacement<>._preserved(background:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(_UIWindowScenePreservedPlacement) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EA78);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *a2 = v5;
  return _UIWindowScenePreservedPlacement.keepInBackground.setter(a1);
}

unint64_t sub_189174204(uint64_t a1)
{
  result = sub_18917422C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18917422C()
{
  result = qword_1EA93EA80;
  if (!qword_1EA93EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93EA80);
  }

  return result;
}

unint64_t sub_189174284()
{
  result = qword_1EA93EA88;
  if (!qword_1EA93EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93EA88);
  }

  return result;
}

unint64_t sub_1891742DC()
{
  result = qword_1EA93EA90;
  if (!qword_1EA93EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93EA90);
  }

  return result;
}

uint64_t sub_189174340@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_188C26A24(v2 + 56, &v13);
  if (v14)
  {
    sub_188A8F66C(&v13, v15);
    v5 = v15[4];
    v6 = __swift_project_boxed_opaque_existential_0(v15, v15[3]);
    v7 = MEMORY[0x1EEE9AC00](v6);
    (*(v5 + 8))(a1, sub_1891746F4, v7);
    return __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    sub_188C26A94(&v13);
    a2[3] = &_s11CellMetricsVN;
    a2[4] = &off_1EFAEDD58;
    v9 = swift_allocObject();
    *a2 = v9;
    v9[5] = &_s17BackgroundMetricsVN;
    v9[6] = &off_1EFAEDD20;
    v10 = swift_allocObject();
    v9[2] = v10;
    *(v10 + 16) = 0;
    *(v10 + 24) = 13;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 1;
    *(v10 + 57) = 0;
    *(v10 + 64) = 0u;
    *(v10 + 80) = 0u;
    *(v10 + 89) = 0u;
    v9[10] = &_s14ContentMetricsVN;
    v9[11] = &off_1EFAEDD10;
    v9[7] = 0x3FF0000000000000;
    v9[20] = &_s12LabelMetricsVN;
    v9[21] = &off_1EFAEDCF0;
    v11 = swift_allocObject();
    v9[17] = v11;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 1;
    *(v11 + 49) = 0;
    v9[25] = &_s12LabelMetricsVN;
    v9[26] = &off_1EFAEDCF0;
    v12 = swift_allocObject();
    v9[22] = v12;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 1;
    *(v12 + 49) = 0;
    v9[15] = &_s12ImageMetricsVN;
    v9[16] = &off_1EFAEDCD8;
    result = swift_allocObject();
    v9[12] = result;
    *(result + 16) = 15;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 1;
  }

  return result;
}

uint64_t sub_189174574@<X0>(void *a1@<X8>)
{
  a1[3] = &_s11CellMetricsVN;
  a1[4] = &off_1EFAEDD58;
  v2 = swift_allocObject();
  *a1 = v2;
  v2[5] = &_s17BackgroundMetricsVN;
  v2[6] = &off_1EFAEDD20;
  v3 = swift_allocObject();
  v2[2] = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 13;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 57) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 89) = 0u;
  v2[10] = &_s14ContentMetricsVN;
  v2[11] = &off_1EFAEDD10;
  v2[7] = 0x3FF0000000000000;
  v2[20] = &_s12LabelMetricsVN;
  v2[21] = &off_1EFAEDCF0;
  v4 = swift_allocObject();
  v2[17] = v4;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 1;
  *(v4 + 49) = 0;
  v2[25] = &_s12LabelMetricsVN;
  v2[26] = &off_1EFAEDCF0;
  v5 = swift_allocObject();
  v2[22] = v5;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 1;
  *(v5 + 49) = 0;
  v2[15] = &_s12ImageMetricsVN;
  v2[16] = &off_1EFAEDCD8;
  result = swift_allocObject();
  v2[12] = result;
  *(result + 16) = 15;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 1;
  return result;
}

uint64_t sub_1891746FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 34))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_189174740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 5;
    }
  }

  return result;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1891747AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 35))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1891747F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_18917485C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[89])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1891748A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_189174950(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_189174998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _UIWindowSceneOrderedPlacement.init(order:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = objc_opt_self();
  v6 = &selRef_orderedPlacementBelow_;
  if (!v4)
  {
    v6 = &selRef_orderedPlacementAbove_;
  }

  v7 = [v5 *v6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EA98);
  result = swift_allocObject();
  *(result + 16) = v7;
  *a2 = result;
  return result;
}

uint64_t _UIWindowSceneOrderedPlacement.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

unint64_t sub_189174B50(uint64_t a1)
{
  result = sub_189174B78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_189174B78()
{
  result = qword_1EA93EAA0;
  if (!qword_1EA93EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93EAA0);
  }

  return result;
}

unint64_t sub_189174BD0()
{
  result = qword_1EA93EAA8;
  if (!qword_1EA93EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93EAA8);
  }

  return result;
}

unint64_t sub_189174C28()
{
  result = qword_1EA93EAB0;
  if (!qword_1EA93EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93EAB0);
  }

  return result;
}

BOOL sub_189174CA8(uint64_t a1, _BYTE *a2)
{
  v140 = a2;
  v120 = sub_18A4A3CB8();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v112[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_18A4A3BA8();
  v134 = *(v4 - 8);
  v135 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v133 = &v112[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_18A4A3ED8();
  v131 = *(v6 - 8);
  v132 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v129 = &v112[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v130 = &v112[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v127 = &v112[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v126 = &v112[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EEB0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v124 = &v112[-v15];
  v16 = sub_18A4A34D8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v125 = &v112[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = sub_18A4A3708();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v137 = &v112[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v139 = sub_18A4A42B8();
  v142 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v128 = &v112[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v116 = &v112[-v21];
  v115 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v136 = &v112[-v24];
  v25 = sub_18A4A4088();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v112[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EAC0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v112[-v30];
  v32 = type metadata accessor for IntelligenceActivityItem();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v123 = &v112[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v112[-v36];
  v138 = a1;
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(v143, v144);
  sub_18A4A3E88();
  sub_189176E1C(v28, v31);
  v38 = *(v26 + 8);
  v140 = v28;
  v141 = v26 + 8;
  v38(v28, v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v143);
  v39 = (*(v33 + 48))(v31, 1, v32);
  v40 = v39;
  if (v39 != 1)
  {
    v117 = v25;
    v113 = v39;
    sub_189177330(v31, v37);
    v114 = v37;
    v41 = v37;
    v42 = v123;
    sub_189177394(v41, v123);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EAC8);
    v45 = (v42 + *(v44 + 64));
    v47 = *v45;
    v46 = v45[1];
    v48 = *(v142 + 32);
    v49 = (v142 + 16);
    v50 = (v142 + 56);
    v51 = v42 + *(v44 + 48);
    if (EnumCaseMultiPayload == 1)
    {
      v52 = v128;
      v53 = v139;
      v48(v128, v51, v139);
      v54 = v46;
      v55 = v124;
      (*v49)(v124, v52, v53);
      (*v50)(v55, 0, 1, v53);
      v56 = sub_18A4A2968();
      v57 = *(*(v56 - 8) + 56);
      v57(v126, 1, 1, v56);
      v57(v127, 1, 1, v56);
      v58 = v125;
      sub_18A4A34C8();
      v59 = v47;
      v60 = v118;
      MEMORY[0x18CFDEBF0](v59, v54, v58);
      sub_18A4A3448();
      __swift_project_boxed_opaque_existential_0(v143, v144);
      v61 = v140;
      sub_18A4A3E88();
      v62 = v130;
      sub_18A4A3F98();
      v38(v61, v117);
      v64 = v131;
      v63 = v132;
      v65 = v129;
      (*(v131 + 104))(v129, *MEMORY[0x1E69DBCD8], v132);
      sub_188B02294(&qword_1EA9301E0, MEMORY[0x1E69DBCE8]);
      LOBYTE(v58) = sub_18A4A7248();
      v66 = *(v64 + 8);
      v66(v65, v63);
      v66(v62, v63);
      __swift_destroy_boxed_opaque_existential_0Tm(v143);
      if (v58)
      {
        v67 = v119;
        v68 = v133;
        v69 = v120;
        v119[2](v133, v60, v120);
        v71 = v134;
        v70 = v135;
        (*(v134 + 104))(v68, *MEMORY[0x1E69DBC00], v135);
        sub_18A4A3418();
        (*(v71 + 8))(v68, v70);
        (v67[1])(v60, v69);
        (*(v142 + 8))(v128, v53);
LABEL_8:
        v90 = v114;
LABEL_12:
        sub_1891780AC(v90);
        v40 = v113;
        return v40 != 1;
      }

      v91 = v119;
      v92 = v133;
      v93 = v120;
      v119[2](v133, v60, v120);
      v95 = v134;
      v94 = v135;
      (*(v134 + 104))(v92, *MEMORY[0x1E69DBC00], v135);
      v96 = sub_18A4A3408();
      (*(v95 + 8))(v92, v94);

      v97 = v114;
      sub_189175F40(sub_1891780A4, v96);

      (v91[1])(v60, v93);
      (*(v142 + 8))(v128, v53);
    }

    else
    {
      v72 = v136;
      v73 = v139;
      v123 = *(v142 + 32);
      v48(v136, v51, v139);
      v74 = *v49;
      v75 = v124;
      v120 = v49;
      v119 = v74;
      (v74)(v124, v72, v73);
      (*v50)(v75, 0, 1, v73);
      v76 = sub_18A4A2968();
      v77 = *(*(v76 - 8) + 56);
      v77(v126, 1, 1, v76);
      v77(v127, 1, 1, v76);

      sub_18A4A34C8();
      v127 = v47;
      v128 = v46;
      sub_18A4A36E8();
      sub_18A4A3448();
      __swift_project_boxed_opaque_existential_0(v143, v144);
      v78 = v140;
      sub_18A4A3E88();
      v79 = v130;
      sub_18A4A3FD8();
      v38(v78, v117);
      v81 = v131;
      v80 = v132;
      v82 = v129;
      (*(v131 + 104))(v129, *MEMORY[0x1E69DBCD8], v132);
      sub_188B02294(&qword_1EA9301E0, MEMORY[0x1E69DBCE8]);
      LOBYTE(v76) = sub_18A4A7248();
      v83 = *(v81 + 8);
      v83(v82, v80);
      v83(v79, v80);
      __swift_destroy_boxed_opaque_existential_0Tm(v143);
      if (v76)
      {

        v84 = v121;
        v85 = v133;
        v86 = v137;
        v87 = v122;
        (*(v121 + 16))(v133, v137, v122);
        v89 = v134;
        v88 = v135;
        (*(v134 + 104))(v85, *MEMORY[0x1E69DBB98], v135);
        sub_18A4A3418();
        (*(v89 + 8))(v85, v88);
        (*(v84 + 8))(v86, v87);
        (*(v142 + 8))(v136, v139);
        goto LABEL_8;
      }

      v98 = v133;
      (*(v121 + 16))(v133, v137, v122);
      v100 = v134;
      v99 = v135;
      (*(v134 + 104))(v98, *MEMORY[0x1E69DBB98], v135);
      v101 = sub_18A4A3408();
      (*(v100 + 8))(v98, v99);
      sub_18A4A3448();
      v102 = v139;
      __swift_project_boxed_opaque_existential_0(v143, v144);
      sub_18A4A3E88();
      v103 = sub_18A4A3FF8();
      v38(v78, v117);
      __swift_destroy_boxed_opaque_existential_0Tm(v143);
      v104 = v116;
      (v119)(v116, v136, v102);
      v105 = v142;
      v106 = (*(v142 + 80) + 24) & ~*(v142 + 80);
      v107 = (v115 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
      v108 = swift_allocObject();
      *(v108 + 16) = v101;
      (v123)(v108 + v106, v104, v102);
      *(v108 + v107) = v103;
      v109 = (v108 + ((v107 + 15) & 0xFFFFFFFFFFFFFFF8));
      v110 = v128;
      *v109 = v127;
      v109[1] = v110;

      v97 = v114;
      sub_189175F40(sub_189178108, v108);

      (*(v121 + 8))(v137, v122);
      (*(v105 + 8))(v136, v102);
    }

    v90 = v97;
    goto LABEL_12;
  }

  sub_188A3F5FC(v31, &qword_1EA93EAC0);
  return v40 != 1;
}

uint64_t sub_189175CE0()
{
  v0 = sub_18A4A7A38();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_18A4A7A58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18A4A6E58();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_188A34624(0, &qword_1ED490540);
  sub_18A4A6E48();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v1);
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_188B02294(&unk_1ED48FC20, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93EAD8);
  sub_188F76428(&unk_1ED48FC38, qword_1EA93EAD8);
  sub_18A4A7EB8();
  result = sub_18A4A7A98();
  qword_1EA93EAB8 = result;
  return result;
}

uint64_t sub_189175F40(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v3 = sub_18A4A6E18();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18A4A6E58();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IntelligenceActivityItem();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_18A4A42B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = v2;
  v17 = &v38 - v16;
  sub_189177394(v15, v9);
  v18 = *v9;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EAC8);
  v20 = *(v19 + 48);
  v21 = (v9 + *(v19 + 64));
  v22 = *v21;
  v38 = v21[1];
  v39 = v22;
  v23 = *(v11 + 32);
  v23(v17, v9 + v20, v10);
  v24 = qword_1EA931F78;
  v25 = v18;
  if (v24 != -1)
  {
    swift_once();
  }

  v40 = qword_1EA93EAB8;
  (*(v11 + 16))(v13, v17, v10);
  v26 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = v17;
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  v23((v28 + v26), v13, v10);
  v29 = (v28 + v27);
  v30 = v43;
  *v29 = v42;
  v29[1] = v30;
  v31 = (v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8));
  v32 = v38;
  *v31 = v39;
  v31[1] = v32;
  aBlock[4] = sub_1891781C8;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A8F0;
  aBlock[3] = &block_descriptor_134;
  v33 = _Block_copy(aBlock);

  v34 = v44;
  sub_18A4A6E38();
  v50 = MEMORY[0x1E69E7CC0];
  sub_188B02294(&qword_1ED490560, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
  sub_188F76428(&qword_1ED490550, &unk_1EA935AC0);
  v35 = v47;
  v36 = v49;
  sub_18A4A7EB8();
  MEMORY[0x18CFE29D0](0, v34, v35, v33);
  _Block_release(v33);

  (*(v48 + 8))(v35, v36);
  (*(v45 + 8))(v34, v46);
  (*(v11 + 8))(v41, v10);
}

void sub_189176414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[1] = a1;
  v11 = sub_18A4A42B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  (*(v12 + 16))(v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11, v14);
  v15 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  *(v16 + 4) = a5;
  *(v16 + 5) = a6;
  (*(v12 + 32))(&v16[v15], v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

  v17 = sub_18A4A79A8();
}

uint64_t sub_189176598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a8;
  v41 = a6;
  v42 = a7;
  v44 = a5;
  v45 = a4;
  v36[0] = a3;
  v43 = a1;
  v40 = sub_18A4A34E8();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EEB0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v36 - v16;
  v18 = sub_18A4A34D8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v36[1] = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C760);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v36 - v21;
  v23 = sub_18A4A28E8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v36 - v28;
  sub_188A3F29C(v43, v22, &qword_1EA93C760);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_188A3F5FC(v22, &qword_1EA93C760);
    return v45(0, v36[0]);
  }

  else
  {
    (*(v24 + 32))(v29, v22, v23);
    v43 = sub_18A4A3518();
    (*(v24 + 16))(v26, v29, v23);
    v31 = sub_18A4A42B8();
    v32 = *(v31 - 8);
    (*(v32 + 16))(v17, v37, v31);
    (*(v32 + 56))(v17, 0, 1, v31);
    v33 = sub_18A4A2968();
    v34 = *(*(v33 - 8) + 56);
    v34(v14, 1, 1, v33);
    v34(v11, 1, 1, v33);
    sub_18A4A34C8();
    (*(v38 + 104))(v39, *MEMORY[0x1E69DB9D0], v40);

    sub_18A4A34B8();

    v45(v35, 0);

    return (*(v24 + 8))(v29, v23);
  }
}

uint64_t sub_189176AD4(void *a1)
{
  if ([v1 respondsToSelector_])
  {
    if ([v1 activityItemsConfigurationMetadataForKey_])
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v18 = 0u;
    }

    v20 = v16;
    v21 = v18;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v3 = sub_189176CE0(&v20);
  v5 = v4;
  sub_188A3F5FC(&v20, &qword_1EA934050);
  if (v5)
  {
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return v3;
    }
  }

  if ([v1 respondsToSelector_])
  {
    if ([v1 activityItemsConfigurationMetadataForItemAtIndex:0 key:@"title"])
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v19 = 0u;
    }

    v20 = v17;
    v21 = v19;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v3 = sub_189176CE0(&v20);
  v8 = v7;
  sub_188A3F5FC(&v20, &qword_1EA934050);
  if (v8)
  {
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      return v3;
    }
  }

  v10 = [a1 suggestedName];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v3 = sub_18A4A7288();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    return 0;
  }

  return v3;
}

uint64_t sub_189176CE0(uint64_t a1)
{
  sub_188A3F29C(a1, v6, &qword_1EA934050);
  if (!v7)
  {
    goto LABEL_8;
  }

  sub_188A3F29C(v6, v5, &qword_1EA934050);
  if (!swift_dynamicCast())
  {
    sub_188A34624(0, &qword_1EA930C60);
    if (swift_dynamicCast())
    {
      v2 = [v4 string];
      v1 = sub_18A4A7288();

      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v5);
LABEL_8:
    v1 = 0;
    goto LABEL_9;
  }

  v1 = v4;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
LABEL_9:
  sub_188A3F5FC(v6, &qword_1EA934050);
  return v1;
}

void sub_189176E1C(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v40 = a1;
  v41 = sub_18A4A42B8();
  v4 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v35 - v9;
  v11 = [v2 activityItemsConfiguration];
  if (v11)
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    v14 = [v12 itemProvidersForActivityItemsConfiguration];
    sub_188A34624(0, &qword_1EA930218);
    v15 = sub_18A4A7548();

    if (v15 >> 62)
    {
      goto LABEL_21;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      while (1)
      {
        v37 = v12;
        v38 = a2;
        v35[1] = ObjectType;
        if ((v15 & 0xC000000000000001) != 0)
        {
          v16 = sub_188E49898(0, v15);
        }

        else
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v16 = *(v15 + 32);
        }

        v17 = v16;

        v36 = v17;
        v15 = [v17 registeredContentTypes];
        v18 = sub_18A4A7548();

        v19 = *(v18 + 16);
        if (!v19)
        {
LABEL_13:
          swift_unknownObjectRelease();

          v22 = type metadata accessor for IntelligenceActivityItem();
          (*(*(v22 - 8) + 56))(v38, 1, 1, v22);
          return;
        }

        a2 = 0;
        v39 = v4 + 16;
        ObjectType = v4 + 8;
        while (a2 < *(v18 + 16))
        {
          v20 = v41;
          (*(v4 + 16))(v10, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * a2, v41);
          sub_18A4A4298();
          v21 = sub_18A4A42A8();
          v12 = *(v4 + 8);
          (v12)(v6, v20);
          if (v21)
          {

            v23 = v36;
            v24 = sub_189176AD4(v36);
            if (!v25)
            {
              v24 = sub_18A4A3DE8();
            }

            goto LABEL_19;
          }

          v15 = v40;
          if (sub_18A4A4068())
          {

            v23 = v36;
            v24 = sub_189176AD4(v36);
            if (!v25)
            {
              v24 = sub_18A4A3DF8();
            }

LABEL_19:
            v26 = v24;
            v27 = v25;
            swift_unknownObjectRelease();
            v28 = v38;
            v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EAC8);
            v30 = *(v29 + 48);
            v31 = &v28[*(v29 + 64)];
            *v28 = v23;
            (*(v4 + 32))(&v28[v30], v10, v41);
            *v31 = v26;
            v31[1] = v27;
            v32 = type metadata accessor for IntelligenceActivityItem();
            swift_storeEnumTagMultiPayload();
            (*(*(v32 - 8) + 56))(v28, 0, 1, v32);
            return;
          }

          ++a2;
          (v12)(v10, v41);
          if (v19 == a2)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_21:
        if (sub_18A4A7F68() != 1)
        {
          break;
        }

        if (!sub_18A4A7F68())
        {

          swift_unknownObjectRelease();
          goto LABEL_25;
        }
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_25:
  v33 = type metadata accessor for IntelligenceActivityItem();
  v34 = *(*(v33 - 8) + 56);

  v34(a2, 1, 1, v33);
}

uint64_t sub_189177330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceActivityItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_189177394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceActivityItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1891773F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v73 = a6;
  v74 = a7;
  v68 = a5;
  v62 = a4;
  v75 = a2;
  v58 = sub_18A4A3BA8();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18A4A3D58();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v69 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_18A4A3528();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = v52 - v14;
  v66 = sub_18A4A34E8();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_18A4A3D68();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A30);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v52 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EEB0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v52 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EAD0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v52 - v27;
  v67 = sub_18A4A3DD8();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v30 = v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C760);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v52 - v32;
  v34 = sub_18A4A28E8();
  v76 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return sub_18A4A37A8();
  }

  sub_18A4A34F8();
  if ((*(v76 + 48))(v33, 1, v34) == 1)
  {

    sub_188A3F5FC(v33, &qword_1EA93C760);
    return sub_18A4A37A8();
  }

  v52[1] = a1;
  v75 = a3;
  (*(v76 + 32))(v36, v33, v34);
  sub_18A4A3DC8();
  v38 = sub_18A4A42B8();
  v39 = *(v38 - 8);
  (*(v39 + 16))(v25, v62, v38);
  (*(v39 + 56))(v25, 0, 1, v38);
  v40 = sub_18A4A2968();
  v41 = *(*(v40 - 8) + 56);
  v41(v22, 1, 1, v40);
  v41(v19, 1, 1, v40);
  sub_18A4A34C8();
  v42 = sub_18A4A34D8();
  (*(*(v42 - 8) + 56))(v28, 0, 1, v42);
  sub_18A4A3DB8();

  sub_18A4A3D98();
  (*(v59 + 104))(v60, *MEMORY[0x1E69DBC70], v61);
  v43 = sub_18A4A3DA8();
  sub_18A4A3D78();
  v43(v77, 0);
  (*(v64 + 104))(v63, *MEMORY[0x1E69DB9D0], v66);
  v44 = sub_18A4A3DA8();
  sub_18A4A3D88();
  v44(v77, 0);
  v45 = v69;
  sub_18A4A3D48();
  v46 = v70;
  sub_18A4A3D28();
  (*(v71 + 8))(v45, v72);
  v47 = v54;
  v48 = v55;
  (*(v54 + 16))(v53, v46, v55);
  v49 = v56;
  sub_18A4A36F8();
  v50 = v57;
  v51 = v58;
  (*(v57 + 104))(v49, *MEMORY[0x1E69DBB98], v58);
  sub_18A4A37B8();

  (*(v50 + 8))(v49, v51);
  (*(v47 + 8))(v46, v48);
  (*(v65 + 8))(v30, v67);
  return (*(v76 + 8))(v36, v34);
}

uint64_t sub_189177DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EEB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_18A4A34D8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_18A4A3BA8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return sub_18A4A37A8();
  }

  v27 = v17;
  v20 = sub_18A4A42B8();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = sub_18A4A2968();
  v22 = *(v21 - 8);
  v26 = a3;
  v23 = *(v22 + 56);
  v23(v10, 1, 1, v21);
  v23(v7, 1, 1, v21);

  sub_18A4A34C8();
  sub_18A4A3C98();
  v24 = v27;
  (*(v16 + 104))(v19, *MEMORY[0x1E69DBC00], v27);
  sub_18A4A37B8();
  return (*(v16 + 8))(v19, v24);
}

uint64_t sub_1891780AC(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceActivityItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_189178108(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_18A4A42B8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_1891773F8(a1, a2, v8, v2 + v6, v9, v11, v12);
}

void sub_1891781C8()
{
  v1 = *(sub_18A4A42B8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);

  sub_189176414(v5, v0 + v2, v7, v8, v9, v10);
}

uint64_t sub_18917826C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_18A4A42B8() - 8);
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_189176598(a1, a2, a3, v8, v9, v10, v11, v12);
}

void sub_1891782FC()
{
  sub_18917835C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_18917835C()
{
  if (!qword_1EA930210)
  {
    sub_188A34624(255, &qword_1EA930218);
    sub_18A4A42B8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EA930210);
    }
  }
}

float sub_1891783E8(float a1)
{
  v3 = sub_18A4A7258();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(&v8, v9);
    sub_188A553EC(v9);
    v5 = sub_18A4A7258();
    [v1 floatForKey_];
    a1 = v6;
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    sub_188A553EC(v9);
  }

  return a1;
}

uint64_t sub_1891784FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 32))(v12, a1);
  a5(v12, a2, a3, a4);
  return (*(v10 + 8))(v12, a3);
}

uint64_t sub_189178604@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 16))(a2);
  sub_18A4A83F8();
  sub_18A4A4E98();
  return sub_18A4A83E8();
}

uint64_t AnimationVectorPair.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for AnimationVectorPair();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t sub_1891787D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t, void)@<X6>, uint64_t a8@<X8>)
{
  v25 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21(v18);
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v22 = type metadata accessor for AnimationVectorPair();
  a7(a1 + *(v22 + 52), a2 + *(v22 + 52), a4, *(a6 + 8));
  return AnimationVectorPair.init(first:second:)(v20, v16, a3, a4, v25);
}

Swift::Void __swiftcall AnimationVectorPair.scale(by:)(Swift::Double by)
{
  v2 = v1;
  (*(*(v1 + 32) + 16))(*(v1 + 16));
  (*(*(v2 + 40) + 16))(*(v2 + 24), by);
}

uint64_t static AnimationVectorPair.zero.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A8408();
  sub_18A4A8408();
  return AnimationVectorPair.init(first:second:)(v10, v7, a1, a2, a3);
}

uint64_t static AnimationVectorPair.== infix(_:_:)()
{
  if (sub_18A4A7248())
  {
    type metadata accessor for AnimationVectorPair();
    v0 = sub_18A4A7248();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_189178E04(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_189178EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_188F9963C(a1, a5);
  v9 = type metadata accessor for IntelligenceUI.PromptAmbiguity();
  *(a5 + *(v9 + 28)) = a2;
  v10 = *(*(a4 - 8) + 32);
  v11 = a5 + *(v9 + 32);

  return v10(v11, a3, a4);
}

uint64_t IntelligenceUI.PromptAmbiguityID.hash(into:)()
{
  sub_18A4A29D8();
  sub_189179360(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);

  return sub_18A4A71A8();
}

uint64_t IntelligenceUI.PromptAmbiguityID.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A29D8();
  sub_189179360(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
  sub_18A4A71A8();
  return sub_18A4A88E8();
}

uint64_t sub_1891790A0()
{
  sub_18A4A8888();
  sub_18A4A29D8();
  sub_189179360(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
  sub_18A4A71A8();
  return sub_18A4A88E8();
}

uint64_t sub_189179128()
{
  sub_18A4A29D8();
  sub_189179360(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);

  return sub_18A4A71A8();
}

uint64_t sub_1891791AC()
{
  sub_18A4A8888();
  sub_18A4A29D8();
  sub_189179360(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
  sub_18A4A71A8();
  return sub_18A4A88E8();
}

uint64_t type metadata accessor for IntelligenceUI.PromptAmbiguityID()
{
  result = qword_1EA92FD20;
  if (!qword_1EA92FD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_189179360(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1891793D4()
{
  result = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  if (v1 <= 0x3F)
  {
    result = sub_189179A1C();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_189179474(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_18A4A29D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v7 + 64);
  v11 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v8 == v13)
      {
        v22 = *(v7 + 48);

        return v22(a1, v8, v6);
      }

      else
      {
        v23 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v9 + 48);

          return v25((v23 + v11 + 8) & ~v11);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + *(v9 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_1891796F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_18A4A29D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v9 + 64);
  v13 = *(v11 + 80);
  if (v10 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13) + *(v11 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 >= 4)
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v16)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
LABEL_14:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

LABEL_51:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v10 == v15)
  {
    v23 = *(v9 + 56);

    v23(a1, a2, v10, v8);
  }

  else
  {
    v24 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v14 & 0x80000000) != 0)
    {
      v26 = *(v11 + 56);

      v26((v24 + v13 + 8) & ~v13, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v25 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v25 = (a2 - 1);
      }

      *v24 = v25;
    }
  }
}

unint64_t sub_189179A1C()
{
  result = qword_1EA92F7A8;
  if (!qword_1EA92F7A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA92F7A8);
  }

  return result;
}

uint64_t sub_189179A68(uint64_t a1)
{
  v2 = vmulq_f64(*(a1 + 16), *(v1 + 16));
  *v1 = vmulq_f64(*a1, *v1);
  *(v1 + 16) = v2;
  v3 = vmulq_f64(*(a1 + 48), *(v1 + 48));
  *(v1 + 32) = vmulq_f64(*(a1 + 32), *(v1 + 32));
  *(v1 + 48) = v3;
  v4 = vmulq_f64(*(a1 + 80), *(v1 + 80));
  *(v1 + 64) = vmulq_f64(*(a1 + 64), *(v1 + 64));
  *(v1 + 80) = v4;
  v5 = vmulq_f64(*(a1 + 112), *(v1 + 112));
  *(v1 + 96) = vmulq_f64(*(a1 + 96), *(v1 + 96));
  *(v1 + 112) = v5;
  v6 = *(v1 + 128);
  v7 = *(a1 + 128);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EB60);
  v9 = 2;
  if (v6 == 2)
  {
    goto LABEL_7;
  }

  if (v7 == 2)
  {
    goto LABEL_7;
  }

  v9 = 1;
  if (v6 == 1 || v7 == 1)
  {
    goto LABEL_7;
  }

  if (!v6)
  {
    v9 = 0;
LABEL_7:
    *(v1 + 128) = v9;
    return result;
  }

  result = sub_18A4A86B8();
  __break(1u);
  return result;
}

double sub_189179B38()
{
  v1 = vmulq_f64(*(v0 + 8), *(v0 + 8));
  v2 = vmulq_f64(*(v0 + 32), *(v0 + 32));
  v3 = *v0 * *v0 + v1.f64[0] + v1.f64[1] + *(v0 + 24) * *(v0 + 24) + v2.f64[0] + v2.f64[1];
  v4 = vmulq_f64(*(v0 + 56), *(v0 + 56));
  v5 = v3 + *(v0 + 48) * *(v0 + 48) + v4.f64[0] + v4.f64[1];
  v6 = vmulq_f64(*(v0 + 80), *(v0 + 80));
  v7 = v5 + *(v0 + 72) * *(v0 + 72) + v6.f64[0] + v6.f64[1];
  v8 = vmulq_f64(*(v0 + 96), *(v0 + 96));
  v9 = vmulq_f64(*(v0 + 112), *(v0 + 112));
  return v7 + vaddq_f64(vaddq_f64(vaddq_f64(v8, vdupq_laneq_s64(v8, 1)), v9), vdupq_laneq_s64(v9, 1)).f64[0];
}

BOOL sub_189179BDC()
{
  if ((~*v0 & 0x7FF0000000000000) == 0)
  {
    return 1;
  }

  if ((~v0[1] & 0x7FF0000000000000) == 0 || (v0[2] & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    return 1;
  }

  if ((~v0[3] & 0x7FF0000000000000) == 0)
  {
    return 1;
  }

  result = 1;
  if ((~v0[4] & 0x7FF0000000000000) != 0 && (v0[5] & 0x7FF0000000000000) != 0x7FF0000000000000 && (~v0[6] & 0x7FF0000000000000) != 0 && (~v0[7] & 0x7FF0000000000000) != 0 && (v0[8] & 0x7FF0000000000000) != 0x7FF0000000000000 && (~v0[9] & 0x7FF0000000000000) != 0 && (~v0[10] & 0x7FF0000000000000) != 0 && (v0[11] & 0x7FF0000000000000) != 0x7FF0000000000000 && (~v0[12] & 0x7FF0000000000000) != 0 && (~v0[13] & 0x7FF0000000000000) != 0 && (v0[14] & 0x7FF0000000000000) != 0x7FF0000000000000)
  {
    return (~v0[15] & 0x7FF0000000000000) == 0;
  }

  return result;
}

BOOL sub_189179CE0(double *a1, double *a2)
{
  v3 = *a2;
  if (vabdd_f64(*v2, *a1) > *a2)
  {
    return 0;
  }

  if (vabdd_f64(v2[1], a1[1]) > v3)
  {
    return 0;
  }

  if (vabdd_f64(v2[2], a1[2]) > v3)
  {
    return 0;
  }

  v5 = a2[1];
  if (vabdd_f64(v2[3], a1[3]) > v5)
  {
    return 0;
  }

  if (vabdd_f64(v2[4], a1[4]) > v5)
  {
    return 0;
  }

  if (vabdd_f64(v2[5], a1[5]) > v5)
  {
    return 0;
  }

  v6 = a2[2];
  if (vabdd_f64(v2[6], a1[6]) > v6)
  {
    return 0;
  }

  if (vabdd_f64(v2[7], a1[7]) > v6)
  {
    return 0;
  }

  if (vabdd_f64(v2[8], a1[8]) > v6)
  {
    return 0;
  }

  v7 = a2[3];
  if (vabdd_f64(v2[9], a1[9]) > v7)
  {
    return 0;
  }

  if (vabdd_f64(v2[10], a1[10]) > v7)
  {
    return 0;
  }

  if (vabdd_f64(v2[11], a1[11]) > v7)
  {
    return 0;
  }

  v8 = a2[4];
  if (vabdd_f64(v2[12], a1[12]) > v8)
  {
    return 0;
  }

  if (vabdd_f64(v2[13], a1[13]) > v8)
  {
    return 0;
  }

  if (vabdd_f64(v2[14], a1[14]) <= v8)
  {
    return vabdd_f64(v2[15], a1[15]) <= v8;
  }

  return 0;
}

void sub_189179EB0()
{
  objc_opt_self();
  v0 = +[UIScreen _mainScreen];
  [v0 scale];

  v1 = +[UIScreen _mainScreen];
  [v1 scale];

  v2 = +[UIScreen _mainScreen];
  [v2 scale];

  v3 = +[UIScreen _mainScreen];
  [v3 scale];

  v4 = +[UIScreen _mainScreen];
  [v4 scale];
}

int64x2_t sub_18917A190@<Q0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  v2 = +[UIScreen _mainScreen];
  [v2 scale];
  v4 = v3;

  *a1 = xmmword_18A650B70;
  *(a1 + 16) = 1.0 / v4;
  result = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
  *(a1 + 24) = result;
  return result;
}

int64x2_t sub_18917A218@<Q0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  v2 = +[UIScreen _mainScreen];
  [v2 scale];
  v4 = v3;

  *a1 = xmmword_18A66C4B0;
  *(a1 + 16) = 1.0 / v4 * (1.0 / v4);
  result = vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL);
  *(a1 + 24) = result;
  return result;
}

__n128 sub_18917A2AC@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_188A91E9C(a1, a2, v8);
  v4 = v8[7];
  *(a3 + 96) = v8[6];
  *(a3 + 112) = v4;
  *(a3 + 128) = v9;
  v5 = v8[3];
  *(a3 + 32) = v8[2];
  *(a3 + 48) = v5;
  v6 = v8[5];
  *(a3 + 64) = v8[4];
  *(a3 + 80) = v6;
  result = v8[1];
  *a3 = v8[0];
  *(a3 + 16) = result;
  return result;
}

unint64_t sub_18917A314@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 112);
  v9[14] = *(v1 + 96);
  v9[15] = v3;
  v10 = *(v1 + 128);
  v4 = *(v1 + 48);
  v9[10] = *(v1 + 32);
  v9[11] = v4;
  v5 = *(v1 + 80);
  v9[12] = *(v1 + 64);
  v9[13] = v5;
  v6 = *(v1 + 16);
  v9[8] = *v1;
  v9[9] = v6;
  sub_188AA9844(v9);
  v7 = [objc_opt_self() valueWithCATransform3D_];
  result = sub_188A921E4();
  a1[3] = result;
  *a1 = v7;
  return result;
}

BOOL sub_18917A3AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_188ABBAE8(v11, v13);
}

__n128 sub_18917A438@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 112);
  v19[6] = *(a1 + 96);
  v19[7] = v5;
  v20 = *(a1 + 128);
  v6 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v6;
  v7 = *(a1 + 80);
  v19[4] = *(a1 + 64);
  v19[5] = v7;
  v8 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v8;
  v9 = *(a2 + 112);
  v21[6] = *(a2 + 96);
  v21[7] = v9;
  v22 = *(a2 + 128);
  v10 = *(a2 + 48);
  v21[2] = *(a2 + 32);
  v21[3] = v10;
  v11 = *(a2 + 80);
  v21[4] = *(a2 + 64);
  v21[5] = v11;
  v12 = *(a2 + 16);
  v21[0] = *a2;
  v21[1] = v12;
  sub_18917ABA0(v19, v21, a3, v17);
  v13 = v17[7];
  *(a4 + 96) = v17[6];
  *(a4 + 112) = v13;
  *(a4 + 128) = v18;
  v14 = v17[3];
  *(a4 + 32) = v17[2];
  *(a4 + 48) = v14;
  v15 = v17[5];
  *(a4 + 64) = v17[4];
  *(a4 + 80) = v15;
  result = v17[1];
  *a4 = v17[0];
  *(a4 + 16) = result;
  return result;
}

double sub_18917A504@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__n128 sub_18917A568@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, _OWORD *, _OWORD *)@<X4>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 112);
  v19[6] = *(a1 + 96);
  v19[7] = v5;
  v20 = *(a1 + 128);
  v6 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v6;
  v7 = *(a1 + 80);
  v19[4] = *(a1 + 64);
  v19[5] = v7;
  v8 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v8;
  v9 = *(a2 + 112);
  v21[6] = *(a2 + 96);
  v21[7] = v9;
  v22 = *(a2 + 128);
  v10 = *(a2 + 48);
  v21[2] = *(a2 + 32);
  v21[3] = v10;
  v11 = *(a2 + 80);
  v21[4] = *(a2 + 64);
  v21[5] = v11;
  v12 = *(a2 + 16);
  v21[0] = *a2;
  v21[1] = v12;
  a3(v17, v19, v21);
  v13 = v17[7];
  *(a4 + 96) = v17[6];
  *(a4 + 112) = v13;
  *(a4 + 128) = v18;
  v14 = v17[3];
  *(a4 + 32) = v17[2];
  *(a4 + 48) = v14;
  v15 = v17[5];
  *(a4 + 64) = v17[4];
  *(a4 + 80) = v15;
  result = v17[1];
  *a4 = v17[0];
  *(a4 + 16) = result;
  return result;
}

__n128 sub_18917A648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *__return_ptr, _OWORD *, _OWORD *))
{
  v6 = *(a2 + 112);
  v22[6] = *(a2 + 96);
  v22[7] = v6;
  v23 = *(a2 + 128);
  v7 = *(a2 + 48);
  v22[2] = *(a2 + 32);
  v22[3] = v7;
  v8 = *(a2 + 80);
  v22[4] = *(a2 + 64);
  v22[5] = v8;
  v9 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v9;
  v10 = *(a1 + 112);
  v20[6] = *(a1 + 96);
  v20[7] = v10;
  v21 = *(a1 + 128);
  v11 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v11;
  v12 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v12;
  v13 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v13;
  a5(v18, v20, v22);
  v14 = v18[7];
  *(a1 + 96) = v18[6];
  *(a1 + 112) = v14;
  *(a1 + 128) = v19;
  v15 = v18[3];
  *(a1 + 32) = v18[2];
  *(a1 + 48) = v15;
  v16 = v18[5];
  *(a1 + 64) = v18[4];
  *(a1 + 80) = v16;
  result = v18[1];
  *a1 = v18[0];
  *(a1 + 16) = result;
  return result;
}

double sub_18917A710(float64x2_t *a1)
{
  v2 = a1[1].f64[0];
  *v1 = vmulq_f64(*a1, *v1);
  result = v2 * v1[1].f64[0];
  v1[1].f64[0] = result;
  return result;
}

BOOL sub_18917A734()
{
  if ((~*v0 & 0x7FF0000000000000) == 0)
  {
    return 1;
  }

  if ((~v0[1] & 0x7FF0000000000000) != 0)
  {
    return (~v0[2] & 0x7FF0000000000000) == 0;
  }

  return 1;
}

void sub_18917A768(double *a1@<X0>, double *a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  sub_18917A8F0(a3, *a1, a1[1], a1[2], *a2, a2[1], a2[2]);
  *a4 = v5;
  a4[1] = v6;
  a4[2] = v7;
}

float64_t sub_18917A7A8(double a1)
{
  *v1 = vmulq_n_f64(*v1, a1);
  result = v1[1].f64[0] * a1;
  v1[1].f64[0] = result;
  return result;
}

void sub_18917A7E4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

float64_t sub_18917A7F0@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = a1[1].f64[0] + a2[1].f64[0];
  *a3 = vaddq_f64(*a1, *a2);
  a3[1].f64[0] = result;
  return result;
}

float64_t sub_18917A814(float64x2_t *a1, float64x2_t *a2)
{
  result = a2[1].f64[0] + a1[1].f64[0];
  *a1 = vaddq_f64(*a2, *a1);
  a1[1].f64[0] = result;
  return result;
}

float64_t sub_18917A838@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = a1[1].f64[0] - a2[1].f64[0];
  *a3 = vsubq_f64(*a1, *a2);
  a3[1].f64[0] = result;
  return result;
}

float64_t sub_18917A85C(float64x2_t *a1, float64x2_t *a2)
{
  result = a1[1].f64[0] - a2[1].f64[0];
  *a1 = vsubq_f64(*a1, *a2);
  a1[1].f64[0] = result;
  return result;
}

void sub_18917A8B0(double *a1@<X0>, double *a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  sub_18917AA20(a3, *a1, a1[1], a1[2], a1[3], *a2, a2[1], a2[2], a2[3]);
  *a4 = v5;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
}

void sub_18917A8F0(unsigned __int8 a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v11 = a2 - a5;
  if (a1 - 1 < 3)
  {
    v12 = __sincos_stret(v11);
    atan2(v12.__sinval, v12.__cosval);
    v13 = __sincos_stret(a3 - a6);
    atan2(v13.__sinval, v13.__cosval);
    v14 = __sincos_stret(a4 - a7);
    atan2(v14.__sinval, v14.__cosval);
  }
}

void sub_18917AA20(unsigned __int8 a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v15 = a2 - a6;
  if (a1 - 1 < 3)
  {
    v16 = __sincos_stret(v15);
    atan2(v16.__sinval, v16.__cosval);
    v17 = __sincos_stret(a3 - a7);
    atan2(v17.__sinval, v17.__cosval);
    v18 = __sincos_stret(a4 - a8);
    atan2(v18.__sinval, v18.__cosval);
    v19 = __sincos_stret(a5 - a9);
    atan2(v19.__sinval, v19.__cosval);
  }
}

void sub_18917ABA0(double *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 128);
  sub_18917A8F0(v8 + 1, *a1, a1[1], a1[2], *a2, *(a2 + 8), *(a2 + 16));
  v35 = v10;
  v36 = v9;
  v34 = v11;
  sub_18917A8F0(a3, a1[3], a1[4], a1[5], *(a2 + 24), *(a2 + 32), *(a2 + 40));
  v33 = v12;
  v14 = v13;
  v16 = v15;
  sub_18917A8F0(a3, a1[6], a1[7], a1[8], *(a2 + 48), *(a2 + 56), *(a2 + 64));
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_18917A8F0(a3, a1[9], a1[10], a1[11], *(a2 + 72), *(a2 + 80), *(a2 + 88));
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_18917AA20(a3, a1[12], a1[13], a1[14], a1[15], *(a2 + 96), *(a2 + 104), *(a2 + 112), *(a2 + 120));
  *a4 = v36;
  *(a4 + 8) = v35;
  *(a4 + 16) = v34;
  *(a4 + 24) = v33;
  *(a4 + 32) = v14;
  *(a4 + 40) = v16;
  *(a4 + 48) = v18;
  *(a4 + 56) = v20;
  *(a4 + 64) = v22;
  *(a4 + 72) = v24;
  *(a4 + 80) = v26;
  *(a4 + 88) = v28;
  *(a4 + 96) = v29;
  *(a4 + 104) = v30;
  *(a4 + 112) = v31;
  *(a4 + 120) = v32;
  *(a4 + 128) = v8;
}

uint64_t sub_18917ACF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 129))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 128);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18917AD3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_18917ADB8()
{
  result = qword_1ED48C918;
  if (!qword_1ED48C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48C918);
  }

  return result;
}

unint64_t sub_18917AE0C(uint64_t a1)
{
  result = sub_188F0D4BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18917AE38()
{
  result = qword_1EA93EB68;
  if (!qword_1EA93EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93EB68);
  }

  return result;
}

unint64_t sub_18917AE90()
{
  result = qword_1ED48C910;
  if (!qword_1ED48C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48C910);
  }

  return result;
}

unint64_t sub_18917AEE4(uint64_t a1)
{
  result = sub_18917AF0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18917AF0C()
{
  result = qword_1ED48C900;
  if (!qword_1ED48C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48C900);
  }

  return result;
}

unint64_t sub_18917AF94()
{
  result = qword_1EA93EB70;
  if (!qword_1EA93EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93EB70);
  }

  return result;
}

unint64_t sub_18917AFEC()
{
  result = qword_1EA93EB78;
  if (!qword_1EA93EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93EB78);
  }

  return result;
}

unint64_t sub_18917B040(uint64_t a1)
{
  result = sub_18917B068();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18917B068()
{
  result = qword_1EA93EB80;
  if (!qword_1EA93EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93EB80);
  }

  return result;
}

unint64_t sub_18917B0C0()
{
  result = qword_1EA93EB88;
  if (!qword_1EA93EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93EB88);
  }

  return result;
}

unint64_t sub_18917B118()
{
  result = qword_1EA93EB90;
  if (!qword_1EA93EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93EB90);
  }

  return result;
}

unint64_t sub_18917B16C(uint64_t a1)
{
  result = sub_18917B194();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18917B194()
{
  result = qword_1EA93EB98;
  if (!qword_1EA93EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93EB98);
  }

  return result;
}

void sub_18917B230()
{
  v1 = [v0 delegateFontPickerViewController];
  if (v1)
  {
    v2 = v1;
    aBlock[4] = sub_188AB3830;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18917B730;
    aBlock[3] = &block_descriptor_135;
    v3 = _Block_copy(aBlock);
    v4 = v2;
    [v4 _beginDelayingPresentation_cancellationHandler_];
    _Block_release(v3);
    v5 = sub_18A4A7258();
    v6 = [objc_opt_self() identityForEmbeddedApplicationIdentifier_];

    v7 = objc_allocWithZone(_UIFontPickerSceneSpecification);
    v8 = v6;
    v9 = [v7 init];
    v10 = [objc_allocWithZone(_UISceneHostingController) initWithProcessIdentity:v8 sceneSpecification:v9];

    [v10 setDelegate_];
    v11 = [v10 sceneViewController];
    [v4 addChildViewController_];
    v12 = [v11 view];
    if (v12)
    {
      v13 = v12;
      v34 = v8;
      v14 = [v4 view];

      if (v14)
      {
        [v14 addSubview_];
        [v13 setTranslatesAutoresizingMaskIntoConstraints_];
        v33 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_18A64B810;
        v16 = [v13 leadingAnchor];
        v17 = [v14 leadingAnchor];
        v18 = [v16 constraintEqualToAnchor_];

        *(v15 + 32) = v18;
        v19 = [v13 trailingAnchor];
        v20 = [v14 trailingAnchor];
        v21 = [v19 constraintEqualToAnchor_];

        *(v15 + 40) = v21;
        v22 = [v13 topAnchor];
        v23 = [v14 topAnchor];
        v24 = [v22 constraintEqualToAnchor_];

        *(v15 + 48) = v24;
        v25 = [v13 bottomAnchor];
        v26 = [v14 bottomAnchor];
        v27 = [v25 constraintEqualToAnchor_];

        *(v15 + 56) = v27;
        sub_188A34624(0, &qword_1ED48CFF0);
        v28 = sub_18A4A7518();

        [v33 activateConstraints_];

        [v11 didMoveToParentViewController_];
        v29 = objc_opt_self();
        v30 = [v4 configuration];
        v31 = [v29 actionForConfiguration_];

        [v10 sendAction_];
        v32 = *&v0[OBJC_IVAR____UIFontPickerSceneHostingImpl_hostingController];
        *&v0[OBJC_IVAR____UIFontPickerSceneHostingImpl_hostingController] = v10;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_18917B730(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

void sub_18917B7C8(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____UIFontPickerSceneHostingImpl_hostingController);
  if (v3)
  {
    if (a1)
    {
      sub_188A34624(0, &qword_1EA93ECE8);
      v5 = v3;
      v6 = sub_18A4A7518();
    }

    else
    {
      v5 = v3;
      v6 = 0;
    }

    v7 = [objc_opt_self() actionForSelectedFontDescriptors:v6 scrollToVisible:a2 & 1];

    [v5 sendAction_];
  }
}

void sub_18917B964(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = *&a1[OBJC_IVAR____UIFontPickerSceneHostingImpl_hostingController];
  if (v4)
  {
    v8 = objc_opt_self();
    v11 = a1;
    v9 = v4;
    v10 = [v8 *a4];
    [v9 sendAction_];
  }
}

id _UIFontPickerSceneHostingImpl.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  *&v0[OBJC_IVAR____UIFontPickerSceneHostingImpl_hostingController] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = _UIFontPickerSceneHostingImpl;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t View.uiCoreInteractionRepresentable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CoreInteractionRepresentableAdaptor();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  (*(v5 + 16))(v7, a1, a3, v10);
  (*(v5 + 32))(v12, v7, a3);
  swift_getWitnessTable();
  sub_18A4A5D68();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_18917BED8()
{
  result = sub_18A4A5B68();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18917BF68@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EA9307A0;
  swift_beginAccess();
  v4 = sub_18A4A5B68();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_18917BFF0(uint64_t a1)
{
  v3 = qword_1EA9307A0;
  swift_beginAccess();
  v4 = sub_18A4A5B68();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_18917C114(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = qword_1EA9307A0;
  v5 = sub_18A4A5B68();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id sub_18917C1F8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_18A4A5B68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A5B58();
  (*(v5 + 32))(v1 + qword_1EA9307A0, v7, v4);
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_18917C378()
{
  v1 = qword_1EA9307A0;
  v2 = sub_18A4A5B68();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_18917C3E0(uint64_t a1)
{
  v2 = qword_1EA9307A0;
  v3 = sub_18A4A5B68();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

void (*sub_18917C48C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18917C080();
  return sub_188E263E8;
}

void sub_18917C520(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a2 + 24) + 16))(*(a2 + 16), *(a2 + 24));
  sub_18A4A5B48();
}

uint64_t sub_18917C588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = *(a3 + 16);
    v3 = *(a3 + 24);
    v5 = *(v3 + 24);
    v6 = swift_unknownObjectRetain();
    v5(v6, v4, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

id _UISuperlayerSecurityAnalysisSceneComponent.init(scene:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____UISuperlayerSecurityAnalysisSceneComponent___hostBundleIdentifier];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____UISuperlayerSecurityAnalysisSceneComponent___hostSDKVersion];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____UISuperlayerSecurityAnalysisSceneComponent___hostIsInternal] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11.receiver = v1;
  v11.super_class = _UISuperlayerSecurityAnalysisSceneComponent;
  v5 = objc_msgSendSuper2(&v11, sel_init);
  sub_18917C82C();
  sub_18917CAA4();
  v6 = [v5 _scene];
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 _contextBinder];

      [v9 addObserver_];
    }

    else
    {
      v9 = a1;
      a1 = v7;
    }
  }

  return v5;
}

void sub_18917C82C()
{
  v1 = [v0 _scene];
  if (v1)
  {
    v25 = v1;
    v2 = [v1 _FBSScene];
    v3 = [v2 hostHandle];

    if (v3 && (v4 = [v3 auditToken], v3, v4))
    {
      v5 = [v4 bundleID];
      if (v5)
      {
        v6 = v5;
        v7 = sub_18A4A7288();
        v9 = v8;
      }

      else
      {
        v7 = 0;
        v9 = 0;
      }

      v10 = &v0[OBJC_IVAR____UISuperlayerSecurityAnalysisSceneComponent___hostBundleIdentifier];
      *v10 = v7;
      v10[1] = v9;

      [v4 realToken];
      v11 = UITouchAuthenticationBundleRecordForAuditToken(&v26);
      if (v11)
      {
        v12 = v11;
        if (v10[1])
        {
          v13 = *v10;
          v14 = v10[1];
        }

        else
        {
          v15 = [v11 bundleIdentifier];
          if (v15)
          {
            v16 = v15;
            v13 = sub_18A4A7288();
            v14 = v17;
          }

          else
          {
            v13 = 0;
            v14 = 0;
          }
        }

        *v10 = v13;
        v10[1] = v14;

        v18 = [v12 SDKVersion];
        if (v18)
        {
          v19 = v18;
          v20 = sub_18A4A7288();
          v22 = v21;
        }

        else
        {

          v20 = 0;
          v22 = 0;
        }

        v23 = &v0[OBJC_IVAR____UISuperlayerSecurityAnalysisSceneComponent___hostSDKVersion];
        *v23 = v20;
        v23[1] = v22;
      }

      [v4 realToken];
      IsPlatformBinary = UITouchAuthenticationAuditTokenIsPlatformBinary(&v26);

      v0[OBJC_IVAR____UISuperlayerSecurityAnalysisSceneComponent___hostIsInternal] = IsPlatformBinary;
    }

    else
    {
    }
  }
}

void sub_18917CAA4()
{
  v1 = [v0 _scene];
  if (!v1)
  {
    return;
  }

  v18 = v1;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {

    return;
  }

  v3 = [v2 _contextBinder];
  v4 = [v3 enrolledBindables];

  sub_188A34624(0, &qword_1EA930850);
  v5 = sub_18A4A7548();

  if (v5 >> 62)
  {
    v6 = sub_18A4A7F68();
    v7 = v18;
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_29:

    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = v18;
  if (!v6)
  {
    goto LABEL_29;
  }

LABEL_5:
  if (v6 >= 1)
  {
    v8 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_188E4B29C(v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v0 _scene];
      if (!v11)
      {
        goto LABEL_20;
      }

      v12 = v11;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
        break;
      }

      v14 = [v13 delegate];

      if (!v14)
      {
        goto LABEL_20;
      }

      v15 = swift_dynamicCastObjCProtocolConditional();
      if (!v15)
      {
        swift_unknownObjectRelease();
        goto LABEL_20;
      }

      v16 = [v15 _securityAnalysisPolicyForWindow_];
      swift_unknownObjectRelease();
      if (!v16)
      {
        goto LABEL_20;
      }

      if (v16 == 1)
      {
        v17 = 1;
        goto LABEL_21;
      }

      if (v16 != 2)
      {
        goto LABEL_20;
      }

      v17 = 0;
LABEL_21:
      ++v8;
      [v10 _setWantsSuperlayerSecurityAnalysis_];

      if (v6 == v8)
      {

        return;
      }
    }

LABEL_20:
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass() == 0;
    goto LABEL_21;
  }

  __break(1u);
}

BOOL sub_18917CEC8(uint64_t a1)
{
  v3 = [v1 _scene];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 delegate];

      if (v6)
      {
        v7 = swift_dynamicCastObjCProtocolConditional();
        if (v7)
        {
          v8 = [v7 _securityAnalysisPolicyForWindow_];
          swift_unknownObjectRelease();
          if (v8)
          {
            if (v8 == 1)
            {
              return 1;
            }

            if (v8 == 2)
            {
              return 0;
            }
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
    }
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() == 0;
}

void __swiftcall _UISuperlayerSecurityAnalysisSceneComponent.init()(_UISuperlayerSecurityAnalysisSceneComponent *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_18917D3BC()
{
  v0 = sub_18A4A4378();
  __swift_allocate_value_buffer(v0, qword_1EA9301A0);
  __swift_project_value_buffer(v0, qword_1EA9301A0);
  return sub_18A4A4368();
}

uint64_t sub_18917D444()
{
  v0 = sub_18A4A4378();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18A4A4338();
  __swift_allocate_value_buffer(v4, qword_1EA9301C8);
  __swift_project_value_buffer(v4, qword_1EA9301C8);
  if (qword_1EA930190 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EA9301A0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_18A4A4318();
}

uint64_t sub_18917D66C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void (*a9)(id, uint64_t, double, double, double, double))
{
  v15 = a7;
  swift_unknownObjectRetain();
  a9(v15, a8, a1, a2, a3, a4);

  return swift_unknownObjectRelease();
}

double sub_18917D784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C110);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11[-v3 - 8];
  v5 = sub_18A4A6E88();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = sub_18A4A3B58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EEC8);
  sub_18A4A3838();
  sub_188A3F5FC(v4, &unk_1EA93C110);
  v6(v11, 0);
  swift_beginAccess();
  v7 = *(&v13 + 1);
  if (*(a1 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1 + 16);
    if (v7)
    {
LABEL_3:
      sub_188A5EBAC(&v12, a1 + 16);
      return result;
    }
  }

  else if (*(&v13 + 1))
  {
    goto LABEL_3;
  }

  result = *&v12;
  v9 = v13;
  *(a1 + 16) = v12;
  *(a1 + 32) = v9;
  *(a1 + 48) = v14;
  return result;
}

uint64_t sub_18917D934(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v7 = sub_18A4A6E18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18A4A6E58();
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18A4A6E28();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    result = swift_beginAccess();
    if (*(a4 + 40))
    {
      sub_188A53994(a4 + 16, aBlock);
      __swift_project_boxed_opaque_existential_0(aBlock, v28);
      sub_18A4A37E8();
      return __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    }
  }

  else
  {
    sub_188A34624(0, &qword_1ED490540);
    v23 = v8;
    (*(v15 + 104))(v17, *MEMORY[0x1E69E7F88], v14);
    sub_188DBF7D8(a1, a2);
    v22 = sub_18A4A7AA8();
    (*(v15 + 8))(v17, v14);
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = v24;
    v19[5] = a4;
    v29 = sub_189180230;
    v30 = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    v28 = &block_descriptor_20_2;
    v20 = _Block_copy(aBlock);
    sub_188DBF82C(a1, a2);

    sub_18A4A6E38();
    v31 = MEMORY[0x1E69E7CC0];
    sub_188B022DC(&qword_1ED490560, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
    sub_188BA3728();
    sub_18A4A7EB8();
    v21 = v22;
    MEMORY[0x18CFE29D0](0, v13, v10, v20);
    _Block_release(v20);

    sub_188DBF840(a1, a2);
    (*(v23 + 8))(v10, v7);
    (*(v25 + 8))(v13, v26);
  }

  return result;
}

size_t sub_18917DD50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v69 = a3;
  v86 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93EEA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v67 - v7;
  v75 = sub_18A4A34E8();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18A4A3CB8();
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EEB0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v67 - v17;
  v19 = sub_18A4A34D8();
  v20 = *(v19 - 8);
  v87 = v19;
  v88 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v70 = &v67 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v78 = &v67 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93EEB8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v84 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v67 - v29;
  v31 = sub_18A4A3C38();
  v32 = *(*(v31 - 8) + 56);
  v85 = v30;
  v32(v30, 1, 1, v31);
  v76 = a1;
  v77 = a2;
  v33 = sub_18A4A2918();
  v34 = CGDataProviderCreateWithCFData(v33);

  if (!v34)
  {
    goto LABEL_7;
  }

  v35 = CGPDFDocumentCreateWithProvider(v34);
  if (!v35)
  {

LABEL_7:
    v42 = v87;
    v41 = v88;
    v43 = v78;
    goto LABEL_8;
  }

  v36 = v35;
  if (CGPDFDocumentIsEncrypted(v35) && !CGPDFDocumentIsUnlocked(v36))
  {
    v83 = 0;
    v40 = 0;
  }

  else
  {
    v37 = v36;
    v38 = v86;
    v83 = sub_18918023C(0x656C746954, 0xE500000000000000, v37);
    v40 = v39;
    v86 = v38;
  }

  result = CGPDFDocumentGetNumberOfPages(v36);
  if (__OFADD__(v69, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v69 + 1 < v69)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v46 = v13;
  v47 = v84;
  sub_18A4A3C28();

  v48 = v85;
  sub_188A3F5FC(v85, &unk_1EA93EEB8);
  v32(v47, 0, 1, v31);
  sub_188A3F704(v47, v48, &unk_1EA93EEB8);
  if (v40)
  {
    v49 = v40;
    v42 = v87;
    v41 = v88;
    v43 = v78;
    v13 = v46;
    v69 = v49;
    goto LABEL_14;
  }

  v42 = v87;
  v41 = v88;
  v43 = v78;
  v13 = v46;
LABEL_8:
  v83 = sub_18A4A3DF8();
  v69 = v44;

LABEL_14:
  sub_18A4A4288();
  v50 = sub_18A4A42B8();
  (*(*(v50 - 8) + 56))(v18, 0, 1, v50);
  v51 = sub_18A4A2968();
  v52 = *(*(v51 - 8) + 56);
  v52(v71, 1, 1, v51);
  v52(v13, 1, 1, v51);
  sub_18A4A34C8();
  sub_18A4A3518();
  v53 = *(v41 + 16);
  v53(v70, v43, v42);
  (*(v74 + 104))(v72, *MEMORY[0x1E69DB9D0], v75);
  sub_188DBF7D8(v76, v77);
  v54 = v69;

  v55 = v83;
  v56 = v86;
  sub_18A4A34A8();
  if (v56)
  {

    v57 = v73;
    v53(v73, v43, v42);
    v58 = v55;
    v59 = v79;
    MEMORY[0x18CFDEBF0](v58, v54, v57);
  }

  else
  {

    v53(v73, v43, v42);
    v59 = v79;
    sub_18A4A3C98();
  }

  v60 = v85;
  sub_188A3F29C(v85, v84, &unk_1EA93EEB8);
  sub_18A4A3C48();
  sub_18A4A3C78();
  v61 = v82;
  swift_beginAccess();
  v62 = v88;
  if (*(v61 + 40))
  {
    sub_188A53994(v61 + 16, v89);
    v63 = v43;
    __swift_project_boxed_opaque_existential_0(v89, v89[3]);
    v65 = v80;
    v64 = v81;
    v66 = v68;
    (*(v80 + 16))(v68, v59, v81);
    (*(v65 + 56))(v66, 0, 1, v64);
    sub_18A4A3808();
    sub_188A3F5FC(v66, &unk_1EA93EEA0);
    (*(v65 + 8))(v59, v64);
    (*(v62 + 8))(v63, v87);
    sub_188A3F5FC(v60, &unk_1EA93EEB8);
    return __swift_destroy_boxed_opaque_existential_0Tm(v89);
  }

  else
  {
    (*(v80 + 8))(v59, v81);
    (*(v62 + 8))(v43, v42);
    return sub_188A3F5FC(v60, &unk_1EA93EEB8);
  }
}

uint64_t sub_18917E660(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v12 = a2;
  v13 = *(a1 + 32);
  if (a2)
  {

    v14 = v12;
    v12 = sub_18A4A2928();
    v16 = v15;
  }

  else
  {

    v16 = 0xF000000000000000;
  }

  v13(v12, v16, a3, a4, a5, a6, a7);
  sub_188DBF840(v12, v16);
}

uint64_t sub_18917E730(uint64_t result, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = a3;
  v83 = result;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8++;
      if (v8 < v7)
      {
        v11 = *(*v6 + v8);
        v12 = 8 * v10;
        v13 = (*v6 + 8 * v10);
        v14 = *v13;
        v5 = v13 + 2;
        result = _UIWindowCompareWindowsUsingLevel(v11, v14);
        v15 = result;
        v16 = v10 + 2;
        while (v7 != v16)
        {
          result = _UIWindowCompareWindowsUsingLevel(*v5, *(v5 - 1));
          ++v16;
          ++v5;
          if ((v15 == -1) == (result != -1))
          {
            v7 = v16 - 1;
            break;
          }
        }

        v6 = a3;
        if (v15 == -1)
        {
          if (v7 < v10)
          {
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return result;
          }

          if (v10 < v7)
          {
            v17 = 8 * v7 - 8;
            v18 = v7;
            v19 = v10;
            do
            {
              if (v19 != --v18)
              {
                v21 = *a3;
                if (!*a3)
                {
                  goto LABEL_126;
                }

                v20 = *&v21[v12];
                *&v21[v12] = *&v21[v17];
                *&v21[v17] = v20;
              }

              ++v19;
              v17 -= 8;
              v12 += 8;
            }

            while (v19 < v18);
          }
        }

        v8 = v7;
      }

      v22 = v6[1];
      if (v8 < v22)
      {
        if (__OFSUB__(v8, v10))
        {
          goto LABEL_118;
        }

        if (v8 - v10 < a4)
        {
          if (__OFADD__(v10, a4))
          {
            goto LABEL_119;
          }

          if (v10 + a4 >= v22)
          {
            v23 = v6[1];
          }

          else
          {
            v23 = (v10 + a4);
          }

          if (v23 < v10)
          {
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          if (v8 != v23)
          {
            v24 = *v6;
            v25 = v10;
            v26 = *v6 + 8 * v8 - 8;
            v81 = v25;
            v6 = (v25 - v8);
            do
            {
              v27 = v24[v8];
              v5 = v6;
              v28 = v26;
              do
              {
                result = _UIWindowCompareWindowsUsingLevel(v27, *v28);
                if (result != -1)
                {
                  break;
                }

                if (!v24)
                {
                  goto LABEL_123;
                }

                v29 = *v28;
                v27 = *(v28 + 8);
                *v28 = v27;
                *(v28 + 8) = v29;
                v28 -= 8;
                v30 = __CFADD__(v5, 1);
                v5 = (v5 + 1);
              }

              while (!v30);
              ++v8;
              v26 += 8;
              v6 = (v6 - 1);
            }

            while (v8 != v23);
            v8 = v23;
            v10 = v81;
          }
        }
      }

      if (v8 < v10)
      {
        goto LABEL_117;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_188E4B688(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v32 = *(v9 + 2);
      v31 = *(v9 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_188E4B688((v31 > 1), v32 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v33;
      v34 = &v9[16 * v32];
      *(v34 + 4) = v10;
      *(v34 + 5) = v8;
      v35 = *v83;
      if (!*v83)
      {
        goto LABEL_127;
      }

      if (v32)
      {
        v6 = a3;
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v9 + 4);
            v38 = *(v9 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_59:
            if (v40)
            {
              goto LABEL_106;
            }

            v53 = &v9[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_109;
            }

            v59 = &v9[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_113;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_80;
            }

            goto LABEL_73;
          }

          v63 = &v9[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_73:
          if (v58)
          {
            goto LABEL_108;
          }

          v66 = &v9[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_111;
          }

          if (v69 < v57)
          {
            goto LABEL_4;
          }

LABEL_80:
          v5 = (v36 - 1);
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (!*a3)
          {
            goto LABEL_124;
          }

          v74 = *&v9[16 * v5 + 32];
          v75 = *&v9[16 * v36 + 40];
          sub_18917ECBC(*a3 + v74, *a3 + *&v9[16 * v36 + 32], *a3 + v75, v35);
          if (v4)
          {
          }

          if (v75 < v74)
          {
            goto LABEL_102;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_18917EF5C(v9);
          }

          if (v5 >= *(v9 + 2))
          {
            goto LABEL_103;
          }

          v76 = &v9[16 * v5];
          *(v76 + 4) = v74;
          *(v76 + 5) = v75;
          result = sub_18917EED0(v36);
          v33 = *(v9 + 2);
          if (v33 <= 1)
          {
            goto LABEL_4;
          }
        }

        v41 = &v9[16 * v33 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_104;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_105;
        }

        v48 = &v9[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_107;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v52 >= v44)
        {
          v70 = &v9[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_114;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_80;
        }

        goto LABEL_59;
      }

      v6 = a3;
LABEL_4:
      v7 = v6[1];
      if (v8 >= v7)
      {
        goto LABEL_90;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_90:
  v5 = *v83;
  if (!*v83)
  {
    goto LABEL_128;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_121:
    result = sub_18917EF5C(v9);
    v9 = result;
  }

  v77 = *(v9 + 2);
  if (v77 >= 2)
  {
    while (*v6)
    {
      v78 = *&v9[16 * v77];
      v79 = *&v9[16 * v77 + 24];
      sub_18917ECBC(*v6 + v78, *v6 + *&v9[16 * v77 + 16], *v6 + v79, v5);
      if (v4)
      {
      }

      if (v79 < v78)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_18917EF5C(v9);
      }

      if (v77 - 2 >= *(v9 + 2))
      {
        goto LABEL_116;
      }

      v80 = &v9[16 * v77];
      *v80 = v78;
      *(v80 + 1) = v79;
      result = sub_18917EED0(v77 - 1);
      v77 = *(v9 + 2);
      if (v77 <= 1)
      {
      }
    }

    goto LABEL_125;
  }
}

uint64_t sub_18917ECBC(void **__dst, void **__src, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (_UIWindowCompareWindowsUsingLevel(*v6, *v4) != -1)
      {
        break;
      }

      v15 = v6;
      v16 = v7 == v6++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v4;
    v16 = v7 == v4++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *--v18;
      if (_UIWindowCompareWindowsUsingLevel(v20, *v17) == -1)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_18917EED0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18917EF5C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_18917EF70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

id sub_18917F0C4(void *a1, double a2, double a3, double a4, double a5)
{
  sub_18A4A3498();
  v10 = swift_dynamicCastClass();
  if (v10)
  {

    return [a1 _intelligenceCollectRemoteContentIn_remoteContextWrapper_];
  }

  else
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD00000000000002ELL, 0x800000018A6ADFE0);
    MEMORY[0x18CFE22D0](0xD00000000000002CLL, 0x800000018A6AE010);
    MEMORY[0x18CFE22D0](8250, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EED0);
    sub_18A4A82D8();
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t sub_18917F238(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v28 - v5;
  v7 = sub_18A4A3CC8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v33 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A3498();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_16;
  }

  v10 = sub_18A4A4148();
  swift_unknownObjectRetain();
  v28[0] = v10;
  sub_18A4A4138();
  v34 = sub_18A4A4128();

  v35[3] = sub_18A4A3CD8();
  v35[4] = MEMORY[0x1E69DBC28];
  __swift_allocate_boxed_opaque_existential_0(v35);
  sub_18A4A3478();
  v11 = objc_allocWithZone(sub_18A4A3468());
  v12 = sub_18A4A3458();
  v13 = a1;
  v28[1] = a2;
  if (a1 >> 62)
  {
    v14 = sub_18A4A7F68();
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_14:

    sub_18A4A4138();
    sub_18A4A4118();
    swift_unknownObjectRelease();
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = a1 & 0xC000000000000001;
    v17 = (v8 + 48);
    v30 = (v8 + 8);
    v31 = (v8 + 32);
    v32 = v13 & 0xC000000000000001;
    v29 = v14;
    do
    {
      if (v16)
      {
        v21 = sub_188E49300(v15, v13);
      }

      else
      {
        v21 = *(v13 + 8 * v15 + 32);
      }

      v22 = v21;
      [v22 _intelligenceVisibleBounds];
      sub_188E4528C(v12, v22, v22, v6, v23, v24, v25, v26);
      if ((*v17)(v6, 1, v7) == 1)
      {
        sub_188A3F5FC(v6, &unk_1EA934040);
      }

      else
      {
        v18 = v12;
        v19 = v33;
        (*v31)(v33, v6, v7);
        sub_18A4A4098();
        v20 = v19;
        v12 = v18;
        v14 = v29;
        v16 = v32;
        (*v30)(v20, v7);
      }

      ++v15;
    }

    while (v14 != v15);
    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD00000000000002ELL, 0x800000018A6ADFE0);
  MEMORY[0x18CFE22D0](0xD00000000000002CLL, 0x800000018A6AE010);
  MEMORY[0x18CFE22D0](8250, 0xE200000000000000);
  v35[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EED0);
  sub_18A4A82D8();
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

uint64_t sub_18917F670(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v67 = a5;
  v68 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v59 - v11;
  v66 = sub_18A4A3CC8();
  v13 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_18A4A4088();
  v15 = *(v65 - 1);
  MEMORY[0x1EEE9AC00](v65);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A3498();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_21;
  }

  v18 = sub_18A4A4148();
  swift_unknownObjectRetain();
  sub_18A4A4138();
  v64 = sub_18A4A4128();

  v19 = a1;
  v20 = [a1 systemProtectionManager];
  if (!v20 || (v21 = v20, v22 = [v20 isUserAuthenticationEnabled], v21, !v22))
  {
    v60 = v13;
    v59[0] = v18;
    v59[1] = a2;
    v70 = sub_18A4A3CD8();
    v71 = MEMORY[0x1E69DBC28];
    __swift_allocate_boxed_opaque_existential_0(v69);
    sub_18A4A3478();
    v24 = objc_allocWithZone(sub_18A4A3468());
    v25 = sub_18A4A3458();
    v26 = [v19 _coordinateSpace];
    sub_18A4A3448();
    __swift_project_boxed_opaque_existential_0(v69, v70);
    sub_18A4A3E88();
    v27 = sub_18A4A4028();
    (*(v15 + 8))(v17, v65);
    v28 = sub_188DF6A6C(v27 & 1);
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    if (v28 >> 62)
    {
      a2 = sub_18A4A7F68();
      if (a2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      a2 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a2)
      {
LABEL_9:
        if (a2 >= 1)
        {
          v29 = 0;
          v30 = v28 & 0xC000000000000001;
          v65 = (v60 + 6);
          v61 = (v60 + 4);
          ++v60;
          v62 = a2;
          do
          {
            if (v30)
            {
              v31 = sub_188E4B29C(v29, v28);
            }

            else
            {
              v31 = *(v28 + 8 * v29 + 32);
            }

            v32 = v31;
            [v26 convertRect:v31 toCoordinateSpace:{a3, a4, v67, v68}];
            v34 = v33;
            v36 = v35;
            v38 = v37;
            v40 = v39;
            [v32 _intelligenceVisibleBounds];
            v76.origin.x = v41;
            v76.origin.y = v42;
            v76.size.width = v43;
            v76.size.height = v44;
            v74.origin.x = v34;
            v74.origin.y = v36;
            v74.size.width = v38;
            v74.size.height = v40;
            v75 = CGRectIntersection(v74, v76);
            x = v75.origin.x;
            y = v75.origin.y;
            width = v75.size.width;
            height = v75.size.height;
            [v32 convertPoint:v26 toCoordinateSpace:{0.0, 0.0}];
            v50 = v49;
            v52 = v51;
            v53 = v32;
            sub_188E46B84(v25, v53, v53, v12, x, y, width, height, v50, v52);
            v54 = v66;
            if ((*v65)(v12, 1, v66) == 1)
            {
              sub_188A3F5FC(v12, &unk_1EA934040);
            }

            else
            {
              v55 = v28;
              v56 = v25;
              v57 = v63;
              (*v61)(v63, v12, v54);
              sub_18A4A4098();
              v58 = v57;
              v25 = v56;
              v28 = v55;
              a2 = v62;
              (*v60)(v58, v54);
            }

            ++v29;
          }

          while (a2 != v29);
          goto LABEL_19;
        }

        __break(1u);
LABEL_21:
        v69[0] = 0;
        v69[1] = 0xE000000000000000;
        sub_18A4A80E8();
        MEMORY[0x18CFE22D0](0xD00000000000002ELL, 0x800000018A6ADFE0);
        MEMORY[0x18CFE22D0](0xD00000000000002CLL, 0x800000018A6AE010);
        MEMORY[0x18CFE22D0](8250, 0xE200000000000000);
        v72 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EED0);
        sub_18A4A82D8();
        result = sub_18A4A8398();
        __break(1u);
        return result;
      }
    }

LABEL_19:

    swift_unknownObjectRelease();
    sub_18A4A4138();
    sub_18A4A4118();
    swift_unknownObjectRelease();
  }

  sub_18A4A4138();
  sub_18A4A4118();
  swift_unknownObjectRelease();
}

uint64_t sub_18917FD48()
{
  v0 = sub_18A4A4308();
  v23 = *(v0 - 8);
  v24 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_18A4A3F68();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18A4A4088();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = mach_continuous_time();
  if (qword_1EA931DA8 != -1)
  {
    swift_once();
  }

  sub_18A4A40B8();
  __swift_project_boxed_opaque_existential_0(v25, v25[3]);
  sub_18A4A3E88();
  sub_18A4A3F78();
  (*(v6 + 8))(v8, v5);
  v9 = sub_188FDE8C0(v4);
  v10 = *(v2 + 8);

  v10(v4, v21);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  sub_18A4A40A8();
  if (qword_1EA9301B8 != -1)
  {
    swift_once();
  }

  v11 = sub_18A4A4338();
  __swift_project_value_buffer(v11, qword_1EA9301C8);
  sub_18A4A4328();

  v12 = v22;
  sub_18A4A42E8();
  sub_189180138();
  sub_18917D714();
  sub_188A55B8C(v13);

  v14 = sub_18A4A4328();
  v15 = sub_18A4A7B28();
  if (sub_18A4A7CF8())
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = v20;
    *(v16 + 12) = 2050;
    v17 = *(v9 + 16);

    *(v16 + 14) = v17;

    v18 = sub_18A4A42F8();
    _os_signpost_emit_with_name_impl(&dword_188A29000, v14, v15, v18, "CollectCommands", "%{public, signpost.description:begin_time}llu commands=%{public}ld", v16, 0x16u);
    MEMORY[0x18CFEA5B0](v16, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return (*(v23 + 8))(v12, v24);
}

unint64_t sub_189180138()
{
  result = qword_1EA9300D8;
  if (!qword_1EA9300D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9300D8);
  }

  return result;
}

BOOL sub_18918018C()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return sub_189174CA8(v1, ObjectType);
}

double sub_1891801C4()
{
  sub_18A4A4088();
  v1 = *(v0 + 16);

  return sub_18917D784(v1);
}

CGPDFDictionary *sub_18918023C(CGPDFString *a1, uint64_t a2, CGPDFDocumentRef document)
{
  value[4] = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = CGPDFDocumentGetInfo(document);
      if (result)
      {
        value[0] = 0;
        if (!CGPDFDictionaryGetString(result, ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), value))
        {
          return 0;
        }

        v6 = value[0];
        if (!value[0])
        {
          return 0;
        }

        if (CGPDFStringGetLength(value[0]) < 1)
        {
          return 0;
        }

        v7 = CGPDFStringCopyTextString(v6);
        if (!v7)
        {
          return 0;
        }

        goto LABEL_15;
      }

      return result;
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
    result = sub_18A4A80A8();
    if (!v3)
    {
      return value[2];
    }

    return result;
  }

  value[0] = a1;
  value[1] = (a2 & 0xFFFFFFFFFFFFFFLL);
  result = CGPDFDocumentGetInfo(document);
  if (result)
  {
    string = 0;
    if (CGPDFDictionaryGetString(result, value, &string))
    {
      v8 = string;
      if (string)
      {
        if (CGPDFStringGetLength(string) >= 1)
        {
          v7 = CGPDFStringCopyTextString(v8);
          if (v7)
          {
LABEL_15:
            v9 = v7;
            v10 = sub_18A4A7288();

            return v10;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1891804F8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____UIViewMarkerLayer_labelAlignment);
  v3 = OBJC_IVAR____UIViewMarkerLayer_labels;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {
    v5 = sub_188B85570(v2);
    if (v6)
    {
      v7 = (*(v4 + 56) + 32 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v12 = v9;
      v13 = v10;
      v14 = v11;
      v15 = v12;
      sub_189182620(v8, v9, v10, v11);

      v16 = sub_18A4A7258();

      [v15 setString_];
    }
  }
}

id sub_1891806E8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____UIViewMarkerLayer_labelAlignment];
  v3 = OBJC_IVAR____UIViewMarkerLayer_labels;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (*(v4 + 16))
  {
    v5 = sub_188B85570(v2);
    if (v6)
    {
      v7 = (*(v4 + 56) + 32 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v12 = v9;
      v13 = v10;
      v14 = v11;
      v15 = v13;
      sub_189182620(v8, v9, v10, v11);
      if (*&v1[OBJC_IVAR____UIViewMarkerLayer_subLabel + 8])
      {

        v16 = sub_18A4A7258();
      }

      else
      {
        v16 = 0;
      }

      [v15 setString_];

      swift_unknownObjectRelease();
    }
  }

  return [v1 layoutSublayers];
}

void sub_189180894()
{
  v1 = OBJC_IVAR____UIViewMarkerLayer_labels;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v28 = OBJC_IVAR____UIViewMarkerLayer_alternateColor;
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = &selRef_setArtworkView_;
  while (v6)
  {
LABEL_12:
    v17 = (*(v2 + 56) + ((v8 << 11) | (32 * __clz(__rbit64(v6)))));
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v21 = *&v0[v28];
    v29 = v19;
    v30 = v18;
    if (!v21)
    {
      v10 = v18;
      v11 = v19;
      v12 = v20;
LABEL_5:
      v13 = v2;
      v14 = [objc_opt_self() systemDarkBlueColor];
      v15 = [v14 CGColor];

      v2 = v13;
      v9 = &selRef_setArtworkView_;
      goto LABEL_6;
    }

    v22 = v18;
    v23 = v19;
    v24 = v20;
    v15 = [v21 CGColor];
    if (!v15)
    {
      goto LABEL_5;
    }

LABEL_6:
    v6 &= v6 - 1;
    [v20 v9[250]];
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v16 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v16);
    ++v8;
    if (v6)
    {
      v8 = v16;
      goto LABEL_12;
    }
  }

  v25 = *&v0[v28];
  if (!v25 || (v26 = [v25 CGColor]) == 0)
  {
    v27 = [objc_opt_self() systemDarkBlueColor];
    v26 = [v27 CGColor];
  }

  [v0 setBorderColor_];
}

void sub_189180B50(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____UIViewMarkerLayer_labelAlignment;
  v5 = *&v1[OBJC_IVAR____UIViewMarkerLayer_labelAlignment];
  v6 = OBJC_IVAR____UIViewMarkerLayer_labels;
  swift_beginAccess();
  v7 = sub_1891EA19C(v5);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_endAccess();
  if (v9)
  {
    swift_beginAccess();
    v29 = v9;
    v30 = v4;
    v14 = v11;
    v15 = v13;
    sub_188F29690(v7, v9, v11, v13, a1);
    swift_endAccess();
    [v1 setNeedsLayout];

    v4 = v30;
  }

  *&v1[v4] = a1;
  v16 = *&v1[v6];
  if (*(v16 + 16))
  {
    v17 = sub_188B85570(a1);
    if (v18)
    {
      v19 = (*(v16 + 56) + 32 * v17);
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = v21;
      v25 = v22;
      v26 = v23;
      sub_189182620(v20, v21, v22, v23);
      v27 = *&v2[v4];
      if (v27 > 8)
      {
        v28 = 9;
      }

      else
      {
        v28 = qword_18A66CD90[v27];
      }

      [v26 setMaskedCorners_];
    }
  }
}

uint64_t sub_189180CE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EF30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A66CD00;
  *(inited + 32) = 0x6F50726F68636E61;
  *(inited + 40) = 0xEB00000000746E69;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 56) = 0x73646E756F62;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 80) = 0x73746E65746E6F63;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 104) = 0x7974696361706FLL;
  *(inited + 112) = 0xE700000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 128) = 0x6E6F697469736F70;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 152) = 0x6F43776F64616873;
  *(inited + 160) = 0xEB00000000726F6CLL;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x800000018A68A120;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 200) = 0x726579616C627573;
  *(inited + 208) = 0xE900000000000073;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 224) = 0x726F66736E617274;
  *(inited + 232) = 0xE90000000000006DLL;
  *(inited + 240) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 248) = 0x6F697469736F507ALL;
  *(inited + 256) = 0xE90000000000006ELL;
  *(inited + 264) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(inited + 272) = 0x6E6564646968;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v1 = sub_188E8FCBC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EF38);
  result = swift_arrayDestroy();
  qword_1EA93EED8 = v1;
  return result;
}

char *sub_189180F8C()
{
  v1 = &v0[OBJC_IVAR____UIViewMarkerLayer_label];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR____UIViewMarkerLayer_subLabel];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____UIViewMarkerLayer_alternateColor] = 0;
  *&v0[OBJC_IVAR____UIViewMarkerLayer_labelAlignment] = 2;
  *&v0[OBJC_IVAR____UIViewMarkerLayer_fontSize] = 0x4020000000000000;
  *&v0[OBJC_IVAR____UIViewMarkerLayer_radius] = 0x4010000000000000;
  *&v0[OBJC_IVAR____UIViewMarkerLayer_width] = 0x3FF0000000000000;
  v3 = OBJC_IVAR____UIViewMarkerLayer_labels;
  *&v0[v3] = sub_188E8FCD0(MEMORY[0x1E69E7CC0]);
  v44.receiver = v0;
  v44.super_class = type metadata accessor for _UIViewMarkerLayer();
  v4 = objc_msgSendSuper2(&v44, sel_init);
  v5 = objc_allocWithZone(MEMORY[0x1E6979398]);
  v6 = v4;
  v7 = [v5 init];
  v42 = OBJC_IVAR____UIViewMarkerLayer_alternateColor;
  v8 = *&v6[OBJC_IVAR____UIViewMarkerLayer_alternateColor];
  if (!v8 || (v9 = [v8 CGColor]) == 0)
  {
    v10 = [objc_opt_self() systemDarkBlueColor];
    v9 = [v10 CGColor];
  }

  [v7 setBackgroundColor_];

  v40 = OBJC_IVAR____UIViewMarkerLayer_labelAlignment;
  v11 = *&v6[OBJC_IVAR____UIViewMarkerLayer_labelAlignment];
  if (v11 > 8)
  {
    v12 = 9;
  }

  else
  {
    v12 = qword_18A66CD90[v11];
  }

  [v7 setMaskedCorners_];
  [v7 setCornerRadius_];
  if (qword_1EA931F88 != -1)
  {
    swift_once();
  }

  v13 = qword_1EA93EED8;
  sub_18918161C(qword_1EA93EED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EF20);
  v14 = sub_18A4A7088();

  [v7 setActions_];

  v15 = v6;
  [v15 addSublayer_];
  v39 = v6;
  v16 = [objc_allocWithZone(MEMORY[0x1E6979508]) init];
  [v16 setFontSize_];
  v17 = objc_opt_self();
  v18 = [v17 whiteColor];
  v19 = [v18 CGColor];

  [v16 setForegroundColor_];
  v20 = *MEMORY[0x1E6979560];
  [v16 setAlignmentMode_];
  v21 = v16;
  [v21 setContentsScale_];
  [v21 setAllowsEdgeAntialiasing_];
  sub_18918161C(v13);
  v22 = sub_18A4A7088();

  [v21 setActions_];

  [v15 addSublayer_];
  v23 = [objc_allocWithZone(MEMORY[0x1E6979508]) init];
  [v23 setFontSize_];
  v24 = [v17 whiteColor];
  v25 = [v24 CGColor];

  [v23 setForegroundColor_];
  [v23 setAlignmentMode_];
  v26 = v23;
  [v26 setContentsScale_];
  [v26 setAllowsEdgeAntialiasing_];
  v41 = v13;
  sub_18918161C(v13);
  v27 = sub_18A4A7088();

  [v26 setActions_];

  [v15 addSublayer_];
  v28 = *&v39[v40];
  v29 = OBJC_IVAR____UIViewMarkerLayer_labels;
  swift_beginAccess();
  v30 = v21;
  v31 = v26;
  v32 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *&v15[v29];
  *&v15[v29] = 0x8000000000000000;
  sub_188EA1864(2, v30, v31, v32, v28, isUniquelyReferenced_nonNull_native);
  *&v15[v29] = v43;
  swift_endAccess();
  v34 = *&v39[v42];
  if (!v34 || (v35 = [v34 CGColor]) == 0)
  {
    v36 = [v17 systemDarkBlueColor];
    v35 = [v36 CGColor];
  }

  [v15 setBorderColor_];

  [v15 setBorderWidth_];
  [v15 setCornerRadius_];

  [v15 setMasksToBounds_];
  sub_18918161C(v41);
  v37 = sub_18A4A7088();

  [v15 setActions_];

  return v15;
}

unint64_t sub_18918161C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EF28);
    v2 = sub_18A4A8488();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);

        v18 = v17;
        result = sub_188B0944C(v16, v15);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * result) = v18;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1891818BC()
{
  v1 = OBJC_IVAR____UIViewMarkerLayer_labels;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = v0;
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(v2 + 56) + ((v9 << 11) | (32 * v10));
    v12 = *v11;
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v11 + 8);
    v16 = v13;
    v17 = v14;
    sub_189181A14(v12, v15, v16, v17);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_189181A14(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_189182758(a2, a3);
  v9 = v8;
  v10 = sub_189182AF4();
  [a4 setBounds_];
  [a2 setBounds_];
  [a3 setBounds_];
  v11 = *&v4[OBJC_IVAR____UIViewMarkerLayer_labelAlignment];
  if (v11 <= 3)
  {
    if (v11 <= 1)
    {
      if (v11 == 1)
      {
        [v4 bounds];
        Center = UIRectGetCenter(v14, v15, v16);
        v13 = 8.0;
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    if (v11 == 2)
    {
      Center = v9 * 0.5;
      v13 = 8.0;
      goto LABEL_22;
    }

    v17 = v9 * 0.5;
    [v4 bounds];
    goto LABEL_21;
  }

  if (v11 <= 5)
  {
    if (v11 == 4)
    {
      v24 = v9 * 0.5;
    }

    else
    {
      [v4 bounds];
      v24 = UIRectGetCenter(v21, v22, v23);
    }

    [v4 bounds];
    goto LABEL_19;
  }

  if (v11 == 6)
  {
    [v4 bounds];
    v24 = CGRectGetWidth(v40) + v9 * -0.5;
    [v4 bounds];
LABEL_19:
    Height = CGRectGetHeight(*&v25);
    Center = v24;
    v13 = Height + -8.0;
    goto LABEL_22;
  }

  if (v11 != 7)
  {
    if (v11 == 8)
    {
      [v4 bounds];
      Center = CGRectGetWidth(v39) + v9 * -0.5;
      v13 = 8.0;
      goto LABEL_22;
    }

LABEL_15:
    [v4 bounds];
    Center = UIRectGetCenter(v29, v30, v31);
    goto LABEL_22;
  }

  [v4 bounds];
  v17 = CGRectGetWidth(v41) + v9 * -0.5;
  [v4 bounds];
LABEL_21:
  UIRectGetCenter(v18, v19, v20);
  Center = v17;
LABEL_22:
  [a4 setPosition_];
  [a4 position];
  [a2 setPosition_];
  [a2 position];
  v34 = v33 + 0.0;
  v36 = v10 * 0.5 + 6.0 + v35;

  return [a3 setPosition_];
}

void sub_189181D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____UIViewMarkerLayer_labels;
  swift_beginAccess();
  v11 = *&v5[v10];
  if (*(v11 + 16) && (v12 = sub_188B85570(a5), (v13 & 1) != 0))
  {
    v14 = *(v11 + 56) + 32 * v12;
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = *(v14 + 8);
    v18 = v15;
    v19 = v16;
    v20 = sub_18A4A7258();
    [v17 setString_];

    if (a4)
    {
      v21 = sub_18A4A7258();
    }

    else
    {
      v21 = 0;
    }

    [v18 setString_];
    swift_unknownObjectRelease();
    [v6 setNeedsLayout];
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    v23 = *&v6[OBJC_IVAR____UIViewMarkerLayer_alternateColor];
    if (!v23 || (v24 = [v23 CGColor]) == 0)
    {
      v25 = [objc_opt_self() systemDarkBlueColor];
      v24 = [v25 CGColor];
    }

    [v22 setBackgroundColor_];

    if (a5 > 8)
    {
      v26 = 9;
    }

    else
    {
      v26 = qword_18A66CD90[a5];
    }

    v48 = a4;
    v49 = a5;
    [v22 setMaskedCorners_];
    [v22 setCornerRadius_];
    if (qword_1EA931F88 != -1)
    {
      swift_once();
    }

    v27 = qword_1EA93EED8;
    sub_18918161C(qword_1EA93EED8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EF20);
    v28 = sub_18A4A7088();

    [v22 setActions_];

    [v6 addSublayer_];
    v29 = [objc_allocWithZone(MEMORY[0x1E6979508]) init];
    [v29 setFontSize_];
    v30 = objc_opt_self();
    v31 = [v30 whiteColor];
    v32 = [v31 CGColor];

    [v29 setForegroundColor_];
    v33 = *MEMORY[0x1E6979560];
    [v29 setAlignmentMode_];
    v34 = v29;
    [v34 setContentsScale_];
    [v34 setAllowsEdgeAntialiasing_];
    sub_18918161C(v27);
    v35 = sub_18A4A7088();

    [v34 setActions_];

    v36 = sub_18A4A7258();
    [v34 setString_];

    [v6 addSublayer_];
    v37 = [objc_allocWithZone(MEMORY[0x1E6979508]) init];
    [v37 setFontSize_];
    v38 = [v30 whiteColor];
    v39 = [v38 CGColor];

    [v37 setForegroundColor_];
    [v37 setAlignmentMode_];
    v40 = v37;
    [v40 setContentsScale_];
    [v40 setAllowsEdgeAntialiasing_];
    sub_18918161C(v27);
    v41 = sub_18A4A7088();

    [v40 setActions_];

    if (v48)
    {
      v42 = sub_18A4A7258();
    }

    else
    {
      v42 = 0;
    }

    [v40 setString_];
    swift_unknownObjectRelease();
    [v6 addSublayer_];
    v43 = objc_allocWithZone(MEMORY[0x1E6979508]);
    v44 = v34;
    v45 = [v43 init];
    swift_beginAccess();
    v18 = v44;
    v46 = v22;
    v19 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *&v6[v10];
    *&v6[v10] = 0x8000000000000000;
    sub_188EA1864(v49, v18, v19, v46, v49, isUniquelyReferenced_nonNull_native);
    *&v6[v10] = v50;
    swift_endAccess();
    [v6 setNeedsLayout];

    v17 = v18;
  }
}

void sub_1891823F0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____UIViewMarkerLayer_labels;
  swift_beginAccess();
  v5 = sub_188B85570(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + v4);
    v15 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA7F80();
      v9 = v15;
    }

    v10 = v7;
    v11 = (*(v9 + 56) + 32 * v7);
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[3];
    sub_188F9F7D8(v10, v9);
    *(v2 + v4) = v9;
    swift_endAccess();
    [v12 removeFromSuperlayer];
    [v13 removeFromSuperlayer];
    [v14 removeFromSuperlayer];
  }

  else
  {
    swift_endAccess();
  }
}

id sub_189182544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIViewMarkerLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_189182620(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2)
  {
  }
}

void sub_189182670()
{
  v1 = (v0 + OBJC_IVAR____UIViewMarkerLayer_label);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____UIViewMarkerLayer_subLabel);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____UIViewMarkerLayer_alternateColor) = 0;
  *(v0 + OBJC_IVAR____UIViewMarkerLayer_labelAlignment) = 2;
  *(v0 + OBJC_IVAR____UIViewMarkerLayer_fontSize) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____UIViewMarkerLayer_radius) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____UIViewMarkerLayer_width) = 0x3FF0000000000000;
  v3 = OBJC_IVAR____UIViewMarkerLayer_labels;
  *(v0 + v3) = sub_188E8FCD0(MEMORY[0x1E69E7CC0]);
  sub_18A4A8398();
  __break(1u);
}

void sub_189182758(void *a1, void *a2)
{
  if ([a1 string])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    sub_188A34624(0, &qword_1ED48F7A0);
    if (swift_dynamicCast())
    {
      v3 = [objc_opt_self() systemFontOfSize:8.0 weight:*off_1E70ECD30];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9363F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18A64BFB0;
      v5 = *off_1E70EC918;
      *(inited + 32) = *off_1E70EC918;
      v6 = sub_188A34624(0, &qword_1ED48C4A0);
      *(inited + 64) = v6;
      *(inited + 40) = v3;
      v12 = v5;
      v13 = v3;
      sub_188AEC99C(inited);
      swift_setDeallocating();
      sub_188A3F5FC(inited + 32, &qword_1EA93C6D0);
      type metadata accessor for Key(0);
      sub_188C5E0DC();
      v7 = sub_18A4A7088();

      [v14 sizeWithAttributes_];

      if ([a2 string])
      {
        sub_18A4A7DE8();
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0u;
        v16 = 0u;
      }

      v17 = v15;
      v18 = v16;
      if (*(&v16 + 1))
      {
        if (swift_dynamicCast())
        {
          v8 = swift_initStackObject();
          *(v8 + 16) = xmmword_18A64BFB0;
          *(v8 + 32) = v12;
          *(v8 + 64) = v6;
          *(v8 + 40) = v13;
          v9 = v12;
          v10 = v13;
          sub_188AEC99C(v8);
          swift_setDeallocating();
          sub_188A3F5FC(v8 + 32, &qword_1EA93C6D0);
          v11 = sub_18A4A7088();

          [v14 &selRef:v11 showDictionaryFor:? fromRect:? + 3];
        }

        else
        {
        }
      }

      else
      {

        sub_188A3F5FC(&v17, &qword_1EA934050);
      }
    }
  }

  else
  {
    sub_188A3F5FC(&v17, &qword_1EA934050);
  }
}

double sub_189182AF4()
{
  v1 = [objc_opt_self() systemFontOfSize:8.0 weight:*off_1E70ECD30];
  v2 = v1;
  if (*(v0 + OBJC_IVAR____UIViewMarkerLayer_subLabel + 8))
  {

    v3 = sub_18A4A7258();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9363F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFB0;
    v5 = *off_1E70EC918;
    *(inited + 32) = *off_1E70EC918;
    *(inited + 64) = sub_188A34624(0, &qword_1ED48C4A0);
    *(inited + 40) = v2;
    v6 = v5;
    v7 = v2;
    sub_188AEC99C(inited);
    swift_setDeallocating();
    sub_188A3F5FC(inited + 32, &qword_1EA93C6D0);
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v8 = sub_18A4A7088();

    [v3 sizeWithAttributes_];
    v10 = v9;
  }

  else
  {

    return 0.0;
  }

  return v10;
}

id sub_189182CA0(void *a1)
{
  v3 = OBJC_IVAR____TtC5UIKit18_UIReparentingView_portal;
  *&v1[v3] = [objc_allocWithZone(_UIPortalView) init];
  v4 = &v1[OBJC_IVAR____TtC5UIKit18_UIReparentingView_OpacityPairInputAmount];
  *v4 = 0xD00000000000001FLL;
  *(v4 + 1) = 0x800000018A6891C0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for _UIReparentingView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_189182D7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIReparentingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_189182E00(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____UINavigationBarPlatterView_platter;
  swift_beginAccess();
  sub_188C45F1C(v1 + v3, v28);
  sub_188C46270(v28, v26);
  if (v29)
  {

    sub_18A4A8048();
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
  }

  sub_188BBA230(v30, a1 + 80);
  v4 = v30[64];
  v5 = v31;
  v6 = v32;
  v7 = v31;
  sub_188C460F0(v28);
  v8 = v26[1];
  *a1 = v26[0];
  *(a1 + 16) = v8;
  *(a1 + 40) = v23;
  *(a1 + 32) = v27;
  *(a1 + 56) = v24;
  *(a1 + 72) = v25;
  *(a1 + 152) = v4;
  *(a1 + 160) = v5;
  *(a1 + 168) = v6;
  v9 = [v1 layer];
  v10 = [v9 presentationLayer];

  if (v10)
  {
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    [v1 frame];
    v12 = v19;
    v14 = v20;
    v16 = v21;
    v18 = v22;
  }

  *(a1 + 120) = v12;
  *(a1 + 128) = v14;
  *(a1 + 136) = v16;
  *(a1 + 144) = v18;
}

void sub_189182F94(int a1, double a2, double a3)
{
  v4 = v3;
  v297 = a1;
  ObjectType = swift_getObjectType();
  v299 = sub_18A4A4BE8();
  v295 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299);
  v298 = &v271 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v300 = &v271 - v9;
  v315 = sub_18A4A5FA8();
  v311 = *(v315 - 1);
  MEMORY[0x1EEE9AC00](v315);
  v296 = &v271 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v294 = &v271 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v293 = &v271 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v306 = &v271 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v288 = &v271 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v287 = &v271 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v303 = &v271 - v22;
  v304 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v305 = &v271 - v25;
  v26 = sub_18A4A4B78();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v271 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v271 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v280 = &v271 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v292 = &v271 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v291 = &v271 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v286 = &v271 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v285 = &v271 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v271 - v44;
  v46 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v271 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v278 = &v271 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v279 = &v271 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v290 = &v271 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v289 = &v271 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v284 = &v271 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v283 = &v271 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v271 - v62;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    return;
  }

  v271 = v32;
  v272 = v48;
  v273 = v29;
  v313 = *&v4[OBJC_IVAR____UINavigationBarPlatterView_scalePulseScheduler];
  sub_188E56D00();
  v64 = v4[OBJC_IVAR____UINavigationBarPlatterView_mode];
  v4[OBJC_IVAR____UINavigationBarPlatterView_mode] = v64 ^ 1;
  v65 = OBJC_IVAR____UINavigationBarPlatterView_transformViewA;
  v66 = v64 == 0;
  if (v64)
  {
    v67 = OBJC_IVAR____UINavigationBarPlatterView_transformViewA;
  }

  else
  {
    v67 = OBJC_IVAR____UINavigationBarPlatterView_transformViewB;
  }

  v68 = *&v4[v67];
  if (!v66)
  {
    v65 = OBJC_IVAR____UINavigationBarPlatterView_transformViewB;
  }

  v301 = v4;
  v69 = *&v4[v65];
  v302 = v68;
  v275 = v69;
  sub_188E5A020();
  v70 = *(v46 + 24);
  v309 = v46;
  v71 = v27;
  v72 = *(v27 + 16);
  v312 = v27 + 16;
  v72(v45, &v63[v70], v26);
  v73 = v72;
  v282 = type metadata accessor for NavigationBarPlatterContainer.Settings;
  sub_189195250(v63, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4A98();
  v75 = sqrt(v74);
  sub_18A4A4A98();
  v76 = *(v71 + 8);
  v78 = sqrt(v77);
  v76(v45, v26);
  sub_188E5A020();
  v79 = &v63[*(v46 + 24)];
  v308 = v72;
  v72(v45, v79, v26);
  sub_189195250(v63, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4A98();
  v81 = sqrt(v80);
  sub_18A4A4A98();
  v83 = sqrt(v82);
  v307 = v76;
  v76(v45, v26);
  sub_188E5A020();
  v84 = v309;
  v73(v45, &v63[*(v309 + 24)], v26);
  sub_189195250(v63, v282);
  v85 = v305;
  sub_18A4A4AB8();
  v76(v45, v26);
  ++*(v313 + 16);
  sub_18918D1A0(v302, 1, v75);
  v86 = (v311 + 1);
  v314 = v311[1];
  v87 = v315;
  v314(v85, v315);
  sub_188E5A020();
  v308(v45, &v63[*(v84 + 24)], v26);
  v277 = v63;
  v88 = v63;
  v89 = v282;
  sub_189195250(v88, v282);
  sub_18A4A4AB8();
  v274 = v45;
  v307(v45, v26);
  ++*(v313 + 16);
  v90 = v302;
  sub_18918D1A0(v302, 2, v78);

  v310 = v86;
  v314(v85, v87);
  v91 = v283;
  sub_188E5A020();
  v93 = v308;
  v92 = v309;
  v94 = v285;
  v308(v285, (v91 + *(v309 + 24)), v26);
  sub_189195250(v91, v89);
  sub_18A4A4B18();
  v95 = v307;
  v307(v94, v26);
  v96 = v284;
  sub_188E5A020();
  v97 = v286;
  v93(v286, v96 + *(v92 + 24), v26);
  v98 = v89;
  v99 = v315;
  sub_189195250(v96, v98);
  sub_18A4A4AD8();
  v101 = v100;
  v285 = (v71 + 8);
  v286 = v26;
  v95(v97, v26);
  v102 = v313;
  v103 = v311;
  v104 = (v311 + 2);
  v105 = v311[2];
  v106 = v287;
  v107 = v303;
  (v105)(v287, v303, v99);
  v108 = v288;
  v284 = v104;
  v282 = v105;
  (v105)(v288, v106, v99);
  v109 = v103;
  v110 = (*(v103 + 80) + 40) & ~*(v103 + 80);
  v276 = *(v103 + 80);
  v111 = swift_allocObject();
  v112 = v275;
  *(v111 + 16) = v275;
  *(v111 + 24) = 1;
  *(v111 + 32) = 1.0 / v81;
  v113 = v109[4];
  v283 = v110;
  v287 = v113;
  (v113)(v111 + v110, v106, v99);
  v114 = *(v102 + 16);
  *(v102 + 16) = v114 + 1;
  v115 = v112;
  v311 = v109 + 4;
  v275 = v115;
  if (v101 == 0.0)
  {
    sub_18918D1A0(v115, 1, 1.0 / v81);

    v314(v108, v315);
  }

  else
  {
    v314(v108, v315);
    v116 = sub_18A4A76C8();
    v117 = v300;
    (*(*(v116 - 8) + 56))(v300, 1, 1, v116);
    v118 = swift_allocObject();
    swift_weakInit();
    sub_18A4A76A8();

    v119 = sub_18A4A7698();
    v120 = swift_allocObject();
    v121 = MEMORY[0x1E69E85E0];
    *(v120 + 16) = v119;
    *(v120 + 24) = v121;
    *(v120 + 32) = v118;
    *(v120 + 40) = v101;
    *(v120 + 48) = v114;
    *(v120 + 56) = sub_189194E30;
    *(v120 + 64) = v111;

    v122 = v117;
    v123 = v313;
    v124 = sub_188E59CB0(0, 0, v122, &unk_18A66CFB8, v120);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v338[0] = *(v123 + 24);
    *(v123 + 24) = 0x8000000000000000;
    sub_188E9DE78(v124, v114, isUniquelyReferenced_nonNull_native);
    *(v123 + 24) = v338[0];
    swift_endAccess();
  }

  v314(v107, v315);
  v126 = v289;
  sub_188E5A020();
  v128 = v308;
  v127 = v309;
  v129 = v291;
  v130 = v286;
  v308(v291, (v126 + *(v309 + 24)), v286);
  sub_189195250(v126, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4B48();
  v131 = v307;
  v307(v129, v130);
  v132 = v290;
  sub_188E5A020();
  v133 = v292;
  v128(v292, v132 + *(v127 + 24), v130);
  v134 = v315;
  sub_189195250(v132, type metadata accessor for NavigationBarPlatterContainer.Settings);
  sub_18A4A4AF8();
  v136 = v135;
  v131(v133, v130);
  v137 = v293;
  v138 = v282;
  (v282)(v293, v306, v134);
  v139 = v294;
  (v138)(v294, v137, v134);
  v140 = v283;
  v141 = swift_allocObject();
  v142 = v275;
  *(v141 + 16) = v275;
  *(v141 + 24) = 2;
  *(v141 + 32) = 1.0 / v83;
  (v287)(&v140[v141], v137, v134);
  v143 = v313;
  v144 = *(v313 + 16);
  *(v313 + 16) = v144 + 1;
  v145 = v142;
  v146 = v145;
  if (v136 == 0.0)
  {
    sub_18918D1A0(v145, 2, 1.0 / v83);

    v314(v139, v134);
  }

  else
  {
    v314(v139, v134);
    v147 = sub_18A4A76C8();
    v148 = v300;
    (*(*(v147 - 8) + 56))(v300, 1, 1, v147);
    v149 = swift_allocObject();
    swift_weakInit();
    sub_18A4A76A8();

    v150 = sub_18A4A7698();
    v151 = swift_allocObject();
    v152 = MEMORY[0x1E69E85E0];
    *(v151 + 16) = v150;
    *(v151 + 24) = v152;
    *(v151 + 32) = v149;
    *(v151 + 40) = v136;
    *(v151 + 48) = v144;
    *(v151 + 56) = sub_1891953AC;
    *(v151 + 64) = v141;

    v153 = sub_188E59CB0(0, 0, v148, &unk_18A66CFC0, v151);
    swift_beginAccess();

    v154 = swift_isUniquelyReferenced_nonNull_native();
    v338[0] = *(v143 + 24);
    *(v143 + 24) = 0x8000000000000000;
    sub_188E9DE78(v153, v144, v154);
    *(v143 + 24) = v338[0];
    swift_endAccess();
  }

  v155 = v301;
  v156 = v277;
  v157 = v305;
  v311 = v146;
  v314(v306, v134);
  v158 = (v295 + 16);
  v159 = (v295 + 8);
  if (v297)
  {
    sub_188E5A020();
    v161 = v298;
    v160 = v299;
    (*v158)(v298, v156, v299);
    sub_189195250(v156, type metadata accessor for NavigationBarPlatterContainer.Settings);
    v162 = v296;
    v163 = sub_18A4A4B98();
    MEMORY[0x18CFE0ED0](v163);
    v164 = v162;
    v165 = v314;
    v314(v164, v134);
    sub_18A4A5F78();
    (*v159)(v161, v160);
    v166 = sub_188C449C0(v157, v339);
    v165(v157, v134, v166);
    v167 = swift_allocObject();
    *(v167 + 16) = v155;
    sub_188C3DF9C(v339, v338);
    sub_188C3DF9C(v339, &v333);
    v168 = swift_allocObject();
    v169 = v336;
    *(v168 + 48) = v335;
    *(v168 + 64) = v169;
    *(v168 + 80) = v337[0];
    *(v168 + 89) = *(v337 + 9);
    v170 = v334;
    *(v168 + 16) = v333;
    *(v168 + 32) = v170;
    *(v168 + 112) = signpost_c2_entryLock_start;
    *(v168 + 120) = 0;
    v171 = swift_allocObject();
    *(v171 + 16) = 0;
    v172 = swift_allocObject();
    v172[3] = 0;
    v172[4] = 0;
    v172[2] = v171;
    v315 = objc_opt_self();
    v173 = swift_allocObject();
    *(v173 + 16) = sub_189194F70;
    *(v173 + 24) = v167;
    *&v330 = sub_188E3FE50;
    *(&v330 + 1) = v173;
    *&v328 = MEMORY[0x1E69E9820];
    *(&v328 + 1) = 1107296256;
    *&v329 = sub_188A4A968;
    *(&v329 + 1) = &block_descriptor_465;
    v174 = _Block_copy(&v328);
    v175 = v155;
    v176 = v174;
    v314 = v175;

    sub_188C3DFF8(v338, &v328);
    v177 = swift_allocObject();
    v178 = v331;
    *(v177 + 56) = v330;
    *(v177 + 72) = v178;
    *(v177 + 88) = v332[0];
    *(v177 + 97) = *(v332 + 9);
    v179 = v329;
    *(v177 + 24) = v328;
    *(v177 + 16) = v171;
    *(v177 + 40) = v179;
    *(v177 + 113) = 0;
    *(v177 + 120) = sub_188E5C7FC;
    *(v177 + 128) = v168;
    v326 = sub_1891953A4;
    v327 = v177;
    v322 = MEMORY[0x1E69E9820];
    v323 = 1107296256;
    v324 = sub_188A4A8F0;
    v325 = &block_descriptor_472;
    v180 = _Block_copy(&v322);

    *&v330 = sub_188E5C82C;
    *(&v330 + 1) = v172;
    *&v328 = MEMORY[0x1E69E9820];
    *(&v328 + 1) = 1107296256;
    *&v329 = sub_188ABD010;
    *(&v329 + 1) = &block_descriptor_475;
    v181 = _Block_copy(&v328);

    [v315 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
    _Block_release(v181);
    _Block_release(v180);
    _Block_release(v176);

    sub_188C3E234(v338);

    LOBYTE(v181) = swift_isEscapingClosureAtFileLocation();

    if ((v181 & 1) == 0)
    {
      sub_188AAFF20(v339);
      v182 = v279;
      sub_188E5A020();
      v183 = v280;
      v184 = v286;
      v308(v280, (v182 + *(v309 + 24)), v286);
      sub_189195250(v182, type metadata accessor for NavigationBarPlatterContainer.Settings);
      sub_18A4A4AD8();
      v186 = v185;
      v307(v183, v184);
      v187 = swift_allocObject();
      v189 = v313;
      v188 = v314;
      *(v187 + 16) = v314;
      v190 = *(v189 + 16);
      *(v189 + 16) = v190 + 1;
      if (v186 == 0.0)
      {
        sub_18918B584(v188);
      }

      else
      {
        v213 = sub_18A4A76C8();
        v214 = v300;
        (*(*(v213 - 8) + 56))(v300, 1, 1, v213);
        v215 = swift_allocObject();
        swift_weakInit();
        sub_18A4A76A8();
        v216 = v188;

        v217 = sub_18A4A7698();
        v218 = swift_allocObject();
        v219 = MEMORY[0x1E69E85E0];
        *(v218 + 16) = v217;
        *(v218 + 24) = v219;
        *(v218 + 32) = v215;
        *(v218 + 40) = v186;
        *(v218 + 48) = v190;
        *(v218 + 56) = sub_189194F78;
        *(v218 + 64) = v187;

        v220 = sub_188E59CB0(0, 0, v214, &unk_18A66CFD8, v218);
        swift_beginAccess();

        v221 = swift_isUniquelyReferenced_nonNull_native();
        v338[0] = *(v189 + 24);
        *(v189 + 24) = 0x8000000000000000;
        sub_188E9DE78(v220, v190, v221);
        *(v189 + 24) = v338[0];
        swift_endAccess();
      }

      v212 = v301;
      goto LABEL_21;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  sub_188E5A020();
  v192 = v298;
  v191 = v299;
  (*v158)(v298, v156, v299);
  sub_189195250(v156, type metadata accessor for NavigationBarPlatterContainer.Settings);
  v193 = v296;
  v194 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v194);
  v195 = v193;
  v196 = v314;
  v314(v195, v134);
  sub_18A4A5F78();
  (*v159)(v192, v191);
  v197 = sub_188C449C0(v157, v339);
  v196(v157, v134, v197);
  v198 = swift_allocObject();
  *(v198 + 16) = v155;
  sub_188C3DF9C(v339, v338);
  sub_188C3DF9C(v339, &v333);
  v199 = swift_allocObject();
  v200 = v336;
  *(v199 + 48) = v335;
  *(v199 + 64) = v200;
  *(v199 + 80) = v337[0];
  *(v199 + 89) = *(v337 + 9);
  v201 = v334;
  *(v199 + 16) = v333;
  *(v199 + 32) = v201;
  *(v199 + 112) = signpost_c2_entryLock_start;
  *(v199 + 120) = 0;
  v202 = swift_allocObject();
  *(v202 + 16) = 0;
  v203 = swift_allocObject();
  v203[3] = 0;
  v203[4] = 0;
  v203[2] = v202;
  v315 = objc_opt_self();
  v204 = swift_allocObject();
  *(v204 + 16) = sub_1891953A0;
  *(v204 + 24) = v198;
  *&v330 = sub_188E3FE50;
  *(&v330 + 1) = v204;
  *&v328 = MEMORY[0x1E69E9820];
  *(&v328 + 1) = 1107296256;
  *&v329 = sub_188A4A968;
  *(&v329 + 1) = &block_descriptor_418;
  v205 = _Block_copy(&v328);
  v206 = v155;

  sub_188C3DFF8(v338, &v328);
  v207 = swift_allocObject();
  v208 = v331;
  *(v207 + 56) = v330;
  *(v207 + 72) = v208;
  *(v207 + 88) = v332[0];
  *(v207 + 97) = *(v332 + 9);
  v209 = v329;
  *(v207 + 24) = v328;
  *(v207 + 16) = v202;
  *(v207 + 40) = v209;
  *(v207 + 113) = 0;
  *(v207 + 120) = sub_188E5C7FC;
  *(v207 + 128) = v199;
  v326 = sub_1891953A4;
  v327 = v207;
  v322 = MEMORY[0x1E69E9820];
  v323 = 1107296256;
  v324 = sub_188A4A8F0;
  v325 = &block_descriptor_425;
  v210 = _Block_copy(&v322);

  *&v330 = sub_188E5C82C;
  *(&v330 + 1) = v203;
  *&v328 = MEMORY[0x1E69E9820];
  *(&v328 + 1) = 1107296256;
  *&v329 = sub_188ABD010;
  *(&v329 + 1) = &block_descriptor_428_0;
  v211 = _Block_copy(&v328);

  [v315 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v211);
  _Block_release(v210);
  _Block_release(v205);

  sub_188C3E234(v338);

  LOBYTE(v199) = swift_isEscapingClosureAtFileLocation();

  if (v199)
  {
    goto LABEL_33;
  }

  sub_188AAFF20(v339);
  v212 = v301;
  v184 = v286;
  v189 = v313;
LABEL_21:
  v222 = ObjectType;
  v321.receiver = v212;
  v321.super_class = ObjectType;
  objc_msgSendSuper2(&v321, sel_bounds);
  Width = CGRectGetWidth(v340);
  v224 = v274;
  if (Width > 0.0)
  {
    v320.receiver = v212;
    v320.super_class = v222;
    objc_msgSendSuper2(&v320, sel_bounds);
    if (CGRectGetHeight(v341) > 0.0)
    {
      v225 = v277;
      sub_188E5A020();
      v308(v224, (v225 + *(v309 + 24)), v184);
      v315 = type metadata accessor for NavigationBarPlatterContainer.Settings;
      sub_189195250(v225, type metadata accessor for NavigationBarPlatterContainer.Settings);
      sub_18A4A4A98();
      v227 = v226;
      v307(v224, v184);
      v319.receiver = v301;
      v319.super_class = v222;
      objc_msgSendSuper2(&v319, sel_bounds);
      v228 = v227 * CGRectGetWidth(v342);
      v318.receiver = v301;
      v318.super_class = v222;
      objc_msgSendSuper2(&v318, sel_bounds);
      v229 = v228 - CGRectGetWidth(v343);
      sub_188E5A020();
      v308(v224, (v225 + *(v309 + 24)), v184);
      v230 = v225;
      v231 = v301;
      v232 = v315;
      sub_189195250(v230, v315);
      sub_18A4A4A98();
      v234 = v233;
      v235 = v307;
      v307(v224, v184);
      v317.receiver = v231;
      v317.super_class = v222;
      objc_msgSendSuper2(&v317, sel_bounds);
      v236 = v234 * CGRectGetHeight(v344);
      v316.receiver = v231;
      v316.super_class = v222;
      objc_msgSendSuper2(&v316, sel_bounds);
      Height = CGRectGetHeight(v345);
      ++*(v189 + 16);
      sub_18918BB74(v231, (a2 + -0.5) * -2.0 * v229 * 0.5, (a3 + -0.5) * -2.0 * (v236 - Height) * 0.5);
      v238 = v278;
      sub_188E5A020();
      v239 = v271;
      v308(v271, (v238 + *(v309 + 24)), v184);
      sub_189195250(v238, v232);
      sub_18A4A4AD8();
      v241 = v240;
      v235(v239, v184);
      v242 = swift_allocObject();
      *(v242 + 16) = v231;
      v243 = *(v189 + 16);
      *(v189 + 16) = v243 + 1;
      if (v241 == 0.0)
      {
        sub_18918C388(v231);
      }

      else
      {
        v244 = sub_18A4A76C8();
        v245 = v300;
        (*(*(v244 - 8) + 56))(v300, 1, 1, v244);
        v246 = swift_allocObject();
        swift_weakInit();
        sub_18A4A76A8();
        v247 = v301;

        v248 = sub_18A4A7698();
        v249 = swift_allocObject();
        v250 = MEMORY[0x1E69E85E0];
        *(v249 + 16) = v248;
        *(v249 + 24) = v250;
        *(v249 + 32) = v246;
        *(v249 + 40) = v241;
        *(v249 + 48) = v243;
        *(v249 + 56) = sub_189194F60;
        *(v249 + 64) = v242;

        v251 = v245;
        v189 = v313;
        v252 = sub_188E59CB0(0, 0, v251, &unk_18A66CFC8, v249);
        swift_beginAccess();

        v253 = swift_isUniquelyReferenced_nonNull_native();
        v338[0] = *(v189 + 24);
        *(v189 + 24) = 0x8000000000000000;
        sub_188E9DE78(v252, v243, v253);
        *(v189 + 24) = v338[0];
        swift_endAccess();
        v231 = v301;
      }

      v254 = v272;
      sub_188E5A020();
      v255 = v273;
      v308(v273, (v254 + *(v309 + 24)), v184);
      sub_189195250(v254, type metadata accessor for NavigationBarPlatterContainer.Settings);
      sub_18A4A4AF8();
      v257 = v256;
      v307(v255, v184);
      v258 = swift_allocObject();
      *(v258 + 16) = v231;
      v259 = *(v189 + 16);
      *(v189 + 16) = v259 + 1;
      if (v257 == 0.0)
      {
        sub_18918CA94(v231);
      }

      else
      {
        v260 = sub_18A4A76C8();
        v261 = v189;
        v262 = v300;
        (*(*(v260 - 8) + 56))(v300, 1, 1, v260);
        v263 = v231;
        v264 = swift_allocObject();
        swift_weakInit();
        sub_18A4A76A8();
        v265 = v263;

        v266 = sub_18A4A7698();
        v267 = swift_allocObject();
        v268 = MEMORY[0x1E69E85E0];
        *(v267 + 16) = v266;
        *(v267 + 24) = v268;
        *(v267 + 32) = v264;
        *(v267 + 40) = v257;
        *(v267 + 48) = v259;
        *(v267 + 56) = sub_189194F68;
        *(v267 + 64) = v258;

        v269 = sub_188E59CB0(0, 0, v262, &unk_18A66CFD0, v267);
        swift_beginAccess();

        v270 = swift_isUniquelyReferenced_nonNull_native();
        v338[0] = *(v261 + 24);
        *(v261 + 24) = 0x8000000000000000;
        sub_188E9DE78(v269, v259, v270);
        *(v261 + 24) = v338[0];
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_18918503C(CGFloat a1, CGFloat a2, double a3)
{
  v7 = sub_18A4A5FA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18A4A4C78();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  result = UIAccessibilityIsReduceMotionEnabled();
  if ((result & 1) == 0)
  {
    v40 = v3;
    sub_188E56D00();
    sub_188E5A020();
    v24 = *(v17 + 28);
    v39 = v7;
    v36 = *(v12 + 16);
    v36(v16, &v22[v24], v11);
    v35 = type metadata accessor for NavigationBarPlatterContainer.Settings;
    sub_189195250(v22, type metadata accessor for NavigationBarPlatterContainer.Settings);
    sub_18A4A4C28();
    v34 = *(v12 + 8);
    v34(v16, v11);
    sub_18918AC08(v10, a1, a2, a3);
    v25 = *(v8 + 8);
    v37 = v8 + 8;
    v38 = v25;
    v25(v10, v39);
    sub_188E5A020();
    v26 = v36;
    v36(v16, &v22[*(v17 + 28)], v11);
    v27 = v22;
    v28 = v35;
    sub_189195250(v27, v35);
    sub_18A4A4C48();
    v29 = v16;
    v30 = v34;
    v34(v29, v11);
    sub_188E5A020();
    v31 = v41;
    v26(v41, &v19[*(v17 + 28)], v11);
    sub_189195250(v19, v28);
    sub_18A4A4C08();
    v33 = v32;
    v30(v31, v11);
    sub_18918AC08(v10, 0.0, 0.0, v33 + a3);
    return v38(v10, v39);
  }

  return result;
}

uint64_t sub_1891853C8(uint64_t a1, unint64_t a2, int a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v37 - v15;
  if (MEMORY[0x18CFE2F70](a1, &v5[OBJC_IVAR____UINavigationBarPlatterView_id], v14))
  {
    v37 = v16;
    v39 = a3;
    v17 = OBJC_IVAR____UINavigationBarPlatterView_platter;
    swift_beginAccess();
    sub_188C46448(a1, &v5[v17]);
    swift_endAccess();
    v18 = UIAccessibilityPrefersCrossFadeTransitions();
    if (!v18)
    {
      sub_188E56D00();
    }

    v19 = *&v5[OBJC_IVAR____UINavigationBarPlatterView_layoutChangeScheduler];
    v38 = a1;
    sub_188C45F1C(a1, v42);
    sub_188C45F1C(v42, v41);
    v20 = swift_allocObject();
    v21 = v42[9];
    *(v20 + 152) = v42[8];
    *(v20 + 168) = v21;
    v22 = v42[11];
    *(v20 + 184) = v42[10];
    *(v20 + 200) = v22;
    v23 = v42[5];
    *(v20 + 88) = v42[4];
    *(v20 + 104) = v23;
    v24 = v42[7];
    *(v20 + 120) = v42[6];
    *(v20 + 136) = v24;
    v25 = v42[1];
    *(v20 + 24) = v42[0];
    *(v20 + 40) = v25;
    v26 = v42[3];
    *(v20 + 56) = v42[2];
    *(v20 + 16) = v18;
    *(v20 + 72) = v26;
    *(v20 + 216) = v5;
    *(v20 + 224) = a2;
    v27 = *(v19 + 16);
    *(v19 + 16) = v27 + 1;
    if (a4 == 0.0)
    {

      sub_18918778C(v18, v41, v5, a2);
    }

    else
    {
      v28 = sub_18A4A76C8();
      (*(*(v28 - 8) + 56))(v37, 1, 1, v28);
      v29 = swift_allocObject();
      swift_weakInit();
      sub_18A4A76A8();

      v30 = v5;

      v31 = sub_18A4A7698();
      v32 = swift_allocObject();
      v33 = MEMORY[0x1E69E85E0];
      *(v32 + 16) = v31;
      *(v32 + 24) = v33;
      *(v32 + 32) = v29;
      *(v32 + 40) = a4;
      *(v32 + 48) = v27;
      *(v32 + 56) = sub_1891948D8;
      *(v32 + 64) = v20;

      v34 = sub_188E59CB0(0, 0, v37, &unk_18A66CF78, v32);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *(v19 + 24);
      *(v19 + 24) = 0x8000000000000000;
      sub_188E9DE78(v34, v27, isUniquelyReferenced_nonNull_native);
      *(v19 + 24) = v40;
      swift_endAccess();
    }

    sub_188C460F0(v41);
    sub_188E5A020();
    sub_189187FE4(v38, a2, v39 & 1, v12, a4);
    return sub_189195250(v12, type metadata accessor for NavigationBarPlatterContainer.Settings);
  }

  else
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t sub_18918584C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NavigationBarPlatterContainer.Settings();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (MEMORY[0x18CFE2F70](a1, &v1[OBJC_IVAR____UINavigationBarPlatterView_id], v5))
  {
    v8 = OBJC_IVAR____UINavigationBarPlatterView_platter;
    swift_beginAccess();
    sub_188C46448(a1, v2 + v8);
    swift_endAccess();
    sub_188E56D00();
    v9 = objc_opt_self();
    sub_188C45F1C(a1, v21);
    v10 = swift_allocObject();
    v11 = v21[9];
    *(v10 + 144) = v21[8];
    *(v10 + 160) = v11;
    v12 = v21[11];
    *(v10 + 176) = v21[10];
    *(v10 + 192) = v12;
    v13 = v21[5];
    *(v10 + 80) = v21[4];
    *(v10 + 96) = v13;
    v14 = v21[7];
    *(v10 + 112) = v21[6];
    *(v10 + 128) = v14;
    v15 = v21[1];
    *(v10 + 16) = v21[0];
    *(v10 + 32) = v15;
    v16 = v21[3];
    *(v10 + 48) = v21[2];
    *(v10 + 64) = v16;
    *(v10 + 208) = v2;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_189194E14;
    *(v17 + 24) = v10;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_380;
    v18 = _Block_copy(aBlock);
    v2;

    [v9 performWithoutAnimation_];
    _Block_release(v18);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      sub_188E5A020();
      sub_189187FE4(a1, 0, 0, v7, 0.0);
      sub_189195250(v7, type metadata accessor for NavigationBarPlatterContainer.Settings);
    }

    __break(1u);
  }

  result = sub_18A4A8398();
  __break(1u);
  return result;
}