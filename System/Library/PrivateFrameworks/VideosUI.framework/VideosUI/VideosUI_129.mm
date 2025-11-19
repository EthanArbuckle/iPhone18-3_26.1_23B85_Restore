id sub_1E40E1060()
{
  v2 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar);
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    type metadata accessor for CategoryFilterBar();
    v5 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 clearColor];
    [v7 setBackgroundColor_];

    [v7 setAlpha_];
    v9 = *(v0 + v2);
    *(v0 + v2) = v7;
    v4 = v7;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

id sub_1E40E1134()
{
  v2 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___queryDescriptionBar;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___queryDescriptionBar);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___queryDescriptionBar);
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    type metadata accessor for QueryDescriptionBar();
    v5 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
    v6 = *(v0 + v2);
    *(v0 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_1E40E11A0()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  OUTLINED_FUNCTION_6_232(&OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar);
  *(v0 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette_descriptionBannerAllowed) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed) = 0;
  *(v0 + *v1) = 0;
  *(v0 + v1[1]) = 0;
  v9 = v2;
  v3 = OUTLINED_FUNCTION_2_0();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v9);
  v7 = sub_1E40E1060();
  [v6 addSubview_];

  return v6;
}

void sub_1E40E1284()
{
  OUTLINED_FUNCTION_6_232(&OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar);
  *(v0 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette_descriptionBannerAllowed) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed) = 0;
  *(v0 + *v1) = 0;
  *(v0 + v1[1]) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E40E1334()
{
  swift_getObjectType();
  v1 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v2, v3, v1);
  v5 = v4;
  if (sub_1E40E1410())
  {
    v6 = sub_1E40E1134();
    v7 = OUTLINED_FUNCTION_6_12();
    [v8 v9];
  }

  v10 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed;
  OUTLINED_FUNCTION_15_0();
  if (*(v0 + v10) == 1)
  {
    v11 = sub_1E40E1060();
    v12 = OUTLINED_FUNCTION_6_12();
    [v13 v14];
  }

  return v5;
}

uint64_t sub_1E40E1410()
{
  v1 = v0;
  result = [objc_opt_self() isSearchEnabled];
  if (result)
  {
    v3 = sub_1E40E1134();
    OUTLINED_FUNCTION_64();
    v5 = (*(v4 + 392))();

    if (v5)
    {
      result = [*(v1 + OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___queryDescriptionBar) superview];
      if (result)
      {

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1E40E1528()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  sub_1E40E1564();
}

void sub_1E40E1564()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed;
  OUTLINED_FUNCTION_5_0();
  if ((v1[v2] & 1) != 0 || (v3 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_descriptionBannerAllowed, OUTLINED_FUNCTION_15_0(), v1[v3] == 1))
  {
    [v1 bounds];
    MinY = CGRectGetMinY(v26);
    if (sub_1E40E1410())
    {
      v5 = sub_1E40E1134();
      v6 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___queryDescriptionBar;
      v7 = *&v1[OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___queryDescriptionBar];
      [v1 bounds];
      [v7 sizeThatFits_];
      v11 = v10;
      v13 = v12;

      [v5 setFrame_];
      [*&v1[v6] frame];
      MinY = MinY + CGRectGetHeight(v27) + 5.0;
      [v1 bringSubviewToFront_];
    }

    v14 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed;
    OUTLINED_FUNCTION_5_0();
    if (v1[v14] == 1)
    {
      v15 = sub_1E40E1060();
      [v1 bounds];
      [v15 sizeThatFits_];
      v19 = v18;
      v21 = v20;

      v22 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar;
      [*&v1[OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar] setFrame_];
      [*&v1[v22] frame];
      CGRectGetHeight(v28);
    }
  }

  else
  {
    if (sub_1E40E1410())
    {
      v23 = sub_1E40E1134();
      OUTLINED_FUNCTION_64();
      (*(v24 + 376))();
    }

    v25 = sub_1E40E1134();
    [v25 removeFromSuperview];
  }
}

void sub_1E40E1804(char a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_descriptionBannerAllowed;
  swift_beginAccess();
  v3[v6] = a1;
  v7 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed;
  swift_beginAccess();
  v3[v7] = a2;
  v8 = sub_1E40E1134();
  v9 = v8;
  if (a1)
  {
    [v3 addSubview_];
  }

  else
  {
    [v8 removeFromSuperview];
  }

  sub_1E40E1564();
  v10 = sub_1E40E1060();
  v11 = v10;
  v12 = 0.0;
  if (a2)
  {
    v12 = 1.0;
  }

  [v10 setAlpha_];

  v13 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar;
  v14 = *&v3[OBJC_IVAR____TtC8VideosUI16SearchBarPalette____lazy_storage___categoryFilterBar];
  v15 = MEMORY[0x1E69E7D40];
  v16 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x90);
  v17 = v14;
  v18 = v16();

  v19 = *(v18 + 16);

  if (v19)
  {
    v20 = *&v3[v13];
    v21 = j__OUTLINED_FUNCTION_18();
    (*((*v15 & *v20) + 0x158))(0, 0, v21 & 1);
  }
}

uint64_t sub_1E40E19FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E40E1A50(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E3A5E46C;
}

id sub_1E40E1AD0()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = v0;
    type metadata accessor for SearchBarPalette();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = sub_1E40E1134();
    OUTLINED_FUNCTION_64();
    v7 = *(v6 + 176);
    v8 = swift_unknownObjectRetain();
    v7(v8, &off_1F5D978C0);

    v9 = *(v3 + 48);
    *(v3 + 48) = v4;
    v2 = v4;

    v1 = 0;
  }

  v10 = v1;
  return v2;
}

void sub_1E40E1B9C(uint64_t a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_1E40E1BD8(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 184))();
  v4 = a1();

  return v4;
}

id sub_1E40E1C30(char a1, char a2, void *a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_8();
  v9 = *(v8 + 184);
  v10 = v9();
  sub_1E40E1804(a1, a2);

  v11 = v9();
  v12 = v11;
  if (a1 & 1) != 0 || (a2)
  {
    v16 = OUTLINED_FUNCTION_15_172();
    if (!v16)
    {
      v17 = [objc_allocWithZone(VUIBaseView) init];
      v16 = [objc_allocWithZone(MEMORY[0x1E69DD5E0]) initWithContentView_];

      [a3 _setBottomPalette_];
    }

    [v12 setAutoresizingMask_];
    result = OUTLINED_FUNCTION_15_172();
    if (result)
    {
      v18 = result;
      [result _setDisplaysWhenSearchActive_];

      result = OUTLINED_FUNCTION_15_172();
      if (result)
      {
        v19 = result;
        v20 = [result contentView];

        [v20 addSubview_];
        v15 = v12;
        v12 = v20;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  [v11 removeFromSuperview];
  v13 = OUTLINED_FUNCTION_15_172();
  if (v13)
  {

    result = OUTLINED_FUNCTION_15_172();
    if (result)
    {
      v15 = result;
      [result setPreferredHeight_];
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_17;
  }

LABEL_12:

  v21 = OUTLINED_FUNCTION_15_172();
  v22 = *(v4 + 40);
  *(v4 + 40) = v21;

  OUTLINED_FUNCTION_111();
  (*(v23 + 240))();

  return sub_1E40E1E6C();
}

uint64_t sub_1E40E1E6C()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 184);
  v4 = v3();
  v5 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_categoryBarAllowed;
  OUTLINED_FUNCTION_5_0();
  LODWORD(v5) = v4[v5];

  if (v5 == 1)
  {
    v6 = v3();
    v7 = OBJC_IVAR____TtC8VideosUI16SearchBarPalette_descriptionBannerAllowed;
    OUTLINED_FUNCTION_5_0();
    LODWORD(v7) = v6[v7];

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = [objc_opt_self() current];
  v10 = [v9 preferredContentSizeCategory];

  sub_1E4205F14();
  OUTLINED_FUNCTION_7_242();
  OUTLINED_FUNCTION_18_139();
  v12 = v12 && v9 == v11;
  if (v12)
  {
    goto LABEL_25;
  }

  v13 = OUTLINED_FUNCTION_0_343();

  if ((v13 & 1) == 0)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_7_242();
    OUTLINED_FUNCTION_18_139();
    if (!v12 || v9 != v15)
    {
      v17 = OUTLINED_FUNCTION_0_343();

      if (v17)
      {
        goto LABEL_9;
      }

      sub_1E4205F14();
      OUTLINED_FUNCTION_7_242();
      OUTLINED_FUNCTION_18_139();
      if (!v12 || v9 != v18)
      {
        v20 = OUTLINED_FUNCTION_0_343();

        if (v20)
        {
          goto LABEL_9;
        }

        sub_1E4205F14();
        OUTLINED_FUNCTION_7_242();
        OUTLINED_FUNCTION_18_139();
        if (!v12 || v9 != v21)
        {
          v14 = OUTLINED_FUNCTION_0_343();
LABEL_26:

          goto LABEL_27;
        }
      }
    }

LABEL_25:
    v14 = 1;
    goto LABEL_26;
  }

LABEL_9:
  v14 = 1;
LABEL_27:
  OUTLINED_FUNCTION_111();
  v24 = (*(v23 + 208))();
  OUTLINED_FUNCTION_64();
  v26 = (*(v25 + 144))();

  v33 = !v26 || (OUTLINED_FUNCTION_8(), v28 = (*(v27 + 1736))(), v29 = , v30 = (*(*v28 + 2048))(v29), v32 = v31, , (v32 & 1) != 0) || v30 != 0;
  v34 = sub_1E39DFFC8();

  if (v14 & ~(v8 | ~v34 | v33))
  {
    OUTLINED_FUNCTION_111();
    v36 = *(v35 + 216);
    v38 = v37;
    v39 = v36();
    type metadata accessor for SearchPaletteScrollHandler();
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    *(v40 + 32) = 1;
    *(v40 + 40) = 0u;
    *(v40 + 56) = 0u;
    *(v40 + 72) = 1;
    *(v40 + 80) = 0u;
    *(v40 + 96) = 0u;
    *(v40 + 112) = 1;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();

    swift_unknownObjectWeakAssign();
  }

  else
  {
    v40 = 0;
  }

  *(v1 + 32) = v40;
}

uint64_t sub_1E40E223C(uint64_t result)
{
  if (*(v1 + 32))
  {
    v2 = result;

    [v2 contentOffset];
    sub_1E40E27B0(v3, v4);
  }

  return result;
}

void sub_1E40E22A0()
{
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 184);
    v4 = v3;
    v5 = v2();
    v15 = v4;
    [v15 bounds];
    CGRectGetWidth(v17);
    v6 = sub_1E40E1334();
    v8 = v7;

    v9 = [v15 bounds];
    v11 = v10;
    v13 = v12;
    v14 = (v2)(v9);
    [v14 setFrame_];

    [v15 frame];
    [v15 setFrame_];

    [v15 setPreferredHeight_];
    [v15 setNeedsLayout];
  }
}

uint64_t sub_1E40E2410()
{
  sub_1E32AF6F8(v0 + 16);

  return v0;
}

uint64_t sub_1E40E2448()
{
  sub_1E40E2410();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1E40E247C()
{
  v0 = swift_allocObject();
  sub_1E40E24B4();
  return v0;
}

void *sub_1E40E24B4()
{
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = 0;
  return v0;
}

uint64_t sub_1E40E24E4()
{
  OUTLINED_FUNCTION_156_0();
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E324FBDC();
  v7 = OUTLINED_FUNCTION_4_36();
  v8(v7);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v12, v13, "SearchBarController: queryDescriptionBarAccessibilityChanged: ");
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_111();
  (*(v14 + 240))();
  return sub_1E40E1E6C();
}

uint64_t sub_1E40E2630()
{
  OUTLINED_FUNCTION_156_0();
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E324FBDC();
  v7 = OUTLINED_FUNCTION_4_36();
  v8(v7);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v12, v13, "SearchBarController: queryDescriptionBarWasTapped");
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_111();
  result = (*(v14 + 112))();
  if (result)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(ObjectType, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E40E27B0(double a1, double a2)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if (*(v2 + 32) == 1)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    *(v2 + 32) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    v13 = Strong;
    v14 = 0uLL;
    v45 = 0u;
    v15 = 0uLL;
    if (Strong)
    {
      [Strong frame];
      v38 = v16;
      v40 = v17;
      v37 = v18;
      v42 = v19;

      *&v15 = v37;
      *&v14 = v38;
      *(&v14 + 1) = v40;
      *(&v15 + 1) = v42;
    }

    *(v2 + 40) = v14;
    *(v2 + 56) = v15;
    *(v2 + 72) = v13 == 0;
    v20 = swift_unknownObjectWeakLoadStrong();
    v21 = v20;
    v22 = 0uLL;
    if (v20)
    {
      [v20 frame];
      v39 = v24;
      v41 = v23;
      v43 = v26;
      v46 = v25;

      *&v22 = v39;
      *&v27 = v46;
      *(&v27 + 1) = v41;
      v45 = v27;
      *(&v22 + 1) = v43;
    }

    *(v2 + 80) = v45;
    *(v2 + 96) = v22;
    *(v2 + 112) = v21 == 0;
    if (*(v2 + 32))
    {
      goto LABEL_11;
    }
  }

  if ((*(v2 + 72) & 1) != 0 || (v28 = swift_unknownObjectWeakLoadStrong()) == 0)
  {
LABEL_11:
    v30 = sub_1E324FBDC();
    (*(v7 + 16))(v11, v30, v5);
    v31 = sub_1E41FFC94();
    v32 = sub_1E42067F4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1E323F000, v31, v32, "Invalid state for SearchPaletteScrollHandler. Missing required properties", v33, 2u);
      MEMORY[0x1E69143B0](v33, -1, -1);
    }

    (*(v7 + 8))(v11, v5);
  }

  else
  {
    v29 = v28;
    OUTLINED_FUNCTION_1_303();
    if ((*(v2 + 112) & 1) == 0)
    {
      v34 = *(v2 + 96);
      v44 = *(v2 + 104);
      v36 = *(v2 + 80);
      v35 = *(v2 + 88);
      OUTLINED_FUNCTION_1_303();
      v49.origin.x = v36;
      v49.origin.y = v35;
      v49.size.width = v34;
      v49.size.height = v44;
      CGRectGetMinY(v49);
      OUTLINED_FUNCTION_1_303();
    }

    OUTLINED_FUNCTION_1_303();
    v47 = v29;
    [v47 frame];
    [v47 setFrame_];
  }
}

uint64_t sub_1E40E2AF0()
{
  MEMORY[0x1E69144A0](v0 + 120);
  MEMORY[0x1E69144A0](v0 + 128);

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

void *sub_1E40E2B9C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v6 = *(*a1 + 392);

  v7 = v6();

  if (!v7)
  {
    goto LABEL_4;
  }

  type metadata accessor for ShowcaseLockupViewLayout();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

LABEL_4:
    type metadata accessor for ShowcaseLockupViewLayout();
    v8 = sub_1E3C8FBFC();
  }

  *a3 = a1;
  result = memcpy(a3 + 1, a2, 0xC3uLL);
  a3[26] = v8;
  return result;
}

uint64_t sub_1E40E2C68@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC58);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1E40E2E80(v4);
  sub_1E40E4344(&qword_1ECF3FC68, &qword_1ECF3FC50, &unk_1E42EBF70, sub_1E40E30D8);
  sub_1E4203594();
  sub_1E325F69C(v4, &qword_1ECF3FC50);
  if (*(*v1 + 24))
  {
    v14 = *(*v1 + 16);
    v15 = *(*v1 + 24);
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  (*(v6 + 32))(v13, v9, v18);
  v16 = &v13[*(v10 + 52)];
  *v16 = v14;
  *(v16 + 1) = v15;
  sub_1E379E528(v13, v19, &qword_1ECF3FC60);
}

double sub_1E40E2E80@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v18[-1] - v7);
  if (*(**v1 + 392))(v6) && (OUTLINED_FUNCTION_30(), v10 = (*(v9 + 1560))(), , (sub_1E3A24FDC(v10)))
  {
    (*(*v1[26] + 1824))();
    OUTLINED_FUNCTION_30();
    (*(v11 + 176))(v18);

    if (v19)
    {
      v12 = 0;
    }

    else
    {
      v12 = v18[1];
    }

    *&v20 = sub_1E4201B84();
    *(&v20 + 1) = v12;
    LOBYTE(v21) = 0;
    sub_1E37E658C();
  }

  else
  {
    v20 = sub_1E4201D44();
    LOBYTE(v21) = 1;
    sub_1E37E65E0();
  }

  *v8 = sub_1E4203E84();
  v13 = *(v4 + 44);

  sub_1E40E31D4(v2, v8 + v13);
  sub_1E4203DA4();
  sub_1E4200D94();

  sub_1E379E528(v8, a1, &qword_1ECF3FC78);
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC50) + 36));
  v15 = v21;
  *v14 = v20;
  v14[1] = v15;
  result = *&v22;
  v14[2] = v22;
  return result;
}

unint64_t sub_1E40E30D8()
{
  result = qword_1ECF3FC70;
  if (!qword_1ECF3FC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FC78);
    sub_1E374AD40(&qword_1EE289DD0, &qword_1ECF2AAA0);
    sub_1E374AD40(&qword_1ECF3FC80, &unk_1ECF3FC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FC70);
  }

  return result;
}

uint64_t sub_1E40E31D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_2_5();
  v49 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v43[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_2_5();
  v47 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v43[-v10];
  memcpy(v51, a1 + 1, 0xC3uLL);
  v45 = v51[6];
  v44 = LOBYTE(v51[7]);
  v11 = (a1 + 145);
  v12 = *a1;
  if (LOBYTE(v51[14]))
  {
    v13 = 0.0;
  }

  else
  {
    v13 = *&v51[12];
  }

  v14 = *(*v12 + 392);
  v15 = sub_1E375C1CC(v51, v60);
  if (v14(v15) && (OUTLINED_FUNCTION_30(), v17 = (*(v16 + 1560))(), , (sub_1E3A24FDC(v17) & 1) != 0))
  {
    v18 = v13 * 0.45;
    v19 = v18 * 0.56;
  }

  else
  {
    v18 = v13 * 0.5;
    v19 = v18 / 1.27;
  }

  v68 = 0;
  v20 = j__OUTLINED_FUNCTION_51_1();
  v21 = j__OUTLINED_FUNCTION_18();
  v22 = j__OUTLINED_FUNCTION_18();
  sub_1E3EB9C0C(*&v18, *&v19, 0, 0, 0, 1, v20 & 1, 2, &v69, 0, 1, 0, 1, 0, 2, v21 & 1, v22 & 1);
  v60[0] = 0;
  v23 = *(a1 + 3);
  v53[0] = *(a1 + 1);
  v53[1] = v23;
  v53[2] = *(a1 + 5);
  v54 = v45;
  v55 = v44;
  v56 = *(a1 + 65);
  v57 = *(a1 + 81);
  v58 = *(a1 + 97);
  sub_1E375C31C(v53);
  v59[0] = v69;
  v59[1] = v70;
  v59[2] = v71;
  *(&v59[3] + 9) = v72;
  *(&v59[4] + 9) = v73;
  *(&v59[5] + 11) = *(a1 + 99);
  *(&v59[6] + 8) = *(a1 + 7);
  v24 = *(a1 + 161);
  *(&v59[8] + 9) = *v11;
  v25 = *v11;
  v26 = *(a1 + 161);
  *(&v59[9] + 9) = v24;
  *(&v59[10] + 9) = *(a1 + 177);
  *(&v59[11] + 3) = *(a1 + 187);
  *v60 = v69;
  *&v60[16] = v70;
  *&v60[32] = v71;
  *&v60[73] = v73;
  *&v60[57] = v72;
  *&v61[13] = *(a1 + 7);
  *v61 = *(a1 + 99);
  *&v59[3] = v18;
  BYTE8(v59[3]) = 0;
  *(&v59[5] + 9) = v74;
  *(&v59[7] + 1) = v18;
  *&v59[8] = v19;
  BYTE8(v59[8]) = v68;
  *&v60[48] = v18;
  v60[56] = 0;
  *&v60[89] = v74;
  v62 = v18;
  v63 = v19;
  v64 = v68;
  v27 = *(a1 + 177);
  *&v67[10] = *(a1 + 187);
  *v67 = v27;
  v66 = v26;
  v65 = v25;
  sub_1E375C1CC(v59, v52);
  sub_1E37E6F2C(v60);
  v28 = memcpy(v52, v59, 0xC3uLL);
  v29 = (*(*v12 + 488))(v28);
  if (!v29)
  {
    sub_1E37E6F2C(v52);
    v35 = 1;
    v31 = v46;
    goto LABEL_16;
  }

  v30 = sub_1E373E010(39, v29);

  v31 = v46;
  if (!v30)
  {
    sub_1E37E6F2C(v52);
LABEL_15:
    v35 = 1;
    goto LABEL_16;
  }

  type metadata accessor for ImageViewModel();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    sub_1E37E6F2C(v52);

    goto LABEL_15;
  }

  v33 = v32;
  memcpy(v60, v52, sizeof(v60));

  v34 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v33, v60, 0, v34 & 1, 0, 0, v31);
  sub_1E37E6F2C(v52);

  v35 = 0;
LABEL_16:
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  __swift_storeEnumTagSinglePayload(v31, v35, 1, v36);
  v37 = v48;
  sub_1E40E37C4(v48);
  v38 = v47;
  sub_1E32D7CE4(v31, v47);
  v39 = v49;
  sub_1E40E44D4(v37, v49);
  v40 = v50;
  sub_1E32D7CE4(v38, v50);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCE8);
  sub_1E40E44D4(v39, v40 + *(v41 + 48));
  sub_1E325F69C(v37, &qword_1ECF3FCE0);
  sub_1E325F69C(v31, &qword_1ECF29938);
  sub_1E325F69C(v39, &qword_1ECF3FCE0);
  return sub_1E325F69C(v38, &qword_1ECF29938);
}

uint64_t sub_1E40E37C4@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = type metadata accessor for StackedTextViews(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(**v1 + 488);
  v8 = v7(v3);
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = sub_1E373E010(23, v8);

  if (v9 && *v9 != _TtC8VideosUI13TextViewModel)
  {

LABEL_5:
    v9 = 0;
  }

  v10 = (v7)(v8);
  if (!v10)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = sub_1E373E010(15, v10);

  if (v11 && *v11 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_10;
  }

LABEL_11:
  v12 = (v7)(v10);
  v37 = v5;
  if (!v12)
  {
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v13 = sub_1E373E010(4, v12);

  if (v13 && *v13 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_15;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E4297BD0;
  *(v14 + 32) = v9;
  *(v14 + 40) = v11;
  *(v14 + 48) = v13;
  v15 = *(*v1[26] + 1824);

  v15(v16);
  OUTLINED_FUNCTION_30();
  (*(v17 + 176))(v39);

  v19 = v39[0];
  v20 = v40;
  v21 = *(v15)(v18);
  v22 = COERCE_DOUBLE((*(v21 + 304))());
  v24 = v23;

  v25 = sub_1E4201D54();
  v26 = j__OUTLINED_FUNCTION_18();
  v27 = v37;
  v28 = sub_1E403E654(v14, v25, v26 & 1, v37);
  v29 = (*(*v6 + 392))(v28);
  v30 = v29;
  if (v29)
  {
    v31 = (*(*v29 + 1560))(v29);

    v30 = sub_1E3A24FDC(v31);
  }

  if (v20)
  {
    v19 = 0.0;
  }

  if (v24)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v22;
  }

  v33 = v38;
  sub_1E375BD40(v27, v38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCE0);
  v35 = v33 + *(result + 36);
  *v35 = v30 & 1;
  *(v35 + 8) = v19;
  *(v35 + 16) = v32;
  return result;
}

uint64_t sub_1E40E3C14(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E40E3C54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 216) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PadLayoutModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PadLayoutModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E40E3D90@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_1E4202564();
  OUTLINED_FUNCTION_0_10();
  v53 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FC98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v52 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCA0);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v52 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v52 - v20;
  if (a2)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCB0);
    OUTLINED_FUNCTION_2();
    (*(v23 + 16))(v21, a1, v22);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_11();
    sub_1E374AD40(v24, &qword_1ECF3FCB0);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FCC0);
    v26 = OUTLINED_FUNCTION_6_233(&qword_1ECF3FCC8, &qword_1ECF3FC98, &unk_1E42EC0C8);
    v27 = sub_1E4201734();
    v28 = sub_1E40E447C();
    *&v60 = v27;
    *(&v60 + 1) = v28;
    OUTLINED_FUNCTION_2_264();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v60 = v10;
    *(&v60 + 1) = v25;
    *&v61 = v26;
    *(&v61 + 1) = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_1_304();
    swift_getOpaqueTypeConformance2();
    return sub_1E4201F44();
  }

  else
  {
    v31 = sub_1E4202744();
    v52[0] = v5;
    v32 = v31;
    sub_1E4200A54();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v52[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCB0);
    OUTLINED_FUNCTION_2();
    (*(v41 + 16))(v13, a1);
    v42 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCB8) + 36)];
    *v42 = v32;
    *(v42 + 1) = v34;
    *(v42 + 2) = v36;
    *(v42 + 3) = v38;
    *(v42 + 4) = v40;
    v42[40] = 0;
    sub_1E4203DA4();
    sub_1E4200D94();
    v43 = &v13[*(v10 + 36)];
    v44 = v61;
    *v43 = v60;
    *(v43 + 1) = v44;
    *(v43 + 2) = v62;
    sub_1E4202554();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCC0);
    v46 = OUTLINED_FUNCTION_6_233(&qword_1ECF3FCC8, &qword_1ECF3FC98, &unk_1E42EC0C8);
    v47 = sub_1E4201734();
    v48 = sub_1E40E447C();
    v56 = v47;
    v57 = v48;
    OUTLINED_FUNCTION_2_264();
    v49 = swift_getOpaqueTypeConformance2();
    sub_1E4203094();
    (*(v53 + 8))(v9, v52[0]);
    sub_1E325F69C(v13, &qword_1ECF3FC98);
    v50 = v54;
    (*(v15 + 16))(v21, v18, v54);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_11();
    sub_1E374AD40(v51, &qword_1ECF3FCB0);
    v56 = v10;
    v57 = v45;
    v58 = v46;
    v59 = v49;
    OUTLINED_FUNCTION_1_304();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    return (*(v15 + 8))(v18, v50);
  }
}

uint64_t sub_1E40E42C8()
{
  sub_1E4202094();
  sub_1E4201734();
  sub_1E40E447C();
  return sub_1E4200D84();
}

uint64_t sub_1E40E4344(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E40E43C4()
{
  result = qword_1ECF3FCD0;
  if (!qword_1ECF3FCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FCB8);
    sub_1E374AD40(&qword_1ECF3FCD8, &unk_1ECF3FCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FCD0);
  }

  return result;
}

unint64_t sub_1E40E447C()
{
  result = qword_1ECF30FF0;
  if (!qword_1ECF30FF0)
  {
    sub_1E4201734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30FF0);
  }

  return result;
}

uint64_t sub_1E40E44D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E40E4544()
{
  result = qword_1ECF3FCF0;
  if (!qword_1ECF3FCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FCF8);
    sub_1E374AD40(&qword_1ECF3FCD8, &qword_1ECF3FCB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FC98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FCC0);
    sub_1E40E4344(&qword_1ECF3FCC8, &qword_1ECF3FC98, &unk_1E42EC0C8, sub_1E40E43C4);
    sub_1E4201734();
    sub_1E40E447C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FCF0);
  }

  return result;
}

uint64_t sub_1E40E46FC()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 1984))(4);
  OUTLINED_FUNCTION_36();
  (*(v4 + 2008))(1);
  OUTLINED_FUNCTION_36();
  (*(v5 + 2056))(1, 0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2080))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v7 + 2104))(0, 0);
  OUTLINED_FUNCTION_36();
  (*(v8 + 1696))(15);
  v9 = *sub_1E3E5FD88();
  v10 = *(*v2 + 680);
  v11 = v9;
  v10(v9);
  v35 = 0x4018000000000000;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  (*(*v2 + 160))(&v35);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 2056))(1, 0);
  OUTLINED_FUNCTION_36();
  (*(v13 + 2080))(1, 0);
  OUTLINED_FUNCTION_36();
  (*(v14 + 2104))(0, 0);
  OUTLINED_FUNCTION_36();
  (*(v15 + 2128))(0x3FE3333333333333, 0);
  OUTLINED_FUNCTION_36();
  (*(v16 + 1696))(15);
  v17 = *sub_1E3E5FDEC();
  v18 = *(*v1 + 680);
  v19 = v17;
  v18(v17);

  sub_1E37DAE10();
  OUTLINED_FUNCTION_2_1();
  (*(v20 + 512))(0);
  OUTLINED_FUNCTION_36();
  (*(v21 + 1808))(1);
  sub_1E39537A8();
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = 0;
  (*(*v1 + 560))(&v35);
  v26 = *sub_1E3E60A14();
  v27 = *(*v1 + 872);
  v28 = v26;
  v27(v26);
  v29 = *sub_1E418A524();
  (*(*v1 + 440))(v29, 0);
  OUTLINED_FUNCTION_36();
  (*(v30 + 2000))(0);

  sub_1E3C37CBC(v31, 23);

  sub_1E3C37CBC(v32, 15);

  sub_1E3C37CBC(v33, 39);

  return v1;
}

uint64_t sub_1E40E4CD4@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(type metadata accessor for ScaledBaselineRelativeSpacer() + 24);
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  if (!sub_1E3C27528())
  {
    goto LABEL_4;
  }

  type metadata accessor for TextLayout();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_4:
    type metadata accessor for TextLayout();
    v5 = sub_1E383BCC0();
  }

  *a1 = v5;
  *(a1 + 8) = a2;
  return result;
}

uint64_t type metadata accessor for ScaledBaselineRelativeSpacer()
{
  result = qword_1EE293870;
  if (!qword_1EE293870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E40E4DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *(type metadata accessor for ScaledBaselineRelativeSpacer() + 24);
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(a2 + 8) = a3;
  return result;
}

uint64_t sub_1E40E4E70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E42012F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ScaledBaselineRelativeSpacer();
  sub_1E3746E10(v6);
  v7 = sub_1E405F040(*v1, *(v1 + 8));
  result = (*(v4 + 8))(v6, v3);
  if (v7 <= 0.0)
  {
    v10 = 0;
    v11 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0uLL;
    v9 = 1;
  }

  else
  {
    sub_1E4203DA4();
    result = sub_1E4200D94();
    v9 = 0;
    v10 = v17;
    v11 = v19;
    v12 = v21;
    v16[24] = 1;
    v16[16] = v18;
    v16[8] = v20;
    v13 = 1;
    v14 = v18;
    v15 = v20;
    v16[32] = 0;
  }

  *a1 = 0;
  *(a1 + 8) = v13;
  *(a1 + 16) = v10;
  *(a1 + 24) = v14;
  *(a1 + 32) = v11;
  *(a1 + 40) = v15;
  *(a1 + 48) = v12;
  *(a1 + 64) = v9;
  return result;
}

void sub_1E40E5054()
{
  type metadata accessor for TextLayout();
  if (v0 <= 0x3F)
  {
    sub_1E38D5D68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E40E50E0()
{
  result = qword_1EE289A18;
  if (!qword_1EE289A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD00);
    sub_1E40E5164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A18);
  }

  return result;
}

unint64_t sub_1E40E5164()
{
  result = qword_1EE289A20;
  if (!qword_1EE289A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A20);
  }

  return result;
}

id static VUIUTSChannelsRequestManager.shared()()
{
  if (_MergedGlobals_102 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE28B198;

  return v1;
}

id sub_1E40E526C()
{
  result = [objc_allocWithZone(type metadata accessor for VUIUTSChannelsRequestManager()) init];
  qword_1EE28B198 = result;
  return result;
}

id VUIUTSChannelsRequestManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t variable initialization expression of VUIUTSChannelsRequestManager.response()
{
  v0 = sub_1E4205CB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD08);
  result = OUTLINED_FUNCTION_42_73();
  *(result + 24) = 0;
  *(result + 16) = v0;
  return result;
}

uint64_t sub_1E40E536C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  result = OUTLINED_FUNCTION_42_73();
  *(result + 24) = 0;
  *(result + 16) = a3;
  return result;
}

uint64_t sub_1E40E539C()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1EE28B1A8);
  v1 = OUTLINED_FUNCTION_32_0();
  __swift_project_value_buffer(v1, v2);
  return sub_1E41FFCA4();
}

uint64_t VUIUTSChannelsRequestManager.load()()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FFCB4();
  v1[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E40E54C8()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_loadTask;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_loadTask);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[6] = v4;

  os_unfair_lock_unlock((v3 + 24));

  if (v4)
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = v0[3];
    v8 = sub_1E324FBDC();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_1E41FFC94();
    v10 = sub_1E4206814();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_125_0();
      *v11 = 0;
      _os_log_impl(&dword_1E323F000, v9, v10, "loadTask: Waiting for task to complete", v11, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];

    (*(v13 + 8))(v12, v14);
    v15 = swift_task_alloc();
    v0[7] = v15;
    *v15 = v0;
    v15[1] = sub_1E40E571C;
    v16 = MEMORY[0x1E69E6370];
    v17 = (v0 + 81);
    v18 = v4;
  }

  else
  {
    v19 = sub_1E40E59B4();
    v0[8] = v19;
    v20 = *(v1 + v2);

    os_unfair_lock_lock((v20 + 24));
    sub_1E40E5A70((v20 + 16));
    os_unfair_lock_unlock((v20 + 24));

    v21 = swift_task_alloc();
    v0[9] = v21;
    *v21 = v0;
    v21[1] = sub_1E40E5868;
    v16 = MEMORY[0x1E69E6370];
    v17 = v0 + 10;
    v18 = v19;
  }

  return MEMORY[0x1EEE6DA40](v17, v18, v16);
}

uint64_t sub_1E40E571C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E40E5804()
{
  OUTLINED_FUNCTION_24();

  v0 = OUTLINED_FUNCTION_7_10();

  return v1(v0);
}

uint64_t sub_1E40E5868()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E40E5950()
{
  OUTLINED_FUNCTION_24();

  v0 = OUTLINED_FUNCTION_7_10();

  return v1(v0);
}

uint64_t sub_1E40E59B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1E4206474();
  OUTLINED_FUNCTION_56_3(v2);
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v0;
  v4 = v0;
  v5 = OUTLINED_FUNCTION_38_77();
  return sub_1E390B728(v5, v6, v7, v8, v9);
}

uint64_t sub_1E40E5A70(void *a1)
{

  *a1 = v1;
}

uint64_t sub_1E40E5ACC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E40E5B74;

  return VUIUTSChannelsRequestManager.load()();
}

uint64_t sub_1E40E5B74()
{
  OUTLINED_FUNCTION_134();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  v8 = *(v5 + 16);
  v9 = *v1;
  *v7 = *v1;

  v10 = *(v5 + 24);
  if (v2)
  {
    sub_1E41FE264();

    (*(v10 + 16))(v10, 0, v1);
  }

  else
  {
    (*(v10 + 16))(v10, v4 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v9 + 8);

  return v11();
}

uint64_t VUIUTSChannelsRequestManager.channel(id:)()
{
  OUTLINED_FUNCTION_27_2();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  OUTLINED_FUNCTION_21();
  v16 = v4 + 184;
  v17 = *(v4 + 184) + **(v4 + 184);
  v5 = swift_task_alloc();
  v1[10] = v5;
  *v5 = v1;
  v13 = OUTLINED_FUNCTION_13_188(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);

  return v13();
}

uint64_t sub_1E40E5E0C()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_20_129();

    return v9();
  }

  else
  {
    *(v5 + 88) = v3 & 1;
    v11 = OUTLINED_FUNCTION_9_195();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1E40E5F30()
{
  v18 = v0;
  if (*(v0 + 88))
  {
    v1 = *(*(v0 + 72) + OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_response);

    os_unfair_lock_lock((v1 + 24));
    v2 = *(v1 + 16);

    os_unfair_lock_unlock((v1 + 24));

    v3 = OUTLINED_FUNCTION_32_0();
    sub_1E3277E60(v3, v4, v2, v5);

    if (*(v0 + 40))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if (swift_dynamicCast())
      {
        sub_1E3744600(*(v0 + 48));
      }
    }

    else
    {
      sub_1E325F748(v0 + 16, &unk_1ECF296E0);
    }
  }

  else
  {
    if (qword_1EE28B1A0 != -1)
    {
      OUTLINED_FUNCTION_0_344();
    }

    v6 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v6, qword_1EE28B1A8);

    v7 = sub_1E41FFC94();
    sub_1E42067F4();

    if (OUTLINED_FUNCTION_51_53())
    {
      v9 = *(v0 + 56);
      v8 = *(v0 + 64);
      v10 = OUTLINED_FUNCTION_6_21();
      v11 = OUTLINED_FUNCTION_100();
      v17 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1E3270FC8(v9, v8, &v17);
      OUTLINED_FUNCTION_43_67(&dword_1E323F000, v12, v13, "channel(id) failed to load for channel.%s");
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_6_0();
    }
  }

  v14 = OUTLINED_FUNCTION_7_10();

  return v15(v14);
}

uint64_t sub_1E40E615C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_1E4205F14();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1E40E9EC8;

  return VUIUTSChannelsRequestManager.channel(id:)();
}

uint64_t VUIUTSChannelsRequestManager.getChannel(bundleID:)()
{
  OUTLINED_FUNCTION_27_2();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = sub_1E41FFCB4();
  v1[36] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v1[37] = v5;
  v1[38] = swift_task_alloc();
  OUTLINED_FUNCTION_21();
  v18 = v6 + 184;
  v19 = *(v6 + 184) + **(v6 + 184);
  v7 = swift_task_alloc();
  v1[39] = v7;
  *v7 = v1;
  v15 = OUTLINED_FUNCTION_13_188(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19);

  return v15();
}

uint64_t sub_1E40E639C()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {

    OUTLINED_FUNCTION_20_129();

    return v9();
  }

  else
  {
    *(v5 + 320) = v3 & 1;
    v11 = OUTLINED_FUNCTION_9_195();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1E40E64C8()
{
  if ((*(v1 + 320) & 1) == 0)
  {
    if (qword_1EE28B1A0 != -1)
    {
LABEL_46:
      OUTLINED_FUNCTION_0_344();
    }

    OUTLINED_FUNCTION_13_25(*(v1 + 288), qword_1EE28B1A8);

    v35 = sub_1E41FFC94();
    sub_1E42067F4();

    if (OUTLINED_FUNCTION_51_53())
    {
      v36 = OUTLINED_FUNCTION_6_21();
      v60 = OUTLINED_FUNCTION_100();
      *(v36 + 4) = OUTLINED_FUNCTION_48_56(4.8149e-34, v60, v37, v38, v39, v40);
      OUTLINED_FUNCTION_43_67(&dword_1E323F000, v41, v42, "getChannel(bundleID) failed to load for bundleID.%s");
      __swift_destroy_boxed_opaque_existential_1(v60);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_6_0();
    }

    sub_1E40E9610();
    v43 = OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_27_101(v43, v44);

    OUTLINED_FUNCTION_54();

    return v45();
  }

  v2 = *(v1 + 296);
  OUTLINED_FUNCTION_53_54();
  os_unfair_lock_lock((v0 + 24));
  v3 = *(v0 + 16);

  os_unfair_lock_unlock((v0 + 24));

  v4 = 0;
  v5 = v3 + 64;
  OUTLINED_FUNCTION_30_87();
  v8 = v7 & v6;
  v10 = (63 - v9) >> 6;
  v59 = v3;
  v57 = (v2 + 8);
  v58 = (v2 + 16);
  while (v8)
  {
LABEL_8:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1E328438C(*(v3 + 56) + 32 * v13, v1 + 32);
    *(v1 + 64) = v16;
    *(v1 + 72) = v15;
    sub_1E329504C((v1 + 32), (v1 + 80));
    sub_1E379539C(v1 + 64, v1 + 112, &qword_1ECF2EB00);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (swift_dynamicCast())
    {
      v17 = *(v1 + 240);
      v18 = sub_1E4205F14();
      if (!*(v17 + 16))
      {

LABEL_22:

        goto LABEL_23;
      }

      v20 = sub_1E327D33C(v18, v19);
      v22 = v21;

      if ((v22 & 1) == 0)
      {
        goto LABEL_22;
      }

      sub_1E328438C(*(v17 + 56) + 32 * v20, v1 + 208);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
      if (swift_dynamicCast())
      {
        v23 = *(v1 + 248);
        v24 = (v23 + 40);
        v25 = *(v23 + 16) + 1;
        do
        {
          if (!--v25)
          {

            goto LABEL_26;
          }

          if (*(v24 - 1) == *(v1 + 264) && *v24 == *(v1 + 272))
          {
            break;
          }

          v24 += 2;
        }

        while ((sub_1E42079A4() & 1) == 0);

        sub_1E379539C(v1 + 64, v1 + 160, &qword_1ECF2EB00);

        if (swift_dynamicCast())
        {
          sub_1E3744600(*(v1 + 256));

          sub_1E325F748(v1 + 64, &qword_1ECF2EB00);
        }

        else
        {
          sub_1E325F748(v1 + 64, &qword_1ECF2EB00);
        }

        goto LABEL_39;
      }

LABEL_23:
      v27 = *(v1 + 304);
      v28 = *(v1 + 288);
      v29 = sub_1E324FBDC();
      (*v58)(v27, v29, v28);
      v30 = sub_1E41FFC94();
      v31 = sub_1E42067F4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_125_0();
        *v32 = 0;
        _os_log_impl(&dword_1E323F000, v30, v31, "Channel dictionary missing appBundleIds key", v32, 2u);
        OUTLINED_FUNCTION_55();
      }

      v33 = *(v1 + 304);
      v34 = *(v1 + 288);

      (*v57)(v33, v34);
LABEL_26:
      sub_1E325F748(v1 + 64, &qword_1ECF2EB00);
      v3 = v59;
    }

    else
    {
      sub_1E325F748(v1 + 64, &qword_1ECF2EB00);
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v11 >= v10)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      v4 = v11;
      goto LABEL_8;
    }
  }

  if (qword_1EE28B1A0 != -1)
  {
    OUTLINED_FUNCTION_0_344();
  }

  OUTLINED_FUNCTION_13_25(*(v1 + 288), qword_1EE28B1A8);

  v47 = sub_1E41FFC94();
  sub_1E42067F4();

  if (OUTLINED_FUNCTION_51_53())
  {
    v48 = OUTLINED_FUNCTION_6_21();
    v61 = OUTLINED_FUNCTION_100();
    *(v48 + 4) = OUTLINED_FUNCTION_48_56(4.8149e-34, v61, v49, v50, v51, v52);
    OUTLINED_FUNCTION_43_67(&dword_1E323F000, v53, v54, "Could not get channel metadata for bundleID%s");
    __swift_destroy_boxed_opaque_existential_1(v61);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_6_0();
  }

LABEL_39:

  v55 = OUTLINED_FUNCTION_7_10();

  return v56(v55);
}

uint64_t sub_1E40E6AFC(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_53_0();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_32_0();

  return sub_1E38364EC(v10, v11);
}

uint64_t sub_1E40E6B74(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_1E4205F14();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1E40E6C48;

  return VUIUTSChannelsRequestManager.getChannel(bundleID:)();
}

uint64_t sub_1E40E6C48()
{
  OUTLINED_FUNCTION_134();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_39();
  v6 = v5;
  OUTLINED_FUNCTION_37_2();
  *v7 = v6;
  v9 = *(v8 + 16);
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;

  if (v2)
  {
    sub_1E41FE264();

    v12 = v4;
  }

  else if (v4)
  {
    v13 = sub_1E4205C44();

    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = OUTLINED_FUNCTION_8_204();
  v15(v14);

  _Block_release(v6);
  OUTLINED_FUNCTION_54();

  return v16();
}

Swift::Bool __swiftcall VUIUTSChannelsRequestManager.isStoreBundleID(bundleID:)(Swift::String bundleID)
{
  object = bundleID._object;
  countAndFlagsBits = bundleID._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A200;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001E42916A0;
  *(inited + 48) = 0xD000000000000011;
  *(inited + 56) = 0x80000001E42916C0;
  *(inited + 64) = 0xD000000000000015;
  *(inited + 72) = 0x80000001E42916E0;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001E4291700;
  strcpy((inited + 96), "com.apple.tv");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = 0x6C7070612E6D6F63;
  *(inited + 120) = 0xEF636973754D2E65;
  v6[0] = countAndFlagsBits;
  v6[1] = object;
  v5[2] = v6;
  LOBYTE(object) = sub_1E3849DF8(sub_1E3756228, v5, inited);
  swift_setDeallocating();
  sub_1E38272B0();
  return object & 1;
}

uint64_t VUIUTSChannelsRequestManager.getOrderedChannels()()
{
  OUTLINED_FUNCTION_27_2();
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_21();
  v14 = v2 + 184;
  v15 = *(v2 + 184) + **(v2 + 184);
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v11 = OUTLINED_FUNCTION_13_188(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t sub_1E40E709C()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_20_129();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3 & 1;
    v11 = OUTLINED_FUNCTION_9_195();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1E40E71C0()
{
  OUTLINED_FUNCTION_27_2();
  if (*(v1 + 32))
  {
    OUTLINED_FUNCTION_53_54();
    os_unfair_lock_lock((v0 + 24));
    v2 = *(v0 + 16);

    os_unfair_lock_unlock((v0 + 24));

    v3 = *(v1 + 8);

    return v3(v2);
  }

  else
  {
    if (qword_1EE28B1A0 != -1)
    {
      OUTLINED_FUNCTION_0_344();
    }

    v5 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v5, qword_1EE28B1A8);
    v6 = sub_1E41FFC94();
    v7 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_16_53(v7))
    {
      v8 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v8);
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    sub_1E40E9610();
    v14 = OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_27_101(v14, v15);
    OUTLINED_FUNCTION_54();

    return v16();
  }
}

uint64_t sub_1E40E733C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E40E73E4;

  return VUIUTSChannelsRequestManager.getOrderedChannels()();
}

uint64_t sub_1E40E73E4()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_39();
  v6 = v5;
  OUTLINED_FUNCTION_37_2();
  *v7 = v6;
  v9 = *(v8 + 16);
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;

  if (v2)
  {
    sub_1E41FE264();

    v12 = v4;
  }

  else
  {
    v13 = sub_1E42062A4();

    v12 = v13;
  }

  v14 = OUTLINED_FUNCTION_8_204();
  v15(v14);

  _Block_release(v6);
  OUTLINED_FUNCTION_54();

  return v16();
}

uint64_t VUIUTSChannelsRequestManager.getAllChannels()()
{
  OUTLINED_FUNCTION_27_2();
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_21();
  v14 = v2 + 184;
  v15 = *(v2 + 184) + **(v2 + 184);
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v11 = OUTLINED_FUNCTION_13_188(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t sub_1E40E7654()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_20_129();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3 & 1;
    v11 = OUTLINED_FUNCTION_9_195();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1E40E7778()
{
  OUTLINED_FUNCTION_27_2();
  if (*(v1 + 32))
  {
    OUTLINED_FUNCTION_53_54();
    os_unfair_lock_lock((v0 + 24));
    v2 = *(v0 + 16);

    os_unfair_lock_unlock((v0 + 24));

    sub_1E3744600(v2);

    v3 = OUTLINED_FUNCTION_7_10();

    return v4(v3);
  }

  else
  {
    if (qword_1EE28B1A0 != -1)
    {
      OUTLINED_FUNCTION_0_344();
    }

    v6 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v6, qword_1EE28B1A8);
    v7 = sub_1E41FFC94();
    v8 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_16_53(v8))
    {
      v9 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v9);
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    sub_1E40E9610();
    v15 = OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_27_101(v15, v16);
    OUTLINED_FUNCTION_54();

    return v17();
  }
}

uint64_t sub_1E40E78FC(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_35_1();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;
  v7 = OUTLINED_FUNCTION_32_0();

  return sub_1E38364EC(v7, v8);
}

uint64_t sub_1E40E7960(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E40E7A08;

  return VUIUTSChannelsRequestManager.getAllChannels()();
}

uint64_t sub_1E40E7A08()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_39();
  v6 = v5;
  OUTLINED_FUNCTION_37_2();
  *v7 = v6;
  v9 = *(v8 + 16);
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;

  if (v2)
  {
    sub_1E41FE264();

    v12 = v4;
  }

  else
  {
    v13 = sub_1E4205C44();

    v12 = v13;
  }

  v14 = OUTLINED_FUNCTION_8_204();
  v15(v14);

  _Block_release(v6);
  OUTLINED_FUNCTION_54();

  return v16();
}

Swift::Void __swiftcall VUIUTSChannelsRequestManager.resetCache()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_response];

  os_unfair_lock_lock((v2 + 24));

  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = sub_1E4205CB4();
  os_unfair_lock_unlock((v2 + 24));

  v4 = *&v0[OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_responseOrdered];

  os_unfair_lock_lock((v4 + 24));

  *(v4 + 16) = v3;
  os_unfair_lock_unlock((v4 + 24));

  v5 = *&v0[OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_loadTask];

  os_unfair_lock_lock((v5 + 24));

  *(v5 + 16) = 0;
  os_unfair_lock_unlock((v5 + 24));

  v6 = sub_1E4206474();
  OUTLINED_FUNCTION_56_3(v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v8 = v0;
  v9 = OUTLINED_FUNCTION_38_77();
  sub_1E376FE58(v9, v10, v11, v12, v13);
}

uint64_t sub_1E40E7D0C()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  v14 = (*MEMORY[0x1E69E7D40] & *v1) + 184;
  v15 = v2 + *v2;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v11 = OUTLINED_FUNCTION_13_188(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t sub_1E40E7E24()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3 & 1;
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E40E7F34()
{
  OUTLINED_FUNCTION_27_2();
  if ((*(v0 + 48) & 1) == 0)
  {
    if (qword_1EE28B1A0 != -1)
    {
      OUTLINED_FUNCTION_0_344();
    }

    v1 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v1, qword_1EE28B1A8);
    v2 = sub_1E41FFC94();
    v3 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_16_53(v3))
    {
      v4 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v4);
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_51_2();
    }
  }

  OUTLINED_FUNCTION_54();

  return v10();
}

uint64_t sub_1E40E8008()
{
  v16 = v0;
  *(v0 + 16) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  sub_1E3E991C8();
  result = swift_dynamicCast();
  if (result)
  {
    v2 = *(v0 + 24);
    if (qword_1EE28B1A0 != -1)
    {
      OUTLINED_FUNCTION_0_344();
    }

    v3 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v3, qword_1EE28B1A8);
    v4 = v2;
    v5 = sub_1E41FFC94();
    v6 = sub_1E42067F4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_6_21();
      v8 = OUTLINED_FUNCTION_100();
      v15 = v8;
      *v7 = 136315138;
      v9 = [v4 localizedDescription];
      v10 = sub_1E4205F14();
      v12 = v11;

      v13 = sub_1E3270FC8(v10, v12, &v15);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_1E323F000, v5, v6, "Could not get load channels with error:%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    OUTLINED_FUNCTION_54();

    return v14();
  }

  return result;
}

id VUIUTSChannelsRequestManager.init()()
{
  v1 = OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_response;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1E4205CB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD08);
  v4 = OUTLINED_FUNCTION_42_73();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *&v0[v1] = v4;
  v5 = OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_responseOrdered;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD10);
  v6 = OUTLINED_FUNCTION_42_73();
  *(v6 + 24) = 0;
  *(v6 + 16) = v2;
  *&v0[v5] = v6;
  v7 = OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_loadTask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD18);
  v8 = OUTLINED_FUNCTION_42_73();
  *(v8 + 24) = 0;
  *(v8 + 16) = 0;
  *&v0[v7] = v8;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for VUIUTSChannelsRequestManager();
  return objc_msgSendSuper2(&v10, sel_init);
}

id VUIUTSChannelsRequestManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIUTSChannelsRequestManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E40E8400()
{
  OUTLINED_FUNCTION_24();
  v0[45] = v1;
  v0[46] = v2;
  v3 = sub_1E41FDDF4();
  v0[47] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[48] = v4;
  v0[49] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E40E84B0()
{
  OUTLINED_FUNCTION_27_2();
  *(v1 + 400) = OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_response;
  OUTLINED_FUNCTION_53_54();
  os_unfair_lock_lock((v0 + 24));
  v2 = *(*(v0 + 16) + 16);
  os_unfair_lock_unlock((v0 + 24));

  if (v2)
  {
    **(v1 + 360) = 1;

    OUTLINED_FUNCTION_54();

    return v3();
  }

  else
  {
    if (qword_1EE28B1A0 != -1)
    {
      OUTLINED_FUNCTION_0_344();
    }

    v5 = sub_1E41FFCB4();
    *(v1 + 408) = __swift_project_value_buffer(v5, qword_1EE28B1A8);
    v6 = sub_1E41FFC94();
    v7 = sub_1E42067D4();
    if (OUTLINED_FUNCTION_16_53(v7))
    {
      v8 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v8);
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    sub_1E41FEFD4();
    v14 = swift_task_alloc();
    *(v1 + 416) = v14;
    *v14 = v1;
    v14[1] = sub_1E40E8664;
    v15 = *(v1 + 392);

    return MEMORY[0x1EEE436E8](v15, 0x736C656E6E616863, 0xE800000000000000);
  }
}

uint64_t sub_1E40E8664()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 424) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E40E8764()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEE44();
  v0[54] = sub_1E41FEE24();
  v1 = swift_task_alloc();
  v0[55] = v1;
  *v1 = v0;
  v1[1] = sub_1E40E8810;
  v2 = v0[49];

  return MEMORY[0x1EEE43620](v2);
}

uint64_t sub_1E40E8810()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_37_2();
  *v2 = v1;
  *(v1 + 448) = v3;
  *(v1 + 456) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1E40E893C()
{
  v96 = v1;
  v2 = [*(v1 + 448) data];
  sub_1E41FE464();
  v4 = v3;

  sub_1E41FE434();
  v5 = OUTLINED_FUNCTION_92_2();
  sub_1E38DCCB0(v5, v4);
  if (!v0)
  {
    v0 = sub_1E4205CB4();
  }

  v6 = sub_1E4205F14();
  sub_1E3277E60(v6, v7, v0, (v1 + 256));

  if (!*(v1 + 280))
  {

    sub_1E325F748(v1 + 256, &unk_1ECF296E0);
LABEL_23:
    v36 = *(v1 + 448);
    v37 = sub_1E41FFC94();
    sub_1E42067F4();

    if (OUTLINED_FUNCTION_51_53())
    {
      v38 = *(v1 + 448);
      v39 = OUTLINED_FUNCTION_6_21();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v38;
      *v40 = v38;
      v41 = v38;
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
      sub_1E325F748(v40, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    v47 = *(v1 + 448);
    v49 = *(v1 + 384);
    v48 = *(v1 + 392);
    v50 = *(v1 + 376);

    sub_1E40E9610();
    v51 = OUTLINED_FUNCTION_206();
    *v52 = 3;
    swift_willThrow();

    (*(v49 + 8))(v48, v50);
    *(v1 + 320) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
    sub_1E3E991C8();
    if ((OUTLINED_FUNCTION_17_150() & 1) == 0)
    {
      OUTLINED_FUNCTION_46_65();
      return;
    }

    OUTLINED_FUNCTION_31_95();
    sub_1E42074B4();

    OUTLINED_FUNCTION_19_151();
    v94 = v54;
    v95 = v53;
    v55 = [v48 localizedDescription];
    v56 = sub_1E4205F14();
    v58 = v57;

    MEMORY[0x1E69109E0](v56, v58);

    v60 = v94;
    v59 = v95;

    v61 = sub_1E41FFC94();
    v62 = sub_1E42067F4();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = OUTLINED_FUNCTION_6_21();
      v64 = OUTLINED_FUNCTION_100();
      v94 = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_1E3270FC8(v60, v59, &v94);

      OUTLINED_FUNCTION_28_91(&dword_1E323F000, v65, v66, "%s");
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    else
    {
    }

    OUTLINED_FUNCTION_41_71();
LABEL_38:

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_46_65();

    __asm { BRAA            X1, X16 }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_23;
  }

  v8 = *(v1 + 336);
  v9 = sub_1E4205F14();
  sub_1E3277E60(v9, v10, v8, (v1 + 288));

  if (!*(v1 + 312))
  {

    sub_1E325F748(v1 + 288, &unk_1ECF296E0);
LABEL_33:
    v67 = sub_1E41FFC94();
    v68 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_16_53(v68))
    {
      v69 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v69);
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v70, v71, v72, v73, v74, 2u);
      OUTLINED_FUNCTION_51_2();
      v75 = *(v1 + 448);
    }

    else
    {
      v75 = v67;
      v67 = *(v1 + 448);
    }

    v77 = *(v1 + 384);
    v76 = *(v1 + 392);
    v78 = *(v1 + 376);
    v79 = *(v1 + 360);

    (*(v77 + 8))(v76, v78);
    *v79 = 0;
    goto LABEL_38;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_33;
  }

  v93 = v1 + 64;
  v89 = *(v1 + 368);
  v11 = *(v1 + 344) + 64;
  OUTLINED_FUNCTION_30_87();
  v14 = v13 & v12;
  v88 = OBJC_IVAR____TtC8VideosUI28VUIUTSChannelsRequestManager_responseOrdered;
  v16 = (63 - v15) >> 6;
  v90 = *(v1 + 456);
  v92 = v17;

  v18 = 0;
  v91 = v16;
  v87 = v11;
  if (v14)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_8:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return;
    }

    if (v19 >= v16)
    {
      v80 = *(v1 + 448);
      v81 = *(v1 + 360);
      (*(*(v1 + 384) + 8))(*(v1 + 392), *(v1 + 376));

      *v81 = 1;
      goto LABEL_38;
    }

    v14 = *(v11 + 8 * v19);
    ++v18;
  }

  while (!v14);
  v18 = v19;
  while (1)
  {
LABEL_12:
    v20 = __clz(__rbit64(v14)) | (v18 << 6);
    v21 = (*(v92 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    sub_1E328438C(*(v92 + 56) + 32 * v20, v1 + 32);
    *(v1 + 64) = v23;
    *(v1 + 72) = v22;
    sub_1E329504C((v1 + 32), (v1 + 80));
    v24 = v1 + 64;
    sub_1E379539C(v93, v1 + 112, &qword_1ECF2EB00);

    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1E379539C(v93, v1 + 160, &qword_1ECF2EB00);
      v29 = sub_1E41FFC94();
      v30 = sub_1E42067F4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_6_21();
        v86 = OUTLINED_FUNCTION_100();
        v94 = v86;
        *v31 = 136315138;
        v32 = *(v1 + 176);
        *(v1 + 208) = *(v1 + 160);
        *(v1 + 224) = v32;
        *(v1 + 240) = *(v1 + 192);
        v34 = *(v1 + 208);
        v33 = *(v1 + 216);
        __swift_destroy_boxed_opaque_existential_1(v1 + 224);
        v35 = sub_1E3270FC8(v34, v33, &v94);
        v24 = v1 + 64;

        *(v31 + 4) = v35;
        _os_log_impl(&dword_1E323F000, v29, v30, "Could not get channel metadata for %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v86);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {

        sub_1E325F748(v1 + 160, &qword_1ECF2EB00);
      }

      v16 = v91;
      goto LABEL_19;
    }

    v25 = *(v1 + 352);
    v26 = *(*(v1 + 368) + *(v1 + 400));
    v27 = swift_task_alloc();
    *(v27 + 16) = v93;
    *(v27 + 24) = v25;

    os_unfair_lock_lock(v26 + 6);
    sub_1E40E9D84();
    if (v90)
    {
      break;
    }

    os_unfair_lock_unlock(v26 + 6);

    v28 = *(v89 + v88);
    *(swift_task_alloc() + 16) = v93;

    os_unfair_lock_lock((v28 + 24));
    sub_1E40E9E28((v28 + 16));
    os_unfair_lock_unlock((v28 + 24));

    v90 = 0;
    v16 = v91;
    v24 = v1 + 64;
    v11 = v87;
LABEL_19:
    v14 &= v14 - 1;
    sub_1E325F748(v24, &qword_1ECF2EB00);
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_46_65();

  os_unfair_lock_unlock(v84);
}

void sub_1E40E91D4()
{
  *(v1 + 320) = *(v1 + 424);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  sub_1E3E991C8();
  if (OUTLINED_FUNCTION_17_150())
  {
    OUTLINED_FUNCTION_31_95();
    sub_1E42074B4();

    OUTLINED_FUNCTION_19_151();
    v2 = [v0 localizedDescription];
    v3 = sub_1E4205F14();
    v5 = v4;

    MEMORY[0x1E69109E0](v3, v5);

    v6 = sub_1E41FFC94();
    v7 = sub_1E42067F4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_6_21();
      v13 = OUTLINED_FUNCTION_100();
      *(v8 + 4) = OUTLINED_FUNCTION_50_57(4.8149e-34, v13);

      OUTLINED_FUNCTION_28_91(&dword_1E323F000, v9, v10, "%s");
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    else
    {
    }

    OUTLINED_FUNCTION_41_71();

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_49_63();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_49_63();
}

void sub_1E40E93A0()
{
  (*(v1[48] + 8))(v1[49], v1[47]);
  v1[40] = v1[57];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  sub_1E3E991C8();
  if (OUTLINED_FUNCTION_17_150())
  {
    OUTLINED_FUNCTION_31_95();
    sub_1E42074B4();

    OUTLINED_FUNCTION_19_151();
    v2 = [v0 localizedDescription];
    v3 = sub_1E4205F14();
    v5 = v4;

    MEMORY[0x1E69109E0](v3, v5);

    v6 = sub_1E41FFC94();
    v7 = sub_1E42067F4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_6_21();
      v13 = OUTLINED_FUNCTION_100();
      *(v8 + 4) = OUTLINED_FUNCTION_50_57(4.8149e-34, v13);

      OUTLINED_FUNCTION_28_91(&dword_1E323F000, v9, v10, "%s");
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    else
    {
    }

    OUTLINED_FUNCTION_41_71();

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_49_63();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_49_63();
}

char *sub_1E40E9584()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3B1DC54(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1E40E95D0(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E3B1DC54((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

unint64_t sub_1E40E9610()
{
  result = qword_1ECF3FD20;
  if (!qword_1ECF3FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FD20);
  }

  return result;
}

uint64_t sub_1E40E9664()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_54();

  return v8();
}

uint64_t sub_1E40E975C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;

  return sub_1E40E7D0C();
}

unint64_t sub_1E40E9810()
{
  result = qword_1ECF3FD28;
  if (!qword_1ECF3FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FD28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VUIUTSChannelsRequestError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E40E9940()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_250(v1);

  return v4(v3);
}

uint64_t sub_1E40E99D0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_250(v1);

  return v4(v3);
}

uint64_t sub_1E40E9A60()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_0(v3);
  *v4 = v5;
  v4[1] = sub_1E3286A7C;
  v6 = OUTLINED_FUNCTION_25_111();

  return v7(v6, v1, v2);
}

uint64_t objectdestroy_61Tm_0()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_53_0();

  return swift_deallocObject();
}

uint64_t sub_1E40E9B48()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_0(v3);
  *v4 = v5;
  v4[1] = sub_1E327C238;
  v6 = OUTLINED_FUNCTION_25_111();

  return v7(v6, v1, v2);
}

uint64_t objectdestroy_31Tm_0()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_35_1();

  return swift_deallocObject();
}

uint64_t sub_1E40E9C28()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_250(v1);

  return v4(v3);
}

uint64_t objectdestroyTm_65()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_53_0();

  return swift_deallocObject();
}

uint64_t sub_1E40E9CF0()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;

  return sub_1E40E8400();
}

uint64_t sub_1E40E9D84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1E379539C(v1, v7, &qword_1ECF2EB00);
  v3 = v7[0];
  v4 = v7[1];
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  v6[0] = v2;

  sub_1E3946774(v6, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(&v8);
}

_OWORD *sub_1E40E9E28(uint64_t *a1)
{
  sub_1E379539C(*(v1 + 16), &v6, &qword_1ECF2EB00);

  sub_1E40E9584();
  v3 = *(*a1 + 16);
  sub_1E40E95D0(v3);
  v4 = *a1;
  *(v4 + 16) = v3 + 1;
  result = sub_1E329504C(&v7, (v4 + 32 * v3 + 32));
  *a1 = v4;
  return result;
}

unint64_t OUTLINED_FUNCTION_48_56(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *v8 = a1;

  return sub_1E3270FC8(v7, v6, va);
}

uint64_t OUTLINED_FUNCTION_53_54()
{
}

uint64_t sub_1E40E9F04()
{
  v2 = sub_1E39D7838(&unk_1F5D97B90);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40330);
  sub_1E41E1A64(&v2, sub_1E40E9F84, v0, &qword_1EE2AB158);
}

uint64_t sub_1E40E9FB8()
{
  result = sub_1E39D7838(&unk_1F5D97BD0);
  qword_1EE2AB160 = result;
  return result;
}

uint64_t sub_1E40E9FE0()
{
  v0 = sub_1E39D7838(&unk_1F5D97C10);
  result = TVAppFeature.isEnabled.getter(10);
  if (result)
  {
    result = sub_1E40FC294();
  }

  qword_1EE2AB168 = v0;
  return result;
}

uint64_t sub_1E40EA03C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = 0;
  *a5 = a1;
  memcpy((a5 + 8), a2, 0xC3uLL);
  *(a5 + 208) = a3;
  *(a5 + 216) = a4;
  *(a5 + 224) = sub_1E40EA0D8;
  *(a5 + 232) = 0;
  *(a5 + 240) = v11;

  sub_1E375C1CC(a2, &v10);
  return sub_1E34AF604(a3);
}

unint64_t sub_1E40EA118()
{
  result = qword_1EE2A4428[0];
  if (!qword_1EE2A4428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A4428);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI17InteractionStatesVIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E40EA198(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 241))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E40EA1D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E40EA3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v131 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEF8);
  v28 = OUTLINED_FUNCTION_6_4(v27, &a10);
  MEMORY[0x1EEE9AC00](v28);
  v122 = (&v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_17_3(&v120 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE40);
  OUTLINED_FUNCTION_6_4(v32, &v137[21]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_31_2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF08);
  OUTLINED_FUNCTION_0_10();
  v125 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF10);
  OUTLINED_FUNCTION_6_4(v38, &v137[23]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF18);
  OUTLINED_FUNCTION_6_4(v41, &v137[18]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v120 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD40);
  OUTLINED_FUNCTION_6_4(v45, &v137[24]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD48);
  OUTLINED_FUNCTION_6_4(v48, &v137[19]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_103();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF20);
  OUTLINED_FUNCTION_0_10();
  v51 = v50;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_44();
  v54 = v53;
  if (qword_1EE28CCC8 != -1)
  {
    OUTLINED_FUNCTION_137_11();
  }

  v55 = qword_1EE2AB160;
  v56 = *v25;
  v57 = *(*v25 + 98);

  if (sub_1E38E5664(v57, v55))
  {

    memcpy(v137, v25 + 1, 0xC3uLL);
    sub_1E40EAF50();
    v125 = v34;
    MEMORY[0x1EEE9AC00](v58);
    *(&v120 - 2) = v25;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD50);
    v60 = sub_1E40F58D0();
    v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE28);
    v62 = sub_1E40F6B18();
    v124 = sub_1E383FBF4();
    v133 = v61;
    OUTLINED_FUNCTION_136_7(&unk_1F5D59EC8);
    *(v63 - 256) = v62;
    OUTLINED_FUNCTION_36_74(v64, &a14);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v121 = v54;
    v66 = v126;
    sub_1E3E35D1C(v59, v54);
    sub_1E325F6F0(v20, &qword_1ECF3FD48);
    v67 = OUTLINED_FUNCTION_34();
    v68 = v127;
    v69(v67);
    OUTLINED_FUNCTION_167_7();
    swift_storeEnumTagMultiPayload();
    v133 = v66;
    v134 = v59;
    v135 = v60;
    v136 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE48);
    v71 = sub_1E40F6C64();
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FEE8);
    sub_1E40F74B4();
    v133 = v72;
    OUTLINED_FUNCTION_136_7(&unk_1F5D59EC8);
    *(v74 - 256) = v73;
    OUTLINED_FUNCTION_217_1(&v137[16]);
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_216_0(&v137[21]);
    *(v75 - 256) = v70;
    v135 = v71;
    v136 = v76;
    swift_getOpaqueTypeConformance2();
    v77 = v129;
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    sub_1E3743538(v77, v130, &qword_1ECF3FD40);
    OUTLINED_FUNCTION_167_7();
    swift_storeEnumTagMultiPayload();
    sub_1E40F56E8();
    OUTLINED_FUNCTION_13_2();
    sub_1E3D6870C(v78);
    OUTLINED_FUNCTION_153_8();
    OUTLINED_FUNCTION_199_1();
    OUTLINED_FUNCTION_31_24();
    sub_1E325F6F0(v79, v80);
    (*(v51 + 8))(v121, v68);
  }

  else
  {
    if (_MergedGlobals_278 != -1)
    {
      OUTLINED_FUNCTION_138_12();
    }

    v81 = sub_1E38E5664(v57, qword_1EE2AB158);
    if (v81)
    {

      memcpy(v137, v25 + 1, 0xC3uLL);
      OUTLINED_FUNCTION_86_22();
      sub_1E40EE58C();
      v122 = &v120;
      MEMORY[0x1EEE9AC00](v82);
      OUTLINED_FUNCTION_205_0();
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE48);
      v84 = sub_1E40F6C64();
      v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FEE8);
      v86 = sub_1E40F74B4();
      v123 = sub_1E383FBF4();
      v133 = v85;
      OUTLINED_FUNCTION_136_7(&unk_1F5D59EC8);
      *(v87 - 256) = v86;
      OUTLINED_FUNCTION_36_74(v88, &a14);
      v89 = swift_getOpaqueTypeConformance2();
      v90 = v124;
      v91 = v128;
      sub_1E3E35D1C(v83, v124);
      sub_1E325F6F0(v21, &qword_1ECF3FE40);
      (*(v125 + 16))(v44, v90, v34);
      OUTLINED_FUNCTION_185_3();
      swift_storeEnumTagMultiPayload();
      v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD50);
      v93 = sub_1E40F58D0();
      v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE28);
      sub_1E40F6B18();
      v133 = v94;
      OUTLINED_FUNCTION_136_7(&unk_1F5D59EC8);
      *(v96 - 256) = v95;
      OUTLINED_FUNCTION_217_1(&v137[15]);
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_216_0(&v137[19]);
      *(v97 - 256) = v92;
      v135 = v93;
      OUTLINED_FUNCTION_99_14(v98, &a14);
      swift_getOpaqueTypeConformance2();
      v133 = v91;
      v134 = v83;
      v135 = v84;
      v136 = v89;
      swift_getOpaqueTypeConformance2();
      v99 = v129;
      sub_1E4201F44();
      sub_1E3743538(v99, v130, &qword_1ECF3FD40);
      OUTLINED_FUNCTION_167_7();
      swift_storeEnumTagMultiPayload();
      sub_1E40F56E8();
      OUTLINED_FUNCTION_13_2();
      sub_1E3D6870C(v100);
      OUTLINED_FUNCTION_199_1();
      OUTLINED_FUNCTION_31_24();
      sub_1E325F6F0(v101, v102);
      (*(v125 + 8))(v124, v34);
    }

    else
    {
      v129 = &v120;
      MEMORY[0x1EEE9AC00](v81);
      OUTLINED_FUNCTION_205_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF28);
      v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF30);
      v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF38);
      v105 = sub_1E40F7608();
      v106 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40060);
      v107 = sub_1E40F8F70();
      v108 = sub_1E383FBF4();
      v137[0] = v106;
      v137[1] = &unk_1F5D59EC8;
      v137[2] = v107;
      OUTLINED_FUNCTION_36_74(v108, &a18);
      v109 = swift_getOpaqueTypeConformance2();
      v137[0] = v103;
      v137[1] = v104;
      v137[2] = v105;
      OUTLINED_FUNCTION_99_14(v109, &a18);
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_34();
      v110 = OUTLINED_FUNCTION_51_1();
      sub_1E40424BC(v56, v110 & 1, sub_1E40F7600, v122);
      v111 = sub_1E373F6E0();
      sub_1E4043670(v111 & 1, v132, v123);
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v112, v113);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v114, v115, v116);
      OUTLINED_FUNCTION_185_3();
      swift_storeEnumTagMultiPayload();
      sub_1E40F56E8();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_82();
      sub_1E3D6870C(v117);
      OUTLINED_FUNCTION_153_8();
      sub_1E4201F44();
      v118 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v118, v119);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40EAF50()
{
  OUTLINED_FUNCTION_31_1();
  v585 = v3;
  v5 = v4;
  v593 = v6;
  v545 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40080);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v546 = v8;
  v594 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v547 = v10;
  v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40088);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v514 = v12;
  OUTLINED_FUNCTION_138();
  v513 = type metadata accessor for SyndicationListLockup();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_3();
  v496 = v14;
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v515 = v16;
  OUTLINED_FUNCTION_138();
  v525 = type metadata accessor for ListLockup();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_3();
  v584 = v18;
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40090);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v523 = v20;
  v553 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v526 = v22;
  v571 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v573 = v24;
  v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40098);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v552 = v26;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v572 = v28;
  v551 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v517 = v30;
  v577 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v554 = v32;
  v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v520 = v34;
  v559 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  v524 = v36;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v503 = v37;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_44();
  v502 = v39;
  v498 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44();
  v500 = v41;
  OUTLINED_FUNCTION_138();
  v499 = type metadata accessor for EditorialLockup();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9_3();
  v495 = v43;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44();
  v501 = v45;
  v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_44();
  v511 = v47;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_204_1(v49);
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44();
  v543 = v51;
  v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_44();
  v576 = v53;
  v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_44();
  v557 = v55;
  v539 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_44();
  v540 = v57;
  v556 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_44();
  v541 = v59;
  v575 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_44();
  v558 = v61;
  v589 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_44();
  v578 = v63;
  v64 = OUTLINED_FUNCTION_138();
  v538 = type metadata accessor for PlaybackPersonView(v64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_9_3();
  v508 = v66;
  v67 = OUTLINED_FUNCTION_138();
  v536 = type metadata accessor for SportsLockup(v67);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_9_3();
  v507 = v69;
  v531 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_44();
  v535 = v71;
  v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_44();
  v537 = v73;
  v74 = OUTLINED_FUNCTION_138();
  v532 = type metadata accessor for TeamLockup(v74);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_9_3();
  v505 = v76;
  OUTLINED_FUNCTION_138();
  v533 = type metadata accessor for MonogramLockup();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_9_3();
  v506 = v78;
  v561 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_44();
  v563 = v80;
  v527 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_44();
  v529 = v82;
  v562 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_44();
  v534 = v84;
  v582 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_44();
  v565 = v86;
  v87 = OUTLINED_FUNCTION_138();
  v528 = type metadata accessor for StandardLockup(v87);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_9_3();
  v504 = v89;
  OUTLINED_FUNCTION_138();
  v549 = type metadata accessor for StandardLockupListView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_9_3();
  v530 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_26_2();
  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_44();
  v548 = v94;
  OUTLINED_FUNCTION_138();
  type metadata accessor for SearchTopResultLockup();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_9_3();
  v560 = v96;
  OUTLINED_FUNCTION_138();
  v97 = type metadata accessor for OfferCard();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5();
  v101 = v100 - v99;
  v591 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_44();
  v592 = v103;
  v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40100);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_44();
  v588 = v105;
  v579 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40108);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_44();
  v581 = v107;
  v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40110);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_44();
  v568 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40118);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_8_4();
  v567 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_20_1();
  v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_44();
  v569 = v113;
  v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_44();
  v583 = v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v495 - v117;
  v119 = *(v5 + 98);
  v590 = v120;
  v584 = v118;
  switch(v119)
  {
    case 196:
      if (TVAppFeature.isEnabled.getter(10))
      {

        OUTLINED_FUNCTION_80_23();
        v233 = v496;
        v234 = OUTLINED_FUNCTION_67_0();
        sub_1E3E2B21C(v234, v235, v236);
        OUTLINED_FUNCTION_101_16();
        sub_1E40FC89C(v233, v514, v237);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_7_243();
        sub_1E40FCB48(v238);
        OUTLINED_FUNCTION_5_1();
        v239 = v515;
        sub_1E4201F44();
        v240 = OUTLINED_FUNCTION_138_0();
        sub_1E40FC8F8(v240, v241);
      }

      else
      {
        OUTLINED_FUNCTION_23();
        v434 = v502;
        nullsub_1(v435, v436);
        v437 = v503;
        v438 = v522;
        (*(v503 + 16))(v514, v434, v522);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_7_243();
        sub_1E40FCB48(v439);
        OUTLINED_FUNCTION_5_1();
        v239 = v515;
        sub_1E4201F44();
        (*(v437 + 8))(v434, v438);
      }

      sub_1E3743538(v239, v546, &qword_1ECF3FE20);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6A44();
      sub_1E4201F44();
      OUTLINED_FUNCTION_123_0();
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v440, v441, v442);
      swift_storeEnumTagMultiPayload();
      sub_1E40F5988();
      OUTLINED_FUNCTION_1_305();
      OUTLINED_FUNCTION_90();
      sub_1E40F8F18(v443);
      sub_1E4201F44();
      v444 = OUTLINED_FUNCTION_49_64();
      sub_1E325F6F0(v444, v445);
      v266 = v239;
      v267 = &qword_1ECF3FE20;
      goto LABEL_21;
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 216:
    case 218:
      goto LABEL_10;
    case 202:

      OUTLINED_FUNCTION_80_23();
      v242 = OUTLINED_FUNCTION_67_0();
      sub_1E40293BC(v242, v243, v244);
      memcpy(v520, v597, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      v245 = OUTLINED_FUNCTION_211_1();
      sub_1E402A3E4(v245, v246);
      sub_1E40F62B0();
      sub_1E40F6384();
      OUTLINED_FUNCTION_110_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v247, v248, v249);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6050();
      sub_1E40F6224();
      OUTLINED_FUNCTION_140_3();
      sub_1E4201F44();
      v250 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v250, v251);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v252, v253, v254);
      swift_storeEnumTagMultiPayload();
      sub_1E40F5FC4();
      sub_1E40F63D8();
      OUTLINED_FUNCTION_86_22();
      OUTLINED_FUNCTION_140_9();
      sub_1E4201F44();
      v255 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v255, v256);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v257, v258, v259);
      OUTLINED_FUNCTION_191_5();
      sub_1E40F5A14();
      sub_1E40F5F38();
      v168 = v584;
      OUTLINED_FUNCTION_140_3();
      OUTLINED_FUNCTION_90_23();
      sub_1E4201F44();
      v260 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v260, v261);
      v171 = &qword_1ECF3FD58;
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v262, v263, v264);
      OUTLINED_FUNCTION_159_4();
      sub_1E40F5988();
      OUTLINED_FUNCTION_1_305();
      sub_1E40F8F18(v265);
      OUTLINED_FUNCTION_61_31();
      sub_1E40FA764(v597);
      goto LABEL_19;
    case 203:

      OUTLINED_FUNCTION_80_23();
      v183 = OUTLINED_FUNCTION_67_0();
      sub_1E40E2B9C(v183, v184, v185);
      memcpy(v523, v597, 0xD8uLL);
      swift_storeEnumTagMultiPayload();
      v186 = OUTLINED_FUNCTION_211_1();
      sub_1E40F914C(v186, v187);
      sub_1E40F69F0();
      OUTLINED_FUNCTION_5_249();
      sub_1E40FCB48(v188);
      OUTLINED_FUNCTION_110_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v189, v190, v191);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6464();
      sub_1E40F6934();
      OUTLINED_FUNCTION_140_3();
      sub_1E4201F44();
      v192 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v192, v193);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v194, v195, v196);
      OUTLINED_FUNCTION_226_0();
      sub_1E40F5FC4();
      sub_1E40F63D8();
      OUTLINED_FUNCTION_86_22();
      OUTLINED_FUNCTION_140_9();
      sub_1E4201F44();
      v197 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v197, v198);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v199, v200, v201);
      OUTLINED_FUNCTION_191_5();
      sub_1E40F5A14();
      sub_1E40F5F38();
      v168 = v584;
      OUTLINED_FUNCTION_140_3();
      OUTLINED_FUNCTION_90_23();
      sub_1E4201F44();
      v202 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v202, v203);
      v171 = &qword_1ECF3FD58;
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v204, v205, v206);
      OUTLINED_FUNCTION_159_4();
      sub_1E40F5988();
      OUTLINED_FUNCTION_1_305();
      sub_1E40F8F18(v207);
      OUTLINED_FUNCTION_61_31();
      sub_1E40F91A8(v597);
      goto LABEL_19;
    case 204:

      OUTLINED_FUNCTION_80_23();
      v180 = v508;
      v278 = OUTLINED_FUNCTION_67_0();
      sub_1E3AE3D48(v278, v279, v280);
      OUTLINED_FUNCTION_96_22();
      sub_1E40FC89C(v180, v540, v281);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_171();
      sub_1E40FCB48(v282);
      sub_1E40F610C();
      OUTLINED_FUNCTION_105_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v283, v284, v285);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6050();
      sub_1E40F6224();
      OUTLINED_FUNCTION_76_26();
      sub_1E4201F44();
      v286 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v286, v287);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v288, v289, v290);
      swift_storeEnumTagMultiPayload();
      sub_1E40F5FC4();
      sub_1E40F63D8();
      OUTLINED_FUNCTION_88_22();
      OUTLINED_FUNCTION_140_9();
      sub_1E4201F44();
      v291 = OUTLINED_FUNCTION_31_96();
      sub_1E325F6F0(v291, v292);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v293, v294, v295);
      OUTLINED_FUNCTION_154_7();
      swift_storeEnumTagMultiPayload();
      sub_1E40F5A14();
      sub_1E40F5F38();
      OUTLINED_FUNCTION_39_67();
      sub_1E4201F44();
      v296 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v296, v297);
      goto LABEL_28;
    case 205:
      type metadata accessor for PlaybackSongViewModel();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_200_4();
        sub_1E375C1CC(v585, v597);
        v321 = v497;
        OUTLINED_FUNCTION_57();
        sub_1E417B65C();
        type metadata accessor for Router();
        sub_1E40C4334();

        OUTLINED_FUNCTION_34();
        sub_1E40C49A8();
        v323 = v322;

        OUTLINED_FUNCTION_38_78();
        sub_1E40FCB48(v324);
        OUTLINED_FUNCTION_20_2();
        v325 = sub_1E4200504();
        v326 = (v321 + *(v510 + 36));
        *v326 = v325;
        v326[1] = v323;
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v327, v328, v329);
        swift_storeEnumTagMultiPayload();
        sub_1E40F613C();
        v330 = v543;
        OUTLINED_FUNCTION_105_16();
        sub_1E4201F44();

        v331 = OUTLINED_FUNCTION_10_13();
        sub_1E325F6F0(v331, v332);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_1E40F613C();
        v330 = v543;
        OUTLINED_FUNCTION_122_11();
        sub_1E4201F44();
      }

      sub_1E3743538(v330, v540, &qword_1ECF3FDB0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_171();
      sub_1E40FCB48(v473);
      sub_1E40F610C();
      OUTLINED_FUNCTION_184_2();
      sub_1E4201F44();
      OUTLINED_FUNCTION_42_74();
      sub_1E3743538(v474, v475, v476);
      OUTLINED_FUNCTION_57();
      swift_storeEnumTagMultiPayload();
      sub_1E40F6050();
      sub_1E40F6224();
      OUTLINED_FUNCTION_124_10();
      sub_1E4201F44();
      v477 = OUTLINED_FUNCTION_33_92();
      sub_1E325F6F0(v477, v478);
      OUTLINED_FUNCTION_42_74();
      sub_1E3743538(v479, v480, v481);
      swift_storeEnumTagMultiPayload();
      sub_1E40F5FC4();
      sub_1E40F63D8();
      OUTLINED_FUNCTION_158_10();
      OUTLINED_FUNCTION_140_9();
      sub_1E4201F44();
      OUTLINED_FUNCTION_90();
      sub_1E325F6F0(v482, v483);
      OUTLINED_FUNCTION_42_74();
      sub_1E3743538(v484, v485, v486);
      swift_storeEnumTagMultiPayload();
      sub_1E40F5A14();
      sub_1E40F5F38();
      OUTLINED_FUNCTION_95_21();
      OUTLINED_FUNCTION_90_23();
      sub_1E4201F44();
      OUTLINED_FUNCTION_90();
      sub_1E325F6F0(v487, v488);
      OUTLINED_FUNCTION_123_0();
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v489, v490, v491);
      OUTLINED_FUNCTION_159_4();
      sub_1E40F5988();
      OUTLINED_FUNCTION_1_305();
      sub_1E40F8F18(v492);
      OUTLINED_FUNCTION_87_18();
      OUTLINED_FUNCTION_198_3();
      v493 = OUTLINED_FUNCTION_49_64();
      sub_1E325F6F0(v493, v494);
      sub_1E325F6F0(v543, &qword_1ECF3FDB0);
      goto LABEL_31;
    case 213:

      OUTLINED_FUNCTION_80_23();
      v180 = v504;
      OUTLINED_FUNCTION_67_0();
      sub_1E3BC90F4();
      OUTLINED_FUNCTION_103_16();
      sub_1E40FC89C(v180, v529, v182);
      OUTLINED_FUNCTION_182_6();
      goto LABEL_23;
    case 214:

      OUTLINED_FUNCTION_80_23();
      v180 = v507;
      OUTLINED_FUNCTION_67_0();
      sub_1E3B33074();
      OUTLINED_FUNCTION_104_19();
      sub_1E40FC89C(v180, v535, v181);
      goto LABEL_26;
    case 215:
      v97 = v585;
      memcpy(v596, v585, sizeof(v596));
      nullsub_1(v268, v269);
      v270 = OUTLINED_FUNCTION_211_1();
      memcpy(v270, v271, 0xC3uLL);

      sub_1E375C1CC(v97, &v595);
      v180 = v506;
      sub_1E38F6F20(v5, v597, v506);
      OUTLINED_FUNCTION_98_17();
      sub_1E40FC89C(v180, v529, v272);
LABEL_23:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_35_82();
      sub_1E40FCB48(v273);
      OUTLINED_FUNCTION_34_79();
      sub_1E40FCB48(v274);
      OUTLINED_FUNCTION_105_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v275, v276, v277);
      goto LABEL_27;
    case 217:

      OUTLINED_FUNCTION_80_23();
      v180 = v505;
      OUTLINED_FUNCTION_67_0();
      sub_1E375DE78();
      v97 = type metadata accessor for TeamLockup;
      sub_1E40FC89C(v180, v535, type metadata accessor for TeamLockup);
LABEL_26:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_119_10();
      sub_1E40FCB48(v298);
      OUTLINED_FUNCTION_20_130();
      sub_1E40FCB48(v299);
      OUTLINED_FUNCTION_105_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v300, v301, v302);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      sub_1E40F5D60();
      sub_1E40F5E4C();
      OUTLINED_FUNCTION_76_26();
      sub_1E4201F44();
      v303 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v303, v304);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v305, v306, v307);
      swift_storeEnumTagMultiPayload();
      sub_1E40F5AA0();
      sub_1E40F5CD4();
      OUTLINED_FUNCTION_67_32();
      sub_1E4201F44();
      v308 = OUTLINED_FUNCTION_31_96();
      sub_1E325F6F0(v308, v309);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v310, v311, v312);
      OUTLINED_FUNCTION_154_7();
      swift_storeEnumTagMultiPayload();
      sub_1E40F5A14();
      sub_1E40F5F38();
      OUTLINED_FUNCTION_39_67();
      sub_1E4201F44();
      v313 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v313, v314);
LABEL_28:
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v315, v316, v317);
      OUTLINED_FUNCTION_143_7();
      sub_1E40F5988();
      OUTLINED_FUNCTION_1_305();
      sub_1E40F8F18(v318);
      OUTLINED_FUNCTION_32_94();
      sub_1E4201F44();
      v319 = OUTLINED_FUNCTION_31_96();
      sub_1E325F6F0(v319, v320);
      v149 = v180;
      goto LABEL_29;
    case 219:
    case 220:

      v121 = v585;
      sub_1E375C1CC(v585, v597);
      v122 = v560;
      v123 = OUTLINED_FUNCTION_139_13();
      sub_1E3BAE580(v123, v121, v124);
      v125 = type metadata accessor for SearchTopResultLockup;
      sub_1E40FC89C(v122, v0, type metadata accessor for SearchTopResultLockup);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_114_13();
      sub_1E40FCB48(v126);
      OUTLINED_FUNCTION_113_13();
      sub_1E40FCB48(v127);
      OUTLINED_FUNCTION_180_4();
      OUTLINED_FUNCTION_55_0();
      sub_1E3743538(v128, v129, v130);
      OUTLINED_FUNCTION_213_0();
      swift_storeEnumTagMultiPayload();
      sub_1E40F5B2C();
      sub_1E40F5BE8();
      OUTLINED_FUNCTION_77_25();
      v131 = OUTLINED_FUNCTION_63_0();
      sub_1E325F6F0(v131, v132);
      OUTLINED_FUNCTION_43_72();
      sub_1E3743538(v133, v134, v135);
      OUTLINED_FUNCTION_194_4();
      sub_1E40F5AA0();
      sub_1E40F5CD4();
      OUTLINED_FUNCTION_67_32();
      sub_1E4201F44();
      v136 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v136, v137);
      OUTLINED_FUNCTION_43_72();
      sub_1E3743538(v138, v139, v140);
      OUTLINED_FUNCTION_154_7();
      swift_storeEnumTagMultiPayload();
      sub_1E40F5A14();
      sub_1E40F5F38();
      OUTLINED_FUNCTION_39_67();
      sub_1E4201F44();
      v141 = OUTLINED_FUNCTION_30_88();
      sub_1E325F6F0(v141, v142);
      OUTLINED_FUNCTION_43_72();
      sub_1E3743538(v143, v144, v145);
      OUTLINED_FUNCTION_143_7();
      sub_1E40F5988();
      OUTLINED_FUNCTION_1_305();
      sub_1E40F8F18(v146);
      OUTLINED_FUNCTION_32_94();
      sub_1E4201F44();
      v147 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v147, v148);
      v149 = v560;
      goto LABEL_15;
    case 221:

      sub_1E375C1CC(v585, v597);
      v208 = v530;
      OUTLINED_FUNCTION_139_13();
      sub_1E3C6E960();
      v125 = type metadata accessor for StandardLockupListView;
      sub_1E40FC89C(v208, v0, type metadata accessor for StandardLockupListView);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_114_13();
      sub_1E40FCB48(v209);
      OUTLINED_FUNCTION_113_13();
      sub_1E40FCB48(v210);
      OUTLINED_FUNCTION_180_4();
      OUTLINED_FUNCTION_55_0();
      sub_1E3743538(v211, v212, v213);
      OUTLINED_FUNCTION_213_0();
      swift_storeEnumTagMultiPayload();
      sub_1E40F5B2C();
      sub_1E40F5BE8();
      OUTLINED_FUNCTION_77_25();
      v214 = OUTLINED_FUNCTION_63_0();
      sub_1E325F6F0(v214, v215);
      OUTLINED_FUNCTION_43_72();
      sub_1E3743538(v216, v217, v218);
      OUTLINED_FUNCTION_194_4();
      sub_1E40F5AA0();
      sub_1E40F5CD4();
      OUTLINED_FUNCTION_67_32();
      sub_1E4201F44();
      v219 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v219, v220);
      OUTLINED_FUNCTION_43_72();
      sub_1E3743538(v221, v222, v223);
      OUTLINED_FUNCTION_154_7();
      swift_storeEnumTagMultiPayload();
      sub_1E40F5A14();
      sub_1E40F5F38();
      OUTLINED_FUNCTION_39_67();
      sub_1E4201F44();
      v224 = OUTLINED_FUNCTION_30_88();
      sub_1E325F6F0(v224, v225);
      OUTLINED_FUNCTION_43_72();
      sub_1E3743538(v226, v227, v228);
      OUTLINED_FUNCTION_143_7();
      sub_1E40F5988();
      OUTLINED_FUNCTION_1_305();
      sub_1E40F8F18(v229);
      OUTLINED_FUNCTION_32_94();
      sub_1E4201F44();
      v230 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v230, v231);
      v149 = v530;
LABEL_15:
      v232 = v125;
      goto LABEL_30;
    default:
      v565 = v97;
      v150 = v572;
      v97 = v573;
      v151 = v584;
      switch(v119)
      {
        case 257:
          v414 = v118;
          swift_storeEnumTagMultiPayload();
          sub_1E40F64F0();
          OUTLINED_FUNCTION_122_11();
          sub_1E4201F44();
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v415, v416, v417);
          swift_storeEnumTagMultiPayload();
          sub_1E40F6464();
          sub_1E40F6934();
          OUTLINED_FUNCTION_145_2();
          v418 = OUTLINED_FUNCTION_30_88();
          sub_1E325F6F0(v418, v419);
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v420, v421, v422);
          OUTLINED_FUNCTION_226_0();
          sub_1E40F5FC4();
          sub_1E40F63D8();
          OUTLINED_FUNCTION_184_2();
          OUTLINED_FUNCTION_140_9();
          sub_1E4201F44();
          v423 = OUTLINED_FUNCTION_6_181();
          sub_1E325F6F0(v423, v424);
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v425, v426, v427);
          OUTLINED_FUNCTION_191_5();
          sub_1E40F5A14();
          sub_1E40F5F38();
          OUTLINED_FUNCTION_86_22();
          OUTLINED_FUNCTION_90_23();
          sub_1E4201F44();
          v428 = OUTLINED_FUNCTION_30_88();
          sub_1E325F6F0(v428, v429);
          v171 = &qword_1ECF3FD58;
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v430, v431, v432);
          OUTLINED_FUNCTION_159_4();
          sub_1E40F5988();
          OUTLINED_FUNCTION_1_305();
          sub_1E40F8F18(v433);
          OUTLINED_FUNCTION_87_18();
          sub_1E4201F44();
          v266 = v414;
          goto LABEL_20;
        case 170:
          v584 = v118;
          if (TVAppFeature.isEnabled.getter(10))
          {

            OUTLINED_FUNCTION_80_23();
            v406 = v495;
            v407 = OUTLINED_FUNCTION_67_0();
            sub_1E3D044C0(v407, v408, v409);
            sub_1E40FC89C(v406, v500, type metadata accessor for EditorialLockup);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_17_151();
            sub_1E40FCB48(v410);
            OUTLINED_FUNCTION_5_1();
            v411 = v501;
            OUTLINED_FUNCTION_105_16();
            sub_1E4201F44();
            v412 = OUTLINED_FUNCTION_76_0();
            sub_1E40FC8F8(v412, v413);
          }

          else
          {
            OUTLINED_FUNCTION_23();
            v446 = v502;
            nullsub_1(v447, v448);
            (*(v503 + 16))(v500, v446, v522);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_17_151();
            sub_1E40FCB48(v449);
            OUTLINED_FUNCTION_5_1();
            v411 = v501;
            OUTLINED_FUNCTION_88_22();
            sub_1E4201F44();
            v450 = OUTLINED_FUNCTION_39_3();
            v451(v450);
          }

          sub_1E3743538(v411, v520, &qword_1ECF3FDC8);
          OUTLINED_FUNCTION_63_0();
          swift_storeEnumTagMultiPayload();
          sub_1E40F62B0();
          sub_1E40F6384();
          OUTLINED_FUNCTION_124_10();
          sub_1E4201F44();
          OUTLINED_FUNCTION_42_74();
          sub_1E3743538(v452, v453, v454);
          OUTLINED_FUNCTION_97_1();
          swift_storeEnumTagMultiPayload();
          sub_1E40F6050();
          sub_1E40F6224();
          OUTLINED_FUNCTION_95_21();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F6F0(v455, v456);
          OUTLINED_FUNCTION_42_74();
          sub_1E3743538(v457, v458, v459);
          OUTLINED_FUNCTION_57();
          swift_storeEnumTagMultiPayload();
          sub_1E40F5FC4();
          sub_1E40F63D8();
          OUTLINED_FUNCTION_158_10();
          OUTLINED_FUNCTION_140_9();
          sub_1E4201F44();
          v460 = OUTLINED_FUNCTION_49_64();
          sub_1E325F6F0(v460, v461);
          OUTLINED_FUNCTION_42_74();
          sub_1E3743538(v462, v463, v464);
          OUTLINED_FUNCTION_191_5();
          sub_1E40F5A14();
          sub_1E40F5F38();
          OUTLINED_FUNCTION_95_21();
          OUTLINED_FUNCTION_90_23();
          sub_1E4201F44();
          OUTLINED_FUNCTION_90();
          sub_1E325F6F0(v465, v466);
          OUTLINED_FUNCTION_123_0();
          OUTLINED_FUNCTION_69_0();
          sub_1E3743538(v467, v468, v469);
          OUTLINED_FUNCTION_159_4();
          sub_1E40F5988();
          OUTLINED_FUNCTION_1_305();
          sub_1E40F8F18(v470);
          OUTLINED_FUNCTION_87_18();
          OUTLINED_FUNCTION_198_3();
          v471 = OUTLINED_FUNCTION_49_64();
          sub_1E325F6F0(v471, v472);
          v266 = v411;
          v267 = &qword_1ECF3FDC8;
          goto LABEL_21;
        case 181:

          OUTLINED_FUNCTION_80_23();
          v333 = OUTLINED_FUNCTION_67_0();
          sub_1E3803980(v333, v334, v335);
          OUTLINED_FUNCTION_116_16();
          sub_1E40FC89C(v101, v1, v336);
          swift_storeEnumTagMultiPayload();
          sub_1E3ACEFC4();
          OUTLINED_FUNCTION_15_173();
          sub_1E40FCB48(v337);
          OUTLINED_FUNCTION_140_3();
          sub_1E4201F44();
          OUTLINED_FUNCTION_11_61();
          sub_1E3743538(v338, v339, v340);
          OUTLINED_FUNCTION_213_0();
          swift_storeEnumTagMultiPayload();
          sub_1E40F5B2C();
          sub_1E40F5BE8();
          OUTLINED_FUNCTION_77_25();
          OUTLINED_FUNCTION_90();
          sub_1E325F6F0(v341, v342);
          OUTLINED_FUNCTION_7_24();
          sub_1E3743538(v343, v344, v345);
          OUTLINED_FUNCTION_194_4();
          sub_1E40F5AA0();
          sub_1E40F5CD4();
          OUTLINED_FUNCTION_76_26();
          sub_1E4201F44();
          v346 = OUTLINED_FUNCTION_54_55();
          sub_1E325F6F0(v346, v347);
          OUTLINED_FUNCTION_7_24();
          sub_1E3743538(v348, v349, v350);
          OUTLINED_FUNCTION_154_7();
          swift_storeEnumTagMultiPayload();
          sub_1E40F5A14();
          sub_1E40F5F38();
          OUTLINED_FUNCTION_134_10();
          OUTLINED_FUNCTION_90_23();
          sub_1E4201F44();
          v351 = OUTLINED_FUNCTION_31_96();
          sub_1E325F6F0(v351, v352);
          OUTLINED_FUNCTION_7_24();
          sub_1E3743538(v353, v354, v355);
          OUTLINED_FUNCTION_143_7();
          sub_1E40F5988();
          OUTLINED_FUNCTION_1_305();
          sub_1E40F8F18(v356);
          OUTLINED_FUNCTION_32_94();
          sub_1E4201F44();
          OUTLINED_FUNCTION_55_0();
          sub_1E325F6F0(v357, v358);
          v149 = v101;
          break;
        case 254:

          OUTLINED_FUNCTION_80_23();
          v380 = OUTLINED_FUNCTION_67_0();
          sub_1E3CA9A10(v380, v381, v382);
          OUTLINED_FUNCTION_115_11();
          sub_1E40FC89C(v151, v523, v383);
          swift_storeEnumTagMultiPayload();
          sub_1E40F69F0();
          OUTLINED_FUNCTION_5_249();
          sub_1E40FCB48(v384);
          OUTLINED_FUNCTION_105_16();
          sub_1E4201F44();
          OUTLINED_FUNCTION_7_24();
          sub_1E3743538(v385, v386, v387);
          swift_storeEnumTagMultiPayload();
          sub_1E40F6464();
          sub_1E40F6934();
          sub_1E4201F44();
          v388 = OUTLINED_FUNCTION_11_103();
          sub_1E325F6F0(v388, v389);
          OUTLINED_FUNCTION_7_24();
          sub_1E3743538(v390, v391, v392);
          OUTLINED_FUNCTION_226_0();
          sub_1E40F5FC4();
          sub_1E40F63D8();
          OUTLINED_FUNCTION_88_22();
          OUTLINED_FUNCTION_140_9();
          sub_1E4201F44();
          v393 = OUTLINED_FUNCTION_54_55();
          sub_1E325F6F0(v393, v394);
          OUTLINED_FUNCTION_7_24();
          sub_1E3743538(v395, v396, v397);
          OUTLINED_FUNCTION_154_7();
          swift_storeEnumTagMultiPayload();
          sub_1E40F5A14();
          sub_1E40F5F38();
          OUTLINED_FUNCTION_76_26();
          OUTLINED_FUNCTION_90_23();
          sub_1E4201F44();
          v398 = OUTLINED_FUNCTION_11_103();
          sub_1E325F6F0(v398, v399);
          OUTLINED_FUNCTION_7_24();
          sub_1E3743538(v400, v401, v402);
          OUTLINED_FUNCTION_143_7();
          sub_1E40F5988();
          OUTLINED_FUNCTION_1_305();
          sub_1E40F8F18(v403);
          OUTLINED_FUNCTION_32_94();
          sub_1E4201F44();
          v404 = OUTLINED_FUNCTION_31_96();
          sub_1E325F6F0(v404, v405);
          v149 = v151;
          break;
        default:
          v584 = v118;
          if (v119 == 256)
          {
            OUTLINED_FUNCTION_139_13();
            sub_1E40F9B18();
            sub_1E3743538(v97, v150, &qword_1ECF3FDE0);
            swift_storeEnumTagMultiPayload();
            sub_1E40F64F0();
            sub_1E4201F44();
            OUTLINED_FUNCTION_24_114();
            sub_1E3743538(v359, v360, v361);
            swift_storeEnumTagMultiPayload();
            sub_1E40F6464();
            sub_1E40F6934();
            OUTLINED_FUNCTION_52_43();
            OUTLINED_FUNCTION_190_3();
            v362 = OUTLINED_FUNCTION_34_11();
            sub_1E325F6F0(v362, v363);
            OUTLINED_FUNCTION_24_114();
            sub_1E3743538(v364, v365, v366);
            OUTLINED_FUNCTION_226_0();
            sub_1E40F5FC4();
            sub_1E40F63D8();
            OUTLINED_FUNCTION_165_10();
            OUTLINED_FUNCTION_140_9();
            sub_1E4201F44();
            v367 = OUTLINED_FUNCTION_49_64();
            sub_1E325F6F0(v367, v368);
            OUTLINED_FUNCTION_24_114();
            sub_1E3743538(v369, v370, v371);
            OUTLINED_FUNCTION_191_5();
            sub_1E40F5A14();
            sub_1E40F5F38();
            OUTLINED_FUNCTION_94_24();
            OUTLINED_FUNCTION_90_23();
            sub_1E4201F44();
            v372 = OUTLINED_FUNCTION_34_11();
            sub_1E325F6F0(v372, v373);
            OUTLINED_FUNCTION_24_114();
            sub_1E3743538(v374, v375, v376);
            OUTLINED_FUNCTION_159_4();
            sub_1E40F5988();
            OUTLINED_FUNCTION_1_305();
            sub_1E40F8F18(v377);
            OUTLINED_FUNCTION_87_18();
            OUTLINED_FUNCTION_198_3();
            v378 = OUTLINED_FUNCTION_33_92();
            sub_1E325F6F0(v378, v379);
            v266 = v97;
            v267 = &qword_1ECF3FDE0;
            goto LABEL_21;
          }

          if (v119 == 167)
          {

            OUTLINED_FUNCTION_80_23();
            v152 = OUTLINED_FUNCTION_67_0();
            sub_1E3ACEC30(v152, v153, v154);
            memcpy(v1, v597, 0xE1uLL);
            swift_storeEnumTagMultiPayload();
            v155 = OUTLINED_FUNCTION_211_1();
            sub_1E40FA7B8(v155, v156);
            sub_1E3ACEFC4();
            OUTLINED_FUNCTION_15_173();
            sub_1E40FCB48(v157);
            OUTLINED_FUNCTION_140_3();
            sub_1E4201F44();
            sub_1E3743538(v2, v568, &qword_1ECF3FD70);
            OUTLINED_FUNCTION_213_0();
            swift_storeEnumTagMultiPayload();
            sub_1E40F5B2C();
            sub_1E40F5BE8();
            sub_1E4201F44();
            v158 = OUTLINED_FUNCTION_138_0();
            sub_1E325F6F0(v158, v159);
            OUTLINED_FUNCTION_32_3();
            sub_1E3743538(v160, v161, v162);
            swift_storeEnumTagMultiPayload();
            sub_1E40F5AA0();
            sub_1E40F5CD4();
            OUTLINED_FUNCTION_86_22();
            sub_1E4201F44();
            v163 = OUTLINED_FUNCTION_30_88();
            sub_1E325F6F0(v163, v164);
            OUTLINED_FUNCTION_32_3();
            sub_1E3743538(v165, v166, v167);
            swift_storeEnumTagMultiPayload();
            sub_1E40F5A14();
            sub_1E40F5F38();
            v168 = v584;
            OUTLINED_FUNCTION_140_3();
            OUTLINED_FUNCTION_90_23();
            sub_1E4201F44();
            v169 = OUTLINED_FUNCTION_10_13();
            sub_1E325F6F0(v169, v170);
            v171 = &qword_1ECF3FD58;
            OUTLINED_FUNCTION_32_3();
            sub_1E3743538(v172, v173, v174);
            OUTLINED_FUNCTION_159_4();
            sub_1E40F5988();
            OUTLINED_FUNCTION_1_305();
            sub_1E40F8F18(v175);
            OUTLINED_FUNCTION_61_31();
            sub_1E40FA814(v597);
          }

          else
          {
LABEL_10:
            swift_storeEnumTagMultiPayload();
            sub_1E40F6A44();
            v168 = v547;
            sub_1E4201F44();
            v171 = &qword_1ECF3FE18;
            OUTLINED_FUNCTION_32_3();
            sub_1E3743538(v176, v177, v178);
            swift_storeEnumTagMultiPayload();
            sub_1E40F5988();
            OUTLINED_FUNCTION_1_305();
            OUTLINED_FUNCTION_82();
            sub_1E40F8F18(v179);
            OUTLINED_FUNCTION_61_31();
          }

LABEL_19:
          v266 = v168;
LABEL_20:
          v267 = v171;
LABEL_21:
          sub_1E325F6F0(v266, v267);
          goto LABEL_31;
      }

LABEL_29:
      v232 = v97;
LABEL_30:
      sub_1E40FC8F8(v149, v232);
LABEL_31:
      OUTLINED_FUNCTION_25_2();
      return;
  }
}

void sub_1E40EDE84()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_176_8(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE30);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_21_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_93_18();
  OUTLINED_FUNCTION_146_9();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_132_13(v4);
  OUTLINED_FUNCTION_197_2();
  v5 = OUTLINED_FUNCTION_39_3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5);
  v6 = sub_1E40F58D0();
  OUTLINED_FUNCTION_40_76(v6);
  OUTLINED_FUNCTION_79_30();

  v7 = OUTLINED_FUNCTION_123_0();
  v8(v7);
  OUTLINED_FUNCTION_196_2();
  OUTLINED_FUNCTION_14_182();
  sub_1E40FCB48(v9);
  v10 = OUTLINED_FUNCTION_48_57();
  OUTLINED_FUNCTION_146_0();
  v11 = sub_1E4200504();
  v12 = (v0 + *(v14 + 36));
  *v12 = v11;
  v12[1] = v10;
  OUTLINED_FUNCTION_48_57();
  sub_1E3B1DDF0();

  OUTLINED_FUNCTION_146_9();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_132_13(v13);
  OUTLINED_FUNCTION_197_2();
  sub_1E40F6B18();
  sub_1E383FBF4();
  OUTLINED_FUNCTION_68_36();

  sub_1E325F6F0(v0, &qword_1ECF3FE28);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40EE0DC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_176_8(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEF0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_21_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_93_18();
  OUTLINED_FUNCTION_146_9();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_132_13(v4);
  OUTLINED_FUNCTION_197_2();
  v5 = OUTLINED_FUNCTION_39_3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5);
  v6 = sub_1E40F6C64();
  OUTLINED_FUNCTION_40_76(v6);
  OUTLINED_FUNCTION_79_30();

  v7 = OUTLINED_FUNCTION_123_0();
  v8(v7);
  OUTLINED_FUNCTION_196_2();
  OUTLINED_FUNCTION_14_182();
  sub_1E40FCB48(v9);
  v10 = OUTLINED_FUNCTION_48_57();
  OUTLINED_FUNCTION_146_0();
  v11 = sub_1E4200504();
  v12 = (v0 + *(v14 + 36));
  *v12 = v11;
  v12[1] = v10;
  OUTLINED_FUNCTION_48_57();
  sub_1E3B1DDF0();

  OUTLINED_FUNCTION_146_9();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_132_13(v13);
  OUTLINED_FUNCTION_197_2();
  sub_1E40F74B4();
  sub_1E383FBF4();
  OUTLINED_FUNCTION_68_36();

  sub_1E325F6F0(v0, &qword_1ECF3FEE8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40EE334()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_176_8(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40068);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_21_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40060);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_93_18();
  OUTLINED_FUNCTION_146_9();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_132_13(v4);
  OUTLINED_FUNCTION_197_2();
  v5 = OUTLINED_FUNCTION_39_3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5);
  v6 = sub_1E40F7608();
  OUTLINED_FUNCTION_40_76(v6);
  OUTLINED_FUNCTION_79_30();

  v7 = OUTLINED_FUNCTION_123_0();
  v8(v7);
  OUTLINED_FUNCTION_196_2();
  OUTLINED_FUNCTION_14_182();
  sub_1E40FCB48(v9);
  v10 = OUTLINED_FUNCTION_48_57();
  OUTLINED_FUNCTION_146_0();
  v11 = sub_1E4200504();
  v12 = (v0 + *(v14 + 36));
  *v12 = v11;
  v12[1] = v10;
  OUTLINED_FUNCTION_48_57();
  sub_1E3B1DDF0();

  OUTLINED_FUNCTION_146_9();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_132_13(v13);
  OUTLINED_FUNCTION_197_2();
  sub_1E40F8F70();
  sub_1E383FBF4();
  OUTLINED_FUNCTION_68_36();

  sub_1E325F6F0(v0, &qword_1ECF40060);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40EE58C()
{
  OUTLINED_FUNCTION_31_1();
  v368 = v1;
  v3 = v2;
  v377 = v4;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40148);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v344 = v6;
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v345 = v8;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v327 = v10;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_204_1(v12);
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v331 = v14;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40150);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v330 = v16;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FED0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v319[1] = v18;
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v332 = v20;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40158);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v352 = v22;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40160);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v335 = v24;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v337 = v26;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v353 = v28;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40168);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v323 = v30;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v319[0] = v32;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FEA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v329 = v34;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40170);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  v339 = v36;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  v341 = v38;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40178);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  v359 = v40;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40180);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  v348 = v42;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  v349 = v44;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_44();
  v361 = v46;
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v355 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40188);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_103();
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44();
  v333 = v51;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v320 = v52;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_20_1();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE68);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v55);
  v57 = v319 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v362 = v319 - v59;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40190);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_44();
  v375 = v61;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40198);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_44();
  v371 = v63;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF401A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_44();
  v365 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF401A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_14_5();
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_49_2();
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_44();
  v366 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v70);
  v73 = v319 - v72;
  v74 = v3[49];
  v373 = v71;
  switch(v74)
  {
    case 194:
      MEMORY[0x1EEE9AC00](v71);
      OUTLINED_FUNCTION_10_178();
      sub_1E40FA99C();

      OUTLINED_FUNCTION_152_9();
      v176 = OUTLINED_FUNCTION_172_1();
      memcpy(v176, v177, 0x170uLL);
      memcpy(v339, v379, 0x170uLL);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v178, v179, v180);
      v181 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v181);
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_82();
      sub_1E3D6870C(v182);
      sub_1E40F7184();
      OUTLINED_FUNCTION_84_25();
      sub_1E4201F44();
      OUTLINED_FUNCTION_24_114();
      sub_1E3743538(v183, v184, v185);
      swift_storeEnumTagMultiPayload();
      sub_1E40F701C();
      sub_1E40F70CC();
      OUTLINED_FUNCTION_165_10();
      sub_1E4201F44();
      v186 = OUTLINED_FUNCTION_49_64();
      sub_1E325F6F0(v186, v187);
      OUTLINED_FUNCTION_24_114();
      sub_1E3743538(v188, v189, v190);
      OUTLINED_FUNCTION_228_1();
      sub_1E40F6D7C();
      sub_1E40F6F90();
      OUTLINED_FUNCTION_94_24();
      OUTLINED_FUNCTION_150_8();
      sub_1E4201F44();
      v191 = OUTLINED_FUNCTION_34_11();
      sub_1E325F6F0(v191, v192);
      OUTLINED_FUNCTION_24_114();
      sub_1E3743538(v193, v194, v195);
      OUTLINED_FUNCTION_157_9();
      sub_1E40F6CF0();
      sub_1E40F7264();
      OUTLINED_FUNCTION_70_33();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v196, v197);
      v97 = OUTLINED_FUNCTION_33_92();
      goto LABEL_31;
    case 195:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 207:
    case 208:
    case 209:
    case 214:
    case 216:
    case 218:
      goto LABEL_10;
    case 196:
      v219 = TVAppFeature.isEnabled.getter(10);
      if (v219)
      {
        OUTLINED_FUNCTION_206_2();
        MEMORY[0x1EEE9AC00](v220);
        OUTLINED_FUNCTION_10_178();
        type metadata accessor for SyndicationListLockup();
        OUTLINED_FUNCTION_7_243();
        sub_1E40FCB48(v221);
        OUTLINED_FUNCTION_227_1();
        OUTLINED_FUNCTION_18_5();
        sub_1E404267C();
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v222, v223, v224);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201_4();
        OUTLINED_FUNCTION_109_10();
        sub_1E3D6870C(v225);
        OUTLINED_FUNCTION_90();
        sub_1E3D6870C(v226);
        v227 = v332;
        sub_1E4201F44();
        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v228, v229);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v219);
        OUTLINED_FUNCTION_10_178();
        sub_1E40F8C58();

        OUTLINED_FUNCTION_152_9();
        v291 = OUTLINED_FUNCTION_172_1();
        memcpy(v291, v292, 0x1A0uLL);
        memcpy(v330, v379, 0x1A0uLL);
        swift_storeEnumTagMultiPayload();
        v293 = OUTLINED_FUNCTION_57();
        __swift_instantiateConcreteTypeFromMangledNameV2(v293);
        OUTLINED_FUNCTION_108_14();
        sub_1E3D6870C(v294);
        OUTLINED_FUNCTION_82();
        sub_1E3D6870C(v295);
        v227 = v332;
        sub_1E4201F44();
      }

      sub_1E3743538(v227, v335, &qword_1ECF3FEC8);
      OUTLINED_FUNCTION_57();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201_4();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_90();
      sub_1E3D6870C(v296);
      sub_1E40F73D4();
      OUTLINED_FUNCTION_122_11();
      sub_1E4201F44();
      OUTLINED_FUNCTION_11_61();
      sub_1E3743538(v297, v298, v299);
      swift_storeEnumTagMultiPayload();
      sub_1E40F731C();
      OUTLINED_FUNCTION_19_152();
      sub_1E40F8F18(v300);
      OUTLINED_FUNCTION_139_13();
      sub_1E4201F44();
      v301 = OUTLINED_FUNCTION_33_92();
      sub_1E325F6F0(v301, v302);
      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v303, v304, v305);
      OUTLINED_FUNCTION_114_1();
      swift_storeEnumTagMultiPayload();
      sub_1E40F6CF0();
      sub_1E40F7264();
      OUTLINED_FUNCTION_102_19();
      OUTLINED_FUNCTION_190_3();
      v306 = OUTLINED_FUNCTION_55_52();
      sub_1E325F6F0(v306, v307);
      v97 = v227;
      v98 = &qword_1ECF3FEC8;
      goto LABEL_31;
    case 205:
      type metadata accessor for PlaybackSongViewModel();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_200_4();
        sub_1E375C1CC(v368, v379);
        v149 = v319[2];
        OUTLINED_FUNCTION_57();
        sub_1E417B65C();
        type metadata accessor for Router();
        sub_1E40C4334();

        OUTLINED_FUNCTION_34();
        sub_1E40C49A8();
        v151 = v150;

        OUTLINED_FUNCTION_38_78();
        sub_1E40FCB48(v152);
        OUTLINED_FUNCTION_20_2();
        v153 = sub_1E4200504();
        v154 = (v149 + *(v326 + 36));
        *v154 = v153;
        v154[1] = v151;
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v155, v156, v157);
        swift_storeEnumTagMultiPayload();
        sub_1E40F613C();
        v158 = v331;
        OUTLINED_FUNCTION_123_12();
        sub_1E4201F44();

        v159 = OUTLINED_FUNCTION_30_88();
        sub_1E325F6F0(v159, v160);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_1E40F613C();
        v158 = v331;
        OUTLINED_FUNCTION_124_10();
        sub_1E4201F44();
      }

      sub_1E3743538(v158, v344, &qword_1ECF3FDB0);
      swift_storeEnumTagMultiPayload();
      sub_1E40F610C();
      OUTLINED_FUNCTION_122_11();
      sub_1E4201F44();
      OUTLINED_FUNCTION_11_61();
      sub_1E3743538(v308, v309, v310);
      swift_storeEnumTagMultiPayload();
      sub_1E40F731C();
      OUTLINED_FUNCTION_19_152();
      OUTLINED_FUNCTION_90();
      sub_1E40F8F18(v311);
      OUTLINED_FUNCTION_139_13();
      sub_1E4201F44();
      v312 = OUTLINED_FUNCTION_33_92();
      sub_1E325F6F0(v312, v313);
      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v314, v315, v316);
      OUTLINED_FUNCTION_114_1();
      swift_storeEnumTagMultiPayload();
      sub_1E40F6CF0();
      sub_1E40F7264();
      OUTLINED_FUNCTION_102_19();
      OUTLINED_FUNCTION_190_3();
      v317 = OUTLINED_FUNCTION_55_52();
      sub_1E325F6F0(v317, v318);
      v97 = v158;
      v98 = &qword_1ECF3FDB0;
      goto LABEL_31;
    case 206:
      v356 = v73;
      v161 = TVAppFeature.isEnabled.getter(10);
      if (v161)
      {
        OUTLINED_FUNCTION_206_2();
        MEMORY[0x1EEE9AC00](v162);
        OUTLINED_FUNCTION_10_178();
        type metadata accessor for TeamLockup(0);
        OUTLINED_FUNCTION_119_10();
        sub_1E40FCB48(v163);
        OUTLINED_FUNCTION_227_1();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_51_1();
        v164 = OUTLINED_FUNCTION_52_43();
        sub_1E40424BC(v164, v165, v166, v167);
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v168, v169, v170);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201_4();
        OUTLINED_FUNCTION_109_10();
        sub_1E3D6870C(v171);
        OUTLINED_FUNCTION_90();
        sub_1E3D6870C(v172);
        v173 = v329;
        sub_1E4201F44();
        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v174, v175);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v161);
        OUTLINED_FUNCTION_10_178();
        sub_1E40FA99C();

        OUTLINED_FUNCTION_152_9();
        v270 = OUTLINED_FUNCTION_172_1();
        memcpy(v270, v271, 0x170uLL);
        memcpy(v323, v379, 0x170uLL);
        swift_storeEnumTagMultiPayload();
        v272 = OUTLINED_FUNCTION_57();
        __swift_instantiateConcreteTypeFromMangledNameV2(v272);
        OUTLINED_FUNCTION_108_14();
        sub_1E3D6870C(v273);
        OUTLINED_FUNCTION_82();
        sub_1E3D6870C(v274);
        v173 = v329;
        sub_1E4201F44();
      }

      sub_1E3743538(v173, v339, &qword_1ECF3FEA0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201_4();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_90();
      sub_1E3D6870C(v275);
      sub_1E40F7184();
      OUTLINED_FUNCTION_97_1();
      sub_1E4201F44();
      OUTLINED_FUNCTION_42_74();
      sub_1E3743538(v276, v277, v278);
      swift_storeEnumTagMultiPayload();
      sub_1E40F701C();
      sub_1E40F70CC();
      OUTLINED_FUNCTION_122_11();
      sub_1E4201F44();
      OUTLINED_FUNCTION_90();
      sub_1E325F6F0(v279, v280);
      OUTLINED_FUNCTION_11_61();
      sub_1E3743538(v281, v282, v283);
      OUTLINED_FUNCTION_228_1();
      sub_1E40F6D7C();
      sub_1E40F6F90();
      OUTLINED_FUNCTION_139_13();
      OUTLINED_FUNCTION_150_8();
      sub_1E4201F44();
      v284 = OUTLINED_FUNCTION_33_92();
      sub_1E325F6F0(v284, v285);
      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v286, v287, v288);
      OUTLINED_FUNCTION_114_1();
      swift_storeEnumTagMultiPayload();
      sub_1E40F6CF0();
      sub_1E40F7264();
      OUTLINED_FUNCTION_102_19();
      OUTLINED_FUNCTION_190_3();
      v289 = OUTLINED_FUNCTION_55_52();
      sub_1E325F6F0(v289, v290);
      v97 = v173;
      v98 = &qword_1ECF3FEA0;
      goto LABEL_31;
    case 210:
    case 211:
    case 212:
      goto LABEL_5;
    case 213:
    case 215:
    case 217:
      v356 = v73;
      v99 = *sub_1E39D021C();
      v378[0] = 0;
      v100 = *(*v3 + 776);
      v361 = v99;

      v100(v379, v378, &unk_1F5D5DE28, &off_1F5D5CA58);
      if (v379[3])
      {
        v101 = swift_dynamicCast();
        if (v101)
        {
          v102 = v378[0];
          goto LABEL_13;
        }
      }

      else
      {
        v101 = sub_1E325F6F0(v379, &unk_1ECF296E0);
      }

      v102 = 1;
LABEL_13:
      LODWORD(v360) = v102;
      v359 = v319;
      MEMORY[0x1EEE9AC00](v101);
      OUTLINED_FUNCTION_10_178();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF401C0);
      sub_1E40FAAF8();
      v126 = OUTLINED_FUNCTION_51_1();
      sub_1E40424BC(v3, v126 & 1, sub_1E40FAAF0, v57);
      v127 = swift_allocObject();
      *(v127 + 16) = v360;
      *(v127 + 24) = v361;

      sub_1E40435E0(sub_1E40FADB8, v127, v54, v362);

      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v128, v129);
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v130, v131, v132);
      OUTLINED_FUNCTION_114_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_82();
      sub_1E3D6870C(v133);
      sub_1E4201F44();
      OUTLINED_FUNCTION_96_2();
      sub_1E3743538(v134, v135, v136);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6E08();
      sub_1E40F6EC0();
      OUTLINED_FUNCTION_165_10();
      sub_1E4201F44();
      v137 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v137, v138);
      OUTLINED_FUNCTION_96_2();
      sub_1E3743538(v139, v140, v141);
      OUTLINED_FUNCTION_28_19();
      sub_1E40F6D7C();
      sub_1E40F6F90();
      OUTLINED_FUNCTION_94_24();
      OUTLINED_FUNCTION_150_8();
      sub_1E4201F44();
      v142 = OUTLINED_FUNCTION_54_55();
      sub_1E325F6F0(v142, v143);
      OUTLINED_FUNCTION_96_2();
      sub_1E3743538(v144, v145, v146);
      OUTLINED_FUNCTION_157_9();
      sub_1E40F6CF0();
      sub_1E40F7264();
      OUTLINED_FUNCTION_70_33();
      sub_1E4201F44();

      v147 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v147, v148);
      v97 = v362;
      v98 = &qword_1ECF3FE68;
LABEL_31:
      sub_1E325F6F0(v97, v98);
LABEL_32:
      OUTLINED_FUNCTION_25_2();
      return;
    case 219:
    case 220:
      OUTLINED_FUNCTION_114_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_13_2();
      sub_1E3D6870C(v103);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v104, v105, v106);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6E08();
      sub_1E40F6EC0();
      OUTLINED_FUNCTION_86_22();
      sub_1E4201F44();
      v107 = OUTLINED_FUNCTION_30_88();
      sub_1E325F6F0(v107, v108);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v109, v110, v111);
      OUTLINED_FUNCTION_28_19();
      sub_1E40F6D7C();
      sub_1E40F6F90();
      OUTLINED_FUNCTION_140_3();
      OUTLINED_FUNCTION_150_8();
      sub_1E4201F44();
      v112 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v112, v113);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v114, v115, v116);
      OUTLINED_FUNCTION_223();
      swift_storeEnumTagMultiPayload();
      sub_1E40F6CF0();
      sub_1E40F7264();
      OUTLINED_FUNCTION_102_19();
      OUTLINED_FUNCTION_145_2();
      v97 = OUTLINED_FUNCTION_8_12();
      goto LABEL_31;
    case 221:
      OUTLINED_FUNCTION_23();
      nullsub_1(v198, v199);
      v200 = v320;
      v201 = OUTLINED_FUNCTION_97_1();
      v202(v201);
      OUTLINED_FUNCTION_57();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_13_2();
      sub_1E3D6870C(v203);
      OUTLINED_FUNCTION_63_0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v204, v205, v206);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6E08();
      sub_1E40F6EC0();
      OUTLINED_FUNCTION_86_22();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v207, v208);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v209, v210, v211);
      OUTLINED_FUNCTION_28_19();
      sub_1E40F6D7C();
      sub_1E40F6F90();
      OUTLINED_FUNCTION_184_2();
      OUTLINED_FUNCTION_150_8();
      sub_1E4201F44();
      v212 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v212, v213);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v214, v215, v216);
      OUTLINED_FUNCTION_223();
      swift_storeEnumTagMultiPayload();
      sub_1E40F6CF0();
      sub_1E40F7264();
      OUTLINED_FUNCTION_102_19();
      OUTLINED_FUNCTION_145_2();
      v217 = OUTLINED_FUNCTION_30_88();
      sub_1E325F6F0(v217, v218);
      (*(v200 + 8))(v0, v346);
      goto LABEL_32;
    default:
      switch(v74)
      {
        case 182:
          MEMORY[0x1EEE9AC00](v71);
          v230 = v368;
          v319[-2] = v3;
          v319[-1] = v230;
          type metadata accessor for ListLockup();
          OUTLINED_FUNCTION_5_249();
          sub_1E40FCB48(v231);

          v232 = v355;
          OUTLINED_FUNCTION_69_0();
          sub_1E404267C();
          OUTLINED_FUNCTION_42_74();
          sub_1E3743538(v233, v234, v235);
          OUTLINED_FUNCTION_57();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_5_1();
          OUTLINED_FUNCTION_13_2();
          OUTLINED_FUNCTION_90();
          sub_1E3D6870C(v236);
          OUTLINED_FUNCTION_208_0();
          sub_1E4201F44();
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v237, v238, v239);
          swift_storeEnumTagMultiPayload();
          sub_1E40F6E08();
          sub_1E40F6EC0();
          OUTLINED_FUNCTION_94_24();
          sub_1E4201F44();
          OUTLINED_FUNCTION_82();
          sub_1E325F6F0(v240, v241);
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v242, v243, v244);
          OUTLINED_FUNCTION_28_19();
          sub_1E40F6D7C();
          sub_1E40F6F90();
          OUTLINED_FUNCTION_52_43();
          OUTLINED_FUNCTION_150_8();
          sub_1E4201F44();
          v245 = OUTLINED_FUNCTION_30_88();
          sub_1E325F6F0(v245, v246);
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v247, v248, v249);
          OUTLINED_FUNCTION_157_9();
          sub_1E40F6CF0();
          sub_1E40F7264();
          OUTLINED_FUNCTION_70_33();
          sub_1E4201F44();
          OUTLINED_FUNCTION_82();
          sub_1E325F6F0(v250, v251);
          v97 = v232;
          v98 = &qword_1ECF3FE78;
          break;
        case 244:
          sub_1E40FA948();

          OUTLINED_FUNCTION_67_0();
          v252 = OUTLINED_FUNCTION_51_1();
          sub_1E40424BC(v3, v252 & 1, sub_1E40FA8E4, v379);
          memcpy(v335, v379, 0x78uLL);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v253, v254, v255);
          v256 = OUTLINED_FUNCTION_57();
          __swift_instantiateConcreteTypeFromMangledNameV2(v256);
          OUTLINED_FUNCTION_13_2();
          OUTLINED_FUNCTION_82();
          sub_1E3D6870C(v257);
          sub_1E40F73D4();
          OUTLINED_FUNCTION_84_25();
          sub_1E4201F44();
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v258, v259, v260);
          swift_storeEnumTagMultiPayload();
          sub_1E40F731C();
          OUTLINED_FUNCTION_19_152();
          sub_1E40F8F18(v261);
          v262 = v353;
          OUTLINED_FUNCTION_165_10();
          sub_1E4201F44();
          v263 = OUTLINED_FUNCTION_49_64();
          sub_1E325F6F0(v263, v264);
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v265, v266, v267);
          swift_storeEnumTagMultiPayload();
          sub_1E40F6CF0();
          sub_1E40F7264();
          OUTLINED_FUNCTION_102_19();
          OUTLINED_FUNCTION_39_0();
          sub_1E4201F44();
          OUTLINED_FUNCTION_82();
          sub_1E325F6F0(v268, v269);
          v97 = v262;
          v98 = &qword_1ECF3FEB0;
          break;
        case 258:
LABEL_5:
          OUTLINED_FUNCTION_206_2();
          MEMORY[0x1EEE9AC00](v75);
          OUTLINED_FUNCTION_10_178();
          type metadata accessor for ListLockup();
          OUTLINED_FUNCTION_5_249();
          sub_1E40FCB48(v76);
          OUTLINED_FUNCTION_227_1();
          v77 = v355;
          OUTLINED_FUNCTION_18_5();
          sub_1E404267C();
          OUTLINED_FUNCTION_18_5();
          sub_1E3743538(v78, v79, v80);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_13_2();
          OUTLINED_FUNCTION_82();
          sub_1E3D6870C(v81);
          sub_1E4201F44();
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v82, v83, v84);
          swift_storeEnumTagMultiPayload();
          sub_1E40F701C();
          sub_1E40F70CC();
          OUTLINED_FUNCTION_165_10();
          sub_1E4201F44();
          v85 = OUTLINED_FUNCTION_55_52();
          sub_1E325F6F0(v85, v86);
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v87, v88, v89);
          OUTLINED_FUNCTION_228_1();
          sub_1E40F6D7C();
          sub_1E40F6F90();
          OUTLINED_FUNCTION_94_24();
          OUTLINED_FUNCTION_150_8();
          sub_1E4201F44();
          v90 = OUTLINED_FUNCTION_34_11();
          sub_1E325F6F0(v90, v91);
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v92, v93, v94);
          OUTLINED_FUNCTION_157_9();
          sub_1E40F6CF0();
          sub_1E40F7264();
          OUTLINED_FUNCTION_70_33();
          sub_1E4201F44();
          v95 = OUTLINED_FUNCTION_33_92();
          sub_1E325F6F0(v95, v96);
          v97 = v77;
          v98 = &qword_1ECF3FE78;
          break;
        default:
LABEL_10:
          swift_storeEnumTagMultiPayload();
          sub_1E40F610C();
          OUTLINED_FUNCTION_124_10();
          sub_1E4201F44();
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v117, v118, v119);
          swift_storeEnumTagMultiPayload();
          sub_1E40F731C();
          OUTLINED_FUNCTION_19_152();
          OUTLINED_FUNCTION_82();
          sub_1E40F8F18(v120);
          OUTLINED_FUNCTION_140_3();
          sub_1E4201F44();
          v121 = OUTLINED_FUNCTION_10_13();
          sub_1E325F6F0(v121, v122);
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v123, v124, v125);
          OUTLINED_FUNCTION_223();
          swift_storeEnumTagMultiPayload();
          sub_1E40F6CF0();
          sub_1E40F7264();
          OUTLINED_FUNCTION_102_19();
          OUTLINED_FUNCTION_145_2();
          v97 = OUTLINED_FUNCTION_138_0();
          break;
      }

      goto LABEL_31;
  }
}

void sub_1E40F08CC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  memcpy(v9, (v1 + 8), sizeof(v9));
  sub_1E40F0A2C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF38);
  sub_1E40F7608();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40060);
  sub_1E40F8F70();
  sub_1E383FBF4();
  swift_getOpaqueTypeConformance2();
  sub_1E3E35D1C(v6, v3);
  OUTLINED_FUNCTION_55_0();
  sub_1E325F6F0(v7, v8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40F0A2C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v685 = v4;
  memcpy(v697, v4, sizeof(v697));
  type metadata accessor for ListLockup();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_3();
  v650 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40228);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40090);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v660 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40058);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40230);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v676 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40048);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40238);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v672 = v16;
  v17 = OUTLINED_FUNCTION_138();
  type metadata accessor for OrdinalLockup(v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_3();
  v659 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40050);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v678 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40240);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40248);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40040);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40038);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40250);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v661 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40028);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40258);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v651 = v31;
  OUTLINED_FUNCTION_138();
  type metadata accessor for SyndicationListLockup();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9_3();
  v648 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40030);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  v662 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40260);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40268);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40270);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40278);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  v671 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40020);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40018);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40010);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40008);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_138();
  type metadata accessor for CanonicalInfoCard();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_9_3();
  v675 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40280);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v677 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_138();
  type metadata accessor for OfferLockup();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_9_3();
  v657 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_44();
  v656 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_204_1(v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_44();
  v658 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40288);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_44();
  v680 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40290);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF400D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_44();
  v670 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_44();
  v681 = v65;
  v66 = OUTLINED_FUNCTION_138();
  type metadata accessor for PlaybackPersonView(v66);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_9_3();
  v655 = v68;
  OUTLINED_FUNCTION_138();
  type metadata accessor for OfferCard();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_9_3();
  v654 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40298);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_44();
  v668 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_44();
  v679 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v674 = v74;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_44();
  v673 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF402A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF402A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_44();
  v666 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_138();
  type metadata accessor for SearchHintLockupListCell();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_9_3();
  v653 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF402B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_44();
  v664 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_44();
  v665 = v87;
  OUTLINED_FUNCTION_138();
  type metadata accessor for EditorialLockup();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_9_3();
  v652 = v89;
  v90 = OUTLINED_FUNCTION_138();
  type metadata accessor for Card(v90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_9_3();
  v669 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF402B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_44();
  v663 = v94;
  v95 = OUTLINED_FUNCTION_138();
  type metadata accessor for SportsLockup(v95);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_5();
  v99 = v98 - v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_44();
  v667 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF402C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_44();
  v688 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF402C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_44();
  v683 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF402D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF402D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF402E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_21_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_44();
  v682 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_44();
  v684 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FF60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_8_4();
  v116 = v3;
  v117 = *(v3 + 98);
  if (qword_1EE2A4420 != -1)
  {
    OUTLINED_FUNCTION_135_8();
  }

  if (sub_1E38E5664(v117, qword_1EE2AB168))
  {
    sub_1E40FAE10();
    sub_1E3743538(v0, v1, &qword_1ECF3FF60);
    swift_storeEnumTagMultiPayload();
    sub_1E40F78C4();
    sub_1E40F7F9C();
    OUTLINED_FUNCTION_134_10();
    sub_1E4201F44();
    OUTLINED_FUNCTION_158();
    sub_1E3743538(v120, v121, v122);
    OUTLINED_FUNCTION_212_0();
    swift_storeEnumTagMultiPayload();
    sub_1E40F7838();
    sub_1E40F8088();
    OUTLINED_FUNCTION_133_12();
    sub_1E4201F44();
    v123 = OUTLINED_FUNCTION_178_5();
    sub_1E325F6F0(v123, v124);
    OUTLINED_FUNCTION_82();
    sub_1E3743538(v125, v126, v127);
    OUTLINED_FUNCTION_162_7();
    sub_1E40F77AC();
    sub_1E40F8198();
    OUTLINED_FUNCTION_149_6();
    sub_1E4201F44();
    v128 = OUTLINED_FUNCTION_74();
    sub_1E325F6F0(v128, v129);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v130, v131, v132);
    OUTLINED_FUNCTION_192_3();
    sub_1E40F7720();
    sub_1E40F83B4();
    OUTLINED_FUNCTION_44_67();
    v133 = OUTLINED_FUNCTION_6_181();
    sub_1E325F6F0(v133, v134);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v135, v136, v137);
    OUTLINED_FUNCTION_91_23();
    swift_storeEnumTagMultiPayload();
    sub_1E40F7694();
    sub_1E40F8830();
    OUTLINED_FUNCTION_25_112();
    sub_1E4201F44();
    v138 = OUTLINED_FUNCTION_30_88();
    sub_1E325F6F0(v138, v139);
    v140 = v0;
    v141 = &qword_1ECF3FF60;
LABEL_57:
    sub_1E325F6F0(v140, v141);
    goto LABEL_58;
  }

  switch(v117)
  {
    case 166:
    case 168:
    case 192:

      OUTLINED_FUNCTION_78_24();
      v142 = v675;
      OUTLINED_FUNCTION_57();
      sub_1E3FF1808();
      v116 = type metadata accessor for CanonicalInfoCard;
      sub_1E40FC89C(v675, v677, type metadata accessor for CanonicalInfoCard);
      goto LABEL_34;
    case 167:
    case 169:
    case 171:
    case 172:
    case 173:
    case 176:
    case 178:
    case 179:
    case 182:
    case 183:
    case 185:
    case 186:
    case 187:
    case 188:
    case 190:
    case 191:
    case 193:
    case 194:
    case 199:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
      goto LABEL_19;
    case 170:

      sub_1E375C1CC(v685, v695);
      v419 = OUTLINED_FUNCTION_63_0();
      sub_1E3D044C0(v419, v420, v421);
      sub_1E40FC89C(v652, v664, type metadata accessor for EditorialLockup);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_151();
      sub_1E40FCB48(v422);
      sub_1E40F8144();
      sub_1E4201F44();
      v423 = OUTLINED_FUNCTION_57();
      sub_1E3743538(v423, v424, &qword_1ECF3FFB0);
      OUTLINED_FUNCTION_212_0();
      swift_storeEnumTagMultiPayload();
      sub_1E40F7838();
      sub_1E40F8088();
      OUTLINED_FUNCTION_133_12();
      sub_1E4201F44();
      sub_1E325F6F0(v665, &qword_1ECF3FFB0);
      OUTLINED_FUNCTION_82();
      sub_1E3743538(v425, v426, v427);
      OUTLINED_FUNCTION_162_7();
      sub_1E40F77AC();
      sub_1E40F8198();
      OUTLINED_FUNCTION_122_11();
      OUTLINED_FUNCTION_149_6();
      sub_1E4201F44();
      sub_1E325F6F0(v682, &qword_1ECF3FF50);
      OUTLINED_FUNCTION_43_72();
      sub_1E3743538(v428, v429, v430);
      OUTLINED_FUNCTION_192_3();
      sub_1E40F7720();
      sub_1E40F83B4();
      OUTLINED_FUNCTION_76_26();
      OUTLINED_FUNCTION_92_16();
      sub_1E4201F44();
      v431 = OUTLINED_FUNCTION_30_88();
      sub_1E325F6F0(v431, v432);
      OUTLINED_FUNCTION_43_72();
      sub_1E3743538(v433, v434, v435);
      OUTLINED_FUNCTION_91_23();
      swift_storeEnumTagMultiPayload();
      sub_1E40F7694();
      sub_1E40F8830();
      OUTLINED_FUNCTION_72_31();
      OUTLINED_FUNCTION_75_29();
      sub_1E4201F44();
      v436 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v436, v437);
      v376 = v652;
      v438 = type metadata accessor for EditorialLockup;
      goto LABEL_53;
    case 174:
      v143 = v673;
      nullsub_1(v118, v119);
      v144 = v674;
      v377 = OUTLINED_FUNCTION_214_2();
      v378(v377);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_100_11();
      sub_1E40FCB48(v379);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_110_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v380, v381, v382);
      swift_storeEnumTagMultiPayload();
      sub_1E40F8224();
      sub_1E40F82F8();
      OUTLINED_FUNCTION_140_3();
      OUTLINED_FUNCTION_209_2();
      sub_1E4201F44();
      v383 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v383, v384);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v385, v386, v387);
      swift_storeEnumTagMultiPayload();
      sub_1E40F77AC();
      sub_1E40F8198();
      OUTLINED_FUNCTION_86_22();
      OUTLINED_FUNCTION_149_6();
      sub_1E4201F44();
      v388 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v388, v389);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v390, v391, v392);
      OUTLINED_FUNCTION_192_3();
      sub_1E40F7720();
      sub_1E40F83B4();
      OUTLINED_FUNCTION_46_66();
      v393 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v393, v394);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v395, v396, v397);
      OUTLINED_FUNCTION_91_23();
      goto LABEL_37;
    case 175:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_15_173();
      sub_1E40FCB48(v400);
      OUTLINED_FUNCTION_124_10();
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v401, v402, v403);
      swift_storeEnumTagMultiPayload();
      sub_1E40F8224();
      sub_1E40F82F8();
      OUTLINED_FUNCTION_140_3();
      OUTLINED_FUNCTION_209_2();
      sub_1E4201F44();
      v404 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v404, v405);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v406, v407, v408);
      swift_storeEnumTagMultiPayload();
      sub_1E40F77AC();
      sub_1E40F8198();
      OUTLINED_FUNCTION_86_22();
      OUTLINED_FUNCTION_149_6();
      sub_1E4201F44();
      v409 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v409, v410);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v411, v412, v413);
      OUTLINED_FUNCTION_192_3();
      sub_1E40F7720();
      sub_1E40F83B4();
      OUTLINED_FUNCTION_46_66();
      v414 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v414, v415);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v416, v417, v418);
      OUTLINED_FUNCTION_91_23();
      goto LABEL_39;
    case 177:

      OUTLINED_FUNCTION_78_24();
      v439 = OUTLINED_FUNCTION_57();
      sub_1E39B628C(v439, v440, v441);
      memcpy(v671, v695, 0xCBuLL);
      OUTLINED_FUNCTION_28_19();
      v442 = OUTLINED_FUNCTION_183_6();
      sub_1E40FC6C0(v442, v443);
      sub_1E40F8ABC();
      OUTLINED_FUNCTION_0_345();
      sub_1E40FCB48(v444);
      OUTLINED_FUNCTION_110_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v445, v446, v447);
      swift_storeEnumTagMultiPayload();
      sub_1E40F8A00();
      sub_1E40F8B10();
      OUTLINED_FUNCTION_140_3();
      OUTLINED_FUNCTION_210_1();
      sub_1E4201F44();
      v448 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v448, v449);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v450, v451, v452);
      OUTLINED_FUNCTION_222_1();
      swift_storeEnumTagMultiPayload();
      sub_1E40F8974();
      sub_1E40F8D00();
      OUTLINED_FUNCTION_45_72();
      v453 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v453, v454);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v455, v456, v457);
      OUTLINED_FUNCTION_171_4();
      swift_storeEnumTagMultiPayload();
      sub_1E40F88E8();
      OUTLINED_FUNCTION_3_274();
      sub_1E40F8F18(v458);
      OUTLINED_FUNCTION_28_92();
      v459 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v459, v460);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v461, v462, v463);
      OUTLINED_FUNCTION_69_33();
      swift_storeEnumTagMultiPayload();
      sub_1E40F7694();
      sub_1E40F8830();
      OUTLINED_FUNCTION_27_102();
      sub_1E40FC71C(v695);
      goto LABEL_56;
    case 180:

      OUTLINED_FUNCTION_78_24();
      v142 = v657;
      v353 = OUTLINED_FUNCTION_57();
      sub_1E3D9E0B4(v353, v354, v355);
      v116 = type metadata accessor for OfferLockup;
      sub_1E40FC89C(v657, v677, type metadata accessor for OfferLockup);
LABEL_34:
      swift_storeEnumTagMultiPayload();
      sub_1E40FCB48(&unk_1EE285EC0);
      sub_1E40FCB48(&unk_1EE27C0E0);
      OUTLINED_FUNCTION_123_12();
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v356, v357, v358);
      goto LABEL_35;
    case 181:

      OUTLINED_FUNCTION_78_24();
      v255 = v654;
      v285 = OUTLINED_FUNCTION_57();
      sub_1E3803980(v285, v286, v287);
      OUTLINED_FUNCTION_116_16();
      sub_1E40FC89C(v654, v668, v288);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_15_173();
      sub_1E40FCB48(v289);
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v290, v291, v292);
      swift_storeEnumTagMultiPayload();
      sub_1E40F8224();
      sub_1E40F82F8();
      OUTLINED_FUNCTION_76_26();
      OUTLINED_FUNCTION_209_2();
      sub_1E4201F44();
      v293 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v293, v294);
      goto LABEL_45;
    case 184:
    case 189:
      v167 = TVAppFeature.isEnabled.getter(10);

      sub_1E375C1CC(v685, v695);
      if (v167)
      {
        OUTLINED_FUNCTION_208_0();
        sub_1E3B33074();
        v686 = type metadata accessor for SportsLockup;
        sub_1E40FC89C(v99, v663, type metadata accessor for SportsLockup);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_20_130();
        sub_1E40FCB48(v168);
        OUTLINED_FUNCTION_0_345();
        sub_1E40FCB48(v169);
        v170 = v667;
        sub_1E4201F44();
        v171 = v99;
      }

      else
      {
        OUTLINED_FUNCTION_63_0();
        sub_1E3AB83E0();
        v686 = type metadata accessor for Card;
        sub_1E40FC89C(v669, v663, type metadata accessor for Card);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_20_130();
        sub_1E40FCB48(v185);
        OUTLINED_FUNCTION_0_345();
        sub_1E40FCB48(v186);
        v170 = v667;
        sub_1E4201F44();
        v171 = v669;
      }

      sub_1E40FC8F8(v171, v686);
      v187 = OUTLINED_FUNCTION_97_1();
      sub_1E3743538(v187, v188, v189);
      swift_storeEnumTagMultiPayload();
      sub_1E40F78C4();
      sub_1E40F7F9C();
      OUTLINED_FUNCTION_134_10();
      sub_1E4201F44();
      OUTLINED_FUNCTION_158();
      sub_1E3743538(v190, v191, v192);
      OUTLINED_FUNCTION_212_0();
      swift_storeEnumTagMultiPayload();
      sub_1E40F7838();
      sub_1E40F8088();
      OUTLINED_FUNCTION_133_12();
      sub_1E4201F44();
      v193 = OUTLINED_FUNCTION_178_5();
      sub_1E325F6F0(v193, v194);
      OUTLINED_FUNCTION_82();
      sub_1E3743538(v195, v196, v197);
      OUTLINED_FUNCTION_162_7();
      sub_1E40F77AC();
      sub_1E40F8198();
      OUTLINED_FUNCTION_149_6();
      sub_1E4201F44();
      v198 = OUTLINED_FUNCTION_74();
      sub_1E325F6F0(v198, v199);
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v200, v201, v202);
      OUTLINED_FUNCTION_192_3();
      sub_1E40F7720();
      sub_1E40F83B4();
      OUTLINED_FUNCTION_44_67();
      v203 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v203, v204);
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v205, v206, v207);
      OUTLINED_FUNCTION_91_23();
      swift_storeEnumTagMultiPayload();
      sub_1E40F7694();
      sub_1E40F8830();
      OUTLINED_FUNCTION_25_112();
      sub_1E4201F44();
      v208 = OUTLINED_FUNCTION_30_88();
      sub_1E325F6F0(v208, v209);
      v140 = v170;
      v141 = &qword_1ECF3FFA8;
      goto LABEL_57;
    case 195:

      sub_1E375C1CC(v685, v695);
      v472 = OUTLINED_FUNCTION_63_0();
      sub_1E39B628C(v472, v473, v474);
      memcpy(v664, v695, 0xCBuLL);
      swift_storeEnumTagMultiPayload();
      v475 = OUTLINED_FUNCTION_183_6();
      sub_1E40FC7EC(v475, v476);
      OUTLINED_FUNCTION_17_151();
      sub_1E40FCB48(v477);
      sub_1E40F8144();
      sub_1E4201F44();
      OUTLINED_FUNCTION_11_61();
      sub_1E3743538(v478, v479, v480);
      OUTLINED_FUNCTION_212_0();
      swift_storeEnumTagMultiPayload();
      sub_1E40F7838();
      sub_1E40F8088();
      OUTLINED_FUNCTION_133_12();
      sub_1E4201F44();
      v481 = OUTLINED_FUNCTION_55_52();
      sub_1E325F6F0(v481, v482);
      OUTLINED_FUNCTION_82();
      sub_1E3743538(v483, v484, v485);
      OUTLINED_FUNCTION_162_7();
      sub_1E40F77AC();
      sub_1E40F8198();
      OUTLINED_FUNCTION_124_10();
      OUTLINED_FUNCTION_149_6();
      sub_1E4201F44();
      v486 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v486, v487);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v488, v489, v490);
      OUTLINED_FUNCTION_192_3();
      sub_1E40F7720();
      sub_1E40F83B4();
      OUTLINED_FUNCTION_46_66();
      v491 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v491, v492);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v493, v494, v495);
      OUTLINED_FUNCTION_91_23();
      swift_storeEnumTagMultiPayload();
      sub_1E40F7694();
      sub_1E40F8830();
      OUTLINED_FUNCTION_27_102();
      sub_1E40FC848(v695);
      goto LABEL_56;
    case 196:
      v320 = TVAppFeature.isEnabled.getter(10);

      sub_1E375C1CC(v685, v695);
      v321 = OUTLINED_FUNCTION_57();
      if (v320)
      {
        sub_1E3E2B21C(v321, v322, v323);
        OUTLINED_FUNCTION_101_16();
        sub_1E40FC89C(v648, v651, v324);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_7_243();
        sub_1E40FCB48(v325);
        sub_1E40F8C58();
        v326 = v662;
        sub_1E4201F44();
        v327 = OUTLINED_FUNCTION_138_0();
        sub_1E40FC8F8(v327, v328);
      }

      else
      {
        sub_1E38E2E30(v321, v322, v323);
        memcpy(v651, v695, 0x140uLL);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_7_243();
        sub_1E40FCB48(v602);
        sub_1E40F8C58();
        v326 = v662;
        sub_1E4201F44();
      }

      sub_1E3743538(v326, v661, &qword_1ECF40030);
      OUTLINED_FUNCTION_57();
      swift_storeEnumTagMultiPayload();
      sub_1E40F8B9C();
      sub_1E40F8CAC();
      OUTLINED_FUNCTION_158_10();
      sub_1E4201F44();
      OUTLINED_FUNCTION_42_74();
      sub_1E3743538(v603, v604, v605);
      OUTLINED_FUNCTION_97_1();
      swift_storeEnumTagMultiPayload();
      sub_1E40F8A00();
      sub_1E40F8B10();
      OUTLINED_FUNCTION_124_10();
      OUTLINED_FUNCTION_210_1();
      sub_1E4201F44();
      OUTLINED_FUNCTION_90();
      sub_1E325F6F0(v606, v607);
      OUTLINED_FUNCTION_11_61();
      sub_1E3743538(v608, v609, v610);
      swift_storeEnumTagMultiPayload();
      sub_1E40F8974();
      sub_1E40F8D00();
      OUTLINED_FUNCTION_139_13();
      OUTLINED_FUNCTION_141_13();
      sub_1E4201F44();
      OUTLINED_FUNCTION_90();
      sub_1E325F6F0(v611, v612);
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v613, v614, v615);
      OUTLINED_FUNCTION_181_5();
      sub_1E40F88E8();
      OUTLINED_FUNCTION_3_274();
      sub_1E40F8F18(v616);
      OUTLINED_FUNCTION_179_5();
      v617 = OUTLINED_FUNCTION_55_52();
      sub_1E325F6F0(v617, v618);
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v619, v620, v621);
      OUTLINED_FUNCTION_125_13();
      swift_storeEnumTagMultiPayload();
      sub_1E40F7694();
      sub_1E40F8830();
      OUTLINED_FUNCTION_72_31();
      OUTLINED_FUNCTION_75_29();
      sub_1E4201F44();
      v622 = OUTLINED_FUNCTION_34_11();
      sub_1E325F6F0(v622, v623);
      v140 = v662;
      v141 = &qword_1ECF40030;
      goto LABEL_57;
    case 197:

      OUTLINED_FUNCTION_78_24();
      v255 = v669;
      OUTLINED_FUNCTION_57();
      sub_1E3AB83E0();
      OUTLINED_FUNCTION_16_158();
      sub_1E40FC89C(v669, v671, v256);
      OUTLINED_FUNCTION_228_1();
      sub_1E40F8ABC();
      OUTLINED_FUNCTION_0_345();
      sub_1E40FCB48(v257);
      OUTLINED_FUNCTION_105_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v258, v259, v260);
      swift_storeEnumTagMultiPayload();
      sub_1E40F8A00();
      sub_1E40F8B10();
      OUTLINED_FUNCTION_76_26();
      OUTLINED_FUNCTION_210_1();
      sub_1E4201F44();
      v261 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v261, v262);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v263, v264, v265);
      swift_storeEnumTagMultiPayload();
      sub_1E40F8974();
      sub_1E40F8D00();
      OUTLINED_FUNCTION_88_22();
      OUTLINED_FUNCTION_141_13();
      sub_1E4201F44();
      v266 = OUTLINED_FUNCTION_31_96();
      sub_1E325F6F0(v266, v267);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v268, v269, v270);
      OUTLINED_FUNCTION_181_5();
      sub_1E40F88E8();
      OUTLINED_FUNCTION_3_274();
      sub_1E40F8F18(v271);
      OUTLINED_FUNCTION_76_26();
      sub_1E4201F44();
      v272 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v272, v273);
      goto LABEL_50;
    case 198:

      OUTLINED_FUNCTION_78_24();
      v329 = OUTLINED_FUNCTION_57();
      sub_1E39B628C(v329, v330, v331);
      memcpy(v661, v695, 0xCBuLL);
      swift_storeEnumTagMultiPayload();
      v332 = OUTLINED_FUNCTION_183_6();
      sub_1E40FC610(v332, v333);
      sub_1E40F8B9C();
      sub_1E40F8CAC();
      OUTLINED_FUNCTION_110_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v334, v335, v336);
      swift_storeEnumTagMultiPayload();
      sub_1E40F8A00();
      sub_1E40F8B10();
      OUTLINED_FUNCTION_140_3();
      OUTLINED_FUNCTION_210_1();
      sub_1E4201F44();
      v337 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v337, v338);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v339, v340, v341);
      OUTLINED_FUNCTION_222_1();
      swift_storeEnumTagMultiPayload();
      sub_1E40F8974();
      sub_1E40F8D00();
      OUTLINED_FUNCTION_45_72();
      v342 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v342, v343);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v344, v345, v346);
      OUTLINED_FUNCTION_171_4();
      swift_storeEnumTagMultiPayload();
      sub_1E40F88E8();
      OUTLINED_FUNCTION_3_274();
      sub_1E40F8F18(v347);
      OUTLINED_FUNCTION_28_92();
      v348 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v348, v349);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v350, v351, v352);
      OUTLINED_FUNCTION_69_33();
      swift_storeEnumTagMultiPayload();
      sub_1E40F7694();
      sub_1E40F8830();
      OUTLINED_FUNCTION_27_102();
      sub_1E40FC66C(v695);
      goto LABEL_56;
    case 200:
    case 201:
      if (TVAppFeature.isEnabled.getter(10))
      {

        OUTLINED_FUNCTION_78_24();
        OUTLINED_FUNCTION_57();
        sub_1E3D62028();
        sub_1E40FC89C(v659, v672, type metadata accessor for OrdinalLockup);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_107_12();
        sub_1E40FCB48(v172);
        OUTLINED_FUNCTION_5_1();
        v173 = v678;
        OUTLINED_FUNCTION_223();
        sub_1E4201F44();
        v174 = OUTLINED_FUNCTION_138_0();
        sub_1E40FC8F8(v174, v175);
      }

      else
      {
        OUTLINED_FUNCTION_23();
        nullsub_1(v210, v211);
        (*(v674 + 16))(v672, v673, v679);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_107_12();
        sub_1E40FCB48(v212);
        OUTLINED_FUNCTION_5_1();
        v173 = v678;
        sub_1E4201F44();
        (*(v674 + 8))(v673, v679);
      }

      sub_1E3743538(v173, v676, &qword_1ECF40050);
      swift_storeEnumTagMultiPayload();
      sub_1E40F8E44();
      sub_1E40F6384();
      OUTLINED_FUNCTION_158_10();
      sub_1E4201F44();
      OUTLINED_FUNCTION_42_74();
      sub_1E3743538(v213, v214, v215);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_18_140();
      sub_1E40F6520(v216);
      sub_1E40F8DB8();
      OUTLINED_FUNCTION_124_10();
      OUTLINED_FUNCTION_218_0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_90();
      sub_1E325F6F0(v217, v218);
      OUTLINED_FUNCTION_11_61();
      sub_1E3743538(v219, v220, v221);
      swift_storeEnumTagMultiPayload();
      sub_1E40F8974();
      sub_1E40F8D00();
      OUTLINED_FUNCTION_139_13();
      OUTLINED_FUNCTION_141_13();
      sub_1E4201F44();
      OUTLINED_FUNCTION_90();
      sub_1E325F6F0(v222, v223);
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v224, v225, v226);
      OUTLINED_FUNCTION_181_5();
      sub_1E40F88E8();
      OUTLINED_FUNCTION_3_274();
      sub_1E40F8F18(v227);
      OUTLINED_FUNCTION_179_5();
      v228 = OUTLINED_FUNCTION_55_52();
      sub_1E325F6F0(v228, v229);
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v230, v231, v232);
      OUTLINED_FUNCTION_125_13();
      swift_storeEnumTagMultiPayload();
      sub_1E40F7694();
      sub_1E40F8830();
      OUTLINED_FUNCTION_72_31();
      OUTLINED_FUNCTION_75_29();
      sub_1E4201F44();
      v233 = OUTLINED_FUNCTION_34_11();
      sub_1E325F6F0(v233, v234);
      v140 = v678;
      v141 = &qword_1ECF40050;
      goto LABEL_57;
    case 202:

      OUTLINED_FUNCTION_78_24();
      v295 = OUTLINED_FUNCTION_57();
      sub_1E40293BC(v295, v296, v297);
      memcpy(v676, v695, 0xE8uLL);
      swift_storeEnumTagMultiPayload();
      v298 = OUTLINED_FUNCTION_183_6();
      sub_1E402A3E4(v298, v299);
      sub_1E40F8E44();
      sub_1E40F6384();
      OUTLINED_FUNCTION_110_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v300, v301, v302);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_18_140();
      sub_1E40F6520(v303);
      sub_1E40F8DB8();
      OUTLINED_FUNCTION_140_3();
      OUTLINED_FUNCTION_218_0();
      sub_1E4201F44();
      v304 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v304, v305);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v306, v307, v308);
      OUTLINED_FUNCTION_222_1();
      swift_storeEnumTagMultiPayload();
      sub_1E40F8974();
      sub_1E40F8D00();
      OUTLINED_FUNCTION_45_72();
      v309 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v309, v310);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v311, v312, v313);
      OUTLINED_FUNCTION_171_4();
      swift_storeEnumTagMultiPayload();
      sub_1E40F88E8();
      OUTLINED_FUNCTION_3_274();
      sub_1E40F8F18(v314);
      OUTLINED_FUNCTION_28_92();
      v315 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v315, v316);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v317, v318, v319);
      OUTLINED_FUNCTION_69_33();
      swift_storeEnumTagMultiPayload();
      sub_1E40F7694();
      sub_1E40F8830();
      OUTLINED_FUNCTION_27_102();
      sub_1E40FA764(v695);
      goto LABEL_56;
    case 203:

      OUTLINED_FUNCTION_78_24();
      v235 = OUTLINED_FUNCTION_57();
      sub_1E40E2B9C(v235, v236, v237);
      memcpy(v660, v695, 0xD8uLL);
      swift_storeEnumTagMultiPayload();
      v238 = OUTLINED_FUNCTION_183_6();
      sub_1E40F914C(v238, v239);
      sub_1E40F69F0();
      OUTLINED_FUNCTION_5_249();
      sub_1E40FCB48(v240);
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v241, v242, v243);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6934();
      OUTLINED_FUNCTION_123_12();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v244, v245);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v246, v247, v248);
      OUTLINED_FUNCTION_171_4();
      swift_storeEnumTagMultiPayload();
      sub_1E40F88E8();
      OUTLINED_FUNCTION_3_274();
      OUTLINED_FUNCTION_82();
      sub_1E40F8F18(v249);
      OUTLINED_FUNCTION_28_92();
      v250 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v250, v251);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v252, v253, v254);
      OUTLINED_FUNCTION_69_33();
      swift_storeEnumTagMultiPayload();
      sub_1E40F7694();
      sub_1E40F8830();
      OUTLINED_FUNCTION_27_102();
      sub_1E40F91A8(v695);
      goto LABEL_56;
    case 204:

      OUTLINED_FUNCTION_78_24();
      v142 = v655;
      v464 = OUTLINED_FUNCTION_57();
      sub_1E3AE3D48(v464, v465, v466);
      OUTLINED_FUNCTION_96_22();
      sub_1E40FC89C(v655, v670, v467);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_171();
      sub_1E40FCB48(v468);
      sub_1E40F610C();
      OUTLINED_FUNCTION_123_12();
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v469, v470, v471);
LABEL_35:
      swift_storeEnumTagMultiPayload();
      sub_1E40F6050();
      sub_1E40F84CC();
      sub_1E4201F44();
      v359 = OUTLINED_FUNCTION_31_96();
      sub_1E325F6F0(v359, v360);
      OUTLINED_FUNCTION_96_2();
      sub_1E3743538(v361, v362, v363);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFE8);
      sub_1E40F8440();
      sub_1E40F85B8();
      OUTLINED_FUNCTION_94_24();
      sub_1E4201F44();
      v364 = OUTLINED_FUNCTION_54_55();
      sub_1E325F6F0(v364, v365);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v366, v367, v368);
      OUTLINED_FUNCTION_202_3();
      sub_1E40F7720();
      sub_1E40F83B4();
      OUTLINED_FUNCTION_76_26();
      OUTLINED_FUNCTION_92_16();
      sub_1E4201F44();
      v369 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v369, v370);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v371, v372, v373);
      OUTLINED_FUNCTION_91_23();
      swift_storeEnumTagMultiPayload();
      sub_1E40F7694();
      sub_1E40F8830();
      OUTLINED_FUNCTION_72_31();
      OUTLINED_FUNCTION_75_29();
      sub_1E4201F44();
      v374 = OUTLINED_FUNCTION_31_96();
      sub_1E325F6F0(v374, v375);
      v376 = v142;
      goto LABEL_52;
    case 205:
      type metadata accessor for PlaybackSongViewModel();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_200_4();
        OUTLINED_FUNCTION_78_24();
        OUTLINED_FUNCTION_57();
        sub_1E417B65C();
        type metadata accessor for Router();
        sub_1E40C4334();

        OUTLINED_FUNCTION_34();
        sub_1E40C49A8();
        v275 = v274;

        OUTLINED_FUNCTION_38_78();
        sub_1E40FCB48(v276);
        OUTLINED_FUNCTION_20_2();
        v277 = sub_1E4200504();
        v278 = (v649 + *(v656 + 36));
        *v278 = v277;
        v278[1] = v275;
        OUTLINED_FUNCTION_43_72();
        sub_1E3743538(v279, v280, v281);
        swift_storeEnumTagMultiPayload();
        sub_1E40F613C();
        v282 = v658;
        sub_1E4201F44();

        v283 = OUTLINED_FUNCTION_30_88();
        sub_1E325F6F0(v283, v284);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_1E40F613C();
        v282 = v658;
        OUTLINED_FUNCTION_208_0();
        sub_1E4201F44();
      }

      sub_1E3743538(v282, v670, &qword_1ECF3FDB0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_171();
      sub_1E40FCB48(v627);
      sub_1E40F610C();
      OUTLINED_FUNCTION_184_2();
      sub_1E4201F44();
      OUTLINED_FUNCTION_24_114();
      sub_1E3743538(v628, v629, v630);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6050();
      sub_1E40F84CC();
      OUTLINED_FUNCTION_52_43();
      sub_1E4201F44();
      v631 = OUTLINED_FUNCTION_33_92();
      sub_1E325F6F0(v631, v632);
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v633, v634, v635);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFE8);
      sub_1E40F8440();
      sub_1E40F85B8();
      OUTLINED_FUNCTION_158();
      sub_1E4201F44();
      v636 = OUTLINED_FUNCTION_49_64();
      sub_1E325F6F0(v636, v637);
      OUTLINED_FUNCTION_24_114();
      sub_1E3743538(v638, v639, v640);
      OUTLINED_FUNCTION_202_3();
      sub_1E40F7720();
      sub_1E40F83B4();
      OUTLINED_FUNCTION_44_67();
      v641 = OUTLINED_FUNCTION_34_11();
      sub_1E325F6F0(v641, v642);
      OUTLINED_FUNCTION_24_114();
      sub_1E3743538(v643, v644, v645);
      OUTLINED_FUNCTION_91_23();
      swift_storeEnumTagMultiPayload();
      sub_1E40F7694();
      sub_1E40F8830();
      OUTLINED_FUNCTION_25_112();
      sub_1E4201F44();
      v646 = OUTLINED_FUNCTION_33_92();
      sub_1E325F6F0(v646, v647);
      v140 = v282;
      v141 = &qword_1ECF3FDB0;
      goto LABEL_57;
    case 218:

      v255 = v653;
      sub_1E404AABC(v496, v653);
      v116 = type metadata accessor for SearchHintLockupListCell;
      sub_1E40FC89C(v653, v666, type metadata accessor for SearchHintLockupListCell);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_100_11();
      sub_1E40FCB48(v497);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_105_16();
      sub_1E4201F44();
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v498, v499, v500);
      swift_storeEnumTagMultiPayload();
      sub_1E40F8224();
      sub_1E40F82F8();
      OUTLINED_FUNCTION_76_26();
      OUTLINED_FUNCTION_209_2();
      sub_1E4201F44();
      v501 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v501, v502);
LABEL_45:
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v503, v504, v505);
      swift_storeEnumTagMultiPayload();
      sub_1E40F77AC();
      sub_1E40F8198();
      OUTLINED_FUNCTION_88_22();
      OUTLINED_FUNCTION_149_6();
      sub_1E4201F44();
      v506 = OUTLINED_FUNCTION_31_96();
      sub_1E325F6F0(v506, v507);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v508, v509, v510);
      OUTLINED_FUNCTION_192_3();
      sub_1E40F7720();
      sub_1E40F83B4();
      OUTLINED_FUNCTION_76_26();
      OUTLINED_FUNCTION_92_16();
      sub_1E4201F44();
      v511 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v511, v512);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v513, v514, v515);
      OUTLINED_FUNCTION_91_23();
      goto LABEL_51;
    default:
      switch(v117)
      {
        case 'J':

          v695[0] = sub_1E3F864C8(v569);
          v695[1] = v570;
          memset(&v695[2], 0, 24);
          LOWORD(v695[5]) = 256;

          OUTLINED_FUNCTION_201_4();
          OUTLINED_FUNCTION_117_14();
          OUTLINED_FUNCTION_90();
          sub_1E40F65A8(v571);
          sub_1E40F86FC();
          sub_1E4201F44();
          OUTLINED_FUNCTION_148_10();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFF0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40000);
          sub_1E40F8644();
          sub_1E40F8750();
          OUTLINED_FUNCTION_126_11();
          OUTLINED_FUNCTION_90();
          sub_1E4201F44();
          memcpy(v680, v691, 0x12BuLL);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFE8);
          sub_1E40F8440();
          sub_1E40F85B8();
          OUTLINED_FUNCTION_69_0();
          sub_1E4201F44();
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v572, v573, v574);
          OUTLINED_FUNCTION_202_3();
          sub_1E40F7720();
          sub_1E40F83B4();
          OUTLINED_FUNCTION_44_67();
          v575 = OUTLINED_FUNCTION_34_11();
          sub_1E325F6F0(v575, v576);
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v577, v578, v579);
          OUTLINED_FUNCTION_91_23();
          swift_storeEnumTagMultiPayload();
          sub_1E40F7694();
          sub_1E40F8830();
          OUTLINED_FUNCTION_25_112();
          sub_1E4201F44();

          v140 = OUTLINED_FUNCTION_33_92();
          goto LABEL_57;
        case 'K':

          v693[0] = sub_1E379869C(v590);
          v693[1] = v591;
          v693[2] = v592;
          v693[3] = v593;
          sub_1E40FC7DC(v693);
          memcpy(v695, v693, 0x12AuLL);
          sub_1E3A578B8();
          sub_1E40F87DC();

          sub_1E4201F44();
          memcpy(v695, v690, 0x12AuLL);
          sub_1E40FC77C(v695);
          memcpy(v689, v695, sizeof(v689));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFF0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40000);
          sub_1E40F8644();
          sub_1E40F8750();
          OUTLINED_FUNCTION_126_11();
          sub_1E4201F44();
          memcpy(v680, v691, 0x12BuLL);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFE8);
          sub_1E40F8440();
          sub_1E40F85B8();
          OUTLINED_FUNCTION_158();
          sub_1E4201F44();
          OUTLINED_FUNCTION_158();
          sub_1E3743538(v594, v595, v596);
          OUTLINED_FUNCTION_202_3();
          sub_1E40F7720();
          sub_1E40F83B4();
          OUTLINED_FUNCTION_92_16();
          sub_1E4201F44();
          v597 = OUTLINED_FUNCTION_97_1();
          sub_1E325F6F0(v597, v598);
          OUTLINED_FUNCTION_158();
          sub_1E3743538(v599, v600, v601);
          OUTLINED_FUNCTION_91_23();
          swift_storeEnumTagMultiPayload();
          sub_1E40F7694();
          sub_1E40F8830();
          OUTLINED_FUNCTION_72_31();
          OUTLINED_FUNCTION_75_29();
          sub_1E4201F44();

          v140 = OUTLINED_FUNCTION_178_5();
          goto LABEL_57;
        case 'Y':
          memcpy(v692, v697, sizeof(v692));
          nullsub_1(v580, v581);
          memcpy(v696, v692, 0xC3uLL);

          sub_1E375C1CC(v685, v695);
          sub_1E3799FDC(v116, v696, v694);
          memcpy(v693, v694, 0x129uLL);
          sub_1E40FC770(v693);
          memcpy(v695, v693, 0x12AuLL);
          sub_1E379CD1C(v694, v691);
          sub_1E3A578B8();
          sub_1E40F87DC();
          sub_1E4201F44();
          memcpy(v695, v690, 0x12AuLL);
          sub_1E40FC77C(v695);
          memcpy(v689, v695, sizeof(v689));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFF0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40000);
          sub_1E40F8644();
          sub_1E40F8750();
          OUTLINED_FUNCTION_126_11();
          OUTLINED_FUNCTION_82();
          sub_1E4201F44();
          memcpy(v680, v691, 0x12BuLL);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFE8);
          sub_1E40F8440();
          sub_1E40F85B8();
          OUTLINED_FUNCTION_123_12();
          OUTLINED_FUNCTION_18_5();
          sub_1E4201F44();
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v582, v583, v584);
          OUTLINED_FUNCTION_202_3();
          sub_1E40F7720();
          sub_1E40F83B4();
          OUTLINED_FUNCTION_46_66();
          v585 = OUTLINED_FUNCTION_10_13();
          sub_1E325F6F0(v585, v586);
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v587, v588, v589);
          OUTLINED_FUNCTION_91_23();
          swift_storeEnumTagMultiPayload();
          sub_1E40F7694();
          sub_1E40F8830();
          OUTLINED_FUNCTION_27_102();
          sub_1E40FC788(v694);
          goto LABEL_56;
        case 'i':
          if (*v116 == _TtC8VideosUI13TextViewModel)
          {

            v516 = OUTLINED_FUNCTION_18();
            sub_1E3FAC790(v116, 0, v516, v690);
            v517 = v690[0];
            v518 = v690[1];
            v519 = v690[2];
            v520 = v690[3];
            v521 = v690[4];
            v522 = v690[5];
          }

          else
          {
            v517 = 0;
            v518 = 0;
            v519 = 0;
            v520 = 0;
            v521 = 0;
            v522 = 0;
          }

          v695[0] = v517;
          v695[1] = v518;
          v695[2] = v519;
          v695[3] = v520;
          v695[4] = v521;
          LOWORD(v695[5]) = v522;
          v687 = v517;
          sub_1E37E6C3C(v517);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFF8);
          OUTLINED_FUNCTION_117_14();
          OUTLINED_FUNCTION_141_9();
          sub_1E40F65A8(v624);
          sub_1E40F86FC();
          sub_1E4201F44();
          OUTLINED_FUNCTION_148_10();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFF0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40000);
          sub_1E40F8644();
          sub_1E40F8750();
          OUTLINED_FUNCTION_126_11();
          OUTLINED_FUNCTION_141_9();
          sub_1E4201F44();
          memcpy(v680, v691, 0x12BuLL);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FFE8);
          sub_1E40F8440();
          sub_1E40F85B8();
          sub_1E4201F44();
          sub_1E3743538(v681, v683, &qword_1ECF3FFD0);
          swift_storeEnumTagMultiPayload();
          sub_1E40F7720();
          sub_1E40F83B4();
          OUTLINED_FUNCTION_92_16();
          sub_1E4201F44();
          OUTLINED_FUNCTION_141_9();
          sub_1E325F6F0(v625, v626);
          sub_1E3743538(v684, v688, &qword_1ECF3FF40);
          OUTLINED_FUNCTION_91_23();
          swift_storeEnumTagMultiPayload();
          sub_1E40F7694();
          sub_1E40F8830();
          OUTLINED_FUNCTION_25_112();
          sub_1E4201F44();
          sub_1E37E6C80(v687);
          OUTLINED_FUNCTION_141_9();
          goto LABEL_57;
      }

      if (v117 != 254)
      {
        if (v117 == 256)
        {
          OUTLINED_FUNCTION_95_21();
          sub_1E40F9B18();
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v523, v524, v525);
          swift_storeEnumTagMultiPayload();
          sub_1E40F64F0();
          OUTLINED_FUNCTION_5_1();
          OUTLINED_FUNCTION_164_5();
          sub_1E4201F44();
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v526, v527, v528);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_18_140();
          OUTLINED_FUNCTION_90();
          sub_1E40F6520(v529);
          sub_1E40F8DB8();
          OUTLINED_FUNCTION_94_24();
          OUTLINED_FUNCTION_218_0();
          sub_1E4201F44();
          v530 = OUTLINED_FUNCTION_34_11();
          sub_1E325F6F0(v530, v531);
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v532, v533, v534);
          swift_storeEnumTagMultiPayload();
          sub_1E40F8974();
          sub_1E40F8D00();
          OUTLINED_FUNCTION_165_10();
          OUTLINED_FUNCTION_141_13();
          sub_1E4201F44();
          v535 = OUTLINED_FUNCTION_33_92();
          sub_1E325F6F0(v535, v536);
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v537, v538, v539);
          OUTLINED_FUNCTION_181_5();
          sub_1E40F88E8();
          OUTLINED_FUNCTION_3_274();
          sub_1E40F8F18(v540);
          OUTLINED_FUNCTION_94_24();
          sub_1E4201F44();
          v541 = OUTLINED_FUNCTION_34_11();
          sub_1E325F6F0(v541, v542);
          OUTLINED_FUNCTION_24_114();
          sub_1E3743538(v543, v544, v545);
          OUTLINED_FUNCTION_125_13();
          swift_storeEnumTagMultiPayload();
          sub_1E40F7694();
          sub_1E40F8830();
          OUTLINED_FUNCTION_25_112();
          sub_1E4201F44();
          v546 = OUTLINED_FUNCTION_33_92();
          sub_1E325F6F0(v546, v547);
        }

        else
        {
          if (v117 == 258)
          {
            v143 = v673;
            nullsub_1(v118, v119);
            v144 = v674;
            v145 = OUTLINED_FUNCTION_214_2();
            v146(v145);
            swift_storeEnumTagMultiPayload();
            sub_1E40F64F0();
            OUTLINED_FUNCTION_5_1();
            OUTLINED_FUNCTION_110_16();
            sub_1E4201F44();
            OUTLINED_FUNCTION_32_3();
            sub_1E3743538(v147, v148, v149);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_18_140();
            OUTLINED_FUNCTION_82();
            sub_1E40F6520(v150);
            sub_1E40F8DB8();
            OUTLINED_FUNCTION_140_3();
            OUTLINED_FUNCTION_218_0();
            sub_1E4201F44();
            v151 = OUTLINED_FUNCTION_10_13();
            sub_1E325F6F0(v151, v152);
            OUTLINED_FUNCTION_32_3();
            sub_1E3743538(v153, v154, v155);
            OUTLINED_FUNCTION_222_1();
            swift_storeEnumTagMultiPayload();
            sub_1E40F8974();
            sub_1E40F8D00();
            OUTLINED_FUNCTION_45_72();
            v156 = OUTLINED_FUNCTION_8_12();
            sub_1E325F6F0(v156, v157);
            OUTLINED_FUNCTION_32_3();
            sub_1E3743538(v158, v159, v160);
            OUTLINED_FUNCTION_171_4();
            swift_storeEnumTagMultiPayload();
            sub_1E40F88E8();
            OUTLINED_FUNCTION_3_274();
            sub_1E40F8F18(v161);
            OUTLINED_FUNCTION_28_92();
            v162 = OUTLINED_FUNCTION_10_13();
            sub_1E325F6F0(v162, v163);
            OUTLINED_FUNCTION_32_3();
            sub_1E3743538(v164, v165, v166);
            OUTLINED_FUNCTION_69_33();
LABEL_37:
            swift_storeEnumTagMultiPayload();
            sub_1E40F7694();
            sub_1E40F8830();
            OUTLINED_FUNCTION_27_102();
            v398 = OUTLINED_FUNCTION_8_12();
            sub_1E325F6F0(v398, v399);
            (*(v144 + 8))(v143, v117);
            goto LABEL_58;
          }

LABEL_19:
          swift_storeEnumTagMultiPayload();
          sub_1E40F6934();
          OUTLINED_FUNCTION_124_10();
          sub_1E4201F44();
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v176, v177, v178);
          OUTLINED_FUNCTION_171_4();
          swift_storeEnumTagMultiPayload();
          sub_1E40F88E8();
          OUTLINED_FUNCTION_3_274();
          OUTLINED_FUNCTION_82();
          sub_1E40F8F18(v179);
          OUTLINED_FUNCTION_28_92();
          v180 = OUTLINED_FUNCTION_10_13();
          sub_1E325F6F0(v180, v181);
          OUTLINED_FUNCTION_32_3();
          sub_1E3743538(v182, v183, v184);
          OUTLINED_FUNCTION_69_33();
LABEL_39:
          swift_storeEnumTagMultiPayload();
          sub_1E40F7694();
          sub_1E40F8830();
          OUTLINED_FUNCTION_27_102();
        }

LABEL_56:
        OUTLINED_FUNCTION_82();
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_78_24();
      v255 = v650;
      v548 = OUTLINED_FUNCTION_57();
      sub_1E3CA9A10(v548, v549, v550);
      OUTLINED_FUNCTION_115_11();
      sub_1E40FC89C(v650, v660, v551);
      swift_storeEnumTagMultiPayload();
      sub_1E40F69F0();
      OUTLINED_FUNCTION_5_249();
      sub_1E40FCB48(v552);
      sub_1E4201F44();
      OUTLINED_FUNCTION_96_2();
      sub_1E3743538(v553, v554, v555);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6934();
      OUTLINED_FUNCTION_184_2();
      sub_1E4201F44();
      OUTLINED_FUNCTION_55_0();
      sub_1E325F6F0(v556, v557);
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v558, v559, v560);
      swift_storeEnumTagMultiPayload();
      sub_1E40F88E8();
      OUTLINED_FUNCTION_3_274();
      OUTLINED_FUNCTION_55_0();
      sub_1E40F8F18(v561);
      OUTLINED_FUNCTION_76_26();
      sub_1E4201F44();
      v562 = OUTLINED_FUNCTION_11_103();
      sub_1E325F6F0(v562, v563);
LABEL_50:
      OUTLINED_FUNCTION_7_24();
      sub_1E3743538(v564, v565, v566);
      OUTLINED_FUNCTION_125_13();
LABEL_51:
      swift_storeEnumTagMultiPayload();
      sub_1E40F7694();
      sub_1E40F8830();
      OUTLINED_FUNCTION_72_31();
      OUTLINED_FUNCTION_75_29();
      sub_1E4201F44();
      v567 = OUTLINED_FUNCTION_31_96();
      sub_1E325F6F0(v567, v568);
      v376 = v255;
LABEL_52:
      v438 = v116;
LABEL_53:
      sub_1E40FC8F8(v376, v438);
LABEL_58:
      OUTLINED_FUNCTION_25_2();
      return;
  }
}

void sub_1E40F524C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_5();
  v14 = (*(**v0 + 576))();
  if (v14)
  {
    (*(*v14 + 224))(v14);
  }

  else
  {
    v15 = sub_1E4204724();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  v3();
  OUTLINED_FUNCTION_122_11();
  sub_1E3B29C44();
  sub_1E3B29C48();
  (*(v8 + 8))(v12, v6);
  sub_1E325F6F0(v1, &qword_1ECF2B7B0);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40F5438(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for ViewInteractionStates();
  OUTLINED_FUNCTION_14_182();
  sub_1E40FCB48(v2);
  OUTLINED_FUNCTION_32_0();
  sub_1E4200BC4();
  if (v1 == 1)
  {
    sub_1E383E8EC();
  }

  else
  {
    sub_1E383FB9C();
    v3 = OUTLINED_FUNCTION_63_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3);
    OUTLINED_FUNCTION_39_35();
    sub_1E3D6870C(v4);
    sub_1E42072E4();
  }

  sub_1E3B1E260();
}

unint64_t sub_1E40F55AC()
{
  result = qword_1EE2886D0;
  if (!qword_1EE2886D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD30);
    sub_1E40F5630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2886D0);
  }

  return result;
}

unint64_t sub_1E40F5630()
{
  result = qword_1EE288B98;
  if (!qword_1EE288B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD38);
    sub_1E40F56E8();
    sub_1E3D6870C(&unk_1EE285E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B98);
  }

  return result;
}

unint64_t sub_1E40F56E8()
{
  result = qword_1EE288E60;
  if (!qword_1EE288E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD50);
    sub_1E40F58D0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE28);
    sub_1E40F6B18();
    sub_1E383FBF4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE48);
    sub_1E40F6C64();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FEE8);
    sub_1E40F74B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E60);
  }

  return result;
}

unint64_t sub_1E40F58D0()
{
  result = qword_1EE288A58;
  if (!qword_1EE288A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD48);
    sub_1E40F5988();
    sub_1E40F8F18(&unk_1EE288C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A58);
  }

  return result;
}

unint64_t sub_1E40F5988()
{
  result = qword_1EE288AB8;
  if (!qword_1EE288AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD58);
    sub_1E40F5A14();
    sub_1E40F5F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AB8);
  }

  return result;
}

unint64_t sub_1E40F5A14()
{
  result = qword_1EE288B38;
  if (!qword_1EE288B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD60);
    sub_1E40F5AA0();
    sub_1E40F5CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B38);
  }

  return result;
}

unint64_t sub_1E40F5AA0()
{
  result = qword_1EE288CD8;
  if (!qword_1EE288CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD68);
    sub_1E40F5B2C();
    sub_1E40F5BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CD8);
  }

  return result;
}

unint64_t sub_1E40F5B2C()
{
  result = qword_1EE289148;
  if (!qword_1EE289148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD70);
    sub_1E3ACEFC4();
    sub_1E40FCB48(&unk_1EE23BC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289148);
  }

  return result;
}

unint64_t sub_1E40F5BE8()
{
  result = qword_1EE289058;
  if (!qword_1EE289058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD78);
    sub_1E40FCB48(&unk_1EE265910);
    sub_1E40FCB48(&qword_1EE25EB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289058);
  }

  return result;
}

unint64_t sub_1E40F5CD4()
{
  result = qword_1EE288CD0;
  if (!qword_1EE288CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD80);
    sub_1E40F5D60();
    sub_1E40F5E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CD0);
  }

  return result;
}

unint64_t sub_1E40F5D60()
{
  result = qword_1EE289128;
  if (!qword_1EE289128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD88);
    sub_1E40FCB48(&unk_1EE2814A0);
    sub_1E40FCB48(&unk_1EE2821E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289128);
  }

  return result;
}

unint64_t sub_1E40F5E4C()
{
  result = qword_1EE2891F0;
  if (!qword_1EE2891F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD90);
    sub_1E40FCB48(&unk_1EE287CD0);
    sub_1E40FCB48(&unk_1EE284760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2891F0);
  }

  return result;
}

unint64_t sub_1E40F5F38()
{
  result = qword_1EE288B28;
  if (!qword_1EE288B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD98);
    sub_1E40F5FC4();
    sub_1E40F63D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B28);
  }

  return result;
}

unint64_t sub_1E40F5FC4()
{
  result = qword_1EE288CA0;
  if (!qword_1EE288CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FDA0);
    sub_1E40F6050();
    sub_1E40F6224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CA0);
  }

  return result;
}

unint64_t sub_1E40F6050()
{
  result = qword_1EE2890D8;
  if (!qword_1EE2890D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FDA8);
    sub_1E40FCB48(&unk_1EE276F48);
    sub_1E40F610C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890D8);
  }

  return result;
}

unint64_t sub_1E40F613C()
{
  result = qword_1EE289BE8;
  if (!qword_1EE289BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FDB8);
    sub_1E40FCB48(&unk_1EE27E308);
    sub_1E3D6870C(&qword_1EE2887F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BE8);
  }

  return result;
}

unint64_t sub_1E40F6224()
{
  result = qword_1EE288CC8;
  if (!qword_1EE288CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FDC0);
    sub_1E40F62B0();
    sub_1E40F6384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CC8);
  }

  return result;
}

unint64_t sub_1E40F62B0()
{
  result = qword_1EE289120;
  if (!qword_1EE289120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FDC8);
    sub_1E40FCB48(&unk_1EE280ED0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289120);
  }

  return result;
}

unint64_t sub_1E40F6384()
{
  result = qword_1EE280540;
  if (!qword_1EE280540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE280540);
  }

  return result;
}

unint64_t sub_1E40F63D8()
{
  result = qword_1EE288B50;
  if (!qword_1EE288B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FDD0);
    sub_1E40F6464();
    sub_1E40F6934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B50);
  }

  return result;
}

unint64_t sub_1E40F6464()
{
  result = qword_1EE288D38;
  if (!qword_1EE288D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FDD8);
    sub_1E40F64F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D38);
  }

  return result;
}

unint64_t sub_1E40F6520(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v4);
    v2();
    OUTLINED_FUNCTION_5_1();
    result = OUTLINED_FUNCTION_121_11();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E40F65A8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v4);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E40F6614()
{
  result = qword_1EE288B10;
  if (!qword_1EE288B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FDF0);
    sub_1E40F66D0();
    sub_1E40FCB48(&unk_1EE258128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B10);
  }

  return result;
}

unint64_t sub_1E40F66D0()
{
  result = qword_1EE288C50;
  if (!qword_1EE288C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FDF8);
    sub_1E40F675C();
    sub_1E40F6848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C50);
  }

  return result;
}

unint64_t sub_1E40F675C()
{
  result = qword_1EE289068;
  if (!qword_1EE289068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE00);
    sub_1E40FCB48(&unk_1EE2666B0);
    sub_1E40FCB48(&unk_1EE280E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289068);
  }

  return result;
}

unint64_t sub_1E40F6848()
{
  result = qword_1EE289168;
  if (!qword_1EE289168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE08);
    sub_1E40FCB48(&unk_1EE284380);
    sub_1E40FCB48(&unk_1EE23C750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289168);
  }

  return result;
}

unint64_t sub_1E40F6934()
{
  result = qword_1EE2890C8;
  if (!qword_1EE2890C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE10);
    sub_1E40F69F0();
    sub_1E40FCB48(&unk_1EE287E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890C8);
  }

  return result;
}

unint64_t sub_1E40F69F0()
{
  result = qword_1EE276550[0];
  if (!qword_1EE276550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE276550);
  }

  return result;
}

unint64_t sub_1E40F6A44()
{
  result = qword_1EE289048;
  if (!qword_1EE289048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE20);
    sub_1E40FCB48(&unk_1EE263FC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289048);
  }

  return result;
}

unint64_t sub_1E40F6B18()
{
  result = qword_1EE2898C0;
  if (!qword_1EE2898C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FD48);
    sub_1E40F58D0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3D6870C(&unk_1EE288810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2898C0);
  }

  return result;
}

unint64_t sub_1E40F6C64()
{
  result = qword_1EE288A60;
  if (!qword_1EE288A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE40);
    sub_1E40F6CF0();
    sub_1E40F7264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A60);
  }

  return result;
}

unint64_t sub_1E40F6CF0()
{
  result = qword_1EE288AC0;
  if (!qword_1EE288AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE50);
    sub_1E40F6D7C();
    sub_1E40F6F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AC0);
  }

  return result;
}

unint64_t sub_1E40F6D7C()
{
  result = qword_1EE288B58;
  if (!qword_1EE288B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE58);
    sub_1E40F6E08();
    sub_1E40F6EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B58);
  }

  return result;
}

unint64_t sub_1E40F6E08()
{
  result = qword_1EE288D48;
  if (!qword_1EE288D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE60);
    sub_1E3D6870C(&unk_1EE285E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D48);
  }

  return result;
}

unint64_t sub_1E40F6EC0()
{
  result = qword_1EE289080;
  if (!qword_1EE289080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE70);
    swift_getOpaqueTypeConformance2();
    sub_1E3D6870C(&unk_1EE285E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289080);
  }

  return result;
}

unint64_t sub_1E40F6F90()
{
  result = qword_1EE288D08;
  if (!qword_1EE288D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE80);
    sub_1E40F701C();
    sub_1E40F70CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D08);
  }

  return result;
}

unint64_t sub_1E40F701C()
{
  result = qword_1EE2891D8;
  if (!qword_1EE2891D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE88);
    sub_1E3D6870C(&unk_1EE285E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2891D8);
  }

  return result;
}

unint64_t sub_1E40F70CC()
{
  result = qword_1EE2891C8;
  if (!qword_1EE2891C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE90);
    sub_1E3D6870C(&unk_1EE285DE8);
    sub_1E40F7184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2891C8);
  }

  return result;
}

unint64_t sub_1E40F7184()
{
  result = qword_1EE2891D0;
  if (!qword_1EE2891D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FEA0);
    sub_1E3D6870C(&unk_1EE285DF8);
    sub_1E3D6870C(&unk_1EE285DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2891D0);
  }

  return result;
}

unint64_t sub_1E40F7264()
{
  result = qword_1EE288D10;
  if (!qword_1EE288D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FEB0);
    sub_1E40F731C();
    sub_1E40F8F18(&unk_1EE288BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D10);
  }

  return result;
}

unint64_t sub_1E40F731C()
{
  result = qword_1EE2891E0;
  if (!qword_1EE2891E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FEB8);
    sub_1E3D6870C(&unk_1EE285E08);
    sub_1E40F73D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2891E0);
  }

  return result;
}

unint64_t sub_1E40F73D4()
{
  result = qword_1EE2891C0;
  if (!qword_1EE2891C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FEC8);
    sub_1E3D6870C(&unk_1EE285DE0);
    sub_1E3D6870C(&unk_1EE285DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2891C0);
  }

  return result;
}

unint64_t sub_1E40F74B4()
{
  result = qword_1EE2898C8;
  if (!qword_1EE2898C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FEE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FEF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FE40);
    sub_1E40F6C64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3D6870C(&unk_1EE288810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2898C8);
  }

  return result;
}

unint64_t sub_1E40F7608()
{
  result = qword_1EE288A08;
  if (!qword_1EE288A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF30);
    sub_1E40F7694();
    sub_1E40F8830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A08);
  }

  return result;
}

unint64_t sub_1E40F7694()
{
  result = qword_1EE288A10;
  if (!qword_1EE288A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF40);
    sub_1E40F7720();
    sub_1E40F83B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A10);
  }

  return result;
}

unint64_t sub_1E40F7720()
{
  result = qword_1EE288A18;
  if (!qword_1EE288A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF48);
    sub_1E40F77AC();
    sub_1E40F8198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A18);
  }

  return result;
}

unint64_t sub_1E40F77AC()
{
  result = qword_1EE288A20;
  if (!qword_1EE288A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF50);
    sub_1E40F7838();
    sub_1E40F8088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A20);
  }

  return result;
}

unint64_t sub_1E40F7838()
{
  result = qword_1EE288A30;
  if (!qword_1EE288A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF58);
    sub_1E40F78C4();
    sub_1E40F7F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A30);
  }

  return result;
}

unint64_t sub_1E40F78C4()
{
  result = qword_1EE288A48;
  if (!qword_1EE288A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF60);
    sub_1E40F7980();
    sub_1E40FCB48(&unk_1EE23C750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A48);
  }

  return result;
}

unint64_t sub_1E40F7980()
{
  result = qword_1EE288AA8;
  if (!qword_1EE288AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF68);
    sub_1E40F7A3C();
    sub_1E40FCB48(&unk_1EE23C750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AA8);
  }

  return result;
}

unint64_t sub_1E40F7A3C()
{
  result = qword_1EE288B18;
  if (!qword_1EE288B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF70);
    sub_1E40F7AC8();
    sub_1E40F7D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B18);
  }

  return result;
}

unint64_t sub_1E40F7AC8()
{
  result = qword_1EE288C58;
  if (!qword_1EE288C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF78);
    sub_1E40F7B54();
    sub_1E40F7C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C58);
  }

  return result;
}

unint64_t sub_1E40F7B54()
{
  result = qword_1EE289070;
  if (!qword_1EE289070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF80);
    sub_1E40FCB48(&unk_1EE269C40);
    sub_1E40F7C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289070);
  }

  return result;
}

unint64_t sub_1E40F7C10()
{
  result = qword_1EE2846B0;
  if (!qword_1EE2846B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2846B0);
  }

  return result;
}

unint64_t sub_1E40F7C64()
{
  result = qword_1EE289130;
  if (!qword_1EE289130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF88);
    sub_1E40FCB48(&unk_1EE2814A0);
    sub_1E40FCB48(&unk_1EE2845F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289130);
  }

  return result;
}

unint64_t sub_1E40F7D50()
{
  result = qword_1EE288CF8;
  if (!qword_1EE288CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF90);
    sub_1E40F7DDC();
    sub_1E40F7EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CF8);
  }

  return result;
}

unint64_t sub_1E40F7DDC()
{
  result = qword_1EE289180;
  if (!qword_1EE289180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF98);
    sub_1E40FCB48(&unk_1EE284760);
    sub_1E40FCB48(&unk_1EE269C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289180);
  }

  return result;
}

unint64_t sub_1E40F7EC8()
{
  result = qword_1EE289140;
  if (!qword_1EE289140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FFA0);
    sub_1E40FCB48(&unk_1EE2821E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289140);
  }

  return result;
}

unint64_t sub_1E40F7F9C()
{
  result = qword_1EE289178;
  if (!qword_1EE289178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FFA8);
    sub_1E40FCB48(&unk_1EE284760);
    sub_1E40FCB48(&unk_1EE23C750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289178);
  }

  return result;
}

unint64_t sub_1E40F8088()
{
  result = qword_1EE289118;
  if (!qword_1EE289118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FFB0);
    sub_1E40FCB48(&unk_1EE280ED0);
    sub_1E40F8144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289118);
  }

  return result;
}

unint64_t sub_1E40F8144()
{
  result = qword_1EE2647C8[0];
  if (!qword_1EE2647C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2647C8);
  }

  return result;
}

unint64_t sub_1E40F8198()
{
  result = qword_1EE288C30;
  if (!qword_1EE288C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FFB8);
    sub_1E40F8224();
    sub_1E40F82F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C30);
  }

  return result;
}

unint64_t sub_1E40F8224()
{
  result = qword_1EE289018;
  if (!qword_1EE289018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FFC0);
    sub_1E40FCB48(&unk_1EE256690);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289018);
  }

  return result;
}

unint64_t sub_1E40F82F8()
{
  result = qword_1EE288D40;
  if (!qword_1EE288D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FFC8);
    sub_1E40FCB48(&unk_1EE23BC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D40);
  }

  return result;
}

unint64_t sub_1E40F83B4()
{
  result = qword_1EE288B20;
  if (!qword_1EE288B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FFD0);
    sub_1E40F8440();
    sub_1E40F85B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B20);
  }

  return result;
}

unint64_t sub_1E40F8440()
{
  result = qword_1EE288C98;
  if (!qword_1EE288C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FFD8);
    sub_1E40F6050();
    sub_1E40F84CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C98);
  }

  return result;
}

unint64_t sub_1E40F84CC()
{
  result = qword_1EE2891E8;
  if (!qword_1EE2891E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FFE0);
    sub_1E40FCB48(&unk_1EE285EC0);
    sub_1E40FCB48(&unk_1EE27C0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2891E8);
  }

  return result;
}

unint64_t sub_1E40F85B8()
{
  result = qword_1EE288BF0;
  if (!qword_1EE288BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FFE8);
    sub_1E40F8644();
    sub_1E40F8750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288BF0);
  }

  return result;
}

unint64_t sub_1E40F8644()
{
  result = qword_1EE288F98;
  if (!qword_1EE288F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FFF0);
    sub_1E40F65A8(&unk_1EE23BDD8);
    sub_1E40F86FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F98);
  }

  return result;
}

unint64_t sub_1E40F86FC()
{
  result = qword_1EE26C180;
  if (!qword_1EE26C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE26C180);
  }

  return result;
}

unint64_t sub_1E40F8750()
{
  result = qword_1EE2890E0;
  if (!qword_1EE2890E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40000);
    sub_1E3A578B8();
    sub_1E40F87DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890E0);
  }

  return result;
}

unint64_t sub_1E40F87DC()
{
  result = qword_1EE24E8E0;
  if (!qword_1EE24E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24E8E0);
  }

  return result;
}

unint64_t sub_1E40F8830()
{
  result = qword_1EE288A98;
  if (!qword_1EE288A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40008);
    sub_1E40F88E8();
    sub_1E40F8F18(&unk_1EE288C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A98);
  }

  return result;
}

unint64_t sub_1E40F88E8()
{
  result = qword_1EE288B00;
  if (!qword_1EE288B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40010);
    sub_1E40F8974();
    sub_1E40F8D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B00);
  }

  return result;
}

unint64_t sub_1E40F8974()
{
  result = qword_1EE288C18;
  if (!qword_1EE288C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40018);
    sub_1E40F8A00();
    sub_1E40F8B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C18);
  }

  return result;
}

unint64_t sub_1E40F8A00()
{
  result = qword_1EE288FE0;
  if (!qword_1EE288FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40020);
    sub_1E40F8ABC();
    sub_1E40FCB48(&unk_1EE23C750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FE0);
  }

  return result;
}

unint64_t sub_1E40F8ABC()
{
  result = qword_1EE248FE0;
  if (!qword_1EE248FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE248FE0);
  }

  return result;
}

unint64_t sub_1E40F8B10()
{
  result = qword_1EE288C48;
  if (!qword_1EE288C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40028);
    sub_1E40F8B9C();
    sub_1E40F8CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C48);
  }

  return result;
}

unint64_t sub_1E40F8B9C()
{
  result = qword_1EE289050;
  if (!qword_1EE289050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40030);
    sub_1E40FCB48(&unk_1EE263FC0);
    sub_1E40F8C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289050);
  }

  return result;
}

unint64_t sub_1E40F8C58()
{
  result = qword_1EE26F120;
  if (!qword_1EE26F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE26F120);
  }

  return result;
}

unint64_t sub_1E40F8CAC()
{
  result = qword_1EE286A88[0];
  if (!qword_1EE286A88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE286A88);
  }

  return result;
}

unint64_t sub_1E40F8D00()
{
  result = qword_1EE288A28;
  if (!qword_1EE288A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40038);
    sub_1E40F6520(&unk_1EE288A40);
    sub_1E40F8DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A28);
  }

  return result;
}

unint64_t sub_1E40F8DB8()
{
  result = qword_1EE288CF0;
  if (!qword_1EE288CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40048);
    sub_1E40F8E44();
    sub_1E40F6384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CF0);
  }

  return result;
}

unint64_t sub_1E40F8E44()
{
  result = qword_1EE289160;
  if (!qword_1EE289160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40050);
    sub_1E40FCB48(&unk_1EE2842D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289160);
  }

  return result;
}

unint64_t sub_1E40F8F18(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v4);
    v2();
    result = OUTLINED_FUNCTION_121_11();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E40F8F70()
{
  result = qword_1EE2898B8;
  if (!qword_1EE2898B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF40068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3FF30);
    sub_1E40F7608();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3D6870C(&unk_1EE288810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2898B8);
  }

  return result;
}

void sub_1E40F91FC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  type metadata accessor for LegacySearchLockupListCell();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40208);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v67 = v9;
  v10 = OUTLINED_FUNCTION_138();
  type metadata accessor for Card(v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  v63 = v12;
  OUTLINED_FUNCTION_138();
  type metadata accessor for Monogram();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_3();
  v62 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40210);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v66 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40218);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v64 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF401F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v65 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF401E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF401D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40220);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FD48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_103();
  if (TVAppFeature.isEnabled.getter(10))
  {
    OUTLINED_FUNCTION_139_13();
    sub_1E40EAF50();
    OUTLINED_FUNCTION_96_2();
    sub_1E3743538(v25, v26, v27);
    swift_storeEnumTagMultiPayload();
    sub_1E40F58D0();
    sub_1E40FAB84();
    sub_1E4201F44();
    OUTLINED_FUNCTION_55_0();
    sub_1E325F6F0(v28, v29);
  }

  else
  {
    if (v1[178] == 3 || (v69[0] = v1[178], v68[0] = 0, sub_1E3AFFC64(), (sub_1E4205E84() & 1) == 0))
    {

      sub_1E375C1CC(v1, v69);
      v37 = OUTLINED_FUNCTION_110_16();
      sub_1E3FEAFE0(v37, v1, v38);
      sub_1E40FC89C(v7, v67, type metadata accessor for LegacySearchLockupListCell);
      swift_storeEnumTagMultiPayload();
      sub_1E40FAC40();
      OUTLINED_FUNCTION_118_13();
      sub_1E40FCB48(v39);
      sub_1E4201F44();
      sub_1E40FC8F8(v7, type metadata accessor for LegacySearchLockupListCell);
    }

    else
    {
      if (sub_1E373F6E0())
      {

        sub_1E375C1CC(v1, v69);
        sub_1E3CB2520();
        memcpy(v64, v69, 0x110uLL);
        OUTLINED_FUNCTION_34();
        swift_storeEnumTagMultiPayload();
        sub_1E3CB4EEC(v69, v68);
        sub_1E40FA99C();
        OUTLINED_FUNCTION_120_11();
        sub_1E40FCB48(v30);
        OUTLINED_FUNCTION_110_16();
        sub_1E4201F44();
        OUTLINED_FUNCTION_32_3();
        sub_1E3743538(v31, v32, v33);
        swift_storeEnumTagMultiPayload();
        sub_1E40FACFC();
        OUTLINED_FUNCTION_0_345();
        sub_1E40FCB48(v34);
        OUTLINED_FUNCTION_140_3();
        sub_1E4201F44();
        sub_1E3CB4F24(v69);
        v35 = OUTLINED_FUNCTION_10_13();
        sub_1E325F6F0(v35, v36);
      }

      else
      {
        if ((sub_1E373F6E0() & 1) != 0 && (v40 = (*(*v3 + 488))()) != 0 && (v41 = sub_1E373E010(41, v40), , v41))
        {
          memcpy(v69, v1, 0x5BuLL);

          sub_1E375C2C0(v69, v68);
          v42 = OUTLINED_FUNCTION_158_10();
          sub_1E3BD63E4(v42, 0, v43, 0, 0, 0, 0, 0, v44);
          sub_1E40FC89C(v62, v64, type metadata accessor for Monogram);
          swift_storeEnumTagMultiPayload();
          sub_1E40FA99C();
          OUTLINED_FUNCTION_120_11();
          sub_1E40FCB48(v45);
          sub_1E4201F44();
          sub_1E3743538(v65, v66, &qword_1ECF401F8);
          swift_storeEnumTagMultiPayload();
          sub_1E40FACFC();
          OUTLINED_FUNCTION_0_345();
          sub_1E40FCB48(v46);
          sub_1E4201F44();

          sub_1E325F6F0(v65, &qword_1ECF401F8);
          v47 = v62;
          v48 = type metadata accessor for Monogram;
        }

        else
        {

          sub_1E375C1CC(v1, v69);
          sub_1E3AB83E0();
          OUTLINED_FUNCTION_16_158();
          sub_1E40FC89C(v63, v66, v49);
          swift_storeEnumTagMultiPayload();
          sub_1E40FACFC();
          OUTLINED_FUNCTION_0_345();
          sub_1E40FCB48(v50);
          sub_1E4201F44();
          v47 = OUTLINED_FUNCTION_76_0();
        }

        sub_1E40FC8F8(v47, v48);
      }

      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v51, v52, v53);
      swift_storeEnumTagMultiPayload();
      sub_1E40FAC40();
      OUTLINED_FUNCTION_118_13();
      sub_1E40FCB48(v54);
      OUTLINED_FUNCTION_86_22();
      sub_1E4201F44();
      v55 = OUTLINED_FUNCTION_8_12();
      sub_1E325F6F0(v55, v56);
    }

    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v57, v58, v59);
    swift_storeEnumTagMultiPayload();
    sub_1E40F58D0();
    sub_1E40FAB84();
    sub_1E4201F44();
    v60 = OUTLINED_FUNCTION_10_13();
    sub_1E325F6F0(v60, v61);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40F9B18()
{
  OUTLINED_FUNCTION_31_1();
  v89 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v88 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40120);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  v8 = type metadata accessor for LibTVShowEpisodeListView(0);
  v9 = OUTLINED_FUNCTION_6_4(v8, &v104);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40128);
  OUTLINED_FUNCTION_6_4(v11, &v102);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v87 = v13;
  v14 = OUTLINED_FUNCTION_138();
  v15 = type metadata accessor for Card(v14);
  v16 = OUTLINED_FUNCTION_6_4(v15, &v96);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40130);
  OUTLINED_FUNCTION_6_4(v18, &v94);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v82 = v20;
  OUTLINED_FUNCTION_138();
  v21 = type metadata accessor for LibraryLockup();
  v22 = OUTLINED_FUNCTION_6_4(v21, &v95);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE08);
  OUTLINED_FUNCTION_6_4(v24, &v100);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40138);
  OUTLINED_FUNCTION_6_4(v27, &v98);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v86 = v29;
  OUTLINED_FUNCTION_138();
  v30 = type metadata accessor for LibEditableCard();
  v31 = OUTLINED_FUNCTION_6_4(v30, &v93);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40140);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_26_2();
  v36 = type metadata accessor for LibraryDownloadLockup();
  v37 = OUTLINED_FUNCTION_6_4(v36, &v92);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FE00);
  OUTLINED_FUNCTION_6_4(v41, &v97);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDF8);
  OUTLINED_FUNCTION_6_4(v44, &v101);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v90 = v48;
  OUTLINED_FUNCTION_138();
  type metadata accessor for LibLockupViewModel();
  v49 = swift_dynamicCastClass();
  if (v49)
  {
    v50 = *(v89 + 178);
    if (v50 == 3)
    {
      OUTLINED_FUNCTION_219_0();

      v51 = 1;
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_71_35();
LABEL_25:
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3FDF0);
      __swift_storeEnumTagSinglePayload(v90, v51, 1, v78);
      OUTLINED_FUNCTION_151_9(v90, &v106);
      swift_storeEnumTagMultiPayload();
      sub_1E40F6578();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_105_16();
      sub_1E4201F44();

      sub_1E325F6F0(v90, &qword_1ECF3FDE8);
      goto LABEL_26;
    }

    v54 = v49;
    v91[0] = *(v89 + 178);
    v105 = 0;
    sub_1E3AFFC64();
    OUTLINED_FUNCTION_219_0();

    if (OUTLINED_FUNCTION_225_0())
    {
      v55 = sub_1E38BBD0C();
      v56 = sub_1E39DFFC0();

      if (v55)
      {
        sub_1E375C1CC(v89, v91);
        OUTLINED_FUNCTION_39_0();
        if (v56)
        {
          sub_1E3EE0DD0();
          sub_1E40FC89C(v40, v1, type metadata accessor for LibraryDownloadLockup);
          OUTLINED_FUNCTION_74();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_112_19();
          sub_1E40FCB48(v57);
          OUTLINED_FUNCTION_111_13();
          sub_1E40FCB48(v58);
          v59 = v81;
          OUTLINED_FUNCTION_105_16();
          sub_1E4201F44();
          v60 = v40;
          v61 = type metadata accessor for LibraryDownloadLockup;
        }

        else
        {
          sub_1E3F42228();
          sub_1E40FC89C(v34, v1, type metadata accessor for LibEditableCard);
          OUTLINED_FUNCTION_74();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_112_19();
          sub_1E40FCB48(v73);
          OUTLINED_FUNCTION_111_13();
          sub_1E40FCB48(v74);
          v59 = v81;
          OUTLINED_FUNCTION_105_16();
          OUTLINED_FUNCTION_199_1();
          v60 = OUTLINED_FUNCTION_32_0();
        }

        sub_1E40FC8F8(v60, v61);
        OUTLINED_FUNCTION_71_35();
        OUTLINED_FUNCTION_151_9(v59, &v99);
        OUTLINED_FUNCTION_167_7();
        swift_storeEnumTagMultiPayload();
        sub_1E40F675C();
        sub_1E40F6848();
        v75 = v85;
        OUTLINED_FUNCTION_123_12();
        OUTLINED_FUNCTION_193_3();
        sub_1E325F6F0(v59, &qword_1ECF3FE00);
        OUTLINED_FUNCTION_221_0();
        OUTLINED_FUNCTION_219_0();
      }

      else
      {
        sub_1E375C1CC(v89, v91);
        if (v56)
        {
          v71 = v79;
          OUTLINED_FUNCTION_39_0();
          sub_1E3B552BC();
          v72 = type metadata accessor for LibraryLockup;
          sub_1E40FC89C(v79, v82, type metadata accessor for LibraryLockup);
          OUTLINED_FUNCTION_167_7();
        }

        else
        {
          v71 = v80;
          OUTLINED_FUNCTION_39_0();
          sub_1E3AB83E0();
          v72 = type metadata accessor for Card;
          sub_1E40FC89C(v80, v82, type metadata accessor for Card);
          OUTLINED_FUNCTION_185_3();
        }

        swift_storeEnumTagMultiPayload();
        sub_1E40FCB48(&unk_1EE284380);
        OUTLINED_FUNCTION_0_345();
        sub_1E40FCB48(v76);
        sub_1E4201F44();
        sub_1E40FC8F8(v71, v72);
        OUTLINED_FUNCTION_221_0();
        OUTLINED_FUNCTION_219_0();
        OUTLINED_FUNCTION_71_35();
        sub_1E3743538(v83, v86, &qword_1ECF3FE08);
        OUTLINED_FUNCTION_185_3();
        swift_storeEnumTagMultiPayload();
        sub_1E40F675C();
        sub_1E40F6848();
        v75 = v85;
        OUTLINED_FUNCTION_123_12();
        OUTLINED_FUNCTION_193_3();
        sub_1E325F6F0(v83, &qword_1ECF3FE08);
      }

      OUTLINED_FUNCTION_151_9(v75, &v103);
      OUTLINED_FUNCTION_167_7();
      swift_storeEnumTagMultiPayload();
      sub_1E40F66D0();
      OUTLINED_FUNCTION_106_21();
      sub_1E40FCB48(v77);
      OUTLINED_FUNCTION_199_1();
      sub_1E325F6F0(v75, &qword_1ECF3FDF8);
    }

    else
    {
      v91[0] = v50;
      v51 = 1;
      v105 = 1;
      OUTLINED_FUNCTION_225_0();
      OUTLINED_FUNCTION_221_0();
      OUTLINED_FUNCTION_71_35();
      if ((v62 & 1) == 0)
      {
        goto LABEL_25;
      }

      v63 = (*(*v54 + 1224))();
      v64 = *sub_1E3C8DD74();

      v65 = sub_1E3C8DDFC();
      v66 = *v65;
      if (v63)
      {
        v67 = *v65;
      }

      else
      {
        v67 = v64;
      }

      if (sub_1E39DFFC0())
      {
        v68 = v67;
      }

      else
      {
        v68 = v66;
      }

      swift_retain_n();

      sub_1E3CDC09C(v69, v68, v84);
      sub_1E40FC89C(v84, v87, type metadata accessor for LibTVShowEpisodeListView);
      OUTLINED_FUNCTION_185_3();
      swift_storeEnumTagMultiPayload();
      sub_1E40F66D0();
      OUTLINED_FUNCTION_106_21();
      sub_1E40FCB48(v70);
      sub_1E4201F44();

      sub_1E40FC8F8(v84, type metadata accessor for LibTVShowEpisodeListView);
    }

    v51 = 0;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_23();
  nullsub_1(v52, v53);
  (*(v88 + 16))(v2, v0, v4);
  OUTLINED_FUNCTION_114_1();
  swift_storeEnumTagMultiPayload();
  sub_1E40F6578();
  OUTLINED_FUNCTION_5_1();
  sub_1E4201F44();
  (*(v88 + 8))(v0, v4);
LABEL_26:
  OUTLINED_FUNCTION_25_2();
}