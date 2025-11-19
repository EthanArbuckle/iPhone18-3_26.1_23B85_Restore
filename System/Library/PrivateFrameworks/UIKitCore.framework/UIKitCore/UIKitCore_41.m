void sub_188F3152C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____UIMagicMorphAnimation_currentItem);
  if (!v2)
  {
    goto LABEL_53;
  }

  v4 = *(v2 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview);
  [v4 size];
  v6 = v5;
  v8 = v7;
  v9 = [v4 target];
  [v9 transform];
  recta = *&v106.c;
  v102 = *&v106.a;
  v96 = *&v106.tx;

  *&v106.a = v102;
  *&v106.c = recta;
  *&v106.tx = v96;
  v107.width = v6;
  v107.height = v8;
  v10 = CGSizeApplyAffineTransform(v107, &v106);
  [a1 size];
  v12 = v11;
  v14 = v13;
  v15 = [a1 target];
  [v15 transform];
  rectb = *&v106.c;
  v103 = *&v106.a;
  v97 = *&v106.tx;

  *&v106.a = v103;
  *&v106.c = rectb;
  *&v106.tx = v97;
  v108.width = v12;
  v108.height = v14;
  v16 = CGSizeApplyAffineTransform(v108, &v106);
  if (v10.height >= v10.width)
  {
    width = v10.width;
  }

  else
  {
    width = v10.height;
  }

  if (v16.height >= v16.width)
  {
    height = v16.width;
  }

  else
  {
    height = v16.height;
  }

  v19 = *(v1 + OBJC_IVAR____UIMagicMorphAnimation_animationSettings);
  v20 = &OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_growingIntermediateShapeRatio;
  if (v10.width * v10.height < v16.width * v16.height)
  {
    v21 = &OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_jHeightRatio;
  }

  else
  {
    v20 = &OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_shrinkingIntermediateShapeRatio;
    v21 = &OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_jWidthRatio;
  }

  v98 = _UILerp_1(*(v19 + *v20), width, height);
  v89 = *(v19 + *v21);
  v22 = [v4 view];
  v23 = [v22 superview];

  if (!v23)
  {
    v24 = [v4 target];
    v23 = [v24 container];
  }

  v25 = [v4 view];
  [v25 _frameIgnoringLayerTransform];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = [a1 target];
  v35 = [v34 container];

  [v23 convertRect:v35 toCoordinateSpace:{v27, v29, v31, v33}];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = [a1 view];
  [v44 _frameIgnoringLayerTransform];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v109.origin.x = v37;
  v109.origin.y = v39;
  v109.size.width = v41;
  v109.size.height = v43;
  v104 = CGRectGetWidth(v109);
  v110.origin.x = v46;
  v110.origin.y = v48;
  v110.size.width = v50;
  v110.size.height = v52;
  v53 = CGRectGetWidth(v110);
  v54 = v104 < v53;
  if (v104 >= v53)
  {
    v55 = v46;
  }

  else
  {
    v55 = v37;
  }

  v56 = v39;
  if (v104 >= v53)
  {
    v39 = v48;
  }

  v57 = v41;
  if (v104 >= v53)
  {
    v41 = v50;
  }

  v58 = v43;
  if (v104 >= v53)
  {
    v43 = v52;
  }

  v94 = v56;
  v95 = v37;
  v91 = v50;
  v92 = v46;
  if (v104 >= v53)
  {
    v59 = v37;
  }

  else
  {
    v59 = v46;
  }

  v60 = v48;
  v61 = v55;
  v90 = v60;
  if (v54)
  {
    v62 = v60;
  }

  else
  {
    v62 = v56;
  }

  v93 = v57;
  if (v54)
  {
    v63 = v52;
  }

  else
  {
    v50 = v57;
    v63 = v58;
  }

  v64 = v59;
  v65 = v62;
  v66 = v50;
  rect = v63;
  v67 = CGRectGetWidth(*&v59);
  v111.origin.x = v61;
  v111.origin.y = v39;
  v111.size.width = v41;
  v111.size.height = v43;
  v68 = CGRectGetWidth(v111);
  v69 = 0.5;
  if (v68 < v67)
  {
    v112.origin.x = v61;
    v112.origin.y = v39;
    v112.size.width = v41;
    v112.size.height = v43;
    v87 = v98 - CGRectGetWidth(v112);
    v113.origin.x = v64;
    v113.origin.y = v62;
    v113.size.width = v50;
    v113.size.height = rect;
    v86 = CGRectGetWidth(v113);
    v114.origin.x = v61;
    v114.origin.y = v39;
    v114.size.width = v41;
    v114.size.height = v43;
    v69 = v87 / (v86 - CGRectGetWidth(v114));
  }

  v88 = v69;
  v115.origin.x = v61;
  v115.origin.y = v39;
  v115.size.width = v41;
  v115.size.height = v43;
  MidX = CGRectGetMidX(v115);
  v116.origin.x = v64;
  v116.origin.y = v62;
  v116.size.width = v50;
  v116.size.height = rect;
  v70 = CGRectGetMidX(v116);
  v71 = *(v19 + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_maxJHeight);
  UIRectGetCenter(v95, v94, v93);
  v73 = v72;
  UIRectGetCenter(v92, v90, v91);
  if (v71 < 0.0)
  {
    __break(1u);
LABEL_53:
    __break(1u);
    return;
  }

  v75 = v89 * (v74 - v73);
  if (v75 > v71)
  {
    if ((~*&v71 & 0x7FF0000000000000) != 0)
    {
      v75 = v71;
    }

    else if ((*&v71 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v75 = v71;
    }
  }

  if ((*&v75 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v76 = -v71;
  }

  else
  {
    v76 = v75;
  }

  if ((~*&v75 & 0x7FF0000000000000) != 0)
  {
    v76 = v75;
  }

  if (v75 >= -v71)
  {
    v77 = v76;
  }

  else
  {
    v77 = -v71;
  }

  v78 = [objc_allocWithZone(UIView) initWithFrame_];
  v79 = [v78 layer];
  CACornerRadiiMake(&v106.a, v98, v98, v98, v98);
  [v79 setCornerRadii_];

  if ([a1 _resolvedBackgroundMaterial])
  {
    swift_getObjectType();
    sub_18901EB8C(&v106);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(&v106, 0, 40);
  }

  v80 = _UILerp_1(v88, MidX, v70);
  UIView._background.setter(&v106);
  v81 = [a1 target];
  v82 = [v81 container];

  v83 = [objc_allocWithZone(UIPreviewTarget) initWithContainer:v82 center:{v80, v73 + v77}];
  v84 = [objc_allocWithZone(UIPreviewParameters) init];
  v85 = [objc_opt_self() clearColor];
  [v84 setBackgroundColor_];

  [objc_allocWithZone(UITargetedPreview) initWithView:v78 parameters:v84 target:v83];
}

uint64_t sub_188F31C20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, char *a7, uint64_t (*a8)(), uint64_t (*a9)())
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = [a3 target];
    v18 = [v17 container];

    v19 = [v18 _window];
    if (v19)
    {

      v20 = a3;
      v21 = 0;
    }

    else
    {
      v37 = a4;
      v22 = [objc_allocWithZone(UIView) init];
      v38 = objc_opt_self();
      v23 = swift_allocObject();
      *(v23 + 16) = a3;
      *(v23 + 24) = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_188F36458;
      *(v24 + 24) = v23;
      aBlock[4] = sub_188E3FE50;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A968;
      aBlock[3] = &block_descriptor_258;
      v25 = _Block_copy(aBlock);
      v26 = a3;
      v27 = v22;

      [v38 performWithoutAnimation_];
      _Block_release(v25);
      LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

      if (v25)
      {
        __break(1u);
        return result;
      }

      v28 = [objc_allocWithZone(UIPreviewParameters) init];
      v29 = [objc_opt_self() clearColor];
      [v28 setBackgroundColor_];

      v30 = [objc_allocWithZone(UITargetedPreview) initWithView:v27 parameters:v28 target:v37];
      v20 = v30;
      v21 = sub_188F36458;
    }

    v31 = v20;
    sub_188F2E908(v31, a5, 0, 1, a6, a7, a8, a9);

    v32 = *&v16[OBJC_IVAR____UIMagicMorphAnimation_intermediateStepHidingAssertion];
    *&v16[OBJC_IVAR____UIMagicMorphAnimation_intermediateStepHidingAssertion] = 0;

    v33 = OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer;
    v34 = *&v16[OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer];
    if (v34)
    {
      [v34 invalidate];
      v35 = *&v16[v33];
    }

    else
    {
      v35 = 0;
    }

    *&v16[v33] = 0;

    v36 = *&v16[OBJC_IVAR____UIMagicMorphAnimation_groupCompletion];
    [v36 complete];

    return sub_188A55B8C(v21);
  }

  return result;
}

void sub_188F31FAC(void *a1, void *a2)
{
  [a1 size];
  v5 = v4;
  [a1 size];
  if (v6 < v5)
  {
    v5 = v6;
  }

  [a2 setBounds_];
  v7 = [a2 layer];
  [v7 setCornerRadius_];
}

uint64_t sub_188F32070(uint64_t a1, char *a2, char a3)
{
  sub_188F32124(a2, a3);
  v5 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (v6 >> 62)
  {
    result = sub_18A4A7F68();
    if (result < 2)
    {
      return result;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 2)
    {
      return result;
    }
  }

  result = *&a2[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView];
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void sub_188F32124(void *a1, char a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_188F36758;
  *(v7 + 24) = v6;
  v29[4] = sub_188E3FE50;
  v29[5] = v7;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_188A4A968;
  v29[3] = &block_descriptor_248;
  v8 = _Block_copy(v29);
  v9 = a1;
  v10 = v2;

  [v5 performWithoutAnimation_];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v10[OBJC_IVAR____UIMagicMorphAnimation_reparentsDuringMorph] == 1 && !UIAccessibilityPrefersCrossFadeTransitions() && (a2 & 1) != 0)
  {
    v12 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView;
    if (!*&v9[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView])
    {
      type metadata accessor for _UIReparentingView();
      v13 = sub_188D733EC(*&v10[OBJC_IVAR____UIMagicMorphAnimation_animationContainerView]);
      v14 = *&v9[v12];
      *&v9[v12] = v13;
    }

    v15 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview;
    v16 = [*&v9[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview] view];
    v17 = [v16 _overrideReparentingContainer];

    if (!v17)
    {
      v18 = [*&v9[v15] target];
      v17 = [v18 container];
    }

    v19 = [*&v9[v15] view];
    v20 = [v19 superview];

    if (v20)
    {
      sub_188A34624(0, &qword_1ED48F680);
      v21 = v17;
      v22 = sub_18A4A7C88();

      if (v22)
      {
        v23 = *&v9[v12];
        if (v23)
        {
          v24 = *&v9[v15];
          v25 = v23;
          v26 = [v24 view];
          [v21 insertSubview:v25 aboveSubview:v26];

          return;
        }

        goto LABEL_19;
      }
    }

    v27 = *&v9[v12];
    if (v27)
    {
      v28 = v27;
      [v17 addSubview_];

      return;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }
}

void sub_188F32494(uint64_t a1, void *a2, char *a3, void *a4, void *a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Strong = a2;
  }

  v11 = *(a1 + OBJC_IVAR____UIMagicMorphAnimation_animationContainerView);
  [Strong insertSubview:v11 atIndex:0];
  v12 = *&v11[OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView];
  v25 = 0x3FF0000000000000uLL;
  *&v26 = 0;
  *(&v26 + 1) = 0x3FF0000000000000;
  v27 = 0uLL;
  [v12 setTransform_];
  v13 = *(a1 + OBJC_IVAR____UIMagicMorphAnimation_morphView);
  [v11 addSubview_];
  sub_188D6C074(a3);
  v14 = OBJC_IVAR____UIMagicMorphDestination_preview;
  [*&a3[OBJC_IVAR____UIMagicMorphDestination_preview] _center];
  [v11 convertPoint:a4 fromCoordinateSpace:?];
  [v13 setCenter_];
  [a5 _transform3DRelativeToWindow_];
  [v13 setTransform3D_];
  v15 = [*&a3[v14] view];
  [v15 alpha];
  v17 = v16;

  [v13 setAlpha_];
  v18 = [v11 layer];
  v19 = [a4 layer];
  [v19 sublayerTransform];

  *&v21[64] = v29;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  *v21 = v25;
  *&v21[16] = v26;
  *&v21[32] = v27;
  *&v21[48] = v28;
  [v18 setSublayerTransform_];

  v20 = *&a3[v14];
  sub_18923B914(&v33);

  if (v33 != 2)
  {
    *v21 = v33;
    *&v21[8] = v34;
    *&v21[24] = v35;
    *&v21[40] = v36[0];
    *&v21[50] = *(v36 + 10);
    sub_1890822D8(v13, 0, 1);
    sub_189082DE4(v21, 0);
  }
}

void sub_188F32740(double a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = swift_unknownObjectUnownedLoadStrong();
  [v9 setBounds_];

  v10 = swift_unknownObjectUnownedLoadStrong();
  [v10 layoutIfNeeded];
}

void sub_188F327FC(double a1, double a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong setBounds_];

  v5 = swift_unknownObjectUnownedLoadStrong();
  [v5 layoutIfNeeded];
}

void sub_188F3288C(uint64_t a1, char *a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_188D6C074(a2);

  v7 = swift_unknownObjectUnownedLoadStrong();
  v4 = [*&a2[OBJC_IVAR____UIMagicMorphDestination_preview] view];
  [v4 alpha];
  v6 = v5;

  [v7 setAlpha_];
}

void sub_188F32950(char a1)
{
  v2 = v1;
  v4 = sub_188D845C8();
  [v4 setPaused_];

  if (a1)
  {
    v5 = OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer;
    v6 = *(v2 + OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer);
    if (v6)
    {
      v7 = v6;
      [v7 invalidate];
      v8 = *(v2 + v5);
      *(v2 + v5) = 0;

      [*(v2 + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion) complete];
    }
  }

  else if ((*(v2 + OBJC_IVAR____UIMagicMorphAnimation_cleansUpAutomatically) & 1) == 0)
  {
    return;
  }

  v9 = *(v2 + OBJC_IVAR____UIMagicMorphAnimation_morphView);
  sub_1890E11BC();
  [v9 removeFromSuperview];
  sub_1890E0B5C();
  v10 = *(v2 + OBJC_IVAR____UIMagicMorphAnimation_animationContainerView);
  [v10 removeFromSuperview];
  v28 = 0x3FF0000000000000uLL;
  *&v29 = 0;
  *(&v29 + 1) = 0x3FF0000000000000;
  v30 = 0uLL;
  [v10 setTransform_];
  v11 = [v10 layer];
  v12 = *(MEMORY[0x1E69792E8] + 80);
  v32 = *(MEMORY[0x1E69792E8] + 64);
  v33 = v12;
  v13 = *(MEMORY[0x1E69792E8] + 112);
  v34 = *(MEMORY[0x1E69792E8] + 96);
  v35 = v13;
  v14 = *(MEMORY[0x1E69792E8] + 16);
  v28 = *MEMORY[0x1E69792E8];
  v29 = v14;
  v15 = *(MEMORY[0x1E69792E8] + 48);
  v30 = *(MEMORY[0x1E69792E8] + 32);
  v31 = v15;
  [v11 setSublayerTransform_];

  v16 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
  swift_beginAccess();
  v17 = *(v2 + v16);
  if (v17 >> 62)
  {
    v18 = sub_18A4A7F68();
    if (v18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_7:
      if (v18 < 1)
      {
        __break(1u);
        return;
      }

      v27 = v16;

      for (i = 0; i != v18; ++i)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = sub_188E49688(i, v17);
        }

        else
        {
          v20 = *(v17 + 8 * i + 32);
        }

        v21 = v20;
        v22 = *&v20[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView];
        if (v22)
        {
          [v22 removeFromSuperview];
        }

        v23 = *&v21[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView];
        if (v23)
        {
          v24 = v23;
          [v24 removeFromSuperview];
        }
      }

      v16 = v27;
    }
  }

  *(v2 + v16) = MEMORY[0x1E69E7CC0];

  v25 = *(v2 + OBJC_IVAR____UIMagicMorphAnimation_currentItem);
  *(v2 + OBJC_IVAR____UIMagicMorphAnimation_currentItem) = 0;

  v26 = *(v2 + OBJC_IVAR____UIMagicMorphAnimation_currentReparentingItem);
  *(v2 + OBJC_IVAR____UIMagicMorphAnimation_currentReparentingItem) = 0;
}

void sub_188F32C04(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v13 = *&Strong[OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView];

  v4 = swift_unknownObjectUnownedLoadStrong();
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  Center = UIRectGetCenter(v6, v8, v10);
  [v13 setCenter_];
}

void sub_188F32CEC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView];

  CGAffineTransformMakeTranslation(&v5, -*(a2 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_kick), -*(a2 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_kick + 8));
  [v4 setTransform_];
}

void sub_188F32D8C(double a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = swift_unknownObjectUnownedLoadStrong();
  [v2 center];
  v4 = v3;

  [Strong setCenter_];
}

void sub_188F32E18(uint64_t a1, void *a2, char *a3, void *a4, void *a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [a2 _transform3DRelativeToWindow_];
  [Strong setTransform3D_];

  if (a3)
  {
    v10 = *&a3[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];
    v11 = a3;
    v12 = [v10 view];
    v13 = [v12 layer];

    [v13 transform];
    v17 = v18;
    if (CATransform3DIsIdentity(&v17))
    {
      v14 = [a4 layer];
      v15 = [a5 layer];
      [v15 sublayerTransform];

      v16 = v17;
      [v14 setSublayerTransform_];
    }

    else
    {
    }
  }
}

void sub_188F32FBC(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView);
  if (v3)
  {
    v4 = *(a2 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView);
    if (v4)
    {
      v6 = v3;
      v7 = v4;
      v8 = v6;
      isEscapingClosureAtFileLocation = v7;
      v10 = [(UIView *)v8 _viewOrderRelativeToView:0 requireIntersection:?];
      if (a3)
      {

        v11 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = v8;
        *(v12 + 24) = isEscapingClosureAtFileLocation;
        v13 = swift_allocObject();
        *(v13 + 16) = sub_188F36620;
        *(v13 + 24) = v12;
        v39 = sub_188E3FE50;
        v40 = v13;
        v35 = MEMORY[0x1E69E9820];
        v36 = 1107296256;
        v37 = sub_188A4A968;
        v38 = &block_descriptor_498;
        v14 = _Block_copy(&v35);
        v8 = v8;
        v15 = isEscapingClosureAtFileLocation;

        [v11 performWithoutAnimation_];

        _Block_release(v14);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
      }

      if (v10 == -3)
      {

        v16 = [v8 layer];
        v17 = sub_18A4A2D28();
        v18 = sub_18A4A7258();
        [v16 setValue:v17 forKeyPath:v18];

        v19 = objc_opt_self();
        v20 = swift_allocObject();
        *(v20 + 16) = v8;
        v21 = swift_allocObject();
        *(v21 + 16) = sub_188F3660C;
        *(v21 + 24) = v20;
        v39 = sub_188E3FE50;
        v40 = v21;
        v35 = MEMORY[0x1E69E9820];
        v36 = 1107296256;
        v37 = sub_188A4A968;
        v38 = &block_descriptor_488;
        v22 = _Block_copy(&v35);
        v23 = v8;

        [v19 performWithoutAnimation_];
        _Block_release(v22);
        LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

        if (v19)
        {
          __break(1u);
        }

        else
        {
          [isEscapingClosureAtFileLocation setAlpha_];
        }

        return;
      }

      [isEscapingClosureAtFileLocation alpha];
      v25 = v24;

      if (v25 == 0.0)
      {
        v26 = objc_opt_self();
        v27 = swift_allocObject();
        *(v27 + 16) = isEscapingClosureAtFileLocation;
        v28 = swift_allocObject();
        v29 = sub_188F36604;
        *(v28 + 16) = sub_188F36604;
        *(v28 + 24) = v27;
        v39 = sub_188E3FE50;
        v40 = v28;
        v35 = MEMORY[0x1E69E9820];
        v36 = 1107296256;
        v37 = sub_188A4A968;
        v38 = &block_descriptor_478;
        v30 = _Block_copy(&v35);
        v31 = isEscapingClosureAtFileLocation;

        [v26 performWithoutAnimation_];
        _Block_release(v30);
        LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

        if ((v26 & 1) == 0)
        {
LABEL_13:
          v32 = [isEscapingClosureAtFileLocation layer];
          v33 = sub_18A4A2D28();
          v34 = sub_18A4A7258();
          [v32 setValue:v33 forKeyPath:v34];

          [v8 setAlpha_];
          sub_188A55B8C(v29);
          return;
        }

        __break(1u);
      }

      v29 = 0;
      goto LABEL_13;
    }
  }
}

void sub_188F33544(void *a1)
{
  [a1 setAlpha_];
  v2 = [a1 layer];
  v3 = sub_18A4A2D28();
  v4 = sub_18A4A7258();
  [v2 setValue:v3 forKeyPath:v4];
}

void sub_188F335FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [*(Strong + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion) increment];
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    v18 = sub_188E3FE58;
    v19 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_188A4A8F0;
    v17 = &block_descriptor_463;
    v11 = _Block_copy(&aBlock);

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = sub_188E3FE98;
    v19 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_188C3DD6C;
    v17 = &block_descriptor_468;
    v13 = _Block_copy(&aBlock);

    [v9 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v13);
    _Block_release(v11);
  }
}

uint64_t sub_188F337E4(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_188F36450;
  *(v6 + 24) = v5;
  v11[4] = sub_188E3FE50;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_188A4A968;
  v11[3] = &block_descriptor_237_0;
  v7 = _Block_copy(v11);
  v8 = a2;
  v9 = a1;

  [v4 performWithoutAnimation_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (v9[OBJC_IVAR____UIMagicMorphAnimation_reparentsDuringMorph] == 1)
    {
      UIAccessibilityPrefersCrossFadeTransitions();
    }
  }

  return result;
}

void sub_188F33974(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview);
  v4 = objc_allocWithZone(type metadata accessor for _UIMagicMorphView.Destination());
  v5 = v3;
  v6 = sub_188D626CC(v5);

  *a2 = v6;
}

void sub_188F339D0(void *a1, char *a2, void *a3, void *a4, void *a5)
{
  sub_188D6C074(a2);
  [a3 center];
  [a1 setCenter_];
  [a1 layoutIfNeeded];
  [a1 setAlpha_];
  v9 = [a5 view];
  [a4 insertSubview:a1 aboveSubview:v9];
}

id sub_188F33AA0(void *a1, uint64_t a2)
{
  [a1 setAlpha_];
  result = [a1 updateTraitsIfNeeded];
  v5 = *(a2 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion);
  if (v5)
  {

    v5(v6);

    return sub_188A55B8C(v5);
  }

  return result;
}

void sub_188F33B30(char *a1, uint64_t a2)
{
  v4 = &a1[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion];
  v5 = *&a1[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion];
  if (v5)
  {

    v5(v6);
    sub_188A55B8C(v5);
    v7 = *v4;
    *v4 = 0;
    v4[1] = 0;
    sub_188A55B8C(v7);
  }

  v8 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
  swift_beginAccess();
  v9 = *(a2 + v8);
  if (v9 >> 62)
  {
    v10 = sub_18A4A7F68();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    __break(1u);
  }

  else if ((v9 & 0xC000000000000001) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v9 + 8 * v11 + 32);
      goto LABEL_10;
    }

    __break(1u);
    return;
  }

  v12 = sub_188E49688(v11, v9);

LABEL_10:
  type metadata accessor for _UIMagicMorphAnimation.Item();
  v13 = a1;
  v14 = sub_18A4A7C88();

  if (v14)
  {
    sub_188F32950(0);
  }
}

void sub_188F33C94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (a4 >> 1 != a3)
  {
    if (a3 > v4)
    {
      v4 = a3;
    }

    v6 = v4 - a3;
    v7 = (a2 + 8 * a3);
    while (v6)
    {
      v8 = *v7;
      v9 = *(*v7 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView);
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview;
      v11 = *&v8[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];
      v12 = v8;
      v13 = v9;
      v14 = [v11 target];
      v15 = [v14 container];

      v16 = *&v8[v10];
      v17 = v13;
      v18 = [v16 view];
      [v15 insertSubview:v17 aboveSubview:v18];

      [v17 setAlpha_];
      [v17 updateTraitsIfNeeded];

      --v6;
      ++v7;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

void sub_188F33DE8(void *a1, char a2, void *a3, char *a4, uint64_t (*a5)(), uint64_t (*a6)())
{
  v12 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.1];
  if (v12)
  {
    v13 = v12;
    v14 = type metadata accessor for _UIMagicMorphAnimation.Parameters();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_morphSpring] = 0;
    *&v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_widthSpring] = 0;
    *&v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_heightSpring] = 0;
    *&v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_positionXSpring] = 0;
    *&v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_positionYSpring] = 0;
    *&v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_transformSpring] = 0;
    *&v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_fallbackBackgroundColor] = 0;
    *&v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_overlayViews] = MEMORY[0x1E69E7CC0];
    *&v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_contentScale] = 0x3FF0000000000000;
    v16 = &v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_reparentingOptions];
    *v16 = v13;
    v16[8] = a2 & 1;
    v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_crossBlurWhenMorphing] = 2;
    v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_useIntermediateShape] = 0;
    v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_tracksPresentationLayer] = 1;
    v17 = &v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_kick];
    *v17 = 0;
    v17[1] = 0;
    v18 = &v15[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_animationSmoothness];
    *v18 = 0;
    v18[8] = 1;
    v20.receiver = v15;
    v20.super_class = v14;
    v19 = objc_msgSendSuper2(&v20, sel_init);
    sub_188D7AA34(a1, v19, a3, a4, a5, a6);
  }

  else
  {
    __break(1u);
  }
}

char *sub_188F34174(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____UIMagicMorphAnimation_morphView);
  v3 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {

    if (!i)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_188E494B4(v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_188A34624(0, &qword_1ED490230);
      v10 = [*&v8[OBJC_IVAR____UIMagicMorphDestination_preview] view];
      v11 = [a1 view];
      v12 = sub_18A4A7C88();

      if (v12)
      {

        return v8;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_13:

  return 0;
}

void sub_188F34378(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview) target];
  v4 = [v3 container];

  v5 = [v4 _window];
  if (v5)
  {
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = *(a2 + OBJC_IVAR____UIMagicMorphAnimation_animationContainerView);
    [v14 frame];
    v18.origin.x = v7;
    v18.origin.y = v9;
    v18.size.width = v11;
    v18.size.height = v13;
    if (!CGRectEqualToRect(v17, v18))
    {
      [v14 setBounds_];
      Center = UIRectGetCenter(v7, v9, v11);

      [v14 setCenter_];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_188F344D8(void *a1, uint64_t a2)
{
  v3 = a2 + 16;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188F36358;
  *(v5 + 24) = v4;
  v9[4] = sub_188E3FE50;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_188A4A968;
  v9[3] = &block_descriptor_103_3;
  v6 = _Block_copy(v9);
  v7 = a1;

  UIMM_HFR_0(v6);
  _Block_release(v6);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

id sub_188F34624(void *a1, double *a2)
{
  [a1 center];
  v5 = v4;
  v7 = v6;
  result = swift_beginAccess();
  if (v5 != *a2 || v7 != a2[1])
  {
    return [a1 setCenter_];
  }

  return result;
}

id sub_188F348E0()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion);

    [v4 complete];
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = sub_188D845C8();

    [v7 setPaused_];
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for _UIMagicMorphAnimation.InteractionAssertion();
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

void sub_188F34A2C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview;
  v5 = [*(v1 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview) target];
  v6 = [a1 target];
  sub_188A34624(0, &unk_1EA9307F0);
  v7 = sub_18A4A7C88();

  v8 = *(v2 + v4);
  if ((v7 & 1) == 0)
  {
    v36 = v8;
    v37 = [a1 target];
    v35 = [v36 retargetedPreviewWithTarget_];

    goto LABEL_5;
  }

  v9 = [v8 target];
  v10 = [v9 container];

  v11 = [v10 window];
  if (v11)
  {

    v12 = [*(v2 + v4) view];
    v13 = [*(v2 + v4) view];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;

    Center = UIRectGetCenter(v15, v17, v19);
    v22 = v21;
    v23 = [v5 container];
    [v12 convertPoint:v23 toCoordinateSpace:{Center, v22}];
    v25 = v24;
    v27 = v26;

    v28 = [v5 container];
    v29 = [a1 target];
    [v29 _transform3D];

    v30 = [objc_opt_self() _targetWithContainer_center_transform3D_];
    v31 = [*(v2 + v4) target];
    [v31 _contentScale];
    v33 = v32;

    [v30 _setContentScale_];
    v34 = *(v2 + v4);
    v35 = [v34 retargetedPreviewWithTarget_];

LABEL_5:
    v38 = *(v2 + v4);
    *(v2 + v4) = v35;
  }

  v39 = *(v2 + v4);
  sub_18923B9EC(v66);
  v40 = [(UITargetedPreview *)v39 _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA70);
  v41 = swift_allocObject();
  v42 = v66[7];
  *(v41 + 112) = v66[6];
  *(v41 + 128) = v42;
  *(v41 + 144) = v67;
  v43 = v66[3];
  *(v41 + 48) = v66[2];
  *(v41 + 64) = v43;
  v44 = v66[5];
  *(v41 + 80) = v66[4];
  *(v41 + 96) = v44;
  v45 = v66[1];
  *(v41 + 16) = v66[0];
  *(v41 + 32) = v45;
  v63 = v5;
  v46 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64[0] = *(v40 + v46);
  *(v40 + v46) = 0x8000000000000000;
  sub_188A40430(v41, &_s19OverrideGeometryKeyVN, isUniquelyReferenced_nonNull_native);
  *(v40 + v46) = v64[0];
  swift_endAccess();

  v48 = *(v2 + v4);
  sub_18923B914(v68);
  v49 = [(UITargetedPreview *)v48 _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9B0);
  v50 = swift_allocObject();
  v51 = v68[3];
  *(v50 + 48) = v68[2];
  *(v50 + 64) = v51;
  *(v50 + 80) = v69;
  v52 = v68[1];
  *(v50 + 16) = v68[0];
  *(v50 + 32) = v52;
  v53 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v49 + v53);
  *(v49 + v53) = 0x8000000000000000;
  sub_188A40430(v50, &_s18GenieParametersKeyVN, v54);
  *(v49 + v53) = v65;
  swift_endAccess();

  v55 = *(v2 + v4);
  v56 = [(UITargetedPreview *)a1 _typedStorage];
  sub_18901EF08(v64);

  sub_18923BAD0(v64);
  v57 = *(v2 + v4);
  v58 = [(UITargetedPreview *)a1 _typedStorage];
  LOBYTE(v55) = sub_18901EFE0();

  v59 = [(UITargetedPreview *)v57 _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9371F8);
  v60 = swift_allocObject();
  *(v60 + 16) = v55 & 1;
  v61 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v59 + v61);
  *(v59 + v61) = 0x8000000000000000;
  sub_188A40430(v60, &_s31IgnoreForGlassSizeResolutionKeyVN, v62);
  *(v59 + v61) = v65;
  swift_endAccess();
}

id sub_188F35058(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_188F35124(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v8 = result;
    result = sub_18A4A7F68();
    v9 = result - v8;
    if (__OFSUB__(result, v8))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v10 = sub_18A4A7F68();
    result = sub_18A4A7F68();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v9 <= v10)
    {
      v11 = v9 & ~(v9 >> 63);
    }

    else
    {
      v11 = v10;
    }

    if (v10 < 0 || v9 < 1)
    {
      v5 = v9 & ~(v9 >> 63);
    }

    else
    {
      v5 = v11;
    }

    result = sub_18A4A7F68();
    if (result >= v5)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = (v4 - result) & ~((v4 - result) >> 63);
  if (v4 < v5)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0 && v5)
  {
    type metadata accessor for _UIMagicMorphAnimation.Item();

    v6 = 0;
    do
    {
      v7 = v6 + 1;
      sub_18A4A8148();
      v6 = v7;
    }

    while (v5 != v7);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return sub_18A4A8438();
}

uint64_t sub_188F35270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isEscapingClosureAtFileLocation = a1;
  v11 = [a1 target];
  v12 = [v11 container];

  v13 = [v12 _window];
  if (!v13)
  {
    goto LABEL_26;
  }

  v14 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
  swift_beginAccess();
  v15 = *&v6[v14];
  v111 = v13;
  v117 = v14;
  v118 = v6;
  if (v15 >> 62)
  {
    v112 = sub_18A4A7F68();
  }

  else
  {
    v112 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for _UIMagicMorphView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = type metadata accessor for _UIMagicMorphAnimation.Item();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_tracksPresentationLayer] = 1;
  *&v18[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView] = 0;
  *&v18[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView] = 0;
  v19 = &v18[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v18[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion];
  *v20 = 0;
  v20[1] = 0;
  *&v18[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview] = isEscapingClosureAtFileLocation;
  *v20 = a5;
  v20[1] = a6;
  v119 = isEscapingClosureAtFileLocation;
  sub_188D738F4(a5);
  v130.receiver = v18;
  v130.super_class = v17;
  v21 = objc_msgSendSuper2(&v130, sel_init);
  v22 = &v21[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
  v23 = *&v21[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
  v107 = &v21[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
  *v22 = a3;
  v22[1] = a4;
  sub_188D738F4(a3);
  sub_188A55B8C(v23);
  v24 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview;
  v25 = *&v21[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];
  sub_188A34624(0, &qword_1ED48F680);
  v26 = v25;
  v27 = sub_18A4A7518();
  [v26 set:v27 overlayViews:?];

  v21[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_tracksPresentationLayer] = 1;
  v28 = *&v21[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView];
  *&v21[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView] = v16;
  v114 = v16;

  swift_beginAccess();
  v29 = v21;
  MEMORY[0x18CFE2450]();
  if (*((*(v118 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v118 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18A4A7588();
  }

  sub_18A4A75F8();
  swift_endAccess();
  v30 = objc_opt_self();
  v31 = swift_allocObject();
  *(v31 + 16) = v118;
  *(v31 + 24) = v29;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_188F36394;
  *(v32 + 24) = v31;
  v128 = sub_188E3FE50;
  v129 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v125 = 1107296256;
  isEscapingClosureAtFileLocation = &v126;
  v126 = sub_188A4A968;
  v127 = &block_descriptor_128_0;
  v33 = _Block_copy(&aBlock);
  v34 = v29;
  v123 = v118;

  [v30 performWithoutAnimation_];
  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
    goto LABEL_21;
  }

  v35 = [*&v21[v24] target];
  v36 = [v35 container];
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  v122 = v34;
  v38 = sub_188D73B5C(sub_188F3639C, v37);

  v39 = swift_allocObject();
  v39[2] = v114;
  v39[3] = v38;
  v39[4] = v35;
  v39[5] = v36;
  v39[6] = v119;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_188F363B8;
  *(v40 + 24) = v39;
  v128 = sub_188E3FE50;
  v129 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v125 = 1107296256;
  v126 = sub_188A4A968;
  v127 = &block_descriptor_141_0;
  v41 = _Block_copy(&aBlock);
  v42 = v119;
  v120 = v114;
  v43 = v38;
  v115 = v35;
  v44 = v36;

  [v30 performWithoutAnimation_];
  _Block_release(v41);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v116 = v30;
  v110 = v43;
  v109 = v44;
  if (!v112)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v88 = v111;
    if (!Strong)
    {
      Strong = v111;
    }

    v90 = Strong;
    [Strong insertSubview:*&v123[OBJC_IVAR____UIMagicMorphAnimation_animationContainerView] atIndex:0];
    v91 = sub_188D845C8();
    v92 = [objc_opt_self() mainRunLoop];
    [v91 addToRunLoop:v92 forMode:*MEMORY[0x1E695DA28]];

    v93 = *&v123[OBJC_IVAR____UIMagicMorphAnimation____lazy_storage___geometryTrackingDisplayLink];
    LOBYTE(aBlock) = 1;
    sub_18A4A79D8();
    [v93 setPreferredFrameRateRange_];

    v94 = swift_allocObject();
    *(v94 + 16) = v120;
    *(v94 + 24) = v122;
    v95 = swift_allocObject();
    v87 = sub_188F36448;
    *(v95 + 16) = sub_188F36448;
    *(v95 + 24) = v94;
    v128 = sub_188E3FE50;
    v129 = v95;
    aBlock = MEMORY[0x1E69E9820];
    v125 = 1107296256;
    v126 = sub_188A4A968;
    v127 = &block_descriptor_199;
    v96 = _Block_copy(&aBlock);
    v97 = v120;
    v98 = v122;

    [v116 performWithoutAnimation_];

    _Block_release(v96);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  isEscapingClosureAtFileLocation = objc_opt_self();
  v45 = [isEscapingClosureAtFileLocation behaviorWithDampingRatio:1.0 response:0.5];
  if (!v45)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v46 = v45;
  v47 = [isEscapingClosureAtFileLocation behaviorWithDampingRatio:1.0 response:0.4];
  if (v47)
  {
    v106 = v47;
    v113 = [isEscapingClosureAtFileLocation behaviorWithDampingRatio:1.0 response:0.45];
    if (v113)
    {
      v48 = OBJC_IVAR____UIMagicMorphAnimation_groupCompletion;
      [*&v123[OBJC_IVAR____UIMagicMorphAnimation_groupCompletion] increment];
      v49 = swift_allocObject();
      *(v49 + 16) = v120;
      v50 = swift_allocObject();
      *(v50 + 16) = v122;
      *(v50 + 24) = v123;
      v108 = v48;
      v51 = *&v123[v48];
      v128 = sub_188F36420;
      v129 = v50;
      aBlock = MEMORY[0x1E69E9820];
      v125 = 1107296256;
      v126 = sub_188A4A8F0;
      v127 = &block_descriptor_150;
      v52 = _Block_copy(&aBlock);
      swift_retain_n();
      v53 = v120;
      v54 = v122;
      v123;
      v55 = v51;
      v56 = v46;

      [v55 addCompletion_];
      _Block_release(v52);

      v57 = swift_allocObject();
      *(v57 + 16) = sub_188F363D0;
      *(v57 + 24) = v49;
      v128 = sub_188E3FE58;
      v129 = v57;
      aBlock = MEMORY[0x1E69E9820];
      v125 = 1107296256;
      v126 = sub_188A4A8F0;
      v127 = &block_descriptor_157;
      v58 = _Block_copy(&aBlock);
      v59 = v56;

      v60 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v128 = sub_188E3FE98;
      v129 = v60;
      aBlock = MEMORY[0x1E69E9820];
      v125 = 1107296256;
      v126 = sub_188C3DD6C;
      v127 = &block_descriptor_162_0;
      v61 = _Block_copy(&aBlock);

      [v30 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v61);
      _Block_release(v58);

      v62 = *v107;
      if (*v107)
      {
        v63 = v107[1];
        v64 = *&v123[v48];
        sub_188D738F4(*v107);
        v65 = v113;
        [v64 increment];
        v66 = swift_allocObject();
        *(v66 + 16) = v62;
        *(v66 + 24) = v63;
        v128 = sub_188E3FE58;
        v129 = v66;
        aBlock = MEMORY[0x1E69E9820];
        v125 = 1107296256;
        v126 = sub_188A4A8F0;
        v127 = &block_descriptor_184;
        v67 = _Block_copy(&aBlock);
        sub_188D738F4(v62);
        v68 = v65;

        v69 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v128 = sub_188E3FE98;
        v129 = v69;
        aBlock = MEMORY[0x1E69E9820];
        v125 = 1107296256;
        v126 = sub_188C3DD6C;
        v127 = &block_descriptor_189_0;
        v70 = _Block_copy(&aBlock);

        [v30 _animateUsingSpringBehavior_tracking_animations_completion_];
        _Block_release(v70);
        _Block_release(v67);

        sub_188A55B8C(v62);
      }

      v71 = *(v118 + v117);

      v72 = sub_188F35124(1, v71);
      v74 = v73;
      v76 = v75;
      v78 = v77;

      v79 = swift_allocObject();
      v79[2] = v72;
      v79[3] = v74;
      v79[4] = v76;
      v79[5] = v78;
      v80 = *&v123[v48];
      v81 = v106;
      swift_unknownObjectRetain();
      [v80 increment];
      v82 = swift_allocObject();
      *(v82 + 16) = sub_188F3643C;
      *(v82 + 24) = v79;
      v128 = sub_188E3FE58;
      v129 = v82;
      aBlock = MEMORY[0x1E69E9820];
      v125 = 1107296256;
      v126 = sub_188A4A8F0;
      v127 = &block_descriptor_172;
      v83 = _Block_copy(&aBlock);
      v84 = v81;

      v85 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v128 = sub_188E3FE98;
      v129 = v85;
      aBlock = MEMORY[0x1E69E9820];
      v125 = 1107296256;
      v126 = sub_188C3DD6C;
      v127 = &block_descriptor_177;
      v86 = _Block_copy(&aBlock);

      [v116 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v86);
      _Block_release(v83);

      [*&v123[v108] complete];
      swift_unknownObjectRelease();
      v87 = 0;
      v88 = v111;
LABEL_18:
      v99 = v122;
      sub_188D7B348(v122);

      return sub_188A55B8C(v87);
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  aBlock = 0;
  v125 = 0xE000000000000000;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000061, 0x800000018A693850);
  v101 = [isEscapingClosureAtFileLocation view];
  v102 = [v101 _conciseParentDescription];

  v103 = sub_18A4A7288();
  v105 = v104;

  MEMORY[0x18CFE22D0](v103, v105);

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

id sub_188F36294(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  [*(a1 + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion) increment];
  v4 = sub_188D845C8();
  [v4 setPaused_];

  v6.receiver = v2;
  v6.super_class = type metadata accessor for _UIMagicMorphAnimation.InteractionAssertion();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_188F36334(uint64_t a1)
{
  if (*(a1 + 129))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

id sub_188F363D0()
{
  v1 = *(v0 + 16);
  [v1 setAlpha_];

  return [v1 updateTraitsIfNeeded];
}

void sub_188F3649C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong setCenter_];
}

uint64_t objectdestroy_133Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188F365B4()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 16))();
  return v1(v2);
}

id sub_188F36620()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 setAlpha_];
}

uint64_t objectdestroy_204Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double static _UICornerInsets.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

BOOL sub_188F368B4(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1] && a1[3].f64[0] == a2[3].f64[0])
  {
    return a1[3].f64[1] == a2[3].f64[1];
  }

  return result;
}

double _UICornerInsets.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_188F36B60(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t _UICornerInsets.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A89A8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  type metadata accessor for CGSize(0);
  sub_188F36D5C(&qword_1EA937200);
  sub_18A4A8658();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_18A4A8658();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_18A4A8658();
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    sub_18A4A8658();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

double sub_188F36B04@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_188F36B60(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_188F36B60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_18A4A8978();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  type metadata accessor for CGSize(0);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  sub_188F36D5C(&qword_1EA937208);
  sub_18A4A8648();
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  sub_18A4A8648();
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  sub_18A4A8648();
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  sub_18A4A8648();
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v6;
  a2[7] = v7;
  return result;
}

uint64_t sub_188F36D5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_188F36DD4(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration;
  v4 = *(v1 + OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration);
  if (a1)
  {
    if (!v4)
    {
      return;
    }

    sub_188A34624(0, &qword_1EA92FE90);
    v6 = v4;
    v7 = a1;
    v8 = sub_18A4A7C88();

    if (v8)
    {
      return;
    }

    v4 = *(v2 + v3);
  }

  if (v4)
  {
    v9 = [v4 searchBarView];
    [v9 removeFromSuperview];

    v10 = *(v2 + v3);
    if (v10)
    {
      v11 = [v10 _borrowedAssertion];
      if (v11)
      {
        [v11 _invalidate];
        swift_unknownObjectRelease();
      }

      v12 = *(v2 + v3);
      if (v12)
      {
        [v12 _setSearchFieldHost_];
        v13 = *(v2 + v3);
        if (v13)
        {
          [v13 setSearchIconMatchedViewIdentifier_];
          v14 = *(v2 + v3);
          if (v14)
          {

            [v14 setAutomaticallyActivatesSearch_];
          }
        }
      }
    }
  }
}

void sub_188F36F38()
{
  v1 = OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration;
  v2 = *&v0[OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration];
  if (v2)
  {
    [v2 _setSearchFieldHost_];
  }

  v3 = [objc_msgSend(v0 host)];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = [v3 selectedTab];

    if (v4)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
LABEL_11:
        v7 = [v5 automaticallyActivatesSearch];
        goto LABEL_12;
      }
    }
  }

  v6 = [objc_msgSend(v0 host)];
  swift_unknownObjectRelease();
  if (!v6)
  {
    v7 = 0;
LABEL_15:
    v8 = *&v0[v1];
    if (!v8)
    {
      return;
    }

    goto LABEL_16;
  }

  v7 = [v6 selectedViewController];

  if (!v7)
  {
    goto LABEL_15;
  }

  v4 = [v7 _uip_tabElement];

  if (!v4)
  {
    v7 = 0;
    v8 = *&v0[v1];
    if (!v8)
    {
      return;
    }

    goto LABEL_16;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  v8 = *&v0[v1];
  if (!v8)
  {
    return;
  }

LABEL_16:
  [v8 setAutomaticallyActivatesSearch_];
  v9 = *&v0[v1];
  if (v9)
  {
    v10 = v9;
    v11 = sub_18A4A7258();
    [v10 setSearchIconMatchedViewIdentifier_];
  }
}

void sub_188F371C8(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView;
  v4 = *&v1[OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView];
  if (!v4)
  {
    return;
  }

  if (a1)
  {
    type metadata accessor for _UITabAccessoryContainer();
    v6 = v4;
    v7 = a1;
    v8 = sub_18A4A7C88();

    if (v8)
    {
      return;
    }

    v4 = *&v2[v3];
    if (!v4)
    {
      return;
    }
  }

  v16 = v4;
  v9 = [v16 superview];
  v10 = [v2 container];
  v11 = v10;
  if (!v9)
  {

    goto LABEL_10;
  }

  sub_188A34624(0, &qword_1ED48F680);
  v12 = sub_18A4A7C88();

  if ((v12 & 1) == 0)
  {
LABEL_10:
    v14 = [v2 container];
    [v14 addSubview_];

    v15 = [v2 container];
    [v15 setNeedsLayout];

    v13 = v15;
    goto LABEL_11;
  }

  v13 = v16;
LABEL_11:
}

id sub_188F3744C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____UITabBarContentLayoutManager_hostedAccessoryConfiguration];
  if (v2)
  {
    v3 = OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState;
    if (v0[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState] == 3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v5 = v2;
    v6 = [objc_msgSend(v1 host)];
    swift_unknownObjectRelease();
    [(UITabAccessory *)v5 _setEnvironment:v6];
    v7 = *&v1[OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView];
    if (v7)
    {
      v8 = v1[v3] == 2;
      v9 = v7;
      sub_189173674(v8);
    }
  }

  return [v1 setNeedsAccessoryDisplayStateUpdate_];
}

void sub_188F37598(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_msgSend(v1 host)];
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = [v4 window];
    if (v5)
    {

      if ((a1 & 0xFE) == 2 || (v6 = [v1 searchContainerView]) == 0)
      {
        v12 = 0;
      }

      else
      {
        v7 = v6;
        v8 = [v6 superview];
        v9 = [v1 container];
        v10 = v9;
        if (v8)
        {
          sub_188A34624(0, &qword_1ED48F680);
          v11 = sub_18A4A7C88();

          if (v11)
          {

            v12 = 0;
            goto LABEL_18;
          }
        }

        else
        {
        }

        v14 = [v2 container];
        [v14 addSubview_];

        v15 = objc_opt_self();
        v16 = swift_allocObject();
        *(v16 + 16) = v2;
        v17 = swift_allocObject();
        *(v17 + 16) = sub_188F3AB1C;
        *(v17 + 24) = v16;
        v70 = sub_188E3FE50;
        v71 = v17;
        aBlock = MEMORY[0x1E69E9820];
        v67 = 1107296256;
        v68 = sub_188A4A968;
        v69 = &block_descriptor_27_0;
        v18 = _Block_copy(&aBlock);
        v19 = v2;

        [v15 performWithoutAnimation_];

        _Block_release(v18);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          goto LABEL_72;
        }

        v12 = sub_188F3AB1C;
      }

LABEL_18:
      v21 = OBJC_IVAR____UITabBarContentLayoutManager_morphAnimation;
      v22 = *&v2[OBJC_IVAR____UITabBarContentLayoutManager_morphAnimation];
      if (!v22)
      {
        v29 = sub_188F39CAC(v2[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState]);
        if (!(v29 >> 62))
        {

          sub_18A4A8738();
          v30 = v29;
          goto LABEL_29;
        }

LABEL_70:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A00);
        v30 = sub_18A4A83B8();
LABEL_29:
        v31 = objc_allocWithZone(type metadata accessor for _UILiquidMorphAnimation());
        v32 = _UILiquidMorphAnimation.init(morphables:)(v30);
        v33 = *&v2[v21];
        *&v2[v21] = v32;
        v34 = v32;

        v34[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_inferGlassGroupFromContainer] = 1;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {

          sub_1891D5D64();
        }

        v36 = *&v2[v21];
        if (v36)
        {
          v37 = v36;

          v38 = [v2 container];
          swift_unknownObjectWeakAssign();
          sub_1891D5D64();

          sub_188F37598(a1);
          sub_188A55B8C(v12);
          return;
        }

        goto LABEL_74;
      }

      v23 = *&v2[OBJC_IVAR____UITabBarContentLayoutManager_hostedAccessoryConfiguration];
      v65 = v22;
      v62 = v23;
      if (v23)
      {
        v24 = [objc_msgSend(v2 host)];
        swift_unknownObjectRelease();
        if (v24)
        {
          v25 = [v24 _existingView];

          if (v25)
          {
            [v25 layoutIfNeeded];
          }
        }
      }

      v26 = [v2 searchContainerView];
      if (!v26)
      {
LABEL_36:
        [v4 layoutIfNeeded];
        v39 = sub_188F39CAC(a1);
        v40 = v39;
        v63 = v39 >> 62;
        v64 = v12;
        if (v39 >> 62)
        {
          v41 = sub_18A4A7F68();
          if (!v41)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v41)
          {
            goto LABEL_45;
          }
        }

        if (v41 < 1)
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v42 = 0;
        do
        {
          if ((v40 & 0xC000000000000001) != 0)
          {
            v43 = sub_188E49300(v42, v40);
          }

          else
          {
            v43 = *(v40 + 8 * v42 + 32);
          }

          v44 = v43;
          ++v42;
          [v43 setHidden_];
          [v44 layoutIfNeeded];
        }

        while (v41 != v42);
LABEL_45:
        v45 = v2[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState];
        v2[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState] = a1;
        if (a1 == 2)
        {
          v46 = &selRef_heightOfInputViews_;
          v21 = 0x1E71AF000;
          if (v45 != 2)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v46 = &selRef_heightOfInputViews_;
          v21 = &selRef_swipeActionController_willPerformAction_atIndexPath_;
          if (a1 == 3)
          {
            if (v45 == 3)
            {
              goto LABEL_54;
            }

LABEL_53:
            [v2 setNeedsAccessoryDisplayStateUpdate_];
            goto LABEL_54;
          }

          if (v45 & 0xFE) == 2 || ((v45 ^ a1))
          {
            goto LABEL_53;
          }
        }

LABEL_54:
        v47 = [objc_msgSend(v2 v46[237])];
        swift_unknownObjectRelease();
        if (v47)
        {
          v48 = 1;
          if (a1 == 3)
          {
            v48 = 2;
          }

          if (a1 == 2)
          {
            v49 = 0;
          }

          else
          {
            v49 = v48;
          }

          [(UITabBar *)v47 _setCurrentMorphTarget:v49];

          v50 = objc_opt_self();
          a1 = swift_allocObject();
          *(a1 + 16) = v2;
          v51 = swift_allocObject();
          *(v51 + 16) = sub_188F3AAE0;
          *(v51 + 24) = a1;
          v70 = sub_188A4B574;
          v71 = v51;
          aBlock = MEMORY[0x1E69E9820];
          v67 = 1107296256;
          v68 = sub_188A4A968;
          v69 = &block_descriptor_32;
          v12 = _Block_copy(&aBlock);
          v2 = v2;

          [v50 performWithoutAnimation_];
          _Block_release(v12);
          v52 = swift_isEscapingClosureAtFileLocation();

          if ((v52 & 1) == 0)
          {

            if (v63)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA940A00);
              v53 = sub_18A4A83B8();
            }

            else
            {
              sub_18A4A8738();
              v53 = v40;
            }

            LOWORD(aBlock) = 0;
            v67 = 0;
            v68 = 0;
            LOBYTE(v69) = 1;
            v70 = 0x4018000000000000;
            LOBYTE(v71) = 0;
            v54 = swift_allocObject();
            swift_unknownObjectWeakInit();

            sub_1891CF2E4(v53, &aBlock, 0, 0, sub_188F3AAE8, v54);

            v55 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.3];
            if (v55)
            {
              v56 = v55;

              v57 = swift_allocObject();
              *(v57 + 16) = v2;
              v70 = sub_188F3AB0C;
              v71 = v57;
              aBlock = MEMORY[0x1E69E9820];
              v67 = 1107296256;
              v68 = sub_188A4A8F0;
              v69 = &block_descriptor_14_1;
              v58 = _Block_copy(&aBlock);
              v59 = v2;
              v60 = v56;

              v70 = signpost_c2_entryLock_start;
              v71 = 0;
              aBlock = MEMORY[0x1E69E9820];
              v67 = 1107296256;
              v68 = sub_188C3DD6C;
              v69 = &block_descriptor_17;
              v61 = _Block_copy(&aBlock);
              [v50 _animateUsingSpringBehavior_tracking_animations_completion_];
              _Block_release(v61);
              _Block_release(v58);

              if (v62)
              {
                [v59 updateContentLayoutWithAnimated_];
              }

              sub_188A55B8C(v64);

              return;
            }

            goto LABEL_73;
          }

          __break(1u);
          goto LABEL_69;
        }

LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        return;
      }

      v27 = v26;
      if (a1 == 2)
      {
        v28 = 0;
        v21 = 0;
      }

      else
      {
        if (a1 == 3)
        {
LABEL_35:

          goto LABEL_36;
        }

        v28 = 1;
        v21 = a1;
      }

      [*&v26[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView] setUserInteractionEnabled_];
      [*&v27[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView] setUserInteractionEnabled_];
      goto LABEL_35;
    }
  }

  v13 = v1[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState];
  v1[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState] = 2;
  if (v13 != 2)
  {
    [v1 setNeedsAccessoryDisplayStateUpdate_];
  }

  [v1 _removeHostedSearchViewsIfNeeded];
}

void sub_188F380A4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1 != 2)
    {
      if (a1 == 1)
      {
        [Strong _morphToHostedSearchFieldWithActivatesSearchIfPossible_];
      }

      else if (!a1)
      {
        v4 = 2;
LABEL_8:
        sub_188F37598(v4);
      }

      return;
    }

    v4 = 3;
    goto LABEL_8;
  }
}

uint64_t sub_188F38134(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_188F38188(char a1, char a2)
{
  v33 = [objc_msgSend(v2 host)];
  swift_unknownObjectRelease();
  if (!v33)
  {
    return;
  }

  v31 = [objc_msgSend(v2 host)];
  swift_unknownObjectRelease();
  if (!v31)
  {
    goto LABEL_23;
  }

  v5 = [v31 _existingView];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 searchContainerView];
    v8 = [v33 isHidden] ^ a1;
    [v6 setNeedsLayout];
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v33;
    *(v9 + 32) = a1 & 1;
    *(v9 + 40) = v7;
    *(v9 + 48) = v2;
    *(v9 + 56) = v31;
    *(v9 + 64) = v8 & 1;
    v10 = v2;
    v11 = v33;
    v12 = v6;
    v33 = v31;
    v13 = v7;
    v14 = [v33 _selectedViewControllerInTabBar];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 transitionCoordinator];
      if (!v16)
      {

        if (a2)
        {
LABEL_9:
          v18 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.3];
          if (v18)
          {
            v19 = v18;
            v20 = objc_opt_self();
            v21 = swift_allocObject();
            *(v21 + 16) = sub_188F3ACE8;
            *(v21 + 24) = v9;
            v38 = sub_188F3AD00;
            v39 = v21;
            aBlock = MEMORY[0x1E69E9820];
            v35 = 1107296256;
            v36 = sub_188A4A8F0;
            v37 = &block_descriptor_142;
            v22 = _Block_copy(&aBlock);

            v23 = v19;

            [v20 _animateUsingSpringBehavior_tracking_animations_completion_];

            _Block_release(v22);
          }

          else
          {
            __break(1u);
          }

          return;
        }

        goto LABEL_13;
      }

      v17 = v16;
      if (([v16 isCancelled] & 1) == 0)
      {
        v28 = [v10 container];
        v29 = swift_allocObject();
        *(v29 + 16) = sub_188F3ACE8;
        *(v29 + 24) = v9;
        v38 = sub_188F3AD2C;
        v39 = v29;
        aBlock = MEMORY[0x1E69E9820];
        v35 = 1107296256;
        v36 = sub_188C577F0;
        v37 = &block_descriptor_148;
        v30 = _Block_copy(&aBlock);

        [v17 animateAlongsideTransitionInView:v28 animation:v30 completion:0];

        _Block_release(v30);

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    if (a2)
    {
      goto LABEL_9;
    }

LABEL_13:
    if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
    {
      [v12 layoutIfNeeded];
    }

    if (a1)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = 1.0;
    }

    v26 = v11;
    [v26 setAlpha_];
    [v26 setHidden_];
    [v26 updateTraitsIfNeeded];

    if (v13)
    {
      v27 = v13;
      [v27 setAlpha_];
      [v27 setHidden_];
      [v27 updateTraitsIfNeeded];
    }

    [v10 updateLayout];
    [v33 _updateLayoutForStatusBarAndInterfaceOrientation];
    if (v8)
    {
      [v32 layoutIfNeeded];
    }

LABEL_23:
    v24 = v33;
    goto LABEL_24;
  }

  v24 = v31;
LABEL_24:
}

id sub_188F38740(char a1, void *a2, void *a3, char a4, void *a5, void *a6, void *a7, char a8)
{
  if ((a1 & 1) == 0 && [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
  {
    [a2 layoutIfNeeded];
  }

  if (a4)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  v16 = a3;
  [v16 setAlpha_];
  [v16 setHidden_];
  [v16 updateTraitsIfNeeded];

  if (a5)
  {
    v17 = a5;
    [v17 setAlpha_];
    [v17 setHidden_];
    [v17 updateTraitsIfNeeded];
  }

  [a6 updateLayout];
  result = [a7 _updateLayoutForStatusBarAndInterfaceOrientation];
  if (a8)
  {

    return [a2 layoutIfNeeded];
  }

  return result;
}

void sub_188F38934(char a1)
{
  v10 = [objc_msgSend(v1 host)];
  swift_unknownObjectRelease();
  if (v10)
  {
    v3 = [v10 _existingView];
    if (v3)
    {
      v4 = v3;
      [v1 setIsUpdatingContentLayout_];
      [v4 setNeedsLayout];
      if ((a1 & 1) != 0 && (v5 = objc_opt_self(), [v5 areAnimationsEnabled]))
      {
        v6 = swift_allocObject();
        *(v6 + 16) = v4;
        *(v6 + 24) = v10;
        aBlock[4] = sub_188F3ACA0;
        aBlock[5] = v6;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_188A4A8F0;
        aBlock[3] = &block_descriptor_133_0;
        v7 = _Block_copy(aBlock);
        v8 = v4;
        v9 = v10;

        [v5 animateWithDuration:6 delay:v7 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
        _Block_release(v7);
      }

      else
      {
        if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
        {
          [v4 layoutIfNeeded];
        }

        [v10 _updateLayoutForStatusBarAndInterfaceOrientation];
      }

      [v1 setIsUpdatingContentLayout_];
    }

    else
    {
    }
  }
}

BOOL sub_188F38BEC()
{
  v1 = [v0 container];
  v2 = [v1 traitCollection];

  v3 = [v2 userInterfaceIdiom];
  if (v3)
  {
    return 0;
  }

  v5 = [v0 container];
  v6 = [v5 window];

  if (v6 && (v7 = [v6 windowScene], v6, v7))
  {
    v8 = [v7 _interfaceOrientation];

    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  return UIInterfaceOrientationIsLandscape(v9);
}

void sub_188F38D04(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if ([v5 isLandscapeOnPhone])
  {
    v9 = [v5 container];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [v5 container];
    [v18 safeAreaInsets];
    v20 = v19;
    v22 = v21;

    v23 = UIRectInset(v11, v13, v15, v17, 0.0, v22, 0.0, v20);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    if (a1)
    {
      v31 = fmin(CGRectGetWidth(*&v23), 714.0);
      v39.origin.x = v27;
      v39.origin.y = v28;
      v39.size.width = v29;
      v39.size.height = v30;
      v32 = (CGRectGetWidth(v39) - v31) * 0.5;
      v40.origin.x = v27;
      v40.origin.y = v28;
      v40.size.width = v29;
      v40.size.height = v30;
      v41 = CGRectInset(v40, v32, 0.0);
    }

    else
    {
      v33 = [v5 container];
      v34 = [v33 _shouldReverseLayoutDirection];

      v42.origin.x = v27;
      v42.origin.y = v28;
      v42.size.width = v29;
      v42.size.height = v30;
      v35 = CGRectGetWidth(v42) * 0.5 + -44.0;
      if (v34)
      {
        v36 = 8;
      }

      else
      {
        v36 = 2;
      }

      v41.origin.x = UIRectInsetEdges(v36, v27, v28, v29, v30, v35);
    }

    v44 = v41;
    v43.origin.x = a2;
    v43.origin.y = a3;
    v43.size.width = a4;
    v43.size.height = a5;
    CGRectIntersection(v43, v44);
  }
}

void sub_188F38FA4()
{
  v1 = *&v0[OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration];
  if (v1)
  {
    v4 = v1;
    if ([v4 automaticallyActivatesSearch])
    {
      v2 = [objc_msgSend(v0 host)];
      swift_unknownObjectRelease();
      if (!v2)
      {
        __break(1u);
        return;
      }

      [(UITabBar *)v2 _selectCollapseTabIfPossible];

      v3 = v2;
    }

    else
    {
      v3 = v4;
    }
  }
}

void sub_188F390B8(id *a1, id a2, char *a3, _BYTE *a4, char a5, uint64_t a6)
{
  if (*a1)
  {
    v7 = *a1;
    v20 = [a2 contentView];
    sub_189173CA4(v20);
LABEL_6:

    goto LABEL_7;
  }

  v13 = [a2 contentView];
  v14 = objc_allocWithZone(type metadata accessor for _UITabAccessoryContainer());
  v15 = sub_18917372C(v13);
  [v15 setDirectionalLayoutMargins_];
  v16 = *a1;
  *a1 = v15;
  v17 = v15;

  v18 = *&a3[OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView];
  *&a3[OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView] = v15;
  v20 = v17;
  sub_188F371C8(v18);

  *a4 = 1;
  if ((a5 & 1) != 0 || a6)
  {
    v19 = OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_contentView;
    [*&v20[OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_contentView] setAlpha_];
    [*&v20[v19] updateTraitsIfNeeded];
    v7 = [a3 container];
    [v7 layoutIfNeeded];
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t sub_188F39268(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = 1.0;
LABEL_6:
      v5 = OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_contentView;
      v6 = *&v3[OBJC_IVAR____TtC5UIKit24_UITabAccessoryContainer_contentView];
      v7 = v3;
      [v6 setAlpha_];
      [*&v3[v5] updateTraitsIfNeeded];

      return 0;
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = 0.0;
      goto LABEL_6;
    }
  }

  return 1;
}

void sub_188F39334(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    if (*(a3 + 16) == 1)
    {
      [v6 updateContentLayoutWithAnimated_];
    }
  }
}

void sub_188F393C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (!*(Strong + OBJC_IVAR____UITabBarContentLayoutManager_hostedAccessoryConfiguration))
    {
      v2 = OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView;
      v3 = *(Strong + OBJC_IVAR____UITabBarContentLayoutManager_accessoryContainerView);
      if (v3)
      {
        [v3 removeFromSuperview];
        v4 = *&v1[v2];
      }

      else
      {
        v4 = 0;
      }

      *&v1[v2] = 0;
      sub_188F371C8(v4);

      v1 = v4;
    }
  }
}

uint64_t sub_188F3946C(void *a1, void *a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = a7;
  *(v17 + 40) = a8;
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  *(v17 + 64) = a3;
  v18 = *(a4 + 16);
  *(v17 + 72) = *a4;
  *(v17 + 88) = v18;
  *(v17 + 104) = *(a4 + 32);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_188F3ABBC;
  *(v19 + 24) = v17;
  v25[4] = sub_188E3FE50;
  v25[5] = v19;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_188A4A968;
  v25[3] = &block_descriptor_79_1;
  v20 = _Block_copy(v25);
  v21 = a1;
  v22 = a2;
  v23 = a3;

  [v16 _modifyAnimationsByDecomposingGeometricTypes_animations_];
  _Block_release(v20);

  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

id sub_188F39630(id a1, void *a2, void *a3, uint64_t a4, double a5, double a6, CGFloat a7, CGFloat a8)
{
  if ((*(a4 + 32) & 1) == 0)
  {
    a7 = *(a4 + 16);
    a8 = *(a4 + 24);
    a5 = *a4;
    a6 = *(a4 + 8);
  }

  [a1 bounds];
  v23.origin.x = v15;
  v23.origin.y = v16;
  v23.size.width = v17;
  v23.size.height = v18;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = a7;
  v22.size.height = a8;
  v19 = CGRectEqualToRect(v22, v23);
  [a1 setBounds_];
  [a1 setCenter_];
  result = [a1 setDirectionalLayoutMargins_];
  if (!v19)
  {
    [a2 updateAccessoryDisplayStyle];

    return [a3 layoutIfNeeded];
  }

  return result;
}

id sub_188F39774(void *a1, void *a2, void *a3, double a4, double a5, CGFloat a6, CGFloat a7)
{
  [a1 updateAccessoryDisplayStyleIfNeeded];
  [a2 bounds];
  v22.origin.x = v14;
  v22.origin.y = v15;
  v22.size.width = v16;
  v22.size.height = v17;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = a6;
  v21.size.height = a7;
  v18 = CGRectEqualToRect(v21, v22);
  [a2 setBounds_];
  [a2 setCenter_];
  result = [a2 setDirectionalLayoutMargins_];
  if (!v18)
  {
    [a1 updateAccessoryDisplayStyle];

    return [a3 layoutIfNeeded];
  }

  return result;
}

void sub_188F398B4(void *a1, void *a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v23 = 1;
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = a7;
  *(v17 + 40) = a8;
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  *(v17 + 64) = a3;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = v23;
  aBlock[4] = sub_188F3AD98;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A8F0;
  aBlock[3] = &block_descriptor_69_2;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a2;
  v21 = a3;

  [v16 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v18);
}

uint64_t sub_188F39A14(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    return v4;
  }

  v7 = [a1 childViewControllers];
  sub_188A34624(0, &qword_1ED48D5A0);
  v8 = sub_18A4A7548();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_14:

    return 0;
  }

  result = sub_18A4A7F68();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = sub_188E4A2AC(0, v8);
    goto LABEL_8;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 32);
LABEL_8:
    v10 = v9;

    v11 = [a1 childViewControllers];
    v12 = sub_18A4A7548();

    if (v12 >> 62)
    {
      v13 = sub_18A4A7F68();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13 == 1)
    {
      v14 = [v1 _hostedSearchNavigationControllerFrom_];

      return v14;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_188F39CAC(char a1)
{
  v2 = v1;
  v17 = MEMORY[0x1E69E7CC0];
  v4 = [objc_msgSend(v1 host)];
  result = swift_unknownObjectRelease();
  if (v4)
  {
    v6 = 1;
    if (a1 == 3)
    {
      v6 = 2;
    }

    if (a1 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = [(UITabBar *)v4 _viewsForMorphingToTarget:v7];

    sub_188A34624(0, &qword_1ED48F680);
    v9 = sub_18A4A7548();

    sub_18920B994(v9);
    if ((a1 & 0xFE) != 2)
    {
      v10 = [v2 searchContainerView];
      if (v10)
      {
        v11 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
        if (a1)
        {
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_18A64E3F0;
          v13 = *&v11[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView];
          *(v12 + 32) = v13;
          v14 = *&v11[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView];
          *(v12 + 40) = v14;
          v15 = v13;
        }

        else
        {
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_18A64B710;
          v14 = *&v11[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView];
          *(v12 + 32) = v14;
        }

        v16 = v14;
        sub_18920B994(v12);
      }
    }

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188F39E6C(void *a1)
{
  [objc_msgSend(a1 host)];

  return swift_unknownObjectRelease();
}

void sub_188F39EC0()
{
  v1 = *&v0[OBJC_IVAR____UITabBarContentLayoutManager_morphAnimation];
  if (v1)
  {
    *&v0[OBJC_IVAR____UITabBarContentLayoutManager_morphAnimation] = 0;

    v2 = [v0 searchContainerView];
    if (v2)
    {
      v3 = v2;
      if ([v0 isHostingSearchTextField])
      {
        v4 = v0[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState];
        if ((v4 & 0xFE) == 2)
        {
          [*&v3[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView] setHidden_];
          [*&v3[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView] setHidden_];
        }

        else
        {
          [*&v3[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_primaryPlatterView] setHidden_];
          [*&v3[OBJC_IVAR____TtC5UIKit27_UITabHostedSearchContainer_cancelPlatterView] setHidden_];
        }
      }

      else
      {
        [v0 _removeHostedSearchViewsIfNeeded];
      }
    }

    v5 = [objc_msgSend(v0 host)];
    swift_unknownObjectRelease();
    if (v5)
    {
      [(UITabBar *)v5 _morphAnimationsForHostedElementsDidEnd];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_188F3A094(char a1)
{
  v3 = sub_18A4A6E18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A6E58();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188F37598([v1 showsCancelAction]);
  if (a1)
  {
    sub_188A34624(0, &qword_1ED490540);
    v12 = sub_18A4A7A68();
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    aBlock[4] = sub_188F3AB2C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_33_1;
    v14 = _Block_copy(aBlock);
    v15 = v1;

    sub_18A4A6E38();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_188D7609C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
    sub_188BA3728();
    sub_18A4A7EB8();
    MEMORY[0x18CFE29D0](0, v11, v6, v14);
    _Block_release(v14);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v11, v7);
  }
}

void sub_188F3A344(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration);
  if (v1)
  {
    v5 = v1;
    v2 = [v5 automaticallyActivatesSearch];
    v3 = v5;
    if (v2)
    {
      v4 = [v5 searchBarView];
      if (([v4 isFirstResponder] & 1) == 0)
      {
        [v4 becomeFirstResponder];
      }

      v3 = v5;
    }
  }
}

void sub_188F3A440()
{
  v1 = [v0 searchContainerView];
  if (v1)
  {
    v2 = OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration;
    v3 = *&v0[OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration];
    if (v3)
    {
      v7 = v1;
      v4 = v3;
      v5 = [v4 searchBarView];
      [v5 removeFromSuperview];
      [v7 removeFromSuperview];
      sub_188F36DD4(0);
      v6 = *&v0[v2];
      *&v0[v2] = 0;

      sub_188F36F38();
      [v0 setSearchContainerView_];

      v1 = v5;
    }
  }
}

void sub_188F3A588()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = [v0 container];
  v5 = [v2 _screen];

  if ([v0 isHostingSearchTextField])
  {
    v3 = v5;
    [v1 addObserver:v0 selector:sel__updateKeyboardInfo_ name:@"UIKeyboardPrivateWillShowNotification" object:v3];
    [v1 addObserver:v0 selector:sel__updateKeyboardInfo_ name:@"UIKeyboardPrivateWillHideNotification" object:v3];
    [v1 addObserver:v0 selector:sel__updateKeyboardInfo_ name:@"UIKeyboardPrivateDidChangeFrameNotification" object:v3];
  }

  else
  {
    v4 = v5;
    [v1 removeObserver:v0 name:@"UIKeyboardPrivateWillShowNotification" object:v4];
    [v1 removeObserver:v0 name:@"UIKeyboardPrivateWillHideNotification" object:v4];
    [v1 removeObserver:v0 name:@"UIKeyboardPrivateDidChangeFrameNotification" object:v4];
  }
}

void sub_188F3A794()
{
  v1 = v0;
  v2 = [v0 container];
  v3 = [v2 window];

  if (v3)
  {
    v4 = [v3 windowScene];

    if (v4)
    {
      v10 = [v4 keyboardSceneDelegate];

      if (v10)
      {
        v5 = [v0 container];
        if (sub_18A4A2448())
        {
          v6 = sub_18A4A7088();
        }

        else
        {
          v6 = 0;
        }

        [v10 verticalOverlapForView:v5 usingKeyboardInfo:v6];
        v8 = v7;

        [v1 keyboardAdjustment];
        if (v9 != v8)
        {
          [v1 setKeyboardAdjustment_];
          sub_188F37598(v1[OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState]);
        }
      }
    }
  }
}

id _UITabBarContentLayoutManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t objectdestroy_45Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t sub_188F3AC34()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  return v1(0);
}

id sub_188F3ACA0()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) layoutIfNeeded];

  return [v1 _updateLayoutForStatusBarAndInterfaceOrientation];
}

id sub_188F3ADDC()
{
  result = sub_188F3AE00();
  byte_1EA9373B0 = result & 1;
  return result;
}

id sub_188F3AE00()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_18A4A7258();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(&v5, v6);
    sub_188A553EC(v6);
    v3 = sub_18A4A7258();
    v2 = [v0 BOOLForKey_];
  }

  else
  {

    memset(v6, 0, sizeof(v6));
    sub_188A553EC(v6);
  }

  return v2;
}

uint64_t static UIHostingViewBase.UpdateCycle.useSetNeedsLayout.getter()
{
  if (qword_1EA931D10 != -1)
  {
    swift_once();
  }

  return byte_1EA9373B0;
}

uint64_t static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_18A4A6E18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18A4A6E58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UIUpdateCycleEnabled())
  {

    return _s5UIKit17UIHostingViewBaseC11UpdateCycleO20addPreCommitObserveryyyycFZ_0(a1, a2);
  }

  else
  {
    sub_188A5E418();
    v13 = sub_18A4A7A68();
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_33;
    v14 = _Block_copy(aBlock);

    sub_18A4A6E38();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_188D7609C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
    sub_188BA3728();
    sub_18A4A7EB8();
    MEMORY[0x18CFE29D0](0, v11, v7, v14);
    _Block_release(v14);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_188F3B204(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 40;
    do
    {
      v3 = *(v2 - 8);

      v3(v4);

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_188F3B27C()
{
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  return *(v0 + 16);
}

uint64_t sub_188F3B2EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_188F3B364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_18A4A76A8();
  *(v4 + 24) = sub_18A4A7698();
  v6 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F3B3FC, v6, v5);
}

uint64_t sub_188F3B3FC()
{

  v1 = [objc_opt_self() processInfo];
  v2 = [v1 isLowPowerModeEnabled];

  sub_188B0DA90(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_188F3B4A4(uint64_t a1)
{
  v2 = sub_18A4A2458();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_18A4A2418();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_188F3B598()
{
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  return *(v0 + 17);
}

uint64_t sub_188F3B608@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_188F3B680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_18A4A76A8();
  *(v4 + 24) = sub_18A4A7698();
  v6 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F3B718, v6, v5);
}

uint64_t sub_188F3B718()
{

  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  sub_188B0C964(IsReduceTransparencyEnabled);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_188F3B780()
{
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  return *(v0 + 18);
}

uint64_t sub_188F3B7F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_188F3B868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_18A4A76A8();
  *(v4 + 24) = sub_18A4A7698();
  v6 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F3B900, v6, v5);
}

uint64_t sub_188F3B900()
{

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  sub_188B0CC20(IsReduceMotionEnabled);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_188F3B968()
{
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  return *(v0 + 19);
}

uint64_t sub_188F3B9D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_188F3BA50(uint64_t result)
{
  v2 = *(v1 + 19);
  if (v2 != 2)
  {
    if (result != 2 && ((v2 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188B0D714();
    sub_18A4A2BF8();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 19) = result;
  return result;
}

uint64_t sub_188F3BB54()
{
  swift_getKeyPath();
  v6[0] = v0;
  sub_188B0D714();
  sub_18A4A2C08();

  LODWORD(v1) = *(v0 + 19);
  if (v1 == 2)
  {
    v1 = [objc_opt_self() defaultCenter];
    v6[4] = sub_188F3C7B4;
    v6[5] = v0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_188F3B4A4;
    v6[3] = &block_descriptor_44_0;
    v2 = _Block_copy(v6);

    v3 = [v1 addObserverForName:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0 queue:0 usingBlock:v2];
    _Block_release(v2);
    swift_unknownObjectRelease();

    v4 = UIAccessibilityButtonShapesEnabled();
    LOBYTE(v1) = v4;
    sub_188F3BA50(v4);
  }

  return v1 & 1;
}

uint64_t sub_188F3BCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_18A4A76A8();
  *(v4 + 24) = sub_18A4A7698();
  v6 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F3BD68, v6, v5);
}

uint64_t sub_188F3BD68()
{

  v1 = UIAccessibilityButtonShapesEnabled();
  sub_188F3BA50(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_188F3BDD0()
{
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  return *(v0 + 24);
}

uint64_t sub_188F3BE44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188B0D714();
  sub_18A4A2C08();

  v5 = *(v3 + 32);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_188F3BEC4(uint64_t result, char a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 24) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 24) = result;
    *(v2 + 32) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_188B0D714();
  sub_18A4A2BF8();
}

uint64_t sub_188F3BFC8()
{
  v1 = v0;
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_188B0D714();
  sub_18A4A2C08();

  if (*(v0 + 32) != 1)
  {
    return *(v0 + 24);
  }

  v2 = [objc_opt_self() defaultCenter];
  aBlock[4] = sub_188F3C6AC;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188F3B4A4;
  aBlock[3] = &block_descriptor_34;
  v3 = _Block_copy(aBlock);

  v4 = [v2 addObserverForName:@"UIViewGlassLegibilityDidChangeNotification" object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();

  LegibilitySetting = UIViewGlassGetLegibilitySetting();
  v6 = LegibilitySetting;
  if ((*(v1 + 32) & 1) != 0 || *(v1 + 24) != LegibilitySetting)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v1;
    sub_18A4A2BF8();
  }

  else
  {
    *(v1 + 32) = 0;
  }

  return v6;
}

uint64_t sub_188F3C1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_18A4A76C8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_18A4A76A8();

  v10 = sub_18A4A7698();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  sub_188F18724(0, 0, v8, a4, v11);
}

uint64_t sub_188F3C310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_18A4A76A8();
  *(v4 + 72) = sub_18A4A7698();
  v6 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F3C3A8, v6, v5);
}

uint64_t sub_188F3C3A8()
{
  v1 = v0[8];

  v2 = objc_opt_self();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[6] = sub_188F3C7AC;
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_188A4A8F0;
  v0[5] = &block_descriptor_35_0;
  v4 = _Block_copy(v0 + 2);

  [v2 animateWithDuration:0x10000000 delay:v4 options:0 animations:0.2 completion:0.0];
  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_188F3C4E4(uint64_t a1)
{
  swift_unownedRetainStrong();
  LegibilitySetting = UIViewGlassGetLegibilitySetting();
  if ((*(a1 + 32) & 1) != 0 || *(a1 + 24) != LegibilitySetting)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188B0D714();
    sub_18A4A2BF8();
  }

  else
  {
    *(a1 + 32) = 0;
  }
}

uint64_t sub_188F3C608()
{
  v1 = OBJC_IVAR____TtC5UIKit14_UIGlobalState___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_188F3C6E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v2;
}

uint64_t sub_188F3C6F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C48500;

  return sub_188F3C310(a1, v4, v5, v6);
}

uint64_t sub_188F3C7EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C482B4;

  return sub_188F3BCD0(a1, v4, v5, v6);
}

uint64_t sub_188F3C8E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C48500;

  return sub_188F3B868(a1, v4, v5, v6);
}

uint64_t sub_188F3C9D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C48500;

  return sub_188F3B680(a1, v4, v5, v6);
}

uint64_t sub_188F3CAC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C48500;

  return sub_188F3B364(a1, v4, v5, v6);
}

uint64_t sub_188F3CBA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v6 | 7;
  v10 = (v6 | 7) + 57;
  v11 = ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_25;
  }

  v13 = ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v6 + ((((v6 + 48) & ~v9) + (v10 & ~v9) + v11 + 10) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v6) + v7;
  v14 = 8 * v13;
  if (v13 > 3)
  {
    goto LABEL_7;
  }

  v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
  if (HIWORD(v16))
  {
    v15 = *(a1 + v13);
    if (v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v16 <= 0xFF)
    {
      if (v16 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_25;
      }

LABEL_14:
      v17 = (v15 - 1) << v14;
      if (v13 > 3)
      {
        v17 = 0;
      }

      if (v13)
      {
        if (v13 > 3)
        {
          LODWORD(v13) = 4;
        }

        if (v13 > 2)
        {
          if (v13 == 3)
          {
            LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v13) = *a1;
          }
        }

        else if (v13 == 1)
        {
          LODWORD(v13) = *a1;
        }

        else
        {
          LODWORD(v13) = *a1;
        }
      }

      return v8 + (v13 | v17) + 1;
    }

    v15 = *(a1 + v13);
    if (*(a1 + v13))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  v18 = (v10 + ((a1 + v9 + 48) & ~v9)) & ~v9;
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))(v18);
  }

  v20 = *(v18 + v11);
  if (v20 < 2)
  {
    return 0;
  }

  return ((v20 + 2147483646) & 0x7FFFFFFF) + 1;
}

void sub_188F3CD9C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v6 + 80);
  v11 = (v10 | 7) + 57;
  v12 = *(*(*(a4 + 16) - 8) + 64);
  v13 = ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = ((v12 + v10 + ((v12 + v10 + ((v12 + v10 + ((v12 + v10 + ((v10 + ((((v10 + 48) & ~(v10 | 7)) + (v11 & ~(v10 | 7)) + v13 + 10) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10) + v12;
  v15 = a3 >= v9;
  v16 = a3 - v9;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v20 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
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
  }

  else
  {
    v17 = 0;
  }

  if (v9 < a2)
  {
    v18 = ~v9 + a2;
    if (v14 < 4)
    {
      v19 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v22 = v18 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_50:
              if (v17 == 2)
              {
                *&a1[v14] = v19;
              }

              else
              {
                *&a1[v14] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v17)
    {
      a1[v14] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v14] = 0;
  }

  else if (v17)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  v23 = ((v11 + (&a1[(v10 | 7) + 48] & ~(v10 | 7))) & ~(v10 | 7));
  if (v7 < 0xFE)
  {
    v23[v13] = a2 + 1;
  }

  else if (v8 >= a2)
  {
    v25 = *(v6 + 56);

    v25(v23);
  }

  else
  {
    v24 = ~v8 + a2;
    bzero(v23, v13);
    if (v13 <= 3)
    {
      *v23 = v24;
    }

    else
    {
      *v23 = v24;
    }
  }
}

uint64_t sub_188F3D090(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0xFE)
  {
    v6 = 254;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = *(v4 + 80) & 0xF8;
  v8 = v7 | 7;
  v9 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_18;
  }

  v11 = v9 + ((v7 + 64) & ~v8) + 3;
  v12 = v11 & 0xFFFFFFFC;
  if ((v11 & 0xFFFFFFFC) != 0)
  {
    goto LABEL_7;
  }

  v14 = v10 + 1;
  if (HIWORD(v14))
  {
    v13 = *(a1 + v11);
    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v14 <= 0xFF)
    {
      if (v14 < 2)
      {
        goto LABEL_18;
      }

LABEL_7:
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_18;
      }

LABEL_14:
      v15 = v13 - 1;
      if (v12)
      {
        v15 = 0;
        LODWORD(v12) = *a1;
      }

      return v6 + (v12 | v15) + 1;
    }

    v13 = *(a1 + v11);
    if (v13)
    {
      goto LABEL_14;
    }
  }

LABEL_18:
  v17 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v8 + 57) & ~v8;
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))(v17);
  }

  v18 = *(v9 + v17);
  if (v18 < 2)
  {
    return 0;
  }

  return ((v18 + 2147483646) & 0x7FFFFFFF) + 1;
}

void sub_188F3D1E0(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80) & 0xF8;
  v10 = v9 | 7;
  v11 = ((((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v12 = v11 + ((v9 + 64) & ~(v9 | 7)) + 3;
  v13 = a3 - v8 + 1;
  v14 = HIWORD(v13);
  if (v13 < 0x100)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  if (v13 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v14)
  {
    v16 = 4;
  }

  if (v11 + ((v9 + 64) & ~v10) == -3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (a3 > v8)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = a2 - v8;
  if (a2 > v8)
  {
    if (v11 + ((v9 + 64) & ~v10) != -3)
    {
      v20 = ~v8 + a2;
      v21 = a1;
      bzero(a1, v12);
      a1 = v21;
      *v21 = v20;
      v19 = 1;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        *(a1 + v12) = v19;
      }

      else
      {
        *(a1 + v12) = v19;
      }
    }

    else if (v18)
    {
      *(a1 + v12) = v19;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v12) = 0;
  }

  else if (v18)
  {
    *(a1 + v12) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  v22 = (((a1 & 0xFFFFFFFFFFFFFFF8) + v10 + 57) & ~v10);
  if (v6 < 0xFE)
  {
    v22[v11] = a2 + 1;
  }

  else if (v7 >= a2)
  {
    v24 = *(v5 + 56);
    v25 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v10 + 57) & ~v10;

    v24(v25);
  }

  else
  {
    v23 = ~v7 + a2;
    bzero((((a1 & 0xFFFFFFFFFFFFFFF8) + v10 + 57) & ~v10), v11);
    if (v11 <= 3)
    {
      *v22 = v23;
    }

    else
    {
      *v22 = v23;
    }
  }
}

uint64_t sub_188F3D3EC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFC)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 4)
    {
      return v17 - 3;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_188F3D548(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFC)
      {
        *((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 3;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_188F3D738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v22 = a2;
  v23 = a3;
  v24 = a1;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SpringAnimationParameters();
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  *(a5 + 1) = 0u;
  *(a5 + 2) = 0u;
  *a5 = 0u;
  sub_18A4A8408();
  (*(v7 + 32))(v13, v9, a4);
  *&v13[v11[11]] = 0;
  *&v13[v11[12]] = 0;
  v13[v11[13]] = 0;
  v14 = _s6SpringVMa();
  sub_188F3DB28(0, 0, v13, 0, 0, 0, &a5[v14[9]], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
  *&a5[v14[10]] = 0x3FF0000000000000;
  v15 = *(v7 + 16);
  v16 = v22;
  v15(&a5[v14[13]], v22, a4);
  v17 = v23;
  v15(&a5[v14[11]], v23, a4);
  sub_18A4A8408();
  sub_18A4A8408();
  v15(&a5[v14[14]], v16, a4);
  v18 = sub_188F3DC0C(v24, 1, v14);
  v19 = *(v7 + 8);
  v19(v17, a4, v18);
  return (v19)(v16, a4);
}

uint64_t sub_188F3D9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(type metadata accessor for SpringAnimationState() + 36);

  return v9(v7, a2, a3);
}

int *sub_188F3DA8C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for SpringAnimationParameters();
  *(a4 + result[9]) = a5;
  *(a4 + result[10]) = a6;
  *(a4 + result[11]) = a2;
  return result;
}

uint64_t sub_188F3DB28@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>)
{
  *a7 = a8;
  *(a7 + 8) = a9;
  *(a7 + 16) = a10;
  *(a7 + 24) = a1;
  *(a7 + 32) = a11;
  *(a7 + 40) = a12;
  *(a7 + 48) = a13;
  *(a7 + 56) = a2;
  v18 = type metadata accessor for CompoundSpringAnimationParameters();
  v19 = v18[10];
  v20 = type metadata accessor for SpringAnimationParameters();
  result = (*(*(v20 - 8) + 32))(a7 + v19, a3, v20);
  *(a7 + v18[11]) = a4;
  *(a7 + v18[12]) = a5;
  *(a7 + v18[13]) = a6;
  return result;
}

double sub_188F3DC0C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (v6 < 0)
  {
    v8 = *(a1 + 64);
    if (*(a1 + 24) & a2)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = *(a1 + 48);
    }

    if (v6 & a2)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = *(a1 + 56);
    }
  }

  v10 = 6.28318531 / v7 * (6.28318531 / v7);
  v11 = sqrt(v10);
  v12 = (v3 + *(a3 + 36));
  v12[1] = v10;
  v12[2] = v11 + v11;
  v13 = type metadata accessor for CompoundSpringAnimationParameters();
  *(v12 + v13[11]) = v7 == 0.0;
  v14 = 6.28318531 / v9 * (6.28318531 / v9);
  v15 = sqrt(v14);
  v12[5] = v14;
  v12[6] = v15 + v15;
  *(v12 + v13[12]) = v9 == 0.0;
  v16 = 6.28318531 / v8 * (6.28318531 / v8);
  v17 = sqrt(v16);
  v18 = v17 + v17;
  v19 = v12 + v13[10];
  v20 = type metadata accessor for SpringAnimationParameters();
  *&v19[*(v20 + 36)] = v16;
  *&v19[*(v20 + 40)] = v18;
  *(v12 + v13[13]) = v8 == 0.0;
  v21 = *a1;
  v22 = *(a1 + 8);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v23 = *a1;
    *(v3 + 32) = v21;
    v24 = 40;
    v25 = v22;
    goto LABEL_19;
  }

  v26 = *(a1 + 16);
  v27 = *(a1 + 32);
  v28 = *(a1 + 24);
  v23 = 6.28318531 / v21 * (6.28318531 / v21);
  v29 = sqrt(v23);
  v25 = (v29 + v29) * v22;
  *(v3 + 32) = v23;
  *(v3 + 40) = v25;
  *v12 = v22;
  v12[4] = v21;
  if (v28)
  {
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *v3 = v26;
    if (v6)
    {
LABEL_12:
      if (v7 != 0.0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v24 = 16;
  v22 = v27;
LABEL_19:
  *(v3 + v24) = v22;
  if (v7 == 0.0)
  {
LABEL_13:
    *v3 = *v12;
    *(v3 + 8) = 0;
  }

LABEL_14:
  if (v9 == 0.0)
  {
    *(v3 + 16) = v12[4];
    *(v3 + 24) = 0;
  }

  result = v25 / v23;
  *(v3 + *(a3 + 40)) = result;
  return result;
}

void sub_188F3DE0C(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v7 = *(a1 + 16);
  v8 = *(*(a1 + 24) + 8);
  v352 = type metadata accessor for SpringAnimationParameters();
  v345 = *(v352 - 8);
  MEMORY[0x1EEE9AC00](v352);
  v348 = v317 - v9;
  v351 = type metadata accessor for SpringAnimationState();
  MEMORY[0x1EEE9AC00](v351);
  v11 = v317 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v317 - v13;
  v344 = type metadata accessor for CompoundSpringIntegratorState();
  MEMORY[0x1EEE9AC00](v344);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v317 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v317 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v346 = v317 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v317 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v343 = v317 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v347 = v317 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v349 = v317 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v350 = v317 - v33;
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v36);
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  v54.n128_f64[0] = MEMORY[0x1EEE9AC00](v42);
  v55 = v317 - v50;
  if (v7 == &type metadata for UIAnimatableColorMatrix)
  {

    sub_188CB5214(v55);
    return;
  }

  v353 = a2;
  if (v7 == &type metadata for UIAnimatableSize)
  {
    sub_188AB3ADC(a3);
LABEL_25:
    v65 = v353;
    *v353 = v63;
    v65[1] = v64;
    return;
  }

  if (v7 == &type metadata for UIAnimatableColorArray)
  {
    v66 = sub_188EE299C(a3);
LABEL_31:
    *v353 = v66;
    return;
  }

  if (v7 == &type metadata for UIAnimatableCornerRadii)
  {
    v67 = v353;

    sub_188EE58A4(v67, a3);
    return;
  }

  if (v7 == &type metadata for UIAnimatableVector)
  {
    v66 = sub_188D7C028(a3);
    goto LABEL_31;
  }

  if (v7 == &type metadata for UIAnimatableMeshTransform)
  {
    sub_188EE6890(&v354, a3);
    v68 = *v355;
    v69 = v353;
    *v353 = v354;
    *(v69 + 1) = v68;
    *(v69 + 29) = *&v355[13];
    return;
  }

  if (v7 == &type metadata for UIAnimatableFloat)
  {
    goto LABEL_33;
  }

  if (v7 == &type metadata for UIAnimatableNormalizedPoint)
  {
LABEL_34:
    sub_188F0E0B8(a3);
    goto LABEL_25;
  }

  if (v7 == &type metadata for UIAnimatableColor)
  {
    v71 = sub_188CB4190(a3);
LABEL_39:
    v75 = v353;
    *v353 = v71;
    v75[1] = v72;
    v75[2] = v73;
    v75[3] = v74;
    return;
  }

  if (v7 == &type metadata for UIAnimatableScaledFloat)
  {
LABEL_33:
    v70 = sub_188F0E0B0(a3);
    *v353 = v70;
    return;
  }

  if (v7 == &type metadata for UIAnimatableRect)
  {
    sub_188F0E0B4(a3);
    goto LABEL_39;
  }

  if (v7 == &type metadata for UIAnimatableNormalizedRect)
  {
    v71 = sub_188F0E0B4(a3);
    goto LABEL_39;
  }

  if (v7 == &type metadata for UIAnimatableTransform)
  {

    sub_188AB45D8(v55);
    return;
  }

  if (v7 == &type metadata for UIAnimatablePoint)
  {
    goto LABEL_34;
  }

  v337 = v46;
  v335 = v45;
  v56 = *(v52 + 16);
  if (a3 > 0.0)
  {
    v340 = v49;
    v327 = v48;
    v334 = v44;
    v338 = v43;
    v336 = v47;
    v326 = v53;
    v339 = v52;
    v331 = v51;
    v332 = v317 - v50;
    v342 = v52 + 16;
    v341 = v56;
    v56(v54.n128_f64[0]);
    *&v57 = v3 + *(a1 + 36);
    v58 = type metadata accessor for CompoundSpringAnimationParameters();
    LODWORD(v330) = *(*&v57 + v58[13]);
    v328 = v3;
    v333 = v58;
    if (v330 == 1)
    {
      (*(v339 + 24))(v3 + *(a1 + 56), v332, v7);
      v329 = v57;
      v59 = v338;
      sub_18A4A8408();
      v3 = v328;
      v60 = v59;
      v57 = v329;
      (*(v339 + 40))(v328 + *(a1 + 60), v60, v7);
      v58 = v333;
    }

    v61 = *(*&v57 + v58[11]);
    if (v61)
    {
      v62 = v339;
      if (*(*&v57 + v58[12]))
      {
        goto LABEL_91;
      }
    }

    else
    {
      v78 = **&v57;
      v79 = *(*&v57 + 8);
      v80 = *(*&v57 + 16);
      v81 = *(*&v57 + 24);
      v82 = *v3;
      v62 = v339;
      if (*v3 != **&v57 || v3[1] != 0.0)
      {
        LODWORD(v329) = *(*&v57 + v58[11]);
        LODWORD(v324) = v81;
        v325 = v78;
        v83 = v82 - v78;
        if ((v81 - 1) <= 2)
        {
          v84 = __sincos_stret(v82 - v78);
          v85 = atan2(v84.__sinval, v84.__cosval);
          if (v85 > 0.0 && v324 == 2)
          {
            v85 = v85 + -6.28318531;
          }

          if (v85 < 0.0 && v324 == 3)
          {
            v83 = v85 + 6.28318531;
          }

          else
          {
            v83 = v85;
          }
        }

        v88 = v3[1];
        v89 = sqrt(v79);
        v90 = v80 * 0.5;
        if (v80 * 0.5 >= v89)
        {
          if (v89 >= v90)
          {
            v104 = v90 * v83 + v88;
            v105 = v83 + v104 * a3;
            v95 = exp(-(v90 * a3));
            v96 = v95 * v105;
            v97 = v95 * v104;
            v98 = v105 * v90;
          }

          else
          {
            v99 = sqrt(v90 * v90 - v89 * v89);
            v100 = cosh(v99 * a3);
            v101 = 1.0 / v99 * (v90 * v83 + v88);
            v102 = sinh(v99 * a3);
            v103 = v83 * v100 + v101 * v102;
            v95 = exp(-(v90 * a3));
            v96 = v95 * v103;
            v97 = v95 * (v99 * (v101 * v100) + v99 * (v83 * v102));
            v98 = v103 * v90;
          }
        }

        else
        {
          v91 = sqrt(v89 * v89 - v90 * v90);
          v92 = __sincos_stret(v91 * a3);
          v93 = 1.0 / v91 * (v90 * v83 + v88);
          v94 = v92.__cosval * v83 + v92.__sinval * v93;
          v95 = exp(-(v90 * a3));
          v96 = v95 * v94;
          v97 = v95 * (v91 * (v92.__cosval * v93) - v91 * (v83 * v92.__sinval));
          v98 = v94 * v90;
        }

        *v3 = v325 + v96;
        v3[1] = v97 - v95 * v98;
        v62 = v339;
        v58 = v333;
        v61 = LOBYTE(v329);
      }

      if (*(*&v57 + v58[12]))
      {
        if (v61)
        {
LABEL_91:
          *&v329 = *&v57 + v58[10];
          (*(v62 + 24))();
          *&v325 = *(a1 + 56);
          v138 = v338;
          (v341)(v338, v3 + *&v325, v7);
          v324 = *(a1 + 60);
          (v341)(v340, v3 + v324, v7);
          sub_188F3D9DC(v138, v340, v7, v14);
          v323 = *(a1 + 52);
          (v341)(v138, v3 + v323, v7);
          v322 = *(a1 + 48);
          v139 = v340;
          (v341)(v340, v3 + v322, v7);
          sub_188F3D9DC(v138, v139, v7, v11);
          v140 = *(v3 + 1);
          v354 = *v3;
          *v355 = v140;
          *&v355[16] = *(v3 + 2);
          v141 = v331;
          v142 = v14;
          v143 = v329;
          v144 = sub_188F41A34(v142, v11, &v354, v331);
          if (v330 & 1) != 0 || (v330 = *(v8 + 8), v145 = *(v330 + 8), v146 = sub_18A4A7248(), v333 = v145, (v146) && (v147 = v338, sub_18A4A8408(), v143 = v329, v148 = sub_18A4A7248(), (*(v339 + 8))(v147, v7), (v148))
          {
LABEL_101:
            v239 = v338;
            (v341)(v338, v141, v7, v144);
            v240 = v344;
            sub_188F3DA8C(v239, *(*&v143 + *(v352 + 44)), v7, v348, *(v141 + *(v344 + 40) + 32), *(v141 + *(v344 + 40) + 40));
            v241 = v141 + *(v240 + 36);
            v242 = *(v8 + 8);
            v243 = *(*&v242 + 8);
            if (sub_18A4A7248())
            {
              sub_18A4A8408();
              v244 = sub_18A4A7248();
              v245 = *(v339 + 8);
              v245(v239, v7);
              if (v244)
              {
                (*(v345 + 8))(v348, v352);
                v245(v332, v7);
                v246 = *(v339 + 40);
LABEL_111:
                v312 = v353;
                v313 = v328;
                v314 = v323;
                v246(v328 + v323, v241, v7);
                v315 = v351;
                v246(v313 + v322, v241 + *(v351 + 36), v7);
                v316 = v331;
                v246(v313 + *&v325, v331, v7);
                v246(v313 + v324, v316 + *(v315 + 36), v7);
                (v341)(v312, v313 + v314, v7);
                return;
              }
            }

            v247 = v352;
            v248 = v348;
            v249 = *(v348 + *(v352 + 36));
            v250 = v334;
            (*(v8 + 32))(v241, v348, *(v348 + *(v352 + 44)), v7, v8);
            v251 = *(v248 + *(v247 + 40));
            v333 = *(v351 + 36);
            (v341)(v336, v333 + v241, v7);
            v252 = sqrt(v249);
            v253 = v251 * 0.5;
            v344 = v241;
            v346 = v243;
            if (v251 * 0.5 >= v252)
            {
              if (v252 >= v253)
              {
                v299 = v337;
                v300 = v334;
                (v341)(v337, v334, v7);
                sub_18A4A4E98();
                v301 = v335;
                sub_18A4A83C8();
                v257 = *(v339 + 8);
                v330 = (v339 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                v257(v299, v7);
                v302 = v340;
                (v341)(v340, v301, v7);
                sub_18A4A4E98();
                v257(v301, v7);
                v303 = v338;
                sub_18A4A83C8();
                v257(v302, v7);
                exp(-(v253 * a3));
                (v341)(v327, v303, v7);
                sub_18A4A4E98();
                v257(v303, v7);
                v304 = v300;
                (v341)(v301, v300, v7);
                sub_18A4A4E98();
                sub_18A4A83C8();
                v257(v301, v7);
                (v341)(v303, v302, v7);
                sub_18A4A4E98();
                v257(v302, v7);
                v305 = v347;
                (v341)(v347, v304, v7);
                v329 = v242;
                sub_18A4A4E98();
                v306 = v349;
                sub_18A4A83C8();
                v257(v305, v7);
                v307 = v350;
                (v341)(v350, v306, v7);
                sub_18A4A4E98();
                v308 = v306;
                v273 = v338;
                v257(v308, v7);
                v309 = v337;
                sub_18A4A83C8();
                v257(v307, v7);
                (v341)(v301, v309, v7);
                sub_18A4A4E98();
                v257(v309, v7);
                (v341)(v302, v301, v7);
                sub_18A4A4E98();
                v257(v301, v7);
                v298 = v326;
                sub_18A4A83C8();
                v257(v302, v7);
                goto LABEL_110;
              }

              v275 = sqrt(v253 * v253 - v252 * v252);
              cosh(v275 * a3);
              v276 = v340;
              v277 = v334;
              (v341)(v340, v334, v7);
              sub_18A4A4E98();
              v278 = v349;
              (v341)(v349, v277, v7);
              sub_18A4A4E98();
              v279 = v350;
              sub_18A4A83C8();
              v257 = *(v339 + 8);
              v330 = (v339 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v257(v278, v7);
              v280 = v337;
              (v341)(v337, v279, v7);
              sub_18A4A4E98();
              v257(v279, v7);
              sinh(v275 * a3);
              v259 = v335;
              (v341)(v335, v280, v7);
              sub_18A4A4E98();
              v257(v280, v7);
              v281 = v338;
              sub_18A4A83C8();
              v257(v259, v7);
              v257(v276, v7);
              exp(-(v253 * a3));
              (v341)(v327, v281, v7);
              sub_18A4A4E98();
              v257(v281, v7);
              v282 = v334;
              (v341)(v259, v334, v7);
              sub_18A4A4E98();
              (v341)(v276, v259, v7);
              sub_18A4A4E98();
              v257(v259, v7);
              v283 = v347;
              (v341)(v347, v282, v7);
              sub_18A4A4E98();
              v284 = v349;
              sub_18A4A83C8();
              v257(v283, v7);
              v285 = v350;
              (v341)(v350, v284, v7);
              sub_18A4A4E98();
              v257(v284, v7);
              v286 = v280;
              (v341)(v280, v285, v7);
              sub_18A4A4E98();
              v257(v285, v7);
              (v341)(v259, v280, v7);
              sub_18A4A4E98();
              v257(v280, v7);
              v287 = v338;
              v288 = v340;
              sub_18A4A83C8();
              v257(v259, v7);
              v257(v288, v7);
              (v341)();
              sub_18A4A4E98();
              v257(v287, v7);
              v289 = v286;
              v290 = v334;
              (v341)(v289, v334, v7);
              sub_18A4A4E98();
              v291 = v343;
              (v341)(v343, v290, v7);
              sub_18A4A4E98();
              v292 = v347;
              sub_18A4A83C8();
              v257(v291, v7);
              v293 = v349;
              (v341)(v349, v292, v7);
              sub_18A4A4E98();
              v294 = v292;
              v273 = v338;
              v257(v294, v7);
              v295 = v350;
              (v341)(v350, v293, v7);
              sub_18A4A4E98();
              v257(v293, v7);
              v296 = v337;
              sub_18A4A83C8();
              v257(v295, v7);
              v274 = v296;
            }

            else
            {
              __sincos_stret(sqrt(v252 * v252 - v253 * v253) * a3);
              v254 = v340;
              (v341)(v340, v250, v7);
              sub_18A4A4E98();
              v255 = v349;
              (v341)(v349, v250, v7);
              sub_18A4A4E98();
              v256 = v350;
              sub_18A4A83C8();
              v257 = *(v339 + 8);
              v330 = (v339 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v257(v255, v7);
              v258 = v337;
              (v341)(v337, v256, v7);
              sub_18A4A4E98();
              v257(v256, v7);
              v259 = v335;
              (v341)(v335, v258, v7);
              sub_18A4A4E98();
              v257(v258, v7);
              v260 = v250;
              v261 = v338;
              sub_18A4A83C8();
              v257(v259, v7);
              v257(v254, v7);
              exp(-(v253 * a3));
              (v341)(v327, v261, v7);
              sub_18A4A4E98();
              v257(v261, v7);
              (v341)(v259, v260, v7);
              sub_18A4A4E98();
              (v341)(v254, v259, v7);
              sub_18A4A4E98();
              v257(v259, v7);
              v262 = v347;
              (v341)(v347, v260, v7);
              sub_18A4A4E98();
              v263 = v349;
              sub_18A4A83C8();
              v257(v262, v7);
              v264 = v350;
              (v341)(v350, v263, v7);
              sub_18A4A4E98();
              v257(v263, v7);
              v265 = v337;
              (v341)(v337, v264, v7);
              sub_18A4A4E98();
              v257(v264, v7);
              (v341)(v259, v265, v7);
              sub_18A4A4E98();
              v257(v265, v7);
              v266 = v340;
              sub_18A4A83C8();
              v257(v259, v7);
              v257(v266, v7);
              (v341)(v326, v261, v7);
              sub_18A4A4E98();
              v257(v261, v7);
              v267 = v334;
              (v341)(v265, v334, v7);
              sub_18A4A4E98();
              v268 = v267;
              v269 = v343;
              (v341)(v343, v268, v7);
              sub_18A4A4E98();
              sub_18A4A83C8();
              v257(v269, v7);
              v270 = v349;
              (v341)(v349, v262, v7);
              sub_18A4A4E98();
              v257(v262, v7);
              v271 = v350;
              (v341)(v350, v270, v7);
              sub_18A4A4E98();
              v272 = v270;
              v273 = v338;
              v257(v272, v7);
              sub_18A4A83C8();
              v257(v271, v7);
              v274 = v265;
            }

            v257(v274, v7);
            v297 = v340;
            (v341)(v340, v259, v7);
            sub_18A4A4E98();
            v257(v259, v7);
            (v341)(v273, v297, v7);
            v298 = v326;
            sub_18A4A4E98();
            v257(v297, v7);
            sub_18A4A83E8();
LABEL_110:
            v257(v273, v7);
            v310 = v327;
            v311 = v348;
            sub_18A4A83C8();
            v257(v336, v7);
            v257(v334, v7);
            v257(v310, v7);
            (*(v345 + 8))(v311, v352);
            v257(v332, v7);
            v246 = *(v339 + 40);
            v241 = v344;
            v246(v344, v273, v7);
            v246(v333 + v241, v298, v7);
            goto LABEL_111;
          }

          v149 = v352;
          v150 = *(*&v143 + *(v352 + 36));
          (*(v8 + 32))(v141, COERCE_DOUBLE(*&v143), *(*&v143 + *(v352 + 44)), v7, v8);
          v151 = *(*&v143 + *(v149 + 40));
          v319 = *(v351 + 36);
          (v341)(v17, v141 + v319, v7);
          v152 = sqrt(v150);
          v153 = v151 * 0.5;
          if (v151 * 0.5 >= v152)
          {
            if (v152 >= v153)
            {
              v215 = v337;
              (v341)(v337, v20, v7);
              sub_18A4A4E98();
              v216 = v335;
              sub_18A4A83C8();
              v218 = v339 + 8;
              v217 = *(v339 + 8);
              v318 = (v339 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v217(v215, v7);
              v219 = v218;
              v220 = v217;
              v221 = v340;
              (v341)(v340, v216, v7);
              sub_18A4A4E98();
              v220(v216, v7);
              v222 = v338;
              sub_18A4A83C8();
              v321 = v220;
              v220(v221, v7);
              exp(-(v153 * a3));
              (v341)(v25, v222, v7);
              sub_18A4A4E98();
              v220(v222, v7);
              v223 = v335;
              (v341)(v335, v20, v7);
              sub_18A4A4E98();
              v224 = v340;
              sub_18A4A83C8();
              v225 = v321;
              v321(v223, v7);
              (v341)(v338, v224, v7);
              sub_18A4A4E98();
              v225(v224, v7);
              v320 = v219;
              v226 = v225;
              v227 = v347;
              (v341)(v347, v20, v7);
              sub_18A4A4E98();
              v228 = v349;
              sub_18A4A83C8();
              v226(v227, v7);
              v229 = v350;
              (v341)(v350, v228, v7);
              sub_18A4A4E98();
              v230 = v228;
              v231 = v226;
              v226(v230, v7);
              v232 = v337;
              sub_18A4A83C8();
              v231(v229, v7);
              v233 = v335;
              (v341)(v335, v232, v7);
              sub_18A4A4E98();
              v231(v232, v7);
              v234 = v231;
              v235 = v340;
              (v341)(v340, v233, v7);
              sub_18A4A4E98();
              v231(v233, v7);
              v236 = v338;
              sub_18A4A83C8();
              v234(v235, v7);
              v212 = v236;
              v214 = v234;
              v234(v236, v7);
              goto LABEL_100;
            }

            v181 = sqrt(v153 * v153 - v152 * v152);
            cosh(v181 * a3);
            (v341)(v340, v20, v7);
            sub_18A4A4E98();
            v182 = v349;
            (v341)(v349, v20, v7);
            sub_18A4A4E98();
            v183 = v350;
            sub_18A4A83C8();
            v184 = v339 + 8;
            v321 = *(v339 + 8);
            v318 = (v339 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v321(v182, v7);
            v185 = v337;
            (v341)(v337, v183, v7);
            sub_18A4A4E98();
            v321(v183, v7);
            sinh(v181 * a3);
            v186 = v335;
            (v341)(v335, v185, v7);
            sub_18A4A4E98();
            v187 = v184;
            v188 = v321;
            v321(v185, v7);
            v189 = v340;
            sub_18A4A83C8();
            v188(v186, v7);
            v188(v189, v7);
            v320 = v187;
            exp(-(v153 * a3));
            v190 = v338;
            (v341)(v25, v338, v7);
            sub_18A4A4E98();
            v191 = v190;
            v192 = v321;
            v321(v191, v7);
            (v341)(v186, v20, v7);
            sub_18A4A4E98();
            (v341)(v340, v186, v7);
            sub_18A4A4E98();
            v192(v186, v7);
            v193 = v347;
            (v341)(v347, v20, v7);
            sub_18A4A4E98();
            v194 = v349;
            sub_18A4A83C8();
            v192(v193, v7);
            v195 = v350;
            (v341)(v350, v194, v7);
            sub_18A4A4E98();
            v196 = v321;
            v321(v194, v7);
            (v341)(v337, v195, v7);
            sub_18A4A4E98();
            v197 = v196;
            v196(v195, v7);
            v198 = v335;
            v199 = v337;
            (v341)(v335, v337, v7);
            sub_18A4A4E98();
            v197(v199, v7);
            v200 = v338;
            v201 = v340;
            sub_18A4A83C8();
            v202 = v198;
            v203 = v321;
            v321(v202, v7);
            v203(v201, v7);
            (v341)(v346, v200, v7);
            sub_18A4A4E98();
            v203(v200, v7);
            (v341)(v337, v20, v7);
            sub_18A4A4E98();
            v204 = v343;
            (v341)(v343, v20, v7);
            sub_18A4A4E98();
            v205 = v347;
            sub_18A4A83C8();
            v203(v204, v7);
            v206 = v349;
            (v341)(v349, v205, v7);
            sub_18A4A4E98();
            v203(v347, v7);
            v207 = v350;
            (v341)(v350, v206, v7);
            sub_18A4A4E98();
            v208 = v321;
            v321(v206, v7);
            v176 = v335;
            v209 = v337;
            sub_18A4A83C8();
            v210 = v207;
            v179 = v208;
            v208(v210, v7);
            v208(v209, v7);
            v180 = v340;
            (v341)(v340, v176, v7);
          }

          else
          {
            __sincos_stret(sqrt(v152 * v152 - v153 * v153) * a3);
            (v341)(v340, v20, v7);
            sub_18A4A4E98();
            v154 = v349;
            (v341)(v349, v20, v7);
            sub_18A4A4E98();
            v155 = v350;
            sub_18A4A83C8();
            v156 = *(v339 + 8);
            v320 = v339 + 8;
            v318 = (v339 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v156(v154, v7);
            v157 = v337;
            (v341)(v337, v155, v7);
            sub_18A4A4E98();
            v156(v155, v7);
            v158 = v335;
            (v341)(v335, v157, v7);
            sub_18A4A4E98();
            v156(v157, v7);
            v159 = v340;
            sub_18A4A83C8();
            v156(v158, v7);
            v156(v159, v7);
            v160 = v156;
            v317[1] = -v153;
            exp(-(v153 * a3));
            v161 = v338;
            (v341)(v25, v338, v7);
            sub_18A4A4E98();
            v160(v161, v7);
            (v341)(v158, v20, v7);
            sub_18A4A4E98();
            (v341)(v340, v158, v7);
            sub_18A4A4E98();
            v160(v158, v7);
            v162 = v347;
            (v341)(v347, v20, v7);
            sub_18A4A4E98();
            v163 = v349;
            sub_18A4A83C8();
            v160(v162, v7);
            v164 = v350;
            (v341)(v350, v163, v7);
            sub_18A4A4E98();
            v160(v163, v7);
            v321 = v160;
            (v341)(v337, v164, v7);
            sub_18A4A4E98();
            v160(v164, v7);
            v165 = v335;
            v166 = v337;
            (v341)(v335, v337, v7);
            sub_18A4A4E98();
            v321(v166, v7);
            v167 = v338;
            v168 = v340;
            sub_18A4A83C8();
            v169 = v165;
            v170 = v321;
            v321(v169, v7);
            v170(v168, v7);
            (v341)(v346, v167, v7);
            sub_18A4A4E98();
            v170(v167, v7);
            (v341)(v337, v20, v7);
            sub_18A4A4E98();
            v171 = v343;
            (v341)(v343, v20, v7);
            sub_18A4A4E98();
            v172 = v347;
            sub_18A4A83C8();
            v170(v171, v7);
            v173 = v349;
            (v341)(v349, v172, v7);
            sub_18A4A4E98();
            v170(v347, v7);
            v174 = v350;
            (v341)(v350, v173, v7);
            sub_18A4A4E98();
            v175 = v321;
            v321(v173, v7);
            v176 = v335;
            v177 = v337;
            sub_18A4A83C8();
            v178 = v174;
            v179 = v175;
            v175(v178, v7);
            v175(v177, v7);
            v180 = v340;
            (v341)(v340, v176, v7);
          }

          sub_18A4A4E98();
          v179(v176, v7);
          v211 = v338;
          (v341)(v338, v180, v7);
          sub_18A4A4E98();
          v179(v180, v7);
          sub_18A4A83E8();
          v212 = v211;
          v213 = v211;
          v214 = v179;
          v179(v213, v7);
LABEL_100:
          v237 = v212;
          v143 = v329;
          sub_18A4A83C8();
          v214(v17, v7);
          v214(v20, v7);
          v214(v25, v7);
          v238 = *(v339 + 40);
          v141 = v331;
          v238(v331, v237, v7);
          v238(v141 + v319, v346, v7);
          goto LABEL_101;
        }

        v106 = v3[2];
LABEL_90:
        v135 = 6.28318531 / v106 * (6.28318531 / v106);
        v136 = sqrt(v135);
        v137 = *v3 * (v136 + v136);
        v3[4] = v135;
        v3[5] = v137;
        goto LABEL_91;
      }
    }

    v107 = *(*&v57 + 32);
    v108 = *(*&v57 + 40);
    v109 = *(*&v57 + 48);
    v110 = *(*&v57 + 56);
    v106 = v3[2];
    if (v106 != v107 || v3[3] != 0.0)
    {
      LODWORD(v325) = *(*&v57 + 56);
      v329 = v107;
      v111 = v106 - v107;
      if ((v110 - 1) <= 2)
      {
        v112 = __sincos_stret(v106 - v107);
        v113 = atan2(v112.__sinval, v112.__cosval);
        if (v113 > 0.0 && LODWORD(v325) == 2)
        {
          v113 = v113 + -6.28318531;
        }

        if (v113 < 0.0 && LODWORD(v325) == 3)
        {
          v111 = v113 + 6.28318531;
        }

        else
        {
          v111 = v113;
        }
      }

      v116 = v3[3];
      v117 = sqrt(v108);
      v118 = v109 * 0.5;
      if (v109 * 0.5 >= v117)
      {
        if (v117 >= v118)
        {
          v132 = v118 * v111 + v116;
          v133 = v111 + v132 * a3;
          v123 = exp(-(v118 * a3));
          v124 = v123 * v133;
          v125 = v123 * v132;
          v126 = v133 * v118;
        }

        else
        {
          v127 = sqrt(v118 * v118 - v117 * v117);
          v128 = cosh(v127 * a3);
          v129 = 1.0 / v127 * (v118 * v111 + v116);
          v130 = sinh(v127 * a3);
          v131 = v111 * v128 + v129 * v130;
          v123 = exp(-(v118 * a3));
          v124 = v123 * v131;
          v125 = v123 * (v127 * (v129 * v128) + v127 * (v111 * v130));
          v126 = v131 * v118;
        }
      }

      else
      {
        v119 = sqrt(v117 * v117 - v118 * v118);
        v120 = __sincos_stret(v119 * a3);
        v121 = 1.0 / v119 * (v118 * v111 + v116);
        v122 = v120.__cosval * v111 + v120.__sinval * v121;
        v123 = exp(-(v118 * a3));
        v124 = v123 * v122;
        v125 = v123 * (v119 * (v120.__cosval * v121) - v119 * (v111 * v120.__sinval));
        v126 = v122 * v118;
      }

      v134 = v125 - v123 * v126;
      v106 = v329 + v124;
      v3[2] = v329 + v124;
      v3[3] = v134;
      v62 = v339;
      v58 = v333;
    }

    goto LABEL_90;
  }

  v76 = v3 + *(a1 + 52);
  v77 = v353;

  (v56)(v77, v76, v7, v54);
}

__n128 sub_188F41A34@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SpringAnimationState();
  v9 = *(*(v8 - 8) + 32);
  v9(a4, a1, v8);
  v10 = type metadata accessor for CompoundSpringIntegratorState();
  v9(a4 + *(v10 + 36), a2, v8);
  v11 = a4 + *(v10 + 40);
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  result = *(a3 + 32);
  *(v11 + 32) = result;
  return result;
}

uint64_t sub_188F41B24(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v40 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v38 = &v30 - v7;
  v8 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v45 = &v30 - v18;
  v41 = v5;
  v19 = *(v5 + 8);
  v20 = v19[3];
  if ((v20)(v4, v19, v17) & 1) != 0 || (v37 = *(a1 + 48), (v20(v4, v19)))
  {
    v21 = 1;
  }

  else
  {
    v35 = v19[1];
    v36 = v20;
    v33 = *(v35 + 8);
    v43 = v8;
    v22 = v45;
    sub_18A4A83D8();
    v32 = *(v8 + 16);
    v32(v15, v22, v4);
    v34 = v19[2];
    v34(v15, v4, v19);
    v31 = *(v43 + 8);
    v43 += 8;
    v31(v15, v4);
    v23 = v44;
    v24 = v32;
    v32(v44, (v2 + v37), v4);
    sub_18A4A4E98();
    v24(v15, v23, v4);
    v25 = v31;
    v34(v15, v4, v19);
    v25(v15, v4);
    v26 = v42;
    sub_18A4A83C8();
    if (v36(v4, v19))
    {
      v21 = 1;
    }

    else
    {
      sub_18A4A8408();
      v27 = v41;
      v28 = v38;
      (*(v41 + 32))(v4, v41);
      v21 = (*(v27 + 48))(v15, v28, v4, v27);
      (*(v39 + 8))(v28, v40);
      v25(v15, v4);
    }

    v25(v26, v4);
    v25(v44, v4);
    v25(v45, v4);
  }

  return v21 & 1;
}

uint64_t sub_188F41FB0()
{
  result = type metadata accessor for SpringAnimationState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_188F42030(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v7 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((((v6 + v7) & ~v7) + v6 + ((((v6 + v7) & ~v7) + v6 + v7) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v9 = a2 - v5;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v5 + (v10 | v15) + 1;
}

unsigned int *sub_188F42150(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((*(v5 + 64) + v7) & ~v7) + *(v5 + 64);
  v9 = ((v8 + ((v8 + v7) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v6 >= a3)
  {
    v13 = 0;
    v14 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = a3 - v6;
    if (((v8 + ((v8 + v7) & ~v7) + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v18 = *(v5 + 56);

      return v18();
    }
  }

  if (v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v9)
  {
    v16 = ~v6 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void (*UICollectionViewCell.contentConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  UITableViewHeaderFooterView.contentConfiguration.getter();
  return sub_188F42368;
}

void (*UITableViewCell.contentConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  UITableViewHeaderFooterView.contentConfiguration.getter();
  return sub_188F423F8;
}

void sub_188F42410(uint64_t *a1, char a2, void (*a3)(char *))
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

void (*UITableViewHeaderFooterView.contentConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  UITableViewHeaderFooterView.contentConfiguration.getter();
  return sub_188F42504;
}

uint64_t UIListContentView.supports(_:)(uint64_t a1)
{
  sub_188A53994(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t UIListContentView.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 configuration];
  a1[3] = &type metadata for UIListContentConfiguration;
  a1[4] = &protocol witness table for UIListContentConfiguration;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_188F42608@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 configuration];
  a2[3] = &type metadata for UIListContentConfiguration;
  a2[4] = &protocol witness table for UIListContentConfiguration;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_188F42680(uint64_t a1, void **a2)
{
  sub_188A53994(a1, v7);
  v3 = *a2;
  sub_188A53994(v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
  if (swift_dynamicCast())
  {
    [v3 setConfiguration_];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

uint64_t UIListContentView.configuration.setter(uint64_t a1)
{
  sub_188A53994(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
  if (swift_dynamicCast())
  {
    [v1 setConfiguration_];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void (*UIListContentView.configuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 128) = v2;
  v6 = [v2 configuration];
  v5[3] = &type metadata for UIListContentConfiguration;
  v5[4] = &protocol witness table for UIListContentConfiguration;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *v5 = v7;
  return sub_188F4287C;
}

void sub_188F4287C(uint64_t *a1, char a2)
{
  v3 = *a1;
  sub_188A53994(*a1, *a1 + 40);
  if (a2)
  {
    sub_188A53994(v3 + 40, v3 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
    if (swift_dynamicCast())
    {
      [*(v3 + 128) setConfiguration_];
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v3 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
    if (swift_dynamicCast())
    {
      [*(v3 + 128) setConfiguration_];
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v3);

  free(v3);
}

id UIListContentView.init(configuration:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = *(v1 + 16);

  v4 = [v2 initWithConfiguration_];

  return v4;
}

uint64_t sub_188F429F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 configuration];
  a1[3] = &type metadata for UIListContentConfiguration;
  a1[4] = &protocol witness table for UIListContentConfiguration;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_188F42A6C(uint64_t a1)
{
  sub_188A53994(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
  if (swift_dynamicCast())
  {
    [v1 setConfiguration_];
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void (*sub_188F42B00(uint64_t **a1))(void *a1)
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
  v2[4] = UIListContentView.configuration.modify(v2);
  return sub_188E263E8;
}

uint64_t sub_188F42B70(uint64_t a1)
{
  sub_188A53994(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t UIContentView.supports(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (dyld_program_sdk_at_least())
  {
    (*(a3 + 8))(v15, a2, a3);
    __swift_project_boxed_opaque_existential_0(v15, v16);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v7 = DynamicType == swift_getDynamicType();
  }

  else
  {
    (*(a3 + 8))(v15, a2, a3);
    __swift_project_boxed_opaque_existential_0(v15, v16);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374E0);
    v8 = sub_18A4A72F8();
    v10 = v9;
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v11 = swift_getDynamicType();
    v12 = a1[4];
    v15[0] = v11;
    v15[1] = v12;
    if (v8 == sub_18A4A72F8() && v10 == v13)
    {

      v7 = 1;
    }

    else
    {
      v7 = sub_18A4A86C8();
    }
  }

  return v7 & 1;
}

id UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.getter()
{
  v1 = [*(*v0 + 16) preferredSymbolConfiguration];

  return v1;
}

void UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter(void *a1)
{
  sub_188F476EC(a1);
}

void (*UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) preferredSymbolConfiguration];
  return sub_188F42E80;
}

id UIListContentConfiguration.ImageProperties.tintColor.getter()
{
  v1 = [*(*v0 + 16) tintColor];

  return v1;
}

void UIListContentConfiguration.ImageProperties.tintColor.setter(void *a1)
{
  sub_188F477DC(a1);
}

void (*UIListContentConfiguration.ImageProperties.tintColor.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) tintColor];
  return sub_188F42F6C;
}

void *UIListContentConfiguration.ImageProperties.tintColorTransformer.getter@<X0>(id (**a1)(uint64_t a1)@<X8>)
{
  result = [*(*v1 + 16) tintColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188F478CC;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = result;
  return result;
}

void *sub_188F42FFC@<X0>(uint64_t a1@<X0>, id (**a2)(uint64_t)@<X8>)
{
  result = [*(*a1 + 16) tintColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void (*UIListContentConfiguration.ImageProperties.tintColorTransformer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) tintColorTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188F4839C;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_188F43150;
}

UIColor __swiftcall UIListContentConfiguration.ImageProperties.resolvedTintColor(for:)(UIColor a1)
{
  v2 = [*(*v1 + 16) resolvedTintColorForTintColor_];

  v3 = v2;
  result._cachedStyleString = v5;
  result._systemColorName = v4;
  result.super.isa = v3;
  return result;
}

id UIListContentConfiguration.ImageProperties.cornerRadius.setter(double a1)
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
    sub_188A34624(0, &qword_1EA930C18);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setCornerRadius_];
}

id (*UIListContentConfiguration.ImageProperties.cornerRadius.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) cornerRadius];
  *a1 = v3;
  return sub_188F43310;
}

id (*UIListContentConfiguration.ImageProperties.maximumSize.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  [*(*v1 + 16) maximumSize];
  *a1 = v3;
  a1[1] = v4;
  return sub_188F433A4;
}

id (*UIListContentConfiguration.ImageProperties.reservedLayoutSize.modify(void *a1))(double *a1)
{
  a1[2] = v1;
  [*(*v1 + 16) reservedLayoutSize];
  *a1 = v3;
  a1[1] = v4;
  return sub_188F43438;
}

id UIListContentConfiguration.ImageProperties.accessibilityIgnoresInvertColors.setter(char a1)
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
    sub_188A34624(0, &qword_1EA930C18);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAccessibilityIgnoresInvertColors_];
}

id (*UIListContentConfiguration.ImageProperties.accessibilityIgnoresInvertColors.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) accessibilityIgnoresInvertColors];
  return sub_188F435D0;
}

id UIListContentConfiguration.ImageProperties.strokeColor.getter()
{
  v1 = [*(*v0 + 16) strokeColor];

  return v1;
}

void UIListContentConfiguration.ImageProperties.strokeColor.setter(void *a1)
{
  sub_188F478D4(a1);
}

void (*UIListContentConfiguration.ImageProperties.strokeColor.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) strokeColor];
  return sub_188F436CC;
}

void *UIListContentConfiguration.ImageProperties.strokeColorTransformer.getter@<X0>(id (**a1)(uint64_t)@<X8>)
{
  result = [*(*v1 + 16) strokeColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = result;
  return result;
}

void *sub_188F4375C@<X0>(uint64_t a1@<X0>, id (**a2)(uint64_t)@<X8>)
{
  result = [*(*a1 + 16) strokeColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void (*UIListContentConfiguration.ImageProperties.strokeColorTransformer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) strokeColorTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188F4839C;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_188F438B0;
}

UIColor __swiftcall UIListContentConfiguration.ImageProperties.resolvedStrokeColor(for:)(UIColor a1)
{
  v2 = [*(*v1 + 16) resolvedStrokeColorForTintColor_];

  v3 = v2;
  result._cachedStyleString = v5;
  result._systemColorName = v4;
  result.super.isa = v3;
  return result;
}

id UIListContentConfiguration.ImageProperties.strokeWidth.setter(double a1)
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
    sub_188A34624(0, &qword_1EA930C18);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setStrokeWidth_];
}

id (*UIListContentConfiguration.ImageProperties.strokeWidth.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) strokeWidth];
  *a1 = v3;
  return sub_188F43A70;
}

id UIListContentConfiguration.ImageProperties._monochromaticTreatment.setter(uint64_t a1)
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
    sub_188A34624(0, &qword_1EA930C18);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 _setMonochromaticTreatment_];
}

id (*UIListContentConfiguration.ImageProperties._monochromaticTreatment.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) _monochromaticTreatment];
  return sub_188F43BE0;
}

double sub_188F43C04()
{
  result = -1.79769313e308;
  qword_1EA92F9C0 = 0xFFEFFFFFFFFFFFFFLL;
  return result;
}

double static UIListContentConfiguration.ImageProperties.standardDimension.getter()
{
  if (qword_1EA92F9B0 != -1)
  {
    swift_once();
  }

  return *&qword_1EA92F9C0;
}

void (*UIListContentConfiguration.TextProperties.font.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) font];
  return sub_188F43CFC;
}

id UIListContentConfiguration.TextProperties.color.getter()
{
  v1 = [*(*v0 + 16) color];

  return v1;
}

void (*UIListContentConfiguration.TextProperties.color.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) color];
  return sub_188F43DB0;
}

void sub_188F43DC8(void **a1, char a2, void (*a3)(void))
{
  v4 = *a1;
  v6 = *a1;
  if (a2)
  {
    v5 = v4;
    a3();
  }

  else
  {
    (a3)(v4);
  }
}

void *UIListContentConfiguration.TextProperties.colorTransformer.getter@<X0>(id (**a1)(uint64_t)@<X8>)
{
  result = [*(*v1 + 16) colorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = result;
  return result;
}

void *sub_188F43EB4@<X0>(uint64_t a1@<X0>, id (**a2)(uint64_t)@<X8>)
{
  result = [*(*a1 + 16) colorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void sub_188F43F2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_188D738F4(*a1);
  v3 = sub_188CA0300(&qword_1EA930C48, off_1E70EA118, &unk_1EA937500);
  v4 = v3;
  if (v1)
  {
    v8[4] = v1;
    v8[5] = v2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_188BC2240;
    v8[3] = &block_descriptor_209;
    v5 = _Block_copy(v8);
    v6 = v4;
  }

  else
  {
    v7 = v3;
    v5 = 0;
  }

  [v4 setColorTransformer_];
  _Block_release(v5);
}

void UIListContentConfiguration.TextProperties.colorTransformer.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_188CA0300(&qword_1EA930C48, off_1E70EA118, &unk_1EA937500);
  v4 = v3;
  if (v1)
  {
    v8[4] = v1;
    v8[5] = v2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_188BC2240;
    v8[3] = &block_descriptor_38_1;
    v5 = _Block_copy(v8);
    v6 = v4;
  }

  else
  {
    v7 = v3;
    v5 = 0;
  }

  [v4 setColorTransformer_];
  _Block_release(v5);
}

void (*UIListContentConfiguration.TextProperties.colorTransformer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) colorTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188F4839C;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_188F441DC;
}

void sub_188F441DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    sub_188D738F4(*(*a1 + 48));
    v5 = sub_188CA0300(&qword_1EA930C48, off_1E70EA118, &unk_1EA937500);
    v6 = v5;
    if (v3)
    {
      v2[4] = v3;
      v2[5] = v4;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = sub_188BC2240;
      v2[3] = &block_descriptor_41_0;
      v7 = _Block_copy(v2);
      v8 = v6;
    }

    else
    {
      v13 = v5;
      v7 = 0;
    }

    [v6 setColorTransformer_];
    _Block_release(v7);

    sub_188EB09A0(v2[6], v2[7]);
  }

  else
  {
    v9 = sub_188CA0300(&qword_1EA930C48, off_1E70EA118, &unk_1EA937500);
    v10 = v9;
    if (v3)
    {
      v2[4] = v3;
      v2[5] = v4;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = sub_188BC2240;
      v2[3] = &block_descriptor_44_1;
      v11 = _Block_copy(v2);
      v12 = v10;
    }

    else
    {
      v14 = v9;
      v11 = 0;
    }

    [v10 setColorTransformer_];
    _Block_release(v11);
  }

  free(v2);
}

UIColor __swiftcall UIListContentConfiguration.TextProperties.resolvedColor()()
{
  v1 = [*(*v0 + 16) resolvedColor];

  v2 = v1;
  result._cachedStyleString = v4;
  result._systemColorName = v3;
  result.super.isa = v2;
  return result;
}

id UIListContentConfiguration.TextProperties.alignment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [*(*v1 + 16) alignment];
  if (result >= 3)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
    type metadata accessor for __UIListContentTextAlignment(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](0x67696C4174786554, 0xED0000746E656D6ELL);
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_188F44520@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
    type metadata accessor for __UIListContentTextAlignment(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](0x67696C4174786554, 0xED0000746E656D6ELL);
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

id (*UIListContentConfiguration.TextProperties.alignment.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  sub_188F44520([*(*v1 + 16) alignment], (a1 + 8));
  return sub_188F4468C;
}

id (*UIListContentConfiguration.TextProperties.lineBreakMode.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) lineBreakMode];
  return sub_188F44704;
}

id (*UIListContentConfiguration.TextProperties.numberOfLines.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) numberOfLines];
  return sub_188F44794;
}

id UIListContentConfiguration.TextProperties.adjustsFontSizeToFitWidth.setter(char a1)
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
    sub_188A34624(0, &qword_1EA930C48);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAdjustsFontSizeToFitWidth_];
}

id (*UIListContentConfiguration.TextProperties.adjustsFontSizeToFitWidth.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) adjustsFontSizeToFitWidth];
  return sub_188F44928;
}

id UIListContentConfiguration.TextProperties.minimumScaleFactor.setter(double a1)
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
    sub_188A34624(0, &qword_1EA930C48);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setMinimumScaleFactor_];
}

id (*UIListContentConfiguration.TextProperties.minimumScaleFactor.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) minimumScaleFactor];
  *a1 = v3;
  return sub_188F44AB4;
}

id UIListContentConfiguration.TextProperties.allowsDefaultTighteningForTruncation.setter(char a1)
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
    sub_188A34624(0, &qword_1EA930C48);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAllowsDefaultTighteningForTruncation_];
}

id (*UIListContentConfiguration.TextProperties.allowsDefaultTighteningForTruncation.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) allowsDefaultTighteningForTruncation];
  return sub_188F44C4C;
}

id UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter(char a1)
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
    sub_188A34624(0, &qword_1EA930C48);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAdjustsFontForContentSizeCategory_];
}

id (*UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) adjustsFontForContentSizeCategory];
  return sub_188F44DE4;
}

id UIListContentConfiguration.TextProperties.showsExpansionTextWhenTruncated.setter(char a1)
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
    sub_188A34624(0, &qword_1EA930C48);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setShowsExpansionTextWhenTruncated_];
}

id (*UIListContentConfiguration.TextProperties.showsExpansionTextWhenTruncated.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) showsExpansionTextWhenTruncated];
  return sub_188F44F7C;
}

id UIListContentConfiguration.TextProperties.transform.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [*(*v1 + 16) transform];
  if (result >= 4)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
    type metadata accessor for __UIListContentTextTransform(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](0x6E61725474786554, 0xED00006D726F6673);
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id sub_188F450CC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_188CA0300(&qword_1EA930C48, off_1E70EA118, &unk_1EA937500);

  return [v2 setTransform_];
}

unint64_t sub_188F45134@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A68EE10);
    type metadata accessor for __UIListContentTextTransform(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    MEMORY[0x18CFE22D0](0x6E61725474786554, 0xED00006D726F6673);
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

id (*UIListContentConfiguration.TextProperties.transform.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  sub_188F45134([*(*v1 + 16) transform], (a1 + 8));
  return sub_188F452A0;
}

id sub_188F452AC(uint64_t a1, uint64_t a2, const char **a3)
{
  v4 = *(a1 + 8);
  v5 = sub_188CA0300(&qword_1EA930C48, off_1E70EA118, &unk_1EA937500);
  v6 = *a3;

  return [v5 v6];
}

id UIListContentConfiguration.TextProperties._monochromaticTreatment.setter(uint64_t a1)
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
    sub_188A34624(0, &qword_1EA930C48);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 _setMonochromaticTreatment_];
}

id (*UIListContentConfiguration.TextProperties._monochromaticTreatment.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) _monochromaticTreatment];
  return sub_188F45474;
}

void (*UIListContentConfiguration.image.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) image];
  return sub_188F455D4;
}

void (*UIListContentConfiguration.text.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [*(*v1 + 16) text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18A4A7288();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_188F456A0;
}

id UIListContentConfiguration.attributedText.getter()
{
  v1 = [*(*v0 + 16) attributedText];

  return v1;
}

void UIListContentConfiguration.attributedText.setter(void *a1)
{
  sub_188F47C94(a1);
}

void (*UIListContentConfiguration.attributedText.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) attributedText];
  return sub_188F45780;
}

void sub_188F457C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *(a1 + 8);
  v7 = sub_188CA0300(&qword_1EA9305E8, off_1E70EA108, &qword_1EA9374C0);
  v8 = v7;
  if (v6)
  {
    v9 = sub_18A4A7258();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [v7 *a5];
}

void (*UIListContentConfiguration.secondaryText.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [*(*v1 + 16) secondaryText];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18A4A7288();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_188F458FC;
}

void sub_188F45908(uint64_t a1, char a2, SEL *a3)
{
  v4 = *(a1 + 8);
  if (a2)
  {

    v5 = sub_188CA0300(&qword_1EA9305E8, off_1E70EA108, &qword_1EA9374C0);
    v8 = v5;
    if (v4)
    {
      v6 = sub_18A4A7258();

      v5 = v8;
    }

    else
    {
      v6 = 0;
    }

    [v5 *a3];
  }

  else
  {
    v8 = sub_188CA0300(&qword_1EA9305E8, off_1E70EA108, &qword_1EA9374C0);
    v7 = v8;
    if (v4)
    {
      v6 = sub_18A4A7258();
    }

    else
    {
      v6 = 0;
    }

    [v8 *a3];
  }
}

id UIListContentConfiguration.secondaryAttributedText.getter()
{
  v1 = [*(*v0 + 16) secondaryAttributedText];

  return v1;
}

void UIListContentConfiguration.secondaryAttributedText.setter(void *a1)
{
  sub_188F47D84(a1);
}

void (*UIListContentConfiguration.secondaryAttributedText.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) secondaryAttributedText];
  return sub_188F45B08;
}

uint64_t sub_188F45B20@<X0>(SEL *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [*(*v2 + 16) *a1];
  [v4 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA930C48);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500);
  result = swift_allocObject();
  *(result + 16) = v6;
  *a2 = result;
  return result;
}

void sub_188F45C18(uint64_t *a1, unint64_t *a2, uint64_t a3, SEL *a4)
{
  v6 = *a1;
  v7 = sub_188CA0300(&qword_1EA9305E8, off_1E70EA108, &qword_1EA9374C0);
  v8 = *(v6 + 16);
  v9 = v7;
  v10 = v8;

  [v10 copy];

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, a2);
  swift_dynamicCast();
  [v9 *a4];
}

id UIListContentConfiguration.prefersSideBySideTextAndSecondaryText.setter(char a1)
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
    sub_188A34624(0, &qword_1EA9305E8);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setPrefersSideBySideTextAndSecondaryText_];
}

id (*UIListContentConfiguration.prefersSideBySideTextAndSecondaryText.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) prefersSideBySideTextAndSecondaryText];
  return sub_188F45EAC;
}

id UIListContentConfiguration.imageToTextPadding.setter(double a1)
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
    sub_188A34624(0, &qword_1EA9305E8);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setImageToTextPadding_];
}

id (*UIListContentConfiguration.imageToTextPadding.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) imageToTextPadding];
  *a1 = v3;
  return sub_188F46038;
}

id UIListContentConfiguration.textToSecondaryTextHorizontalPadding.setter(double a1)
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
    sub_188A34624(0, &qword_1EA9305E8);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setTextToSecondaryTextHorizontalPadding_];
}

id (*UIListContentConfiguration.textToSecondaryTextHorizontalPadding.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) textToSecondaryTextHorizontalPadding];
  *a1 = v3;
  return sub_188F461C4;
}

id UIListContentConfiguration.textToSecondaryTextVerticalPadding.setter(double a1)
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
    sub_188A34624(0, &qword_1EA9305E8);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setTextToSecondaryTextVerticalPadding_];
}

id (*UIListContentConfiguration.textToSecondaryTextVerticalPadding.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) textToSecondaryTextVerticalPadding];
  *a1 = v3;
  return sub_188F46350;
}

id UIListContentConfiguration.alpha.setter(double a1)
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
    sub_188A34624(0, &qword_1EA9305E8);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAlpha_];
}

id (*UIListContentConfiguration.alpha.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) alpha];
  *a1 = v3;
  return sub_188F464DC;
}

id UIListContentConfiguration._enforcesMinimumHeight.setter(char a1)
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
    sub_188A34624(0, &qword_1EA9305E8);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 _setEnforcesMinimumHeight_];
}

id (*UIListContentConfiguration._enforcesMinimumHeight.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) _enforcesMinimumHeight];
  return sub_188F46674;
}

Swift::Void __swiftcall UIListContentConfiguration._setTextEditingConfiguration(_:)(_UIContentViewEditingConfiguration_optional *a1)
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
    sub_188A34624(0, &qword_1EA9305E8);
    swift_dynamicCast();
    v5 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
    v6 = swift_allocObject();
    *(v6 + 16) = v7;

    *v1 = v6;
  }

  [v5 _setTextEditingConfiguration_];
}

uint64_t sub_188F467E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  v7 = v4;
  v8 = [v7 updatedConfigurationForState_];

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
  result = swift_allocObject();
  *(result + 16) = v8;
  *a2 = result;
  return result;
}

id UIListContentConfiguration.ImageProperties._strokeColor.getter()
{
  v1 = [*(*v0 + 16) _strokeColor];

  return v1;
}

void UIListContentConfiguration.ImageProperties._strokeColor.setter(void *a1)
{
  sub_188F47E74(a1);
}

void (*UIListContentConfiguration.ImageProperties._strokeColor.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) _strokeColor];
  return sub_188F469C8;
}

void sub_188F469E0(id *a1, char a2, void (*a3)(id))
{
  v6 = *a1;
  if (a2)
  {
    v4 = v6;
    a3(v6);

    v5 = v4;
  }

  else
  {
    a3(*a1);
    v5 = v6;
  }
}

void *UIListContentConfiguration.ImageProperties._strokeColorTransformer.getter@<X0>(id (**a1)(uint64_t)@<X8>)
{
  result = [*(*v1 + 16) _strokeColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  a1[1] = result;
  return result;
}

void *sub_188F46AD8@<X0>(uint64_t a1@<X0>, id (**a2)(uint64_t)@<X8>)
{
  result = [*(*a1 + 16) _strokeColorTransformer];
  if (result)
  {
    v4 = result;
    result = swift_allocObject();
    result[2] = v4;
    v5 = sub_188F4839C;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

void sub_188F46B50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *a1;
  v9 = a1[1];
  sub_188D738F4(*a1);
  v10 = sub_188CA0300(&qword_1EA930C18, off_1E70EA110, &unk_1EA9374F0);
  v11 = v10;
  if (v8)
  {
    v15[4] = v8;
    v15[5] = v9;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_188BC2240;
    v15[3] = a5;
    v12 = _Block_copy(v15);
    v13 = v11;
  }

  else
  {
    v14 = v10;
    v12 = 0;
  }

  [v11 *a6];
  _Block_release(v12);
}

void sub_188F46C64(uint64_t *a1, uint64_t a2, SEL *a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_188CA0300(&qword_1EA930C18, off_1E70EA110, &unk_1EA9374F0);
  v8 = v7;
  if (v5)
  {
    v12[4] = v5;
    v12[5] = v6;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_188BC2240;
    v12[3] = a2;
    v9 = _Block_copy(v12);
    v10 = v8;
  }

  else
  {
    v11 = v7;
    v9 = 0;
  }

  [v8 *a3];
  _Block_release(v9);
}

void (*UIListContentConfiguration.ImageProperties._strokeColorTransformer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) _strokeColorTransformer];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188F4839C;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_188F46E1C;
}

void sub_188F46E38(uint64_t a1, char a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {
    sub_188D738F4(*(*a1 + 48));
    v10 = sub_188CA0300(&qword_1EA930C18, off_1E70EA110, &unk_1EA9374F0);
    v11 = v10;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_188BC2240;
      v6[3] = a5;
      v12 = _Block_copy(v6);
      v13 = v11;
    }

    else
    {
      v19 = v10;
      v12 = 0;
    }

    [v11 *a4];
    _Block_release(v12);

    sub_188EB09A0(v6[6], v6[7]);
  }

  else
  {
    v15 = sub_188CA0300(&qword_1EA930C18, off_1E70EA110, &unk_1EA9374F0);
    v16 = v15;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_188BC2240;
      v6[3] = a3;
      v17 = _Block_copy(v6);
      v18 = v16;
    }

    else
    {
      v20 = v15;
      v17 = 0;
    }

    [v16 *a4];
    _Block_release(v17);
  }

  free(v6);
}

UIColor __swiftcall UIListContentConfiguration.ImageProperties._resolvedStrokeColor(for:)(UIColor a1)
{
  v2 = [*(*v1 + 16) _resolvedStrokeColorForTintColor_];

  v3 = v2;
  result._cachedStyleString = v5;
  result._systemColorName = v4;
  result.super.isa = v3;
  return result;
}

id UIListContentConfiguration.ImageProperties._strokeWidth.setter(double a1)
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
    sub_188A34624(0, &qword_1EA930C18);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 _setStrokeWidth_];
}

id (*UIListContentConfiguration.ImageProperties._strokeWidth.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  [*(*v1 + 16) _strokeWidth];
  *a1 = v3;
  return sub_188F471B4;
}

uint64_t sub_188F471F8()
{
  v1 = sub_18A4A8918();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v10 - v6;
  v10[1] = *v0;
  v10[0] = MEMORY[0x1E69E7CC0];
  v8 = sub_18A4A8908();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932220);
  sub_188E32958();
  return sub_18A4A8928();
}

uint64_t sub_188F473C0()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration____lazy_storage___wrappedConfigurationIdentifier);
  if (*(v0 + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration____lazy_storage___wrappedConfigurationIdentifier + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_188A53994(v0 + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration, v5);
    __swift_project_boxed_opaque_existential_0(v5, v5[3]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374E0);
    v2 = sub_18A4A72F8();
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

id sub_188F476EC(uint64_t a1)
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
    sub_188A34624(0, &qword_1EA930C18);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setPreferredSymbolConfiguration_];
}

id sub_188F477DC(uint64_t a1)
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
    sub_188A34624(0, &qword_1EA930C18);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setTintColor_];
}

id sub_188F478D4(uint64_t a1)
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
    sub_188A34624(0, &qword_1EA930C18);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setStrokeColor_];
}

id sub_188F479C4(uint64_t a1)
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
    sub_188A34624(0, &qword_1EA930C48);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setFont_];
}

id sub_188F47AB4(uint64_t a1)
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
    sub_188A34624(0, &qword_1EA930C48);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937500);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setColor_];
}

id sub_188F47BA4(uint64_t a1)
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
    sub_188A34624(0, &qword_1EA9305E8);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setImage_];
}

id sub_188F47C94(uint64_t a1)
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
    sub_188A34624(0, &qword_1EA9305E8);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setAttributedText_];
}

id sub_188F47D84(uint64_t a1)
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
    sub_188A34624(0, &qword_1EA9305E8);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374C0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setSecondaryAttributedText_];
}

id sub_188F47E74(uint64_t a1)
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
    sub_188A34624(0, &qword_1EA930C18);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9374F0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 _setStrokeColor_];
}

unint64_t sub_188F47F68()
{
  result = qword_1EA937528;
  if (!qword_1EA937528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937528);
  }

  return result;
}

unint64_t sub_188F47FC0()
{
  result = qword_1EA937530;
  if (!qword_1EA937530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937530);
  }

  return result;
}

unint64_t sub_188F48018()
{
  result = qword_1EA937538;
  if (!qword_1EA937538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937538);
  }

  return result;
}

unint64_t sub_188F48070()
{
  result = qword_1EA937540;
  if (!qword_1EA937540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937540);
  }

  return result;
}

unint64_t sub_188F480C8()
{
  result = qword_1EA937548;
  if (!qword_1EA937548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937548);
  }

  return result;
}

id keypath_get_93Tm@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*(*a1 + 16) *a2];
  *a3 = v5;
  a3[1] = v6;
  return result;
}

void *keypath_get_113Tm@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, void *(*a3)(uint64_t *__return_ptr, id)@<X4>, _BYTE *a4@<X8>)
{
  result = a3(&v6, [*(*a1 + 16) *a2]);
  *a4 = v6;
  return result;
}

uint64_t keypath_set_136Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = *a1;

  return a5(&v7);
}

void *keypath_get_135Tm@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr)@<X3>, void *a3@<X8>)
{
  v5[1] = *a1;
  result = a2(v5);
  *a3 = v5[0];
  return result;
}

uint64_t _UIWindowSceneFullscreenPlacement.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

uint64_t sub_188F48444@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(_UIWindowSceneFullscreenPlacement) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9376F0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

unint64_t sub_188F484A8(uint64_t a1)
{
  result = sub_188F484D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188F484D0()
{
  result = qword_1EA9376F8;
  if (!qword_1EA9376F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9376F8);
  }

  return result;
}

unint64_t sub_188F48528()
{
  result = qword_1EA937700;
  if (!qword_1EA937700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937700);
  }

  return result;
}

unint64_t sub_188F4858C()
{
  result = qword_1EA937708;
  if (!qword_1EA937708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937708);
  }

  return result;
}

unint64_t type metadata accessor for _UIContextMenuModifierKeyService()
{
  result = qword_1EA937790;
  if (!qword_1EA937790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA937790);
  }

  return result;
}

uint64_t sub_188F489E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____UIContextMenuModifierKeyService_observations;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v10 = v9;
LABEL_15:
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v14 = (v10 << 9) | (8 * v13);
      v15 = *(*(v3 + 48) + v14);
      sub_188F48C58(*(v3 + 56) + v14, &v27);
      v25 = v15;
      sub_188E904EC(&v27, &v26);
LABEL_16:
      sub_188F48C90(&v25, &v30);
      v16 = v30;
      if (!v30)
      {
      }

      sub_188E904EC(&v31, v29);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        break;
      }

      [Strong modifierKeyServiceDidChangeCurrentModifierFlags];
      swift_unknownObjectRelease();
      result = sub_188F48D00(v29);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();
    v18 = sub_188A403F4(v16);
    v20 = v19;
    if (v19)
    {
      v21 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(v1 + v2);
      *(v1 + v2) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA3E00();
      }

      sub_188E904EC(*(v23 + 56) + 8 * v21, &v27);
      sub_188F9DDC8(v21, v23);
      *(v1 + v2) = v23;
    }

    else
    {
      v27 = 0;
    }

    v28 = (v20 & 1) == 0;
    swift_endAccess();
    sub_188D68DEC(&v27);
    v24 = sub_18A4A7258();
    __UIKIT_SOFT_ASSERT_FAIL(v24);

    result = sub_188F48D00(v29);
  }

  while (v6);
LABEL_7:
  if (v7 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v6 = 0;
      v25 = 0;
      v26 = 0;
      v9 = v12;
      goto LABEL_16;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188F48C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937798);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_188F48D64()
{
  result = qword_1EA9377A8;
  if (!qword_1EA9377A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9377A8);
  }

  return result;
}

id _UIRemoteView._intelligenceCollectContent(in:collector:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_18A4A3BA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    v16 = [v5 remoteViewController];
    if (!v16)
    {
LABEL_5:
      v20.receiver = v5;
      v20.super_class = _UIRemoteView;
      return objc_msgSendSuper2(&v20, sel__intelligenceCollectContentIn_collector_, a1, a2, a3, a4, a5);
    }

    v17 = v16;
    if ([v16 _isAppProtectionLocked])
    {

      goto LABEL_5;
    }

    sub_18A4A3448();
    __swift_project_boxed_opaque_existential_0(v19, v19[3]);
    sub_18A4A3E78();
    (*(v12 + 104))(v14, *MEMORY[0x1E69DBBE0], v11);
    sub_18A4A3418();

    (*(v12 + 8))(v14, v11);
    return __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  return result;
}

void _UIRemoteView._intelligenceCollectRemoteContent(in:remoteContextWrapper:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = [v5 remoteViewController];
  if (v11)
  {
    v12 = v11;
    [v11 _intelligenceCollectRemoteContentInVisibleRect_withRemoteContextWrapper_];
  }
}

uint64_t sub_188F491B0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(result + 16);
  if (v3 <= v2)
  {
    v4 = *(a2 + 16);
  }

  else
  {
    v4 = *(result + 16);
  }

  if (v4)
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      if (v5 >= v2)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = *(a2 + 32 + 8 * v5);
      }

      v9 = 0.0;
      if (v5 < v3)
      {
        v9 = *(result + 32 + 8 * v5);
      }

      ++v5;
      v7 = vabdd_f64(v8, v9) / 0.001;
      if (v6 <= v7)
      {
        v6 = v7;
      }
    }

    while (v4 != v5);
  }

  return result;
}

BOOL sub_188F4923C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v3 = *(*a1 + 16);
  if (v2)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 1;
  }

  return v4 || v3 == 0;
}

BOOL sub_188F49284()
{
  v1 = *(*v0 + 16);
  v2 = (*v0 + 32);
  do
  {
    v3 = v1;
    if (v1-- == 0)
    {
      break;
    }

    v5 = *v2++;
  }

  while ((~v5 & 0x7FF0000000000000) != 0);
  return v3 != 0;
}

double sub_188F492BC()
{
  v1 = *v0;
  v2 = *&(*v0)[1].f64[0];
  if (!v2)
  {
    return 0.0;
  }

  if (v2 <= 3)
  {
    v3 = 0;
    result = 0.0;
LABEL_8:
    v9 = v2 - v3;
    v10 = &v1[2].f64[v3];
    do
    {
      v11 = *v10++;
      result = result + v11 * v11;
      --v9;
    }

    while (v9);
    return result;
  }

  v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  v5 = v1 + 3;
  result = 0.0;
  v6 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7 = vmulq_f64(v5[-1], v5[-1]);
    v8 = vmulq_f64(*v5, *v5);
    result = result + v7.f64[0] + v7.f64[1] + v8.f64[0] + v8.f64[1];
    v5 += 2;
    v6 -= 4;
  }

  while (v6);
  if (v2 != v3)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_188F49390(uint64_t *a1, uint64_t *a2)
{
  sub_188D85564(*a1, *a2);
  v4 = v3;

  *a1 = v4;
  return result;
}

uint64_t sub_188F49408(uint64_t *a1, uint64_t *a2)
{
  sub_188D7EBC0(*a1, *a2);
  v4 = v3;

  *a1 = v4;
  return result;
}

uint64_t UITextFormattingViewController.FormattingStyle.styleKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UITextFormattingViewController.FormattingStyle.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UITextFormattingViewController.FormattingStyle() + 20);
  v4 = sub_18A4A2808();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UITextFormattingViewController.FormattingStyle()
{
  result = qword_1EA9377B8;
  if (!qword_1EA9377B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UITextFormattingViewController.FormattingStyle.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UITextFormattingViewController.FormattingStyle() + 24);
  v4 = sub_18A4A2668();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UITextFormattingViewController.FormattingStyle.init(styleKey:title:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  v9 = *(v8 + 20);
  v10 = sub_18A4A2808();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  v11 = *(v8 + 24);
  v12 = sub_18A4A2668();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v11], a4, v12);
}

uint64_t UITextFormattingViewController.FormattingStyle.init(styleKey:title:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for UITextFormattingViewController.FormattingStyle() + 20);
  v7 = sub_18A4A2808();
  v10 = *(v7 - 8);
  (*(v10 + 16))(&a4[v6], a3, v7);
  sub_18A4A2698();
  v8 = *(v10 + 8);

  return v8(a3, v7);
}

uint64_t static UITextFormattingViewController.FormattingStyle.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_18A4A86C8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  if ((MEMORY[0x18CFDD740](a1 + *(v5 + 20), a2 + *(v5 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);

  return MEMORY[0x1EEDC33C8](a1 + v6, a2 + v6);
}