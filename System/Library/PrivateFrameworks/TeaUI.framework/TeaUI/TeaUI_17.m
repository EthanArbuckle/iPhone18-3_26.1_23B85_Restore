uint64_t StatusBannerContainerController.tabBarSplitViewPresentation(for:)()
{
  OUTLINED_FUNCTION_7_25();
  sub_1D7E0631C(0, qword_1EDBB0758);
  v0 = v40;
  OUTLINED_FUNCTION_18_2(v0, v1, v2, v3, v4, v5, v6, v7, v36, v38, v40, v42, v44[0]);
  v8 = swift_dynamicCast();
  if (v8)
  {
    OUTLINED_FUNCTION_19_10(v8, v9, v10, v11);
    OUTLINED_FUNCTION_17_12(v47);
    v12 = OUTLINED_FUNCTION_13_14();
    v13(v12);
    return __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  OUTLINED_FUNCTION_2_3();
  sub_1D7E9DD24(v44, &qword_1ECA0DD60, qword_1EDBB0758);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = v0;
    v17 = [v15 childViewControllers];
    sub_1D7E194D0();
    v18 = sub_1D8191314();

    if (sub_1D7E36AB8(v18))
    {
      sub_1D7E33DD8(0, (v18 & 0xC000000000000001) == 0, v18);
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1DA714420](0, v18);
      }

      else
      {
        v19 = *(v18 + 32);
      }

      v20 = v19;

      v46 = v20;
      OUTLINED_FUNCTION_18_2(v21, v22, v23, v24, v25, v26, v27, v28, v37, v39, v41, v43, v44[0]);
      v29 = swift_dynamicCast();
      if (v29)
      {
        if (v45)
        {
          OUTLINED_FUNCTION_19_10(v29, v30, v31, v32);
          OUTLINED_FUNCTION_17_12(v47);
          v33 = OUTLINED_FUNCTION_13_14();
          v34(v33);

          return __swift_destroy_boxed_opaque_existential_1Tm(v47);
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
      }
    }

    else
    {

      OUTLINED_FUNCTION_2_3();
    }

    sub_1D7E9DD24(v44, &qword_1ECA0DD60, qword_1EDBB0758);
  }

  result = OUTLINED_FUNCTION_3_49();
  __break(1u);
  return result;
}

Swift::Void __swiftcall StatusBannerContainerController.textBeginEditing()()
{
  OUTLINED_FUNCTION_5_26();
  v0 = sub_1D7E0631C(0, &qword_1ECA0DD68);
  OUTLINED_FUNCTION_8_19(v0, v1, v2, v3, v4, v5, v6, v7, v18);
  v8 = OUTLINED_FUNCTION_2_50();
  if (v8)
  {
    OUTLINED_FUNCTION_16_15(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21[0]);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v16 = OUTLINED_FUNCTION_4_1();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    OUTLINED_FUNCTION_0_38();
    sub_1D7E9DD24(v21, &qword_1ECA0DD70, &qword_1ECA0DD68);
  }
}

Swift::Void __swiftcall StatusBannerContainerController.textEndEditing()()
{
  OUTLINED_FUNCTION_5_26();
  v0 = sub_1D7E0631C(0, &qword_1ECA0DD68);
  OUTLINED_FUNCTION_8_19(v0, v1, v2, v3, v4, v5, v6, v7, v18);
  v8 = OUTLINED_FUNCTION_2_50();
  if (v8)
  {
    OUTLINED_FUNCTION_16_15(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21[0]);
    v16 = v23;
    v17 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v17 + 16))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    OUTLINED_FUNCTION_0_38();
    sub_1D7E9DD24(v21, &qword_1ECA0DD70, &qword_1ECA0DD68);
  }
}

uint64_t StatusBannerContainerController.backdropGroupName.getter()
{
  OUTLINED_FUNCTION_5_26();
  v0 = sub_1D7E0631C(0, &qword_1EDBB7300);
  OUTLINED_FUNCTION_8_19(v0, v1, v2, v3, v4, v5, v6, v7, v20);
  v8 = OUTLINED_FUNCTION_2_50();
  if (v8)
  {
    OUTLINED_FUNCTION_16_15(v8, v9, v10, v11, v12, v13, v14, v15, v21, v22, v23[0]);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v16 = OUTLINED_FUNCTION_4_1();
    v18 = v17(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    OUTLINED_FUNCTION_0_38();
    sub_1D7E9DD24(v23, &unk_1EDBB72F0, &qword_1EDBB7300);
    return 0;
  }

  return v18;
}

unint64_t sub_1D7F87324()
{
  result = qword_1ECA0E430;
  if (!qword_1ECA0E430)
  {
    sub_1D7E194D0();
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0E430);
  }

  return result;
}

unint64_t sub_1D7F87388(uint64_t a1)
{
  result = sub_1D7F873B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7F873B0()
{
  result = qword_1ECA0E438;
  if (!qword_1ECA0E438)
  {
    type metadata accessor for StatusBannerContainerController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E438);
  }

  return result;
}

id sub_1D7F87458()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_nextButton);
  if (*(v0 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoveringState) < 1)
  {
    [*(v0 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_nextButton) setHidden_];
    v8 = *(v0 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_previousButton);
    v7 = 1;
  }

  else
  {
    v2 = sub_1D7F88DA4(0);
    v3 = v2;
    if (v2)
    {
    }

    [v1 setHidden_];
    v4 = *(v0 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_previousButton);
    v5 = sub_1D7F88DA4(1);
    v6 = v5;
    if (v5)
    {
    }

    v7 = v6 == 0;
    v8 = v4;
  }

  return [v8 setHidden_];
}

char *BlueprintHorizontalScrollShimView.__allocating_init<A, B, C>(blueprintViewController:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v7 = *((v6 & v4) + 0x70);
  v8 = *(v7 + 56);
  v9 = *((v6 & v4) + 0x58);
  swift_unknownObjectRetain();
  v10 = v8(v9, v7);
  swift_unknownObjectRelease();
  v11 = (a1 + *((*v5 & *a1) + 0xB0));
  swift_beginAccess();
  v13 = *v11;
  v12 = v11[1];
  objc_allocWithZone(v2);
  swift_unknownObjectRetain();
  v14 = sub_1D7F87680(v10, v13, v12);

  return v14;
}

char *sub_1D7F87680(void *a1, uint64_t a2, void *a3)
{
  v92 = a3;
  v99 = a2;
  ObjectType = swift_getObjectType();
  sub_1D7F89D40();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v95 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1D8191D24();
  v101 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1D8191E04();
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v97 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v84 - v10;
  v11 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_shimMaskView;
  *&v3[v11] = [objc_allocWithZone(type metadata accessor for HorizontalScrollShimMaskView()) initWithFrame_];
  v12 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_keyValueObservers] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoverGestureRecognizers] = v12;
  v13 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_nextButton;
  v14 = objc_opt_self();
  *&v3[v13] = [v14 buttonWithType_];
  v15 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_previousButton;
  *&v3[v15] = [v14 buttonWithType_];
  *&v3[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoveringState] = 0;
  v16 = a1;
  v17 = [v16 traitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 <= 6 && ((1 << v18) & 0x62) != 0)
  {
    *&v3[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_collectionView] = v16;
    v19 = &v3[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_layoutOptionsProvider];
    v20 = v92;
    *v19 = v99;
    *(v19 + 1) = v20;
    v104.receiver = v3;
    v104.super_class = ObjectType;
    v92 = v16;
    swift_unknownObjectRetain();
    v21 = objc_msgSendSuper2(&v104, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v22 = objc_opt_self();
    v23 = *MEMORY[0x1E69DB970];
    v24 = v21;
    v25 = [v22 systemFontOfSize:28.0 weight:v23];
    v26 = [objc_opt_self() configurationWithFont_];

    if (sub_1D8190B24())
    {
      v27 = v96;
      sub_1D8191DB4();
    }

    else
    {
      v27 = v96;
      sub_1D8191DF4();
    }

    v91 = sub_1D7E0A1A8(0, &qword_1EDBB2F60);
    v28 = sub_1D7E47238();
    v29 = [v28 imageByApplyingSymbolConfiguration_];

    sub_1D8191DC4();
    v30 = *(v101 + 13);
    v89 = *MEMORY[0x1E69DC508];
    v101 += 104;
    v88 = v30;
    v30(v93);
    sub_1D8191D34();
    v31 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_previousButton;
    v32 = *&v24[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_previousButton];
    v33 = v95;
    v34 = v100;
    v87 = *(v98 + 16);
    v87(v95, v27, v100);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
    v35 = v32;
    sub_1D8191E24();

    [*&v24[v31] addTarget:v24 action:sel_doPreviousWithButton_ forControlEvents:64];
    v36 = *&v24[v31];
    v37 = objc_opt_self();
    v38 = v36;
    v85 = v37;
    v39 = [v37 labelColor];
    [v38 setTintColor_];

    [*&v24[v31] setPointerInteractionEnabled_];
    [*&v24[v31] setHidden_];
    [*&v24[v31] setPreferredBehavioralStyle_];
    v40 = *&v24[v31];
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v42 = objc_opt_self();
    v43 = v40;
    v84 = ObjCClassFromMetadata;
    v44 = [v42 bundleForClass_];
    v86 = 0x80000001D81CB310;
    v45 = sub_1D818E514();
    v47 = v46;

    sub_1D806B194(v45, v47, v43);
    sub_1D7F89C88(0xD000000000000014, 0x80000001D81CB340, *&v24[v31]);
    v90 = v31;
    [v24 addSubview_];
    if (sub_1D8190B24())
    {
      v48 = v97;
      sub_1D8191DB4();
    }

    else
    {
      v48 = v97;
      sub_1D8191DF4();
    }

    v49 = sub_1D7E47238();
    v91 = v26;
    v50 = [v49 imageByApplyingSymbolConfiguration_];

    sub_1D8191DC4();
    v88(v93, v89, v94);
    sub_1D8191D34();
    v51 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_nextButton;
    v52 = *&v24[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_nextButton];
    v53 = v95;
    v54 = v100;
    v87(v95, v48, v100);
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
    v55 = v52;
    sub_1D8191E24();

    [*&v24[v51] addTarget:v24 action:sel_doNextWithButton_ forControlEvents:64];
    v56 = *&v24[v51];
    v57 = [v85 labelColor];
    [v56 setTintColor_];

    [*&v24[v51] setPointerInteractionEnabled_];
    [*&v24[v51] setHidden_];
    [*&v24[v51] setPreferredBehavioralStyle_];
    v58 = *&v24[v51];
    v59 = [v42 bundleForClass_];
    v60 = sub_1D818E514();
    v62 = v61;

    sub_1D806B194(v60, v62, v58);
    sub_1D7F89C88(0xD000000000000010, 0x80000001D81CB380, *&v24[v51]);
    [v24 addSubview_];
    v63 = v92;
    v103[0] = v92;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D818E594();

    v64 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_keyValueObservers;
    v65 = swift_beginAccess();
    MEMORY[0x1DA713500](v65);
    sub_1D7E2893C(*((*&v24[v64] & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1D8191404();
    swift_endAccess();
    v103[0] = v63;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D818E594();

    v66 = swift_beginAccess();
    MEMORY[0x1DA713500](v66);
    sub_1D7E2893C(*((*&v24[v64] & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1D8191404();
    swift_endAccess();
    sub_1D7E49240();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D81A7860;
    *(inited + 32) = v24;
    *(inited + 40) = v63;
    v68 = *&v24[v90];
    *(inited + 48) = v68;
    v69 = *&v24[v51];
    *(inited + 56) = v69;
    v101 = sel_doHoveringWithRecognizer_;
    v70 = (inited & 0xC000000000000001) == 0;
    sub_1D7E33DD8(0, v70, inited);
    sub_1D7E33DD8(3, v70, inited);
    v71 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoverGestureRecognizers;
    v72 = v68;
    v73 = v69;
    v74 = 0;
    do
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v75 = MEMORY[0x1DA714420](v74, inited);
      }

      else
      {
        v75 = *(inited + 8 * v74 + 32);
      }

      v76 = v75;
      v103[3] = ObjectType;
      v103[0] = v24;
      v77 = objc_allocWithZone(MEMORY[0x1E69DCAA0]);
      v78 = v24;
      v79 = sub_1D7F89B44(v103, v101);
      [v79 setDelegate_];
      swift_beginAccess();
      v80 = v79;
      MEMORY[0x1DA713500]();
      if (*((*&v24[v71] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v24[v71] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D81913B4();
      }

      ++v74;
      sub_1D8191404();
      swift_endAccess();
      [v76 addGestureRecognizer_];
    }

    while (v74 != 4);

    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_1D7E72768();
    v81 = *(v98 + 8);
    v82 = v100;
    v81(v97, v100);
    v81(v96, v82);
  }

  else
  {
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v24;
}

void sub_1D7F883DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D7F87458();
  }
}

void sub_1D7F88430()
{
  v1 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_shimMaskView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for HorizontalScrollShimMaskView()) initWithFrame_];
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_keyValueObservers) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoverGestureRecognizers) = v2;
  v3 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_nextButton;
  v4 = objc_opt_self();
  *(v0 + v3) = [v4 buttonWithType_];
  v5 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_previousButton;
  *(v0 + v5) = [v4 buttonWithType_];
  *(v0 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoveringState) = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall BlueprintHorizontalScrollShimView.layoutSubviews()()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_layoutOptionsProvider + 8];
  ObjectType = swift_getObjectType();
  (*(v2 + 8))(__src, ObjectType, v2);
  v4 = *&v0[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_shimMaskView];
  memcpy(__dst, __src, 0x235uLL);
  sub_1D7E222B8(__src, v14);
  sub_1D7F887EC(__dst);
  OUTLINED_FUNCTION_1_52();
  [v4 setFrame_];
  v5 = __src[28];
  v6 = *&v1[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_collectionView];
  v7 = [v6 superview];
  v8 = [v7 maskView];

  if ((v5 & 1) == 0)
  {
    if (!v8)
    {
      v11 = [v6 superview];
      if (!v11)
      {
        goto LABEL_10;
      }

      v8 = v11;
      [v11 setMaskView_];
    }

    goto LABEL_10;
  }

  if (v8)
  {

    v9 = [v6 superview];
    if (v9)
    {
      v10 = v9;
      [v9 setMaskView_];
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_1_52();
  Height = CGRectGetHeight(v18);
  OUTLINED_FUNCTION_0_67(Height * 0.5);
  OUTLINED_FUNCTION_1_52();
  CGRectGetWidth(v19);
  OUTLINED_FUNCTION_1_52();
  v13 = CGRectGetHeight(v20);
  OUTLINED_FUNCTION_0_67(v13 * 0.5);
  sub_1D7E4C1A0(__src);
}

id sub_1D7F887EC(const void *a1)
{
  memcpy(__dst, &v1[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions], 0x235uLL);
  memcpy(&v1[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions], a1, 0x235uLL);
  sub_1D7E4C1A0(__dst);
  return [v1 setNeedsLayout];
}

void __swiftcall BlueprintHorizontalScrollShimView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v13.receiver = v3;
  v13.super_class = swift_getObjectType();
  v8 = [(UIView_optional *)&v13 hitTest:isa withEvent:x, y];
  v9 = v8;
  if (!v8 || v8 != *&v4[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_nextButton] && v8 != *&v4[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_previousButton])
  {
    v10 = *&v4[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_collectionView];
    v11 = [v10 superview];
    v12 = [v11 maskView];

    if (!v12 || (v12, [*(*&v4[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_shimMaskView] + OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_visibleView) frame], v14.x = x, v14.y = y, CGRectContainsPoint(v15, v14)))
    {
      [v4 convertPoint:v10 toCoordinateSpace:{x, y}];
      [v10 hitTest:isa withEvent:?];
    }
  }
}

id sub_1D7F88AA0(char a1)
{
  v2 = v1;
  result = sub_1D7F88DA4(a1 & 1);
  if (result)
  {
    v4 = result;
    v5 = *(v1 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_layoutOptionsProvider + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v16, ObjectType, v5);
    v7 = *(v1 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_collectionView);
    [*(v2 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_collectionView) contentOffset];
    v9 = v8;
    [v4 frame];
    v10 = CGRectGetMinX(v17) - *&v16[47] - *&v16[21];
    [v7 contentSize];
    v12 = v11;
    [v7 adjustedContentInset];
    v14 = v12 + v13;
    [v7 bounds];
    v15 = v14 - CGRectGetWidth(v18);
    if (v15 >= v10)
    {
      v15 = v10;
    }

    [v7 setContentOffset:1 animated:{v15, v9}];

    return sub_1D7E4C1A0(v16);
  }

  return result;
}

char *sub_1D7F88CB4(void *a1)
{
  result = [a1 state];
  if ((result - 3) < 2)
  {
    v3 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoveringState;
    v4 = *(v1 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoveringState);
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (!v5)
    {
      v7 = v6 & ~(v6 >> 63);
      goto LABEL_6;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (result != 1)
  {
    return result;
  }

  v3 = OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoveringState;
  v8 = *(v1 + OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_hoveringState);
  v5 = __OFADD__(v8, 1);
  v7 = v8 + 1;
  if (v5)
  {
    goto LABEL_11;
  }

LABEL_6:
  *(v1 + v3) = v7;

  return sub_1D7F87458();
}

id sub_1D7F88DA4(char a1)
{
  v3 = sub_1D7F89030(v1);
  v6 = v5;
  v7 = v4;
  v9 = v8;
  v10 = -v4;
  if ((a1 & 1) == 0)
  {
    v10 = v4;
  }

  v11 = v3 + v10;
  v12 = [*&v1[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_collectionView] collectionViewLayout];
  v13 = [v12 layoutAttributesForElementsInRect_];

  if (v13)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB3020);
    v14 = sub_1D8191314();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1D7E36AB8(v14);
  for (i = 0; v15 != i; ++i)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1DA714420](i, v14);
    }

    else
    {
      if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v17 = *(v14 + 8 * i + 32);
    }

    v18 = v17;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v19 = MEMORY[0x1DA714420](0, v14);
      goto LABEL_20;
    }

    if ([v17 representedElementCategory])
    {
    }

    else
    {
      sub_1D8192274();
      sub_1D81922B4();
      sub_1D81922C4();
      sub_1D8192284();
    }
  }

  sub_1D7E0A1A8(0, &qword_1EDBB3020);
  sub_1D7F89CEC();
  v14 = sub_1D8191384();

  if (sub_1D7E36AB8(v14))
  {
    sub_1D7E33DD8(0, (v14 & 0xC000000000000001) == 0, v14);
    if ((v14 & 0xC000000000000001) != 0)
    {
      goto LABEL_25;
    }

    v19 = *(v14 + 32);
LABEL_20:
    v20 = v19;

    return v20;
  }

  return 0;
}

double sub_1D7F89030(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_collectionView];
  v3 = [v2 maskView];
  if (v3)
  {

    [*(*&a1[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_shimMaskView] + OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_visibleView) frame];
    [a1 convertRect:v2 toCoordinateSpace:?];
    return v4;
  }

  else
  {
    v6 = *&a1[OBJC_IVAR____TtC5TeaUI33BlueprintHorizontalScrollShimView_layoutOptionsProvider + 8];
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v13, ObjectType, v6);
    v8 = *&v13[47];
    v9 = *&v13[49];
    [a1 bounds];
    v10 = CGRectGetWidth(v14) - (v8 + v9);
    [a1 bounds];
    [a1 convertRect:v2 toCoordinateSpace:{v8, 0.0, v10, CGRectGetHeight(v15)}];
    v5 = v11;
    sub_1D7E4C1A0(v13);
  }

  return v5;
}

id BlueprintHorizontalScrollShimView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *sub_1D7F8936C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions;
  if (qword_1EDBB8D40 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &word_1EDBB8D50, 0x235uLL);
  memmove(&v4[v10], &word_1EDBB8D50, 0x235uLL);
  v11 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_leftMaskView;
  v12 = type metadata accessor for GradientView();
  v13 = objc_allocWithZone(v12);
  sub_1D7E222B8(__dst, &v33);
  *&v4[v11] = [v13 initWithFrame_];
  v14 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_visibleView;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v15 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_rightMaskView;
  *&v4[v15] = [objc_allocWithZone(v12) initWithFrame_];
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 clearColor];
  [v18 setBackgroundColor_];

  v20 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_leftMaskView;
  v21 = *&v18[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_leftMaskView];
  sub_1D7E49240();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D81A5090;
  v23 = v21;
  *(v22 + 32) = [v17 &selRef_disappearingViewController];
  *(v22 + 40) = [v17 whiteColor];
  v33 = v22;
  v34 = xmmword_1D81A74D0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  GradientView.gradientDescriptor.setter(&v33);

  v24 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_visibleView;
  v25 = *&v18[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_visibleView];
  v26 = [v17 whiteColor];
  [v25 setBackgroundColor_];

  v27 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_rightMaskView;
  v28 = *&v18[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_rightMaskView];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D81A5090;
  v30 = v28;
  *(v29 + 32) = [v17 whiteColor];
  *(v29 + 40) = [v17 clearColor];
  v33 = v29;
  v34 = xmmword_1D81A74D0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v41 = 1;
  GradientView.gradientDescriptor.setter(&v33);

  [v18 addSubview_];
  [v18 addSubview_];
  [v18 addSubview_];

  return v18;
}

void sub_1D7F8974C()
{
  v1 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions;
  if (qword_1EDBB8D40 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &word_1EDBB8D50, 0x235uLL);
  memmove((v0 + v1), &word_1EDBB8D50, 0x235uLL);
  v2 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_leftMaskView;
  v3 = type metadata accessor for GradientView();
  v4 = objc_allocWithZone(v3);
  sub_1D7E222B8(__dst, v7);
  *(v0 + v2) = [v4 initWithFrame_];
  v5 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_visibleView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v6 = OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_rightMaskView;
  *(v0 + v6) = [objc_allocWithZone(v3) initWithFrame_];
  sub_1D81923A4();
  __break(1u);
}

id sub_1D7F898E0()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions + 168];
  v2 = *&v0[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions + 184];
  v3 = *&v0[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions + 376];
  v4 = *&v0[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_layoutOptions + 392];
  v5 = *&v0[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_leftMaskView];
  [v0 bounds];
  [v5 setFrame_];
  v6 = *&v0[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_visibleView];
  [v5 frame];
  MaxX = CGRectGetMaxX(v14);
  [v0 bounds];
  v8 = CGRectGetWidth(v15) - (v3 + v4) - (v1 + v2);
  [v0 bounds];
  [v6 setFrame_];
  v9 = *&v0[OBJC_IVAR____TtC5TeaUIP33_249AAC274B2539EE5012BFEFBAAE994128HorizontalScrollShimMaskView_rightMaskView];
  [v6 frame];
  v10 = CGRectGetMaxX(v17);
  [v0 bounds];
  return [v9 setFrame_];
}

id sub_1D7F89B44(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1D8192614();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

void sub_1D7F89C88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();

  [a3 setAccessibilityIdentifier_];
}

unint64_t sub_1D7F89CEC()
{
  result = qword_1ECA0E510;
  if (!qword_1ECA0E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E510);
  }

  return result;
}

void sub_1D7F89D40()
{
  if (!qword_1EDBAE428)
  {
    sub_1D8191E04();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE428);
    }
  }
}

id keypath_getTm@<X0>(id *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*a1 *a2];
  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t PillViewStyler.__allocating_init(colorPalette:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D7E05450(a1, v2 + 16);
  return v2;
}

void PillViewStyler.style(contentView:size:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v5 = OUTLINED_FUNCTION_1_53();
  v7 = v6(v5);
  [a1 setBackgroundColor_];

  v8 = OUTLINED_FUNCTION_3_50();
  [v8 setCornerCurve_];

  v14 = OUTLINED_FUNCTION_3_50();
  [a1 frame];
  v13 = 14.0;
  if (v4 <= 1)
  {
    v13 = CGRectGetHeight(*&v9) * 0.5;
  }

  [v14 setCornerRadius_];
}

void PillViewStyler.style(contentView:size:isSelected:)(void *a1, uint64_t a2, char a3)
{
  v5 = *(a2 + 32);
  if (a3)
  {
    v6 = objc_opt_self();
    v7 = [v6 blackColor];
    v8 = [v6 whiteColor];
    v9 = [v6 ts:v7 dynamicColor:v8 withDarkStyleVariant:?];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    v10 = OUTLINED_FUNCTION_1_53();
    v9 = v11(v10);
  }

  [a1 setBackgroundColor_];

  v12 = OUTLINED_FUNCTION_3_50();
  [v12 setCornerCurve_];

  v18 = OUTLINED_FUNCTION_3_50();
  [a1 frame];
  v17 = 14.0;
  if (v5 <= 1)
  {
    v17 = CGRectGetHeight(*&v13) * 0.5;
  }

  [v18 setCornerRadius_];
}

id PillViewStyler.styled(title:size:tintColor:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 32);
  v5 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v5;
  v8 = v4;
  return sub_1D7F8A140(a1, a2, v7, a4);
}

id sub_1D7F8A140(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v5 = v4;
  v10 = *(a3 + 32);
  sub_1D7F854E8();
  v31 = a3[1];
  v32 = *a3;
  inited = swift_initStackObject();
  v12 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D819FAC0;
  v13 = *v12;
  *(inited + 32) = v13;
  v34[0] = v32;
  v34[1] = v31;
  v35 = v10;
  v14 = v13;
  v15 = sub_1D7F8A9DC(v34);
  v16 = sub_1D7E0A1A8(0, &qword_1EDBB2FE0);
  *(inited + 40) = v15;
  v17 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v16;
  *(inited + 72) = v17;
  *(inited + 104) = sub_1D7E0A1A8(0, &qword_1EDBB2F68);
  if (a4)
  {
    *(inited + 80) = a4;
    v18 = v17;
  }

  else
  {
    v33 = a1;
    v19 = v5[5];
    v20 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v19);
    v21 = *(v20 + 16);
    v22 = v17;
    v23 = v21(v19, v20);
    v24 = v5[5];
    v25 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v24);
    v26 = (*(v25 + 24))(v24, v25);
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      LOBYTE(v34[0]) = 1;
      v27 = sub_1D808DCF0(v23, v26, v34);

      v23 = v27;
    }

    else
    {
    }

    *(inited + 80) = v23;
    a1 = v33;
  }

  type metadata accessor for Key();
  sub_1D7E4DB28();
  v28 = a4;
  v29 = sub_1D8190D94();
  objc_allocWithZone(MEMORY[0x1E696AAB0]);
  sub_1D8190DB4();
  return sub_1D7F3A980(a1, a2, v29);
}

id PillViewStyler.styled(title:size:isSelected:tintColor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    OUTLINED_FUNCTION_2_51();
    return sub_1D7F8A3A4(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_2_51();
    return sub_1D7F8A140(v8, v9, v10, v11);
  }
}

id sub_1D7F8A3A4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(a3 + 32);
  sub_1D7F854E8();
  v22 = a3[1];
  v23 = *a3;
  inited = swift_initStackObject();
  v8 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D819FAC0;
  v9 = *v8;
  *(inited + 32) = *v8;
  v24[1] = v22;
  v24[0] = v23;
  v25 = v6;
  sub_1D8190DB4();
  v10 = v9;
  v11 = sub_1D7F8A9DC(v24);
  v12 = sub_1D7E0A1A8(0, &qword_1EDBB2FE0);
  *(inited + 40) = v11;
  v13 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 whiteColor];
  v17 = [v14 blackColor];
  v18 = [v14 ts:v16 dynamicColor:v17 withDarkStyleVariant:?];

  *(inited + 104) = sub_1D7E0A1A8(0, &qword_1EDBB2F68);
  *(inited + 80) = v18;
  type metadata accessor for Key();
  sub_1D7E4DB28();
  v19 = sub_1D8190D94();
  v20 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  return sub_1D7F3A980(a1, a2, v19);
}

void _s5TeaUI14PillViewStylerC5style09iconImageD09tintColoryAA0hD0C_So7UIColorCtF_0(void *a1, void *a2)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v6 = v2[5];
    v7 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
    v5 = (*(v7 + 8))(v6, v7);
  }

  v8 = v2[5];
  v9 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v8);
  v10 = *(v9 + 24);
  v11 = a2;
  v14 = v10(v8, v9);
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v16 = 1;
    v12 = sub_1D808DCF0(v5, v14, &v16);
  }

  else
  {
    v12 = v5;
  }

  v13 = v12;
  [a1 setTintColor_];

  [a1 setBackgroundColor_];
}

void PillViewStyler.style(iconImageView:isSelected:)(void *a1, char a2)
{
  if (a2)
  {
    sub_1D7F8A6AC(a1);
  }

  else
  {
    OUTLINED_FUNCTION_0_68(a1);
  }
}

void sub_1D7F8A6AC(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v2 blackColor];
  v5 = [v2 ts:v3 dynamicColor:v4 withDarkStyleVariant:?];

  [a1 setTintColor_];
}

uint64_t PillViewStyler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_1D7F8A9DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = dbl_1D81A8B78[v1];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v4 = [objc_opt_self() systemFontOfSize:v2 weight:*MEMORY[0x1E69DB958]];
  v5 = [v3 scaledFontForFont_];

  return v5;
}

uint64_t ToolbarManager.isToolbarEnabled.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI14ToolbarManager_isToolbarEnabled;
  OUTLINED_FUNCTION_1_0();
  return *(v0 + v1);
}

uint64_t sub_1D7F8AADC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI14ToolbarManager_isToolbarEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t ToolbarManager.isToolbarEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI14ToolbarManager_isToolbarEnabled;
  result = OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ToolbarManager.isToolbarVisible.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI14ToolbarManager_isToolbarVisible;
  OUTLINED_FUNCTION_1_0();
  return *(v0 + v1);
}

uint64_t sub_1D7F8ABF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI14ToolbarManager_isToolbarVisible;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t ToolbarManager.isToolbarVisible.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI14ToolbarManager_isToolbarVisible;
  result = OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D7F8AD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  sub_1D8190DB4();

  return sub_1D8190DB4();
}

id ToolbarManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ToolbarManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7F8B0FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7F8B13C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id BlueprintCollectionViewCompositionalListLayout.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BlueprintCollectionViewCompositionalListLayout.__allocating_init(section:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSection_];

  return v3;
}

id BlueprintCollectionViewCompositionalListLayout.__allocating_init(section:configuration:)()
{
  v2 = [OUTLINED_FUNCTION_2_52() initWithSection:v1 configuration:v0];

  return v2;
}

void sub_1D7F8B380(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  BlueprintCollectionViewCompositionalListLayout.init(section:configuration:)();
}

id BlueprintCollectionViewCompositionalListLayout.__allocating_init(sectionProvider:)()
{
  v2 = OUTLINED_FUNCTION_2_52();
  v8 = v1;
  v9 = v0;
  OUTLINED_FUNCTION_2_1();
  v7[1] = 1107296256;
  OUTLINED_FUNCTION_0_70();
  v7[2] = v3;
  v7[3] = &block_descriptor_3;
  v4 = _Block_copy(v7);
  v5 = [v2 initWithSectionProvider_];
  _Block_release(v4);

  return v5;
}

void sub_1D7F8B460(int a1, int a2, void *aBlock)
{
  _Block_copy(aBlock);
  swift_allocObject();
  BlueprintCollectionViewCompositionalListLayout.init(sectionProvider:)();
}

id BlueprintCollectionViewCompositionalListLayout.__allocating_init(sectionProvider:configuration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v12[4] = a1;
  v12[5] = a2;
  OUTLINED_FUNCTION_2_1();
  v12[1] = 1107296256;
  OUTLINED_FUNCTION_0_70();
  v12[2] = v8;
  v12[3] = &block_descriptor_6_0;
  v9 = _Block_copy(v12);
  v10 = [v7 initWithSectionProvider:v9 configuration:a3];

  _Block_release(v9);

  return v10;
}

void sub_1D7F8B564(int a1, int a2, void *aBlock, void *a4)
{
  _Block_copy(aBlock);
  swift_allocObject();
  v5 = a4;
  BlueprintCollectionViewCompositionalListLayout.init(sectionProvider:configuration:)();
}

id BlueprintCollectionViewCompositionalListLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7F8B5D4(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x80)]);
}

void sub_1D7F8B6D4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_barBackgroundColor);
  *(v1 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_barBackgroundColor) = a1;
  v3 = a1;

  sub_1D7F8BBD4();
}

uint64_t sub_1D7F8B72C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_onCreateMenuBlock);
  v4 = *(v2 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_onCreateMenuBlock);
  *v3 = a1;
  v3[1] = a2;
  sub_1D7E0E10C(v4);
}

void sub_1D7F8B790()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D818E514();
  v4 = v3;

  qword_1EDBC5FD8 = v2;
  unk_1EDBC5FE0 = v4;
}

uint64_t sub_1D7F8B854()
{
  v1 = v0;
  sub_1D7F8C958(0, &qword_1EDBB20E0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  sub_1D7F8C958(0, &qword_1EDBAE428, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton);
  v12 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_configuration;
  swift_beginAccess();
  sub_1D7F8CA00(v11 + v12, v10);
  v13 = sub_1D8191E04();
  if (!__swift_getEnumTagSinglePayload(v10, 1, v13))
  {
    sub_1D7F8BA7C();
    v14 = sub_1D818E4E4();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v14);
    sub_1D8191D54();
  }

  sub_1D7F8CA00(v10, v7);
  CollapsingButton.configuration.setter(v7);
  if (*(v1 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text + 8))
  {
    v15 = *(v1 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text);
    v16 = *(v1 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text + 8);
  }

  else
  {
    if (qword_1EDBB0350 != -1)
    {
      OUTLINED_FUNCTION_0_71();
    }

    v15 = qword_1EDBC5FD8;
    v16 = unk_1EDBC5FE0;
    sub_1D8190DB4();
  }

  sub_1D8190DB4();
  sub_1D806B194(v15, v16, v11);
  return sub_1D7F8CA80(v10);
}

uint64_t sub_1D7F8BA7C()
{
  v1 = sub_1D818E534();
  MEMORY[0x1EEE9AC00](v1 - 8);
  if (!*(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text + 8))
  {
    if (qword_1EDBB0350 != -1)
    {
      swift_once();
    }

    sub_1D8190DB4();
  }

  sub_1D8190DB4();
  sub_1D818E524();
  sub_1D818E4F4();
  [objc_opt_self() systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB958]];
  sub_1D7F8C9AC();
  return sub_1D818E504();
}

uint64_t sub_1D7F8BBD4()
{
  sub_1D7F8C958(0, &qword_1EDBAE428, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton);
  v8 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_configuration;
  swift_beginAccess();
  sub_1D7F8CA00(v7 + v8, v6);
  v9 = sub_1D8191E04();
  if (!__swift_getEnumTagSinglePayload(v6, 1, v9))
  {
    v10 = *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_barBackgroundColor);
    if (v10)
    {
      v11 = v10;
      UIColor.barButtonBackgroundColor.getter();
    }

    sub_1D8191D64();
  }

  sub_1D7F8CA00(v6, v3);
  CollapsingButton.configuration.setter(v3);
  return sub_1D7F8CA80(v6);
}

uint64_t sub_1D7F8BD38()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_position);
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton);
  v3 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_anchor;
  v4 = (v1 & 1) != 0;
  result = swift_beginAccess();
  *(v2 + v3) = v4;
  return result;
}

uint64_t sub_1D7F8BDB4()
{
  v1 = sub_1D818FF24();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - v4;
  sub_1D7F8C958(0, &qword_1EDBAE428, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v32 - v7;
  sub_1D7F8C958(0, &qword_1EDBB20E0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_1D8191D24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D8191E04();
  v15 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E0A1A8(0, &qword_1EDBB2F60);
  v18 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:13.0];
  v19 = sub_1D7E6FE24(0xD000000000000010, 0x80000001D81CB780, v18);
  if (*(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_sectionSelectorStyle))
  {
    sub_1D818FF14();
    v20 = [objc_opt_self() ts_floatingTabBarEffect];
    sub_1D818FEF4();
    sub_1D8191DD4();
    (*(v12 + 104))(v14, *MEMORY[0x1E69DC508], v11);
    sub_1D8191D34();
    v21 = v19;
    sub_1D8191DC4();
    sub_1D8191D44();
    sub_1D7F8BA7C();
    v22 = sub_1D818E4E4();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v22);
    sub_1D8191D54();
    v23 = v34;
    v24 = v35;
    (*(v34 + 16))(v33, v5, v35);
    sub_1D8191D14();
    v26 = v36;
    v25 = v37;
    (*(v15 + 16))(v37, v17, v36);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
    CollapsingButton.configuration.setter(v25);

    (*(v15 + 8))(v17, v26);
    return (*(v23 + 8))(v5, v24);
  }

  else
  {
    sub_1D8191DA4();
    (*(v12 + 104))(v14, *MEMORY[0x1E69DC508], v11);
    sub_1D8191D34();
    v28 = v19;
    sub_1D8191DC4();
    sub_1D8191D44();
    sub_1D7F8BA7C();
    v29 = sub_1D818E4E4();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v29);
    sub_1D8191D54();
    v31 = v36;
    v30 = v37;
    (*(v15 + 16))(v37, v17, v36);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
    CollapsingButton.configuration.setter(v30);

    return (*(v15 + 8))(v17, v31);
  }
}

char *sub_1D7F8C318()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text];
  *v2 = 0;
  v2[1] = 0;
  *&v0[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_barBackgroundColor] = 0;
  v0[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_position] = 0;
  v0[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_sectionSelectorStyle] = 0;
  v3 = OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for CollapsingButton()) init];
  v4 = &v0[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_onCreateMenuBlock];
  *v4 = 0;
  v4[1] = 0;
  v34.receiver = v0;
  v34.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v34, sel_init);
  if ((sub_1D8190B24() & 1) == 0)
  {
    sub_1D7F8BDB4();
    v11 = OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton;
    v12 = *&v5[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton];
    sub_1D7E0A1A8(0, &unk_1EDBB2FD0);
    v13 = v12;
    isa = UIMenu.init(children:)(MEMORY[0x1E69E7CC0]).super.super.isa;
    [*&v13[OBJC_IVAR____TtC5TeaUI16CollapsingButton_button] setMenu_];

    v15 = *(*(*&v5[v11] + OBJC_IVAR____TtC5TeaUI16CollapsingButton_button) + OBJC_IVAR____TtC5TeaUI12ActionButton_onMenuPresentation);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = v15;

    v18 = *&v5[v11];
    v19 = *&v5[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text];
    v20 = *&v5[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text + 8];
    if (v20)
    {
      v21 = v18;
      v22 = v20;
    }

    else
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v24 = objc_opt_self();
      v25 = v18;
      v26 = [v24 bundleForClass_];
      v19 = sub_1D818E514();
      v22 = v27;
    }

    sub_1D8190DB4();
    sub_1D806B194(v19, v22, v18);

    [v5 setCustomView_];
    return v5;
  }

  sub_1D7E0A1A8(0, &qword_1EDBB2F60);
  v6 = v5;
  result = sub_1D7E47238();
  if (result)
  {
    v8 = result;
    [v6 setImage_];

    v9 = &v6[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text];
    if (*&v6[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text + 8])
    {
      sub_1D8190DB4();
      v10 = sub_1D8190EE4();
    }

    else
    {
      v10 = 0;
    }

    [v6 setTitle_];

    v28 = v9[1];
    if (v28)
    {
      v29 = *v9;
      v30 = v6;
      v31 = v28;
    }

    else
    {
      v32 = qword_1EDBB0350;
      v33 = v6;
      if (v32 != -1)
      {
        OUTLINED_FUNCTION_0_71();
      }

      v29 = qword_1EDBC5FD8;
      v31 = unk_1EDBC5FE0;
      sub_1D8190DB4();
    }

    sub_1D8190DB4();
    sub_1D806B194(v29, v31, v6);

    return v5;
  }

  __break(1u);
  return result;
}

void sub_1D7F8C6E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_onCreateMenuBlock);
    if (v2)
    {

      v4 = v2(v3);
      sub_1D7E0E10C(v2);
      if (v4)
      {
        [*(*&v1[OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton] + OBJC_IVAR____TtC5TeaUI16CollapsingButton_button) setMenu_];

        v1 = v4;
      }
    }
  }
}

void sub_1D7F8C7D4()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_text);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_barBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_position) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_sectionSelectorStyle) = 0;
  v2 = OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_collapsingButton;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for CollapsingButton()) init];
  v3 = (v0 + OBJC_IVAR____TtC5TeaUI24SectionViewBarButtonItem_onCreateMenuBlock);
  *v3 = 0;
  v3[1] = 0;
  sub_1D81923A4();
  __break(1u);
}

void sub_1D7F8C958(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D7F8C9AC()
{
  result = qword_1EDBB20E8;
  if (!qword_1EDBB20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB20E8);
  }

  return result;
}

uint64_t sub_1D7F8CA00(uint64_t a1, uint64_t a2)
{
  sub_1D7F8C958(0, &qword_1EDBAE428, MEMORY[0x1E69DC598]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7F8CA80(uint64_t a1)
{
  sub_1D7F8C958(0, &qword_1EDBAE428, MEMORY[0x1E69DC598]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7F8CB38(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v5 = *(v3 + *a2);
  *(v3 + *a2) = a1;

  a3(v5);
}

id sub_1D7F8CB9C(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset);
  v4 = *(v2 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset);
  v5 = *(v2 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1D7F8CDDC(v4, v5);
}

id sub_1D7F8CBBC(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale];
  *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale] = a1;
  if (*&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale] != v2)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1D7F8CBF0(uint64_t result)
{
  v2 = *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOptions];
  if (!result)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v2 || ((v3 = result, result = *(result + 16), result == *(v2 + 16)) ? (v4 = *(v3 + 24) == *(v2 + 24)) : (v4 = 0), !v4 && (result = sub_1D8192634(), (result & 1) == 0)))
  {
LABEL_10:

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_1D7F8CC68(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage;
  v6 = *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage];
  if (!v6)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  v8 = v7;
  if (!v3)
  {
    if (!v7)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!v7)
  {
LABEL_10:
    v8 = v3;
LABEL_12:

LABEL_13:
    v10 = OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer;
    v11 = *&v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer];
    if (!v11)
    {
LABEL_21:
      [v2 setNeedsLayout];
      return;
    }

    v12 = *&v2[v5];
    if (v12)
    {
      v13 = *(v12 + 16);
      v14 = v11;
      v15 = [v13 CGImage];
      if (v15)
      {
        v18 = v15;
        type metadata accessor for CGImage();
        v16 = sub_1D8192614();

        goto LABEL_19;
      }
    }

    else
    {
      v14 = v11;
    }

    v16 = 0;
LABEL_19:
    [v14 setContents_];

    swift_unknownObjectRelease();
    v17 = *&v2[v10];
    if (v17)
    {
      [v17 setContentsGravity_];
    }

    goto LABEL_21;
  }

  sub_1D7E471D0();
  v9 = sub_1D8191CC4();

  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }
}

id sub_1D7F8CDDC(double a1, double a2)
{
  if (*&v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset] != a1 || *&v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset + 8] != a2)
  {
    return [v2 setNeedsLayout];
  }

  return result;
}

char *sub_1D7F8CE0C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOptions] = 0;
  *&v0[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage] = 0;
  v2 = &v0[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale] = 0x3FF0000000000000;
  v3 = OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer;
  *&v0[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer] = 0;
  v4 = [objc_allocWithZone(TUNonAnimatingLayer) init];
  v5 = *&v0[v3];
  *&v0[v3] = v4;

  v8.receiver = v0;
  v8.super_class = ObjectType;
  result = objc_msgSendSuper2(&v8, sel_init);
  if (*&result[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer])
  {
    v7 = result;
    [result addSublayer_];
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1D7F8CF0C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOptions] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage] = 0;
  v5 = &v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1D8192614();
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v16, sel_initWithLayer_, v6);
  swift_unknownObjectRelease();
  sub_1D7E1C664(a1, &v15);
  v8 = v7;
  if (swift_dynamicCast())
  {
    v9 = *&v14[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer];
    v10 = *&v8[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer];
    *&v8[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer] = v9;
    v11 = v9;

    *&v8[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOptions] = *&v14[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOptions];

    v12 = *&v14[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage];

    *&v8[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage] = v12;
  }

  else
  {
  }

  return v8;
}

void sub_1D7F8D0D8()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOptions) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage) = 0;
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer) = 0;
  sub_1D81923A4();
  __break(1u);
}

uint64_t sub_1D7F8D190(uint64_t a1, uint64_t a2)
{
  sub_1D7F50A00();
  v5 = sub_1D7F28578(a1, a2, v4);

  if (v5)
  {
    return 1;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_1D8190EE4();
  v10.receiver = ObjCClassFromMetadata;
  v10.super_class = &OBJC_METACLASS____TtC5TeaUI15ShineImageLayer;
  v6 = objc_msgSendSuper2(&v10, sel_needsDisplayForKey_, v8);

  return v6;
}

void sub_1D7F8D2B0()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_layoutSublayers);
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImageLayer];
  if (v2)
  {
    v3 = v2;
    memcpy(&__dst, MEMORY[0x1E69792E8], sizeof(__dst));
    [v3 setTransform_];
    v4 = *&v0[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOptions];
    if (v4 && (v5 = *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineImage]) != 0)
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 32);

      v19.origin.x = 0.0;
      v19.origin.y = 0.0;
      v19.size.width = v6;
      v19.size.height = v7;
      v20 = CGRectIntegral(v19);
      [v3 setBounds_];
      [v1 bounds];
      x = v21.origin.x;
      y = v21.origin.y;
      width = v21.size.width;
      height = v21.size.height;
      MidX = CGRectGetMidX(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      [v3 setPosition_];
      CATransform3DMakeScale(&__src, *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale], *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineScale], 1.0);
      CATransform3DMakeRotation(&b, *(v4 + 48), 0.0, 0.0, 1.0);
      memcpy(&a, &__src, sizeof(a));
      CATransform3DConcat(&__dst, &a, &b);
      CATransform3DMakeTranslation(&b, *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset], *&v1[OBJC_IVAR____TtC5TeaUI15ShineImageLayer_shineOffset + 8], 0.0);
      memcpy(&a, &__dst, sizeof(a));
      CATransform3DConcat(&v13, &a, &b);
      [v3 setTransform_];
      [v3 frame];
      v24 = CGRectIntegral(v23);
      [v3 setFrame_];
    }

    else
    {
    }
  }
}

uint64_t SharingActivity.__allocating_init<A>(command:context:type:title:image:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_6_28();
  v12 = swift_allocObject();
  SharingActivity.init<A>(command:context:type:title:image:category:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *SharingActivity.init<A>(command:context:type:title:image:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*a1 + 88);
  v29 = a1;
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v6[2] = v18;
  v6[3] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v6[4] = sub_1D7F8F090;
  v6[5] = v20;
  v21 = swift_allocObject();
  v22 = *(a6 + 16);
  *(v21 + 16) = *a6;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a6 + 32);
  v6[6] = sub_1D7F8F098;
  v6[7] = v21;
  (*(v14 + 16))(v17, a2, v11);
  v23 = swift_allocObject();
  *(v23 + 16) = v11;
  *(v23 + 24) = a1;
  v24 = *(v14 + 32);
  OUTLINED_FUNCTION_4_34();
  v24();
  v6[8] = sub_1D7F8D9B8;
  v6[9] = v23;
  (v24)(v17, a2, v11);
  v25 = swift_allocObject();
  v26 = v29;
  *(v25 + 16) = v11;
  *(v25 + 24) = v26;
  OUTLINED_FUNCTION_4_34();
  v24();
  v6[10] = sub_1D7F8DC20;
  v6[11] = v25;

  return v6;
}

uint64_t sub_1D7F8D854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a3 + 88);
  v8 = sub_1D8191E84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  ObjectType = swift_getObjectType();
  (*(*(v7 - 8) + 16))(v11, a4, v7);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
  LOBYTE(a2) = CommandCenterType.canExecute<A>(command:context:)(a3, v11, ObjectType, a2);
  (*(v9 + 8))(v11, v8);
  return a2 & 1;
}

uint64_t sub_1D7F8D9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*a4 + 88);
  v10 = sub_1D8191E84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  ObjectType = swift_getObjectType();
  (*(*(v9 - 8) + 16))(v13, a5, v9);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v9);
  (*(a2 + 8))(a4, v13, a3, v9, ObjectType, a2);
  return (*(v11 + 8))(v13, v10);
}

uint64_t objectdestroy_5Tm_0()
{
  OUTLINED_FUNCTION_2();

  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);
  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

uint64_t SharingActivity.__allocating_init(command:type:title:image:category:)()
{
  OUTLINED_FUNCTION_0_72();
  OUTLINED_FUNCTION_6_28();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_3_8();
  SharingActivity.init(command:type:title:image:category:)(v1, v2, v3, v4, v5, v6);
  return v0;
}

void *SharingActivity.init(command:type:title:image:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a2;
  v6[3] = a6;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v6[4] = sub_1D7F8DD7C;
  v6[5] = v11;
  v12 = swift_allocObject();
  v13 = *(a5 + 16);
  *(v12 + 16) = *a5;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a5 + 32);
  v6[6] = sub_1D7F8DDAC;
  v6[7] = v12;
  v6[8] = sub_1D7F8DDE4;
  v6[9] = a1;
  v6[10] = sub_1D7F8DE74;
  v6[11] = a1;

  return v6;
}

uint64_t sub_1D7F8DD7C()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

uint64_t sub_1D7F8DDAC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 48);
  return sub_1D7F8F034(v1 + 16, v4);
}

uint64_t SharingActivity.__allocating_init<A, B>(command:context:type:title:image:category:)()
{
  OUTLINED_FUNCTION_0_72();
  OUTLINED_FUNCTION_6_28();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_3_8();
  SharingActivity.init<A, B>(command:context:type:title:image:category:)(v1, v2, v3, v4, v5);
  return v0;
}

void *SharingActivity.init<A, B>(command:context:type:title:image:category:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v51 = a5;
  v54 = a2;
  v7 = *a1;
  v8 = *(*a1 + 136);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v45 - v15;
  v18 = *(v17 + 24);
  v49 = *(v17 + 16);
  v47 = v17;
  v48 = v18;
  v5[2] = v19;
  v5[3] = v20;
  v56 = *(v10 + 16);
  v56(v16, v14);
  v21 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v57 = *(v10 + 80);
  v50 = v21 + v12;
  v22 = (v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v23[2] = v8;
  v55 = a1;
  v24 = *(v7 + 144);
  v25 = v7;
  v23[3] = v24;
  v26 = v24;
  v46 = v24;
  v52 = *(v25 + 152);
  v23[4] = v52;
  v23[5] = a1;
  v27 = *(v10 + 32);
  v45[0] = v10 + 32;
  v45[1] = v21;
  OUTLINED_FUNCTION_4_34();
  v27();
  v28 = v27;
  v53 = v27;
  v29 = v23 + v22;
  *v29 = *v47;
  v30 = v48;
  *(v29 + 2) = v49;
  *(v29 + 3) = v30;
  v5[4] = sub_1D7F8E4A0;
  v5[5] = v23;
  v31 = v54;
  (v56)(v16, v54, v8);
  v32 = swift_allocObject();
  v32[2] = v8;
  v32[3] = v26;
  v33 = v52;
  v34 = v55;
  v32[4] = v52;
  v32[5] = v34;
  OUTLINED_FUNCTION_4_34();
  v28();
  v35 = v32 + v22;
  v36 = v51;
  v37 = v51[1];
  *v35 = *v51;
  *(v35 + 1) = v37;
  *(v35 + 2) = v36[2];
  *(v35 + 6) = *(v36 + 6);
  v5[6] = sub_1D7F8E794;
  v5[7] = v32;
  (v56)(v16, v31, v8);
  v38 = swift_allocObject();
  v39 = v46;
  v38[2] = v8;
  v38[3] = v39;
  v40 = v55;
  v38[4] = v33;
  v38[5] = v40;
  OUTLINED_FUNCTION_4_34();
  v41 = v53;
  v53();
  v5[8] = sub_1D7F8E964;
  v5[9] = v38;
  (v41)(v16, v54, v8);
  v42 = swift_allocObject();
  v42[2] = v8;
  v42[3] = v39;
  v42[4] = v52;
  v42[5] = v40;
  OUTLINED_FUNCTION_4_34();
  v43();
  v5[10] = sub_1D7F8EBD4;
  v5[11] = v42;
  swift_retain_n();
  return v5;
}

uint64_t sub_1D7F8E220(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v25 = a5;
  v26 = a6;
  v21 = a4;
  v22 = a2;
  v9 = *a3;
  v10 = *(*a3 + 136);
  v23 = sub_1D8191E84();
  v11 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v13 = &v21 - v12;
  v14 = *(v9 + 144);
  v24 = sub_1D8191E84();
  v15 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v17 = &v21 - v16;
  ObjectType = swift_getObjectType();
  (*(*(v10 - 8) + 16))(v13, v21, v10);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v10);
  (*(v22 + 80))(a3, v13, v10, v14, *(v9 + 152), ObjectType);
  (*(v11 + 8))(v13, v23);
  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v19 = type metadata accessor for StateCommandValue();
  StateCommandValue.value(for:)(v17, v19, &v33);
  (*(v15 + 8))(v17, v24);
  return v33;
}

uint64_t sub_1D7F8E4A0(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(*(v2 + 16) - 8) + 80) + 48) & ~*(*(*(v2 + 16) - 8) + 80);
  v4 = (v2 + ((*(*(*(v2 + 16) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D7F8E220(a1, a2, *(v2 + 40), v2 + v3, *v4, v4[1], v4[2], v4[3]);
}

uint64_t sub_1D7F8E514@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, __int128 *a4@<X4>, uint64_t a5@<X8>)
{
  v20 = a3;
  v21 = a1;
  v25 = a5;
  v7 = *a2;
  v8 = *(*a2 + 136);
  v22 = sub_1D8191E84();
  v9 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v20 - v10;
  v12 = *(v7 + 144);
  v13 = sub_1D8191E84();
  v23 = *(v13 - 8);
  v24 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  ObjectType = swift_getObjectType();
  (*(*(v8 - 8) + 16))(v11, v20, v8);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v8);
  (*(v21 + 80))(a2, v11, v8, v12, *(v7 + 152), ObjectType);
  (*(v9 + 8))(v11, v22);
  v17 = a4[1];
  v26 = *a4;
  v27 = v17;
  v28 = a4[2];
  v29 = *(a4 + 6);
  v18 = type metadata accessor for StateCommandValue();
  StateCommandValue.value(for:)(v15, v18, v25);
  return (*(v23 + 8))(v15, v24);
}

uint64_t sub_1D7F8E800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a3 + 136);
  v8 = sub_1D8191E84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  ObjectType = swift_getObjectType();
  (*(*(v7 - 8) + 16))(v11, a4, v7);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
  LOBYTE(a2) = CommandCenterType.canExecute<A>(command:context:)(a3, v11, ObjectType, a2);
  (*(v9 + 8))(v11, v8);
  return a2 & 1;
}

uint64_t sub_1D7F8E9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*a4 + 136);
  v10 = sub_1D8191E84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  ObjectType = swift_getObjectType();
  (*(*(v9 - 8) + 16))(v13, a5, v9);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v9);
  (*(a2 + 8))(a4, v13, a3, v9, ObjectType, a2);
  return (*(v11 + 8))(v13, v10);
}

uint64_t objectdestroy_23Tm()
{
  OUTLINED_FUNCTION_2();

  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);
  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

id SharingActivity.build(commandCenter:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(v3 + 64))() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 24);
  if (v7 == 1)
  {
    v15 = *(v3 + 32);
    v16 = *(v3 + 16);
    v15(a1, a2);
    v17 = OUTLINED_FUNCTION_5_27();
    v18(v17);
    v19 = swift_allocObject();
    v19[2] = v3;
    v19[3] = a1;
    v19[4] = a2;
    v19[5] = a3;
    sub_1D7F8EECC(0, &unk_1ECA0E5B8);
    objc_allocWithZone(v20);

    swift_unknownObjectRetain();

    return sub_1D7F8EF1C();
  }

  if (v7)
  {
    return 0;
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 16);
  v8(a1, a2);
  v10 = OUTLINED_FUNCTION_5_27();
  v11(v10);
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  sub_1D7F8EECC(0, qword_1EDBB0C98);
  objc_allocWithZone(v13);

  swift_unknownObjectRetain();

  return sub_1D7F8EF1C();
}

uint64_t SharingActivity.deinit()
{

  return v0;
}

uint64_t SharingActivity.__deallocating_deinit()
{
  SharingActivity.deinit();
  OUTLINED_FUNCTION_6_28();

  return swift_deallocClassInstance();
}

uint64_t objectdestroy_29Tm_0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1D7F8EECC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for SharingActivityItem();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id sub_1D7F8EF1C()
{
  OUTLINED_FUNCTION_0_72();
  ObjectType = swift_getObjectType();
  *&v1[qword_1EDBB0D30] = v6;
  v8 = &v1[qword_1EDBB0D20];
  *v8 = v5;
  *(v8 + 1) = v4;
  v9 = &v1[qword_1EDBB0D28];
  *(v9 + 4) = *(v3 + 32);
  v10 = *(v3 + 16);
  *v9 = *v3;
  *(v9 + 1) = v10;
  v11 = &v1[qword_1EDBB0D38];
  *v11 = v2;
  *(v11 + 1) = v0;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

BOOL sub_1D7F8F0B0()
{
  OUTLINED_FUNCTION_93_0();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;
    sub_1D8190DB4();
    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

BOOL sub_1D7F8F158()
{
  OUTLINED_FUNCTION_93_0();
  v3 = (v2 + 64);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v6 = *(v3 - 1);
    v5 = *v3;
    v7 = *(v3 - 16);
    v14 = *(v3 - 2);
    v15 = v7;
    v16 = v6;
    v17 = v5;
    v8 = v14;
    v9 = OUTLINED_FUNCTION_110();
    sub_1D7E38808(v9);
    v10 = v1(&v14);

    v11 = OUTLINED_FUNCTION_55_0();
    sub_1D7E418F4(v11, v12);
    if (v0)
    {
      break;
    }

    v3 += 5;
  }

  while ((v10 & 1) == 0);
  return v4 != 0;
}

BOOL sub_1D7F8F278(uint64_t (*a1)(_BYTE *), uint64_t a2)
{
  v28 = a2;
  OUTLINED_FUNCTION_37_6();
  sub_1D7F9E2C0(0, v6, v7, v8);
  v10 = v9;
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21_11();
  sub_1D7F9E010();
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v18 = v17 - v16;
  (*(v12 + 16))(v4, v2, v10);
  sub_1D7F9E0B4(&qword_1EDBB1FC0);
  sub_1D8191134();
  v19 = *(v15 + 44);
  sub_1D7F9E0B4(&qword_1EDBB1FB8);
  do
  {
    sub_1D81917B4();
    v20 = *(v18 + v19);
    v21 = v26[0];
    if (v20 == v26[0])
    {
      break;
    }

    v22 = sub_1D81918F4();
    sub_1D7F9E10C(v23, v27);
    v22(v26, 0);
    sub_1D81917C4();
    v24 = a1(v27);
    sub_1D7F9E168(v27);
    if (v3)
    {
      break;
    }
  }

  while ((v24 & 1) == 0);
  sub_1D7F9E310(v18, sub_1D7F9E010);
  return v20 != v21;
}

void sub_1D7F8F4EC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1D7E36AB8(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA714420](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_1D7F8F5E0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t BlueprintTableViewDelegate.delegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0();
  return swift_unknownObjectWeakLoadStrong();
}

void BlueprintTableViewDelegate.delegate.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_0();
  swift_unknownObjectWeakAssign();
}

uint64_t BlueprintTableViewDelegate.delegate.modify()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_62_0(v1);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_61_0(v2);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_20_10();
}

void *BlueprintTableViewDelegate.multiDelegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v1 + 192);
  OUTLINED_FUNCTION_1_0();
  v3 = *(v0 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1D7F8F850@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t BlueprintTableViewDelegate.keyCommandManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0();
  return swift_weakLoadStrong();
}

uint64_t BlueprintTableViewDelegate.keyCommandManager.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_0();
  swift_weakAssign();
}

uint64_t BlueprintTableViewDelegate.keyCommandManager.modify()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_62_0(v1);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_61_0(v2);
  *(v0 + 24) = swift_weakLoadStrong();
  return OUTLINED_FUNCTION_20_10();
}

void sub_1D7F8FA70()
{
  OUTLINED_FUNCTION_17_10();
  swift_weakAssign();
  if (v1)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v0);
}

uint64_t sub_1D7F8FAE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + *((*MEMORY[0x1E69E7D40] & **a1) + 0xD0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7F8FB5C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + *((*MEMORY[0x1E69E7D40] & **a2) + 0xD0);
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t BlueprintTableViewDelegate.selectionProvider.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t BlueprintTableViewDelegate.selectionProvider.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_7();
  v5 = v2 + *(v4 + 208);
  OUTLINED_FUNCTION_56();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t BlueprintTableViewDelegate.selectionProvider.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0);
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 1);
  v3[3] = Strong;
  v3[4] = v7;
  return OUTLINED_FUNCTION_20_10();
}

uint64_t sub_1D7F8FD60@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t BlueprintTableViewDelegate.parentViewController.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0();
  return swift_unknownObjectWeakLoadStrong();
}

void BlueprintTableViewDelegate.parentViewController.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_0();
  swift_unknownObjectWeakAssign();
}

uint64_t BlueprintTableViewDelegate.parentViewController.modify()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_62_0(v1);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_61_0(v2);
  *(v0 + 24) = swift_unknownObjectWeakLoadStrong();
  return OUTLINED_FUNCTION_20_10();
}

uint64_t BlueprintTableViewDelegate.gutterViewManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0();
}

uint64_t BlueprintTableViewDelegate.gutterViewManager.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 224);
  OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = v0;
}

uint64_t BlueprintTableViewDelegate.gutterViewManager.modify()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t BlueprintTableViewDelegate.infiniteScrollManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1D7F900DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *((*MEMORY[0x1E69E7D40] & **a1) + 0xE8);
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t BlueprintTableViewDelegate.infiniteScrollManager.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 232);
  OUTLINED_FUNCTION_56();
  *(v1 + v3) = v0;

  sub_1D7F901FC();
}

uint64_t sub_1D7F901FC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8);
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    *(v3 + 24) = &protocol witness table for BlueprintTableViewDelegate<A, B, C, D>;
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t BlueprintTableViewDelegate.infiniteScrollManager.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t BlueprintTableViewDelegate.sectionCollapsibleStateManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1_0();
}

uint64_t BlueprintTableViewDelegate.sectionCollapsibleStateManager.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 240);
  OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = v0;
}

uint64_t BlueprintTableViewDelegate.sectionCollapsibleStateManager.modify()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

void *BlueprintTableViewDelegate.viewportMonitor.getter()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v1 + 248);
  OUTLINED_FUNCTION_1_0();
  v3 = *(v0 + v2);
  v4 = v3;
  return v3;
}

id sub_1D7F90458@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *((*MEMORY[0x1E69E7D40] & **a1) + 0xF8);
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void BlueprintTableViewDelegate.viewportMonitor.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 248);
  OUTLINED_FUNCTION_5_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = v0;
  v5 = v0;

  sub_1D7F90578();
}

id sub_1D7F90578()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  result = swift_beginAccess();
  v4 = *(v0 + v2);
  if (v4)
  {
    v5 = *((*v1 & *v0) + 0xC0);
    swift_beginAccess();
    result = *(v0 + v5);
    if (result)
    {
      return [result addDelegate_];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t BlueprintTableViewDelegate.viewportMonitor.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t sub_1D7F906B0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t BlueprintTableViewDelegate.dragReorderDelegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4();
  return swift_unknownObjectRetain();
}

uint64_t BlueprintTableViewDelegate.dragReorderDelegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_7();
  v6 = (v2 + *(v5 + 256));
  OUTLINED_FUNCTION_56();
  *v6 = a1;
  v6[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t BlueprintTableViewDelegate.dragReorderDelegate.modify()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

double BlueprintTableViewDelegate.scrollTriggerDelta.getter()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v1 + 264);
  OUTLINED_FUNCTION_1_0();
  return *(v0 + v2);
}

uint64_t BlueprintTableViewDelegate.scrollTriggerDelta.setter(double a1)
{
  OUTLINED_FUNCTION_3_7();
  v4 = *(v3 + 264);
  result = OUTLINED_FUNCTION_56();
  *(v1 + v4) = a1;
  return result;
}

uint64_t BlueprintTableViewDelegate.scrollTriggerDelta.modify()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

char *BlueprintTableViewDelegate.init(blueprintProvider:blueprintLayoutProvider:blueprintViewHeaderProvider:blueprintImpressionManager:commandCenter:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v13 = *v8;
  v14 = MEMORY[0x1E69E7D40];
  v15 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_123(*((*MEMORY[0x1E69E7D40] & *v8) + 0xB8));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v16 + 192)) = 0;
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_123(*(v17 + 200));
  swift_weakInit();
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v18 + 208) + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_123(*(v19 + 216));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v20 + 224)) = 0;
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v21 + 232)) = 0;
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v22 + 240)) = 0;
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v23 + 248)) = 0;
  OUTLINED_FUNCTION_2_53();
  v25 = (v8 + *(v24 + 256));
  *v25 = 0;
  v25[1] = 0;
  OUTLINED_FUNCTION_2_53();
  v27 = v8 + *(v26 + 272);
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = v8 + *((*v14 & *v8) + 0x118);
  *v28 = 0;
  *(v28 + 1) = 0;
  v28[16] = 1;
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_123(*(v29 + 304));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v30 + 312)) = 0;
  OUTLINED_FUNCTION_2_53();
  v32 = (v8 + *(v31 + 320));
  v33 = *((v15 & v13) + 0x50);
  swift_getAssociatedTypeWitness();
  *v32 = sub_1D8192914();
  v32[1] = v34;
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_48_0();
  v36 = v35;
  v68 = a1;
  v63 = v33;
  (*(v35 + 16))(v8 + v37, a1, v33);
  OUTLINED_FUNCTION_2_53();
  v38 = *((v15 & v13) + 0x58);
  OUTLINED_FUNCTION_48_0();
  v40 = v39;
  v67 = a2;
  (*(v39 + 16))(v8 + v41, a2, v38);
  OUTLINED_FUNCTION_2_53();
  v42 = *((v15 & v13) + 0x60);
  OUTLINED_FUNCTION_48_0();
  v44 = v43;
  v66 = a3;
  OUTLINED_FUNCTION_104_0();
  v45();
  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v46 + 168)) = a4;
  OUTLINED_FUNCTION_2_53();
  v48 = (v8 + *(v47 + 176));
  *v48 = a5;
  v48[1] = a6;
  OUTLINED_FUNCTION_2_53();
  sub_1D7E25380(v50, v8 + *(v49 + 296));
  OUTLINED_FUNCTION_2_53();
  v52 = v8 + *(v51 + 288);
  *v52 = 0u;
  *(v52 + 1) = 0u;
  *(v52 + 4) = 0;
  sub_1D818EAF4();

  swift_unknownObjectRetain();
  sub_1D818EAE4();
  if (qword_1EDBBC5D0 != -1)
  {
    OUTLINED_FUNCTION_46_6();
  }

  sub_1D818EAD4();

  OUTLINED_FUNCTION_2_53();
  *(v8 + *(v53 + 264)) = v54;
  v71.receiver = v8;
  v71.super_class = ObjectType;
  v55 = objc_msgSendSuper2(&v71, sel_init);
  v56 = objc_allocWithZone(MEMORY[0x1E69D6CE8]);
  v57 = v55;
  v58 = [v56 initWithDelegate:v57 delegateProtocol:&unk_1F535EED0];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  (*(v44 + 8))(v66, v42);
  (*(v40 + 8))(v67, v38);
  (*(v36 + 8))(v68, v63);
  OUTLINED_FUNCTION_19_11();
  v60 = *(v59 + 192);
  OUTLINED_FUNCTION_56();
  v61 = *&v57[v60];
  *&v57[v60] = v58;

  return v57;
}

void BlueprintTableViewDelegate.__allocating_init(blueprintProvider:blueprintLayoutProvider:blueprintViewHeaderProvider:blueprintImpressionManager:commandCenter:tracker:keyboardInputMonitor:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  objc_allocWithZone(v0);
  BlueprintTableViewDelegate.init(blueprintProvider:blueprintLayoutProvider:blueprintViewHeaderProvider:blueprintImpressionManager:commandCenter:tracker:keyboardInputMonitor:)(v16, v14, v12, v10, v8, v6, v4, v2);
  OUTLINED_FUNCTION_100();
}

char *BlueprintTableViewDelegate.init(blueprintProvider:blueprintLayoutProvider:blueprintViewHeaderProvider:blueprintImpressionManager:commandCenter:tracker:keyboardInputMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v13 = *v9;
  v14 = MEMORY[0x1E69E7D40];
  v15 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_132_0(*((*MEMORY[0x1E69E7D40] & *v9) + 0xB8));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v16 + 192)) = 0;
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_132_0(*(v17 + 200));
  swift_weakInit();
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v18 + 208) + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_132_0(*(v19 + 216));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v20 + 224)) = 0;
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v21 + 232)) = 0;
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v22 + 240)) = 0;
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v23 + 248)) = 0;
  OUTLINED_FUNCTION_3_51();
  v25 = (v9 + *(v24 + 256));
  *v25 = 0;
  v25[1] = 0;
  OUTLINED_FUNCTION_3_51();
  v27 = v9 + *(v26 + 272);
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = v9 + *((*v14 & *v9) + 0x118);
  *v28 = 0;
  *(v28 + 1) = 0;
  v28[16] = 1;
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_132_0(*(v29 + 304));
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v30 + 312)) = 0;
  OUTLINED_FUNCTION_3_51();
  v32 = (v9 + *(v31 + 320));
  v33 = *((v15 & v13) + 0x50);
  swift_getAssociatedTypeWitness();
  *v32 = sub_1D8192914();
  v32[1] = v34;
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_48_0();
  v36 = v35;
  v65 = a1;
  (*(v35 + 16))(v9 + v37, a1, v33);
  OUTLINED_FUNCTION_3_51();
  v38 = *((v15 & v13) + 0x58);
  OUTLINED_FUNCTION_48_0();
  v40 = v39;
  v64 = a2;
  (*(v39 + 16))(v9 + v41, a2, v38);
  OUTLINED_FUNCTION_3_51();
  v42 = *((v15 & v13) + 0x60);
  OUTLINED_FUNCTION_48_0();
  v44 = v43;
  v63 = a3;
  (*(v43 + 16))(v9 + v45, a3, v42);
  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v46 + 168)) = a4;
  OUTLINED_FUNCTION_3_51();
  v48 = (v9 + *(v47 + 176));
  *v48 = a5;
  v48[1] = a6;
  OUTLINED_FUNCTION_3_51();
  sub_1D7E25380(a7, v9 + *(v49 + 296));
  OUTLINED_FUNCTION_3_51();
  sub_1D7E25380(a8, v9 + *(v50 + 288));
  sub_1D818EAF4();

  swift_unknownObjectRetain();
  sub_1D818EAE4();
  if (qword_1EDBBC5D0 != -1)
  {
    OUTLINED_FUNCTION_46_6();
  }

  sub_1D818EAD4();

  OUTLINED_FUNCTION_3_51();
  *(v9 + *(v51 + 264)) = v52;
  v70.receiver = v9;
  v70.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v70, sel_init);
  v54 = objc_allocWithZone(MEMORY[0x1E69D6CE8]);
  v55 = v53;
  v56 = [v54 initWithDelegate:v55 delegateProtocol:&unk_1F535EED0];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a8);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  (*(v44 + 8))(v63, v42);
  (*(v40 + 8))(v64, v38);
  (*(v36 + 8))(v65, v33);
  OUTLINED_FUNCTION_22_2();
  v58 = *(v57 + 192);
  OUTLINED_FUNCTION_56();
  v59 = *&v55[v58];
  *&v55[v58] = v56;

  return v55;
}

Swift::Void __swiftcall BlueprintTableViewDelegate.register(in:)(UITableView *in)
{
  v2 = v1;
  OUTLINED_FUNCTION_22_2();
  v5 = v4;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_22_2();
  v7 = *(v6 + 192);
  OUTLINED_FUNCTION_8_4();
  v8 = *(v2 + v7);
  if (v8)
  {
    -[UITableView setDelegate:](in, sel_setDelegate_, [v8 delegate]);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_22_2();
    v22[0] = in;
    v9 = v5[16];
    v10 = v5[12];
    (*(v9 + 80))(v22, v10, v9);
    OUTLINED_FUNCTION_22_2();
    v11 = v5[14];
    v12 = v5[10];
    v13 = OUTLINED_FUNCTION_110();
    v14(v13);
    OUTLINED_FUNCTION_0_8();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_0_8();
    v16 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v17 = swift_allocObject();
    v17[2] = v12;
    v17[3] = v5[11];
    v17[4] = v10;
    v17[5] = v5[13];
    v17[6] = v11;
    v17[7] = v5[15];
    v17[8] = v9;
    v17[9] = v5[17];
    v17[10] = v15;
    v17[11] = v16;
    OUTLINED_FUNCTION_16();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_16();
    v19 = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_111();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_111();
    v21 = swift_getAssociatedConformanceWitness();
    v22[0] = AssociatedTypeWitness;
    v22[1] = v19;
    v22[2] = AssociatedConformanceWitness;
    v23 = v21;
    type metadata accessor for Blueprint();
    sub_1D818F164();

    __swift_project_boxed_opaque_existential_1(v22, v23);
    OUTLINED_FUNCTION_161();
    sub_1D818ED84();
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7F917B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x118);
    *v2 = 0;
    *(v2 + 1) = 0;
    v2[16] = 1;
    v3 = swift_unknownObjectUnownedLoadStrong();
    sub_1D7F91884(v3, 0);
  }
}

void sub_1D7F91884(void *a1, unsigned int a2)
{
  v3 = v2;
  v70 = a1;
  v5 = (*MEMORY[0x1E69E7D40] & *v2);
  v6 = v5[14];
  v7 = v5[10];
  v71[0] = swift_getAssociatedTypeWitness();
  v71[1] = swift_getAssociatedTypeWitness();
  v71[2] = swift_getAssociatedConformanceWitness();
  v71[3] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for Blueprint();
  v69 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v67 - v9;
  v68 = a2;
  if (sub_1D7EB48B4(a2) == 0xD00000000000001ALL && 0x80000001D81C5D30 == v11)
  {
  }

  else
  {
    v13 = sub_1D8192634();

    if ((v13 & 1) == 0)
    {
      v14 = [v70 window];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 windowScene];

        if (v16)
        {
          v17 = [v16 activationState];

          if (v17 == 2)
          {
            sub_1D7F94B74(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v18 = swift_allocObject();
            *(v18 + 16) = xmmword_1D819FAB0;
            v19 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x140));
            v21 = *v19;
            v20 = v19[1];
            *(v18 + 56) = MEMORY[0x1E69E6158];
            *(v18 + 64) = sub_1D7E13BF4();
            *(v18 + 32) = v21;
            *(v18 + 40) = v20;
            sub_1D7E0A1A8(0, &qword_1EDBBE110);
            sub_1D8190DB4();
            v22 = sub_1D8191E44();
            sub_1D81919E4();
LABEL_29:
            sub_1D818FD44();
            goto LABEL_30;
          }
        }
      }
    }
  }

  v23 = MEMORY[0x1E69E7D40];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_1D8043398(Strong);
    v27 = v26;

    if (v27)
    {
      if (*(v27 + OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing) == 1)
      {
        sub_1D7F94B74(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1D819FAB0;
        v29 = (v3 + *((*v23 & *v3) + 0x140));
        v31 = *v29;
        v30 = v29[1];
        *(v28 + 56) = MEMORY[0x1E69E6158];
        *(v28 + 64) = sub_1D7E13BF4();
        *(v28 + 32) = v31;
        *(v28 + 40) = v30;
        sub_1D7E0A1A8(0, &qword_1EDBBE110);
        sub_1D8190DB4();
        v22 = sub_1D8191E44();
        sub_1D81919E4();
        sub_1D818FD44();

LABEL_30:

        return;
      }
    }
  }

  v32 = *v23 & *v3;
  v33 = *(v3 + *(v32 + 0x138));
  if (v33 >= 3)
  {
    sub_1D7F94B74(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1D819FAC0;
    v57 = (v3 + *(v32 + 320));
    v59 = *v57;
    v58 = v57[1];
    v60 = MEMORY[0x1E69E6158];
    *(v56 + 56) = MEMORY[0x1E69E6158];
    v61 = sub_1D7E13BF4();
    *(v56 + 32) = v59;
    *(v56 + 40) = v58;
    v62 = 0xEC000000676E6972;
    if (v33 == 4)
    {
      v62 = 0xEB00000000646572;
    }

    *(v56 + 96) = v60;
    *(v56 + 104) = v61;
    *(v56 + 64) = v61;
    *(v56 + 72) = 0x6165707061736964;
    *(v56 + 80) = v62;
    sub_1D7E0A1A8(0, &qword_1EDBBE110);
    sub_1D8190DB4();
    v22 = sub_1D8191E44();
    sub_1D81919E4();
    goto LABEL_29;
  }

  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (!v34)
  {
    sub_1D81919C4();
    sub_1D7F94B74(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1D819FAB0;
    v64 = (v3 + *((*v23 & *v3) + 0x140));
    v66 = *v64;
    v65 = v64[1];
    *(v63 + 56) = MEMORY[0x1E69E6158];
    *(v63 + 64) = sub_1D7E13BF4();
    *(v63 + 32) = v66;
    *(v63 + 40) = v65;
    sub_1D7E0A1A8(0, &qword_1EDBBE110);
    sub_1D8190DB4();
    v22 = sub_1D8191E44();
    sub_1D818FD44();
    goto LABEL_30;
  }

  v35 = v34;
  BlueprintProviderType.blueprint.getter(v7, v6);
  v36 = *((*v23 & *v3) + 0xE8);
  swift_beginAccess();
  if (*(v3 + v36))
  {

    v37 = v70;
    [v70 contentOffset];
    v39 = v38;
    v41 = v40;
    [v37 bounds];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    [v37 contentSize];
    v50 = [v37 window];
    if (v50)
    {

      LODWORD(v50) = [v37 ts_isScrolling] ^ 1;
    }

    v51 = sub_1D7E67664(v50, v68, v39, v41, v43, v45, v47, v49);

    if (v51)
    {
      v70 = v8;
      v52 = *(v51 + 16);
      if (v52)
      {
        v53 = v5[17];
        v54 = *(v53 + 160);
        v55 = v51 + 32;
        do
        {
          sub_1D7E25380(v55, v71);
          v54(v10, v71, v5[13], v53);
          __swift_destroy_boxed_opaque_existential_1Tm(v71);
          v55 += 40;
          --v52;
        }

        while (v52);
      }

      (*(v69 + 8))(v10, v70);
    }

    else
    {
      (*(v69 + 8))(v10, v8);
    }
  }

  else
  {

    (*(v69 + 8))(v10, v8);
  }
}

Swift::Void __swiftcall BlueprintTableViewDelegate.viewWillAppear()()
{
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x138)) = 1;
  OUTLINED_FUNCTION_3_7();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1D7F91884(Strong, 4u);
  }
}

Swift::Void __swiftcall BlueprintTableViewDelegate.windowWillBecomeForeground()()
{
  OUTLINED_FUNCTION_3_7();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D7F91884(Strong, 5u);
  }
}

void __swiftcall BlueprintTableViewDelegate.tableView(_:viewForHeaderInSection:)(UIView_optional *__return_ptr retstr, UITableView *_, Swift::Int viewForHeaderInSection)
{
  OUTLINED_FUNCTION_120();
  v36 = v4;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_82();
  v35 = *(v7 + 120);
  OUTLINED_FUNCTION_82();
  v34 = *(v8 + 88);
  OUTLINED_FUNCTION_12_18();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_18();
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_75_2();
  v32 = swift_getAssociatedConformanceWitness();
  v37 = AssociatedTypeWitness;
  v38 = v10;
  v39 = AssociatedConformanceWitness;
  v40 = v32;
  OUTLINED_FUNCTION_81_2();
  type metadata accessor for BlueprintLayoutSection();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_79_1(v12);
  v14 = *(v13 + 112);
  v15 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_35_7();
  v16 = OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_35_7();
  v17 = OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_127_0();
  v18 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_127_0();
  v19 = swift_getAssociatedConformanceWitness();
  v37 = v16;
  v38 = v17;
  v39 = v18;
  v40 = v19;
  OUTLINED_FUNCTION_81_2();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v21 = v20;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_21_11();
  v37 = v16;
  v38 = v17;
  v39 = v18;
  v40 = v19;
  OUTLINED_FUNCTION_81_2();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_115_0();
  BlueprintProviderType.blueprint.getter(v15, v14);
  OUTLINED_FUNCTION_95_0();
  (*(v21 + 8))(AssociatedTypeWitness, v14);
  OUTLINED_FUNCTION_44_5();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v34, v35);
  v24 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_96_0(v24);
  OUTLINED_FUNCTION_3_0();
  (*(v25 + 8))(&v37, v21 + 8);
  OUTLINED_FUNCTION_44_5();
  v37 = v36;
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_136_0();
  v26 = OUTLINED_FUNCTION_135_0();
  v27(v26);
  v28 = OUTLINED_FUNCTION_121_0();
  v29(v28);
  v30 = OUTLINED_FUNCTION_134_0();
  v31(v30);
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

id sub_1D7F9272C(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  BlueprintTableViewDelegate.tableView(_:viewForHeaderInSection:)(v8, v6, a4);
  v10 = v9;

  return v10;
}

void __swiftcall BlueprintTableViewDelegate.tableView(_:viewForFooterInSection:)(UIView_optional *__return_ptr retstr, UITableView *_, Swift::Int viewForFooterInSection)
{
  OUTLINED_FUNCTION_120();
  v36 = v4;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_82();
  v35 = *(v7 + 120);
  OUTLINED_FUNCTION_82();
  v34 = *(v8 + 88);
  OUTLINED_FUNCTION_12_18();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_18();
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_75_2();
  v32 = swift_getAssociatedConformanceWitness();
  v37 = AssociatedTypeWitness;
  v38 = v10;
  v39 = AssociatedConformanceWitness;
  v40 = v32;
  OUTLINED_FUNCTION_81_2();
  type metadata accessor for BlueprintLayoutSection();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_79_1(v12);
  v14 = *(v13 + 112);
  v15 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_35_7();
  v16 = OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_35_7();
  v17 = OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_127_0();
  v18 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_127_0();
  v19 = swift_getAssociatedConformanceWitness();
  v37 = v16;
  v38 = v17;
  v39 = v18;
  v40 = v19;
  OUTLINED_FUNCTION_81_2();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v21 = v20;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_21_11();
  v37 = v16;
  v38 = v17;
  v39 = v18;
  v40 = v19;
  OUTLINED_FUNCTION_81_2();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_115_0();
  BlueprintProviderType.blueprint.getter(v15, v14);
  OUTLINED_FUNCTION_95_0();
  (*(v21 + 8))(AssociatedTypeWitness, v14);
  OUTLINED_FUNCTION_44_5();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v34, v35);
  v24 = OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_96_0(v24);
  OUTLINED_FUNCTION_3_0();
  (*(v25 + 8))(&v37, v21 + 8);
  OUTLINED_FUNCTION_44_5();
  v37 = v36;
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_136_0();
  v26 = OUTLINED_FUNCTION_135_0();
  v27(v26);
  v28 = OUTLINED_FUNCTION_121_0();
  v29(v28);
  v30 = OUTLINED_FUNCTION_134_0();
  v31(v30);
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

id sub_1D7F92B48(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  BlueprintTableViewDelegate.tableView(_:viewForFooterInSection:)(v8, v6, a4);
  v10 = v9;

  return v10;
}

void sub_1D7F92BB4()
{
  OUTLINED_FUNCTION_98();
  v23 = v1;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4 = OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_33_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_72_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_72_0();
  v8 = swift_getAssociatedConformanceWitness();
  v27[0] = v4;
  v27[1] = AssociatedTypeWitness;
  v27[2] = AssociatedConformanceWitness;
  v27[3] = v8;
  type metadata accessor for BlueprintLayoutSection();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_28_1();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v3, v2);
  *&v24 = v4;
  *(&v24 + 1) = AssociatedTypeWitness;
  *&v25 = AssociatedConformanceWitness;
  *(&v25 + 1) = v8;
  v10 = type metadata accessor for BlueprintLayout();
  BlueprintLayout.subscript.getter(v23, v10);
  OUTLINED_FUNCTION_3_0();
  (*(v11 + 8))(v27, v10);
  v12 = OUTLINED_FUNCTION_129_1();
  v14 = v13(v12);
  OUTLINED_FUNCTION_91(v14, qword_1EDBAEBB0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_128_1();
    v15 = OUTLINED_FUNCTION_11_0();
    v16(v15);
    v17 = OUTLINED_FUNCTION_57_4();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_1D7F9E7CC(&v24, &qword_1ECA0E5C8, qword_1EDBAEBB0, &protocol descriptor for BlueprintLayoutHeaderFooterAttributesType);
    v19 = OUTLINED_FUNCTION_53();
    v20(v19);
    v21 = OUTLINED_FUNCTION_57_4();
    v22(v21);
  }

  OUTLINED_FUNCTION_97();
}

void sub_1D7F92ED4()
{
  OUTLINED_FUNCTION_98();
  v21 = v1;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_94();
  v6 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_6_16();
  v8 = swift_getAssociatedConformanceWitness();
  v25[0] = AssociatedTypeWitness;
  v25[1] = v6;
  v25[2] = AssociatedConformanceWitness;
  v25[3] = v8;
  type metadata accessor for BlueprintLayoutSection();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v3, v2);
  *&v22 = AssociatedTypeWitness;
  *(&v22 + 1) = v6;
  *&v23 = AssociatedConformanceWitness;
  *(&v23 + 1) = v8;
  v10 = type metadata accessor for BlueprintLayout();
  BlueprintLayout.subscript.getter(v21, v10);
  OUTLINED_FUNCTION_3_0();
  (*(v11 + 8))(v25, v10);
  v12 = OUTLINED_FUNCTION_129_1();
  v14 = v13(v12);
  OUTLINED_FUNCTION_91(v14, qword_1EDBAEBB0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_128_1();
    v15 = OUTLINED_FUNCTION_11_0();
    v16(v15);
    v17 = OUTLINED_FUNCTION_57_4();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    sub_1D7F9E7CC(&v22, &qword_1ECA0E5C8, qword_1EDBAEBB0, &protocol descriptor for BlueprintLayoutHeaderFooterAttributesType);
    v19 = OUTLINED_FUNCTION_57_4();
    v20(v19);
  }

  OUTLINED_FUNCTION_97();
}

void sub_1D7F93208()
{
  OUTLINED_FUNCTION_98();
  v24 = v2;
  v25 = v1;
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_82();
  v6 = *(v5 + 120);
  v7 = *((v4 & v3) + 0x58);
  OUTLINED_FUNCTION_33_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_72_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_107();
  v26 = type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  OUTLINED_FUNCTION_82();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v7, v6);
  OUTLINED_FUNCTION_33_6();
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_72_0();
  v16 = swift_getAssociatedConformanceWitness();
  v27 = v15;
  v28 = AssociatedTypeWitness;
  v29 = v16;
  v30 = AssociatedConformanceWitness;
  v17 = type metadata accessor for BlueprintLayout();
  BlueprintLayout.subscript.getter(v24, v17);
  OUTLINED_FUNCTION_3_0();
  (*(v18 + 8))(&v31, v17);
  if (![v25 isEditing] || (v19 = OUTLINED_FUNCTION_53(), v20(v19), (v21 & 1) != 0))
  {
    v22 = OUTLINED_FUNCTION_53();
    v23(v22);
  }

  (*(v11 + 8))(v14, v26);
  OUTLINED_FUNCTION_97();
}

double sub_1D7F93460()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_41();
  v4 = v1;
  v5 = v2;
  v6 = OUTLINED_FUNCTION_53();
  v7 = v0(v6);

  v8 = OUTLINED_FUNCTION_47_4();
  v9(v8);
  return v7;
}

uint64_t sub_1D7F9353C(void *a1, uint64_t a2)
{
  v32 = a2;
  v27 = a1;
  v29 = *v2;
  v30 = *MEMORY[0x1E69E7D40];
  v3 = *((v30 & v29) + 0x70);
  v4 = *((v30 & v29) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v26 - v6;
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v41[0] = v7;
  v41[1] = AssociatedTypeWitness;
  v41[2] = AssociatedConformanceWitness;
  v42 = v9;
  v10 = type metadata accessor for Blueprint();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v14 = type metadata accessor for BlueprintItem();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  BlueprintProviderType.blueprint.getter(v4, v3);
  Blueprint.subscript.getter();
  (*(v11 + 8))(v13, v10);
  (*(v31 + 16))(v28, v17, AssociatedTypeWitness);
  sub_1D7E069F0(0, qword_1EDBBC020);
  if (!swift_dynamicCast())
  {
    (*(v15 + 8))(v17, v14);
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_1D7F9E7CC(&v38, &qword_1ECA0F370, qword_1EDBBC020, &protocol descriptor for Selectable);
LABEL_16:
    v20 = 0;
    return v20 & 1;
  }

  sub_1D7E05450(&v38, v41);
  v18 = v42;
  v19 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  (*(v19 + 8))(&v37, v18, v19);
  if (!v37)
  {
    (*(v15 + 8))(v17, v14);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    goto LABEL_16;
  }

  if (v37 != 1)
  {
    v21 = sub_1D818E8E4();
    v22 = [v27 cellForRowAtIndexPath_];

    if (v22)
    {
      v33 = v22;
      sub_1D7E0A1A8(0, &qword_1EDBAE530);
      sub_1D7E069F0(0, qword_1EDBBB350);
      if (swift_dynamicCast())
      {
        if (*(&v35 + 1))
        {
          sub_1D7E05450(&v34, &v38);
          v23 = *(&v39 + 1);
          v24 = v40;
          __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
          v20 = (*(v24 + 8))(v23, v24);
          (*(v15 + 8))(v17, v14);
          __swift_destroy_boxed_opaque_existential_1Tm(&v38);
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
          return v20 & 1;
        }
      }

      else
      {
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
      }

      (*(v15 + 8))(v17, v14);
    }

    else
    {
      (*(v15 + 8))(v17, v14);
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
    }

    sub_1D7F9E7CC(&v34, &unk_1EDBBB340, qword_1EDBBB350, &protocol descriptor for ViewSelectable);
    goto LABEL_15;
  }

  (*(v15 + 8))(v17, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1D7F93AE8(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = BlueprintTableViewDelegate.tableView(_:canFocusRowAt:)(v9, v8);

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

void BlueprintTableViewDelegate.tableView(_:didSelectRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_3_7();
  v163 = v7;
  v10 = *((v9 & v8) + 0x70);
  v11 = *((v9 & v8) + 0x50);
  OUTLINED_FUNCTION_85_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_85_0();
  v175 = v11;
  v176 = v10;
  v178[0] = AssociatedTypeWitness;
  v178[1] = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v180 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v171 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_94();
  v173 = v16;
  OUTLINED_FUNCTION_52_0();
  v174 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v169 = v17;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_94();
  v177 = v19;
  OUTLINED_FUNCTION_52_0();
  v165 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v168 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v154 = v23 - v22;
  OUTLINED_FUNCTION_52_0();
  sub_1D7EA0824();
  v164 = v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v153 - v27;
  OUTLINED_FUNCTION_0_73();
  sub_1D7E54930(0, v29, v30, MEMORY[0x1E69E6720]);
  v32 = OUTLINED_FUNCTION_50(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v153 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_125_0();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = v153 - v42;
  v172 = v6;
  v44 = [v6 allowsMultipleSelection];
  v170 = v13;
  if (v44)
  {
    goto LABEL_17;
  }

  v46 = (v168 + 16);
  v45 = *(v168 + 16);
  v159 = v4;
  v47 = v4;
  v4 = v165;
  v166 = v45;
  v45(v43, v47, v165);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v4);
  OUTLINED_FUNCTION_65_4();
  v52 = v2 + *(v51 + 208);
  OUTLINED_FUNCTION_8_4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v53 = *(v52 + 8);
    ObjectType = swift_getObjectType();
    (*(v53 + 8))(ObjectType, v53);
    swift_unknownObjectRelease();
  }

  else
  {
    v55 = OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v55, v56, 1, v4);
  }

  v57 = *(v164 + 48);
  sub_1D7E54838(v43, v28);
  sub_1D7E54838(v1, &v28[v57]);
  OUTLINED_FUNCTION_43_0(v28, 1, v4);
  if (v58)
  {
    sub_1D7E73334(v1);
    sub_1D7E73334(v43);
    OUTLINED_FUNCTION_43_0(&v28[v57], 1, v4);
    v13 = v170;
    if (v58)
    {
      sub_1D7E73334(v28);
      OUTLINED_FUNCTION_80_1();
      goto LABEL_17;
    }
  }

  else
  {
    sub_1D7E54838(v28, v38);
    OUTLINED_FUNCTION_43_0(&v28[v57], 1, v4);
    if (!v58)
    {
      v162 = v46;
      v66 = v168;
      v67 = v154;
      (*(v168 + 32))(v154, &v28[v57], v4);
      OUTLINED_FUNCTION_6_29();
      sub_1D7E2DA70(v68, v69);
      LODWORD(v161) = sub_1D8190ED4();
      v70 = *(v66 + 8);
      v70(v67, v4);
      sub_1D7E73334(v1);
      sub_1D7E73334(v43);
      v70(v38, v4);
      sub_1D7E73334(v28);
      OUTLINED_FUNCTION_80_1();
      v13 = v170;
      if (v161)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    sub_1D7E73334(v1);
    sub_1D7E73334(v43);
    (*(v168 + 8))(v38, v4);
    v13 = v170;
  }

  v162 = v46;
  OUTLINED_FUNCTION_7_27();
  sub_1D7F9E310(v28, v59);
  OUTLINED_FUNCTION_80_1();
LABEL_14:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v38 = *(v52 + 8);
    v60 = swift_getObjectType();
    v61 = v167;
    v62 = v165;
    v166(v167, v4, v165);
    OUTLINED_FUNCTION_102();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v62);
    (*(v38 + 2))(v61, v60, v38);
    swift_unknownObjectRelease();
  }

LABEL_17:
  OUTLINED_FUNCTION_45_5();
  v166 = *(v71 + 144);
  OUTLINED_FUNCTION_109_0();
  OUTLINED_FUNCTION_73();
  Blueprint.subscript.getter();
  v72 = v171 + 8;
  v167 = *(v171 + 8);
  v73 = (v167)(v38, v13);
  OUTLINED_FUNCTION_11_19(v73, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1D81A1B70;
  OUTLINED_FUNCTION_45_5();
  v76 = (v2 + *(v75 + 320));
  v78 = *v76;
  v77 = v76[1];
  v79 = MEMORY[0x1E69E6158];
  *(v80 + 56) = MEMORY[0x1E69E6158];
  v81 = sub_1D7E13BF4();
  *(v74 + 64) = v81;
  *(v74 + 32) = v78;
  *(v74 + 40) = v77;
  sub_1D8190DB4();
  v82 = BlueprintItem.identifier.getter();
  *(v74 + 96) = v79;
  *(v74 + 104) = v81;
  *(v74 + 72) = v82;
  *(v74 + 80) = v83;
  v84 = MEMORY[0x1DA710AD0]();
  *(v74 + 136) = v79;
  *(v74 + 144) = v81;
  *(v74 + 112) = v84;
  *(v74 + 120) = v85;
  sub_1D7E0A1A8(0, &qword_1EDBBE110);
  v86 = sub_1D8191E44();
  sub_1D81919E4();
  sub_1D818FD44();

  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_8_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_40;
  }

  v162 = Strong;
  OUTLINED_FUNCTION_45_5();
  sub_1D7F9DBE4(v2 + *(v88 + 288), v178, &qword_1EDBB7AF0, qword_1EDBB7AF8, &protocol descriptor for KeyboardInputMonitorType);
  v89 = v172;
  if (v180)
  {
    v90 = v181;
    __swift_project_boxed_opaque_existential_1(v178, v180);
    v91 = OUTLINED_FUNCTION_161();
    v156 = v92(v91, v90);
    v155 = v93;
    __swift_destroy_boxed_opaque_existential_1Tm(v178);
  }

  else
  {
    sub_1D7F9E7CC(v178, &qword_1EDBB7AF0, qword_1EDBB7AF8, &protocol descriptor for KeyboardInputMonitorType);
    v156 = 0;
    v155 = 1;
  }

  v94 = v173;
  v95 = v72;
  v96 = [v89 window];
  if (v96)
  {
    v97 = v96;
    v98 = v2;
    v161 = [v96 windowScene];
  }

  else
  {
    v98 = v2;
    v161 = 0;
  }

  v160 = v98;
  BlueprintProviderType.blueprint.getter(v175, v176);
  v99 = *(v163 + 136);
  v100 = *(v163 + 104);
  v101 = v162;
  v102 = (*(v99 + 232))(v94, v177, v4, v100, v99);
  v103 = v94;
  v104 = v4;
  v105 = v94;
  v106 = v170;
  v107 = v167;
  (v167)(v103, v170);
  if (v102)
  {
    BlueprintProviderType.blueprint.getter(v175, v176);
    OUTLINED_FUNCTION_69_2();
    AssociatedConformanceWitness = *(v108 - 256);
    (*(v99 + 56))(v105, v177, v104, v178, v100, v99);

    v109 = OUTLINED_FUNCTION_73();
    v107(v109);

    v4 = v104;
    goto LABEL_40;
  }

  v110 = v99;
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v4 = v104;
  v112 = v160;
  if (!IsVoiceOverRunning)
  {
    goto LABEL_39;
  }

  v171 = v95;
  v113 = *(v168 + 16);
  v114 = v158;
  v159 = v104;
  v115 = v165;
  v113(v158, v104, v165);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v115);
  OUTLINED_FUNCTION_65_4();
  v120 = v112 + *(v119 + 208);
  OUTLINED_FUNCTION_8_4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v121 = *(v120 + 8);
    v122 = swift_getObjectType();
    v4 = v157;
    (*(v121 + 8))(v122, v121);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = v157;
    __swift_storeEnumTagSinglePayload(v157, 1, 1, v115);
  }

  v123 = v153[1];
  v124 = v153[0];
  v102 = *(v164 + 48);
  v125 = OUTLINED_FUNCTION_6_16();
  sub_1D7E54838(v125, v126);
  sub_1D7E54838(v4, v123 + v102);
  v127 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_43_0(v127, v128, v115);
  if (!v58)
  {
    sub_1D7E54838(v123, v124);
    OUTLINED_FUNCTION_43_0(v123 + v102, 1, v115);
    if (!v129)
    {
      v148 = v168;
      v4 = v154;
      (*(v168 + 32))(v154, v123 + v102, v115);
      OUTLINED_FUNCTION_6_29();
      sub_1D7E2DA70(v149, v150);
      v102 = v124;
      LODWORD(v164) = sub_1D8190ED4();
      v151 = *(v148 + 8);
      v152 = OUTLINED_FUNCTION_101_0();
      v151(v152);
      sub_1D7E73334(v157);
      sub_1D7E73334(v158);
      (v151)(v124, v115);
      sub_1D7E73334(v123);
      OUTLINED_FUNCTION_80_1();
      if (v164)
      {
        goto LABEL_49;
      }

LABEL_39:
      OUTLINED_FUNCTION_109_0();
      OUTLINED_FUNCTION_69_2();
      AssociatedConformanceWitness = *(v131 - 256);
      v132 = AssociatedConformanceWitness;
      v133 = v162;
      (*(v110 + 56))(v102, v177, v4, v178, v100, v110);

      (v167)(v102, v106);
      goto LABEL_40;
    }

    sub_1D7E73334(v4);
    sub_1D7E73334(v114);
    (*(v168 + 8))(v124, v115);
LABEL_38:
    OUTLINED_FUNCTION_7_27();
    sub_1D7F9E310(v123, v130);
    OUTLINED_FUNCTION_80_1();
    goto LABEL_39;
  }

  sub_1D7E73334(v4);
  sub_1D7E73334(v114);
  OUTLINED_FUNCTION_43_0(v123 + v102, 1, v115);
  if (!v58)
  {
    goto LABEL_38;
  }

  sub_1D7E73334(v123);
  OUTLINED_FUNCTION_80_1();
LABEL_49:

LABEL_40:
  v134 = v172;
  if ((sub_1D7F9353C(v172, v4) & 1) == 0)
  {
    v141 = sub_1D818E8E4();
    [v134 deselectRowAtIndexPath:v141 animated:0];

    sub_1D816FB6C(v178);
    if (v180)
    {
      __swift_project_boxed_opaque_existential_1(v178, v180);
      v142 = OUTLINED_FUNCTION_4_1();
      v135 = v143(v142);
      SeparatorView.clearSelections()();
      goto LABEL_45;
    }

LABEL_46:
    v146 = OUTLINED_FUNCTION_105_0();
    v147(v146);
    sub_1D7F9E7CC(v178, &qword_1EDBB0090, qword_1EDBB0098, &protocol descriptor for SeparatorViewProviderType);
    goto LABEL_47;
  }

  v135 = v134;
  sub_1D816FB6C(v178);
  if (!v180)
  {
    goto LABEL_46;
  }

  __swift_project_boxed_opaque_existential_1(v178, v180);
  v136 = OUTLINED_FUNCTION_4_1();
  v137(v136);
  v138 = OUTLINED_FUNCTION_47();
  v139 = sub_1D7F94BE0(v138);
  v140 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected;
  OUTLINED_FUNCTION_56();
  v140[v134] = v139 & 1;
  sub_1D806EB08();
LABEL_45:

  v144 = OUTLINED_FUNCTION_105_0();
  v145(v144);
  __swift_destroy_boxed_opaque_existential_1Tm(v178);
LABEL_47:
  OUTLINED_FUNCTION_100();
}

void sub_1D7F94B74(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7E069F0(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7F94BE0(void *a1)
{
  v2 = sub_1D818E8E4();
  v3 = [a1 cellForRowAtIndexPath_];

  if (!v3)
  {
    goto LABEL_8;
  }

  if (![v3 selectionStyle])
  {

    v5 = 0;
    return v5 & 1;
  }

  v15 = v3;
  sub_1D7E0A1A8(0, &qword_1EDBAE530);
  sub_1D7E069F0(0, &qword_1EDBAFE80);
  v4 = v3;
  if ((swift_dynamicCast() & 1) == 0)
  {

    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1D7F9E7CC(&v12, &unk_1ECA12220, &qword_1EDBAFE80, &protocol descriptor for SelectionBehaviorProviding);
LABEL_8:
    v5 = 1;
    return v5 & 1;
  }

  sub_1D7E05450(&v12, v16);
  if ([v4 isHighlighted])
  {

    v5 = 1;
  }

  else
  {
    v6 = v17;
    v7 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v7 + 8))(&v15, v6, v7);
    v8 = v15;
    SelectionBehavior.style.getter(&v12);
    sub_1D7E9B848(v8);
    v9 = *(&v13 + 1);
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    v5 = (*(v10 + 40))(1, 0, v9, v10);

    __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v5 & 1;
}

void BlueprintTableViewDelegate.tableView(_:didDeselectRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_66();
  v46 = v5;
  v8 = *((v7 & v6) + 0x70);
  v9 = *((v7 & v6) + 0x50);
  OUTLINED_FUNCTION_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v11 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = v9;
  v50[0] = AssociatedTypeWitness;
  v50[1] = v11;
  v13 = v4;
  v50[2] = AssociatedConformanceWitness;
  v51 = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v16 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_100_0();
  v49 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v47 = v18;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_51();
  sub_1D816FB6C(v50);
  if (v51)
  {
    v20 = v14;
    v21 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v22 = OUTLINED_FUNCTION_47();
    v23 = v21;
    v14 = v20;
    v25 = v24(v22, v23);
    SeparatorView.clearSelections()();

    __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }

  else
  {
    sub_1D7F9E7CC(v50, &qword_1EDBB0090, qword_1EDBB0098, &protocol descriptor for SeparatorViewProviderType);
  }

  v44 = v14;
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_115_0();
  BlueprintProviderType.blueprint.getter(v48, v8);
  Blueprint.subscript.getter();
  v45 = *(v16 + 8);
  v26 = v45(AssociatedConformanceWitness, v14);
  OUTLINED_FUNCTION_11_19(v26, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D81A1B70;
  OUTLINED_FUNCTION_66();
  v29 = (v2 + *(v28 + 320));
  v31 = *v29;
  v30 = v29[1];
  v43 = v8;
  v32 = v13;
  v33 = MEMORY[0x1E69E6158];
  *(v34 + 56) = MEMORY[0x1E69E6158];
  v35 = sub_1D7E13BF4();
  *(v27 + 64) = v35;
  *(v27 + 32) = v31;
  *(v27 + 40) = v30;
  sub_1D8190DB4();
  v36 = BlueprintItem.identifier.getter();
  *(v27 + 96) = v33;
  *(v27 + 104) = v35;
  *(v27 + 72) = v36;
  *(v27 + 80) = v37;
  v38 = MEMORY[0x1DA710AD0]();
  *(v27 + 136) = v33;
  *(v27 + 144) = v35;
  *(v27 + 112) = v38;
  *(v27 + 120) = v39;
  sub_1D7E0A1A8(0, &qword_1EDBBE110);
  v40 = sub_1D8191E44();
  sub_1D81919E4();
  sub_1D818FD44();

  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_8_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    OUTLINED_FUNCTION_115_0();
    BlueprintProviderType.blueprint.getter(v48, v43);
    (*(*(v46 + 136) + 64))(AssociatedConformanceWitness, v1, v32, *(v46 + 104));

    v45(AssociatedConformanceWitness, v44);
  }

  (*(v47 + 8))(v1, v49);
  OUTLINED_FUNCTION_100();
}

void BlueprintTableViewDelegate.tableView(_:contextMenuConfigurationForRowAt:point:)()
{
  OUTLINED_FUNCTION_98();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_3_7();
  v9 = *(v8 + 112);
  v12 = *((v11 & v10) + 0x50);
  OUTLINED_FUNCTION_124();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_124();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_118_0();
  v15 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_107();
  v19 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v21 = v20;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_26();
  if ([v7 isEditing])
  {
    goto LABEL_17;
  }

  if ([v7 allowsMultipleSelection])
  {
    goto LABEL_17;
  }

  v49 = v21;
  v50 = v19;
  v23 = [v7 hitTest:0 withEvent:{v5, v3}];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1D802334C();

    if (v25)
    {
      goto LABEL_17;
    }
  }

  v26 = sub_1D818E8E4();
  v51 = [v7 cellForRowAtIndexPath_];

  OUTLINED_FUNCTION_65_4();
  BlueprintProviderType.blueprint.getter(v12, v9);
  Blueprint.subscript.getter();
  (*(v17 + 8))(AssociatedConformanceWitness, v15);
  OUTLINED_FUNCTION_103_0();
  v31 = sub_1D7F95828(v27, v28, v29, v30);
  OUTLINED_FUNCTION_103_0();
  v36 = sub_1D7F95E48(v32, v33, v34, v35);
  v37 = sub_1D7F96914(v1, v51, v31, v36);
  v38 = sub_1D7F96A9C(v1, AssociatedTypeWitness);
  if (!(sub_1D7E36AB8(v37) | v38))
  {
    if (!v31)
    {

      goto LABEL_16;
    }

    ContextMenu.activityItemConfiguration.getter();
    OUTLINED_FUNCTION_47();
  }

  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_8_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_19:
    sub_1D7E0A1A8(0, &unk_1EDBAE4B0);
    BlueprintItem.identifier.getter();
    sub_1D8190EE4();
    OUTLINED_FUNCTION_161();

    OUTLINED_FUNCTION_0_32();
    v45 = swift_allocObject();
    *(v45 + 16) = v38;
    *(v45 + 24) = v51;
    OUTLINED_FUNCTION_0_8();
    v46 = swift_allocObject();
    *(v46 + 16) = v37;
    v47 = v38;
    v48 = v51;
    sub_1D7F0DCE4(AssociatedTypeWitness, sub_1D7F9DB70, v45, sub_1D7F9DB78, v46);

    (*(v49 + 8))(AssociatedTypeWitness, v50);
    goto LABEL_17;
  }

  v40 = Strong;
  v41 = [Strong view];

  if (v41)
  {
    v42 = [v41 window];

    if (v42)
    {
      v43 = [v42 rootViewController];

      if (v43)
      {
        v44 = [v43 presentedViewController];

        if (v44)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

LABEL_16:
            (*(v49 + 8))(AssociatedTypeWitness, v50);
LABEL_17:
            OUTLINED_FUNCTION_97();
            return;
          }
        }
      }
    }

    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_1D7F95828(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v67 = a4;
  v64 = a2;
  v70 = a1;
  v5 = *a3;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x70);
  v8 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v65 = v8;
  v66 = v7;
  v11 = swift_getAssociatedConformanceWitness();
  *&v75 = AssociatedTypeWitness;
  *(&v75 + 1) = v10;
  *&v76 = AssociatedConformanceWitness;
  *(&v76 + 1) = v11;
  v12 = type metadata accessor for Blueprint();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v63 = &v51 - v13;
  v14 = sub_1D818E994();
  v57 = *(v14 - 8);
  v58 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *((v6 & v5) + 0x78);
  v60 = a3;
  v17 = *((v6 & v5) + 0x58);
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v68 = AssociatedTypeWitness;
  *&v75 = AssociatedTypeWitness;
  *(&v75 + 1) = v10;
  *&v76 = v18;
  *(&v76 + 1) = v19;
  v61 = v20;
  v62 = v19;
  v77 = AssociatedConformanceWitness;
  v78 = v11;
  v22 = v11;
  v79 = v20;
  v80 = v21;
  v59 = v21;
  v23 = type metadata accessor for ContextMenuContext();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v51 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  (*(v30 + 16))(&v51 - v29, v70, v10, v28);
  sub_1D7E069F0(0, &qword_1EDBB9540);
  v70 = v10;
  if (swift_dynamicCast())
  {
    v55 = v24;
    v56 = v18;
    sub_1D7E05450(&v75, v81);
    v32 = v82;
    v31 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v33 = (*(v31 + 8))(v32, v31);
    if (v33)
    {
      v34 = v33;
    }

    else
    {
      v52 = v83;
      v53 = v82;
      v54 = __swift_project_boxed_opaque_existential_1(v81, v82);
      (*(v57 + 16))(v69, v64, v58);
      v64 = v23;
      v35 = v63;
      BlueprintProviderType.blueprint.getter(v65, v66);
      BlueprintLayoutProviderType.layoutBlueprint.getter(v17, v16);
      v36 = type metadata accessor for RendererEnvironment();
      v37 = objc_allocWithZone(v36);
      v38 = v67;
      v39 = v67;
      v40 = RendererEnvironment.init(scrollView:testing:)(v38, 0);
      v73 = v36;
      v74 = &protocol witness table for RendererEnvironment;
      *&v72 = v40;
      v41 = v59;
      v50 = v59;
      v42 = v61;
      v43 = AssociatedConformanceWitness;
      v44 = v68;
      v45 = v35;
      v46 = v70;
      v47 = v56;
      v48 = v62;
      sub_1D7FB0E2C(v69, v45, &v75, &v72, v26);
      v34 = (*(v52 + 32))(v26, v44, v46, v47, v48, v43, v22, v42, v41, v53, v52, v50);
      (*(v55 + 8))(v26, v64);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v81);
  }

  else
  {
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    sub_1D7F9E7CC(&v75, &unk_1ECA0D9C0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
    return 0;
  }

  return v34;
}

uint64_t sub_1D7F95E48(void *a1, uint64_t a2, void *a3, void *a4)
{
  v64 = a4;
  v61 = a2;
  v67 = a1;
  v5 = *a3;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x70);
  v8 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = v8;
  v63 = v7;
  v69 = swift_getAssociatedConformanceWitness();
  *&v73 = AssociatedTypeWitness;
  *(&v73 + 1) = v10;
  *&v74 = AssociatedConformanceWitness;
  *(&v74 + 1) = v69;
  v12 = type metadata accessor for Blueprint();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = &v49 - v13;
  v14 = sub_1D818E994();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *((v6 & v5) + 0x78);
  v57 = a3;
  v17 = *((v6 & v5) + 0x58);
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v54 = v16;
  v21 = swift_getAssociatedConformanceWitness();
  v65 = AssociatedConformanceWitness;
  v66 = AssociatedTypeWitness;
  *&v73 = AssociatedTypeWitness;
  *(&v73 + 1) = v10;
  v58 = v19;
  v59 = v18;
  *&v74 = v18;
  *(&v74 + 1) = v19;
  v22 = v10;
  v75 = AssociatedConformanceWitness;
  v23 = v69;
  v76 = v69;
  v77 = v20;
  v55 = v21;
  v56 = v20;
  v78 = v21;
  v24 = type metadata accessor for ContextMenuContext();
  v25 = *(v24 - 1);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v49 - v26;
  v28 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v49 - v30;
  sub_1D818EEE4();
  v32 = 0;
  if (sub_1D818EEC4())
  {
    (*(v28 + 16))(v31, v67, v22);
    sub_1D7E069F0(0, &qword_1EDBB9540);
    if (swift_dynamicCast())
    {
      sub_1D7E05450(&v73, v79);
      v50 = v81;
      v51 = v80;
      v67 = __swift_project_boxed_opaque_existential_1(v79, v80);
      (*(v52 + 16))(v68, v61, v53);
      v61 = v25;
      v33 = v60;
      BlueprintProviderType.blueprint.getter(v62, v63);
      BlueprintLayoutProviderType.layoutBlueprint.getter(v17, v54);
      v34 = type metadata accessor for RendererEnvironment();
      v35 = objc_allocWithZone(v34);
      v36 = v64;
      v37 = v64;
      v38 = RendererEnvironment.init(scrollView:testing:)(v36, 0);
      v71 = v34;
      v72 = &protocol witness table for RendererEnvironment;
      *&v70 = v38;
      v39 = v55;
      v48 = v55;
      v64 = v24;
      v40 = v56;
      v41 = v65;
      v42 = v33;
      v43 = v66;
      v44 = v59;
      v45 = v22;
      v46 = v58;
      sub_1D7FB0E2C(v68, v42, &v73, &v70, v27);
      v32 = (*(v50 + 40))(v27, v43, v45, v44, v46, v41, v23, v40, v39, v51, v50, v48);
      (*(v61 + 8))(v27, v64);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
    }

    else
    {
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
      sub_1D7F9E7CC(&v73, &unk_1ECA0D9C0, &qword_1EDBB9540, &protocol descriptor for ContextMenuProviding);
      return 0;
    }
  }

  return v32;
}

uint64_t sub_1D7F96444(uint64_t a1, void *a2, void *a3)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *a2;
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *MEMORY[0x1E69E7D40] & *a2;
  HIBYTE(v27) = 2;
  sub_1D7E25380(a2 + *(v4 + 296), v24);
  v28 = 0u;
  v29 = 0u;
  LOBYTE(v30) = 1;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v7 + 80);
  *(v9 + 24) = *(v7 + 88);
  *(v9 + 32) = *(v7 + 96);
  *(v9 + 48) = *(v7 + 112);
  *(v9 + 56) = *(v7 + 120);
  *(v9 + 72) = *(v7 + 136);
  *(v9 + 80) = v8;
  type metadata accessor for CommandExecutionSource();
  v10 = swift_allocObject();
  v11 = v25;
  v12 = v26;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);

  v18 = a3;
  sub_1D7E3B938(&v27 + 7, v16, a3, &v28, 0, sub_1D7F9E79C, v9, v10, v11, v12, v24[0], v24[1], v24[2], v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31);
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  v21 = (a2 + *((*v3 & *a2) + 0xB0));
  v22 = ContextMenu.build(commandCenter:source:)(*v21, v21[1], v20);

  return v22;
}

void sub_1D7F966C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for Blueprint();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v24 = a7;
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      BlueprintProviderType.blueprint.getter(a4, a8);
      (*(a11 + 176))(v18, v25, a2, v24, a11);

      (*(v16 + 8))(v18, v15);
    }

    else
    {
    }
  }
}

uint64_t sub_1D7F96914(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDBBC648 != -1)
  {
    swift_once();
  }

  type metadata accessor for BlueprintTableViewDelegate();
  swift_getWitnessTable();
  sub_1D818EA44();
  if (!v13)
  {
    return sub_1D7F96444(a3, a1, a2);
  }

  if (v13 == 1)
  {
    v8 = sub_1D7F96444(a4, a1, a2);
    v9 = sub_1D7F96444(a3, a1, a2);
    v12 = v8;
  }

  else
  {
    v11 = sub_1D7F96444(a3, a1, a2);
    v9 = sub_1D7F96444(a4, a1, a2);
    v12 = v11;
  }

  sub_1D7F0A724(v9);
  return v12;
}

id sub_1D7F96A9C(uint64_t *a1, uint64_t a2)
{
  v17 = a2;
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  v16 = *MEMORY[0x1E69E7D40] & *a1;
  v4 = *((v3 & v2) + 0x70);
  v5 = *((v3 & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Blueprint();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    BlueprintProviderType.blueprint.getter(v5, v4);
    v12 = (*(*(v16 + 136) + 80))(v9, v17, *(v16 + 104));

    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        setPreviewing(viewController:previewing:)(v12, 1);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v14 = objc_allocWithZone(type metadata accessor for PreviewViewController());
        return PreviewViewController.init(previewedViewController:triggeringViewController:)(v12, Strong);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_1D7F96D94(void *a1, void *a2)
{
  if (!a1)
  {
    if (a2 && (sub_1D7E0A1A8(0, &qword_1EDBAE530), sub_1D7E069F0(0, &unk_1ECA0F5A0), v4 = a2, (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v10 + 1))
      {
        sub_1D7E05450(&v9, v12);
        v5 = v13;
        v6 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v6 + 8))(0, v5, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }

    sub_1D7F9E7CC(&v9, &unk_1ECA0E630, &unk_1ECA0F5A0, &protocol descriptor for ContextMenuPreviewable);
  }

LABEL_8:
  v7 = a1;
  return a1;
}

UIMenu sub_1D7F96EB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D81920A4())
  {
    v4 = 0;
    v5._rawValue = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (i == v4)
      {
        sub_1D7E0A1A8(0, &unk_1EDBB2FD0);
        return UIMenu.init(children:)(v5);
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA714420](v4, a2);
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a2 + 8 * v4 + 32);
      }

      if (__OFADD__(v4, 1))
      {
        break;
      }

      MEMORY[0x1DA713500](v6);
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D81913B4();
      }

      sub_1D8191404();
      v5._rawValue = v8;
      ++v4;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

id sub_1D7F97008(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v9 = a3;
  v10 = a1;
  BlueprintTableViewDelegate.tableView(_:contextMenuConfigurationForRowAt:point:)();
  v12 = v11;

  (*(v6 + 8))(v8, v5);

  return v12;
}

void BlueprintTableViewDelegate.tableView(_:willPerformPreviewActionForMenuWith:animator:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_0_32();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = v3;
  v13 = sub_1D7F9DB80;
  v14 = v5;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  OUTLINED_FUNCTION_17();
  v11 = v6;
  v12 = &block_descriptor_21;
  v7 = _Block_copy(&v9);
  swift_unknownObjectRetain();
  v8 = v3;

  [a3 addCompletion_];
  _Block_release(v7);
}

void sub_1D7F97204(void *a1, uint64_t a2)
{
  v3 = [a1 previewViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for PreviewViewController();
    if (swift_dynamicCastClass())
    {
      v5 = v4;
      v6 = sub_1D7F0E0A0();

      v4 = v6;
      setPreviewing(viewController:previewing:)(v4, 0);
    }

    v7 = sub_1D7F973A0(a2, &selRef_splitViewController);
    v8 = sub_1D7F973A0(a2, &selRef_tabBarController);
    if (v7)
    {
      v11 = v8;
      [v7 showViewController:v4 sender:a2];
    }

    else
    {
      if (!v8)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v10 = Strong;
          [Strong showViewController:v4 sender:a2];
        }

        else
        {
        }

        return;
      }

      v11 = v8;
      [v8 showViewController:v4 sender:a2];
    }
  }
}

id sub_1D7F973A0(uint64_t a1, SEL *a2)
{
  OUTLINED_FUNCTION_10();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v4 = Strong, v5 = [Strong *a2], v4, !v5))
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 presentingViewController];

      v5 = [v8 *a2];
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void sub_1D7F97488(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v11 = a1;
  BlueprintTableViewDelegate.tableView(_:willPerformPreviewActionForMenuWith:animator:)(v11, v10, a5);

  swift_unknownObjectRelease();
}

UITargetedPreview_optional __swiftcall BlueprintTableViewDelegate.tableView(_:previewForHighlightingContextMenuWithConfiguration:)(UITableView *_, UIContextMenuConfiguration previewForHighlightingContextMenuWithConfiguration)
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v5 = v4;
  v94 = v6;
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x78);
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  OUTLINED_FUNCTION_85_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v91 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_94();
  v92 = v12;
  v89 = v8;
  v90 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v93 = AssociatedTypeWitness;
  v87 = AssociatedConformanceWitness;
  v14 = type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_50(v14);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_94();
  v88 = v16;
  OUTLINED_FUNCTION_0_73();
  sub_1D7E54930(0, v17, v18, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v19);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_94();
  v99 = v21;
  OUTLINED_FUNCTION_52_0();
  v100 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v96 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  v95 = v25 - v24;
  OUTLINED_FUNCTION_12_18();
  v26 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_18();
  v27 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_0();
  v28 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_55_0();
  v29 = swift_getAssociatedConformanceWitness();
  v104[0] = v26;
  v104[1] = v27;
  v104[2] = v28;
  v104[3] = v29;
  v30 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v103 = v31;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_28_1();
  v33 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_107();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v97 = v35;
  v98 = v34;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v85 - v37;
  OUTLINED_FUNCTION_2();
  v40 = v39;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_94();
  v101 = v42;
  *&v105 = [v5 identifier];
  sub_1D7F9DB88();
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v86 = v40;
  v102 = v33;
  v85[1] = *((*MEMORY[0x1E69E7D40] & *v3) + 0x90);
  v43 = OUTLINED_FUNCTION_74();
  BlueprintProviderType.blueprint.getter(v43, v44);
  OUTLINED_FUNCTION_101_0();
  Blueprint.item(for:)();

  v45 = v103 + 8;
  v46 = *(v103 + 8);
  v46(v28, v30);
  OUTLINED_FUNCTION_43_0(v38, 1, v102);
  if (v55)
  {
    v47 = OUTLINED_FUNCTION_134_0();
LABEL_5:
    v48(v47);
    goto LABEL_9;
  }

  v49 = OUTLINED_FUNCTION_73();
  v50(v49);
  v103 = v45;
  v51 = OUTLINED_FUNCTION_74();
  BlueprintProviderType.blueprint.getter(v51, v52);
  v53 = v99;
  Blueprint.indexPath(forItem:)();
  v46(v28, v30);
  v54 = v100;
  OUTLINED_FUNCTION_43_0(v53, 1, v100);
  if (v55)
  {
    v56 = OUTLINED_FUNCTION_58_4();
    v57(v56);
    sub_1D7E73334(v53);
    goto LABEL_9;
  }

  v60 = OUTLINED_FUNCTION_73();
  v61(v60);
  v62 = sub_1D818E8E4();
  v63 = [v94 cellForRowAtIndexPath_];

  if (!v63)
  {
    v79 = OUTLINED_FUNCTION_86_1();
    v80(v79, v54);
    v81 = OUTLINED_FUNCTION_58_4();
    v82(v81);
    goto LABEL_9;
  }

  v64 = v63;
  v65 = [v64 window];
  if (!v65)
  {

    v83 = OUTLINED_FUNCTION_86_1();
    v84(v83, v54);
    v47 = OUTLINED_FUNCTION_58_4();
    goto LABEL_5;
  }

  v66 = OUTLINED_FUNCTION_110();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v66, v67);
  OUTLINED_FUNCTION_16();
  v68 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  v69 = swift_getAssociatedConformanceWitness();
  v70 = v93;
  *&v105 = v68;
  *(&v105 + 1) = v93;
  *&v106 = v69;
  *(&v106 + 1) = v87;
  OUTLINED_FUNCTION_118_0();
  v71 = type metadata accessor for BlueprintLayout();
  v72 = v88;
  v73 = OUTLINED_FUNCTION_101_0();
  BlueprintLayout.subscript.getter(v73, v74);
  OUTLINED_FUNCTION_3_0();
  (*(v75 + 8))(v104, v71);
  v76 = (*(v91 + 32))(v92, v72, v70);
  OUTLINED_FUNCTION_91(v76, &qword_1EDBB17D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v107 = 0;
    v105 = 0u;
    v106 = 0u;
  }

  sub_1D7E0A1A8(0, &unk_1EDBAE520);
  sub_1D7F9DBE4(&v105, v104, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
  sub_1D8184638(v64, v104);

  v77 = OUTLINED_FUNCTION_86_1();
  v78(v77, v54);
  (*(v86 + 8))(v101, v102);
  sub_1D7F9E7CC(&v105, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
LABEL_9:
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
  result.value.super.isa = v58;
  result.is_nil = v59;
  return result;
}

id sub_1D7F97D1C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = BlueprintTableViewDelegate.tableView(_:previewForHighlightingContextMenuWithConfiguration:)(v6, v7);

  return v9;
}

UITargetedPreview_optional __swiftcall BlueprintTableViewDelegate.tableView(_:previewForDismissingContextMenuWithConfiguration:)(UITableView *_, UIContextMenuConfiguration previewForDismissingContextMenuWithConfiguration)
{
  OUTLINED_FUNCTION_120();
  v5 = v4;
  v131 = v6;
  v7 = *v2;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x78);
  v10 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_103_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v125 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  v126 = v14;
  v123 = v10;
  v124 = v9;
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_50(v15);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_94();
  v122 = v17;
  OUTLINED_FUNCTION_0_73();
  sub_1D7E54930(0, v18, v19, MEMORY[0x1E69E6720]);
  v21 = OUTLINED_FUNCTION_50(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23();
  v130 = v22;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_123_1();
  v139 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v132 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23();
  v129 = v26;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  v128 = v118 - v28;
  v29 = *((v8 & v7) + 0x70);
  v144 = v2;
  v30 = *((v8 & v7) + 0x50);
  OUTLINED_FUNCTION_12_18();
  v31 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_18();
  v32 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_0();
  v33 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_55_0();
  v34 = swift_getAssociatedConformanceWitness();
  v145[0] = v31;
  v145[1] = v32;
  v145[2] = v33;
  v146 = v34;
  v143 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v141 = v35;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_124();
  v37 = type metadata accessor for BlueprintItem();
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v136 = v39;
  v137 = v38;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_23();
  v135 = v40;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v118 - v42;
  OUTLINED_FUNCTION_2();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23();
  v133 = v47;
  OUTLINED_FUNCTION_77();
  v49 = MEMORY[0x1EEE9AC00](v48);
  v134 = v118 - v50;
  *&v148 = [v5 identifier];
  v140 = sub_1D7F9DB88();
  v51 = swift_dynamicCast();
  v127 = AssociatedTypeWitness;
  v142 = v45;
  if (v51)
  {
    v119 = v3;
    v120 = v5;
    v118[1] = *((*MEMORY[0x1E69E7D40] & *v144) + 0x90);
    v52 = OUTLINED_FUNCTION_74();
    BlueprintProviderType.blueprint.getter(v52, v53);
    OUTLINED_FUNCTION_72_0();
    Blueprint.item(for:)();

    v54 = *(v141 + 8);
    v55 = OUTLINED_FUNCTION_11_0();
    v54(v55);
    OUTLINED_FUNCTION_43_0(v43, 1, v37);
    if (v62)
    {
      v56 = v30;
      (*(v136 + 8))(v43, v137);
    }

    else
    {
      (*(v142 + 32))(v134, v43, v37);
      v138 = v37;
      v58 = OUTLINED_FUNCTION_74();
      BlueprintProviderType.blueprint.getter(v58, v59);
      v60 = v119;
      v37 = v31;
      Blueprint.indexPath(forItem:)();
      v61 = OUTLINED_FUNCTION_11_0();
      v54(v61);
      OUTLINED_FUNCTION_43_0(v60, 1, v139);
      v56 = v30;
      if (v62)
      {
        v63 = OUTLINED_FUNCTION_106_0();
        v64(v63);
        sub_1D7E73334(v60);
      }

      else
      {
        v65 = v132;
        v66 = v128;
        v67 = v139;
        (*(v132 + 32))(v128, v60, v139);
        v68 = OUTLINED_FUNCTION_99();
        v37 = v131;
        UITableView.deselectItem(at:animated:)(v68, v69);
        (*(v65 + 8))(v66, v67);
        v70 = OUTLINED_FUNCTION_106_0();
        v72(v70, v71);
      }
    }

    v57 = v144;
    v5 = v120;
  }

  else
  {
    v56 = v30;
    v57 = v144;
  }

  *&v148 = [v5 identifier];
  if (swift_dynamicCast())
  {
    v73 = *((*MEMORY[0x1E69E7D40] & *v57) + 0x90);
    v138 = v37;
    v140 = v73;
    BlueprintProviderType.blueprint.getter(v56, v29);
    v74 = v135;
    Blueprint.item(for:)();
    v75 = v138;

    v76 = *(v141 + 8);
    v77 = OUTLINED_FUNCTION_101_0();
    v76(v77);
    OUTLINED_FUNCTION_43_0(v74, 1, v75);
    if (v62)
    {
      v78 = OUTLINED_FUNCTION_70_2();
      v79(v78);
    }

    else
    {
      v80 = v74;
      v81 = v133;
      (*(v142 + 32))(v133, v80, v75);
      v82 = OUTLINED_FUNCTION_6_16();
      BlueprintProviderType.blueprint.getter(v82, v83);
      v84 = v130;
      Blueprint.indexPath(forItem:)();
      v85 = v84;
      v86 = OUTLINED_FUNCTION_101_0();
      v76(v86);
      OUTLINED_FUNCTION_43_0(v84, 1, v139);
      if (v87)
      {
        v88 = OUTLINED_FUNCTION_70_2();
        v89(v88, v138);
        sub_1D7E73334(v84);
      }

      else
      {
        v92 = v142;
        (*(v132 + 32))(v129, v85, v139);
        v93 = sub_1D818E8E4();
        v94 = [v131 cellForRowAtIndexPath_];

        if (v94)
        {
          v151 = v94;
          v95 = sub_1D7E0A1A8(0, &qword_1EDBAE530);
          OUTLINED_FUNCTION_91(v95, &unk_1ECA0F5A0);
          v96 = v94;
          if (swift_dynamicCast())
          {
            sub_1D7E05450(&v148, v145);
            v97 = v146;
            v98 = v147;
            __swift_project_boxed_opaque_existential_1(v145, v146);
            (*(v98 + 8))(0, v97, v98);
            __swift_destroy_boxed_opaque_existential_1Tm(v145);
          }

          else
          {
            v150 = 0;
            v148 = 0u;
            v149 = 0u;
            sub_1D7F9E7CC(&v148, &unk_1ECA0E630, &unk_1ECA0F5A0, &protocol descriptor for ContextMenuPreviewable);
          }

          v101 = v127;
          v102 = v96;
          v103 = [v102 window];
          if (v103)
          {

            OUTLINED_FUNCTION_19_11();
            v104 = OUTLINED_FUNCTION_110();
            BlueprintLayoutProviderType.layoutBlueprint.getter(v104, v105);
            OUTLINED_FUNCTION_16();
            v106 = swift_getAssociatedTypeWitness();
            OUTLINED_FUNCTION_111();
            v107 = swift_getAssociatedConformanceWitness();
            *&v148 = v106;
            *(&v148 + 1) = v101;
            *&v149 = v107;
            *(&v149 + 1) = AssociatedConformanceWitness;
            v108 = type metadata accessor for BlueprintLayout();
            v109 = v122;
            v110 = OUTLINED_FUNCTION_73();
            BlueprintLayout.subscript.getter(v110, v111);
            OUTLINED_FUNCTION_3_0();
            (*(v112 + 8))(v145, v108);
            v113 = (*(v125 + 32))(v126, v109, v101);
            OUTLINED_FUNCTION_91(v113, &qword_1EDBB17D0);
            if ((swift_dynamicCast() & 1) == 0)
            {
              v150 = 0;
              v148 = 0u;
              v149 = 0u;
            }

            sub_1D7E0A1A8(0, &unk_1EDBAE520);
            sub_1D7F9DBE4(&v148, v145, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
            sub_1D8184638(v102, v145);

            v114 = OUTLINED_FUNCTION_86_1();
            v115(v114, v139);
            (*(v92 + 8))(v133, v138);
            sub_1D7F9E7CC(&v148, &qword_1EDBB17C0, &qword_1EDBB17D0, &protocol descriptor for DragPreviewable);
          }

          else
          {

            v116 = OUTLINED_FUNCTION_86_1();
            v117(v116, v139);
            (*(v92 + 8))(v81, v138);
          }
        }

        else
        {
          v99 = OUTLINED_FUNCTION_86_1();
          v100(v99, v139);
          (*(v92 + 8))(v81, v138);
        }
      }
    }
  }

  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
  result.value.super.isa = v90;
  result.is_nil = v91;
  return result;
}

id sub_1D7F98918(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = BlueprintTableViewDelegate.tableView(_:previewForDismissingContextMenuWithConfiguration:)(v6, v7);

  return v9;
}

void BlueprintTableViewDelegate.tableView(_:didHighlightRowAt:)(void *a1)
{
  v2 = sub_1D818E8E4();
  v3 = [a1 cellForRowAtIndexPath_];

  if (!v3 || (v4 = [v3 selectionStyle], v3, v4))
  {
    sub_1D816FB6C(v9);
    if (v10)
    {
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v5 = OUTLINED_FUNCTION_4_1();
      v7 = v6(v5);
      v8 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isHighlighted;
      OUTLINED_FUNCTION_56();
      v7[v8] = 1;
      sub_1D806E9CC();

      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }

    else
    {
      sub_1D7F9E7CC(v9, &qword_1EDBB0090, qword_1EDBB0098, &protocol descriptor for SeparatorViewProviderType);
    }
  }
}

uint64_t BlueprintTableViewDelegate.tableView(_:didUnhighlightRowAt:)()
{
  sub_1D816FB6C(v5);
  if (!v6)
  {
    return sub_1D7F9E7CC(v5, &qword_1EDBB0090, qword_1EDBB0098, &protocol descriptor for SeparatorViewProviderType);
  }

  __swift_project_boxed_opaque_existential_1(v5, v6);
  v0 = OUTLINED_FUNCTION_4_1();
  v2 = v1(v0);
  v3 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isHighlighted;
  OUTLINED_FUNCTION_56();
  v2[v3] = 0;
  sub_1D806E9CC();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_1D7F98B84()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_41();
  v5 = v1;
  v6 = v2;
  v0(v5, v3);

  v7 = OUTLINED_FUNCTION_47_4();
  return v8(v7);
}

void BlueprintTableViewDelegate.tableView(_:willDisplay:forRowAt:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v11[0] = 3;
  BlueprintImpressionManager.startImpression(at:view:triggerSource:)(a3, a2, v11);
  OUTLINED_FUNCTION_22_2();
  v7 = *(v6 + 248);
  OUTLINED_FUNCTION_10();
  v8 = *(v4 + v7);
  if (v8)
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(a2))
    {
      v9 = v8;
      v10 = a2;
      OUTLINED_FUNCTION_104_0();
      BlueprintViewportMonitor.add(observer:scrollView:)();
    }
  }
}

void BlueprintTableViewDelegate.tableView(_:didEndDisplaying:forRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v90 = v3;
  v91 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_3_7();
  v7 = *(v6 + 112);
  v10 = *((v9 & v8) + 0x50);
  OUTLINED_FUNCTION_33_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_33_6();
  v12 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_72_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = v10;
  v85 = v7;
  OUTLINED_FUNCTION_72_0();
  v92[0] = AssociatedTypeWitness;
  v92[1] = v12;
  v92[2] = AssociatedConformanceWitness;
  v92[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v82 = v15;
  v83 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_94();
  v81 = v17;
  OUTLINED_FUNCTION_52_0();
  v18 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v88 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v86 = v22 - v21;
  OUTLINED_FUNCTION_52_0();
  sub_1D7EA0824();
  v87 = v23;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v27 = v26 - v25;
  OUTLINED_FUNCTION_0_73();
  sub_1D7E54930(0, v28, v29, MEMORY[0x1E69E6720]);
  v31 = OUTLINED_FUNCTION_50(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_23();
  v33 = v32;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v79 - v35;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v79 - v39;
  v89 = v5;
  v41 = [v5 indexPathsForVisibleRows];
  if (!v41 || (v42 = v41, v43 = sub_1D8191314(), v42, MEMORY[0x1EEE9AC00](v44), *(&v79 - 2) = v90, LOBYTE(v42) = sub_1D7EB0784(sub_1D7EB0E84, (&v79 - 4), v43, MEMORY[0x1E6969C28]), , (v42 & 1) == 0))
  {
    OUTLINED_FUNCTION_24_8();
    LOBYTE(v92[0]) = 3;
    BlueprintImpressionManager.endImpression(at:view:triggerSource:)(v90, v91, v92, v45, v46, v47, v48, v49, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
  }

  if (([v89 allowsMultipleSelection] & 1) == 0)
  {
    OUTLINED_FUNCTION_24_8();
    v51 = v1 + *(v50 + 208);
    OUTLINED_FUNCTION_8_4();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v52 = *(v51 + 8);
      ObjectType = swift_getObjectType();
      (*(v52 + 8))(ObjectType, v52);
      swift_unknownObjectRelease();
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v40, 1, 1, v18);
    }

    v54 = v88;
    (*(v88 + 16))(v36, v90, v18);
    OUTLINED_FUNCTION_102();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v18);
    v58 = *(v87 + 48);
    sub_1D7E54838(v40, v27);
    sub_1D7E54838(v36, v27 + v58);
    OUTLINED_FUNCTION_43_0(v27, 1, v18);
    if (v59)
    {
      sub_1D7E73334(v36);
      sub_1D7E73334(v40);
      OUTLINED_FUNCTION_43_0(v27 + v58, 1, v18);
      if (v59)
      {
        sub_1D7E73334(v27);
LABEL_18:
        if (([v91 isSelected] & 1) == 0 && (objc_msgSend(v91, sel_isEditing) & 1) == 0)
        {
          OUTLINED_FUNCTION_24_8();
          BlueprintProviderType.blueprint.getter(v84, v85);
          v67 = v83;
          Blueprint.contains(indexPath:)();
          v69 = v68;
          v70 = OUTLINED_FUNCTION_70_2();
          v71(v70, v67);
          if (v69)
          {
            v72 = sub_1D818E8E4();
            [v89 selectRowAtIndexPath:v72 animated:0 scrollPosition:0];
          }
        }

        goto LABEL_22;
      }
    }

    else
    {
      sub_1D7E54838(v27, v33);
      OUTLINED_FUNCTION_43_0(v27 + v58, 1, v18);
      if (!v59)
      {
        v61 = *(v54 + 32);
        v80 = v33;
        v62 = v86;
        v61(v86, v27 + v58, v18);
        OUTLINED_FUNCTION_6_29();
        sub_1D7E2DA70(v63, v64);
        v65 = sub_1D8190ED4();
        v66 = *(v54 + 8);
        v66(v62, v18);
        sub_1D7E73334(v36);
        sub_1D7E73334(v40);
        v66(v80, v18);
        sub_1D7E73334(v27);
        if ((v65 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      sub_1D7E73334(v36);
      sub_1D7E73334(v40);
      (*(v54 + 8))(v33, v18);
    }

    OUTLINED_FUNCTION_7_27();
    sub_1D7F9E310(v27, v60);
  }

LABEL_22:
  OUTLINED_FUNCTION_24_8();
  v74 = *(v73 + 248);
  OUTLINED_FUNCTION_8_4();
  v75 = *(v1 + v74);
  if (v75)
  {
    v76 = v91;
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v76))
    {
      v77 = v75;
      v78 = v91;
      BlueprintViewportMonitor.remove(observer:)();
    }
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F99424(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  sub_1D818E924();
  v17 = a3;
  v18 = a4;
  v19 = a1;
  a6(v17, v18, v16);

  return (*(v12 + 8))(v16, v10);
}

void sub_1D7F99534(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v5 = *(v4 + 248);
  OUTLINED_FUNCTION_10();
  v6 = *(v2 + v5);
  if (v6)
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(a2))
    {
      v7 = v6;
      v8 = a2;
      BlueprintViewportMonitor.add(observer:scrollView:)();
    }
  }
}

void sub_1D7F995F0(uint64_t a1, void *a2)
{
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a2))
  {
    OUTLINED_FUNCTION_3_7();
    v5 = *(v4 + 248);
    OUTLINED_FUNCTION_10();
    v6 = *(v2 + v5);
    if (v6)
    {
      v7 = a2;
      v8 = v6;
      OUTLINED_FUNCTION_47();
      BlueprintViewportMonitor.remove(observer:)();
    }
  }
}

void BlueprintTableViewDelegate.tableView(_:targetIndexPathForMoveFromRowAt:toProposedIndexPath:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v61 = v2;
  v58 = v3;
  v59 = v4;
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v51 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94();
  v52 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_85_0();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_94();
  v53 = v13;
  OUTLINED_FUNCTION_52_0();
  v14 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v57 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v54 = v18 - v17;
  v19 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_75_2();
  v20 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_118_0();
  v21 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  v56 = v22;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_94();
  v55 = v24;
  v64[0] = v19;
  v64[1] = AssociatedTypeWitness;
  v64[2] = v20;
  v65 = AssociatedConformanceWitness;
  OUTLINED_FUNCTION_118_0();
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_131_0();
  BlueprintProviderType.blueprint.getter(v6, v5);
  sub_1D818E974();
  OUTLINED_FUNCTION_117_0();
  LOBYTE(v20) = Blueprint.contains(index:)(v26);
  v27 = OUTLINED_FUNCTION_6_16();
  v60 = v28;
  v28(v27);
  if ((v20 & 1) == 0)
  {
    (*(v57 + 16))(v59, v58, v14);
    goto LABEL_14;
  }

  v50 = sub_1D818E944();
  OUTLINED_FUNCTION_131_0();
  BlueprintProviderType.blueprint.getter(v6, v5);
  sub_1D818E974();
  OUTLINED_FUNCTION_117_0();
  Blueprint.subscript.getter();
  v29 = OUTLINED_FUNCTION_6_16();
  v60(v29);
  swift_getWitnessTable();
  v30 = sub_1D8191834();
  (*(v56 + 8))(v55, v21);
  v31 = v30 - 1;
  if (!__OFSUB__(v30, 1))
  {
    if (v31 >= v50)
    {
      v31 = v50;
    }

    v32 = v31 & ~(v31 >> 63);
    v33 = sub_1D818E974();
    MEMORY[0x1DA710B40](v32, v33);
    OUTLINED_FUNCTION_131_0();
    BlueprintProviderType.blueprint.getter(v6, v5);
    OUTLINED_FUNCTION_117_0();
    Blueprint.contains(indexPath:)();
    v35 = v34;
    v36 = OUTLINED_FUNCTION_6_16();
    v60(v36);
    if ((v35 & 1) == 0)
    {
      (*(v57 + 8))(v54, v14);
      (*(v57 + 16))(v59, v58, v14);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_131_0();
    BlueprintProviderType.blueprint.getter(v6, v5);
    OUTLINED_FUNCTION_117_0();
    Blueprint.subscript.getter();
    v37 = OUTLINED_FUNCTION_6_16();
    v60(v37);
    v38 = (*(v51 + 16))(v52, v53, AssociatedTypeWitness);
    OUTLINED_FUNCTION_91(v38, &qword_1ECA0EFE0);
    OUTLINED_FUNCTION_104_0();
    if (swift_dynamicCast())
    {
      sub_1D7E05450(v62, v64);
      v1 = v66;
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v39 = OUTLINED_FUNCTION_4_1();
      v41 = v40(v39);
      v42 = OUTLINED_FUNCTION_70_2();
      v43(v42);
      v44 = OUTLINED_FUNCTION_77_3();
      v45(v44);
      if (v41)
      {
        (v1[2])(v59, v61, v52);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
LABEL_14:
        OUTLINED_FUNCTION_100();
        return;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v64);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_70_2();
      v47(v46);
      v48 = OUTLINED_FUNCTION_77_3();
      v49(v48);
      v63 = 0;
      memset(v62, 0, sizeof(v62));
      sub_1D7F9E7CC(v62, &unk_1ECA0E640, &qword_1ECA0EFE0, &protocol descriptor for Movable);
    }

    (v1[2])(v59, v58, v52);
    goto LABEL_14;
  }

  __break(1u);
}

id sub_1D7F99D5C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  sub_1D818E924();
  sub_1D818E924();
  v15 = a3;
  v16 = a1;
  BlueprintTableViewDelegate.tableView(_:targetIndexPathForMoveFromRowAt:toProposedIndexPath:)();

  v17 = *(v6 + 8);
  v17(v8, v5);
  v17(v11, v5);
  v18 = sub_1D818E8E4();
  v17(v14, v5);

  return v18;
}

void BlueprintTableViewDelegate.tableView(_:trailingSwipeActionsConfigurationForRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v26 = v2;
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  OUTLINED_FUNCTION_75_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_75_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_100_0();
  swift_getAssociatedConformanceWitness();
  v5 = OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_111_0(v5);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12_13();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v27 = v8;
  v28 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_113_0();
  v10 = OUTLINED_FUNCTION_11_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_84_1();
  v14 = v13(v12);
  OUTLINED_FUNCTION_91(v14, &qword_1EDBB0730);
  OUTLINED_FUNCTION_92();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v27 + 8))(v1, v28);
    OUTLINED_FUNCTION_90();
    sub_1D7F9E7CC(&v29, &qword_1ECA0E650, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_112_0();
  v15 = OUTLINED_FUNCTION_11_0();
  v17 = v16(v15);
  if (!v17)
  {
    v22 = OUTLINED_FUNCTION_18_14();
    v23(v22);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    goto LABEL_9;
  }

  if (!*(v17 + 16))
  {
    v24 = OUTLINED_FUNCTION_18_14();
    v25(v24);

    goto LABEL_8;
  }

  v18 = OUTLINED_FUNCTION_73();
  sub_1D7F9A248(v18, v19, v26, v3);

  v20 = OUTLINED_FUNCTION_18_14();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
LABEL_9:
  OUTLINED_FUNCTION_100();
}

id sub_1D7F9A248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v32 = a1;
  v33 = a3;
  v5 = type metadata accessor for BlueprintViewAction(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v14 = 0;
  v31[1] = 0;
  v15 = *(a2 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v36 = a2;
LABEL_2:
  while (v14 != v15)
  {
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = *(v6 + 72);
    sub_1D7F9E1BC(a2 + v17 + v18 * v14++, v13);
    sub_1D7F9E1BC(v13, v10);

    sub_1D7F9E220();
    v20 = *&v10[*(v19 + 64)];
    sub_1D7F9E310(&v10[*(v19 + 48)], type metadata accessor for BlueprintViewAction.Action);
    v21 = (v20 + 40);
    v22 = *(v20 + 16) + 1;
    while (--v22)
    {
      v23 = v21;
      v21 += 16;
      if (*v23 == 2 && *(v23 - 1) == 1)
      {

        sub_1D7F9E310(v13, type metadata accessor for BlueprintViewAction);
        goto LABEL_2;
      }
    }

    sub_1D7F9E368(v13, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D7F0902C(0, *(v16 + 16) + 1, 1);
      v16 = v38;
    }

    v26 = *(v16 + 16);
    v25 = *(v16 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1D7F0902C(v25 > 1, v26 + 1, 1);
      v16 = v38;
    }

    *(v16 + 16) = v26 + 1;
    sub_1D7F9E368(v37, v16 + v17 + v26 * v18);
    a2 = v36;
  }

  v27 = sub_1D7E0A1A8(0, &qword_1ECA0E660);
  MEMORY[0x1EEE9AC00](v27);
  v28 = v33;
  v31[-4] = v34;
  v31[-3] = v28;
  v29 = v35;
  v31[-2] = v32;
  v31[-1] = v29;
  sub_1D7FFB7A8(sub_1D7F9E3CC, &v31[-6], v16);

  return sub_1D80A8CC4();
}

void BlueprintTableViewDelegate.tableView(_:leadingSwipeActionsConfigurationForRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v26 = v2;
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  OUTLINED_FUNCTION_75_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_75_2();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_100_0();
  swift_getAssociatedConformanceWitness();
  v5 = OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_111_0(v5);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12_13();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v27 = v8;
  v28 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_113_0();
  v10 = OUTLINED_FUNCTION_11_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_84_1();
  v14 = v13(v12);
  OUTLINED_FUNCTION_91(v14, &qword_1EDBB0730);
  OUTLINED_FUNCTION_92();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v27 + 8))(v1, v28);
    OUTLINED_FUNCTION_90();
    sub_1D7F9E7CC(&v29, &qword_1ECA0E650, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_112_0();
  v15 = OUTLINED_FUNCTION_11_0();
  v17 = v16(v15);
  if (!v17)
  {
    v22 = OUTLINED_FUNCTION_18_14();
    v23(v22);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    goto LABEL_9;
  }

  if (!*(v17 + 16))
  {
    v24 = OUTLINED_FUNCTION_18_14();
    v25(v24);

    goto LABEL_8;
  }

  v18 = OUTLINED_FUNCTION_73();
  sub_1D7F9A248(v18, v19, v26, v3);

  v20 = OUTLINED_FUNCTION_18_14();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
LABEL_9:
  OUTLINED_FUNCTION_100();
}

id sub_1D7F9A8BC()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_41();
  v4 = v1;
  v5 = v2;
  v6 = OUTLINED_FUNCTION_53();
  v7 = v0(v6);

  v8 = OUTLINED_FUNCTION_47_4();
  v9(v8);

  return v7;
}

void BlueprintTableViewDelegate.tableView(_:editingStyleForRowAt:)()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_103_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v23 = v2;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_94();
  v21 = v4;
  OUTLINED_FUNCTION_16();
  v5 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_111();
  v25[0] = v5;
  v25[1] = AssociatedTypeWitness;
  v25[2] = AssociatedConformanceWitness;
  v26 = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_51();
  v22 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21_11();
  v14 = OUTLINED_FUNCTION_110();
  BlueprintProviderType.blueprint.getter(v14, v15);
  Blueprint.subscript.getter();
  (*(v9 + 8))(v0, v7);
  v16 = (*(v23 + 16))(v21, v5, AssociatedTypeWitness);
  OUTLINED_FUNCTION_91(v16, &qword_1EDBB0730);
  OUTLINED_FUNCTION_92();
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v24, v25);
    v17 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v18 = OUTLINED_FUNCTION_161();
    v19(v18, v17);
    (*(v12 + 8))(v5, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_90();
    (*(v12 + 8))(v5, v22, v20);
    sub_1D7F9E7CC(v24, &qword_1ECA0E650, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F9ACE8(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v9 = a3;
  v10 = a1;
  BlueprintTableViewDelegate.tableView(_:editingStyleForRowAt:)();
  v12 = v11;

  (*(v6 + 8))(v8, v5);
  return v12;
}

void BlueprintTableViewDelegate.tableView(_:willBeginEditingRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v43 = v3;
  v44 = v4;
  v5 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  sub_1D7EA0824();
  v13 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_0_73();
  sub_1D7E54930(0, v18, v19, MEMORY[0x1E69E6720]);
  v21 = OUTLINED_FUNCTION_50(v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_125_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_123_1();
  OUTLINED_FUNCTION_3_7();
  v27 = v0 + *(v26 + 208);
  OUTLINED_FUNCTION_8_4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 8))(ObjectType, v28);
    swift_unknownObjectRelease();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  }

  (*(v7 + 16))(v2, v44, v5);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v5);
  v33 = *(v13 + 48);
  sub_1D7E54838(v1, v17);
  sub_1D7E54838(v2, v17 + v33);
  OUTLINED_FUNCTION_43_0(v17, 1, v5);
  if (v34)
  {
    sub_1D7E73334(v2);
    sub_1D7E73334(v1);
    OUTLINED_FUNCTION_43_0(v17 + v33, 1, v5);
    if (v34)
    {
      sub_1D7E73334(v17);
LABEL_14:
      sub_1D816FB6C(v45);
      if (v46)
      {
        __swift_project_boxed_opaque_existential_1(v45, v46);
        v40 = OUTLINED_FUNCTION_4_1();
        v42 = v41(v40);
        SeparatorView.clearSelections()();

        __swift_destroy_boxed_opaque_existential_1Tm(v45);
      }

      else
      {
        sub_1D7F9E7CC(v45, &qword_1EDBB0090, qword_1EDBB0098, &protocol descriptor for SeparatorViewProviderType);
      }

      goto LABEL_17;
    }

LABEL_12:
    OUTLINED_FUNCTION_7_27();
    sub_1D7F9E310(v17, v35);
    goto LABEL_17;
  }

  sub_1D7E54838(v17, v23);
  OUTLINED_FUNCTION_43_0(v17 + v33, 1, v5);
  if (v34)
  {
    sub_1D7E73334(v2);
    sub_1D7E73334(v1);
    (*(v7 + 8))(v23, v5);
    goto LABEL_12;
  }

  (*(v7 + 32))(v11, v17 + v33, v5);
  OUTLINED_FUNCTION_6_29();
  sub_1D7E2DA70(v36, v37);
  OUTLINED_FUNCTION_74();
  v38 = sub_1D8190ED4();
  v39 = *(v7 + 8);
  v39(v11, v5);
  sub_1D7E73334(v2);
  sub_1D7E73334(v1);
  v39(v23, v5);
  sub_1D7E73334(v17);
  if (v38)
  {
    goto LABEL_14;
  }

LABEL_17:
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F9B1E0()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_41();
  v4 = v1;
  v5 = v2;
  v6 = OUTLINED_FUNCTION_53();
  v0(v6);

  v7 = OUTLINED_FUNCTION_47_4();
  return v8(v7);
}

void BlueprintTableViewDelegate.tableView(_:didEndEditingRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v52 = v2;
  v3 = sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v56 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v54 = v7 - v6;
  OUTLINED_FUNCTION_52_0();
  v55 = sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v53 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_0_73();
  sub_1D7E54930(0, v13, v14, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v15);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v19 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_123_1();
  OUTLINED_FUNCTION_3_7();
  v27 = v0 + *(v26 + 208);
  OUTLINED_FUNCTION_8_4();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v46 = OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v46, v47, 1, v19);
    goto LABEL_5;
  }

  v28 = *(v27 + 8);
  ObjectType = swift_getObjectType();
  (*(v28 + 8))(ObjectType, v28);
  swift_unknownObjectRelease();
  v30 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_43_0(v30, v31, v19);
  if (v32)
  {
LABEL_5:
    sub_1D7E73334(v18);
    goto LABEL_6;
  }

  v51 = v3;
  v33 = *(v21 + 32);
  v34 = OUTLINED_FUNCTION_6_16();
  v33(v34);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  v50 = sub_1D8191AB4();
  (*(v21 + 16))(&v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v19);
  v35 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v36 = swift_allocObject();
  v49 = v12;
  v37 = v52;
  *(v36 + 16) = v52;
  (v33)(v36 + v35, &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v57[4] = sub_1D7F9DCA4;
  v57[5] = v36;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 1107296256;
  OUTLINED_FUNCTION_17();
  v57[2] = v38;
  v57[3] = &block_descriptor_21;
  v39 = _Block_copy(v57);
  v40 = v37;

  v41 = v49;
  sub_1D8190BF4();
  v57[0] = MEMORY[0x1E69E7CC0];
  sub_1D7E2DA70(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
  sub_1D7E54930(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7EBCDB4();
  v42 = v51;
  sub_1D8192004();
  OUTLINED_FUNCTION_100_0();
  v43 = v50;
  MEMORY[0x1DA713CE0]();
  _Block_release(v39);

  v44 = OUTLINED_FUNCTION_134_0();
  v45(v44, v42);
  (*(v53 + 8))(v41, v55);
  (*(v21 + 8))(v1, v19);
LABEL_6:
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F9B754(uint64_t a1, uint64_t a2)
{
  sub_1D7E54930(0, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_1D818E994();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  UITableView.selectItem(at:animated:)(v5, 0);
  return sub_1D7E73334(v5);
}

uint64_t sub_1D7F9B85C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1D7E54930(0, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  if (a4)
  {
    sub_1D818E924();
    v10 = sub_1D818E994();
    v11 = 0;
  }

  else
  {
    v10 = sub_1D818E994();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v11, 1, v10);
  v12 = a3;
  v13 = a1;
  BlueprintTableViewDelegate.tableView(_:didEndEditingRowAt:)();

  return sub_1D7E73334(v9);
}

Swift::Void __swiftcall BlueprintTableViewDelegate.scrollViewWillBeginDragging(_:)(UIScrollView *a1)
{
  OUTLINED_FUNCTION_19_11();
  v3 = v1 + *(v2 + 208);
  OUTLINED_FUNCTION_8_4();
  if (!swift_unknownObjectWeakLoadStrong() || (v4 = *(v3 + 8), ObjectType = swift_getObjectType(), (*(v4 + 32))(v6, ObjectType, v4), swift_unknownObjectRelease(), (v6[0] & 1) == 0))
  {
    OUTLINED_FUNCTION_19_11();
    OUTLINED_FUNCTION_8_4();
    if (swift_weakLoadStrong())
    {
      KeyCommandManager.invalidate(clearState:)(1);
    }
  }
}

void sub_1D7F9BA50(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  BlueprintTableViewDelegate.scrollViewWillBeginDragging(_:)(v5);
}

Swift::Void __swiftcall BlueprintTableViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView *_, Swift::Bool willDecelerate)
{
  if (!willDecelerate)
  {
    sub_1D7F91884(_, 3u);
    OUTLINED_FUNCTION_3_7();
    BlueprintImpressionManager.updateImpressions(triggerSource:)();
  }
}

void sub_1D7F9BB14(void *a1, uint64_t a2, void *a3, Swift::Bool a4)
{
  v6 = a3;
  v7 = a1;
  BlueprintTableViewDelegate.scrollViewDidEndDragging(_:willDecelerate:)(v6, a4);
}

Swift::Void __swiftcall BlueprintTableViewDelegate.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_3_7();
  v7 = *((v6 & v5) + 0xE8);
  OUTLINED_FUNCTION_8_4();
  if (*(v2 + v7))
  {

    [(UIScrollView *)a1 contentOffset];
    OUTLINED_FUNCTION_10_19();
    sub_1D7E6DA44(*(v2 + *(v8 + 280)), *(v2 + *(v8 + 280) + 8), *(v2 + *(v8 + 280) + 16), v9, v10);
  }

  [(UIScrollView *)a1 contentOffset];
  OUTLINED_FUNCTION_10_19();
  v12 = v2 + *(v11 + 280);
  *v12 = v13;
  *(v12 + 1) = v14;
  v12[16] = 0;
  v15 = [(UIScrollView *)a1 superview];
  if (v15)
  {
    v16 = v15;
    OUTLINED_FUNCTION_10_19();
    v18 = *(v2 + *(v17 + 168));
    v20 = [v19 coordinateSpace];
    [(UIScrollView *)a1 bounds];
    OUTLINED_FUNCTION_9_0();
    sub_1D7E45D98();
    v21 = OUTLINED_FUNCTION_8_0();
    UIEdgeInsetsInsetRect(v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_9_0();
    v27 = [v16 coordinateSpace];
    v28 = OUTLINED_FUNCTION_8_0();
    [v29 v30];
    OUTLINED_FUNCTION_9_0();
    swift_unknownObjectRelease();

    v31 = OUTLINED_FUNCTION_8_0();
    sub_1D7E4CC00(v32, v33, v31, v34, v35, v36);
    v37 = v18 + *(*v18 + 184);
    *v37 = v48;
    *(v37 + 8) = v49;
    *(v37 + 24) = v50;
    swift_unknownObjectRelease();
  }

  [(UIScrollView *)a1 contentOffset];
  v40 = v38;
  v41 = v39;
  v42 = (v2 + *((*v4 & *v2) + 0x110));
  if ((v42[2] & 1) != 0 || ((v43 = vabdd_f64(*v42, v38), v44 = vabdd_f64(v42[1], v39), v45 = *((*v4 & *v2) + 0x108), OUTLINED_FUNCTION_10(), v46 = *(v2 + v45), v46 >= v43) ? (v47 = v46 < v44) : (v47 = 1), v47))
  {
    *v42 = v40;
    v42[1] = v41;
    *(v42 + 16) = 0;
    sub_1D7F91884(a1, 2u);
    OUTLINED_FUNCTION_10_19();
    BlueprintImpressionManager.updateImpressions(triggerSource:)();
  }
}

void sub_1D7F9BEA0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  BlueprintTableViewDelegate.scrollViewDidScroll(_:)(v4);
}

Swift::Void __swiftcall BlueprintTableViewDelegate.scrollViewDidEndDecelerating(_:)(UIScrollView *a1)
{
  sub_1D7F91884(a1, 3u);
  OUTLINED_FUNCTION_3_7();
  BlueprintImpressionManager.updateImpressions(triggerSource:)();
}

void sub_1D7F9BF68(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  BlueprintTableViewDelegate.scrollViewDidEndDecelerating(_:)(v4);
}

uint64_t sub_1D7F9BFD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v59 = a6;
  v56 = a4;
  v57 = a5;
  v54 = a3;
  v7 = *a2;
  v8 = *MEMORY[0x1E69E7D40];
  v58 = *MEMORY[0x1E69E7D40] & *a2;
  v61 = sub_1D818E994();
  v50 = *(v61 - 8);
  v55 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BlueprintViewAction(0);
  v51 = *(v10 - 8);
  v49 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v12;
  v52 = v7;
  v53 = v8;
  v48 = *((v8 & v7) + 0x70);
  v46 = *((v8 & v7) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for BlueprintItem();
  v38 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v39 = &v37 - v16;
  v47 = sub_1D7E0A1A8(0, &qword_1ECA0E668);
  v45 = BlueprintViewAction.style.getter();
  v18 = a1;
  v42 = a1;
  v19 = BlueprintViewAction.title.getter();
  v43 = v20;
  v44 = v19;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  (*(v14 + 16))(v17, v56, v13);
  sub_1D7F9E1BC(v18, v12);
  v22 = v50;
  (*(v50 + 16))(v60, v57, v61);
  v23 = (*(v14 + 80) + 88) & ~*(v14 + 80);
  v24 = (v15 + *(v51 + 80) + v23) & ~*(v51 + 80);
  v25 = (v49 + *(v22 + 80) + v24) & ~*(v22 + 80);
  v26 = (v55 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v46;
  v28 = v58;
  *(v27 + 24) = *(v58 + 88);
  v30 = v52;
  v29 = v53;
  *(v27 + 40) = *((v53 & v52) + 0x68);
  *(v27 + 48) = v48;
  *(v27 + 56) = *(v28 + 120);
  *(v27 + 72) = *((v29 & v30) + 0x88);
  *(v27 + 80) = v21;
  (*(v14 + 32))(v27 + v23, v39, v38);
  sub_1D7F9E368(v40, v27 + v24);
  (*(v22 + 32))(v27 + v25, v60, v61);
  *(v27 + v26) = v41;
  v31 = sub_1D80A8AEC(v45, v44, v43, sub_1D7F9E458, v27);
  v32 = BlueprintViewAction.attributes.getter();
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = (v32 + 40);
    do
    {
      if (*v34)
      {
        v35 = &selRef_setBackgroundColor_;
        if (*v34 != 1)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v35 = &selRef_setImage_;
      }

      [v31 *v35];
LABEL_8:
      v34 += 16;
      --v33;
    }

    while (v33);
  }

  *v59 = v31;
  return result;
}

uint64_t sub_1D7F9C4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v70 = a7;
  v71 = a8;
  v68 = a6;
  v77 = a4;
  v74 = a3;
  v75 = a10;
  v76 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v82 = swift_getAssociatedConformanceWitness();
  v63 = type metadata accessor for Blueprint();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v53 - v17;
  v69 = sub_1D818E994();
  v66 = *(v69 - 8);
  v18 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BlueprintViewAction(0);
  v64 = *(v19 - 8);
  v20 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v65 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BlueprintViewAction.Action(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for BlueprintItem();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v53 - v26;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return v74();
  }

  v29 = Strong;
  v73 = a17;
  v58 = a16;
  v57 = a15;
  v72 = a13;
  v54 = a12;
  v53 = a11;
  v60 = a9;
  v59 = type metadata accessor for BlueprintViewActionRequest();
  v30 = *(v25 + 16);
  v56 = v27;
  v30(v27, v68, v24);
  v55 = v23;
  v31 = v70;
  BlueprintViewAction.action.getter(v23);
  v78[0] = 2;
  v32 = swift_allocObject();
  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v34 = v65;
  sub_1D7F9E1BC(v31, v65);
  v35 = v66;
  v36 = v67;
  v37 = v69;
  (*(v66 + 16))(v67, v71, v69);
  v38 = (*(v64 + 80) + 104) & ~*(v64 + 80);
  v39 = (v20 + *(v35 + 80) + v38) & ~*(v35 + 80);
  v40 = swift_allocObject();
  v41 = v53;
  *(v40 + 2) = v75;
  *(v40 + 3) = v41;
  v42 = v72;
  *(v40 + 4) = v54;
  *(v40 + 5) = v42;
  v43 = v57;
  *(v40 + 6) = v76;
  *(v40 + 7) = v43;
  v45 = v73;
  v44 = v74;
  *(v40 + 8) = v58;
  *(v40 + 9) = v45;
  *(v40 + 10) = v32;
  *(v40 + 11) = v44;
  *(v40 + 12) = v77;
  sub_1D7F9E368(v34, &v40[v38]);
  v46 = v36;
  v47 = v60;
  (*(v35 + 32))(&v40[v39], v46, v37);
  *&v40[(v18 + v39 + 7) & 0xFFFFFFFFFFFFFFF8] = v47;
  v48 = BlueprintViewActionRequest.__allocating_init(item:action:source:sourceView:completion:)(v56, v55, v78, 0, sub_1D7F9E638, v40);
  swift_beginAccess();
  v49 = swift_unknownObjectWeakLoadStrong();
  if (v49)
  {
    v50 = v49;

    v51 = v61;
    BlueprintProviderType.blueprint.getter(v75, v76);
    (*(v73 + 72))(v51, v48, v72);

    return (*(v62 + 8))(v51, v63);
  }

  else
  {
  }
}

void sub_1D7F9CB98(int a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v58 = a8;
  v19 = sub_1D8190BD4();
  v63 = *(v19 - 8);
  v64 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v61 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D8190C34();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D8190C64();
  v59 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v50 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v56 = a4;
    HIDWORD(v55) = a1;
    if ((a1 & 1) != 0 && BlueprintViewAction.style.getter())
    {
      v29 = swift_unknownObjectUnownedLoadStrong();
      v30 = sub_1D818E8E4();
      v31 = [v29 cellForRowAtIndexPath_];
      v54 = a3;
      v32 = v31;

      LOBYTE(aBlock[0]) = 1;
      BlueprintImpressionManager.endImpression(at:view:triggerSource:)(a6, v32, aBlock, v33, v34, v35, v36, v37, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);

      a3 = v54;
    }

    if (BlueprintViewAction.style.getter())
    {
      v54 = a3;
      v53 = a13;
      v52 = a12;
      v51 = a11;
      v50 = a10;
      v38 = *((*MEMORY[0x1E69E7D40] & *v28) + 0xE0);
      swift_beginAccess();
      v39 = *(v28 + v38);
      if (v39)
      {
        *(v39 + 16) = 0;

        sub_1D7F81AA4();
      }

      sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
      v40 = sub_1D8191AB4();
      sub_1D8190C54();
      sub_1D8190C94();
      v59 = *(v59 + 8);
      (v59)(v23, v65);
      v41 = swift_allocObject();
      swift_beginAccess();
      v42 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v43 = swift_allocObject();
      v43[2] = v58;
      v43[3] = a9;
      v44 = v51;
      v43[4] = v50;
      v43[5] = v44;
      v45 = v53;
      v43[6] = v52;
      v43[7] = v45;
      v43[8] = a14;
      v43[9] = a15;
      v43[10] = v41;
      aBlock[4] = sub_1D7F9E764;
      aBlock[5] = v43;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7E64940;
      aBlock[3] = &block_descriptor_58;
      v46 = _Block_copy(aBlock);

      v47 = v57;
      sub_1D8190BF4();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D7E2DA70(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
      sub_1D7E54930(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D7EBCDB4();
      v48 = v61;
      v49 = v64;
      sub_1D8192004();
      MEMORY[0x1DA713CA0](v26, v47, v48, v46);
      _Block_release(v46);

      (*(v63 + 8))(v48, v49);
      (*(v60 + 8))(v47, v62);
      (v59)(v26, v65);
      a3 = v54;
    }

    (a3)(BYTE4(v55) & 1);
  }

  else
  {
    a3();
  }
}

void sub_1D7F9D1EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0xE0);
    swift_beginAccess();
    v3 = *&v1[v2];
    if (v3)
    {

      *(v3 + 16) = 1;
      sub_1D7F81AA4();
    }

    else
    {
    }
  }
}

id BlueprintTableViewDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BlueprintTableViewDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7F9D34C(uint64_t a1)
{
  OUTLINED_FUNCTION_48_0();
  (*(v2 + 8))(v3 + v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_48_0();
  (*(v5 + 8))(a1 + v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_48_0();
  (*(v7 + 8))(a1 + v8);
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1DA715E30](a1 + *(v9 + 184));
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_weakDestroy();
  OUTLINED_FUNCTION_1();
  sub_1D7E166A0(a1 + *(v11 + 208));
  OUTLINED_FUNCTION_1();
  MEMORY[0x1DA715E30](a1 + *(v12 + 216));
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();
  sub_1D7F9E7CC(a1 + *(v14 + 288), &qword_1EDBB7AF0, qword_1EDBB7AF8, &protocol descriptor for KeyboardInputMonitorType);
  OUTLINED_FUNCTION_1();
  __swift_destroy_boxed_opaque_existential_1Tm(a1 + *(v15 + 296));
  OUTLINED_FUNCTION_1();
  MEMORY[0x1DA715E30](a1 + *(v16 + 304));
  OUTLINED_FUNCTION_1();
}

uint64_t (*sub_1D7F9D61C(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintTableViewDelegate.delegate.modify();
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D7F9D680(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintTableViewDelegate.keyCommandManager.modify();
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D7F9D6E4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintTableViewDelegate.selectionProvider.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D7F9D748(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintTableViewDelegate.viewportMonitor.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D7F9D7AC(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintTableViewDelegate.dragReorderDelegate.modify();
  return sub_1D7F413B4;
}

void BlueprintTableViewDelegate.blueprintInfiniteScrollManager(_:didCompleteRequestForIdentifier:)()
{
  OUTLINED_FUNCTION_19_11();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1D7F91884(Strong, 1u);
  }

  else
  {
    v2 = sub_1D81919C4();
    OUTLINED_FUNCTION_11_19(v2, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D819FAB0;
    OUTLINED_FUNCTION_19_11();
    v5 = (v0 + *(v4 + 320));
    v7 = *v5;
    v6 = v5[1];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = sub_1D7E13BF4();
    *(v3 + 32) = v7;
    *(v3 + 40) = v6;
    sub_1D7E0A1A8(0, &qword_1EDBBE110);
    sub_1D8190DB4();
    v9 = sub_1D8191E44();
    sub_1D818FD44();
  }
}

Swift::Void __swiftcall BlueprintTableViewDelegate.traitCollectionDidChange(_:traitCollection:)(UITraitCollection_optional _, UITraitCollection traitCollection)
{
  v4 = *&_.is_nil;
  isa = _.value.super.isa;
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_28_1();
  (*(v10 + 16))(v3, &v2[*((v9 & v8) + 0xA0)], v6);
  sub_1D7E069F0(0, qword_1EDBB62F8);
  if (swift_dynamicCast())
  {
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(isa, v4, ObjectType);
    swift_unknownObjectRelease();
  }
}

unint64_t sub_1D7F9DB88()
{
  result = qword_1EDBAE420;
  if (!qword_1EDBAE420)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBAE420);
  }

  return result;
}

uint64_t sub_1D7F9DBE4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D7F94B74(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D7F9DC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1D8192634() & 1;
  }
}

uint64_t sub_1D7F9DCA4()
{
  v1 = sub_1D818E994();
  OUTLINED_FUNCTION_50(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1D7F9B754(v3, v4);
}

uint64_t sub_1D7F9DD04()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1D7F9DFB4()
{
  OUTLINED_FUNCTION_93_0();
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0);
  return sub_1D8191CC4() & 1;
}

void sub_1D7F9E010()
{
  if (!qword_1EDBAE3C0)
  {
    sub_1D7F9E2C0(255, &qword_1EDBBC418, &type metadata for FloatingTabBarAccessory, MEMORY[0x1E69D6AD8]);
    sub_1D7F9E0B4(&qword_1EDBB1FB8);
    v0 = sub_1D8192344();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE3C0);
    }
  }
}

uint64_t sub_1D7F9E0B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_37_6();
    sub_1D7F9E2C0(255, v3, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7F9E1BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlueprintViewAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7F9E220()
{
  if (!qword_1EDBAE620)
  {
    type metadata accessor for BlueprintViewAction.Action(255);
    sub_1D7F9E2C0(255, &qword_1EDBAE5F8, &type metadata for BlueprintViewAction.Attribute, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDBAE620);
    }
  }
}

void sub_1D7F9E2C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D7F9E310(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D7F9E368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlueprintViewAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7F9E3F0()
{
  if (!qword_1ECA0E670)
  {
    sub_1D818E994();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0E670);
    }
  }
}

uint64_t sub_1D7F9E458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = *(v4 + 16);
  v9 = *(v4 + 40);
  v8 = *(v4 + 48);
  v23 = *(v4 + 56);
  v24 = *(v4 + 24);
  v10 = *(v4 + 72);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_74();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_15_15(v11);
  v13 = (*(v12 + 80) + 88) & ~*(v12 + 80);
  v15 = *(v14 + 64);
  v16 = type metadata accessor for BlueprintViewAction(0);
  OUTLINED_FUNCTION_15_15(v16);
  v18 = (v13 + v15 + *(v17 + 80)) & ~*(v17 + 80);
  v19 = sub_1D818E994();
  OUTLINED_FUNCTION_15_15(v19);
  OUTLINED_FUNCTION_120_0();
  return sub_1D7F9C4E4(a1, a2, a3, a4, *(v4 + 80), v4 + v13, v4 + v18, v4 + v21, *(v4 + (v20 & 0xFFFFFFFFFFFFFFF8)), v7, v24, *(&v24 + 1), v9, v8, v23, *(&v23 + 1), v10);
}

__n128 sub_1D7F9E638(int a1)
{
  v3 = *(v1 + 16);
  v14 = *(v1 + 24);
  v12 = *(v1 + 56);
  v13 = *(v1 + 40);
  v4 = *(v1 + 72);
  v5 = type metadata accessor for BlueprintViewAction(0);
  OUTLINED_FUNCTION_15_15(v5);
  v7 = (*(v6 + 80) + 104) & ~*(v6 + 80);
  v8 = sub_1D818E994();
  OUTLINED_FUNCTION_15_15(v8);
  OUTLINED_FUNCTION_120_0();
  sub_1D7F9CB98(a1, *(v1 + 80), *(v1 + 88), *(v1 + 96), v1 + v7, v1 + v10, *(v1 + (v9 & 0xFFFFFFFFFFFFFFF8)), v3, v14, *(&v14 + 1), v13, *(&v13 + 1), v12, *(&v12 + 1), v4);
  return result;
}

uint64_t sub_1D7F9E7CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7F94B74(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t CollectionViewListCell.hasBeenTraversed.getter()
{
  v1 = qword_1EDBB8BD0;
  OUTLINED_FUNCTION_1_0();
  return *(v0 + v1);
}

unint64_t CollectionViewListCell.selectionBehavior.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = qword_1EDBB8BC0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;
  return sub_1D7F25F40(v4);
}

unint64_t sub_1D7F9E9C4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EDBB8BC0;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return sub_1D7F25F40(v5);
}

uint64_t sub_1D7F9EA20(unint64_t *a1)
{
  v2 = *a1;
  sub_1D7F25F40(v2);
  return CollectionViewListCell.selectionBehavior.setter(&v2);
}

uint64_t CollectionViewListCell.selectionBehavior.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

id CollectionViewListCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id CollectionViewListCell.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_16_1()) initWithCoder_];

  return v1;
}

void CollectionViewListCell.init(coder:)()
{
  v1 = qword_1EDBB8BE8;
  v2 = objc_allocWithZone(type metadata accessor for SelectedBackgroundView());
  *(v0 + v1) = OUTLINED_FUNCTION_4(v2, sel_initWithFrame_);
  v3 = qword_1EDBB8B88;
  sub_1D7E40308();
  v5 = v4;
  *(v0 + v3) = [objc_allocWithZone(v4) init];
  v6 = qword_1EDBB8BD8;
  *(v0 + v6) = [objc_allocWithZone(v5) init];
  v7 = qword_1EDBB8BC8;
  *(v0 + v7) = [objc_allocWithZone(v5) init];
  v8 = qword_1EDBB8B98;
  *(v0 + v8) = [objc_allocWithZone(v5) init];
  *(v0 + qword_1EDBB8BD0) = 0;
  *(v0 + qword_1EDBB8BC0) = 0x8000000000000008;
  v9 = qword_1EDBB8BA0;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  *(v0 + qword_1EDBB8BB0) = 0;
  v10 = (v0 + qword_1EDBB8BB8);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + qword_1EDBB8BE0) = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall CollectionViewListCell.prepareForReuse()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v4 = qword_1EDBB8BA0;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = v3;

  v6 = *&v1[qword_1EDBB8BA8];
  sub_1D7E0631C(0, qword_1EDBBA428);
  v7 = v6;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v38, v41);
    v8 = v42;
    v9 = v43;
    __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v10 = (*(v9 + 24))(&v38, v8, v9);
    if (*v11 == -1)
    {
      goto LABEL_17;
    }

    ++*v11;
    v10(&v38, 0);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_1D7E9DD24(&v38, &qword_1EDBBA420, qword_1EDBBA428);
  }

  v37.receiver = v1;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, sel_prepareForReuse);
  sub_1D8191BB4();
  CollectionViewListCell.isSelected.setter(0);
  CollectionViewListCell.isHighlighted.setter(0);
  v12 = qword_1EDBB8BD0;
  swift_beginAccess();
  v1[v12] = 0;
  CollectionViewListCell.isSwiped.setter(0);
  v13 = &v1[qword_1EDBB8BB8];
  v14 = *&v1[qword_1EDBB8BB8];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_1D7E0E10C(v14);
  v15 = [v1 contentView];
  v16 = [v15 subviews];

  sub_1D7F9F0F0();
  OUTLINED_FUNCTION_16_1();
  v17 = sub_1D8191314();

  v18 = sub_1D7E36AB8(v17);
  if (!v18)
  {
LABEL_15:

    return;
  }

  v19 = v18;
  if (v18 >= 1)
  {
    v20 = 0;
    v21 = &qword_1EDBB36D8;
    v22 = v17 & 0xC000000000000001;
    v23 = &protocol descriptor for Reusable;
    v36 = v17 & 0xC000000000000001;
    do
    {
      if (v22)
      {
        v24 = MEMORY[0x1DA714420](v20, v17);
      }

      else
      {
        v24 = *(v17 + 8 * v20 + 32);
      }

      v25 = v24;
      sub_1D7E0631C(0, v21);
      v26 = v25;
      if (swift_dynamicCast())
      {
        sub_1D7E05450(&v38, v41);
        v27 = v19;
        v28 = v17;
        v29 = v15;
        v30 = v23;
        v31 = v21;
        v33 = v42;
        v32 = v43;
        __swift_project_boxed_opaque_existential_1(v41, v42);
        v34 = *(v32 + 16);
        v35 = v32;
        v21 = v31;
        v23 = v30;
        v15 = v29;
        v17 = v28;
        v19 = v27;
        v22 = v36;
        v34(v33, v35);

        __swift_destroy_boxed_opaque_existential_1Tm(v41);
      }

      else
      {

        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        sub_1D7E9DD24(&v38, &qword_1EDBAE678, v21);
      }

      ++v20;
    }

    while (v19 != v20);
    goto LABEL_15;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

unint64_t sub_1D7F9F0F0()
{
  result = qword_1EDBB2FC0;
  if (!qword_1EDBB2FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB2FC0);
  }

  return result;
}

void sub_1D7F9F134(void *a1)
{
  v1 = a1;
  CollectionViewListCell.prepareForReuse()();
}

void (*CollectionViewListCell.isSelected.modify(objc_super **a1))(objc_super **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[3].receiver = v1;
  ObjectType = swift_getObjectType();
  v3[3].super_class = ObjectType;
  v3->receiver = v1;
  v3->super_class = ObjectType;
  LOBYTE(v3[4].receiver) = [(objc_super *)v3 isSelected];
  return sub_1D7F9F1FC;
}

void sub_1D7F9F1FC(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver_low = LOBYTE((*a1)[4].receiver);
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v6 = *a1;
  if (a2)
  {
    v6[1].receiver = receiver;
    v6[1].super_class = super_class;
    objc_msgSendSuper2(v6 + 1, sel_setSelected_, receiver_low);
  }

  else
  {
    v6[2].receiver = receiver;
    v6[2].super_class = super_class;
    objc_msgSendSuper2(v6 + 2, sel_setSelected_, receiver_low);
    sub_1D7E9D67C();
  }

  free(v2);
}

void sub_1D7F9F268(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  CollectionViewListCell.isHighlighted.setter(a3);
}

uint64_t (*CollectionViewListCell.isHighlighted.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = CollectionViewListCell.isHighlighted.getter() & 1;
  return sub_1D7F9F308;
}

uint64_t CollectionViewListCell.isSwiped.getter()
{
  v1 = qword_1EDBB8B90;
  OUTLINED_FUNCTION_1_0();
  return *(v0 + v1);
}

uint64_t sub_1D7F9F364@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EDBB8B90;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t CollectionViewListCell.isSwiped.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t sub_1D7F9F424(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void *CollectionViewListCell.tsaxAccessibilityLabelForReordering.getter()
{
  v1 = *(v0 + qword_1EDBB8BA8);
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v1;
    v4 = [v2 tsaxAccessibilityLabelForReordering];
    if (v4)
    {
      v5 = v4;
      v2 = sub_1D8190F14();
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

uint64_t CollectionViewListCell.forwardsAccessibilityLabelFromView.getter()
{
  v1 = qword_1EDBB8BE0;
  OUTLINED_FUNCTION_1_0();
  return *(v0 + v1);
}

id sub_1D7F9F598(void *a1)
{
  v1 = a1;
  CollectionViewListCell.accessibilityLabel.getter();
  v3 = v2;

  if (v3)
  {
    v4 = sub_1D8190EE4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t CollectionViewListCell.accessibilityLabel.getter()
{
  ObjectType = swift_getObjectType();
  v2 = qword_1EDBB8BE0;
  OUTLINED_FUNCTION_8_20();
  if (v0[v2] == 1)
  {
    v3 = [*&v0[qword_1EDBB8BA8] accessibilityLabel];
  }

  else
  {
    v8.receiver = v0;
    v8.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v8, sel_accessibilityLabel);
  }

  v4 = v3;
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1D8190F14();

  return v6;
}

void sub_1D7F9F6CC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1D8190F14();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  CollectionViewListCell.accessibilityLabel.setter(v4, v6);
}

void CollectionViewListCell.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = qword_1EDBB8BE0;
  OUTLINED_FUNCTION_8_20();
  if (v2[v5] == 1)
  {
    v6 = *&v2[qword_1EDBB8BA8];
    if (a2)
    {
      sub_1D8190DB4();
      v7 = sub_1D8190EE4();
    }

    else
    {
      v7 = 0;
    }

    [v6 setAccessibilityLabel_];
  }

  if (a2)
  {
    v8 = sub_1D8190EE4();
  }

  else
  {
    v8 = 0;
  }

  v9.receiver = v2;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_setAccessibilityLabel_, v8);
}

void (*CollectionViewListCell.accessibilityLabel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CollectionViewListCell.accessibilityLabel.getter();
  a1[1] = v3;
  return sub_1D7F9F88C;
}

void sub_1D7F9F88C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {
    sub_1D8190DB4();
    CollectionViewListCell.accessibilityLabel.setter(v3, v2);
  }

  else
  {
    CollectionViewListCell.accessibilityLabel.setter(*a1, v2);
  }
}

id sub_1D7F9F900(void *a1)
{
  v1 = a1;
  v2 = CollectionViewListCell.accessibilityAttributedLabel.getter();

  return v2;
}

id CollectionViewListCell.accessibilityAttributedLabel.getter()
{
  ObjectType = swift_getObjectType();
  v2 = qword_1EDBB8BE0;
  OUTLINED_FUNCTION_8_20();
  if (v0[v2] == 1)
  {
    v3 = [*&v0[qword_1EDBB8BA8] accessibilityAttributedLabel];
  }

  else
  {
    v5.receiver = v0;
    v5.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v5, sel_accessibilityAttributedLabel);
  }

  return v3;
}

void sub_1D7F9F9DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CollectionViewListCell.accessibilityAttributedLabel.setter();
}

void CollectionViewListCell.accessibilityAttributedLabel.setter()
{
  OUTLINED_FUNCTION_16_1();
  ObjectType = swift_getObjectType();
  v3 = qword_1EDBB8BE0;
  OUTLINED_FUNCTION_8_20();
  if (v1[v3])
  {
    [*&v1[qword_1EDBB8BA8] setAccessibilityAttributedLabel_];
  }

  v4.receiver = v1;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_setAccessibilityAttributedLabel_, v0);
}

void (*CollectionViewListCell.accessibilityAttributedLabel.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = CollectionViewListCell.accessibilityAttributedLabel.getter();
  return sub_1D7F9FB04;
}

void sub_1D7F9FB04(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    CollectionViewListCell.accessibilityAttributedLabel.setter();
  }

  else
  {
    CollectionViewListCell.accessibilityAttributedLabel.setter();
  }
}

id CollectionViewListCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7F9FBA4(uint64_t a1)
{
  sub_1D7E9B848(*(a1 + qword_1EDBB8BC0));

  v2 = *(a1 + qword_1EDBB8BB8);

  return sub_1D7E0E10C(v2);
}

uint64_t CollectionViewListCell.keyCommandBlocks.getter()
{
  v9 = MEMORY[0x1E69E7CC0];
  v7 = *(v0 + qword_1EDBB8BA8);
  sub_1D7E0631C(0, &qword_1EDBB6760);
  v1 = v7;
  if (OUTLINED_FUNCTION_13_16())
  {
    sub_1D7E05450(v6, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v2 = OUTLINED_FUNCTION_4_1();
    v4 = v3(v2);
    sub_1D7F0A4EC(v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    sub_1D7E9DD24(v6, &qword_1EDBB6758, &qword_1EDBB6760);
  }

  return v9;
}

uint64_t CollectionViewListCell.isHighlightable.getter()
{
  OUTLINED_FUNCTION_17_13();
  sub_1D7E0631C(0, qword_1EDBBA0F0);
  v1 = v0;
  if (OUTLINED_FUNCTION_13_16())
  {
    sub_1D7E05450(v6, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v2 = OUTLINED_FUNCTION_4_1();
    v4 = v3(v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    sub_1D7E9DD24(v6, &unk_1EDBBA0E0, qword_1EDBBA0F0);
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t (*sub_1D7F9FEEC(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = CollectionViewListCell.isHighlighted.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t CollectionViewListCell.isSelectable.getter()
{
  OUTLINED_FUNCTION_17_13();
  sub_1D7E0631C(0, qword_1EDBBB350);
  v1 = v0;
  if (OUTLINED_FUNCTION_13_16())
  {
    sub_1D7E05450(v6, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v2 = OUTLINED_FUNCTION_4_1();
    v4 = v3(v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    sub_1D7E9DD24(v6, &unk_1EDBBB340, qword_1EDBBB350);
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t (*sub_1D7FA00AC(objc_super ***a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = CollectionViewListCell.isSelected.modify(v2);
  return sub_1D7F413B4;
}

id CollectionViewListCell.traversedDisposerToken.getter()
{
  v1 = qword_1EDBB8BA0;
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t (*sub_1D7FA0154(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = CollectionViewListCell.hasBeenTraversed.modify();
  return sub_1D7F41FE0;
}

uint64_t CollectionViewListCell.registerForChanges(block:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EDBB8BB8);
  v4 = *(v2 + qword_1EDBB8BB8);
  *v3 = a1;
  v3[1] = a2;
  sub_1D7E0E10C(v4);
}

uint64_t CollectionViewListCell<>.blueprintViewportMonitor(_:viewportScrollDataDidChange:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t CollectionViewListCell<>.blueprintViewportMonitor(_:viewportMotionDataDidChange:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t CollectionViewListCell<>.blueprintViewportMonitor(_:viewportMotionEnabled:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t CollectionViewListCell<>.blueprintViewportMonitor(_:willDisplayCellWith:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t CollectionViewListCell<>.blueprintViewportMonitor(_:didEndDisplayingCellWith:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_8();
  return v0();
}

uint64_t RestoreViewportBlueprintBookmarkApplicator.__allocating_init(blueprintLayoutProvider:blueprintViewProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RestoreViewportBlueprintBookmarkApplicator.init(blueprintLayoutProvider:blueprintViewProvider:)(a1, a2);
  return v4;
}

uint64_t RestoreViewportBlueprintBookmarkApplicator.deinit()
{
  OUTLINED_FUNCTION_3_0();
  (*(v1 + 8))(v0 + v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RestoreViewportBlueprintBookmarkApplicator.__deallocating_deinit()
{
  RestoreViewportBlueprintBookmarkApplicator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7FA06E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1D818E994();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for RestoreViewportBlueprintBookmarkApplicator.RestoreContext();
  *(a2 + *(result + 52)) = a3;
  return result;
}

uint64_t RestoreViewportBlueprintBookmarkApplicator.prepare(bookmark:context:)@<X0>(const void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v53 = v6;
  OUTLINED_FUNCTION_0_74();
  sub_1D7FA1AAC(0, v7, v8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v48 - v13;
  sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v50 = v15;
  v51 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v48 - v18;
  memcpy(__dst, a1, sizeof(__dst));
  v19 = *(v6 + 80);
  v20 = *(v6 + 96);
  BlueprintLayoutProviderType.layoutBlueprint.getter(v19, v20);
  v21 = OUTLINED_FUNCTION_8_21();
  v22 = OUTLINED_FUNCTION_8_21();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v59[0] = v21;
  v59[1] = v22;
  v59[2] = AssociatedConformanceWitness;
  v59[3] = v24;
  v25 = type metadata accessor for BlueprintLayout();
  OUTLINED_FUNCTION_1_54();
  swift_getWitnessTable();
  LOBYTE(v6) = sub_1D8191874();
  OUTLINED_FUNCTION_3_0();
  result = (*(v26 + 8))(v60, v25);
  if ((v6 & 1) == 0)
  {
    memcpy(v59, __dst, sizeof(v59));
    result = sub_1D7FA0BEC(v59);
    if (result != 1)
    {
      memcpy(v60, v59, 0x80uLL);
      sub_1D7FA0C04(v59[4], v11);
      sub_1D7EE5A18();
      v29 = v28;
      OUTLINED_FUNCTION_10_23(v11);
      if (v30)
      {
        v33 = v54;
        sub_1D7FA0C04(v59[5], v54);
        OUTLINED_FUNCTION_10_23(v11);
        if (!v30)
        {
          OUTLINED_FUNCTION_0_74();
          sub_1D7FA1A54(v11, v31, v32);
        }
      }

      else
      {
        v33 = v54;
        sub_1D7FA10E0(v11, v54);
        __swift_storeEnumTagSinglePayload(v33, 0, 1, v29);
      }

      OUTLINED_FUNCTION_10_23(v33);
      if (!v30)
      {
        v36 = (v33 + *(v29 + 48));
        v37 = *v36;
        v38 = v36[1];
        v39 = v49;
        v40 = *(v50 + 32);
        v41 = v33;
        v42 = v51;
        v40(v49, v41, v51);
        v43 = sub_1D7FA0F38(v3, v60, v37, v38);
        v44 = v52;
        v40(v52, v39, v42);
        v45 = *(v53 + 88);
        v46 = *(v53 + 104);
        v55 = v19;
        v56 = v45;
        v57 = v20;
        v58 = v46;
        *(a2 + 24) = type metadata accessor for RestoreViewportBlueprintBookmarkApplicator.RestoreContext();
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
        return sub_1D7FA06E0(v44, boxed_opaque_existential_0, v43);
      }

      OUTLINED_FUNCTION_0_74();
      result = sub_1D7FA1A54(v33, v34, v35);
    }
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1D7FA0BEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D7FA0C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D7FA1AAC(0, &unk_1EDBBC660, sub_1D7EE5A18);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  sub_1D7EE5A18();
  v10 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v28 = &v25 - v13;
  v14 = 0;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  while (v15 != v14)
  {
    v17 = *(sub_1D818E994() - 8);
    sub_1D7FA1144(a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14, v3, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
    {
      sub_1D7FA1A54(v8, &unk_1EDBBC660, sub_1D7EE5A18);
      ++v14;
    }

    else
    {
      v27 = a2;
      v18 = v28;
      sub_1D7FA10E0(v8, v28);
      sub_1D7FA10E0(v18, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE5150(0, *(v16 + 16) + 1, 1, v16);
        v16 = v22;
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v26 = v20 + 1;
        sub_1D7EE5150(v19 > 1, v20 + 1, 1, v16);
        v21 = v26;
        v16 = v23;
      }

      ++v14;
      *(v16 + 16) = v21;
      sub_1D7FA10E0(v30, v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v20);
      a2 = v27;
    }
  }

  v31 = v16;
  sub_1D8190DB4();
  sub_1D8161818(sub_1D7FA19D8, v3);

  sub_1D7F1E76C();
}

double sub_1D7FA0F38(uint64_t a1, uint64_t a2, double a3, double a4)
{
  BlueprintLayoutProviderType.layoutBlueprint.getter(*(*a1 + 80), *(*a1 + 96));
  v7 = v13[565];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for BlueprintLayout();
  (*(*(v8 - 8) + 8))(v13, v8);
  v9 = 48;
  if (v7)
  {
    v9 = 56;
  }

  v10 = 104;
  if (v7)
  {
    v10 = 96;
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  return v11 - (*(a2 + v9) + *(a2 + v10));
}

uint64_t sub_1D7FA10E0(uint64_t a1, uint64_t a2)
{
  sub_1D7EE5A18();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7FA1144@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v41 = *a2;
  v4 = v41;
  v5 = v41[12];
  v6 = v41[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v40 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for BlueprintLayoutItem();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v40 - v11;
  v42 = v4[14];
  BlueprintLayoutProviderType.layoutBlueprint.getter(v6, v5);
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  *&v50 = v12;
  *(&v50 + 1) = AssociatedTypeWitness;
  *&v51 = v13;
  *(&v51 + 1) = AssociatedConformanceWitness;
  v14 = type metadata accessor for BlueprintLayout();
  v48 = a1;
  LOBYTE(v12) = BlueprintLayout.contains(indexPath:)();
  v15 = *(*(v14 - 8) + 8);
  v15(&v53, v14);
  if ((v12 & 1) == 0)
  {
    sub_1D7EE5A18();
    v23 = v22;
    v24 = v49;
    goto LABEL_9;
  }

  BlueprintLayoutProviderType.layoutBlueprint.getter(v6, v5);
  v16 = v43;
  BlueprintLayout.subscript.getter(v48, v14);
  v15(&v53, v14);
  (*(v44 + 16))(v45, v16, AssociatedTypeWitness);
  sub_1D7FA19F8();
  v17 = v16;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    sub_1D7FA1A54(&v50, &unk_1EDBB0E98, sub_1D7FA19F8);
    v21 = v49;
LABEL_7:
    v25 = (*(v41[13] + 56))(v41[11], v41[13]);
    swift_getAssociatedTypeWitness();
    v26 = swift_getAssociatedConformanceWitness();
    v27 = *(v26 + 88);
    v28 = swift_checkMetadataState();
    v29 = v48;
    v27(&v53, v48, v28, v26);

    (*(v46 + 8))(v17, v47);
    if ((v56 & 1) == 0)
    {
      v33 = v54;
      v34 = v55;
      v50 = v53;
      if (v54 > 0.0 && *&v55 > 0.0)
      {
        sub_1D7EE5A18();
        v36 = v35;
        v37 = v21 + *(v35 + 48);
        v38 = sub_1D818E994();
        (*(*(v38 - 8) + 16))(v21, v29, v38);
        *v37 = v50;
        *(v37 + 16) = v33;
        *(v37 + 24) = v34;
        v24 = v21;
        v31 = 0;
        v23 = v36;
        return __swift_storeEnumTagSinglePayload(v24, v31, 1, v23);
      }
    }

    sub_1D7EE5A18();
    v23 = v30;
    v24 = v21;
LABEL_9:
    v31 = 1;
    return __swift_storeEnumTagSinglePayload(v24, v31, 1, v23);
  }

  sub_1D7E05450(&v50, &v53);
  v18 = v55;
  v19 = v56;
  __swift_project_boxed_opaque_existential_1(&v53, v55);
  v20 = (*(v19 + 8))(v18, v19);
  v21 = v49;
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
    goto LABEL_7;
  }

  (*(v46 + 8))(v16, v47);
  sub_1D7EE5A18();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v39);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v53);
}

BOOL sub_1D7FA16E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v24[0] = a2;
  v4 = *a3;
  sub_1D7EE5A18();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7EB2914(a1, v8, sub_1D7EE5A18);
  v9 = &v8[*(v6 + 56)];
  v10 = *v9;
  v11 = v9[1];
  v12 = sub_1D818E994();
  v13 = *(*(v12 - 8) + 8);
  v13(v8, v12);
  sub_1D7EB2914(v24[0], v8, sub_1D7EE5A18);
  v14 = &v8[*(v6 + 56)];
  v15 = *v14;
  v16 = v14[1];
  v13(v8, v12);
  BlueprintLayoutProviderType.layoutBlueprint.getter(*(v4 + 80), *(v4 + 96));
  v17 = v25[565];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v24[1] = AssociatedTypeWitness;
  v24[2] = v19;
  v24[3] = AssociatedConformanceWitness;
  v24[4] = v21;
  v22 = type metadata accessor for BlueprintLayout();
  (*(*(v22 - 8) + 8))(v25, v22);
  if (v17)
  {
    return v11 < v16;
  }

  else
  {
    return v10 < v15;
  }
}

unint64_t sub_1D7FA19F8()
{
  result = qword_1EDBB9A28[0];
  if (!qword_1EDBB9A28[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBB9A28);
  }

  return result;
}

uint64_t sub_1D7FA1A54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7FA1AAC(0, a2, a3);
  OUTLINED_FUNCTION_3_0();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1D7FA1AAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

CGSize __swiftcall ShineSizer.size(for:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  if ((~*v1 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_0_75(__PAIR128__(v4, *&a1.width), __PAIR128__(v5, *&a1.height));
    v7 = v6.n128_u64[0];
    OUTLINED_FUNCTION_0_75(v6, v8);
    height = v9;
    width = *&v7;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

void sub_1D7FA1B74(__n128 a1, __n128 a2)
{
  switch(*v2 >> 61)
  {
    case 2:
      v3 = *((*v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v4 = OUTLINED_FUNCTION_0_75(a1, a2);
      v3(v4);
      break;
    case 3:
    case 4:
      return;
    default:
      OUTLINED_FUNCTION_0_75(a1, a2);
      OUTLINED_FUNCTION_0_75(v5, v6);
      OUTLINED_FUNCTION_1_55();
      break;
  }
}

unint64_t sub_1D7FA1D24@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = v9;
  *a3 = v8 | 0x4000000000000000;

  return sub_1D7F38714(v7);
}

unint64_t get_enum_tag_for_layout_string_5TeaUI10ShineSizerO10ExpressionO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t get_enum_tag_for_layout_string_5TeaUI10ShineSizerO(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7B)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D7FA1E14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 16))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7FA1E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = ((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D7FA1EC4(unint64_t *result, unsigned int a2)
{
  if (a2 > 0x7B)
  {
    v3 = a2 - 124;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
    v3 = (v2 | (v2 << 57)) & 0xF000000000000007;
  }

  *result = v3;
  return result;
}

void (*sub_1D7FA1F40(void *a1))(double **a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  [v1 contentInset];
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  v3[3] = v7;
  return sub_1D7FA1FB4;
}

void sub_1D7FA1FB4(double **a1)
{
  v1 = *a1;
  [*(*a1 + 4) setContentInset_];

  free(v1);
}

uint64_t sub_1D7FA2030(void *a1, char a2, double a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(double, double, double, double))
{
  v10 = sub_1D8190EE4();
  if (a2)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  sub_1D7F854E8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D819FAB0;
  v13 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1D7E0A1A8(0, &qword_1EDBB2FE0);
  *(inited + 40) = a1;
  type metadata accessor for Key();
  sub_1D7E4DB28();
  v14 = v13;
  v15 = a1;
  sub_1D8190D94();
  v16 = sub_1D8190D44();

  [v10 boundingRectWithSize:v11 options:v16 attributes:0 context:{a3, 1.79769313e308}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  return a6(v18, v20, v22, v24);
}

double String.textSize(inBoundingSize:with:paragraphStyle:fontTracking:singleLine:)(void *a1, void *a2, char a3, double a4, double a5, double a6)
{
  sub_1D7F854E8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A1B70;
  v12 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v13 = sub_1D7E0A1A8(0, &qword_1EDBB2FE0);
  *(inited + 40) = a1;
  v14 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  v15 = sub_1D7E0A1A8(0, &unk_1EDBB31C0);
  *(inited + 80) = a2;
  v16 = *MEMORY[0x1E69DB660];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  *(inited + 144) = MEMORY[0x1E69E7DE0];
  *(inited + 120) = a6;
  type metadata accessor for Key();
  sub_1D7E4DB28();
  v17 = v12;
  v18 = a1;
  v19 = v14;
  v20 = a2;
  v21 = v16;
  sub_1D8190D94();
  v22 = sub_1D8190EE4();
  if (a3)
  {
    v23 = 32;
  }

  else
  {
    v23 = 33;
  }

  v24 = sub_1D8190D44();

  [v22 boundingRectWithSize:v23 options:v24 attributes:0 context:{a4, a5}];
  v26 = v25;

  return v26;
}

double String.jsonObject()@<D0>(_OWORD *a1@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D8190F74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8190F64();
  v6 = sub_1D8190F24();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 != 15)
  {
    v9 = objc_opt_self();
    v10 = sub_1D818E674();
    v17[0] = 0;
    v11 = [v9 JSONObjectWithData:v10 options:0 error:v17];

    v12 = v17[0];
    if (v11)
    {
      sub_1D8191F34();
      sub_1D7EF4ED0(v6, v8);
      swift_unknownObjectRelease();
      return result;
    }

    v14 = v12;
    v15 = sub_1D818E544();

    swift_willThrow();
    sub_1D7EF4ED0(v6, v8);
  }

  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t BlueprintLayoutTransitionResult.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

void BlueprintLayoutTransitionManager.transitionLayout(blueprintView:layoutOptions:bookmarkManager:animated:completion:)(void *a1, uint64_t a2, const void *a3, uint64_t a4, int a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;
  v99 = a6;
  v100 = a7;
  v96 = a5;
  v95 = a4;
  v11 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v97 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v87 - v17;
  v18 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v24 = (v23 - v22);
  memcpy(v106, a3, sizeof(v106));
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v24 = sub_1D8191AB4();
  (*(v20 + 104))(v24, *MEMORY[0x1E69E8020], v18);
  LOBYTE(a3) = sub_1D8190CA4();
  (*(v20 + 8))(v24, v18);
  if ((a3 & 1) == 0)
  {
    __break(1u);
    return;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
LABEL_17:
    v39 = OUTLINED_FUNCTION_2_55();
    v40(v39);
    return;
  }

  v26 = v25;
  v94 = v11;
  v27 = a1;
  v28 = [v26 collectionViewLayout];
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v28))
  {

    goto LABEL_17;
  }

  v91 = v29;
  v92 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_52();
  v32 = *(v31 + 120);
  if (!*(v8 + v32) || (v33 = v30, memcpy(v105, v106, 0x235uLL), , v34 = sub_1D80D4B60(v105), , (v93 = v34) == 0))
  {
    v37 = OUTLINED_FUNCTION_2_55();
    v38(v37);
    goto LABEL_14;
  }

  v35 = *(v8 + v32);
  if (v35)
  {
    v36 = v93[2] == *(v35 + 16) && v93[3] == *(v35 + 24);
    if (v36 || (sub_1D8192634() & 1) != 0)
    {
      LOBYTE(v105[0]) = 0;
      v99(v105);

LABEL_14:

LABEL_15:
      return;
    }
  }

  v41 = v27;
  [v26 contentSize];
  v43 = v42;
  v45 = v44;
  ObjectType = swift_getObjectType();
  [v33 collectionViewContentSize];
  if (v43 == v48 && v45 == v47)
  {
  }

  else
  {
    [v26 setNeedsLayout];
    [v26 layoutIfNeeded];
    [v26 contentSize];
    v51 = v50;
    v53 = v52;

    [v33 collectionViewContentSize];
    if (v51 != v55 || v53 != v54)
    {
      v57 = OUTLINED_FUNCTION_2_55();
      v58(v57);

      goto LABEL_15;
    }
  }

  v90 = v41;
  *&v105[0] = v33;
  v59 = v91[2](ObjectType);
  v89 = v60;
  OUTLINED_FUNCTION_3_52();
  v62 = *(v8 + *(v61 + 136));
  v88 = swift_getObjectType();
  v63 = v59;
  v62();
  v91 = v63;

  sub_1D7FA2D10(v95, v102);
  v64 = v103;
  if (v103)
  {
    v65 = v104;
    __swift_project_boxed_opaque_existential_1(v102, v103);
    (*(v65 + 16))(v101, v64, v65);
    nullsub_1(v101);
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    memcpy(v105, v101, 0x80uLL);
  }

  else
  {
    sub_1D7FA4F08(v102, &qword_1EDBB65A8, &qword_1EDBB65B0);
    sub_1D7E262C4(v105);
  }

  memcpy(v101, v105, sizeof(v101));
  v66 = v93;
  v67 = sub_1D7FA2D8C(v101, v93);
  v69 = v68;
  v71 = v70;
  sub_1D7E925D0(v105, &qword_1EDBB7DC0);
  sub_1D7E91FA0(v66);
  v72 = v98;
  sub_1D818E784();
  v101[0] = v91;
  v73 = v89;
  (*(v89 + 8))(v88, v89);
  v74 = v71 & 1;
  v75 = v72;
  sub_1D80332F4(v72, v67, v69, v74);

  v76 = v97;
  v77 = v92;
  (*(v97 + 16))(v92, v75, v94);
  v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v79 = (v14 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v91;
  *(v80 + 16) = v91;
  *(v80 + 24) = v73;
  v82 = v94;
  (*(v76 + 32))(v80 + v78, v77, v94);
  v83 = (v80 + v79);
  v84 = v100;
  *v83 = v99;
  v83[1] = v84;
  v101[4] = sub_1D7FA31C4;
  v101[5] = v80;
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 1107296256;
  v101[2] = sub_1D7EB30D4;
  v101[3] = &block_descriptor_22;
  v85 = _Block_copy(v101);
  v86 = v81;

  [v26 setCollectionViewLayout:v86 animated:v96 & 1 completion:v85];
  _Block_release(v85);

  (*(v76 + 8))(v98, v82);
}

uint64_t sub_1D7FA2D10(uint64_t a1, uint64_t a2)
{
  sub_1D7E328A8(0, &qword_1EDBB65A8, &qword_1EDBB65B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7FA2D8C(void *__src, void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_1D7FA0BEC(__dst) == 1)
  {
    return 0;
  }

  v5 = __dst[6];
  v4 = __dst[7];
  v6 = __dst[12];
  if (__dst[7] == -__dst[12])
  {
    return *&__dst[6];
  }

  if (__dst[7] <= 0.0)
  {
    return 0;
  }

  v7 = __dst[14];
  insets = __dst[13];
  v8 = __dst[15];
  v9 = __dst[0] == 0.0;
  v10 = __dst[1] == 0.0;
  if (v9 && v10)
  {
    v11 = __dst[2];
  }

  else
  {
    v11 = __dst[0];
  }

  if (v9 && v10)
  {
    v12 = __dst[3];
  }

  else
  {
    v12 = __dst[1];
  }

  sub_1D818F154();
  memcpy(v26, __srca, sizeof(v26));
  v30.bottom = v7;
  v30.right = v8;
  v29.origin.x = v5;
  v29.origin.y = v4;
  v29.size.width = v11;
  v29.size.height = v12;
  v30.top = v6;
  v30.left = insets;
  v13 = BlueprintLayoutCollection.layoutAttributes(in:offset:insets:)(v29, __PAIR128__(*&v4, *&v5), v30);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v14 >> 62)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB3020);
    sub_1D8190DB4();
    v15 = sub_1D81923B4();
  }

  else
  {
    sub_1D8190DB4();
    sub_1D81926A4();
    sub_1D7E0A1A8(0, &qword_1EDBB3020);
    v15 = v14;
  }

  v16 = sub_1D7FA336C(a2, v15);

  sub_1D7FA39F4(v16, v5, v4, v11, v12);
  v18 = sub_1D7FA3B70(v17);

  if (sub_1D7E36AB8(v18))
  {
    sub_1D7E33DD8(0, (v18 & 0xC000000000000001) == 0, v18);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1DA714420](0, v18);
    }

    else
    {
      v19 = *(v18 + 32);
    }

    v20 = v19;
  }

  else
  {

    v21 = sub_1D7FA3B70(v16);

    if (!sub_1D7E36AB8(v21))
    {

      goto LABEL_29;
    }

    sub_1D7E33DD8(0, (v21 & 0xC000000000000001) == 0, v21);
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1DA714420](0, v21);
    }

    else
    {
      v22 = *(v21 + 32);
    }

    v20 = v22;
  }

  memcpy(v26, __dst, 0x80uLL);
  v23 = sub_1D7FA3C3C(v20, v26, a2);
  if (!v23)
  {

LABEL_29:
    sub_1D7E598FC(__srca);
    return 0;
  }

  v24 = v23;
  [v20 frame];
  [v24 frame];

  sub_1D7E598FC(__srca);
  return 0;
}