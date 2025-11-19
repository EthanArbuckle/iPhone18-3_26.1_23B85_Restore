id sub_1891284D0(double a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6979460]) init];
  [v2 setHeight_];
  [v2 setCurvature_];
  [v2 setAngle_];
  [v2 setSpread_];
  [v2 setAmount_];
  v3 = [objc_opt_self() whiteColor];
  v4 = [v3 CGColor];

  [v2 setColor_];
  return v2;
}

void sub_1891286F8()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for _UIPointerLensView();
  objc_msgSendSuper2(&v7, sel_tintColorDidChange);
  v1 = *&v0[OBJC_IVAR____UIPointerLensView_warpBackdrop];
  v2 = [v0 tintColor];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 colorWithAlphaComponent_];

    v5 = [v4 CGColor];
    v6 = sub_18A4A7258();
    [v1 setValue:v5 forKeyPath:v6];
  }

  else
  {
    __break(1u);
  }
}

id sub_189128838()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIPointerLensView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1891288EC()
{
  v1 = OBJC_IVAR____UIPointerLensView_flexInteraction;
  *(v0 + v1) = [objc_allocWithZone(_UIFlexInteraction) init];
  v2 = OBJC_IVAR____UIPointerLensView_warpBackdrop;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v3 = OBJC_IVAR____UIPointerLensView_element;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E6979438]) init];
  sub_18A4A8398();
  __break(1u);
}

void sub_1891289B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v5 = sub_18A4A7258();
  v6 = [v4 initWithType_];

  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_12:
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = v15 | (v12 << 6);
      v17 = (*(a3 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_188A55598(*(a3 + 56) + 32 * v16, v22);
      *&v23 = v19;
      *(&v23 + 1) = v18;
      sub_188A55538(v22, &v24);

      v14 = v12;
LABEL_13:
      v26 = v23;
      v27[0] = v24;
      v27[1] = v25;
      if (!*(&v23 + 1))
      {
        break;
      }

      sub_188A55538(v27, &v23);
      __swift_project_boxed_opaque_existential_0(&v23, *(&v24 + 1));
      v20 = sub_18A4A86A8();
      __swift_destroy_boxed_opaque_existential_0Tm(&v23);
      v21 = sub_18A4A7258();

      [v6 setValue:v20 forKey:v21];
      swift_unknownObjectRelease();

      v11 = v14;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v10 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13 - 1;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        v9 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_13;
      }

      v9 = *(a3 + 64 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_189128BBC(void *a1, void *a2)
{
  v19 = a2;
  v3 = [a1 sublayers];
  if (v3)
  {
    v4 = v3;
    sub_188A34624(0, &qword_1ED48E970);
    v5 = sub_18A4A7548();

    if (v5 >> 62)
    {
      v6 = sub_18A4A7F68();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
          return;
        }

        v7 = 0;
        v18 = v5 & 0xC000000000000001;
        v8 = &selRef_setArtworkView_;
        do
        {
          if (v18)
          {
            v9 = sub_188E4B058(v7, v5);
          }

          else
          {
            v9 = *(v5 + 8 * v7 + 32);
          }

          v10 = v9;
          [v19 bounds];
          [v10 v8[460]];
          [v19 bounds];
          v11 = CGRectGetWidth(v21) * 0.5;
          [v19 bounds];
          [v10 setPosition_];
          v12 = v19;
          sub_189128BBC(v10, v12);

          v13 = [v10 mask];
          if (v13)
          {
            v14 = v13;
            [v12 bounds];
            [v14 v8[460]];
            [v12 bounds];
            v15 = CGRectGetWidth(v23) * 0.5;
            [v12 bounds];
            [v14 setPosition_];
            v16 = v8;
            v17 = v12;
            sub_189128BBC(v14, v17);

            v10 = v17;
            v8 = v16;
          }

          ++v7;
        }

        while (v6 != v7);

        goto LABEL_18;
      }
    }

LABEL_18:

    return;
  }
}

uint64_t sub_189128E7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_189128F70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIShadowEdgeMask();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id UIFocusSystem.DidUpdateMessage.updateContext.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *UIFocusSystem.DidUpdateMessage.animationCoordinator.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t UIFocusSystem.DidUpdateMessage.init(updateContext:animationCoordinator:focusSystem:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static UIFocusSystem.DidUpdateMessage.makeMessage(_:)@<X0>(void *a1@<X8>)
{
  sub_18A4A2438();
  if (!v16[3])
  {
    result = sub_188A3F5FC(v16, &qword_1EA934050);
    goto LABEL_11;
  }

  sub_188A34624(0, &qword_1EA940A20);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_11:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return result;
  }

  v3 = v17;
  v4 = sub_18A4A2448();
  if (!v4)
  {
LABEL_13:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_14;
  }

  v5 = v4;
  *&v17 = sub_18A4A7288();
  *(&v17 + 1) = v6;
  sub_18A4A8048();
  if (!*(v5 + 16) || (v7 = sub_188BBA050(v16), (v8 & 1) == 0))
  {

    sub_188BBA15C(v16);
    goto LABEL_13;
  }

  sub_188A55598(*(v5 + 56) + 32 * v7, &v17);
  sub_188BBA15C(v16);

  if (!*(&v18 + 1))
  {
LABEL_14:
    sub_188A3F5FC(&v17, &qword_1EA934050);
    v9 = 0;
    goto LABEL_15;
  }

  sub_188A34624(0, &qword_1EA93DB18);
  if (swift_dynamicCast())
  {
    v9 = v16[0];
  }

  else
  {
    v9 = 0;
  }

LABEL_15:
  v10 = sub_18A4A2448();
  if (!v10)
  {
LABEL_23:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_24;
  }

  v11 = v10;
  *&v17 = sub_18A4A7288();
  *(&v17 + 1) = v12;
  sub_18A4A8048();
  if (!*(v11 + 16) || (v13 = sub_188BBA050(v16), (v14 & 1) == 0))
  {

    sub_188BBA15C(v16);
    goto LABEL_23;
  }

  sub_188A55598(*(v11 + 56) + 32 * v13, &v17);
  sub_188BBA15C(v16);

  if (*(&v18 + 1))
  {
    sub_188A34624(0, &qword_1EA93DB10);
    result = swift_dynamicCast();
    v15 = v16[0];
    if (!result)
    {
      v15 = 0;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = sub_188A3F5FC(&v17, &qword_1EA934050);
  v15 = 0;
LABEL_25:
  *a1 = v9;
  a1[1] = v15;
  a1[2] = v3;
  return result;
}

uint64_t static UIFocusSystem.DidUpdateMessage.makeNotification(_:)(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_188A34624(0, &qword_1EA940A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFA0;
  sub_18A4A7288();
  v5 = v1;
  v6 = v3;
  v7 = @"UIFocusDidUpdateNotification";
  v8 = v2;
  sub_18A4A8048();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DB20);
  *(inited + 72) = v2;
  sub_18A4A7288();
  sub_18A4A8048();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DB28);
  *(inited + 144) = v1;
  sub_188E8DA14(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D78);
  swift_arrayDestroy();
  return sub_18A4A2428();
}

id UIFocusSystem.MovementDidFailMessage.updateContext.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t UIFocusSystem.MovementDidFailMessage.init(updateContext:focusSystem:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static UIFocusSystem.MovementDidFailMessage.makeMessage(_:)@<X0>(void *a1@<X8>)
{
  sub_18A4A2438();
  if (!v10[3])
  {
    result = sub_188A3F5FC(v10, &qword_1EA934050);
    goto LABEL_11;
  }

  sub_188A34624(0, &qword_1EA940A20);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_11:
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  v3 = v11;
  v4 = sub_18A4A2448();
  if (!v4)
  {
LABEL_13:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_14;
  }

  v5 = v4;
  *&v11 = sub_18A4A7288();
  *(&v11 + 1) = v6;
  sub_18A4A8048();
  if (!*(v5 + 16) || (v7 = sub_188BBA050(v10), (v8 & 1) == 0))
  {

    sub_188BBA15C(v10);
    goto LABEL_13;
  }

  sub_188A55598(*(v5 + 56) + 32 * v7, &v11);
  sub_188BBA15C(v10);

  if (*(&v12 + 1))
  {
    sub_188A34624(0, &qword_1EA93DB18);
    result = swift_dynamicCast();
    v9 = v10[0];
    if (!result)
    {
      v9 = 0;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = sub_188A3F5FC(&v11, &qword_1EA934050);
  v9 = 0;
LABEL_15:
  *a1 = v9;
  a1[1] = v3;
  return result;
}

uint64_t static UIFocusSystem.MovementDidFailMessage.makeNotification(_:)(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  sub_188A34624(0, &qword_1EA940A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  sub_18A4A7288();
  v4 = v2;
  v5 = v1;
  v6 = @"UIFocusMovementDidFailNotification";
  sub_18A4A8048();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DB20);
  *(inited + 72) = v2;
  sub_188E8DA14(inited);
  swift_setDeallocating();
  sub_188A3F5FC(inited + 32, &qword_1EA934D78);
  return sub_18A4A2428();
}

void sub_189129BBC(void *a1)
{
  v3 = [a1 viewForKey_];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 viewForKey_];
    if (v5)
    {
      v6 = v5;
      *(v1 + OBJC_IVAR____UITabCrossFadeTransition_wasPreempted) = 0;
      v7 = [a1 containerView];
      v8 = [v7 traitCollection];
      v9 = sub_18912AA38(v8);

      v66 = v9;
      v10 = (1.0 - *&v9[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadedOutScale]) * 0.5;
      v11 = sub_18912AD34(v4, 0.0);
      v68 = sub_18912AD34(v4, v10);
      v65 = sub_18912AD34(v6, 0.0);
      v12 = sub_18912AD34(v6, v10);
      v13 = [v7 traitCollection];
      [v13 displayScale];
      v15 = v14;

      v16 = sub_18912A3C4(v6);
      v17 = [v4 firstResponder];
      v18 = [v17 _responderForBecomeFirstResponder];

      if ([v4 _containsResponder_])
      {
        swift_unknownObjectWeakAssign();
        swift_unknownObjectWeakAssign();
      }

      v61 = v1;
      v64 = v18;
      v67 = objc_opt_self();
      v19 = swift_allocObject();
      v19[2] = v4;
      v19[3] = v11;
      v19[4] = v15;
      v19[5] = v16;
      v19[6] = v12;
      v19[7] = v7;
      v19[8] = v6;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_18912B8F0;
      *(v20 + 24) = v19;
      v59 = v19;
      v73 = sub_188A4B574;
      v74 = v20;
      aBlock = MEMORY[0x1E69E9820];
      v70 = 1107296256;
      v71 = sub_188A4A968;
      v72 = &block_descriptor_121;
      v21 = _Block_copy(&aBlock);
      v63 = v12;
      v62 = v7;
      v22 = v6;

      v23 = v4;
      v60 = v11;
      v24 = v16;
      v25 = v16;

      [v67 performWithoutAnimation_];
      _Block_release(v21);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v27 = [objc_allocWithZone(_UIGroupCompletion) init];
        v28 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v29 = swift_allocObject();
        v29[2] = v23;
        v29[3] = v24;
        v30 = v24;
        v29[4] = v28;
        v29[5] = v22;
        v29[6] = a1;
        v73 = sub_18912B904;
        v74 = v29;
        aBlock = MEMORY[0x1E69E9820];
        v70 = 1107296256;
        v71 = sub_188A4A8F0;
        v72 = &block_descriptor_14_6;
        v31 = _Block_copy(&aBlock);
        v32 = v23;
        v67 = v25;
        v33 = v22;
        swift_unknownObjectRetain();

        [v27 addCompletion_];
        _Block_release(v31);
        v34 = [v27 increment];
        v35 = v66;
        v36 = *&v66[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleOut];
        MEMORY[0x1EEE9AC00](v34);
        v57 = v32;
        v58 = v68;
        v37 = swift_allocObject();
        *(v37 + 16) = v27;
        v38 = v36;
        v39 = v27;
        sub_18912B650(v38, sub_18912B914, v56, sub_188EA97F0, v37);

        v40 = [v39 increment];
        v41 = *&v35[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeOut];
        MEMORY[0x1EEE9AC00](v40);
        v57 = v32;
        v42 = swift_allocObject();
        *(v42 + 16) = v39;
        v43 = v39;
        v44 = v41;
        sub_18912B650(v44, sub_188F8656C, v56, sub_18912B980, v42);

        v45 = [v43 increment];
        v46 = *&v35[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeIn];
        MEMORY[0x1EEE9AC00](v45);
        v57 = v33;
        v58 = v30;
        v47 = swift_allocObject();
        *(v47 + 16) = v43;
        v48 = v43;
        v49 = v46;
        sub_18912B650(v49, sub_18912B930, v56, sub_18912B980, v47);

        v50 = [v48 increment];
        v51 = *&v35[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleIn];
        MEMORY[0x1EEE9AC00](v50);
        v52 = v65;
        v57 = v33;
        v58 = v65;
        v53 = swift_allocObject();
        *(v53 + 16) = v48;
        v54 = v48;
        v55 = v51;
        sub_18912B650(v55, sub_18912B984, v56, sub_18912B980, v53);

        [v54 complete];
      }

      return;
    }
  }

  [a1 completeTransition_];
}

id sub_18912A3C4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____UITabCrossFadeTransition_backgroundColor);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  v5 = [a1 backgroundColor];
  if (!v5)
  {
    goto LABEL_7;
  }

  result = [a1 backgroundColor];
  if (result)
  {
    v7 = result;
    v8 = [result _isOpaque];

    if (v8)
    {

      return 0;
    }

LABEL_7:
    [a1 frame];
    v13 = [objc_allocWithZone(UIView) initWithFrame_];
    [v13 setBackgroundColor_];

    return v13;
  }

  __break(1u);
  return result;
}

void sub_18912A4DC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, double a7)
{
  v14 = [a1 layer];
  [v14 setMeshTransform_];

  v15 = [a1 layer];
  [v15 setRasterizationScale_];

  if (a3)
  {
    v16 = a3;
    [v16 setAlpha_];
    v17 = [v16 layer];
    [v17 setMeshTransform_];

    [a5 addSubview_];
  }

  [a6 setAlpha_];
  v18 = [a6 layer];
  [v18 setMeshTransform_];

  v19 = [a6 layer];
  [v19 setRasterizationScale_];

  [a5 addSubview_];
  v20 = [a6 layer];
  LOBYTE(v19) = [v20 hasBeenCommitted];

  if ((v19 & 1) == 0)
  {

    [a6 layoutIfNeeded];
  }
}

void sub_18912A6CC(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  [a1 setAlpha_];
  [a2 removeFromSuperview];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((Strong[OBJC_IVAR____UITabCrossFadeTransition_wasPreempted] & 1) == 0)
    {
      v10 = Strong;
      v11 = [a1 layer];
      [v11 setMeshTransform_];

      v12 = [a1 layer];
      [v12 setRasterizationScale_];

      v13 = [a4 layer];
      [v13 setMeshTransform_];

      v14 = [a4 layer];
      [v14 setRasterizationScale_];

      [a5 completeTransition_];
      Strong = v10;
    }
  }
}

void sub_18912A838(void *a1, uint64_t a2)
{
  v3 = [a1 layer];
  [v3 setMeshTransform_];
}

unint64_t type metadata accessor for _UITabCrossFadeTransition()
{
  result = qword_1EA93DBB0;
  if (!qword_1EA93DBB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93DBB0);
  }

  return result;
}

id sub_18912AA38(void *a1)
{
  type metadata accessor for _UITabCrossFadeTransitionDomain();
  v7.receiver = swift_getObjCClassFromMetadata();
  v7.super_class = &OBJC_METACLASS____TtC5UIKit31_UITabCrossFadeTransitionDomain;
  result = objc_msgSendSuper2(&v7, sel_rootSettings);
  if (result)
  {
    v3 = result;
    type metadata accessor for _UITabCrossFadeTransitionSpec();
    v4 = swift_dynamicCastClassUnconditional();
    v5 = &OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_compact;
    if ([a1 userInterfaceIdiom])
    {
      if ([a1 horizontalSizeClass] != 1)
      {
        v5 = &OBJC_IVAR____TtC5UIKit29_UITabCrossFadeTransitionSpec_regular;
      }
    }

    v6 = *(v4 + *v5);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18912AB1C(void *a1)
{
  v1 = [a1 containerView];
  v2 = [v1 traitCollection];

  v3 = sub_18912AA38(v2);
  v4 = *&v3[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeOut];
}

double sub_18912ABDC(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [swift_unknownObjectRetain() containerView];
  v2 = [v1 traitCollection];

  v3 = sub_18912AA38(v2);
  swift_unknownObjectRelease();
  v4 = *&v3[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleIn];
  v5 = *(v4 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration);
  if (*(*&v3[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeIn] + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) + *(*&v3[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeIn] + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration) > *(v4 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) + v5)
  {
    v6 = *(*&v3[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeIn] + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) + *(*&v3[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeIn] + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration);
  }

  else
  {
    v6 = *(v4 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) + v5;
  }

  v7 = *(*&v3[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeOut] + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) + *(*&v3[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_fadeOut] + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration);
  v8 = *&v3[OBJC_IVAR____TtC5UIKit38_UITabCrossFadeTransitionAnimationSpec_scaleOut];

  v9 = *&v8[OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay];
  v10 = *&v8[OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration];

  result = v6;
  v12 = v9 + v10;
  if (v7 > v9 + v10)
  {
    v12 = v7;
  }

  if (v6 <= v12)
  {
    return v12;
  }

  return result;
}

id sub_18912AD34(void *a1, double a2)
{
  [a1 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [a1 bounds];
  result = 0;
  if (v14 == 0.0 && v12 == 0.0)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 0;
    }

    else
    {
      v165.origin.x = v5;
      v165.origin.y = v7;
      v165.size.width = v9;
      v165.size.height = v11;
      v15 = 1.0;
      if (CGRectIsEmpty(v165))
      {
        v16 = 1.0;
        v17 = 1.0;
        v18 = 1.0;
      }

      else
      {
        v166.origin.x = v5;
        v166.origin.y = v7;
        v166.size.width = v9;
        v166.size.height = v11;
        IsNull = CGRectIsNull(v166);
        v16 = 1.0;
        v17 = 1.0;
        v18 = 1.0;
        if (!IsNull)
        {
          v167.origin.x = v5;
          v167.origin.y = v7;
          v167.size.width = v9;
          v167.size.height = v11;
          v15 = 1.0 / CGRectGetHeight(v167);
          v168.origin.x = v5;
          v168.origin.y = v7;
          v168.size.width = v9;
          v168.size.height = v11;
          v20 = 1.0 / CGRectGetWidth(v168);
          v169.origin.x = v5;
          v169.origin.y = v7;
          v169.size.width = v9;
          v169.size.height = v11;
          v21 = 1.0 / CGRectGetHeight(v169);
          v170.origin.x = v5;
          v170.origin.y = v7;
          v170.size.width = v9;
          v170.size.height = v11;
          Width = CGRectGetWidth(v170);
          v17 = v21;
          v16 = v20;
          v18 = 1.0 / Width;
        }
      }

      v23 = UIRectInset(0.0, 0.0, 1.0, 1.0, v15, v18, v17, v16);
      v27 = v23;
      v28 = v24;
      v29 = v25;
      v30 = v26;
      if (a2 > 0.0)
      {
        v23 = UIRectInset(0.0, 0.0, 1.0, 1.0, a2, a2, a2, a2);
      }

      v89 = 0;
      v31 = v23;
      rect = v27;
      rect_8 = v23;
      memset(v88, 0, sizeof(v88));
      v171.origin.x = v27;
      v32 = v24;
      v171.origin.y = v28;
      v84 = v28;
      v33 = v25;
      v34 = v29;
      v171.size.width = v29;
      v35 = v26;
      v171.size.height = v30;
      MinX = CGRectGetMinX(v171);
      v172.origin.x = 0.0;
      v172.origin.y = 0.0;
      v172.size.width = 1.0;
      v172.size.height = 1.0;
      MinY = CGRectGetMinY(v172);
      v173.origin.x = v31;
      v173.origin.y = v32;
      v81 = v35;
      v173.size.width = v33;
      v82 = v33;
      v173.size.height = v35;
      v83 = v29;
      rect_16 = v30;
      v36 = CGRectGetMinX(v173);
      v174.origin.x = 0.0;
      v174.origin.y = 0.0;
      v174.size.width = 1.0;
      v174.size.height = 1.0;
      v90 = MinX;
      v91 = MinY;
      v92 = v36;
      v93 = CGRectGetMinY(v174);
      v94 = 0;
      v175.origin.x = v27;
      v175.origin.y = v84;
      v175.size.width = v34;
      v175.size.height = v30;
      MaxX = CGRectGetMaxX(v175);
      v176.origin.x = 0.0;
      v176.origin.y = 0.0;
      v176.size.width = 1.0;
      v176.size.height = 1.0;
      v38 = CGRectGetMinY(v176);
      v177.origin.x = rect_8;
      v177.origin.y = v32;
      v177.size.width = v33;
      v177.size.height = v35;
      v39 = CGRectGetMaxX(v177);
      v178.origin.x = 0.0;
      v178.origin.y = 0.0;
      v178.size.width = 1.0;
      v178.size.height = 1.0;
      v95 = MaxX;
      v96 = v38;
      v97 = v39;
      v98 = CGRectGetMinY(v178);
      v99 = 0;
      v179.origin.x = 0.0;
      v179.origin.y = 0.0;
      v179.size.width = 1.0;
      v179.size.height = 1.0;
      v40 = CGRectGetMaxX(v179);
      v180.origin.x = 0.0;
      v180.origin.y = 0.0;
      v180.size.width = 1.0;
      v180.size.height = 1.0;
      v41 = CGRectGetMinY(v180);
      v181.origin.x = 0.0;
      v181.origin.y = 0.0;
      v181.size.width = 1.0;
      v181.size.height = 1.0;
      v42 = CGRectGetMaxX(v181);
      v182.origin.x = 0.0;
      v182.origin.y = 0.0;
      v182.size.width = 1.0;
      v182.size.height = 1.0;
      v100 = v40;
      v101 = v41;
      v102 = v42;
      v103 = CGRectGetMinY(v182);
      v104 = 0;
      v183.origin.x = 0.0;
      v183.origin.y = 0.0;
      v183.size.width = 1.0;
      v183.size.height = 1.0;
      v43 = CGRectGetMinX(v183);
      v184.origin.x = v27;
      v184.origin.y = v84;
      v184.size.width = v83;
      v184.size.height = rect_16;
      v44 = CGRectGetMinY(v184);
      v185.origin.x = 0.0;
      v185.origin.y = 0.0;
      v185.size.width = 1.0;
      v185.size.height = 1.0;
      v45 = CGRectGetMinX(v185);
      v186.origin.x = rect_8;
      v186.size.height = v35;
      v186.origin.y = v32;
      v186.size.width = v33;
      v105 = v43;
      v106 = v44;
      v107 = v45;
      v108 = CGRectGetMinY(v186);
      v109 = 0;
      v110 = rect;
      v111 = v84;
      v112 = rect_8;
      v113 = v32;
      v114 = 0;
      v187.origin.x = rect;
      v187.origin.y = v84;
      v187.size.width = v83;
      v187.size.height = rect_16;
      v75 = CGRectGetMaxX(v187);
      v188.origin.x = rect;
      v188.origin.y = v84;
      v188.size.width = v83;
      v188.size.height = rect_16;
      v46 = CGRectGetMinY(v188);
      v189.origin.x = rect_8;
      v189.origin.y = v32;
      v189.size.width = v82;
      v189.size.height = v35;
      v47 = CGRectGetMaxX(v189);
      v190.origin.x = rect_8;
      v190.origin.y = v32;
      v190.size.width = v82;
      v190.size.height = v35;
      v115 = v75;
      v116 = v46;
      v117 = v47;
      v118 = CGRectGetMinY(v190);
      v119 = 0;
      v191.origin.x = 0.0;
      v191.origin.y = 0.0;
      v191.size.width = 1.0;
      v191.size.height = 1.0;
      v76 = CGRectGetMaxX(v191);
      v192.origin.x = rect;
      v192.origin.y = v84;
      v192.size.width = v83;
      v192.size.height = rect_16;
      v73 = CGRectGetMinY(v192);
      v193.origin.x = 0.0;
      v193.origin.y = 0.0;
      v193.size.width = 1.0;
      v193.size.height = 1.0;
      v48 = CGRectGetMaxX(v193);
      v194.origin.x = rect_8;
      v194.origin.y = v32;
      v194.size.width = v82;
      v194.size.height = v35;
      v120 = v76;
      v121 = v73;
      v122 = v48;
      v123 = CGRectGetMinY(v194);
      v124 = 0;
      v195.origin.x = 0.0;
      v195.origin.y = 0.0;
      v195.size.width = 1.0;
      v195.size.height = 1.0;
      v77 = CGRectGetMinX(v195);
      v196.origin.x = rect;
      v196.origin.y = v84;
      v196.size.width = v83;
      v196.size.height = rect_16;
      MaxY = CGRectGetMaxY(v196);
      v197.origin.x = 0.0;
      v197.origin.y = 0.0;
      v197.size.width = 1.0;
      v197.size.height = 1.0;
      v50 = CGRectGetMinX(v197);
      v198.origin.x = rect_8;
      v198.origin.y = v32;
      v198.size.width = v82;
      v198.size.height = v35;
      v125 = v77;
      v126 = MaxY;
      v127 = v50;
      v128 = CGRectGetMaxY(v198);
      v129 = 0;
      v199.origin.x = rect;
      v199.origin.y = v84;
      v199.size.width = v83;
      v199.size.height = rect_16;
      v78 = CGRectGetMinX(v199);
      v200.origin.x = rect;
      v200.origin.y = v84;
      v200.size.width = v83;
      v200.size.height = rect_16;
      v51 = CGRectGetMaxY(v200);
      v201.origin.x = rect_8;
      v201.origin.y = v32;
      v201.size.width = v82;
      v201.size.height = v35;
      v52 = CGRectGetMinX(v201);
      v202.origin.x = rect_8;
      v202.origin.y = v32;
      v202.size.width = v82;
      v202.size.height = v35;
      v130 = v78;
      v131 = v51;
      v132 = v52;
      v133 = CGRectGetMaxY(v202);
      v134 = 0;
      v203.origin.x = rect;
      v203.origin.y = v84;
      v203.size.width = v83;
      v203.size.height = rect_16;
      v79 = CGRectGetMaxX(v203);
      v204.origin.x = rect;
      v204.origin.y = v84;
      v204.size.width = v83;
      v204.size.height = rect_16;
      v53 = CGRectGetMaxY(v204);
      v205.origin.x = rect_8;
      v205.origin.y = v32;
      v205.size.width = v82;
      v205.size.height = v35;
      v54 = CGRectGetMaxX(v205);
      v206.origin.x = rect_8;
      v206.origin.y = v32;
      v206.size.width = v82;
      v206.size.height = v35;
      v135 = v79;
      v136 = v53;
      v137 = v54;
      v138 = CGRectGetMaxY(v206);
      v139 = 0;
      v207.origin.x = 0.0;
      v207.origin.y = 0.0;
      v207.size.width = 1.0;
      v207.size.height = 1.0;
      v55 = CGRectGetMaxX(v207);
      v208.origin.x = rect;
      v208.origin.y = v84;
      v208.size.width = v83;
      v208.size.height = rect_16;
      v56 = CGRectGetMaxY(v208);
      v209.origin.x = 0.0;
      v209.origin.y = 0.0;
      v209.size.width = 1.0;
      v209.size.height = 1.0;
      v57 = CGRectGetMaxX(v209);
      v210.origin.x = rect_8;
      v210.origin.y = v32;
      v210.size.width = v82;
      v210.size.height = v81;
      v140 = v55;
      v141 = v56;
      v142 = v57;
      v143 = CGRectGetMaxY(v210);
      v144 = 0;
      v211.origin.x = 0.0;
      v211.origin.y = 0.0;
      v211.size.width = 1.0;
      v211.size.height = 1.0;
      v58 = CGRectGetMinX(v211);
      v212.origin.x = 0.0;
      v212.origin.y = 0.0;
      v212.size.width = 1.0;
      v212.size.height = 1.0;
      v59 = CGRectGetMaxY(v212);
      v213.origin.x = 0.0;
      v213.origin.y = 0.0;
      v213.size.width = 1.0;
      v213.size.height = 1.0;
      v60 = CGRectGetMinX(v213);
      v214.origin.x = 0.0;
      v214.origin.y = 0.0;
      v214.size.width = 1.0;
      v214.size.height = 1.0;
      v145 = v58;
      v146 = v59;
      v147 = v60;
      v148 = CGRectGetMaxY(v214);
      v149 = 0;
      v215.origin.x = rect;
      v215.origin.y = v84;
      v215.size.width = v83;
      v215.size.height = rect_16;
      v80 = CGRectGetMinX(v215);
      v216.origin.x = 0.0;
      v216.origin.y = 0.0;
      v216.size.width = 1.0;
      v216.size.height = 1.0;
      v61 = CGRectGetMaxY(v216);
      v217.origin.x = rect_8;
      v217.origin.y = v32;
      v217.size.width = v82;
      v217.size.height = v81;
      v62 = CGRectGetMinX(v217);
      v218.origin.x = 0.0;
      v218.origin.y = 0.0;
      v218.size.width = 1.0;
      v218.size.height = 1.0;
      v150 = v80;
      v151 = v61;
      v152 = v62;
      v153 = CGRectGetMaxY(v218);
      v154 = 0;
      v219.origin.x = rect;
      v219.origin.y = v84;
      v219.size.width = v83;
      v219.size.height = rect_16;
      v63 = CGRectGetMaxX(v219);
      v220.origin.x = 0.0;
      v220.origin.y = 0.0;
      v220.size.width = 1.0;
      v220.size.height = 1.0;
      v64 = CGRectGetMaxY(v220);
      v221.origin.x = rect_8;
      v221.origin.y = v32;
      v221.size.width = v82;
      v221.size.height = v81;
      v65 = CGRectGetMaxX(v221);
      v222.origin.x = 0.0;
      v222.origin.y = 0.0;
      v222.size.width = 1.0;
      v222.size.height = 1.0;
      v155 = v63;
      v156 = v64;
      v157 = v65;
      v158 = CGRectGetMaxY(v222);
      v159 = 0;
      v223.origin.x = 0.0;
      v223.origin.y = 0.0;
      v223.size.width = 1.0;
      v223.size.height = 1.0;
      v66 = CGRectGetMaxX(v223);
      v224.origin.x = 0.0;
      v224.origin.y = 0.0;
      v224.size.width = 1.0;
      v224.size.height = 1.0;
      v67 = CGRectGetMaxY(v224);
      v225.origin.x = 0.0;
      v225.origin.y = 0.0;
      v225.size.width = 1.0;
      v225.size.height = 1.0;
      v68 = CGRectGetMaxX(v225);
      v226.origin.x = 0.0;
      v226.origin.y = 0.0;
      v226.size.width = 1.0;
      v226.size.height = 1.0;
      v160 = v66;
      v161 = v67;
      v162 = v68;
      v163 = CGRectGetMaxY(v226);
      v164 = 0;
      sub_18A4A7288();
      v69 = objc_allocWithZone(MEMORY[0x1E69793D8]);
      v70 = sub_18A4A7258();

      v71 = [v69 initWithVertexCount:16 vertices:v88 faceCount:9 faces:&unk_1EFAB9280 depthNormalization:v70];

      return v71;
    }
  }

  return result;
}

uint64_t sub_18912B650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5)
{
  v9 = *(a1 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration);
  v10 = *(a1 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_bounce);
  v11 = *(a1 + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v20 = sub_188E3FE50;
  v21 = v12;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_188A4A968;
  v19 = &block_descriptor_33_4;
  v13 = _Block_copy(&v16);

  if (a4)
  {
    v20 = a4;
    v21 = a5;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_188ABD010;
    v19 = &block_descriptor_36_0;
    a4 = _Block_copy(&v16);
  }

  [objc_opt_self() animateWithSpringDuration:2 bounce:v13 initialSpringVelocity:a4 delay:v9 options:v10 animations:0.0 completion:v11];
  _Block_release(a4);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_18912B844()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v4 = v2;
      if ([v1 _containsResponder_])
      {
        [v4 _becomeFirstResponderWhenPossible];
      }

      v3 = v4;
    }

    else
    {
      v3 = v1;
    }
  }
}

id sub_18912B930()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 setAlpha_];
}

char *sub_18912B9B8(char a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = [objc_allocWithZone(_UIIntelligenceSystemNoiseView) initWithFrame:a1 & 1 preferringAudioReactivity:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_noiseView] = v12;
  v13 = [objc_allocWithZone(_UIIntelligenceSystemLightView) initWithFrame:a1 & 1 preferringAudioReactivity:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_lightView] = v13;
  v21.receiver = v5;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a2, a3, a4, a5);
  v15 = *&v14[OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_noiseView];
  v16 = v14;
  [v16 addSubview_];
  v17 = OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_lightView;
  [v16 addSubview_];
  v18 = [*&v16[v17] layer];
  v19 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  [v18 setCompositingFilter_];

  return v16;
}

void sub_18912BB88()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_noiseView);
  swift_setAtReferenceWritableKeyPath();

  v2 = *(v0 + OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_lightView);
  swift_setAtReferenceWritableKeyPath();
}

void sub_18912BC24(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_noiseView);
  v4 = a1;
  swift_setAtReferenceWritableKeyPath();

  v7 = *(v1 + OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_lightView);
  v5 = v4;
  v6 = v7;
  swift_setAtReferenceWritableKeyPath();
}

void sub_18912BCBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_noiseView);
  swift_setAtReferenceWritableKeyPath();

  v2 = *(v0 + OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_lightView);
  swift_setAtReferenceWritableKeyPath();
}

id sub_18912BD48@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 layer];
  *a2 = result;
  return result;
}

unint64_t sub_18912BF9C()
{
  result = qword_1EA92FD58;
  if (!qword_1EA92FD58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA92FD58);
  }

  return result;
}

double _UIContextMenuStyle.preferredMenuMaterial.getter@<D0>(uint64_t a1@<X8>)
{
  if ([v1 preferredMenuMaterial])
  {
    swift_getObjectType();
    sub_18901EB8C(a1);

    swift_unknownObjectRelease();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_18912C060@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  if ([*a1 preferredMenuMaterial])
  {
    swift_getObjectType();
    sub_18901EB8C(a2);

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

uint64_t sub_18912C0D8(uint64_t a1, void **a2)
{
  sub_188D73128(a1, v8);
  v3 = *a2;
  sub_188D73128(v8, v6);
  v4 = v7;
  if (v7)
  {
    __swift_project_boxed_opaque_existential_0(v6, v7);
    v4 = sub_188C8D2B4(v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
    sub_18912C22C(v6);
  }

  [v3 setPreferredMenuMaterial_];
  swift_unknownObjectRelease();
  return sub_18912C22C(v8);
}

uint64_t _UIContextMenuStyle.preferredMenuMaterial.setter(uint64_t a1)
{
  v2 = v1;
  sub_188D73128(a1, v6);
  v4 = v7;
  if (v7)
  {
    __swift_project_boxed_opaque_existential_0(v6, v7);
    v4 = sub_188C8D2B4(v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
    sub_18912C22C(v6);
  }

  [v2 setPreferredMenuMaterial_];
  swift_unknownObjectRelease();
  return sub_18912C22C(a1);
}

uint64_t sub_18912C22C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*_UIContextMenuStyle.preferredMenuMaterial.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  if ([v1 preferredMenuMaterial])
  {
    swift_getObjectType();
    sub_18901EB8C(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  return sub_18912C348;
}

void sub_18912C348(uint64_t *a1, char a2)
{
  v3 = *a1;
  sub_188D73128(*a1, *a1 + 40);
  if (a2)
  {
    sub_188D73128(v3 + 40, v3 + 80);
    v4 = *(v3 + 104);
    if (v4)
    {
      __swift_project_boxed_opaque_existential_0((v3 + 80), *(v3 + 104));
      v4 = sub_188C8D2B4(v4);
      __swift_destroy_boxed_opaque_existential_0Tm(v3 + 80);
    }

    else
    {
      sub_18912C22C(v3 + 80);
    }

    [*(v3 + 120) setPreferredMenuMaterial_];
    swift_unknownObjectRelease();
    sub_18912C22C(v3 + 40);
  }

  else
  {
    v5 = *(v3 + 64);
    if (v5)
    {
      __swift_project_boxed_opaque_existential_0((v3 + 40), *(v3 + 64));
      v5 = sub_188C8D2B4(v5);
      __swift_destroy_boxed_opaque_existential_0Tm(v3 + 40);
    }

    else
    {
      sub_18912C22C(v3 + 40);
    }

    [*(v3 + 120) setPreferredMenuMaterial_];
    swift_unknownObjectRelease();
  }

  sub_18912C22C(v3);

  free(v3);
}

id sub_18912C4E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UILabelImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UIAccessibility.ElementFocusedMessage.element.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t static UIAccessibility.ElementFocusedMessage.makeMessage(_:)@<X0>(void *a1@<X8>)
{
  v2 = sub_18A4A2448();
  if (v2)
  {
    v3 = v2;
    *&v10[0] = sub_18A4A7288();
    *(&v10[0] + 1) = v4;
    sub_18A4A8048();
    if (*(v3 + 16))
    {
      v5 = sub_188BBA050(v9);
      if (v6)
      {
        sub_188A55598(*(v3 + 56) + 32 * v5, v10);
        sub_188BBA15C(v9);

        goto LABEL_7;
      }
    }

    sub_188BBA15C(v9);
  }

  memset(v10, 0, sizeof(v10));
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  result = swift_dynamicCast();
  v8 = v9[0];
  if (!result)
  {
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t static UIAccessibility.ElementFocusedMessage.makeNotification(_:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  sub_18A4A7288();
  swift_unknownObjectRetain();
  v3 = @"UIAccessibilityElementFocusedNotification";
  sub_18A4A8048();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C768);
  *(inited + 72) = v1;
  sub_188E8DA14(inited);
  swift_setDeallocating();
  sub_188A3F5FC(inited + 32, &qword_1EA934D78);
  return sub_18A4A2428();
}

uint64_t UIAccessibility.AnnouncementDidFinishMessage.announcement.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UIAccessibility.AnnouncementDidFinishMessage.announcement.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UIAccessibility.AnnouncementDidFinishMessage.init(announcement:wasSuccessful:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static UIAccessibility.AnnouncementDidFinishMessage.makeMessage(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18A4A2448();
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  sub_18A4A7288();
  sub_18A4A8048();
  if (!*(v3 + 16) || (v4 = sub_188BBA050(v14), (v5 & 1) == 0))
  {

    sub_188BBA15C(v14);
LABEL_13:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_14;
  }

  sub_188A55598(*(v3 + 56) + 32 * v4, &v15);
  sub_188BBA15C(v14);

  if (!*(&v16 + 1))
  {
LABEL_14:
    result = sub_188A3F5FC(&v15, &qword_1EA934050);
    goto LABEL_15;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = v14[0];
  v7 = v14[1];
  v9 = sub_18A4A2448();
  if (!v9)
  {

    goto LABEL_13;
  }

  v10 = v9;
  sub_18A4A7288();
  sub_18A4A8048();
  if (!*(v10 + 16) || (v11 = sub_188BBA050(v14), (v12 & 1) == 0))
  {

    sub_188BBA15C(v14);
    v15 = 0u;
    v16 = 0u;
    goto LABEL_18;
  }

  sub_188A55598(*(v10 + 56) + 32 * v11, &v15);
  sub_188BBA15C(v14);

  if (!*(&v16 + 1))
  {
LABEL_18:

    goto LABEL_14;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v13 = v14[0];
    *a1 = v8;
    *(a1 + 8) = v7;
    *(a1 + 16) = v13;
    return result;
  }

LABEL_15:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t static UIAccessibility.AnnouncementDidFinishMessage.makeNotification(_:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFA0;
  sub_18A4A7288();

  v5 = @"UIAccessibilityAnnouncementDidFinishNotification";
  v6 = MEMORY[0x1E69E6158];
  sub_18A4A8048();
  *(inited + 96) = v6;
  *(inited + 72) = v2;
  *(inited + 80) = v1;
  sub_18A4A7288();
  sub_18A4A8048();
  *(inited + 168) = MEMORY[0x1E69E6370];
  *(inited + 144) = v3;
  sub_188E8DA14(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D78);
  swift_arrayDestroy();
  return sub_18A4A2428();
}

uint64_t sub_18912CEC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18912CF0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id static NSCollectionLayoutGroup.horizontalGroup(with:repeatingSubitem:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [swift_getObjCClassFromMetadata() horizontalGroupWithLayoutSize:a1 repeatingSubitem:a2 count:a3];

  return v3;
}

id static NSCollectionLayoutGroup.verticalGroup(with:repeatingSubitem:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [swift_getObjCClassFromMetadata() verticalGroupWithLayoutSize:a1 repeatingSubitem:a2 count:a3];

  return v3;
}

uint64_t static UITableView.SelectionDidChangeMessage.makeMessage(_:)@<X0>(void *a1@<X8>)
{
  sub_18A4A2438();
  if (!v6)
  {
    result = sub_188A553EC(v5);
    goto LABEL_5;
  }

  sub_189118554();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v4;
LABEL_6:
  *a1 = v3;
  return result;
}

uint64_t static UITableView.SelectionDidChangeMessage.makeNotification(_:)(void **a1)
{
  v1 = *a1;
  sub_189118554();
  v2 = v1;
  v3 = @"UITableViewSelectionDidChangeNotification";
  return sub_18A4A2428();
}

uint64_t sub_18912D2C0(void **a1)
{
  v1 = *a1;
  sub_189118554();
  v2 = v1;
  v3 = @"UITableViewSelectionDidChangeNotification";
  return sub_18A4A2428();
}

uint64_t sub_18912D3CC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10[-v3];
  if (a1)
  {
    v5 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
    swift_beginAccess();
    sub_188A53994(a1 + v5, v11);
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
    v7 = type metadata accessor for _Glass(0);
    swift_dynamicCast();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    sub_18912D558(v4);
  }

  else
  {
    v8 = type metadata accessor for _Glass(0);
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_18912D558(v4);
  }

  return sub_18912D888(v4);
}

uint64_t sub_18912D558(uint64_t a1)
{
  v2 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20[-1] - v6;
  v8 = type metadata accessor for _Glass(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20[-1] - v13;
  sub_18912D8F0(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_18912D888(v7);
    if (qword_1ED48E920 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_1ED48E930);
    sub_188AD8C44(v15, v4, type metadata accessor for _Glass._GlassVariant);
    _Glass.init(_:smoothness:)(v4, v11, 0.0);
    v21 = v8;
    v22 = &protocol witness table for _Glass;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
    sub_188AD8C44(v11, boxed_opaque_existential_0, type metadata accessor for _Glass);
    *(boxed_opaque_existential_0 + *(v8 + 52)) = 1;
    sub_188B7533C(v11);
    return UIView._background.setter(v20);
  }

  else
  {
    sub_188C4CD1C(v7, v14);
    v21 = v8;
    v22 = &protocol witness table for _Glass;
    v18 = __swift_allocate_boxed_opaque_existential_0(v20);
    sub_188AD8C44(v14, v18, type metadata accessor for _Glass);
    UIView._background.setter(v20);
    return sub_188B7533C(v14);
  }
}

uint64_t sub_18912D888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18912D8F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_18912D960()
{
  v1 = [*(v0 + OBJC_IVAR___UISubstituteKeyboardSession_viewController) presentingViewController];
  if (v1)
  {

    sub_18912DD44();
  }

  else
  {
    sub_18912E1D4();
    swift_unknownObjectWeakAssign();

    sub_18912D9EC();
  }
}

void sub_18912D9EC()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  if (qword_1EA931F10 != -1)
  {
    swift_once();
  }

  if (byte_1EA93DCB1 == 1)
  {
    v13 = [objc_msgSend(objc_opt_self() automaticKeyboardArbiterClient)];
    swift_unknownObjectRelease();
LABEL_9:
    v4 = *(v0 + OBJC_IVAR___UISubstituteKeyboardSession_viewController);
    if (v4)
    {
      v5 = v4;
      [v5 setModalPresentationStyle_];
      [v5 setTransitioningDelegate_];
      sub_18912E0C4();
      v6 = [objc_msgSend(objc_opt_self() automaticKeyboardArbiterClient)];
      swift_unknownObjectRelease();
      v7 = [v6 placement];

      if (v7)
      {
        v8 = [v7 showsInputOrAssistantViews];

        v9 = OBJC_IVAR___UISubstituteKeyboardSession_wasShowingInputOrAssistantViews;
        *(v0 + OBJC_IVAR___UISubstituteKeyboardSession_wasShowingInputOrAssistantViews) = v8;
        if (qword_1EA931F08 != -1)
        {
          swift_once();
        }

        if (byte_1EA93DCB0)
        {
          v10 = 1;
        }

        else
        {
          v10 = *(v0 + v9) ^ 1;
        }

        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_1891356A8;
        aBlock[5] = v11;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_188A4A8F0;
        aBlock[3] = &block_descriptor_155_0;
        v12 = _Block_copy(aBlock);

        [v13 presentViewController:v5 animated:v10 & 1 completion:v12];
        _Block_release(v12);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }

    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
    }

    v13 = [v3 _viewControllerForAncestor];

    if (v13)
    {
      goto LABEL_9;
    }
  }
}

void sub_18912DD44()
{
  v1 = OBJC_IVAR___UISubstituteKeyboardSession_viewController;
  v2 = *(v0 + OBJC_IVAR___UISubstituteKeyboardSession_viewController);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  v4 = [v3 presentingViewController];
  if (v4)
  {

    if (([v3 isBeingDismissed] & 1) == 0)
    {
      if (qword_1EA931F08 != -1)
      {
        swift_once();
      }

      if ((byte_1EA93DCB0 & 1) == 0 && *(v0 + OBJC_IVAR___UISubstituteKeyboardSession_wasShowingInputOrAssistantViews) == 1)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v9 = Strong;
          v10 = swift_dynamicCastObjCProtocolConditional();
          if (v10)
          {
            v11 = [v10 isFirstResponder];

            v12 = v11 ^ 1;
LABEL_19:
            v13 = swift_allocObject();
            swift_unknownObjectWeakInit();
            aBlock[4] = sub_189135670;
            aBlock[5] = v13;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_188A4A8F0;
            aBlock[3] = &block_descriptor_147_0;
            v14 = _Block_copy(aBlock);

            [v3 dismissViewControllerAnimated:v12 completion:v14];
            _Block_release(v14);

            return;
          }
        }
      }

      v12 = 1;
      goto LABEL_19;
    }
  }

LABEL_5:
  v5 = [*(v0 + v1) presentingViewController];
  if (!v5)
  {
    sub_18912E1D4();
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))();
    v6 = *(v0 + v1);
    *(v0 + v1) = 0;

    v7 = [objc_opt_self() defaultCenter];
    [v7 removeObserver_];

    v5 = qword_1EA93DCB8;
    qword_1EA93DCB8 = 0;
  }
}

void sub_18912DFE4()
{
  v1 = OBJC_IVAR___UISubstituteKeyboardSession_viewController;
  v2 = [*(v0 + OBJC_IVAR___UISubstituteKeyboardSession_viewController) presentingViewController];
  if (!v2)
  {
    sub_18912E1D4();
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))();
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;

    v4 = [objc_opt_self() defaultCenter];
    [v4 removeObserver_];

    v2 = qword_1EA93DCB8;
    qword_1EA93DCB8 = 0;
  }
}

void sub_18912E0C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong _window];

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18A64BFB0;
      *(inited + 32) = &type metadata for UITraitUserInterfaceStyle;
      *(inited + 40) = &protocol witness table for UITraitUserInterfaceStyle;
      v7[3] = type metadata accessor for UISubstituteKeyboardSession();
      v7[0] = v0;
      v5 = v0;
      v6 = UIView.registerForTraitChanges(_:target:action:)(inited, v7, sel_updateUserInterfaceStyle);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      *&v5[OBJC_IVAR___UISubstituteKeyboardSession_traitChangeObservation] = v6;
      swift_unknownObjectRelease();
      sub_18912E2A8();
    }
  }
}

void sub_18912E1D4()
{
  v1 = OBJC_IVAR___UISubstituteKeyboardSession_traitChangeObservation;
  v2 = *(v0 + OBJC_IVAR___UISubstituteKeyboardSession_traitChangeObservation);
  if (v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      swift_unknownObjectRetain();
      v5 = [v4 _window];

      if (v5)
      {
        [v5 unregisterForTraitChanges_];

        swift_unknownObjectRelease();
        *(v0 + v1) = 0;
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_18912E2A8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v12 = [Strong _window];

    if (v12)
    {
      v3 = *(v0 + OBJC_IVAR___UISubstituteKeyboardSession_viewController);
      if (v3)
      {
        v4 = v3;
        v5 = [v12 traitCollection];
        v6 = [v5 userInterfaceStyle];

        v7 = [(UIViewController *)v4 _traitOverrides];
        v8 = [(_UITraitOverrides *)v7 _swiftImplCopy];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
        inited = swift_initStackObject();
        *(inited + 16) = v8;
        v13 = inited;
        sub_188D63200(v6);
        v10 = [(UIViewController *)v4 _traitOverrides];
        v11 = *(v13 + 16);

        [(_UITraitOverrides *)v10 _replaceWithOverrides:v11];
      }

      else
      {
      }
    }
  }
}

void sub_18912E424()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  v3 = [objc_opt_self() _applicationKeyWindow];
  [v2 addObserver:v0 selector:sel_firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:v3];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = sub_188F7B4D0();

    if (v5)
    {
      sub_188A34624(0, &qword_1EA93DED8);
      Strong = sub_18A4A86A8();
    }

    else
    {
      Strong = 0;
    }
  }

  [v2 addObserver:v1 selector:sel_cancel name:@"UIApplicationDidEnterBackgroundNotification" object:Strong];
  swift_unknownObjectRelease();
  [v2 addObserver:v1 selector:sel_cancel name:@"UIKeyboardPrivateInteractiveDismissalDidBeginNotification" object:0];
}

uint64_t sub_18912E5A0()
{
  v1 = v0;
  v2 = sub_18A4A2448();
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v15 = sub_18A4A7288();
  sub_18A4A8048();
  if (!*(v3 + 16) || (v4 = sub_188BBA050(v16), (v5 & 1) == 0))
  {

    sub_188BBA15C(v16);
LABEL_11:
    v17 = 0u;
    v18 = 0u;
    return sub_188A553EC(&v17);
  }

  sub_188A55598(*(v3 + 56) + 32 * v4, &v17);
  sub_188BBA15C(v16);

  if (!*(&v18 + 1))
  {
    return sub_188A553EC(&v17);
  }

  sub_188A55538(&v17, v16);
  sub_188A55598(v16, &v17);
  sub_188A34624(0, &qword_1ED48D5A0);
  v6 = swift_dynamicCast();
  v7 = *(v1 + OBJC_IVAR___UISubstituteKeyboardSession_viewController);
  if (v6 && v15)
  {
    if (v7)
    {
      v8 = v7;
      v9 = sub_18A4A7C88();

      if (v9)
      {
        return __swift_destroy_boxed_opaque_existential_0Tm(v16);
      }
    }

    else
    {
    }
  }

  else if (!v7)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  sub_188A55598(v16, &v17);
  sub_188A34624(0, &qword_1EA93DED0);
  v11 = swift_dynamicCast();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v11 && v15)
  {
    if (Strong)
    {
      v13 = Strong;
      v14 = sub_18A4A7C88();

      if (v14)
      {
        return __swift_destroy_boxed_opaque_existential_0Tm(v16);
      }

      goto LABEL_25;
    }

    Strong = v15;
  }

  else if (!Strong)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

LABEL_25:
  sub_18912DD44();
  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

void sub_18912E7C4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_1EA93DCB0 = (v1 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

id sub_18912E82C()
{
  result = _UIMainBundleIdentifier();
  if (result)
  {
    v1 = result;
    v2 = sub_18A4A7288();
    v4 = v3;

    if (v2 == 0xD000000000000031 && 0x800000018A6AB3A0 == v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_18A4A86C8();
    }
  }

  else
  {
    v5 = 0;
  }

  byte_1EA93DCB1 = v5 & 1;
  return result;
}

id sub_18912E8DC()
{
  *&v0[OBJC_IVAR___UISubstituteKeyboardSession_viewController] = 0;
  v1 = &v0[OBJC_IVAR___UISubstituteKeyboardSession_presentationController];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR___UISubstituteKeyboardSession_animationController] = 0;
  *&v0[OBJC_IVAR___UISubstituteKeyboardSession_traitChangeObservation] = 0;
  v0[OBJC_IVAR___UISubstituteKeyboardSession_wasShowingInputOrAssistantViews] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UISubstituteKeyboardSession();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_18912E994()
{
  v1 = v0;
  v2 = qword_1EA93DCB8;
  if (!qword_1EA93DCB8)
  {
    goto LABEL_5;
  }

  if (!swift_dynamicCastClass())
  {
    v5 = v2;
    sub_18912DD44();

LABEL_5:
    v6 = [objc_allocWithZone(v1) init];
    v7 = qword_1EA93DCB8;
    qword_1EA93DCB8 = v6;
    v3 = v6;

    return v3;
  }

  v3 = swift_dynamicCastClassUnconditional();
  v4 = v2;
  return v3;
}

void sub_18912EC20()
{
  v0 = sub_18A4A6E18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18A4A6E58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [*(Strong + OBJC_IVAR___UISubstituteKeyboardSession_viewController) presentingViewController];
    if (v10)
    {

      sub_188A34624(0, &qword_1ED490540);
      v14 = sub_18A4A7A68();
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_189135678;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A8F0;
      aBlock[3] = &block_descriptor_151_0;
      v12 = _Block_copy(aBlock);

      sub_18A4A6E38();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_188D7609C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
      sub_188BA3728();
      sub_18A4A7EB8();
      v13 = v14;
      MEMORY[0x18CFE29D0](0, v7, v3, v12);
      _Block_release(v12);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      sub_18912DFE4();
    }
  }
}

void sub_18912EF18(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

id sub_18912F0A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UISubstituteKeyboardSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_18912F374(void *a1)
{
  v2 = [a1 presentedViewController];
  v3 = *(v1 + OBJC_IVAR___UISubstituteKeyboardSession_viewController);
  if (!v2)
  {
    if (v3)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v3)
  {
    v6 = v2;
    sub_188A34624(0, &qword_1ED48D5A0);
    v4 = v3;
    v5 = sub_18A4A7C88();

    if ((v5 & 1) == 0)
    {
      return;
    }

LABEL_4:

    sub_18912DFE4();
    return;
  }
}

uint64_t sub_18912F4D0()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_shouldSuppressKeyboard))
  {
    v1 = 1;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (qword_1EA931F08 != -1)
      {
        v5 = Strong;
        swift_once();
        Strong = v5;
      }

      if (byte_1EA93DCB0 == 1)
      {

        v1 = 1;
      }

      else
      {
        v3 = *(Strong + OBJC_IVAR___UISubstituteKeyboardSession_wasShowingInputOrAssistantViews);

        v1 = v3 ^ 1;
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

void *sub_18912F590(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_keyboardSuppressionAssertion] = 0;
  v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_shouldSuppressKeyboard] = 1;
  v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_isLandscape] = 0;
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_preferredHeight] = 0;
  v26.receiver = v3;
  v26.super_class = ObjectType;
  v24 = a2;
  v7 = objc_msgSendSuper2(&v26, sel_initWithPresentedViewController_presentingViewController_, a1, a2);
  v8 = sub_18A4A7258();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_189135668;
  *(v13 + 24) = v11;
  aBlock[4] = sub_188CED404;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188CED360;
  aBlock[3] = &block_descriptor_141_2;
  v14 = _Block_copy(aBlock);

  v15 = [v12 customDetentWithIdentifier:v8 resolver:v14];
  _Block_release(v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18A64B710;
  *(v16 + 32) = v15;
  sub_188A34624(0, &unk_1ED490400);
  v17 = v15;
  v18 = sub_18A4A7518();

  [v7 setDetents_];

  v19 = [v17 identifier];
  [v7 setSelectedDetentIdentifier_];

  v20 = [v17 identifier];
  [v7 setLargestUndimmedDetentIdentifier_];

  [v7 setPrefersEdgeAttachedInCompactHeight_];
  [v7 setWidthFollowsPreferredContentSizeWhenEdgeAttached_];
  [v7 _setShadowRadius_];

  LOBYTE(v20) = _UISolariumEnabled();
  v21 = v7;
  v22 = v21;
  if (v20)
  {
    [v21 _setDisableSolariumInsets_];
  }

  else
  {
    [v21 setPreferredCornerRadius_];
  }

  return v22;
}

void sub_18912F96C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = 0.0;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong containerView];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v1 = v5;
      v7 = v6;
      v9 = v8;
      v11 = v10;
    }

    else
    {
      v7 = 0.0;
      v9 = 0.0;
      v11 = 0.0;
    }

    v17.origin.x = v1;
    v17.origin.y = v7;
    v17.size.width = v9;
    v17.size.height = v11;
    Height = CGRectGetHeight(v17);
    v13 = *&v2[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_preferredHeight];

    v18.origin.y = Height - v13;
    v18.origin.x = v1;
    v18.size.width = v9;
    v18.size.height = v13;
    CGRectGetHeight(v18);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 view];

    if (v16)
    {
      [v16 safeAreaInsets];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_18912FB20()
{
  v1 = v0;
  v63.receiver = v0;
  v63.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v63, sel_presentationTransitionWillBegin);
  if (_UISolariumEnabled())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = COERCE_DOUBLE((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x140))());
      v6 = v5;

      if ((v6 & 1) == 0)
      {
        [v1 setPreferredCornerRadius_];
      }
    }
  }

  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 orientation];

  *(v1 + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_isLandscape) = UIInterfaceOrientationIsLandscape(v8);
  sub_1891303B0(0, 1);
  if (*(v1 + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_shouldSuppressKeyboard) == 1)
  {
    MEMORY[0x1EEE9AC00](v9);
    v61[2] = v1;
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      if (qword_1EA931F08 != -1)
      {
        v59 = v10;
        swift_once();
        v10 = v59;
      }

      if (byte_1EA93DCB0 == 1)
      {

LABEL_19:
        v16 = objc_opt_self();
        v17 = [v16 automaticKeyboardArbiterClient];
        v18 = sub_18A4A7258();
        v19 = [v17 vendKeyboardSuppressionAssertionForReason_];

        swift_unknownObjectRelease();
        *(v1 + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_keyboardSuppressionAssertion) = v19;
        swift_unknownObjectRelease();
        [v1 frameOfPresentedViewInContainerView];
        x = v64.origin.x;
        y = v64.origin.y;
        width = v64.size.width;
        height = v64.size.height;
        MaxY = CGRectGetMaxY(v64);
        v65.origin.x = x;
        v65.origin.y = y;
        v65.size.width = width;
        v65.size.height = height;
        v25 = CGRectGetWidth(v65);
        v66.origin.x = x;
        v66.origin.y = y;
        v66.size.width = width;
        v66.size.height = height;
        v26 = CGRectGetHeight(v66);
        v27 = swift_unknownObjectWeakLoadStrong();
        if (v27)
        {
          v28 = v27;
          v29 = swift_unknownObjectWeakLoadStrong();

          if (v29)
          {
            objc_opt_self();
            v30 = swift_dynamicCastObjCClass();
            if (!v30)
            {
            }

            v31 = [v30 window];

            v32 = [v31 windowScene];
            if (v32)
            {
LABEL_27:
              v37 = [objc_opt_self() trackingCoordinatorForScene_];
              [objc_opt_self() defaultDurationForTransition_];
              [v37 animateTrackingElementsFromStart:1 toEnd:x duration:MaxY forShow:{v25, v26, x, y, width, height, v38}];

              return;
            }
          }
        }

        v33 = [v16 activeKeyboardSceneDelegate];
        v34 = [v33 existingContainerRootController];

        if (!v34)
        {
          return;
        }

        v35 = [v34 view];

        if (v35)
        {
          v36 = [v35 window];

          v32 = [v36 windowScene];
          if (!v32)
          {
            return;
          }

          goto LABEL_27;
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

      v12 = *(v10 + OBJC_IVAR___UISubstituteKeyboardSession_wasShowingInputOrAssistantViews);

      if ((v12 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v13 = objc_opt_self();
    v1 = swift_allocObject();
    v1[2] = sub_189135618;
    v1[3] = v61;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1891356F4;
    *(v14 + 24) = v1;
    aBlock[4] = sub_188E3FE50;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_128_1;
    v15 = _Block_copy(aBlock);

    [v13 performWithoutAnimation_];
    _Block_release(v15);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    v11 = swift_unknownObjectWeakLoadStrong();
    if (!v11)
    {
      return;
    }

    if (qword_1EA931F08 != -1)
    {
      v60 = v11;
      swift_once();
      v11 = v60;
    }

    if (byte_1EA93DCB0 == 1)
    {
    }

    else
    {
      v39 = *(v11 + OBJC_IVAR___UISubstituteKeyboardSession_wasShowingInputOrAssistantViews);

      if (v39)
      {
        return;
      }
    }

    [v1 frameOfPresentedViewInContainerView];
    v40 = v67.origin.x;
    v41 = v67.origin.y;
    v42 = v67.size.width;
    v43 = v67.size.height;
    v44 = CGRectGetMaxY(v67);
    v68.origin.x = v40;
    v68.origin.y = v41;
    v68.size.width = v42;
    v68.size.height = v43;
    v45 = CGRectGetWidth(v68);
    v69.origin.x = v40;
    v69.origin.y = v41;
    v69.size.width = v42;
    v69.size.height = v43;
    v46 = CGRectGetHeight(v69);
    v47 = swift_unknownObjectWeakLoadStrong();
    if (v47)
    {
      v48 = v47;
      v49 = swift_unknownObjectWeakLoadStrong();

      if (v49)
      {
        objc_opt_self();
        v50 = swift_dynamicCastObjCClass();
        if (!v50)
        {
        }

        v51 = [v50 window];

        v52 = [v51 windowScene];
        if (v52)
        {
          goto LABEL_38;
        }
      }
    }

    v53 = [objc_opt_self() activeKeyboardSceneDelegate];
    v54 = [v53 existingContainerRootController];

    if (v54)
    {
      v55 = [v54 view];

      if (!v55)
      {
        goto LABEL_41;
      }

      v56 = [v55 window];

      v52 = [v56 windowScene];
      if (v52)
      {
LABEL_38:
        v57 = [objc_opt_self() trackingCoordinatorForScene_];
        [objc_opt_self() defaultDurationForTransition_];
        [v57 animateTrackingElementsFromStart:1 toEnd:v40 duration:v44 forShow:{v45, v46, v40, v41, v42, v43, v58}];
      }
    }
  }
}

void sub_1891303B0(id a1, char a2)
{
  if (a2)
  {
    v4 = [v2 presentingViewController];
    a1 = [v4 interfaceOrientation];
  }

  if (qword_1EA931F10 != -1)
  {
    swift_once();
  }

  if (byte_1EA93DCB1 != 1)
  {
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v6 = [objc_msgSend(objc_opt_self() automaticKeyboardArbiterClient)];
  swift_unknownObjectRelease();
  v7 = [v6 inputViewSet];
  if (!v7)
  {
    v8 = v6;
LABEL_13:

LABEL_14:
    [objc_opt_self() sizeForInterfaceOrientation_];
    v34 = v35;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = [v7 inputAssistantView];
  if (!v9)
  {
    v9 = [v8 inputView];
    if (!v9)
    {

      goto LABEL_13;
    }
  }

  v10 = v9;
  [v9 bounds];
  [v10 convertRect:0 toView:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  objc_opt_self();
  v19 = +[UIScreen _mainScreen];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v42.origin.x = v21;
  v42.origin.y = v23;
  v42.size.width = v25;
  v42.size.height = v27;
  Height = CGRectGetHeight(v42);
  v29 = [v6 view];
  if (!v29)
  {
    __break(1u);
    return;
  }

  v30 = v29;
  [v29 safeAreaInsets];
  v32 = v31;

  v43.origin.x = v12;
  v43.origin.y = v14;
  v43.size.width = v16;
  v43.size.height = v18;
  MinY = CGRectGetMinY(v43);

  v34 = Height - v32 - MinY;
LABEL_15:
  IsPortrait = UIInterfaceOrientationIsPortrait(a1);
  v37 = swift_unknownObjectWeakLoadStrong();
  if (IsPortrait)
  {
    if (v37)
    {
    }
  }

  else if (v37)
  {
    v38 = v37;
    *&v39 = COERCE_DOUBLE((*((*MEMORY[0x1E69E7D40] & *v37) + 0x138))());
    v41 = v40;

    if ((v41 & 1) == 0)
    {
      v34 = *&v39;
    }
  }

  *&v2[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_preferredHeight] = v34;
}

void sub_1891306E0(char a1, char *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 automaticKeyboardArbiterClient];
  v6 = sub_18A4A7258();
  v7 = [v5 vendKeyboardSuppressionAssertionForReason_];

  swift_unknownObjectRelease();
  *&a2[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_keyboardSuppressionAssertion] = v7;
  swift_unknownObjectRelease();
  [a2 frameOfPresentedViewInContainerView];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  MaxY = CGRectGetMaxY(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v13 = CGRectGetWidth(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v14 = CGRectGetHeight(v31);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = swift_unknownObjectWeakLoadStrong();

    if (v17)
    {
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (!v18)
      {
      }

      v19 = [v18 window];

      v27 = [v19 windowScene];
      if (v27)
      {
        goto LABEL_9;
      }
    }
  }

  v20 = [v4 activeKeyboardSceneDelegate];
  v21 = [v20 existingContainerRootController];

  if (v21)
  {
    v22 = [v21 view];

    if (!v22)
    {
      __break(1u);
      return;
    }

    v23 = [v22 window];

    v27 = [v23 windowScene];
    if (v27)
    {
LABEL_9:
      v24 = [objc_opt_self() trackingCoordinatorForScene_];
      v25 = v24;
      if (a1)
      {
        [objc_opt_self() defaultDurationForTransition_];
        [v25 animateTrackingElementsFromStart:1 toEnd:x duration:MaxY forShow:{v13, v14, x, y, width, height, v26}];
      }

      else
      {
        [v24 moveKeyboardTrackingElementsFromStartFrame:0 endFrame:1 duration:x isStart:MaxY forShow:{v13, v14, x, y, width, height, 0}];
      }
    }
  }
}

void sub_189130AB0(char a1)
{
  v24.receiver = v1;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_presentationTransitionDidEnd_, a1 & 1);
  if (a1)
  {
    if ((*(v1 + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_shouldSuppressKeyboard) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      if (qword_1EA931F08 != -1)
      {
        v23 = Strong;
        swift_once();
        Strong = v23;
      }

      if (byte_1EA93DCB0 == 1)
      {
      }

      else
      {
        v4 = *(Strong + OBJC_IVAR___UISubstituteKeyboardSession_wasShowingInputOrAssistantViews);

        if (v4)
        {
          return;
        }
      }
    }

    [v1 frameOfPresentedViewInContainerView];
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    MaxY = CGRectGetMaxY(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v10 = CGRectGetWidth(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v11 = CGRectGetHeight(v27);
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = swift_unknownObjectWeakLoadStrong();

      if (v14)
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (!v15)
        {
        }

        v16 = [v15 window];

        v17 = [v16 windowScene];
        if (v17)
        {
          goto LABEL_17;
        }
      }
    }

    v18 = [objc_opt_self() activeKeyboardSceneDelegate];
    v19 = [v18 existingContainerRootController];

    if (v19)
    {
      v20 = [v19 view];

      if (!v20)
      {
        __break(1u);
        return;
      }

      v21 = [v20 window];

      v17 = [v21 windowScene];
      if (v17)
      {
LABEL_17:
        v22 = [objc_opt_self() trackingCoordinatorForScene_];
        [v22 moveKeyboardTrackingElementsFromStartFrame:0 endFrame:1 duration:x isStart:MaxY forShow:{v10, v11, x, y, width, height, 0}];
      }
    }
  }
}

void sub_189130E0C()
{
  v58.receiver = v0;
  v58.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v58, sel_dismissalTransitionWillBegin);
  if (*(v0 + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_shouldSuppressKeyboard) != 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_12;
    }

    if (qword_1EA931F08 != -1)
    {
      v55 = Strong;
      swift_once();
      Strong = v55;
    }

    if (byte_1EA93DCB0)
    {
LABEL_32:

      goto LABEL_33;
    }

    v4 = Strong[OBJC_IVAR___UISubstituteKeyboardSession_wasShowingInputOrAssistantViews];

    if (v4 == 1)
    {
LABEL_12:
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          aBlock[6] = &unk_1EFE8B2D0;
          v8 = v7;
          v9 = swift_dynamicCastObjCProtocolConditional();
          if (v9)
          {
            v10 = v9;
            v11 = v8;
            LOBYTE(v10) = [v10 isFirstResponder];

            if (v10)
            {
              return;
            }

            goto LABEL_33;
          }

          Strong = v8;
        }

        else
        {
          Strong = v6;
        }

        goto LABEL_32;
      }
    }

LABEL_33:
    [v0 frameOfPresentedViewInContainerView];
    x = v62.origin.x;
    y = v62.origin.y;
    width = v62.size.width;
    height = v62.size.height;
    MaxY = CGRectGetMaxY(v62);
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    v40 = CGRectGetWidth(v63);
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v41 = CGRectGetHeight(v64);
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42)
    {
      v43 = v42;
      v44 = swift_unknownObjectWeakLoadStrong();

      if (v44)
      {
        objc_opt_self();
        v45 = swift_dynamicCastObjCClass();
        if (!v45)
        {
        }

        v46 = [v45 window];

        v47 = [v46 windowScene];
        if (v47)
        {
          goto LABEL_41;
        }
      }
    }

    v48 = [objc_opt_self() activeKeyboardSceneDelegate];
    v49 = [v48 existingContainerRootController];

    if (v49)
    {
      v50 = [v49 view];

      if (!v50)
      {
        __break(1u);
        goto LABEL_44;
      }

      v51 = [v50 window];

      v47 = [v51 windowScene];
      if (v47)
      {
LABEL_41:
        v52 = [objc_opt_self() trackingCoordinatorForScene_];
        [objc_opt_self() defaultDurationForTransition_];
        [v52 animateTrackingElementsFromStart:0 toEnd:x duration:y forShow:{width, height, x, MaxY, v40, v41, v53}];
      }
    }

    return;
  }

  MEMORY[0x1EEE9AC00](v1);
  v56[2] = v0;
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    if (qword_1EA931F08 != -1)
    {
      v54 = v2;
      swift_once();
      v2 = v54;
    }

    if (byte_1EA93DCB0 == 1)
    {

LABEL_20:
      [v0 frameOfPresentedViewInContainerView];
      v16 = v59.origin.x;
      v17 = v59.origin.y;
      v18 = v59.size.width;
      v19 = v59.size.height;
      v20 = CGRectGetMaxY(v59);
      v60.origin.x = v16;
      v60.origin.y = v17;
      v60.size.width = v18;
      v60.size.height = v19;
      v21 = CGRectGetWidth(v60);
      v61.origin.x = v16;
      v61.origin.y = v17;
      v61.size.width = v18;
      v61.size.height = v19;
      v22 = CGRectGetHeight(v61);
      v23 = swift_unknownObjectWeakLoadStrong();
      if (v23)
      {
        v24 = v23;
        v25 = swift_unknownObjectWeakLoadStrong();

        if (v25)
        {
          objc_opt_self();
          v26 = swift_dynamicCastObjCClass();
          if (!v26)
          {
          }

          v27 = [v26 window];

          v28 = [v27 windowScene];
          if (v28)
          {
LABEL_28:
            v33 = [objc_opt_self() trackingCoordinatorForScene_];
            [objc_opt_self() defaultDurationForTransition_];
            [v33 animateTrackingElementsFromStart:0 toEnd:v16 duration:v17 forShow:{v18, v19, v16, v20, v21, v22, v34}];

            return;
          }
        }
      }

      v29 = [objc_opt_self() activeKeyboardSceneDelegate];
      v30 = [v29 existingContainerRootController];

      if (!v30)
      {
        return;
      }

      v31 = [v30 view];

      if (v31)
      {
        v32 = [v31 window];

        v28 = [v32 windowScene];
        if (!v28)
        {
          return;
        }

        goto LABEL_28;
      }

LABEL_44:
      __break(1u);
      return;
    }

    v12 = *(v2 + OBJC_IVAR___UISubstituteKeyboardSession_wasShowingInputOrAssistantViews);

    if ((v12 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_189135610;
  *(v14 + 24) = v56;
  v0 = swift_allocObject();
  v0[2] = sub_1891356F4;
  v0[3] = v14;
  aBlock[4] = sub_188E3FE50;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_117_3;
  v15 = _Block_copy(aBlock);

  [v13 performWithoutAnimation_];
  _Block_release(v15);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_20;
  }
}

void sub_1891315C0(char a1, id a2)
{
  if ((a1 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        v7 = swift_dynamicCastObjCProtocolConditional();
        if (v7)
        {
          v8 = v7;
          v9 = v6;
          LOBYTE(v8) = [v8 isFirstResponder];

          if (v8)
          {
            return;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  [a2 frameOfPresentedViewInContainerView];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  MaxY = CGRectGetMaxY(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v15 = CGRectGetWidth(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v16 = CGRectGetHeight(v31);
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = swift_unknownObjectWeakLoadStrong();

    if (v19)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (!v20)
      {
      }

      v21 = [v20 window];

      v22 = [v21 windowScene];
      if (v22)
      {
        goto LABEL_17;
      }
    }
  }

  v23 = [objc_opt_self() activeKeyboardSceneDelegate];
  v24 = [v23 existingContainerRootController];

  if (v24)
  {
    v25 = [v24 view];

    if (!v25)
    {
      __break(1u);
      return;
    }

    v26 = [v25 window];

    v22 = [v26 windowScene];
    if (v22)
    {
LABEL_17:
      v27 = [objc_opt_self() trackingCoordinatorForScene_];
      [objc_opt_self() defaultDurationForTransition_];
      [v27 animateTrackingElementsFromStart:0 toEnd:x duration:y forShow:{width, height, x, MaxY, v15, v16, v28}];
    }
  }
}

void sub_189131918(char a1)
{
  v43.receiver = v1;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, sel_dismissalTransitionDidEnd_, a1 & 1);
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_6:
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          v41[5] = &unk_1EFE8B2D0;
          v8 = v7;
          v9 = swift_dynamicCastObjCProtocolConditional();
          if (v9)
          {
            v10 = v9;
            v11 = v8;
            LOBYTE(v10) = [v10 isFirstResponder];

            if (v10)
            {
              goto LABEL_23;
            }

            goto LABEL_14;
          }

          Strong = v8;
        }

        else
        {
          Strong = v6;
        }

        goto LABEL_13;
      }

LABEL_14:
      [v1 frameOfPresentedViewInContainerView];
      x = v44.origin.x;
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      MaxY = CGRectGetMaxY(v44);
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v18 = CGRectGetWidth(v45);
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      v19 = CGRectGetHeight(v46);
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        v22 = swift_unknownObjectWeakLoadStrong();

        if (v22)
        {
          objc_opt_self();
          v23 = swift_dynamicCastObjCClass();
          if (!v23)
          {
          }

          v24 = [v23 window];

          v25 = [v24 windowScene];
          if (v25)
          {
            goto LABEL_22;
          }
        }
      }

      v26 = [objc_opt_self() activeKeyboardSceneDelegate];
      v27 = [v26 existingContainerRootController];

      if (v27)
      {
        v28 = [v27 view];

        if (!v28)
        {
          __break(1u);
          return;
        }

        v29 = [v28 window];

        v25 = [v29 windowScene];
        if (v25)
        {
LABEL_22:
          v30 = [objc_opt_self() trackingCoordinatorForScene_];
          [v30 moveKeyboardTrackingElementsFromStartFrame:0 endFrame:0 duration:x isStart:y forShow:{width, height, x, MaxY, v18, v19, 0}];
        }
      }

LABEL_23:
      MEMORY[0x1EEE9AC00](v12);
      v41[2] = v1;
      v31 = swift_unknownObjectWeakLoadStrong();
      if (v31)
      {
        if (qword_1EA931F08 != -1)
        {
          v40 = v31;
          swift_once();
          v31 = v40;
        }

        if (byte_1EA93DCB0 == 1)
        {

          goto LABEL_31;
        }

        v32 = *(v31 + OBJC_IVAR___UISubstituteKeyboardSession_wasShowingInputOrAssistantViews);

        if ((v32 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v33 = objc_opt_self();
      v34 = swift_allocObject();
      *(v34 + 16) = sub_1891355F8;
      *(v34 + 24) = v41;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_188F3AD00;
      *(v35 + 24) = v34;
      aBlock[4] = sub_188A4B574;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A968;
      aBlock[3] = &block_descriptor_106;
      v36 = _Block_copy(aBlock);

      [v33 performWithoutAnimation_];
      _Block_release(v36);
      LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

      if ((v33 & 1) == 0)
      {
        goto LABEL_32;
      }

      __break(1u);
LABEL_31:
      *&v1[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_keyboardSuppressionAssertion] = 0;
      swift_unknownObjectRelease();
LABEL_32:
      v37 = swift_unknownObjectWeakLoadStrong();
      if (v37)
      {
        v38 = v37;
        sub_18912DD44();
      }

      return;
    }

    if (qword_1EA931F08 == -1)
    {
      if ((byte_1EA93DCB0 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v39 = Strong;
      swift_once();
      Strong = v39;
      if ((byte_1EA93DCB0 & 1) == 0)
      {
LABEL_5:
        v4 = Strong[OBJC_IVAR___UISubstituteKeyboardSession_wasShowingInputOrAssistantViews];

        if (v4 != 1)
        {
          goto LABEL_14;
        }

        goto LABEL_6;
      }
    }

LABEL_13:

    goto LABEL_14;
  }
}

void sub_189131FC4()
{
  ObjectType = swift_getObjectType();
  if (*(v0 + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_isLandscape) == 1)
  {
    [objc_msgSend(v0 _layoutInfo)];
    v3 = v2;
    v5 = v4;
    swift_unknownObjectRelease();
    [objc_msgSend(v0 _layoutInfo)];
    swift_unknownObjectRelease();
  }

  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, sel__containerViewLayoutSubviews);
  v6 = [v0 _sheetInteraction];
  [v6 setEnabled_];

  if (*(v0 + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_shouldSuppressKeyboard) == 1)
  {
    v7 = [v0 presentedViewController];
    v8 = [v7 isBeingDismissed];

    if ((v8 & 1) == 0)
    {
      [v0 frameOfPresentedViewInContainerView];
      x = v28.origin.x;
      y = v28.origin.y;
      width = v28.size.width;
      height = v28.size.height;
      MaxY = CGRectGetMaxY(v28);
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v14 = CGRectGetWidth(v29);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v15 = CGRectGetHeight(v30);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        v18 = swift_unknownObjectWeakLoadStrong();

        if (v18)
        {
          objc_opt_self();
          v19 = swift_dynamicCastObjCClass();
          if (!v19)
          {
          }

          v20 = [v19 window];

          v21 = [v20 windowScene];
          if (v21)
          {
            goto LABEL_13;
          }
        }
      }

      v22 = [objc_opt_self() activeKeyboardSceneDelegate];
      v23 = [v22 existingContainerRootController];

      if (v23)
      {
        v24 = [v23 view];

        if (!v24)
        {
          __break(1u);
          return;
        }

        v25 = [v24 window];

        v21 = [v25 windowScene];
        if (v21)
        {
LABEL_13:
          v26 = [objc_opt_self() trackingCoordinatorForScene_];
          [v26 moveKeyboardTrackingElementsFromStartFrame:0 endFrame:1 duration:x isStart:MaxY forShow:{v14, v15, x, y, width, height, 0}];
        }
      }
    }
  }
}

uint64_t sub_189132384(void *a1, double a2, double a3)
{
  v23.receiver = v3;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  *(v3 + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_isLandscape) = a3 < a2;
  if (a3 >= a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 4;
  }

  sub_1891303B0(v7, 0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v8;
  v11[4] = v9;
  v21 = sub_1891355D0;
  v22 = v11;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_188C577F0;
  v20 = &block_descriptor_90_6;
  v12 = _Block_copy(&v17);

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v8;
  v14[4] = v9;
  v21 = sub_1891355DC;
  v22 = v14;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_188C577F0;
  v20 = &block_descriptor_97_0;
  v15 = _Block_copy(&v17);

  [a1 animateAlongsideTransition:v12 completion:v15];
  _Block_release(v15);
  _Block_release(v12);
}

void sub_189132614(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [v7 containerView];
    v9 = 0.0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (v8)
    {
      v14 = v8;
      [v8 frame];
      v10 = v15;
      v11 = v16;
      v12 = v17;
      v13 = v18;
    }

    swift_beginAccess();
    *(a3 + 2) = v10;
    *(a3 + 3) = v11;
    *(a3 + 4) = v12;
    *(a3 + 5) = v13;
    v19 = [v7 containerView];
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    if (v19)
    {
      v23 = v19;
      [v19 bounds];
      v9 = v24;
      v20 = v25;
      v21 = v26;
      v22 = v27;
    }

    v53.origin.x = v9;
    v53.origin.y = v20;
    v53.size.width = v21;
    v53.size.height = v22;
    Height = CGRectGetHeight(v53);
    v29 = *&v7[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_preferredHeight];
    v30 = Height - v29;
    swift_beginAccess();
    a4[2] = v9;
    a4[3] = v30;
    a4[4] = v21;
    a4[5] = v29;
    v31 = [v7 presentedViewController];

    v32 = [v31 view];
    if (v32)
    {
      [v32 setFrame_];

      if ((sub_18912F4D0() & 1) == 0)
      {
        goto LABEL_17;
      }

      swift_beginAccess();
      v33 = a3[2];
      v34 = a3[3];
      v35 = a3[4];
      v36 = a3[5];
      swift_beginAccess();
      v37 = a4[2];
      v38 = a4[3];
      v39 = a4[4];
      v40 = a4[5];
      v41 = swift_unknownObjectWeakLoadStrong();
      if (v41)
      {
        v42 = v41;
        v43 = swift_unknownObjectWeakLoadStrong();

        if (v43)
        {
          objc_opt_self();
          v44 = swift_dynamicCastObjCClass();
          if (!v44)
          {
          }

          v45 = [v44 window];

          v46 = [v45 windowScene];
          if (v46)
          {
            goto LABEL_16;
          }
        }
      }

      v47 = [objc_opt_self() activeKeyboardSceneDelegate];
      v48 = [v47 existingContainerRootController];

      if (!v48)
      {
LABEL_17:

        return;
      }

      v49 = [v48 view];

      if (v49)
      {
        v50 = [v49 window];

        v46 = [v50 windowScene];
        if (v46)
        {
LABEL_16:
          v51 = [objc_opt_self() trackingCoordinatorForScene_];
          [objc_opt_self() defaultDurationForTransition_];
          [v51 animateTrackingElementsFromStart:0 toEnd:v33 duration:v34 forShow:{v35, v36, v37, v38, v39, v40, v52}];

          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_189132A14(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_shouldSuppressKeyboard) & 1) == 0)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        if (qword_1EA931F08 != -1)
        {
          v29 = v8;
          swift_once();
          v8 = v29;
        }

        if (byte_1EA93DCB0 == 1)
        {

          goto LABEL_9;
        }

        v9 = *(v8 + OBJC_IVAR___UISubstituteKeyboardSession_wasShowingInputOrAssistantViews);

        if ((v9 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

LABEL_18:

      return;
    }

LABEL_9:
    swift_beginAccess();
    v10 = a3[2];
    v11 = a3[3];
    v12 = a3[4];
    v13 = a3[5];
    swift_beginAccess();
    v14 = a4[2];
    v15 = a4[3];
    v16 = a4[4];
    v17 = a4[5];
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = swift_unknownObjectWeakLoadStrong();

      if (v20)
      {
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (!v21)
        {
        }

        v22 = [v21 window];

        v23 = [v22 windowScene];
        if (v23)
        {
          goto LABEL_17;
        }
      }
    }

    v24 = [objc_opt_self() activeKeyboardSceneDelegate];
    v25 = [v24 existingContainerRootController];

    if (v25)
    {
      v26 = [v25 view];

      if (!v26)
      {
        __break(1u);
        return;
      }

      v27 = [v26 window];

      v23 = [v27 windowScene];
      if (v23)
      {
LABEL_17:
        v28 = [objc_opt_self() trackingCoordinatorForScene_];
        [v28 moveKeyboardTrackingElementsFromStartFrame:0 endFrame:0 duration:v10 isStart:v11 forShow:{v12, v13, v14, v15, v16, v17, 0}];
      }
    }

    goto LABEL_18;
  }
}

void sub_189132D98(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void sub_189132DE0()
{
  v1 = objc_opt_self();
  v2 = [v1 automaticKeyboardArbiterClient];
  v3 = sub_18A4A7258();
  v4 = [v2 vendKeyboardSuppressionAssertionForReason_];

  swift_unknownObjectRelease();
  *&v0[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_keyboardSuppressionAssertion] = v4;
  swift_unknownObjectRelease();
  [v0 frameOfPresentedViewInContainerView];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  MaxY = CGRectGetMaxY(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v10 = CGRectGetWidth(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v11 = CGRectGetHeight(v27);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_unknownObjectWeakLoadStrong();

    if (v14)
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {
      }

      v16 = [v15 window];

      v23 = [v16 windowScene];
      if (v23)
      {
        goto LABEL_9;
      }
    }
  }

  v17 = [v1 activeKeyboardSceneDelegate];
  v18 = [v17 existingContainerRootController];

  if (v18)
  {
    v19 = [v18 view];

    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = [v19 window];

    v23 = [v20 windowScene];
    if (v23)
    {
LABEL_9:
      v21 = [objc_opt_self() trackingCoordinatorForScene_];
      [objc_opt_self() defaultDurationForTransition_];
      [v21 animateTrackingElementsFromStart:1 toEnd:x duration:MaxY forShow:{v10, v11, x, y, width, height, v22}];
    }
  }
}

void sub_189133164(char a1)
{
  if (a1)
  {
    [v1 frameOfPresentedViewInContainerView];
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    MaxY = CGRectGetMaxY(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v7 = CGRectGetWidth(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v8 = CGRectGetHeight(v23);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = swift_unknownObjectWeakLoadStrong();

      if (v11)
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (!v12)
        {
        }

        v13 = [v12 window];

        v19 = [v13 windowScene];
        if (v19)
        {
          goto LABEL_10;
        }
      }
    }

    v14 = [objc_opt_self() activeKeyboardSceneDelegate];
    v15 = [v14 existingContainerRootController];

    if (v15)
    {
      v16 = [v15 view];

      if (!v16)
      {
        __break(1u);
        return;
      }

      v17 = [v16 window];

      v19 = [v17 windowScene];
      if (v19)
      {
LABEL_10:
        v18 = [objc_opt_self() trackingCoordinatorForScene_];
        [v18 moveKeyboardTrackingElementsFromStartFrame:0 endFrame:1 duration:x isStart:MaxY forShow:{v7, v8, x, y, width, height, 0}];
      }
    }
  }
}

void sub_189133444()
{
  [v0 frameOfPresentedViewInContainerView];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  MaxY = CGRectGetMaxY(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v6 = CGRectGetWidth(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v7 = CGRectGetHeight(v23);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = swift_unknownObjectWeakLoadStrong();

    if (v10)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (!v11)
      {
      }

      v12 = [v11 window];

      v13 = [v12 windowScene];
      if (v13)
      {
        goto LABEL_9;
      }
    }
  }

  v14 = [objc_opt_self() activeKeyboardSceneDelegate];
  v15 = [v14 existingContainerRootController];

  if (v15)
  {
    v16 = [v15 view];

    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = [v16 window];

    v13 = [v17 windowScene];
    if (v13)
    {
LABEL_9:
      v18 = [objc_opt_self() trackingCoordinatorForScene_];
      [objc_opt_self() defaultDurationForTransition_];
      [v18 animateTrackingElementsFromStart:0 toEnd:x duration:y forShow:{width, height, x, MaxY, v6, v7, v19}];
    }
  }

  *&v0[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_keyboardSuppressionAssertion] = 0;

  swift_unknownObjectRelease();
}

void sub_189133720(char a1)
{
  if (a1)
  {
    [v1 frameOfPresentedViewInContainerView];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v7 = CGRectGetWidth(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v8 = CGRectGetHeight(v25);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = swift_unknownObjectWeakLoadStrong();

      if (v11)
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (!v12)
        {
        }

        v13 = [v12 window];

        v14 = [v13 windowScene];
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    v15 = [objc_opt_self() activeKeyboardSceneDelegate];
    v16 = [v15 existingContainerRootController];

    if (v16)
    {
      v17 = [v16 view];

      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = [v17 window];

      v14 = [v18 windowScene];
      if (v14)
      {
LABEL_10:
        v19 = [objc_opt_self() trackingCoordinatorForScene_];
        [v19 moveKeyboardTrackingElementsFromStartFrame:0 endFrame:0 duration:x isStart:y forShow:{width, height, x, MaxY, v7, v8, 0}];
      }
    }

    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      sub_18912DD44();
    }
  }
}

void sub_189133A88()
{
  v1 = objc_opt_self();
  v2 = [v0 presentingViewController];
  v3 = [v2 interfaceOrientation];

  [v1 sizeForInterfaceOrientation_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  v5 = [v0 containerView];
  if (v5)
  {
    v6 = v5;
    [v5 bounds];
  }
}

uint64_t sub_189133BB0(void *a1, double a2, double a3)
{
  v22.receiver = v3;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v7;
  v10[4] = v8;
  v20 = sub_1891355B8;
  v21 = v10;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_188C577F0;
  v19 = &block_descriptor_72_4;
  v11 = _Block_copy(&v16);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v7;
  v13[4] = v8;
  v20 = sub_1891355C4;
  v21 = v13;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_188C577F0;
  v19 = &block_descriptor_79_4;
  v14 = _Block_copy(&v16);

  [a1 animateAlongsideTransition:v11 completion:v14];
  _Block_release(v14);
  _Block_release(v11);
}

void sub_189133E1C(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowView;
    v9 = *(Strong + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowView);
    if (v9)
    {
      [v9 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
    }

    else
    {
      v11 = 0;
      v13 = 0;
      v15 = 0;
      v17 = 0;
    }

    swift_beginAccess();
    *(a3 + 2) = v11;
    *(a3 + 3) = v13;
    *(a3 + 4) = v15;
    *(a3 + 5) = v17;
    sub_189133A88();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    swift_beginAccess();
    a4[2] = v19;
    a4[3] = v21;
    a4[4] = v23;
    a4[5] = v25;
    swift_beginAccess();
    v26 = a3[2];
    v27 = a3[3];
    v28 = a3[4];
    v29 = a3[5];
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v32 = swift_unknownObjectWeakLoadStrong();

      if (v32)
      {
        objc_opt_self();
        v33 = swift_dynamicCastObjCClass();
        if (!v33)
        {
        }

        v34 = [v33 window];

        v35 = [v34 windowScene];
        if (v35)
        {
          goto LABEL_13;
        }
      }
    }

    v36 = [objc_opt_self() activeKeyboardSceneDelegate];
    v37 = [v36 existingContainerRootController];

    if (v37)
    {
      v38 = [v37 view];

      if (!v38)
      {
        __break(1u);
        return;
      }

      v39 = [v38 window];

      v35 = [v39 windowScene];
      if (v35)
      {
LABEL_13:
        v40 = [objc_opt_self() trackingCoordinatorForScene_];
        [objc_opt_self() defaultDurationForTransition_];
        [v40 animateTrackingElementsFromStart:0 toEnd:v26 duration:v27 forShow:{v28, v29, v19, v21, v23, v25, v41}];
      }
    }

    v42 = *&v7[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_dimmingView];
    if (v42)
    {
      v43 = v42;
      v44 = [v7 containerView];
      if (v44)
      {
        v45 = v44;
        [v44 bounds];
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v53 = v52;
      }

      else
      {
        v47 = 0.0;
        v49 = 0.0;
        v51 = 0.0;
        v53 = 0.0;
      }

      [v43 setFrame_];
    }

    v54 = *&v7[v8];
    if (v54)
    {
      swift_beginAccess();
      [v54 setFrame_];
    }
  }
}

void sub_1891341E4(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = a3[2];
    v9 = a3[3];
    v10 = a3[4];
    v11 = a3[5];
    swift_beginAccess();
    v12 = a4[2];
    v13 = a4[3];
    v14 = a4[4];
    v15 = a4[5];
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = swift_unknownObjectWeakLoadStrong();

      if (v18)
      {
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (!v19)
        {
        }

        v20 = [v19 window];

        v21 = [v20 windowScene];
        if (v21)
        {
          goto LABEL_10;
        }
      }
    }

    v22 = [objc_opt_self() activeKeyboardSceneDelegate];
    v23 = [v22 existingContainerRootController];

    if (v23)
    {
      v24 = [v23 view];

      if (!v24)
      {
        __break(1u);
        return;
      }

      v25 = [v24 window];

      v21 = [v25 windowScene];
      if (v21)
      {
LABEL_10:
        v26 = [objc_opt_self() trackingCoordinatorForScene_];
        [v26 moveKeyboardTrackingElementsFromStartFrame:0 endFrame:0 duration:v8 isStart:v9 forShow:{v10, v11, v12, v13, v14, v15, 0}];
      }
    }
  }
}

void sub_189134468(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, double, double))
{
  swift_unknownObjectRetain();
  v11 = a1;
  a6(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1891345F8(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void sub_18913464C(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowView))
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = sub_1891351A0;
    v14 = v4;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_188A4A8F0;
    v12 = &block_descriptor_122;
    v5 = _Block_copy(&v9);

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = v6;
    v13 = sub_1891351A8;
    v14 = v7;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_188ABD010;
    v12 = &block_descriptor_51_2;
    v8 = _Block_copy(&v9);
    swift_unknownObjectRetain();

    [v3 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
    _Block_release(v8);
    _Block_release(v5);
  }

  else
  {

    sub_189134870(a1);
  }
}

void sub_189134870(void *a1)
{
  v56 = [a1 containerView];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    if ([v3 delegate])
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
      sub_188A55538(&v57, &aBlock);
    }

    else
    {
      memset(&aBlock, 0, 32);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v5 = v56;
    if (v57 != v1)
    {
LABEL_10:

      swift_unknownObjectRelease();
      return;
    }

    v6 = [a1 viewControllerForKey_];
    if (!v6)
    {
      v5 = v56;
      goto LABEL_10;
    }

    v7 = v6;
    v8 = [v6 view];
    [v4 setIgnoresInteractionEvents_];
    [v4 setIgnoreDirectTouchEvents_];
    v9 = [objc_allocWithZone(UIDimmingView) init];
    v10 = OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_dimmingView;
    v11 = *(v1 + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_dimmingView);
    *(v1 + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_dimmingView) = v9;

    v12 = *(v1 + v10);
    if (v12)
    {
      [v12 setDelegate_];
      swift_unknownObjectRelease();
      v13 = *(v1 + v10);
      if (v13)
      {
        v14 = v13;
        [v4 bounds];
        [v14 setFrame_];
      }
    }

    [a1 finalFrameForViewController_];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [objc_allocWithZone(UIView) init];
    v24 = OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowView;
    v25 = *(v1 + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowView);
    *(v1 + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowView) = v23;

    v26 = *(v1 + v24);
    v55 = v7;
    if (v26)
    {
      [v26 setFrame_];
      v27 = *(v1 + v24);
      if (!v8)
      {
        goto LABEL_26;
      }

      if (v27)
      {
        v28 = v8;
        [v27 bounds];
        goto LABEL_23;
      }
    }

    else if (!v8)
    {
      goto LABEL_33;
    }

    v33 = v8;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
LABEL_23:
    [v8 setFrame_];

    [v8 setClipsToBounds_];
    [v8 _setContinuousCornerRadius_];
    v34 = *(v1 + v10);
    v27 = *(v1 + v24);
    if (v34)
    {
      if (v27)
      {
        v35 = v8;
        v36 = v34;
        v37 = v27;
        [v37 addSubview_];
        [v4 addSubview_];
        [v4 addSubview_];

        v27 = *(v1 + v24);
        goto LABEL_26;
      }

LABEL_33:
      v50 = objc_opt_self();
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&aBlock.tx = sub_1891351B0;
      *&aBlock.ty = v51;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_188A4A8F0;
      *&aBlock.d = &block_descriptor_55_4;
      v52 = _Block_copy(&aBlock);

      v53 = swift_allocObject();
      *(v53 + 16) = a1;
      *&aBlock.tx = sub_1891351B8;
      *&aBlock.ty = v53;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_188ABD010;
      *&aBlock.d = &block_descriptor_61_2;
      v54 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v50 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];

      swift_unknownObjectRelease();
      _Block_release(v54);
      _Block_release(v52);
      return;
    }

LABEL_26:
    if (v27)
    {
      [v27 setAlpha_];
      v38 = *(v1 + v24);
      if (v38)
      {
        CGAffineTransformMakeScale(&aBlock, 0.6, 0.6);
        [v38 setTransform_];
        v39 = *(v1 + v24);
        if (v39)
        {
          v40 = [v39 layer];
          v41 = [objc_opt_self() _controlShadowColor];
          v42 = [v41 CGColor];

          [v40 setShadowColor_];
          v43 = *(v1 + v24);
          if (v43)
          {
            v44 = [v43 layer];
            LODWORD(v45) = 0.25;
            [v44 setShadowOpacity_];

            v46 = *(v1 + v24);
            if (v46)
            {
              v47 = [v46 layer];
              [v47 setShadowRadius_];

              v48 = *(v1 + v24);
              if (v48)
              {
                v49 = [v48 layer];
                [v49 setShadowOffset_];
              }
            }
          }
        }
      }
    }

    goto LABEL_33;
  }
}

void sub_189134FAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowView;
    v3 = *(Strong + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowView);
    if (v3)
    {
      [v3 setAlpha_];
      v4 = *&v1[v2];
      if (v4)
      {
        v5[0] = 0x3FF0000000000000;
        v5[1] = 0;
        v5[2] = 0;
        v5[3] = 0x3FF0000000000000;
        v5[4] = 0;
        v5[5] = 0;
        [v4 setTransform_];
      }
    }
  }
}

void sub_189135044()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowView;
    v3 = *(Strong + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowView);
    if (v3)
    {
      [v3 setAlpha_];
      v4 = *&v1[v2];
      if (v4)
      {
        CGAffineTransformMakeScale(&v5, 0.6, 0.6);
        [v4 setTransform_];
      }
    }
  }
}

id sub_1891350F8(char a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowView);
    if (v6)
    {
      [v6 removeFromSuperview];
    }

    v7 = *&v5[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_dimmingView];
    if (v7)
    {
      [v7 removeFromSuperview];
    }
  }

  return [a2 completeTransition_];
}

uint64_t sub_1891351D0(uint64_t a1, uint64_t a2)
{
  if (qword_1EA931F08 != -1)
  {
    swift_once();
  }

  if (byte_1EA93DCB0 == 1)
  {
    v5 = [objc_allocWithZone(type metadata accessor for _UIKeyboardSubstitutePadPresentationController()) initWithPresentedViewController:a1 presentingViewController:a2];
    swift_unknownObjectWeakAssign();
    v6 = (v2 + OBJC_IVAR___UISubstituteKeyboardSession_presentationController);
    v7 = *(v2 + OBJC_IVAR___UISubstituteKeyboardSession_presentationController);
    *v6 = v5;
    v6[1] = &off_1EFAE9250;
    v8 = v5;

    *(v2 + OBJC_IVAR___UISubstituteKeyboardSession_animationController) = v5;
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = [objc_allocWithZone(type metadata accessor for _UIKeyboardSubstitutePhonePresentationController()) initWithPresentedViewController:a1 presentingViewController:a2];
    v10 = MEMORY[0x1E69E7D40];
    v9[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1948_UIKeyboardSubstitutePhonePresentationController_shouldSuppressKeyboard] = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x150))() & 1;
    if ((*((*v10 & *v2) + 0x148))())
    {
      v11 = objc_opt_self();
      v12 = v9;
      v13 = [v11 clearColor];
      [v12 _setNonLargeBackground_];
    }

    v14 = (v2 + OBJC_IVAR___UISubstituteKeyboardSession_presentationController);
    v15 = *(v2 + OBJC_IVAR___UISubstituteKeyboardSession_presentationController);
    *v14 = v9;
    v14[1] = &off_1EFAE9290;
  }

  v16 = (v2 + OBJC_IVAR___UISubstituteKeyboardSession_presentationController);
  v17 = *(v2 + OBJC_IVAR___UISubstituteKeyboardSession_presentationController);
  if (!v17)
  {
    return 0;
  }

  v18 = v16[1];
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 16);
  v21 = v17;
  v22 = v2;
  v20(v2, ObjectType, v18);

  return *v16;
}

id sub_18913544C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_keyboardSuppressionAssertion] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowView] = 0;
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_dimmingView] = 0;
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_minimalPadPresentationHeight] = 0x4079000000000000;
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_keyboardPadding] = 0x403E000000000000;
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_cornerRadius] = 0x402E000000000000;
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowOpacity] = 1048576000;
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowRadius] = 0x403E000000000000;
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_shadowOffset] = xmmword_18A669180;
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_animationDuration] = 0x3FE999999999999ALL;
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_animationSpringMass] = 0x4000000000000000;
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_animationSpringStiffness] = 0x4072C00000000000;
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_animationSpringDamping] = 0x4049000000000000;
  *&v3[OBJC_IVAR____TtC5UIKitP33_0B439A980771A6A339CDA4EB17012E1946_UIKeyboardSubstitutePadPresentationController_animationScale] = 0x3FE3333333333333;
  v8.receiver = v3;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_initWithPresentedViewController_presentingViewController_, a1, a2);
}

uint64_t objectdestroy_47Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t UITextEffectView.PonderingEffect.__allocating_init(chunk:view:lightConfiguration:)(uint64_t a1, void *a2, uint64_t *a3)
{
  swift_allocObject();
  v6 = sub_189138BC4(a1, a2, a3);

  return v6;
}

id static UITextEffectView.PonderingEffect.baseFillColor.getter()
{
  v0 = objc_allocWithZone(UIColor);
  v4[4] = sub_18913686C;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_188BC2240;
  v4[3] = &block_descriptor_123;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  return v2;
}

void sub_189135840(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = OBJC_IVAR____TtC5UIKit16UITextEffectView_sharedEffectViews;
  swift_beginAccess();
  v10 = *&v6[v9];
  v36 = v6;
  if ((v10 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_18A4A7F18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0);
    sub_189004C34();
    sub_18A4A77D8();
    v11 = v38[4];
    v12 = v38[5];
    v13 = v38[6];
    v14 = v38[7];
    v15 = v38[8];
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v12 = v10 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);
    v11 = v10;
    swift_bridgeObjectRetain_n();
    v14 = 0;
  }

  v19 = (v13 + 64) >> 6;
  if (v11 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v20 = v14;
  v21 = v15;
  v22 = v14;
  if (v15)
  {
LABEL_12:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v11 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (v24)
    {
      while (1)
      {
        v26 = *&v24[qword_1EA939D90] == a1 && *&v24[qword_1EA939D90 + 8] == a2;
        if (v26 || (sub_18A4A86C8() & 1) != 0)
        {
          break;
        }

        v14 = v22;
        v15 = v23;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v25 = sub_18A4A7FB8();
        if (v25)
        {
          v38[0] = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0);
          swift_dynamicCast();
          v24 = v37;
          v22 = v14;
          v23 = v15;
          if (v37)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      sub_188E036A4();

      sub_189135EA0();
    }

    else
    {
LABEL_23:
      sub_188E036A4();

      v28 = a3(v27);
      [v36 addSubview_];
      v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0));

      v30 = v28;

      v31 = sub_189138E2C(a1, a2, v30, a5, a6);

      swift_beginAccess();
      v24 = v31;
      sub_188E71794(v38, v24);
      v32 = v38[0];
      swift_endAccess();

      sub_189135EA0();
    }
  }

  else
  {
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        goto LABEL_23;
      }

      v21 = *(v12 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_189135BA0(void *a1)
{
  v2 = v1;
  v4 = [a1 view];
  v5 = *(v2 + qword_1EA939DA8);
  v6 = [v5 subviews];
  sub_188A34624(0, &qword_1ED48F680);
  v7 = sub_18A4A7548();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64B710;
  *(inited + 32) = v4;
  v44 = v7;
  v9 = v4;
  sub_18920B994(inited);
  v10 = v7;
  if (v7 >> 62)
  {
    v11 = sub_18A4A7F68();
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    x = 0.0;
    y = 0.0;
    width = 0.0;
    height = 0.0;
    goto LABEL_11;
  }

  v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11 < 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = 0;
  x = 0.0;
  y = 0.0;
  width = 0.0;
  height = 0.0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v17 = sub_188E49300(v12, v10);
    }

    else
    {
      v17 = *(v10 + 8 * v12 + 32);
    }

    v18 = v17;
    ++v12;
    [v17 frame];
    v47.origin.x = v19;
    v47.origin.y = v20;
    v47.size.width = v21;
    v47.size.height = v22;
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v46 = CGRectUnion(v45, v47);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
  }

  while (v11 != v12);
LABEL_11:

  v23 = (v2 + qword_1EA939DA0);
  *v23 = x;
  v23[1] = y;
  v23[2] = width;
  v23[3] = height;
  v24 = [*(v2 + qword_1EA939DB0) superview];
  if (v24)
  {
    v25 = v24;
    [v9 frame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [a1 target];
    v35 = [v34 container];

    [v25 convertRect:v35 fromCoordinateSpace:{v27, v29, v31, v33}];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    [v9 setFrame_];
    [v5 addSubview_];

    return;
  }

LABEL_14:
  __break(1u);
}

void sub_189135EA0()
{
  v1 = *&v0[qword_1EA939DB8];
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = v0;
    *&v0[qword_1EA939DB8] = v3;
    if (v3 == 1)
    {
      (*&v0[qword_1EA939DC0])(0);
      [*&v0[qword_1EA939DB0] setHidden_];
    }

    v5 = *&v0[qword_1EA939DB0];
    type metadata accessor for UIRBDirectionalLightEffectView();
    v6 = swift_dynamicCastClassUnconditional();
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v9 = *&v4[qword_1EA939DC8];
    v8 = *&v4[qword_1EA939DC8 + 8];
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DEE0);
    v11 = swift_allocObject();
    v11[3] = MEMORY[0x1E69E7CC0];
    v11[4] = sub_1891397B8;
    v11[8] = v9;
    v11[9] = v8;
    v11[5] = v10;
    v11[6] = sub_189139794;
    v11[7] = v7;
    v11[2] = v6;
    v12 = v4;
    v13 = v5;
  }
}

char *sub_189136020(char *result)
{
  v2 = *&result[qword_1EA939DB8];
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *&result[qword_1EA939DB8] = v4;
    if (!v4)
    {
      v5 = result;
      (*&result[qword_1EA939DC0])(1);
      v6 = *&v5[qword_1EA939DB0];

      return [v6 setHidden_];
    }
  }

  return result;
}

void sub_1891360E8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_189136134(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1891361C4;
}

void sub_1891361C4(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_189136240(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UITextEffectView.EffectID();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188ECA980(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_id;
  swift_beginAccess();
  sub_188F1FC88(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1891362F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_id;
  swift_beginAccess();
  return sub_188ECA980(v1 + v3, a1);
}

uint64_t sub_189136350(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_id;
  swift_beginAccess();
  sub_188F1FC88(a1, v1 + v3);
  return swift_endAccess();
}

id UITextEffectView.PonderingEffect.lightConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_lightConfiguration;
  v3 = *(v1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_lightConfiguration + 8);
  v8 = *(v1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_lightConfiguration);
  v4 = *(v1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_lightConfiguration + 48);
  *a1 = v8;
  *(a1 + 8) = v3;
  v5 = *(v2 + 32);
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 32) = v5;
  *(a1 + 48) = v4;
  v6 = v3;

  return v8;
}

void sub_18913647C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_animateFromColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1891364DC()
{
  v1 = OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_animateFromColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_189136530(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_animateFromColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1891365E8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_onAnimateToBaseColorCompletion);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_188A4B574;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_188A52E38(v4);
}

uint64_t sub_189136688(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188A6D638;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_onAnimateToBaseColorCompletion);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_188A52E38(v3);
  return sub_188A55B8C(v8);
}

uint64_t sub_189136750()
{
  v1 = (v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_onAnimateToBaseColorCompletion);
  swift_beginAccess();
  v2 = *v1;
  sub_188A52E38(*v1);
  return v2;
}

uint64_t sub_1891367AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_onAnimateToBaseColorCompletion);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_188A55B8C(v6);
}

id sub_18913686C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  v3 = 0.5;
  if (v1 == 1)
  {
    v3 = 0.75;
  }

  return [v2 initWithWhite:v3 alpha:1.0];
}

uint64_t UITextEffectView.PonderingEffect.__allocating_init(chunk:view:)(void *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_189138FB4(a1);

  return v4;
}

uint64_t UITextEffectView.PonderingEffect.init(chunk:view:)(void *a1, void *a2)
{
  v4 = sub_189138FB4(a1);

  return v4;
}

uint64_t UITextEffectView.PonderingEffect.init(chunk:view:lightConfiguration:)(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = sub_189138BC4(a1, a2, a3);

  return v4;
}

uint64_t sub_18913699C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v63 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [a1 view];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v78.origin.x = v12;
    v78.origin.y = v14;
    v78.size.width = v16;
    v78.size.height = v18;
    Width = CGRectGetWidth(v78);
    v20 = sub_1890005B8();
    v21 = OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_animateFromColor;
    swift_beginAccess();
    v22 = *(v2 + v21);
    v23 = [a1 parameters];
    v24 = [v23 _textLineRects];

    if (v24)
    {
      sub_188A34624(0, &qword_1ED48EC30);
      v25 = sub_18A4A7548();

      if (v25 >> 62)
      {
        v26 = sub_18A4A7F68();
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v26 == 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }
    }

    else
    {
      v27 = 2;
    }

    v28 = swift_allocObject();
    *(v28 + 16) = Width;
    *(v28 + 24) = v20;
    v67 = v27;
    *(v28 + 32) = v27;
    MEMORY[0x1EEE9AC00](v28);
    *(&v63 - 4) = sub_1891390F0;
    *(&v63 - 3) = v29;
    v71 = v29;
    *(&v63 - 2) = v22;
    v30 = swift_allocObject();
    v30[2] = v22;
    v30[3] = v2;
    v30[4] = v4;
    v70 = v22;

    sub_189135840(0x7265646E6F70, 0xE600000000000000, sub_1891390FC, (&v63 - 6), sub_189139108, v30);
    v32 = v31;

    (*(v32 + 64))(*(v32 + 16));
    swift_beginAccess();
    v33 = a1;
    MEMORY[0x18CFE2450]();
    if (*((*(v32 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v32 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    v72 = v9;
    v73 = v7;
    sub_18A4A75F8();
    swift_endAccess();
    v34 = *(v32 + 48);
    v68 = v33;
    v34(v33);
    v69 = v32;
    v66 = *(v32 + 16);
    v65 = OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView;
    v35 = *(*(v66 + OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView) + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects);
    v36 = *(v35 + 16);
    if (v36)
    {
      v64 = v2;
      v37 = v35 + 32;
      v63 = v35;

      v38 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_188A53994(v37, v77);
        sub_188A5EBAC(v77, v74);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934970);
        if (swift_dynamicCast())
        {
          v39 = *(&v76 + 1);
          if (*(&v76 + 1))
          {
            v40 = v75;
            v41 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = sub_188E4C668(0, *(v38 + 2) + 1, 1, v38);
            }

            v43 = *(v38 + 2);
            v42 = *(v38 + 3);
            if (v43 >= v42 >> 1)
            {
              v38 = sub_188E4C668((v42 > 1), v43 + 1, 1, v38);
            }

            *(v38 + 2) = v43 + 1;
            v44 = &v38[32 * v43];
            *(v44 + 2) = v40;
            *(v44 + 6) = v41;
            *(v44 + 7) = v39;
          }
        }

        else
        {
          v75 = 0u;
          v76 = 0u;
        }

        v37 += 40;
        --v36;
      }

      while (v36);

      v2 = v64;
      if (*(v38 + 2))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_23:
        v46 = *(v38 + 4);
        v45 = *(v38 + 5);
        v47 = *(v38 + 6);
        v48 = *(v38 + 7);

        if (v46 != Width || v45 != v20 || v47 != v67)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934338);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18A64BFB0;
          v50 = [objc_opt_self() functionWithName_];
          *(inited + 32) = Width;
          *(inited + 40) = v20;
          *(inited + 48) = v67;
          *(inited + 56) = v50;
          v51 = sub_189057478(inited);
          swift_setDeallocating();
          sub_189139114(inited + 32);
          *(*(v66 + v65) + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v51;

          sub_189230C30();
        }

        goto LABEL_30;
      }
    }

LABEL_30:
    v52 = v73;
    v53 = v72;
    v54 = v70;
    v55 = *(v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_trackedTargetedPreview);
    v56 = v68;
    *(v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_trackedTargetedPreview) = v68;
    v57 = v56;

    *(v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_effectViewHandle) = v69;

    v58 = sub_18A4A76C8();
    (*(*(v58 - 8) + 56))(v52, 1, 1, v58);
    sub_18A4A76A8();

    v59 = v53;
    v60 = sub_18A4A7698();
    v61 = swift_allocObject();
    v62 = MEMORY[0x1E69E85E0];
    v61[2] = v60;
    v61[3] = v62;
    v61[4] = v59;
    v61[5] = v2;
    sub_188F18A14(0, 0, v52, &unk_18A669290, v61);
  }

  return result;
}

uint64_t sub_18913712C(uint64_t a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934338);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18A64BFB0;
  v7 = [objc_opt_self() functionWithName_];
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 48) = a1;
  *(v6 + 56) = v7;
  return v6;
}

char *sub_1891371D0(uint64_t (*a1)(id), uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(type metadata accessor for UIRBDirectionalLightEffectView()) initWithFrame_];
  v6 = a1([v5 setUserInteractionEnabled_]);
  v7 = sub_189057478(v6);

  *(*&v5[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v7;

  sub_189230C30();
  [v5 setBackgroundColor_];

  sub_189230A38(1, 0, 0);
  return v5;
}

void sub_1891372B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 setBackgroundColor_];
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a4;
  v16 = sub_1891397E4;
  v17 = v7;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_188A4A8F0;
  v15 = &block_descriptor_59_0;
  v8 = _Block_copy(&v12);
  v9 = a1;

  v10 = swift_allocObject();
  swift_weakInit();
  v16 = sub_1891397EC;
  v17 = v10;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_188ABD010;
  v15 = &block_descriptor_65_0;
  v11 = _Block_copy(&v12);

  [v6 animateWithDuration:v8 animations:v11 completion:0.35];
  _Block_release(v11);
  _Block_release(v8);
}

void sub_189137464(void *a1)
{
  v2 = objc_allocWithZone(UIColor);
  v5[4] = sub_18913686C;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_188BC2240;
  v5[3] = &block_descriptor_68_2;
  v3 = _Block_copy(v5);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  [a1 setBackgroundColor_];
}

uint64_t sub_189137548()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_onAnimateToBaseColorCompletion);
    swift_beginAccess();
    v2 = *v1;
    if (*v1)
    {

      v2(v3);
      sub_188A55B8C(v2);
    }
  }

  return result;
}

uint64_t sub_1891375EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[21] = a1;
  sub_18A4A76A8();
  v5[24] = sub_18A4A7698();
  v7 = sub_18A4A7678();
  v5[25] = v7;
  v5[26] = v6;

  return MEMORY[0x1EEE6DFA0](sub_189137688, v7, v6);
}

uint64_t sub_189137688()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 216) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(*(v0 + 184) + 16);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_189137838;
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_188F194AC;
    *(v0 + 104) = &block_descriptor_44_3;
    *(v0 + 112) = v4;
    [v2 updateTextChunkVisibilityForAnimation:v3 visible:0 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {

    **(v0 + 168) = *(v0 + 216) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_189137838()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_189137940, v2, v1);
}

uint64_t sub_189137940()
{

  swift_unknownObjectRelease();
  **(v0 + 168) = *(v0 + 216) == 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_1891379C0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = *(v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_trackedTargetedPreview);
  if (v8)
  {
    v9 = sub_18A4A76C8();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    sub_18A4A76A8();
    v10 = v8;

    v11 = v2;
    v12 = sub_18A4A7698();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v10;
    v13[5] = a1;
    v13[6] = a2;
    v13[7] = v11;
    sub_188F18724(0, 0, v7, &unk_18A6692A0, v13);
  }
}

uint64_t sub_189137B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  sub_18A4A76A8();
  v7[11] = sub_18A4A7698();
  v9 = sub_18A4A7678();
  v7[12] = v9;
  v7[13] = v8;

  return MEMORY[0x1EEE6DFA0](sub_189137BC8, v9, v8);
}

uint64_t sub_189137BC8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = [*(v0 + 56) view];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *(v1 + 16);
  v19 = (v2 + *v2);
  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *v13 = v0;
  v13[1] = sub_189137D28;
  v14.n128_u64[0] = v5;
  v15.n128_u64[0] = v7;
  v16.n128_u64[0] = v9;
  v17.n128_u64[0] = v11;

  return v19(v0 + 16, v12, v14, v15, v16, v17);
}

uint64_t sub_189137D28()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_189137E48, v3, v2);
}

uint64_t sub_189137E48()
{

  if ((*(v0 + 48) & 1) == 0)
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = [*(v0 + 56) view];
    [v5 setFrame_];
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_189137F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  sub_18A4A76A8();
  v5[34] = sub_18A4A7698();
  v7 = sub_18A4A7678();
  v5[35] = v7;
  v5[36] = v6;

  return MEMORY[0x1EEE6DFA0](sub_189137FA0, v7, v6);
}

uint64_t sub_189137FA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[37] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0[33] + 16);
    v0[2] = v0;
    v0[3] = sub_189138358;
    v4 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_188F194AC;
    v0[21] = &block_descriptor_37_2;
    v0[22] = v4;
    [v2 updateTextChunkVisibilityForAnimation:v3 visible:1 completionHandler:v0 + 18];
    v5 = (v0 + 2);
    goto LABEL_5;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  v0[38] = v6;
  if (v6)
  {
    v7 = v6;
    v8 = *(v0[33] + 16);
    v0[10] = v0;
    v0[11] = sub_18913871C;
    v9 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_188F194AC;
    v0[21] = &block_descriptor_40_3;
    v0[22] = v9;
    [v7 finishAnimationFor:v8 completionHandler:v0 + 18];
    v5 = (v0 + 10);
LABEL_5:

    return MEMORY[0x1EEE6DEC8](v5);
  }

  v10 = *(v0[33] + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_effectViewHandle);
  if (v10)
  {
    v5 = swift_beginAccess();
    v11 = *(v10 + 24);
    if (v11 >> 62)
    {
      v5 = sub_18A4A7F68();
      v12 = v5;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_11:
        if (v12 < 1)
        {
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v5);
        }

        v13 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = sub_188E4ABB4(v13, v11);
          }

          else
          {
            v14 = *(v11 + 8 * v13 + 32);
          }

          v15 = v14;
          ++v13;
          v16 = [v14 view];
          [v16 removeFromSuperview];
        }

        while (v12 != v13);

        goto LABEL_20;
      }
    }

LABEL_20:
    (*(v10 + 32))(v17);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_189138358()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);

  return MEMORY[0x1EEE6DFA0](sub_189138460, v2, v1);
}

uint64_t sub_189138460()
{
  swift_unknownObjectRelease();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[38] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0[33] + 16);
    v0[10] = v0;
    v0[11] = sub_18913871C;
    v4 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_188F194AC;
    v0[21] = &block_descriptor_40_3;
    v0[22] = v4;
    [v2 finishAnimationFor:v3 completionHandler:v0 + 18];
    v5 = (v0 + 10);

    return MEMORY[0x1EEE6DEC8](v5);
  }

  v6 = *(v0[33] + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_effectViewHandle);
  if (v6)
  {
    v5 = swift_beginAccess();
    v7 = *(v6 + 24);
    if (v7 >> 62)
    {
      v5 = sub_18A4A7F68();
      v8 = v5;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_8:
        if (v8 < 1)
        {
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v5);
        }

        v9 = 0;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = sub_188E4ABB4(v9, v7);
          }

          else
          {
            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          ++v9;
          v12 = [v10 view];
          [v12 removeFromSuperview];
        }

        while (v8 != v9);

        goto LABEL_17;
      }
    }

LABEL_17:
    (*(v6 + 32))(v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_18913871C()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);

  return MEMORY[0x1EEE6DFA0](sub_189138824, v2, v1);
}

uint64_t sub_189138824()
{

  swift_unknownObjectRelease();
  v1 = *(*(v0 + 264) + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_effectViewHandle);
  if (v1)
  {
    result = swift_beginAccess();
    v3 = *(v1 + 24);
    if (v3 >> 62)
    {
      result = sub_18A4A7F68();
      v4 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return result;
        }

        v5 = 0;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = sub_188E4ABB4(v5, v3);
          }

          else
          {
            v6 = *(v3 + 8 * v5 + 32);
          }

          v7 = v6;
          ++v5;
          v8 = [v6 view];
          [v8 removeFromSuperview];
        }

        while (v4 != v5);

        goto LABEL_13;
      }
    }

LABEL_13:
    (*(v1 + 32))(v9);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t UITextEffectView.PonderingEffect.deinit()
{
  MEMORY[0x18CFEA6E0](v0 + 24);
  sub_188ECAA48(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_id);
  v1 = *(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_lightConfiguration);
  v2 = *(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_lightConfiguration + 8);

  sub_188A55B8C(*(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_onAnimateToBaseColorCompletion));

  return v0;
}

uint64_t UITextEffectView.PonderingEffect.__deallocating_deinit()
{
  UITextEffectView.PonderingEffect.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_189138AB8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_id;
  swift_beginAccess();
  return sub_188ECA980(v3 + v4, a1);
}

uint64_t sub_189138BC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[6];
  swift_unknownObjectWeakInit();
  sub_18A4A29C8();
  v9 = OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_animateFromColor;
  *(v3 + v9) = [objc_opt_self() labelColor];
  v10 = (v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_onAnimateToBaseColorCompletion);
  *v10 = 0;
  v10[1] = 0;
  *(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_effectViewHandle) = 0;
  *(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_trackedTargetedPreview) = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = a1;
  v11 = v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_lightConfiguration;
  *v11 = v6;
  *(v11 + 8) = v7;
  v12 = *(a3 + 2);
  *(v11 + 16) = *(a3 + 1);
  *(v11 + 32) = v12;
  *(v11 + 48) = v8;
  return v3;
}

void sub_189138CC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_18A4A76C8();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_18A4A76A8();
    v7 = v5;

    v8 = v0;
    v9 = sub_18A4A7698();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v7;
    v10[5] = v8;
    sub_188F18724(0, 0, v3, &unk_18A669358, v10);
  }
}

id sub_189138E2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = &v5[qword_1EA939DA0];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = a3;
  [v11 frame];
  v16 = [objc_allocWithZone(UIView) initWithFrame_];
  v17 = qword_1EA939DA8;
  *&v5[qword_1EA939DA8] = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  v19 = &v5[qword_1EA939DC0];
  *v19 = sub_1891397C0;
  v19[1] = v18;
  v20 = &v5[qword_1EA939DC8];
  *v20 = a4;
  *(v20 + 1) = a5;
  *&v5[qword_1EA939DB0] = v11;
  *&v5[qword_1EA939DB8] = 0;
  v21 = &v5[qword_1EA939D90];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = *&v5[v17];
  v23 = v11;

  [v23 setMaskView_];
  v25.receiver = v5;
  v25.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0);
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_189138FB4(void *a1)
{
  swift_unknownObjectWeakInit();
  sub_18A4A29C8();
  v3 = OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_animateFromColor;
  *(v1 + v3) = [objc_opt_self() labelColor];
  v4 = (v1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_onAnimateToBaseColorCompletion);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_effectViewHandle) = 0;
  *(v1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_trackedTargetedPreview) = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v1 + 16) = a1;
  v5 = qword_1EA92EB38;
  v6 = a1;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = xmmword_1EA92EB40;
  v8 = qword_1EA92EB70;
  v9 = v1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView15PonderingEffect_lightConfiguration;
  v10 = xmmword_1EA92EB50;
  v11 = unk_1EA92EB60;
  *v9 = xmmword_1EA92EB40;
  *(v9 + 16) = v10;
  *(v9 + 32) = v11;
  *(v9 + 48) = v8;
  v12 = *(&v7 + 1);

  v13 = v7;
  return v1;
}

uint64_t sub_189139168(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_188C48500;

  return sub_1891375EC(a1, v4, v5, v7, v6);
}

uint64_t sub_189139228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_188C48500;

  return sub_189137B2C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t type metadata accessor for UITextEffectView.PonderingEffect()
{
  result = qword_1EA92F4F8;
  if (!qword_1EA92F4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_189139350()
{
  result = sub_18A4A29D8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1891396D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_188C482B4;

  return sub_189137F08(a1, v4, v5, v7, v6);
}

uint64_t sub_189139804(uint64_t a1)
{
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = &v27 - v6;
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v27 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v30 = v3;
  sub_18A4A87B8();
  v14 = *(a1 + 44);
  v15 = sub_18A4A7608();
  v16 = *(v1 + *(a1 + 40));
  if (v15 >= 1 && v16 < v15)
  {
    v28 = v14;
    result = sub_18A4A7608();
    if (__OFSUB__(result, v16))
    {
      __break(1u);
      goto LABEL_15;
    }

    sub_18A4A7648();
    swift_getWitnessTable();
    v14 = v28;
    sub_18A4A78D8();
  }

  v19 = *(v1 + v14);
  v20 = sub_18A4A7608();
  if ((v20 & 0x8000000000000000) == 0 && v20 == v16)
  {
    v34 = v19;
    sub_18A4A7648();
    swift_getWitnessTable();
    v21 = v31;
    sub_18A4A7898();
    v22 = v33;
    result = (*(v33 + 48))(v21, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      swift_getAssociatedConformanceWitness();
      v23 = v29;
      sub_18A4A8288();
      v24 = *(v22 + 8);
      v24(v21, AssociatedTypeWitness);
      v25 = sub_18A4A7208();
      v24(v23, AssociatedTypeWitness);
      if (v25)
      {
        v24(v13, AssociatedTypeWitness);
        return 0;
      }

      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return result;
  }

LABEL_12:
  v26 = v33;
  (*(v33 + 16))(v32, v13, AssociatedTypeWitness);
  sub_18A4A7648();
  sub_18A4A7618();
  (*(v26 + 8))(v13, AssociatedTypeWitness);
  return 1;
}

void __swiftcall _UISimpleTimedInhibitor.init()(_UISimpleTimedInhibitor *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for _UISimpleTimedInhibitor()
{
  result = qword_1EA93DEF0;
  if (!qword_1EA93DEF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93DEF0);
  }

  return result;
}

uint64_t sub_189139D4C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_18A4A7648();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_189139E40(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  v14 = *(*(AssociatedTypeWitness - 8) + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v12)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *((((v14 + v25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_18913A0BC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v8 + 64) + v12;
  v15 = *(v10 + 64) + 7;
  v16 = ((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v19 = 0;
    v20 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((v15 + (v14 & ~v12)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v13 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
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
      if (v9 == v13)
      {
        v23 = *(v27 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v24 = (a1 + v14) & ~v12;
        if (v11 == v13)
        {
          v25 = *(v10 + 56);

          v25(v24, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v26 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v26 = (a2 - 1);
          }

          *((((v15 + v24) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = v26;
        }
      }

      return;
    }
  }

  if (((((v15 + (v14 & ~v12)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((v15 + (v14 & ~v12)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v22 = ~v13 + a2;
    bzero(a1, ((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

void sub_18913A39C(char a1, char a2)
{
  v4 = a1 & 1;
  v5 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_isExpanded;
  swift_beginAccess();
  if (v2[v5] != v4)
  {
    v2[v5] = v4;
    [v2 setNeedsLayout];
    if (a2)
    {
      v6 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_rotationAnimator;
      v7 = *&v2[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_rotationAnimator];
      if (v7)
      {
        [v7 stopAnimation_];
      }

      v8 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.6 controlPoint2:{0.0, 0.0, 1.0}];
      v9 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v8 timingParameters:0.9];
      v10 = *&v2[v6];
      *&v2[v6] = v9;
      v11 = v9;

      if (v11)
      {
        v12 = swift_allocObject();
        *(v12 + 16) = v2;
        aBlock[4] = sub_18913A618;
        aBlock[5] = v12;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_188A4A8F0;
        aBlock[3] = &block_descriptor_124;
        v13 = _Block_copy(aBlock);
        v14 = v2;

        [v11 addAnimations_];
        _Block_release(v13);
      }

      v15 = *&v2[v6];
      [v15 startAnimation];
    }
  }
}

uint64_t sub_18913A574()
{
  v1 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_18913A5B8(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_isExpanded;
  swift_beginAccess();
  v1[v3] = a1;
  return [v1 setNeedsLayout];
}

id (*sub_18913A628(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_188F4DF1C;
}

uint64_t sub_18913A68C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_style;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t (*sub_18913A700(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18913A764;
}

uint64_t sub_18913A77C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DF70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = 7169887;
  *(inited + 40) = 0xE300000000000000;
  CGAffineTransformMakeRotation(&v5, 1.7951958);
  v1 = *&v5.c;
  v2 = *&v5.tx;
  *(inited + 48) = *&v5.a;
  *(inited + 64) = v1;
  *(inited + 80) = v2;
  v3 = sub_188E8F830(inited);
  swift_setDeallocating();
  result = sub_18913C3AC(inited + 32);
  off_1EA93DF08 = v3;
  return result;
}

char *sub_18913A830(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v4[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_isExpanded] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_scaleAnimator] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_opacityAnimator] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_rotationAnimator] = 0;
  v31[0] = 2;
  v10 = objc_allocWithZone(type metadata accessor for _UIIntelligenceButton.FillView());
  v11 = _UIIntelligenceButton.FillView.init(frame:initialStyle:)(v31, a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_colorView;
  *&v5[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_colorView] = v11;
  v13 = [objc_allocWithZone(UIView) initWithFrame_];
  *&v5[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_highlightTransformView] = v13;
  v14 = [objc_allocWithZone(_UIPortalView) initWithFrame_];
  *&v5[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_imagePortal] = v14;
  v15 = *&v5[v12];
  v16 = OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_style;
  swift_beginAccess();
  v5[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_style] = *(v15 + v16);
  v30.receiver = v5;
  v30.super_class = type metadata accessor for _UIIntelligenceButton();
  v17 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_colorView;
  v19 = *&v17[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_colorView];
  v20 = v17;
  [v20 addSubview_];
  v21 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_imagePortal;
  v22 = *&v20[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_imagePortal];
  v23 = [v20 _imageEffectContainerView];
  [v22 setSourceView_];

  [*&v20[v21] setMatchesAlpha_];
  [*&v20[v21] setMatchesPosition_];
  [*&v20[v21] setHidesSourceView_];
  v24 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_highlightTransformView;
  [*&v20[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_highlightTransformView] addSubview_];
  [*&v17[v18] setMaskView_];
  v25 = *&v17[v18];
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 tintColor];
  [v27 setBackgroundColor_];

  return v20;
}

id sub_18913AC18()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for _UIIntelligenceButton();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_colorView];
  [v0 bringSubviewToFront_];
  v2 = [v0 imageView];
  if (v2)
  {
    v3 = v2;
    [v3 frame];
    [v1 setFrame_];
    v4 = *&v0[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_highlightTransformView];
    [v3 bounds];
    [v4 setBounds_];
    [v3 center];
    v6 = v5;
    v8 = v7;

    [v1 convertPoint:v3 fromCoordinateSpace:{v6, v8}];
    [v4 setCenter_];
  }

  return sub_18913B2F4();
}

void sub_18913AE28()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_colorView];
  if ([v1 isEnabled])
  {
    v3 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_style;
    swift_beginAccess();
    v4 = v1[v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_style;
  swift_beginAccess();
  v2[v5] = v4;
  sub_18913BB9C();
  v6 = [v1 configuration];
  if (!v6 || (v7 = v6, v8 = [v6 _resolvedImageColor], v7, !v8))
  {
    v8 = [objc_opt_self() tintColor];
  }

  v9 = [v8 colorWithAlphaComponent_];
  [v2 setBackgroundColor_];
}

void sub_18913AF64()
{
  v1 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_scaleAnimator;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_scaleAnimator];
  if (v2)
  {
    [v2 stopAnimation_];
  }

  v3 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_opacityAnimator;
  v4 = *&v0[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_opacityAnimator];
  if (v4)
  {
    [v4 stopAnimation_];
  }

  tx = 0.0;
  v6 = 1.0;
  v7 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.6 controlPoint2:{0.0, 0.0, 1.0}];
  if ([v0 isHighlighted])
  {
    v8 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.0 controlPoint2:{0.0, 0.0, 1.0}];

    CGAffineTransformMakeScale(&aBlock, 0.8, 0.8);
    v25 = *&aBlock.a;
    v26 = *&aBlock.c;
    tx = aBlock.tx;
    ty = aBlock.ty;
    v10 = 0.333;
    v6 = 0.2;
    v11 = 0.333;
    v7 = v8;
  }

  else
  {
    v26 = xmmword_18A64B720;
    v25 = xmmword_18A64B730;
    v11 = 0.9;
    v10 = 0.717;
    ty = 0.0;
  }

  v12 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v7 timingParameters:v11];
  v13 = *&v0[v1];
  *&v0[v1] = v12;
  v14 = v12;

  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v0;
    *(v15 + 40) = v26;
    *(v15 + 24) = v25;
    *(v15 + 56) = tx;
    *(v15 + 64) = ty;
    *&aBlock.tx = sub_18913C414;
    *&aBlock.ty = v15;
    *&aBlock.a = MEMORY[0x1E69E9820];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_188A4A8F0;
    *&aBlock.d = &block_descriptor_26_9;
    v16 = _Block_copy(&aBlock);
    v17 = v0;

    [v14 addAnimations_];
    _Block_release(v16);
  }

  v18 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v7 timingParameters:v10];
  v19 = *&v0[v3];
  *&v0[v3] = v18;
  v20 = v18;

  if (v20)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v0;
    *(v21 + 24) = v6;
    *&aBlock.tx = sub_18913C464;
    *&aBlock.ty = v21;
    *&aBlock.a = MEMORY[0x1E69E9820];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_188A4A8F0;
    *&aBlock.d = &block_descriptor_32_2;
    v22 = _Block_copy(&aBlock);
    v23 = v0;

    [v20 addAnimations_];
    _Block_release(v22);
  }

  [*&v0[v1] startAnimation];
  v24 = *&v0[v3];
  [v24 startAnimation];
}

id sub_18913B2F4()
{
  v1 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_isExpanded;
  swift_beginAccess();
  v2 = xmmword_18A64B720;
  v3 = xmmword_18A64B730;
  v4 = 0uLL;
  if (v0[v1] == 1)
  {
    v5 = [v0 imageView];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 image];

      v3 = xmmword_18A64B730;
      v2 = xmmword_18A64B720;
      v4 = 0uLL;
      if (v7)
      {
        v8 = _UIImageName(v7);
        v22 = xmmword_18A64B720;
        v20 = 0u;
        v21 = xmmword_18A64B730;
        if (v8)
        {
          v9 = v8;
          v10 = sub_18A4A7288();
          v12 = v11;

          if (qword_1EA931F18 != -1)
          {
            swift_once();
          }

          v13 = off_1EA93DF08;
          if (*(off_1EA93DF08 + 2))
          {
            v14 = sub_188B0944C(v10, v12);
            v16 = v15;

            if (v16)
            {
              v17 = (v13[7] + 48 * v14);
              v21 = *v17;
              v22 = v17[1];
              v20 = v17[2];
            }
          }

          else
          {
          }
        }

        v3 = v21;
        v2 = v22;
        v4 = v20;
      }
    }

    else
    {
      v3 = xmmword_18A64B730;
      v2 = xmmword_18A64B720;
      v4 = 0uLL;
    }
  }

  v18 = *&v0[OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_highlightTransformView];
  v23[0] = v3;
  v23[1] = v2;
  v23[2] = v4;
  return [v18 setTransform_];
}

uint64_t _UIIntelligenceButton.Style.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t sub_18913B674@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_style;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_18913B6E8(char *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v7 = swift_beginAccess();
  *(v3 + v6) = v5;
  return a3(v7);
}

uint64_t (*sub_18913B740(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18913B7A4;
}

uint64_t sub_18913B7BC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

char *_UIIntelligenceButton.FillView.init(frame:initialStyle:)(char *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v11 = *a1;
  v12 = OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_livingLightView;
  v13 = [objc_opt_self() intelligenceSymbolLivingColorPalette];
  v14 = type metadata accessor for _UIOrbitalColorView();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC5UIKit19_UIOrbitalColorView_palette] = v13;
  v33.receiver = v15;
  v33.super_class = v14;
  v16 = v13;
  v17 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_188EA35A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = &type metadata for UITraitUserInterfaceStyle;
  *(inited + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)(inited, sel_updateColors);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  *&v6[v12] = v17;
  v19 = OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_staticLightView;
  v20 = objc_opt_self();
  v21 = sub_18A4A7258();
  v22 = [v20 kitImageNamed_];

  v23 = [objc_allocWithZone(UIImageView) initWithImage_];
  *&v6[v19] = v23;
  v6[OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_style] = v11;
  v32.receiver = v6;
  v32.super_class = type metadata accessor for _UIIntelligenceButton.FillView();
  v24 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a2, a3, a4, a5);
  [v24 setUserInteractionEnabled_];
  v25 = [v24 layer];
  [v25 setAllowsHitTesting_];

  v26 = OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_staticLightView;
  [*&v24[OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_staticLightView] setUserInteractionEnabled_];
  v27 = [*&v24[v26] layer];
  [v27 setAllowsHitTesting_];

  v28 = OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_livingLightView;
  [*&v24[OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_livingLightView] setUserInteractionEnabled_];
  v29 = [*&v24[v28] layer];
  [v29 setAllowsHitTesting_];

  [v24 addSubview_];
  [v24 addSubview_];
  v30 = [objc_opt_self() secondaryLabelColor];
  [v24 setBackgroundColor_];

  sub_18913BB9C();
  return v24;
}

id sub_18913BB9C()
{
  v1 = OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_style;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = dbl_18A6694F8[v2];
  [*(v0 + OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_staticLightView) setAlpha_];
  return [*(v0 + OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_livingLightView) setAlpha_];
}

id _UIIntelligenceButton.FillView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_18913BDD8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_18913BE14()
{
  result = qword_1EA93DF58;
  if (!qword_1EA93DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DF58);
  }

  return result;
}

uint64_t keypath_get_1Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_2Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  v10 = swift_beginAccess();
  *(v8 + v9) = v7;
  return a6(v10);
}

void sub_18913C1C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_livingLightView;
  v3 = [objc_opt_self() intelligenceSymbolLivingColorPalette];
  v4 = type metadata accessor for _UIOrbitalColorView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC5UIKit19_UIOrbitalColorView_palette] = v3;
  v14.receiver = v5;
  v14.super_class = v4;
  v6 = v3;
  v7 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_188EA35A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = &type metadata for UITraitUserInterfaceStyle;
  *(inited + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)(inited, sel_updateColors);

  swift_unknownObjectRelease();

  *(v1 + v2) = v7;
  v9 = OBJC_IVAR____TtCC5UIKit21_UIIntelligenceButton8FillView_staticLightView;
  v10 = objc_opt_self();
  v11 = sub_18A4A7258();
  v12 = [v10 kitImageNamed_];

  v13 = [objc_allocWithZone(UIImageView) initWithImage_];
  *(v1 + v9) = v13;
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_18913C3AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DF78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18913C414()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_imagePortal);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  v4[2] = *(v0 + 56);
  return [v1 setTransform_];
}

id _UIWindowSceneOverlayPlacement.targetSceneIdentity.getter()
{
  v1 = [*(*v0 + 16) targetSceneIdentity];

  return v1;
}

uint64_t _UIWindowSceneOverlayPlacement.init(targetSceneIdentity:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(_UIWindowSceneOverlayPlacement) initWithTargetSceneIdentity_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DF80);
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

uint64_t _UIWindowSceneOverlayPlacement.init(overlaying:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_opt_self() placementOverlayingWindowScene_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DF80);
  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result;
  return result;
}

uint64_t _UIWindowSceneOverlayPlacement.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

uint64_t static UIWindowScenePlacement<>._overlay(targetSceneIdentity:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_allocWithZone(_UIWindowSceneOverlayPlacement) initWithTargetSceneIdentity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DF80);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

uint64_t static UIWindowScenePlacement<>._overlaying(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() placementOverlayingWindowScene_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DF80);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

unint64_t sub_18913C738(uint64_t a1)
{
  result = sub_18913C760();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18913C760()
{
  result = qword_1EA93DF88;
  if (!qword_1EA93DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DF88);
  }

  return result;
}

unint64_t sub_18913C7B8()
{
  result = qword_1EA93DF90;
  if (!qword_1EA93DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DF90);
  }

  return result;
}

unint64_t sub_18913C810()
{
  result = qword_1EA93DF98;
  if (!qword_1EA93DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DF98);
  }

  return result;
}

void sub_18913C888()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong bounds];
    Width = CGRectGetWidth(v10);
    type metadata accessor for _UIDismissInteractionSettingsDomain();
    v9.receiver = swift_getObjCClassFromMetadata();
    v9.super_class = &OBJC_METACLASS____TtC5UIKit35_UIDismissInteractionSettingsDomain;
    v3 = objc_msgSendSuper2(&v9, sel_rootSettings);
    if (!v3)
    {
LABEL_10:
      __break(1u);
      return;
    }

    v4 = v3;
    type metadata accessor for _UIDismissInteractionSettings();
    v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit29_UIDismissInteractionSettings_edgePan);

    v6 = *&v5[OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_effectiveDistanceFactor];
    v7 = Width * v6;
    v8 = [v1 effectiveUserInterfaceLayoutDirection];

    if (v8)
    {
      if (v7 >= 0.0)
      {
        return;
      }

      __break(1u);
      goto LABEL_9;
    }

    if (v7 < 0.0)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }
}

void sub_18913C9C0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [a1 locationInView_];
      v7 = v6;
      v9 = v8;
      [a1 translationInView_];
      v11 = v10;
      v13 = v12;
      [a1 velocityInView_];
      v15 = v14;
      v17 = v16;

      v20[0] = v7;
      v20[1] = v9;
      v20[2] = v11;
      v20[3] = v13;
      v20[4] = v15;
      v20[5] = v17;
      v21 = xmmword_18A64B720;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 1;
      v18 = [a1 state];
      if ((v18 - 3) < 2)
      {
        sub_18923B020(v1, v20, v19);
      }

      else if (v18 == 2)
      {
        sub_189239CD8(v1, v20, v19);
      }

      else
      {
        if (v18 != 1)
        {

          return;
        }

        sub_18923B758(v20, v19);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_18913CD10(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v3 = Strong;
  v4 = [a1 view];
  if (!v4)
  {

LABEL_9:
    v11 = 0;
    return v11 & 1;
  }

  v5 = v4;
  if (([v4 isDescendantOfView_] & 1) == 0)
  {

    goto LABEL_9;
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = NSStringFromClass(ObjCClassFromMetadata);
  v8 = sub_18A4A7288();
  v10 = v9;

  if (v8 == 0xD00000000000001ALL && 0x800000018A6AB750 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_18A4A86C8();
  }

  if ([a1 _isGestureType_])
  {

    v11 = 1;
  }

  else
  {
    v13 = [a1 _isGestureType_];

    if (v13)
    {
      v11 = 1;
    }
  }

  return v11 & 1;
}

uint64_t sub_18913CE7C(void *a1, id a2)
{
  if ([a2 _isGestureType_])
  {
    v5 = [a1 _activeEventOfType_];
    if (v5)
    {
    }

    else if ([*(v2 + OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_gesture) _rootFeatureState] != 2)
    {
      return 1;
    }

    v12 = [a2 view];
    if (v12)
    {
      v13 = v12;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = [v14 _canScrollFromEdge_];
LABEL_18:
        v25 = v15;

        return v25 ^ 1;
      }
    }

    return 1;
  }

  if ([a2 _isGestureType_])
  {
    v6 = [a2 view];
    if (v6)
    {
      v7 = v6;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        v10 = [objc_opt_self() environment:v7 containsEnvironment:Strong];

        return v10;
      }
    }
  }

  if (sub_18913CD10(a2))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v13 = result;
    v16 = *(v2 + OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_gesture);
    [v16 _initialLocationInView_];
    v18 = v17;
    v20 = v19;
    [v13 bounds];
    v27.origin.x = UIRectInsetEdges([v16 edges], v21, v22, v23, v24, 44.0);
    v26.x = v18;
    v26.y = v20;
    v15 = CGRectContainsPoint(v27, v26);
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_18913D1E8(void *a1)
{
  if ([a1 _isGestureType_])
  {
    v3 = [a1 view];
    if (v3)
    {
      v4 = v3;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        v7 = [objc_opt_self() environment:Strong containsEnvironment:v4];

LABEL_10:
        return v7;
      }
    }
  }

  if (([a1 _isGestureType_] & 1) != 0 || (sub_18913CD10(a1) & 1) == 0)
  {
    return 0;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v6 = v8;
    v9 = *(v1 + OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_gesture);
    [v9 _initialLocationInView_];
    v11 = v10;
    v13 = v12;
    [v6 bounds];
    v20.origin.x = UIRectInsetEdges([v9 edges], v14, v15, v16, v17, 44.0);
    v19.x = v11;
    v19.y = v13;
    v7 = CGRectContainsPoint(v20, v19);
    goto LABEL_10;
  }

  return 1;
}

uint64_t sub_18913D380()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_gesture);
      v5 = v3;
      [v4 locationInView_];
      v7 = v6;
      v9 = v8;
      [v4 translationInView_];
      [v4 velocityInView_];
      v11 = v10;
      v13 = v12;

      v14 = [v2 delegate];
      if (v14)
      {
        v15 = [v14 dismissInteraction:v2 shouldBeginWithAxis:*(v0 + OBJC_IVAR____TtC5UIKit31_UIEdgePanDismissSubInteraction_axis) location:1 velocity:v7 proposal:{v9, v11, v13}];

        swift_unknownObjectRelease();
        return v15;
      }
    }

    else
    {
    }
  }

  return 1;
}

uint64_t sub_18913D4C4()
{
  result = sub_18A4A7288();
  qword_1EA93DFC0 = result;
  *algn_1EA93DFC8 = v1;
  return result;
}

uint64_t static UIApplication.openNotificationSettingsURLString.getter()
{
  if (qword_1EA931F20 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA93DFC0;

  return v0;
}

id UIApplication.isDefault(_:)(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  result = [v1 defaultStatusForCategory:a1 error:v6];
  if (result)
  {
    return (result == 1);
  }

  v4 = v6[0];
  if (v6[0])
  {
    swift_willThrow();
    v5 = v4;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_18913D5FC()
{
  result = sub_18A4A7288();
  qword_1EA93DFD0 = result;
  *algn_1EA93DFD8 = v1;
  return result;
}

uint64_t sub_18913D654()
{
  result = sub_18A4A7288();
  qword_1EA93DFE0 = result;
  unk_1EA93DFE8 = v1;
  return result;
}

uint64_t Color.init(_uiColor:)()
{
  type metadata accessor for UICorePlatformColorDefinition();

  return sub_18A4A5E38();
}

id sub_18913D990()
{
  v0 = sub_18A4A5318();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  sub_188BA9684();
  sub_18A4A52F8();
  UITraitCollection.coreResolvedBaseEnvironment(base:)(v9, v3);
  UITraitCollection.coreResolvedGlassMaterialEnvironment(base:)(v3, v6);
  v10 = *(v1 + 8);
  v10(v3, v0);
  sub_18A4A5DC8();
  v12 = v11;
  v10(v6, v0);
  sub_18A4A5DF8();
  v14 = v13;
  sub_18A4A5E18();
  v16 = v15;
  sub_18A4A5E08();
  v18 = [objc_allocWithZone(UIColor) initWithRed:v14 green:v16 blue:v17 alpha:v12];
  v10(v9, v0);
  return v18;
}

uint64_t UICorePlatformColorDefinition.__deallocating_deinit()
{
  _s5UIKit29UICorePlatformColorDefinitionCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_18913DBF0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  MEMORY[0x18CFE37E0](v2);
  return sub_18A4A88E8();
}

uint64_t sub_18913DC50()
{
  v1 = *(v0 + 8);
  MEMORY[0x18CFE37E0](*v0);
  return MEMORY[0x18CFE37E0](v1);
}

uint64_t sub_18913DC90()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  MEMORY[0x18CFE37E0](v2);
  return sub_18A4A88E8();
}

uint64_t sub_18913DD18@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v21 = a1;
  v5 = sub_18A4A2BD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v21 - v10);
  sub_188A3F29C(v3, &v21 - v10, &unk_1EA935770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934140);
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18A64BFB0;
    (*(v6 + 16))(v14 + v13, v21, v5);
    v22 = v12;
    sub_18920B850(v14);
    v15 = v22;
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934140);
    v16 = *(v6 + 72);
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18A64BFA0;
    v18 = v15 + v17;
    v19 = *(v6 + 16);
    v19(v18, v8, v5);
    v19(v18 + v16, v21, v5);
    (*(v6 + 8))(v8, v5);
  }

  *a2 = v15;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18913DFA4()
{
  v42 = sub_18A4A2BD8();
  v1 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770);
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v35 - v9;
  swift_beginAccess();
  v36 = v0;
  v10 = *(v0 + 16);
  v13 = *(v10 + 64);
  v12 = v10 + 64;
  v11 = v13;
  v14 = 1 << *(*(v0 + 16) + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v45 = *(v0 + 16);
  v46 = (v14 + 63) >> 6;
  v40 = (v1 + 32);
  v17 = (v1 + 8);
  v38 = v1;
  v18 = v1 + 16;
  v19 = v6;
  result = swift_bridgeObjectRetain_n();
  v21 = 0;
  v43 = v12;
  v37 = v19;
  v49 = v18;
  while (v16)
  {
    v24 = v47;
LABEL_13:
    v26 = v48;
    sub_188A3F29C(*(v45 + 56) + *(v44 + 72) * (__clz(__rbit64(v16)) | (v21 << 6)), v48, &unk_1EA935770);
    sub_188A3F29C(v26, v24, &unk_1EA935770);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = *v24;
      v28 = *(*v24 + 16);
      if (v28)
      {
        v29 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v39 = *v24;
        v30 = v27 + v29;
        v31 = *(v38 + 72);
        v32 = *(v38 + 16);
        v33 = v42;
        do
        {
          v32(v3, v30, v33);
          sub_18A4A2BB8();
          (*v17)(v3, v33);
          v30 += v31;
          --v28;
        }

        while (v28);
      }
    }

    else
    {
      v22 = v41;
      v23 = v42;
      (*v40)(v41, v24, v42);
      sub_18A4A2BB8();
      (*v17)(v22, v23);
    }

    v16 &= v16 - 1;
    result = sub_188A3F5FC(v48, &unk_1EA935770);
    v12 = v43;
  }

  v24 = v47;
  while (1)
  {
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v25 >= v46)
    {

      v34 = v36;

      return v34;
    }

    v16 = *(v12 + 8 * v25);
    ++v21;
    if (v16)
    {
      v21 = v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18913E37C()
{
  sub_18913DFA4();

  return swift_deallocClassInstance();
}

uint64_t sub_18913E3AC(int a1)
{
  LODWORD(v29) = a1;
  v1 = sub_18A4A2BD8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937050);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  swift_beginAccess();
  sub_188FFFE1C(v29, v10);
  swift_endAccess();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v18 = &qword_1EA937050;
    v19 = v10;
  }

  else
  {
    sub_18913F370(v10, v17);
    sub_188A3F29C(v17, v15, &unk_1EA935770);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *v15;
      v21 = *(*v15 + 16);
      if (v21)
      {
        v24 = *(v2 + 16);
        v23 = v2 + 16;
        v22 = v24;
        v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
        v29 = *v15;
        v26 = v20 + v25;
        v27 = *(v23 + 56);
        do
        {
          v22(v5, v26, v1);
          sub_18A4A2BB8();
          (*(v23 - 8))(v5, v1);
          v26 += v27;
          --v21;
        }

        while (v21);
      }
    }

    else
    {
      (*(v2 + 32))(v7, v15, v1);
      sub_18A4A2BB8();
      (*(v2 + 8))(v7, v1);
    }

    v18 = &unk_1EA935770;
    v19 = v17;
  }

  return sub_188A3F5FC(v19, v18);
}

unint64_t sub_18913E6F4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18913F2D4(*a1);
  *a2 = result;
  return result;
}

id sub_18913E728()
{
  v1 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v2 = sub_18A4A2BD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A2BA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  if ([(UIView *)v1 _isDeallocInitiated])
  {

    return [v1 _updateCorners];
  }

  else
  {
    v46 = v12;
    v47 = v9;
    v48 = v5;
    v49 = v3;
    v50 = v2;
    v20 = [(UIView *)v1 _typedStorage];
    v21 = sub_188A4CEC4();

    if (v21)
    {
      sub_18913E3AC(5);
    }

    v51 = v21;
    v45 = *(v7 + 56);
    v45(v18, 1, 1, v6);
    v52 = v18;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = *(StatusReg + 848);
    *(StatusReg + 848) = v52;
    v24 = v7;
    v25 = byte_1ED4A3680;
    byte_1ED4A3680 = 1;
    [v1 _updateCorners];
    *(StatusReg + 848) = v23;
    v26 = v6;
    v27 = v52;
    byte_1ED4A3680 = v25;
    v28 = v24;
    sub_188A3F29C(v52, v15, &qword_1EA93E090);
    if ((*(v24 + 48))(v15, 1, v6) == 1)
    {
      sub_188A3F5FC(v27, &qword_1EA93E090);
      sub_188A3F5FC(v15, &qword_1EA93E090);
    }

    else
    {
      v29 = v47;
      (*(v24 + 32))(v47, v15, v6);
      v30 = sub_188ACEB88(v1, 5, &block_descriptor_149_4);
      v31 = v51;
      if (!v51)
      {
        v32 = v30;
        v33 = [(UIView *)v1 _typedStorage];
        v31 = sub_188A4CEC4();

        v30 = v32;
      }

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = 5;
      *(v35 + 25) = v30;
      *(v35 + 32) = [UIView _invalidateCorners];
      *(v35 + 40) = 0;
      v36 = v46;
      (*(v24 + 16))(v46, v29, v26);
      v45(v36, 0, 1, v26);

      v37 = v48;
      sub_18A4A2BE8();
      if (!v31)
      {
        type metadata accessor for TrackingDictionary();
        v38 = swift_allocObject();
        *(v38 + 16) = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v39 = [(UIView *)v1 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098);
        v40 = swift_allocObject();
        *(v40 + 16) = v38;
        v51 = v34;
        v41 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(&v39->super.isa + v41);
        *(&v39->super.isa + v41) = 0x8000000000000000;
        sub_188A40430(v40, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
        *(&v39->super.isa + v41) = v53;
        swift_endAccess();
      }

      swift_retain_n();
      sub_188ACEFD4(v37, 5);

      v43 = swift_allocObject();
      *(v43 + 16) = sub_188B57AD4;
      *(v43 + 24) = v35;

      MEMORY[0x18CFDDAE0](v37, 0, 0, sub_188B57248, v43);

      (*(v49 + 8))(v37, v50);
      (*(v28 + 8))(v29, v26);
      sub_188A3F5FC(v52, &qword_1EA93E090);
    }
  }
}

uint64_t sub_18913EE30()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_18A4A7648();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18913EEAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_18913EFC4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTagSinglePayload for UpdateKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18913F2D4(unint64_t result)
{
  if (result >= 0x11)
  {
    return 17;
  }

  return result;
}

uint64_t sub_18913F2E4()
{
  sub_18A4A2BD8();
  v1 = *(v0 + 16);
  sub_18A4A2BC8();
  v1();
}

uint64_t sub_18913F370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ObservationTrackingContext.ObjectUpdate(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF0 && *(a1 + 9))
  {
    return (*a1 + 240);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 0x11;
  v5 = v3 - 17;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ObservationTrackingContext.ObjectUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEF)
  {
    *(result + 8) = 0;
    *result = a2 - 240;
    if (a3 >= 0xF0)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF0)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 16;
    }
  }

  return result;
}

BOOL sub_18913F4A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18913F510(v7, v9);
}

BOOL sub_18913F510(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    return *(a1 + 80) == *(a2 + 80);
  }

  return 0;
}

uint64_t sub_18913F5EC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1891803FC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1891454B4(v6);
  return sub_18A4A81E8();
}

uint64_t sub_18913F668@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_18A4A24F8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_18A4A2588();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel__attributedText;
  swift_beginAccess();
  (*(v6 + 16))(v8, v9 + v10, v5);
  sub_18A4A24E8();
  (*(v6 + 8))(v8, v5);
  sub_18914540C(&qword_1EA93B120, MEMORY[0x1E6968678]);
  result = sub_18A4A7428();
  *a2 = result;
  a2[1] = v12;
  return result;
}

uint64_t sub_18913F81C()
{
  v0 = sub_18A4A2668();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18A4A2588();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1EA931F38;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EA93E0B0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v9, v0);
  sub_18A4A2598();
  sub_189140E9C(v7, 0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_18913FA10()
{
  v1 = sub_18A4A24F8();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_18A4A2588();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel__attributedText;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_18A4A24E8();
  (*(v3 + 8))(v5, v2);
  sub_18914540C(&qword_1EA93B120, MEMORY[0x1E6968678]);
  return sub_18A4A7428();
}

uint64_t sub_18913FBB4()
{
  v0 = sub_18A4A2668();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18A4A2588();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA931F38 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EA93E0B0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v8, v0);
  sub_18A4A2598();
  sub_189140E9C(v7, 0);
  return (*(v5 + 8))(v7, v4);
}

void (*sub_18913FD98(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA0uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 88) = v1;
  v6 = sub_18A4A2668();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[14] = v8;
  v9 = *(*(sub_18A4A24F8() - 8) + 64);
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(v9);
  }

  v5[15] = v10;
  v11 = sub_18A4A2588();
  v5[16] = v11;
  v12 = *(v11 - 8);
  if (v3)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(*(v11 - 8) + 64));
  }

  v14 = v13;
  v5[17] = v13;
  v15 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI22RotaryPlaceholderLabel__attributedText;
  swift_beginAccess();
  (*(v12 + 16))(v14, v1 + v15, v11);
  sub_18A4A24E8();
  v16 = *(v12 + 8);
  v5[18] = v16;
  v5[19] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v14, v11);
  sub_18914540C(&qword_1EA93B120, MEMORY[0x1E6968678]);
  v5[9] = sub_18A4A7428();
  v5[10] = v17;
  return sub_18913FFE8;
}

void sub_18913FFE8(void **a1, char a2)
{
  v2 = *a1;
  v3 = qword_1EA931F38;
  if (a2)
  {

    if (v3 != -1)
    {
      swift_once();
    }

    v15 = v2[18];
    v4 = v2[17];
    v13 = v2[16];
    v6 = v2[14];
    v5 = v2[15];
    v8 = v2[12];
    v7 = v2[13];
    v9 = __swift_project_value_buffer(v8, qword_1EA93E0B0);
    swift_beginAccess();
    (*(v7 + 16))(v6, v9, v8);
    sub_18A4A2598();
    sub_189140E9C(v4, 0);
    v15(v4, v13);
  }

  else
  {
    if (qword_1EA931F38 != -1)
    {
      swift_once();
    }

    v16 = v2[18];
    v4 = v2[17];
    v14 = v2[16];
    v6 = v2[14];
    v5 = v2[15];
    v11 = v2[12];
    v10 = v2[13];
    v12 = __swift_project_value_buffer(v11, qword_1EA93E0B0);
    swift_beginAccess();
    (*(v10 + 16))(v6, v12, v11);
    sub_18A4A2598();
    sub_189140E9C(v4, 0);
    v16(v4, v14);
  }

  free(v4);
  free(v5);
  free(v6);

  free(v2);
}