id sub_1E3837EF8()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69DDC50];
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = v4;
  LOBYTE(v4) = sub_1E4206C94();

  if (v4)
  {

    v5 = v2;
  }

  v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v7 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v9 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F40);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1E4297BE0;
  v11 = *MEMORY[0x1E69DB990];
  *(v10 + 32) = *MEMORY[0x1E69DB990];
  *(v10 + 40) = *MEMORY[0x1E69DB980];
  type metadata accessor for TraitKey(0);
  type metadata accessor for Weight(0);
  OUTLINED_FUNCTION_1_72();
  sub_1E3839C7C(v12, v13);
  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = sub_1E4205CB4();
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F50);
  *(inited + 40) = v17;
  type metadata accessor for AttributeName(0);
  OUTLINED_FUNCTION_0_49();
  sub_1E3839C7C(v18, v19);
  sub_1E4205CB4();
  v20 = sub_1E4205C44();

  v21 = [v14 fontDescriptorByAddingAttributes_];

  v22 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
  return v22;
}

id sub_1E38381E8()
{
  *&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_categories] = MEMORY[0x1E69E7CC0];
  v1 = &v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectionHandler];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedCategory];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 6) = 0;
  OUTLINED_FUNCTION_7_55(&OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_lastKnownBounds, 0);
  v10.receiver = v0;
  v10.super_class = type metadata accessor for CategoryFilterBar();
  v3 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v3 setShowsHorizontalScrollIndicator_];
  [v3 setShowsVerticalScrollIndicator_];
  [v3 setAlwaysBounceHorizontal_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E4297BE0;
  *(v4 + 32) = sub_1E3280A90(0, &qword_1EE23AEE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00);
  v5 = sub_1E42062A4();

  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9[4] = sub_1E3838428;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1E3790FBC;
  v9[3] = &block_descriptor_16;
  v7 = _Block_copy(v9);

  [v3 vui:v5 registerForTraitChanges:v7 withHandler:?];
  _Block_release(v7);

  return v3;
}

void sub_1E3838428()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3838474();
  }
}

void sub_1E3838474()
{
  v1 = v0;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_needsButtonsLayout;
  if ((v1[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_needsButtonsLayout] & 1) == 0)
  {
    v12 = *&v1[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons];
    if (v12 >> 62)
    {
      if (!sub_1E4207384())
      {
        return;
      }
    }

    else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v1[v11] = 1;
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v13 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    aBlock[4] = sub_1E3839E00;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    aBlock[2] = v15;
    aBlock[3] = &block_descriptor_38;
    v16 = _Block_copy(aBlock);
    v17 = v1;

    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E3839C7C(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E378AD28();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v10, v4, v16);
    _Block_release(v16);

    v18 = OUTLINED_FUNCTION_11_6();
    v19(v18);
    (*(v7 + 8))(v10, v5);
  }
}

void sub_1E3838780()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_categories) = MEMORY[0x1E69E7CC0];
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectionHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedCategory;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  OUTLINED_FUNCTION_7_55(&OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_lastKnownBounds, 0);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3838848()
{
  v1 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons);
  if (v2 >> 62)
  {
    if (!sub_1E4207384())
    {
      return;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v3 = *(v0 + v1);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x1E6911E60](0, v3);

    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_6:
    [v4 frame];
    CGRectGetHeight(v5);

    return;
  }

  __break(1u);
}

void sub_1E3838974()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CategoryFilterBar();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  [v0 bounds];
  v4 = v3;
  v6 = v5;
  v7 = &v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_lastKnownBounds];
  if (*&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_lastKnownBounds + 16] != v1 || *&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_lastKnownBounds + 24] != v2)
  {
    v9 = v1;
    v10 = v2;
    type metadata accessor for LayoutGrid();
    v13.origin.x = OUTLINED_FUNCTION_6();
    Width = CGRectGetWidth(v13);
    sub_1E3A258E4(Width);
    [v0 setContentInset_];
    sub_1E3838474();
    *v7 = v4;
    *(v7 + 1) = v6;
    v7[2] = v9;
    v7[3] = v10;
  }
}

uint64_t sub_1E3838A90(uint64_t a1, char a2, char a3)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = v4 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  v63 = a1;
  if (a2)
  {
    v67 = 0;
    v73 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    goto LABEL_8;
  }

  v9 = a1;
  v10 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x90))();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*(v10 + 16) <= v9)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v11 = (v10 + 56 * v9);
  v12 = v11[4];
  v13 = v11[5];
  v14 = v11[7];
  v71 = v11[6];
  v15 = v11[9];
  v73 = v11[8];
  v16 = v11[10];

  v72 = v14;

  v74 = v15;

  OUTLINED_FUNCTION_25();
  a1 = sub_1E3837DC8(v17, v18);
  v67 = v16;
  v70 = v12;
  if (v13)
  {
    v69 = v13;

    v64 = 0;
    v19 = v12;
    goto LABEL_9;
  }

  v69 = 0;
LABEL_8:
  v19 = 0;
  v64 = 1;
LABEL_9:
  v68 = v4;
  (*((*v7 & *v4) + 0xC0))(&v75, a1);
  v20 = v75;
  v21 = v76;
  if (v76)
  {

    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  sub_1E3837DC8(v20, v21);
  v23 = v69;
  if (!v69)
  {
    v24 = v67;
    if (!v21)
    {
      return sub_1E3837DC8(v70, v23);
    }

LABEL_21:

    goto LABEL_22;
  }

  v24 = v67;
  if (!v21)
  {
    goto LABEL_21;
  }

  if (v69 == v21 && v19 == v22)
  {

    return sub_1E3837DC8(v70, v23);
  }

  v26 = sub_1E42079A4();

  if (v26)
  {
    return sub_1E3837DC8(v70, v23);
  }

LABEL_22:
  v27 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedButton;
  v28 = *(v68 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedButton);
  v29 = (v68 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedCategory);
  OUTLINED_FUNCTION_3_0();
  v61 = v29[1];
  v62 = *v29;
  v60 = v28;
  *v29 = v70;
  v29[1] = v69;
  v29[2] = v71;
  v29[3] = v72;
  v29[4] = v73;
  v29[5] = v74;
  v29[6] = v24;
  v59 = v28;
  sub_1E3837D00(v70, v69);
  v4 = v68;
  sub_1E3837DC8(v62, v61);
  v30 = 0;
  v7 = &unk_1E429A000;
  v6 = a3;
  if (a2)
  {
    goto LABEL_30;
  }

  v5 = v27;
  v3 = *(v68 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons);
  v8 = v63;
  sub_1E34AF4E4(v63, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) == 0)
  {
    v31 = *(v3 + 8 * v63 + 32);
    goto LABEL_25;
  }

LABEL_38:

  v31 = MEMORY[0x1E6911E60](v8, v3);

LABEL_25:
  v32 = MEMORY[0x1E69E7D40];
  [v31 frame];
  OUTLINED_FUNCTION_3();

  result = (*((*v32 & *v4) + 0x90))();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (*(result + 16) <= v8)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v34 = result + 56 * v8;
  v35 = *(v34 + 32);
  v36 = *(v34 + 48);
  v37 = *(v34 + 64);
  v81 = *(v34 + 80);
  v79 = v36;
  v80 = v37;
  v78 = v35;
  sub_1E3839BCC(&v78, aBlock);

  v38 = sub_1E38398F4(&v78);
  sub_1E3839C28(&v78);
  v30 = v38;
  [v30 setOverrideUserInterfaceStyle_];
  v39 = sub_1E3837E2C();
  v40 = OUTLINED_FUNCTION_6();
  [v41 v42];
  OUTLINED_FUNCTION_3();

  v43 = OUTLINED_FUNCTION_6();
  [v44 v45];

  [v30 setAccessibilityElementsHidden_];
  [*(v4 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar____lazy_storage___selectedButtonBackgroundView) addSubview_];
  if ((v6 & 1) == 0 || (v46 = objc_opt_self(), OUTLINED_FUNCTION_4_0(), v47 = swift_allocObject(), *(v47 + 16) = v30, OUTLINED_FUNCTION_2_4(), v48 = swift_allocObject(), *(v48 + 16) = sub_1E3839CC4, *(v48 + 24) = v47, aBlock[4] = sub_1E379E500, aBlock[5] = v48, aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = v7[375], aBlock[2] = sub_1E3839B50, aBlock[3] = &block_descriptor_32_0, v49 = _Block_copy(aBlock), v50 = v30, , , v4 = v68, [v46 performWithoutAnimation_], _Block_release(v49), LOBYTE(v49) = swift_isEscapingClosureAtFileLocation(), , result = , (v49 & 1) == 0))
  {
    v27 = v5;
LABEL_30:
    v51 = *(v4 + v27);
    *(v4 + v27) = v30;

    v52 = sub_1E3837E2C();
    [v52 setHidden_];

    if (v6)
    {
      v53 = objc_opt_self();
      OUTLINED_FUNCTION_2_4();
      v54 = swift_allocObject();
      *(v54 + 16) = v4;
      *(v54 + 24) = v60;
      *&v80 = sub_1E3839B78;
      *(&v80 + 1) = v54;
      *&v78 = MEMORY[0x1E69E9820];
      *(&v78 + 1) = v7[375];
      OUTLINED_FUNCTION_14_1();
      *&v79 = v55;
      *(&v79 + 1) = &block_descriptor_6_0;
      v56 = _Block_copy(&v78);
      v57 = v59;
      v58 = v4;

      [v53 animateWithDuration:2 delay:v56 usingSpringWithDamping:0 initialSpringVelocity:0.4 options:0.0 animations:0.8 completion:1.0];

      _Block_release(v56);
      v23 = v69;
    }

    else
    {
      sub_1E38391D4();
      v23 = v69;
      if (v60)
      {
        [v59 removeFromSuperview];
      }
    }

    return sub_1E3837DC8(v70, v23);
  }

LABEL_41:
  __break(1u);
  return result;
}

void *sub_1E38391D4()
{
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  result = (*(v4 + 192))(&v34);
  v6 = v35;
  if (v35)
  {
    v7 = v34;
    OUTLINED_FUNCTION_6_41();
    (*(v8 + 144))();
    OUTLINED_FUNCTION_17_27();
    while (1)
    {
      if (v1 == v3)
      {

        return sub_1E3839D98(&v34);
      }

      v9 = *(v2 - 1) == v7 && v6 == *v2;
      if (v9 || (sub_1E42079A4() & 1) != 0)
      {
        break;
      }

      ++v3;
      v2 += 7;
    }

    sub_1E3839D98(&v34);
    v10 = *&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons];
    OUTLINED_FUNCTION_19_24();
    if (v7)
    {

      v11 = MEMORY[0x1E6911E60](v3, v10);
    }

    else
    {
      v11 = *(v10 + 8 * v3 + 32);
    }

    [v11 frame];
    OUTLINED_FUNCTION_3();

    v12 = sub_1E3837E2C();
    v13 = OUTLINED_FUNCTION_6();
    [v14 v15];

    v16 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar____lazy_storage___selectedButtonBackgroundView;
    v17 = [*&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar____lazy_storage___selectedButtonBackgroundView] layer];
    [*&v0[v16] frame];
    [v17 setCornerRadius_];

    v18 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedButton;
    v19 = *&v0[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_selectedButton];
    if (v19)
    {
      v20 = *&v0[v16];
      v21 = v19;
      v22 = OUTLINED_FUNCTION_6();
      [v23 v24];
      [v21 setFrame_];

      v25 = *&v0[v18];
      if (v25)
      {
        v26 = [v25 titleLabel];
        if (v26)
        {
          v27 = v26;
          v28 = sub_1E3837EF8();
          [v27 setFont_];
        }

        v29 = *&v0[v18];
        if (v29)
        {
          v30 = objc_opt_self();
          v31 = v29;
          v32 = [v30 whiteColor];
          [v31 setTitleColor:v32 forState:0];

          v33 = *&v0[v18];
          if (v33)
          {
            [v33 layoutIfNeeded];
          }
        }
      }
    }

    return [v0 bringSubviewToFront_];
  }

  return result;
}

uint64_t sub_1E38394BC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons);

  sub_1E3839680(a1, v3);
  v5 = v4;
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_22();
    v10 = *(v9 + 144);
    v11 = *(v10() + 16);

    if (v5 < v11)
    {
      [a1 setSelected:1 animated:0];
      OUTLINED_FUNCTION_8_22();
      v13 = (*(v12 + 168))();
      if (v13)
      {
        v14 = v13;
        result = v10();
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v5 < *(result + 16))
        {
          v15 = result + 56 * v5;
          v16 = *(v15 + 32);
          v17 = *(v15 + 48);
          v18 = *(v15 + 64);
          v22 = *(v15 + 80);
          v21[1] = v17;
          v21[2] = v18;
          v21[0] = v16;
          sub_1E3839BCC(v21, v20);

          v14(v21);
          sub_1E34AF594(v14);
          sub_1E3839C28(v21);
          goto LABEL_7;
        }

        __break(1u);
        return result;
      }

LABEL_7:
      OUTLINED_FUNCTION_8_22();
      return (*(v19 + 344))(v5, 0, 1);
    }
  }

  return result;
}

void sub_1E3839680(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E32AE9B0(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1E3280A90(0, &qword_1ECF2B990);
    v7 = sub_1E4206F64();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

id sub_1E3839824()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategoryFilterBar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E38398F4(void *a1)
{
  v2 = [objc_opt_self() buttonWithType_];
  sub_1E3839CD4(a1[2], a1[3], 0, v2);
  v3 = [v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E3837EF8();
    [v4 setFont_];
  }

  sub_1E3280A90(0, &qword_1EE23AE20);
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  v8 = [v6 whiteColor];
  v9 = sub_1E3E5F2F8(v7, v8);

  v10 = OUTLINED_FUNCTION_9_34();
  [v10 v11];

  v12 = [v6 whiteColor];
  v13 = OUTLINED_FUNCTION_9_34();
  [v13 v14];

  v15 = [v6 whiteColor];
  v16 = OUTLINED_FUNCTION_9_34();
  [v16 v17];

  [v2 setPointerInteractionEnabled_];
  type metadata accessor for Accessibility();
  v18 = v2;
  sub_1E42074B4();

  MEMORY[0x1E69109E0](*a1, a1[1]);
  MEMORY[0x1E69109E0](34, 0xE100000000000000);
  sub_1E40A7DC8();
  v20 = v19;
  v22 = v21;

  sub_1E3839D34(v20, v22, v18);

  return v18;
}

void *sub_1E3839B78()
{
  v1 = *(v0 + 24);
  result = sub_1E38391D4();
  if (v1)
  {

    return [v1 removeFromSuperview];
  }

  return result;
}

uint64_t sub_1E3839C7C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E3839CD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1E4205ED4();
  [a4 setTitle:v6 forState:a3];
}

void sub_1E3839D34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setAccessibilityIdentifier_];
}

uint64_t sub_1E3839D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2E9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E3839E00()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_needsButtonsLayout;
  if (v1[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_needsButtonsLayout] == 1)
  {
    v3 = OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons;
    v4 = *&v1[OBJC_IVAR____TtC8VideosUI17CategoryFilterBar_buttons];
    v5 = sub_1E32AE9B0(v4);
    v6 = (v4 & 0xC000000000000001);
    v7 = (v4 & 0xFFFFFFFFFFFFFF8);

    v8 = 0;
    v9 = 0.0;
    while (v5 != v8)
    {
      if (v6)
      {
        v15 = OUTLINED_FUNCTION_11_6();
        v10 = MEMORY[0x1E6911E60](v15);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = v10;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:

        v33 = MEMORY[0x1E6911E60](v4, v5);

LABEL_34:
        [v33 frame];
        OUTLINED_FUNCTION_3();

        v34 = OUTLINED_FUNCTION_6();
        [v35 v36];
        return;
      }

      OUTLINED_FUNCTION_20_28();
      v39.size.height = v12;
      v39.size.width = v13 + 24.0;
      v39.origin.x = 0.0;
      v39.origin.y = 0.0;
      Width = CGRectGetWidth(v39);

      v9 = v9 + Width;
      ++v8;
    }

    v16 = 0.0;
    [v1 setContentSize_];
    v4 = *&v1[v3];
    v5 = sub_1E32AE9B0(v4);

    for (i = 0; v5 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v27 = OUTLINED_FUNCTION_11_6();
        v18 = MEMORY[0x1E6911E60](v27);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v18 = *(v4 + 8 * i + 32);
      }

      v19 = v18;
      if (__OFADD__(i, 1))
      {
        goto LABEL_39;
      }

      v20 = [v18 titleLabel];
      if (v20)
      {
        v6 = v20;
        v7 = sub_1E3837EF8();
        [v6 setFont_];
      }

      OUTLINED_FUNCTION_20_28();
      v40.size.height = v21;
      v23 = v22 + 24.0;
      v40.origin.x = 0.0;
      v40.origin.y = 0.0;
      v40.size.width = v23;
      v24 = fmax(CGRectGetHeight(v40), 32.0);
      if ([v1 vuiIsRTL])
      {
        v25 = v9 - v16 - v23;
      }

      else
      {
        v25 = v16;
      }

      [v19 setFrame_];
      v41.origin.y = 0.0;
      v41.origin.x = v25;
      v41.size.width = v23;
      v41.size.height = v24;
      v26 = CGRectGetWidth(v41);

      v16 = v16 + v26;
    }

    sub_1E38391D4();
    v1[v2] = 0;
    v4 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_6_41();
    (*(v28 + 192))(&v37);
    v29 = v38;
    if (v38)
    {
      v30 = v37;
      OUTLINED_FUNCTION_6_41();
      (*(v31 + 144))();
      OUTLINED_FUNCTION_17_27();
      while (1)
      {
        if (v6 == v4)
        {

          sub_1E3839D98(&v37);
          return;
        }

        v32 = *(v7 - 1) == v30 && v29 == *v7;
        if (v32 || (sub_1E42079A4() & 1) != 0)
        {
          break;
        }

        ++v4;
        v7 += 7;
      }

      sub_1E3839D98(&v37);
      v5 = *&v1[v3];
      OUTLINED_FUNCTION_19_24();
      if (v30)
      {
        goto LABEL_41;
      }

      v33 = *(v5 + 8 * v4 + 32);
      goto LABEL_34;
    }
  }
}

uint64_t sub_1E383A22C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1E3838474();
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(*v2, *(v2 + 8), 0);
}

uint64_t sub_1E383A2D0@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  *(a4 + 48) = a3;
  return result;
}

double sub_1E383A2EC@<D0>(uint64_t a1@<X8>)
{
  v39 = v1;
  v41 = sub_1E4201D44();
  LOBYTE(v74) = 1;
  v2 = (*(v1 + 40) - *(v1 + 32)) * 0.5;
  sub_1E383A5E8(&v77);
  v3 = v77;
  sub_1E4203DA4();
  sub_1E4200D94();
  v4 = v82;
  v5 = v83;
  v6 = v84;
  v7 = v85;
  v8 = v86;
  v34 = v87;
  sub_1E3755B54();
  v9 = objc_opt_self();
  v10 = [v9 blackColor];
  v11 = [v9 whiteColor];
  sub_1E3E5F2F8(v10, v11);

  sub_1E4203644();
  v12 = sub_1E4203734();

  KeyPath = swift_getKeyPath();
  v81[80] = 0;
  *__src = v3;
  __src[1] = v4;
  LOBYTE(__src[2]) = v5;
  __src[3] = v6;
  LOBYTE(__src[4]) = v7;
  __src[5] = v8;
  __src[6] = v34;
  __src[7] = KeyPath;
  __src[8] = v12;
  v14 = memcpy(&v81[7], __src, 0x48uLL);
  v80 = 0;
  v77 = v3;
  v78[0] = v4;
  LOBYTE(v78[1]) = v5;
  v78[2] = v6;
  LOBYTE(v78[3]) = v7;
  v78[4] = v8;
  v78[5] = v34;
  v78[6] = KeyPath;
  v78[7] = v12;
  OUTLINED_FUNCTION_2_42(v14, v15, v16, v17, v18, v19, v20, v21, v32, v34, a1, v39, v41, v44, v47, v49, v52, v54, v57, v59, v61, v63, v65, v67, v69, v71, v73[0], v73[1], v73[2], v73[3], v73[4], v73[5], v73[6], v73[7], v73[8], v73[9], v73[10], v73[11], v73[12], v74, *v75, *&v75[8], *&v75[16], *&v75[24], *&v75[32], *&v75[40], *&v75[48], SLOBYTE(v3));
  sub_1E325F748(&v77, &qword_1ECF2BA00);
  LOBYTE(__src[1]) = 0;
  memcpy(&__src[1] + 1, v81, 0x4FuLL);
  *&__src[11] = v2;
  LOBYTE(__src[12]) = 0;
  v77 = v2;
  LOBYTE(v78[0]) = 0;
  v22 = memcpy(v78 + 1, v81, 0x4FuLL);
  *&v78[10] = v2;
  v79 = 0;
  OUTLINED_FUNCTION_2_42(v22, v23, v24, v25, v26, v27, v28, v29, v33, v35, v37, v40, v42, v45, v48, v50, v53, v55, v58, v60, v62, v64, v66, v68, v70, v72, v73[0], v73[1], v73[2], v73[3], v73[4], v73[5], v73[6], v73[7], v73[8], v73[9], v73[10], v73[11], v73[12], v74, *v75, *&v75[8], *&v75[16], *&v75[24], *&v75[32], *&v75[40], *&v75[48], SLOBYTE(v2));
  sub_1E325F748(&v77, &qword_1ECF2B998);
  memcpy(v73 + 7, __src, 0x61uLL);
  LOBYTE(v3) = v74;
  sub_1E4203DA4();
  sub_1E4200D94();
  *&v75[7] = v46;
  *&v75[23] = v51;
  *&v75[39] = v56;
  *v38 = v43;
  *(v38 + 8) = 0;
  *(v38 + 16) = LOBYTE(v3);
  memcpy((v38 + 17), v73, 0x68uLL);
  v30 = *&v75[16];
  *(v38 + 121) = *v75;
  *(v38 + 137) = v30;
  result = *&v75[32];
  *(v38 + 153) = *&v75[32];
  *(v38 + 168) = *&v75[47];
  return result;
}

uint64_t sub_1E383A5E8@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 48))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38CC0);
    v3 = swift_allocObject();
    v4 = *(v1 + 16);
    *(v3 + 16) = xmmword_1E4299720;
    *(v3 + 32) = v4;
  }

  sub_1E4200BF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B9A0);
  sub_1E32752B0(&qword_1ECF2B9A8, &qword_1ECF2B9A0);
  result = sub_1E4203A74();
  *a1 = result;
  return result;
}

double sub_1E383A708@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1E4202B44();
  sub_1E4202B24();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  sub_1E4202B34();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

unint64_t sub_1E383A7B8()
{
  result = qword_1ECF2B9B0;
  if (!qword_1ECF2B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B9B0);
  }

  return result;
}

unint64_t sub_1E383A810()
{
  result = qword_1ECF2B9B8;
  if (!qword_1ECF2B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B9B8);
  }

  return result;
}

double sub_1E383A864@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1E383A708(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

unint64_t sub_1E383A8CC()
{
  result = qword_1ECF2B9C0;
  if (!qword_1ECF2B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B9C0);
  }

  return result;
}

void (*sub_1E383A920())(void *a1)
{
  OUTLINED_FUNCTION_5_3();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *v0 = v1;
  v1[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

uint64_t sub_1E383A9D4()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E383AC4C();
  v0 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDE4440](v0);
}

uint64_t sub_1E383AA20()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E383AC4C();
  v0 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDE43F0](v0);
}

uint64_t sub_1E383AA6C(uint64_t a1)
{
  v2 = sub_1E383AC4C();

  return MEMORY[0x1EEDE4410](a1, v2);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E383AAD4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
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

uint64_t sub_1E383AB20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1E383AB94()
{
  result = qword_1ECF2B9D8;
  if (!qword_1ECF2B9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B9E0);
    sub_1E32752B0(&qword_1ECF2B9E8, &qword_1ECF2B9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B9D8);
  }

  return result;
}

unint64_t sub_1E383AC4C()
{
  result = qword_1ECF2B9F8;
  if (!qword_1ECF2B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B9F8);
  }

  return result;
}

uint64_t sub_1E383ACA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = (*(a3 + 16))(a2, a3);
  v10 = a1;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  sub_1E383ADA0();
  sub_1E38D2054(&v10, &v12);
  v6 = v13;
  if (v13)
  {
    v7 = v12;

    v8 = (*(a3 + 32))(v7, v6, a2, a3);
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_1E383ADA0()
{
  result = qword_1EE23B500;
  if (!qword_1EE23B500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B500);
  }

  return result;
}

uint64_t sub_1E383AE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 8))(a3, a4);
  v5 = result;
  v6 = 0;
  v7 = *(result + 16);
  while (1)
  {
    if (v7 == v6)
    {

      goto LABEL_12;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v8 = *(v5 + 8 * v6 + 32);
    v35 = &type metadata for ViewModelKeys.Sports;
    v36 = &off_1F5D7BC68;
    LOBYTE(v34[0]) = 23;

    OUTLINED_FUNCTION_0_50(v9, v10, v11, v12, v13);
    if (*(&v38 + 1))
    {
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v34);
        if (v32)
        {

          if (v8)
          {
            v35 = &type metadata for ViewModelKeys;
            v36 = &off_1F5D7BCA8;
            LOBYTE(v34[0]) = 7;

            OUTLINED_FUNCTION_0_50(v20, v21, v22, v23, v24);

            __swift_destroy_boxed_opaque_existential_1(v34);
            if (*(&v38 + 1))
            {
              v15 = swift_dynamicCast();
              if (v15)
              {
                v26 = v34[0];
                v25 = v34[1];

                goto LABEL_26;
              }

LABEL_19:
              v35 = &type metadata for ViewModelKeys.Sports;
              v36 = &off_1F5D7BC68;
              LOBYTE(v34[0]) = 7;
              OUTLINED_FUNCTION_0_50(v15, v16, v17, v18, v19);

              __swift_destroy_boxed_opaque_existential_1(v34);
              if (*(&v38 + 1))
              {
                v27 = swift_dynamicCast();
                if (v27)
                {
                  v25 = v33;
                }

                else
                {
                  v25 = 0;
                }

                if (v27)
                {
                  v26 = v32;
                }

                else
                {
                  v26 = 0;
                }

LABEL_26:
                if (v25)
                {
                  if (v26 == a1 && v25 == a2)
                  {

                    v29 = 1;
                  }

                  else
                  {
                    v29 = sub_1E42079A4();
                  }

                  return v29 & 1;
                }

LABEL_33:
                v29 = 0;
                return v29 & 1;
              }

LABEL_32:
              sub_1E329505C(&v37);
              goto LABEL_33;
            }

            v14 = 0;
LABEL_13:
            v15 = sub_1E329505C(&v37);
            if ((v14 & 1) == 0)
            {
              goto LABEL_19;
            }

            v37 = 0u;
            v38 = 0u;
            goto LABEL_32;
          }

LABEL_12:
          v37 = 0u;
          v38 = 0u;
          v14 = 1;
          goto LABEL_13;
        }
      }

      else
      {

        result = __swift_destroy_boxed_opaque_existential_1(v34);
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v34);
      result = sub_1E329505C(&v37);
    }

    ++v6;
  }

  __break(1u);
  return result;
}

id sub_1E383B09C()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1E383B0D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  sub_1E385BFBC();
  v13 = v12;
  v15 = v14;
  sub_1E3741090(0xD000000000000013, 0x80000001E425F950, a5);
  if (v16)
  {
    sub_1E32822E0();
    a2 = sub_1E42071F4();
    v18 = v17;

    sub_1E383B454(a1);

    a3 = v18;
  }

  else
  {
    sub_1E383B454(a1);
  }

  v19 = 0xE000000000000000;
  if (v15)
  {
    v19 = v15;
    v20 = v13;
  }

  else
  {
    v20 = 0;
  }

  *a6 = v20;
  a6[1] = v19;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
}

uint64_t sub_1E383B220(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1E42079A4() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1E42079A4() & 1) != 0)
    {
      v6 = a2[4];
      if (a1[4])
      {
        if (v6)
        {
          type metadata accessor for ImageViewModel();
          sub_1E383B4B0(&qword_1EE282FC0);

          v7 = sub_1E4205E84();

          if (v7)
          {
            return 1;
          }
        }
      }

      else if (!v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1E383B320()
{
  sub_1E4206014();
  sub_1E4206014();
  if (!*(v0 + 32))
  {
    return sub_1E4207B64();
  }

  sub_1E4207B64();
  type metadata accessor for ImageViewModel();
  sub_1E383B4B0(&qword_1ECF2BA08);
  return sub_1E4205DB4();
}

uint64_t sub_1E383B3CC()
{
  sub_1E4207B44();
  sub_1E383B320();
  return sub_1E4207BA4();
}

uint64_t sub_1E383B414()
{
  sub_1E4207B44();
  sub_1E383B320();
  return sub_1E4207BA4();
}

uint64_t sub_1E383B454(uint64_t a1)
{
  v2 = type metadata accessor for SportsPlayPeriod();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E383B4B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImageViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E383B4F8()
{
  result = qword_1ECF2BA10;
  if (!qword_1ECF2BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BA10);
  }

  return result;
}

uint64_t sub_1E383B54C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1E383B5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x1E690DE70](v4, a3, &type metadata for NavBarAccessorViewModifier);
}

unint64_t sub_1E383B5DC()
{
  result = qword_1EE2955F0[0];
  if (!qword_1EE2955F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2955F0);
  }

  return result;
}

uint64_t sub_1E383B65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E4203DA4();
  v10 = v9;
  v11 = sub_1E42036E4();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA18);
  (*(*(v13 - 8) + 16))(a4, a1, v13);
  v14 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA20) + 36));
  *v14 = v11;
  v14[1] = sub_1E383B778;
  v14[2] = 0;
  v14[3] = sub_1E383B938;
  v14[4] = v12;
  v14[5] = v8;
  v14[6] = v10;
}

uint64_t sub_1E383B778@<X0>(void *a1@<X8>)
{
  result = sub_1E4200E44();
  *a1 = v3;
  return result;
}

uint64_t sub_1E383B7A4(double *a1, uint64_t (*a2)(uint64_t, double))
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = sub_1E324FBDC();
  (*(v5 + 16))(v7, v9, v4);
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1E323F000, v10, v11, "NavBarAccessorViewModifier::did update nav bar height to %f", v12, 0xCu);
    MEMORY[0x1E69143B0](v12, -1, -1);
  }

  v13 = (*(v5 + 8))(v7, v4);
  return a2(v13, v8);
}

unint64_t sub_1E383B940()
{
  result = qword_1EE289AD0;
  if (!qword_1EE289AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BA20);
    sub_1E32752B0(&qword_1EE288978, &qword_1ECF2BA18);
    sub_1E32752B0(&qword_1EE289268, &qword_1ECF2BA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289AD0);
  }

  return result;
}

void (*sub_1E383BA8C(void *a1))(uint64_t a1)
{
  *a1 = v1;
  sub_1E3C2C6A0();
  return sub_1E383BAEC;
}

uint64_t sub_1E383BB24(uint64_t a1)
{
  sub_1E3C34E14();
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = v9 | (v8 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      sub_1E328438C(*(a1 + 56) + 32 * v10, v14);
      *&v15 = v13;
      *(&v15 + 1) = v12;
      sub_1E329504C(v14, &v16);

LABEL_10:
      v18 = v15;
      v19[0] = v16;
      v19[1] = v17;
      if (!*(&v15 + 1))
      {
      }

      sub_1E329504C(v19, &v15);
      if (sub_1E3D46B48() == 120)
      {
        sub_1E328438C(&v15, v14);
        sub_1E3C3AB84(v14, 120, 1);
        sub_1E329505C(v14);
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v15);
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v5)
      {
        v4 = 0;
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
        goto LABEL_10;
      }

      v4 = *(a1 + 64 + 8 * v8);
      ++v7;
      if (v4)
      {
        v7 = v8;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E383BCF4()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 98, 7);
}

id sub_1E383BD48()
{
  result = [objc_allocWithZone(type metadata accessor for VUIMenuBarManager()) init];
  qword_1ECF71298 = result;
  return result;
}

uint64_t *sub_1E383BD78()
{
  if (qword_1ECF480D0 != -1)
  {
    OUTLINED_FUNCTION_1_73();
  }

  return &qword_1ECF71298;
}

id sub_1E383BDB8(void *a1)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v8 = *MEMORY[0x1E69DE0F8];
    sub_1E3797E30(0x2E756E654D2E5654, 0xEF736E6F69746341, result);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1E42A1E20;
    sub_1E383C2A4(0xD000000000000018, 0x80000001E425FA40);
    sub_1E3280A90(0, &qword_1EE23AE00);
    sub_1E3834BC8();
    sub_1E3280A90(0, &qword_1ECF2BA30);
    OUTLINED_FUNCTION_2_43();
    *(v3 + 32) = sub_1E42070C4();
    sub_1E383C2A4(0xD00000000000001DLL, 0x80000001E425FA20);
    OUTLINED_FUNCTION_3_43();
    *(v3 + 40) = OUTLINED_FUNCTION_0_51();
    sub_1E383C2A4(0xD000000000000029, 0x80000001E425F9D0);
    OUTLINED_FUNCTION_3_43();
    *(v3 + 48) = OUTLINED_FUNCTION_0_51();
    sub_1E383C2A4(0xD000000000000015, 0x80000001E425F990);
    sub_1E3834BC8();
    *(v3 + 56) = OUTLINED_FUNCTION_0_51();
    if (v3 >> 62)
    {
      sub_1E3280A90(0, &qword_1ECF2BA40);
      v4 = sub_1E42076C4();
    }

    else
    {

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1ECF2BA40);
      v4 = v3;
    }

    sub_1E3280A90(0, &qword_1ECF2BA48);
    v7 = v4;
    v5 = sub_1E4206E94();
    [a1 insertSiblingMenu:v5 afterMenuForIdentifier:{v8, v7, 0, 0, 0, 0}];

    [a1 removeMenuForIdentifier_];
    v6 = *MEMORY[0x1E69DE218];

    return [a1 removeMenuForIdentifier_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E383C154()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIMenuBarManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1E383C1D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIMenuBarManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E383C218()
{
  if (sub_1E41FE894())
  {
    return 0;
  }

  if (sub_1E41FE894())
  {
    return 1;
  }

  if (sub_1E41FE894())
  {
    return 2;
  }

  if (sub_1E41FE894())
  {
    return 3;
  }

  return 4;
}

id sub_1E383C2A4(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = sub_1E3797E30(a1, a2, result);
    v8 = v7;

    if (v8)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E383C32C()
{
  result = qword_1ECF2BA38;
  if (!qword_1ECF2BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BA38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VUICustomMenuItemAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

id sub_1E383C45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  sub_1E383C76C(a1, a2, v10);
  sub_1E383C7C4(a3, a4, v10);
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E695D0C0]) init];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E4298880;
  *(v12 + 32) = v10;
  sub_1E383C81C();
  v13 = a5;
  v14 = v10;
  v15 = sub_1E42062A4();

  [v11 setContacts_];

  return v11;
}

id sub_1E383C588(void *a1)
{
  v2 = objc_opt_self();
  v3 = sub_1E32859C4(v2, &selRef_userFirstName);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = sub_1E32859C4(v2, &selRef_userLastName);
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = sub_1E383C45C(v5, v6, v9, v10, a1);

  return v11;
}

id AvatarViewFactoryObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AvatarViewFactoryObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AvatarViewFactoryObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E383C76C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  [a3 setFirstName_];
}

void sub_1E383C7C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  [a3 setLastName_];
}

unint64_t sub_1E383C81C()
{
  result = qword_1EE23AD18;
  if (!qword_1EE23AD18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AD18);
  }

  return result;
}

uint64_t sub_1E383C8B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA58);
  v1 = 1;
  return sub_1E3B508D0(&v1);
}

__n128 sub_1E383C8FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v11 = a7;
  *a9 = a1;
  if (a2)
  {

    v19 = a2;
  }

  else
  {
    v20 = *(*a1 + 392);

    v19 = v20(v21);
    if (v19)
    {
      type metadata accessor for ButtonLayout();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {

        v19 = 0;
      }
    }

    v11 = a7;
  }

  *(a9 + 8) = v19;
  LOBYTE(v31[0]) = 5;
  v22 = *(*a1 + 776);

  v22(v32, v31, &unk_1F5D5D0A8, &off_1F5D5C758);

  if (v32[3])
  {
    v23 = OUTLINED_FUNCTION_21_4();
    v24 = v31[0];
    v25 = v31[1];
    if (!v23)
    {
      v24 = 0;
      v25 = 0;
    }
  }

  else
  {
    sub_1E325F748(v32, &unk_1ECF296E0);
    v24 = 0;
    v25 = 0;
  }

  *(a9 + 232) = v24;
  *(a9 + 240) = v25;
  memcpy((a9 + 16), a3, 0x5AuLL);
  *(a9 + 112) = a10;
  *(a9 + 120) = a4;
  v26 = a5[1];
  *(a9 + 128) = *a5;
  *(a9 + 144) = v26;
  *(a9 + 160) = a5[2];
  *(a9 + 176) = a6;
  *(a9 + 184) = v11 & 1;
  result = *a8;
  v28 = *(a8 + 16);
  *(a9 + 192) = *a8;
  *(a9 + 208) = v28;
  *(a9 + 224) = *(a8 + 32);
  return result;
}

uint64_t sub_1E383CB04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v281 = a1;
  LOBYTE(v288) = 0;
  OUTLINED_FUNCTION_8();
  (*(v3 + 776))(v305, &v288, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (*&v305[24])
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
    OUTLINED_FUNCTION_14_37(v4, v5, v6, v4, v7, v8, v9, v10, v193, v201, v208, v215, v222, v229, v236, v245, v252, v261, v271, v281, v288);
    if (swift_dynamicCast())
    {
      v11 = *(v288 + 16);

      if (v11)
      {
        v12 = *v1;
        v13 = v2[1];
        v14 = v2[15];
        type metadata accessor for TransactionButtonType();
        v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v272 = v14;

        v262 = [v15 init];
        memcpy(__dst, v2 + 2, 0x5AuLL);
        v16 = v2[16];
        v17 = v2[21];
        OUTLINED_FUNCTION_4_47();
        v18 = sub_1E379539C((v2 + 24), &v288, &qword_1ECF2BA50);
        v253 = v16;
        if (v13)
        {
          OUTLINED_FUNCTION_17_28(v18, v19, &qword_1ECF299E0);
          OUTLINED_FUNCTION_3_44();
          sub_1E383D588(v20, v21, v22, v23, v24, v17);
        }

        else
        {
          v229 = *(*v12 + 392);
          OUTLINED_FUNCTION_17_28(v18, v19, &qword_1ECF299E0);
          OUTLINED_FUNCTION_3_44();
          sub_1E383D588(v129, v130, v131, v132, v133, v17);

          if (v229(v134))
          {
            type metadata accessor for ButtonLayout();
            if (!swift_dynamicCastClass())
            {
            }
          }
        }

        OUTLINED_FUNCTION_15_40();
        v26 = *(v25 + 776);

        v27 = v26(v305, __src, &unk_1F5D5D0A8, &off_1F5D5C758);
        if (*&v305[24])
        {
          OUTLINED_FUNCTION_8_38(v27, v28, v29, MEMORY[0x1E69E6158], v30, v31, v32, v33, v193, v201, v208, v215, v222, v229, v236, v245, v253, v262, v14, v281, v288, *(&v288 + 1), v289, *(&v289 + 1), v290, v291[0], v291[1], v291[2], v291[3], v291[4], v291[5], v291[6], v291[7], v291[8], v291[9], v291[10], v291[11], v292, v293, v294, v295, v296, v297, v298, *v299, *&v299[8], *&v299[16], *&v299[24], *&v299[32], *&v299[40], v300, v301, v302, __src[0]);
          v34 = OUTLINED_FUNCTION_21_4();
        }

        else
        {
          v34 = sub_1E325F748(v305, &unk_1ECF296E0);
        }

        v135 = OUTLINED_FUNCTION_16_28(v34, v35, v36, v37, v38, v39, v40, v41, v193, v201, v208, v215, v222, v229, v236, v245, v253, v262, v272, v281, v288, *(&v288 + 1), v289, *(&v289 + 1), v290, v291[0], v291[1], v291[2], v291[3], v291[4], v291[5], v291[6], v291[7], v291[8], v291[9], v291[10], v291[11], v292, v293, v294, v295, v296, v297, v298, *v299, *&v299[8], *&v299[16], *&v299[24], *&v299[32], *&v299[40], v300, v301, v302, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5]);
        OUTLINED_FUNCTION_2_44(v135, v136, v137, v138, v139, v140, v141, v142, v199, v206, v213, v220, v227, v234, v241, v244, v250, v259, v269, v279, v286, v288, v289, v290);
        v151 = OUTLINED_FUNCTION_8_38(v143, v144, v145, v146, v147, v148, v149, v150, v200, v207, v214, v221, v228, v235, v242, v251, v260, v270, v280, v287, v288, *(&v288 + 1), v289, *(&v289 + 1), v290, v291[0], v291[1], v291[2], v291[3], v291[4], v291[5], v291[6], v291[7], v291[8], v291[9], v291[10], v291[11], v292, v293, v294, v295, v296, v297, v298, *v299, *&v299[8], *&v299[16], *&v299[24], *&v299[32], *&v299[40], v300, v301, v302, __src[0]);
        sub_1E379539C(v151, v152, &qword_1ECF2BA70);
        v306 = 0;
        v153 = OUTLINED_FUNCTION_32_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v153);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA78);
        OUTLINED_FUNCTION_21_1();
        sub_1E383D6B4(v154, v155);
        sub_1E383D6B4(&qword_1EE28B488, &qword_1ECF2BA78);
LABEL_29:
        v156 = sub_1E4201F44();
        v164 = OUTLINED_FUNCTION_14_37(v156, v157, v158, v159, v160, v161, v162, v163, v197, v205, v212, v219, v226, v233, v240, v249, v258, v268, v278, v285, v288);
        sub_1E379539C(v164, v165, &qword_1ECF2BA68);
        v307 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA60);
        sub_1E383D5F0();
        sub_1E383D6B4(&qword_1EE28B490, &qword_1ECF2BA60);
        sub_1E4201F44();
        sub_1E325F748(&v288, &qword_1ECF2BA68);
        goto LABEL_41;
      }
    }
  }

  else
  {
    sub_1E325F748(v305, &unk_1ECF296E0);
  }

  v42 = *v1;
  if (sub_1E373F6E0())
  {
    v43 = v2[1];
    v44 = v2[15];
    type metadata accessor for UpnextButtonType();
    v45 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v273 = v44;

    v263 = [v45 init];
    memcpy(__dst, v2 + 2, 0x5AuLL);
    v46 = v2[16];
    v47 = v2[21];
    OUTLINED_FUNCTION_4_47();
    v48 = sub_1E379539C((v2 + 24), &v288, &qword_1ECF2BA50);
    v254 = v46;
    if (v43)
    {
      OUTLINED_FUNCTION_17_28(v48, v49, &qword_1ECF299E0);
      OUTLINED_FUNCTION_3_44();
      sub_1E383D588(v50, v51, v52, v53, v54, v47);
    }

    else
    {
      v229 = *(*v42 + 392);
      OUTLINED_FUNCTION_17_28(v48, v49, &qword_1ECF299E0);
      OUTLINED_FUNCTION_3_44();
      sub_1E383D588(v92, v93, v94, v95, v96, v47);

      if (v229(v97))
      {
        type metadata accessor for ButtonLayout();
        if (!swift_dynamicCastClass())
        {
        }
      }
    }

    OUTLINED_FUNCTION_15_40();
    v56 = *(v55 + 776);

    v57 = v56(v305, __src, &unk_1F5D5D0A8, &off_1F5D5C758);
    if (*&v305[24])
    {
      OUTLINED_FUNCTION_8_38(v57, v58, v59, MEMORY[0x1E69E6158], v60, v61, v62, v63, v193, v201, v208, v215, v222, v229, v236, v245, v254, v263, v44, v281, v288, *(&v288 + 1), v289, *(&v289 + 1), v290, v291[0], v291[1], v291[2], v291[3], v291[4], v291[5], v291[6], v291[7], v291[8], v291[9], v291[10], v291[11], v292, v293, v294, v295, v296, v297, v298, *v299, *&v299[8], *&v299[16], *&v299[24], *&v299[32], *&v299[40], v300, v301, v302, __src[0]);
      v64 = OUTLINED_FUNCTION_21_4();
    }

    else
    {
      v64 = sub_1E325F748(v305, &unk_1ECF296E0);
    }

    v98 = OUTLINED_FUNCTION_16_28(v64, v65, v66, v67, v68, v69, v70, v71, v193, v201, v208, v215, v222, v229, v236, v245, v254, v263, v273, v281, v288, *(&v288 + 1), v289, *(&v289 + 1), v290, v291[0], v291[1], v291[2], v291[3], v291[4], v291[5], v291[6], v291[7], v291[8], v291[9], v291[10], v291[11], v292, v293, v294, v295, v296, v297, v298, *v299, *&v299[8], *&v299[16], *&v299[24], *&v299[32], *&v299[40], v300, v301, v302, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5]);
    OUTLINED_FUNCTION_2_44(v98, v99, v100, v101, v102, v103, v104, v105, v195, v203, v210, v217, v224, v231, v238, v243, v247, v256, v266, v276, v283, v288, v289, v290);
    v114 = OUTLINED_FUNCTION_8_38(v106, v107, v108, v109, v110, v111, v112, v113, v196, v204, v211, v218, v225, v232, v239, v248, v257, v267, v277, v284, v288, *(&v288 + 1), v289, *(&v289 + 1), v290, v291[0], v291[1], v291[2], v291[3], v291[4], v291[5], v291[6], v291[7], v291[8], v291[9], v291[10], v291[11], v292, v293, v294, v295, v296, v297, v298, *v299, *&v299[8], *&v299[16], *&v299[24], *&v299[32], *&v299[40], v300, v301, v302, __src[0]);
    sub_1E379539C(v114, v115, &qword_1ECF2BA78);
    v306 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA70);
    v116 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v116);
    sub_1E383D6B4(&_MergedGlobals_158, &qword_1ECF2BA70);
    OUTLINED_FUNCTION_21_1();
    sub_1E383D6B4(v117, v118);
    goto LABEL_29;
  }

  v72 = v2[1];
  v73 = v2[14];
  v74 = v2[15];
  type metadata accessor for DefaultButtonType();
  v75 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v274 = v74;

  v264 = [v75 init];
  memcpy(__src, v2 + 2, 0x5AuLL);
  v76 = v2[16];
  v77 = v2[17];
  v78 = v2[18];
  v79 = v2[19];
  v81 = v2[20];
  v80 = v2[21];
  OUTLINED_FUNCTION_4_47();
  sub_1E379539C((v2 + 24), __dst, &qword_1ECF2BA50);
  if (v72)
  {

    v88 = OUTLINED_FUNCTION_8_38(v82, v83, &qword_1ECF299E0, &unk_1E429C6D0, v84, v85, v86, v87, v193, v201, v208, v215, v222, v229, v236, v245, v80, v264, v274, v281, v288, *(&v288 + 1), v289, *(&v289 + 1), v290, v291[0], v291[1], v291[2], v291[3], v291[4], v291[5], v291[6], v291[7], v291[8], v291[9], v291[10], v291[11], v292, v293, v294, v295, v296, v297, v298, *v299, *&v299[8], *&v299[16], *&v299[24], *&v299[32], *&v299[40], v300, v301, v302, __src[0]);
    sub_1E379539C(v88, v89, v90);
    sub_1E383D588(v76, v77, v78, v79, v81, v80);
    v91 = v72;
  }

  else
  {
    v198 = *(*v42 + 392);

    v125 = OUTLINED_FUNCTION_8_38(v119, v120, &qword_1ECF299E0, &unk_1E429C6D0, v121, v122, v123, v124, v198, v201, v208, v215, v222, v229, v236, v245, v80, v264, v274, v281, v288, *(&v288 + 1), v289, *(&v289 + 1), v290, v291[0], v291[1], v291[2], v291[3], v291[4], v291[5], v291[6], v291[7], v291[8], v291[9], v291[10], v291[11], v292, v293, v294, v295, v296, v297, v298, *v299, *&v299[8], *&v299[16], *&v299[24], *&v299[32], *&v299[40], v300, v301, v302, __src[0]);
    sub_1E379539C(v125, v126, v127);
    v223 = v77;
    v230 = v76;
    v209 = v79;
    v216 = v78;
    v202 = v81;
    v128 = sub_1E383D588(v76, v77, v78, v79, v81, v80);
    if (v194(v128))
    {
      type metadata accessor for ButtonLayout();
      v91 = swift_dynamicCastClass();
      if (!v91)
      {
      }
    }

    else
    {
      v91 = 0;
    }
  }

  LOBYTE(v288) = 5;
  v166 = *(*v42 + 776);

  v167 = v166(v305, &v288, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (*&v305[24])
  {
    OUTLINED_FUNCTION_14_37(v167, v168, v169, MEMORY[0x1E69E6158], v170, v171, v172, v173, v194, v202, v209, v216, v223, v230, v237, v246, v255, v265, v275, v282, v288);
    v174 = OUTLINED_FUNCTION_21_4();
    if (v174)
    {
      v175 = v288;
    }

    else
    {
      v175 = 0;
    }

    if (v174)
    {
      v176 = *(&v288 + 1);
    }

    else
    {
      v176 = 0;
    }
  }

  else
  {
    sub_1E325F748(v305, &unk_1ECF296E0);
    v175 = 0;
    v176 = 0;
  }

  v177 = memcpy(v291, __src, 0x5AuLL);
  *&v305[7] = __dst[0];
  v308 = BYTE4(v237);
  *&v305[23] = __dst[1];
  *&v305[39] = *&__dst[2];
  *(&v288 + 1) = v91;
  *&v289 = v73;
  *(&v289 + 1) = v275;
  v290 = v265;
  v292 = v76;
  v293 = v77;
  v294 = v78;
  v295 = v79;
  v296 = v81;
  v297 = v255;
  v298 = v246;
  v299[0] = BYTE4(v237);
  *&v299[1] = *v305;
  *&v299[17] = *&v305[16];
  *&v299[32] = *&v305[31];
  v300 = v175;
  v301 = v176;
  v185 = OUTLINED_FUNCTION_14_37(v177, v178, v179, v180, v181, v182, v183, v184, v194, v202, v209, v216, v223, v230, v237, v246, v255, v265, v275, v282, v42);
  sub_1E379539C(v185, v186, &qword_1ECF2BA60);
  v307 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA68);
  v187 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v187);
  sub_1E383D5F0();
  OUTLINED_FUNCTION_21_1();
  sub_1E383D6B4(v188, v189);
  sub_1E4201F44();
LABEL_41:
  OUTLINED_FUNCTION_21_1();
  return sub_1E325F748(v190, v191);
}

uint64_t sub_1E383D588(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 1)
  {
    (sub_1E37FAED4)();
    sub_1E37FAED4(a3, a4);

    return sub_1E37FAED4(a5, a6);
  }

  return result;
}

unint64_t sub_1E383D5F0()
{
  result = qword_1EE289000;
  if (!qword_1EE289000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BA68);
    sub_1E383D6B4(&_MergedGlobals_158, &qword_1ECF2BA70);
    sub_1E383D6B4(&qword_1EE28B488, &qword_1ECF2BA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289000);
  }

  return result;
}

uint64_t sub_1E383D6B4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_5_53();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI16ImageViewContextVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_8VideosUI17ButtonViewContextVSg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t get_enum_tag_for_layout_string_So6UIViewCSbIeggd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8VideosUI17ButtonViewFactoryO08OverrideC8HandlersVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_8VideosUI37PlatformViewRepresentablSizeComputing_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E383D800(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 248))
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

void *sub_1E383D840(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 29) = 0u;
    result = OUTLINED_FUNCTION_6_42(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      *(result + 248) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 248) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

id sub_1E383D9B4(uint64_t (*a1)(void), double a2, double a3, double a4, double a5)
{
  v11.receiver = v5;
  v11.super_class = a1();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1E383DA54(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1E383DB10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E383DBA4(uint64_t a1, char a2)
{
  sub_1E379539C(v2 + 200, &v8, &qword_1ECF2BA50);
  if (v9)
  {
    sub_1E3251BE8(&v8, v10);
    v5 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = *(v5 + 8);
    LOBYTE(v8) = a2 & 1;
    v6(a1);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_1E325F748(&v8, &qword_1ECF2BA50);
  }

  return OUTLINED_FUNCTION_32_0();
}

id sub_1E383DCB8()
{
  v1 = v0;
  v2 = *(v0 + 8);
  LOWORD(v23) = 0;
  v24 = *(v1 + 136);
  v25 = *(v1 + 152);
  v26 = *(v1 + 168);

  sub_1E3F86D44();
  v4 = v3;

  if (!v4)
  {
    v4 = [objc_allocWithZone(VUIButton) init];
  }

  if (v2)
  {
    OUTLINED_FUNCTION_8();
    v6 = (*(v5 + 2168))();
    if ((v6 & 0x100000000) == 0)
    {
      LODWORD(v7) = v6;
      [v4 setContentHuggingPriority:1 forAxis:v7];
    }

    OUTLINED_FUNCTION_8();
    v9 = (*(v8 + 2192))();
    if ((v9 & 0x100000000) == 0)
    {
      LODWORD(v10) = v9;
      [v4 setContentHuggingPriority:0 forAxis:v10];
    }

    OUTLINED_FUNCTION_8();
    v12 = (*(v11 + 2240))();
    if ((v12 & 0x100000000) == 0)
    {
      LODWORD(v13) = v12;
      [v4 setContentCompressionResistancePriority:0 forAxis:v13];
    }

    OUTLINED_FUNCTION_8();
    v15 = (*(v14 + 2216))();
    if ((v15 & 0x100000000) == 0)
    {
      LODWORD(v16) = v15;
      [v4 setContentCompressionResistancePriority:1 forAxis:v16];
    }

    OUTLINED_FUNCTION_8();
    v18 = (*(v17 + 2024))();
    if (v18 != 2 && (v18 & 1) != 0)
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCC18]) init];
      [v4 addInteraction_];
    }
  }

  v20 = v4;
  sub_1E383DF44();
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21 && (*(v1 + 192) & 1) == 0)
  {
    [v21 setVuiTag_];
  }

  return v20;
}

uint64_t sub_1E383DF44()
{
  OUTLINED_FUNCTION_0_52();
  swift_getWitnessTable();
  sub_1E42024C4();
  sub_1E42024A4();
  swift_unknownObjectWeakAssign();
}

void sub_1E383DFB8(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = sub_1E41FFCB4();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, (v3 + 40), sizeof(__dst));
  v10 = *(v3 + 152);
  v42 = *(v3 + 136);
  v43 = v10;
  v44 = *(v3 + 168);

  sub_1E3F86D44();
  v12 = v11;

  if (!v12 || v12 != a1)
  {
    v35 = a2;
    v13 = sub_1E324FBDC();
    v14 = v36;
    (*(v7 + 16))(v9, v13, v36);
    v15 = *(a3 - 8);
    v16 = *(v15 + 16);
    v16(v40, v3, a3);
    v16(v39, v3, a3);
    v17 = sub_1E41FFC94();
    v18 = sub_1E42067F4();
    if (os_log_type_enabled(v17, v18))
    {
      v33 = v18;
      v34 = v17;
      v19 = v9;
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38 = v32;
      *v20 = 136315394;
      v37 = *(v40[0] + 98);
      v21 = *(v15 + 8);
      v21(v40, a3);
      sub_1E37D144C();
      v22 = sub_1E4207944();
      v24 = sub_1E3270FC8(v22, v23, &v38);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      if (*(v39[0] + 24))
      {
        v25 = *(v39[0] + 16);
        v26 = *(v39[0] + 24);
      }

      else
      {
        v26 = 0xE200000000000000;
        v25 = 16718;
      }

      v21(v39, a3);
      v28 = sub_1E3270FC8(v25, v26, &v38);

      *(v20 + 14) = v28;
      v29 = v34;
      _os_log_impl(&dword_1E323F000, v34, v33, "ButtonRepresentable: view isn't reused, type: %s, id: %s", v20, 0x16u);
      v30 = v32;
      swift_arrayDestroy();
      MEMORY[0x1E69143B0](v30, -1, -1);
      MEMORY[0x1E69143B0](v20, -1, -1);

      (*(v7 + 8))(v19, v36);
    }

    else
    {
      v27 = *(v15 + 8);
      v27(v40, a3);

      (*(v7 + 8))(v9, v14);
      v27(v39, a3);
    }
  }

  [v12 invalidateIntrinsicContentSize];
  sub_1E383DF44();
}

uint64_t sub_1E383E38C()
{
  type metadata accessor for ButtonContainerRepresentable.Coordinator();
  v1 = sub_1E383E3D8(*(v0 + 24));

  return v1;
}

uint64_t sub_1E383E3D8(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  return v2;
}

uint64_t sub_1E383E420()
{
  MEMORY[0x1E69144A0](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

unint64_t sub_1E383E480()
{
  result = qword_1EE288C20;
  if (!qword_1EE288C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BA80);
    sub_1E383D5F0();
    sub_1E383D6B4(&qword_1EE28B490, &qword_1ECF2BA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C20);
  }

  return result;
}

uint64_t sub_1E383E524()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E383E568(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 256))
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

void *sub_1E383E5A8(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[31] = 0;
    *(result + 29) = 0u;
    result = OUTLINED_FUNCTION_6_42(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      *(result + 256) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 256) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E383E664(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_74();
  WitnessTable = swift_getWitnessTable();

  return sub_1E3E36D18(a1, a2, WitnessTable);
}

uint64_t sub_1E383E6B4()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_1_74();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

uint64_t sub_1E383E704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E383E38C();
  *a1 = result;
  return result;
}

uint64_t sub_1E383E72C()
{
  OUTLINED_FUNCTION_1_74();
  swift_getWitnessTable();
  return sub_1E3E36D40();
}

uint64_t sub_1E383E7C4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_52();
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E383E7F0()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_0_52();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E383E84C()
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_0_52();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E383E8A8()
{
  OUTLINED_FUNCTION_0_52();
  swift_getWitnessTable();
  sub_1E4201F04();
  __break(1u);
}

uint64_t sub_1E383E8F8(char a1)
{
  if (a1)
  {
    MEMORY[0x1E69109E0](0x64657375636F66, 0xE700000000000000);
  }

  if ((a1 & 2) != 0)
  {
    MEMORY[0x1E69109E0](0x6867696C68676968, 0xEB00000000646574);
  }

  return 0;
}

uint64_t sub_1E383E988@<X0>(uint64_t *a1@<X8>)
{
  result = OUTLINED_FUNCTION_3_24();
  *a1 = result;
  return result;
}

uint64_t sub_1E383E9B0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_0(a1);
  result = sub_1E383E9D8(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1E383E9E0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_0(a1);
  result = sub_1E383EA08(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1E383EA10(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_0(a1);
  result = sub_1E383EA38(v2, v3);
  *v1 = result;
  return result;
}

BOOL sub_1E383EA48(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1E383EA74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E383EAA8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1E383EAA8(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1E383EACC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E383EB00(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1E383EB00(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1E383EB60(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_0(a1);
  result = sub_1E383EB88(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1E383EBEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E383EC14(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1E383EC14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1E383EC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v50 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v53 = v46 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA90);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v46 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA98);
  OUTLINED_FUNCTION_0_10();
  v49 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v48 = v46 - v15;
  v55 = sub_1E42011E4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_9();
  v19 = (*(v2 + 32) & 1) != 0 && *(v2 + 56) != 0;
  OUTLINED_FUNCTION_17_6();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_14_38(v20);
  OUTLINED_FUNCTION_17_6();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_14_38(v21);
  OUTLINED_FUNCTION_21_29();
  OUTLINED_FUNCTION_21_29();
  sub_1E42011D4();
  if (v19)
  {
    sub_1E4200BA4();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAA0);
    v23 = sub_1E38407D4(&qword_1EE2889A8, &qword_1ECF2BAA0);
    OUTLINED_FUNCTION_8_39();
    v26 = sub_1E383FAA4(v24, v25);
    v46[1] = v22;
    v47 = v12;
    v27 = v9;
    v28 = v55;
    v46[0] = v23;
    sub_1E42034B4();
    v56 = *(v4 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
    sub_1E42038F4();
    OUTLINED_FUNCTION_17_6();
    v29 = swift_allocObject();
    v50 = v3;
    OUTLINED_FUNCTION_14_38(v29);
    OUTLINED_FUNCTION_21_29();
    *&v56 = v22;
    *(&v56 + 1) = v28;
    v57 = v23;
    v58 = v26;
    v30 = OUTLINED_FUNCTION_9_35();
    v31 = v47;
    v32 = v48;
    v33 = v51;
    sub_1E4203524();
    v3 = v50;

    (*(v27 + 8))(v31, v33);
    v34 = v49;
    v35 = v54;
    (*(v49 + 16))(v53, v32, v54);
    swift_storeEnumTagMultiPayload();
    *&v56 = v33;
    *(&v56 + 1) = MEMORY[0x1E69E6370];
    v57 = v30;
    v58 = MEMORY[0x1E69E6388];
    OUTLINED_FUNCTION_10_33();
    sub_1E4201F44();
    (*(v34 + 8))(v32, v35);
  }

  else
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAA0);
    OUTLINED_FUNCTION_2();
    (*(v37 + 16))(v53, v50, v36);
    swift_storeEnumTagMultiPayload();
    v38 = sub_1E38407D4(&qword_1EE2889A8, &qword_1ECF2BAA0);
    OUTLINED_FUNCTION_8_39();
    v41 = sub_1E383FAA4(v39, v40);
    *&v56 = v36;
    *(&v56 + 1) = v55;
    v57 = v38;
    v58 = v41;
    v42 = OUTLINED_FUNCTION_9_35();
    *&v56 = v51;
    *(&v56 + 1) = MEMORY[0x1E69E6370];
    v57 = v42;
    v58 = MEMORY[0x1E69E6388];
    OUTLINED_FUNCTION_10_33();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_17_6();
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_14_38(v43);
  v44 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAA8) + 36));
  *v44 = sub_1E383F2DC;
  v44[1] = v43;
  OUTLINED_FUNCTION_21_29();
  return (*(v17 + 8))(v3, v55);
}

uint64_t sub_1E383F214()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1E383F244()
{
  if (*(v0 + 48))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
    return sub_1E4203904();
  }

  return result;
}

uint64_t sub_1E383F2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3_45(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, v13, v15, v16, v17, v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAE8);
  OUTLINED_FUNCTION_15_41();
  OUTLINED_FUNCTION_16_29();
  sub_1E384076C(&v19);
  v9 = *(v8 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAE8);
  sub_1E42038F4();
  return v9(v14);
}

uint64_t objectdestroyTm_6()
{

  if (*(v0 + 72))
  {
  }

  OUTLINED_FUNCTION_17_6();

  return swift_deallocObject();
}

uint64_t sub_1E383F3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_3_45(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, v13, v15, v16, v17, v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAE8);
  OUTLINED_FUNCTION_15_41();
  OUTLINED_FUNCTION_16_29();
  sub_1E384076C(&v19);
  v9 = *(v8 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAE8);
  sub_1E42038F4();
  return v9(v14);
}

uint64_t sub_1E383F4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1E42038E4();
  result = sub_1E42038E4();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v13;
  *(a6 + 24) = v14;
  *(a6 + 32) = a3;
  *(a6 + 40) = v13;
  *(a6 + 48) = v14;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;
  return result;
}

uint64_t sub_1E383F5C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1E37FAED4(a4, a5);
  sub_1E383F4C8(a2, a3, a1, a4, a5, v15);
  MEMORY[0x1E690DE70](v15, a6, &unk_1F5D59F48, a7);
  memcpy(__dst, v15, sizeof(__dst));
  return sub_1E383F68C(__dst);
}

uint64_t sub_1E383F6D4(uint64_t a1, char a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v37 = a7;
  v36 = a6;
  v13 = sub_1E4201524();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_9();
  sub_1E4203AF4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    if (a1)
    {
      OUTLINED_FUNCTION_8();
      v19 = (*(v18 + 1272))();
      if (v20)
      {
        v21 = -0.0;
      }

      else
      {
        *&v21 = v19 ^ 0x8000000000000000;
      }

      *&v22 = COERCE_DOUBLE((*(*a1 + 1296))());
      if (v23)
      {
        OUTLINED_FUNCTION_8();
        (*(v24 + 552))(&v40);
        v25 = 0.0;
        if ((v44 & 1) == 0)
        {
          v25 = sub_1E3952BE8(v40, v41, v42, v43);
        }
      }

      else
      {
        v25 = *&v22;
      }

      if (v21 == 0.0)
      {
        if (a2)
        {
          goto LABEL_18;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8();
        (*(v27 + 1296))();
        if ((v28 & 1) == 0)
        {
          v25 = v21 + v25;
        }

        if (a2)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    v25 = 0.0;
  }

  else
  {
    v25 = 0.0;
    if (a1)
    {
      OUTLINED_FUNCTION_8();
      (*(v26 + 552))(&v40);
      if ((v44 & 1) == 0)
      {
        v25 = sub_1E3952BE8(v40, v41, v42, v43);
      }
    }
  }

  v21 = -0.0;
  if (a2)
  {
LABEL_18:
    sub_1E383FAEC();
    goto LABEL_25;
  }

LABEL_22:
  if (a3)
  {
    v29 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v30 + 104))(v17, v29);
    sub_1E383FAA4(&qword_1ECF2BAB8, MEMORY[0x1E6981998]);
  }

  else
  {
    v31 = *(sub_1E4201534() + 20);
    v32 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v33 + 104))(v7 + v31, v32);
    *v7 = v25;
    v7[1] = v25;
    *(v7 + *(v13 + 20)) = v21;
    sub_1E383FAA4(&qword_1EE289400, MEMORY[0x1E697EAB8]);
  }

LABEL_25:
  v38 = sub_1E4203BD4();
  v39 = a5 & 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAB0);
  MEMORY[0x1E690DE70](&v38, v36, v34, v37);
}

uint64_t sub_1E383FAA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E383FAEC()
{
  result = qword_1ECF2BAC0;
  if (!qword_1ECF2BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BAC0);
  }

  return result;
}

unint64_t sub_1E383FB44()
{
  result = qword_1EE27BEC8;
  if (!qword_1EE27BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27BEC8);
  }

  return result;
}

unint64_t sub_1E383FB9C()
{
  result = qword_1EE27BEC0;
  if (!qword_1EE27BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27BEC0);
  }

  return result;
}

unint64_t sub_1E383FBF4()
{
  result = qword_1EE27BED0;
  if (!qword_1EE27BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27BED0);
  }

  return result;
}

unint64_t sub_1E383FC4C()
{
  result = qword_1EE27BEB8;
  if (!qword_1EE27BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27BEB8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E383FCDC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1E383FD1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E383FD78()
{
  result = qword_1EE289888;
  if (!qword_1EE289888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BAA8);
    sub_1E383FE04();
    sub_1E3840008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289888);
  }

  return result;
}

unint64_t sub_1E383FE04()
{
  result = qword_1EE2886E8;
  if (!qword_1EE2886E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BAC8);
    sub_1E383FE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2886E8);
  }

  return result;
}

unint64_t sub_1E383FE88()
{
  result = qword_1EE288DD0;
  if (!qword_1EE288DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BAD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BA90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BAA0);
    sub_1E42011E4();
    sub_1E38407D4(&qword_1EE2889A8, &qword_1ECF2BAA0);
    sub_1E383FAA4(&qword_1EE289CE8, MEMORY[0x1E697C108]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DD0);
  }

  return result;
}

unint64_t sub_1E3840008()
{
  result = qword_1EE288A00;
  if (!qword_1EE288A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A00);
  }

  return result;
}

unint64_t sub_1E384005C()
{
  result = qword_1EE274338[0];
  if (!qword_1EE274338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE274338);
  }

  return result;
}

unint64_t sub_1E38400B0()
{
  result = qword_1EE2925E8[0];
  if (!qword_1EE2925E8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BAB0);
    OUTLINED_FUNCTION_0_53();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2925E8);
  }

  return result;
}

uint64_t sub_1E3840104()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E384017C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_22;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_22;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        switch(v9)
        {
          case 2:
            LODWORD(v9) = *a1;
            break;
          case 3:
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v9) = *a1;
            break;
          default:
            LODWORD(v9) = *a1;
            break;
        }
      }

      v16 = v7 + (v9 | v13);
      return (v16 + 1);
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_22:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return OUTLINED_FUNCTION_18();
  }

  v16 = (v15 + 2147483646) & 0x7FFFFFFF;
  return (v16 + 1);
}

void sub_1E38402E4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v19 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v19))
      {
        v14 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v14 = v20;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v7 < 0xFE)
          {
            *(a1 + v9) = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v18 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v21 = v15 & ~(-1 << v11);
        v22 = OUTLINED_FUNCTION_32_0();
        bzero(v22, v23);
        if (v10 == 3)
        {
          *a1 = v21;
          *(a1 + 2) = BYTE2(v21);
        }

        else if (v10 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      v16 = OUTLINED_FUNCTION_32_0();
      bzero(v16, v17);
      *a1 = v15;
      v18 = 1;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v10) = v18;
        break;
      case 2:
        *(a1 + v10) = v18;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v10) = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1E3840558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAD8);
  OUTLINED_FUNCTION_2();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

uint64_t sub_1E38405CC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  OUTLINED_FUNCTION_0_53();
  swift_getWitnessTable();
  v4 = sub_1E42020F4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  OUTLINED_FUNCTION_2_45();
  swift_getWitnessTable();
  v10 = *(v6 + 16);
  v10(v9, a1, v4);
  v10(a2, v9, v4);
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1E38406FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E384076C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E38407D4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_2_45();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E384081C()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v16 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v15 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E32ADE38();
  v12 = sub_1E4206A04();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = sub_1E3843118;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1E378AEA4;
  v17[3] = &block_descriptor_17;
  v14 = _Block_copy(v17);

  sub_1E4203FE4();
  v17[0] = MEMORY[0x1E69E7CC0];
  sub_1E38432E8(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v11, v5, v14);
  _Block_release(v14);

  (*(v16 + 8))(v5, v0);
  (*(v7 + 8))(v11, v15);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3840ACC()
{
  v1 = OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_defaultFocusIndex;
  OUTLINED_FUNCTION_15_0();
  return *(v0 + v1);
}

void sub_1E3840B04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_defaultFocusIndex;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1E384081C();
}

void (*sub_1E3840B58(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E3840BBC;
}

void sub_1E3840BBC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E384081C();
  }
}

void sub_1E3840C54(unint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_paginationOffset) = 5;
  OUTLINED_FUNCTION_14_39(&OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_cancellables);
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_didSelectItem);
  *v3 = v4;
  v3[1] = v5;
  v6 = (v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_didScrollToPaginationPoint);
  *v6 = v7;
  v6[1] = v8;

  j__OUTLINED_FUNCTION_18();
  sub_1E378C3B0(a1);
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0 || (OUTLINED_FUNCTION_12_6(), v10 = *(v9 + 464), v11 = , v10(v11), OUTLINED_FUNCTION_10_14(), !a1))
  {

LABEL_12:

    return;
  }

  if (!sub_1E32AE9B0(a1))
  {

    goto LABEL_12;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
LABEL_7:

    type metadata accessor for CollectionViewModel();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      OUTLINED_FUNCTION_26_0();
      v16 = *(v15 + 648);

      v16(v17);
      OUTLINED_FUNCTION_10_14();

      swift_beginAccess();
      *(v14 + 40) = &off_1F5D55A68;
      swift_unknownObjectWeakAssign();
    }

    else
    {
    }

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_34_0();
  if (v12)
  {

    goto LABEL_7;
  }

  __break(1u);
}

void sub_1E3840EB8()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_paginationOffset) = 5;
  OUTLINED_FUNCTION_14_39(&OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_cancellables);
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3840FD4()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E324FBDC();
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_1E41FFC94();
  v9 = sub_1E42067E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    v12 = sub_1E4206E54();
    v14 = sub_1E3270FC8(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1E323F000, v8, v9, "ClipsTabViewController:: Ignoring set preferredContentSize %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E69143B0](v11, -1, -1);
    OUTLINED_FUNCTION_7_9();
  }

  return (*(v2 + 8))(v6, v0);
}

void sub_1E3841184(char a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ClipsTabViewController();
  objc_msgSendSuper2(&v14, sel_vui_viewDidDisappear_, a1 & 1);
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v3) + 0x1A0))(v13);
  if (v13[3])
  {
    sub_1E327F454(v13, v11);
    sub_1E325F748(v13, &unk_1ECF296D0);
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    OUTLINED_FUNCTION_6_43();
    v6 = v5(v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
    if (v6)
    {
      if (*(v6 + 16))
      {
        v7 = [objc_opt_self() sharedInstance];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        v13[0] = sub_1E4205F14();
        v13[1] = v9;
        sub_1E4207414();
        *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
        *(inited + 72) = v6;
        sub_1E4205CB4();
        v10 = sub_1E4205C44();

        [v7 recordImpressions_];
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1E325F748(v13, &unk_1ECF296D0);
  }
}

void sub_1E384140C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00);
  OUTLINED_FUNCTION_0_10();
  v26 = v11;
  v27 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = type metadata accessor for ClipsTabViewController();
  v29.receiver = v0;
  v29.super_class = v15;
  objc_msgSendSuper2(&v29, sel_vui_viewDidLoad);
  OUTLINED_FUNCTION_26_3();
  v17 = *((*MEMORY[0x1E69E7D40] & v16) + 0x1B8);
  v18 = v17();
  v19 = [objc_opt_self() clearColor];
  [v18 setBackgroundColor_];

  v20 = v17();
  [v20 setVuiClipsToBounds_];

  v21 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  sub_1E32ADE38();
  v22 = sub_1E4206A04();
  v28 = v22;
  v23 = sub_1E42069A4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v23);
  sub_1E38432E8(&qword_1EE23B130, MEMORY[0x1E6969F20]);
  sub_1E38432E8(&qword_1EE23B1E0, sub_1E32ADE38);
  sub_1E42007D4();
  sub_1E325F748(v3, &unk_1ECF2D2B0);

  (*(v6 + 8))(v10, v4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00);
  v24 = v26;
  sub_1E4200844();
  OUTLINED_FUNCTION_10_14();
  (*(v27 + 8))(v14, v24);
  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3841884(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & *v2) + 0x230))())
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_26_0();
  v7 = (*(v6 + 464))();

  if (!v7)
  {
    goto LABEL_33;
  }

  if (sub_1E32AE9B0(v7))
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v8)
      {
        __break(1u);
        goto LABEL_36;
      }
    }

    type metadata accessor for CollectionViewModel();
    if (!swift_dynamicCastClass() || (OUTLINED_FUNCTION_26_0(), v10 = *(v9 + 1040), v11 = , v12 = v10(v11), , !v12))
    {
LABEL_16:
      OUTLINED_FUNCTION_13_46();

      return;
    }

    if (sub_1E32AE9B0(v12))
    {
      if ((v12 & 0xC000000000000001) == 0)
      {
        OUTLINED_FUNCTION_34_0();
        if (!v13)
        {
          __break(1u);
          return;
        }

        v14 = *(v12 + 32);

        goto LABEL_13;
      }

LABEL_36:
      OUTLINED_FUNCTION_41_1();
      v14 = v34;
LABEL_13:

      OUTLINED_FUNCTION_12_6();
      v16 = *(v15 + 872);

      v16(v17);
      OUTLINED_FUNCTION_10_14();
      if (!v14 || (v18 = sub_1E3841D9C(a2, v14), v20 = v19, v21 = , (v20 & 1) != 0))
      {

        goto LABEL_16;
      }

      (*((*v5 & *v3) + 0x1A0))(v37, v21);
      if (v37[3])
      {
        sub_1E327F454(v37, v35);
        sub_1E325F748(v37, &unk_1ECF296D0);
        v24 = v36;
        __swift_project_boxed_opaque_existential_1(v35, v36);
        OUTLINED_FUNCTION_6_43();
        v26 = v25(v24);
        __swift_destroy_boxed_opaque_existential_1(v35);
      }

      else
      {
        sub_1E325F748(v37, &unk_1ECF296D0);
        v26 = 0;
      }

      type metadata accessor for Metrics();
      v27 = sub_1E3BA7AA8();
      v28 = sub_1E3BA7F00(a2);
      if ((*(*a2 + 576))())
      {
        OUTLINED_FUNCTION_26_0();
        (*(v29 + 288))(1, v26, v27, v28);
      }

      if (v26)
      {
        if (*(v26 + 16))
        {
          v30 = [objc_opt_self() sharedInstance];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          v37[0] = sub_1E4205F14();
          v37[1] = v32;
          sub_1E4207414();
          *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
          *(inited + 72) = v26;
          sub_1E4205CB4();
          v33 = sub_1E4205C44();

          [v30 recordImpressions_];
        }

        else
        {
        }
      }

      (*(v3 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_didSelectItem))(v18);

LABEL_33:
      OUTLINED_FUNCTION_13_46();
      return;
    }
  }

  OUTLINED_FUNCTION_13_46();
}

uint64_t sub_1E3841D9C(uint64_t a1, unint64_t a2)
{
  result = sub_1E32AE9B0(a2);
  v4 = result;
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v5, a2);
      goto LABEL_6;
    }

    if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_6:
    type metadata accessor for ViewModel();
    sub_1E38432E8(&qword_1EE23BA60, type metadata accessor for ViewModel);
    v6 = sub_1E4205E84();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1E3841ECC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E3ED6E94();
  if (!(*((*MEMORY[0x1E69E7D40] & *v0) + 0x230))())
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_26_0();
  v14 = (*(v13 + 464))();
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v14;
  if (!sub_1E32AE9B0(v14))
  {
LABEL_19:

    goto LABEL_20;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v16)
    {
      __break(1u);
      goto LABEL_38;
    }
  }

  type metadata accessor for CollectionViewModel();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_26_0();
  v18 = (*(v17 + 1040))();
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  if (!sub_1E32AE9B0(v18))
  {

    goto LABEL_19;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_38:
    OUTLINED_FUNCTION_41_1();
    v21 = v37;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_34_0();
  if (!v20)
  {
    __break(1u);
    goto LABEL_40;
  }

  v21 = *(v19 + 32);

LABEL_13:

  v23 = (*(*v21 + 872))(v22);

  if (!v23)
  {
LABEL_17:

LABEL_18:

LABEL_20:
    v26 = sub_1E324FBDC();
    (*(v8 + 16))(v12, v26, v6);
    v27 = sub_1E41FFC94();
    v28 = sub_1E42067F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1E323F000, v27, v28, "ClipsTabViewController:: failed to get collection view model", v29, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    (*(v8 + 8))(v12, v6);
    goto LABEL_23;
  }

  (*(*v3 + 320))(v24);
  if (!v25)
  {
    if (!v3[3])
    {
      sub_1E41FE844();
      sub_1E4207944();
    }
  }

  type metadata accessor for Accessibility();
  sub_1E40A7DC8();
  v31 = v30;
  v33 = v32;

  sub_1E3839D34(v31, v33, v5);
  v34 = v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_lastPaginationIndex;
  if ((*(v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_lastPaginationIndex + 8) & 1) == 0)
  {

LABEL_35:

LABEL_23:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v35 = sub_1E41FE844();
  v36 = sub_1E32AE9B0(v23);

  if (!__OFSUB__(v36, 5))
  {
    if (v35 >= v36 - 5)
    {
      *v34 = sub_1E41FE844();
      v34[8] = 0;
      (*(v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_didScrollToPaginationPoint))();
    }

    goto LABEL_35;
  }

LABEL_40:
  __break(1u);
}

void sub_1E3842380()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  OUTLINED_FUNCTION_26_3();
  if (!(*((*MEMORY[0x1E69E7D40] & v13) + 0x230))())
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_26_0();
  v15 = (*(v14 + 464))();
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v15;
  if (!sub_1E32AE9B0(v15))
  {

LABEL_14:
    v26 = sub_1E324FBDC();
    (*(v6 + 16))(v9, v26, v4);
    v27 = sub_1E41FFC94();
    v28 = sub_1E42067F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1E323F000, v27, v28, "ClipsTabViewController:: failed to get collection view model", v29, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    (*(v6 + 8))(v9, v4);
    goto LABEL_17;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
    v18 = v34;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_34_0();
  if (v17)
  {
    v18 = *(v16 + 32);

LABEL_7:

    type metadata accessor for CollectionViewModel();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = v19;
      v21 = sub_1E324FBDC();
      (*(v6 + 16))(v12, v21, v4);

      v22 = sub_1E41FFC94();
      v23 = sub_1E42067E4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v35[1] = v18;
        v25 = v24;
        *v24 = 134217984;
        *(v24 + 4) = sub_1E32AE9B0(v3);

        _os_log_impl(&dword_1E323F000, v22, v23, "ClipsTabViewController:: appending %ld items", v25, 0xCu);
        MEMORY[0x1E69143B0](v25, -1, -1);
      }

      else
      {
      }

      v30 = (*(v6 + 8))(v12, v4);
      v31 = (*(*v20 + 1040))(v30);
      if (v31)
      {
        v32 = sub_1E37D027C(v31);

        if (v32)
        {
          (*(*v32 + 1016))(v3);
        }
      }

      v33 = v1 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_lastPaginationIndex;
      *v33 = 0;
      *(v33 + 8) = 1;
      sub_1E405123C();

LABEL_17:
      OUTLINED_FUNCTION_25_2();
      return;
    }

LABEL_13:

    goto LABEL_14;
  }

  __break(1u);
}

void sub_1E38427B0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_26_3();
  v13 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & v14) + 0x230))())
  {
LABEL_34:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_26_0();
  v16 = (*(v15 + 464))();
  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = v16;
  if (sub_1E32AE9B0(v16))
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v18)
      {
        __break(1u);
        goto LABEL_37;
      }
    }

    type metadata accessor for CollectionViewModel();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_26_0();
    v20 = (*(v19 + 1040))();
    if (!v20)
    {
      goto LABEL_23;
    }

    v21 = v20;
    if (!sub_1E32AE9B0(v20))
    {

      goto LABEL_23;
    }

    v40 = v3;
    if ((v21 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_34_0();
      if (!v22)
      {
        __break(1u);
        goto LABEL_39;
      }

      v23 = *(v21 + 32);

      goto LABEL_13;
    }

LABEL_37:
    OUTLINED_FUNCTION_41_1();
    v23 = v37;
LABEL_13:

    v25 = (*(*v23 + 872))(v24);

    if (v25)
    {
      v26 = sub_1E32AE9B0(v25);

      if ((v26 & 0x8000000000000000) == 0)
      {
        if ((v5 & 0x8000000000000000) == 0 && v26 > v5)
        {
          v38 = *((*v13 & *v1) + 0x1B8);
          v28 = (v38)(v27);
          v29 = [v28 collectionViewLayout];

          type metadata accessor for StackCollectionViewCompositionalLayout();
          v30 = swift_dynamicCastClass();
          v39 = v30;
          if (v30)
          {
            v31 = [v30 configuration];
          }

          else
          {

            v31 = 0;
          }

          v34 = v38();
          MEMORY[0x1E6909190](v5, 0);
          v35 = sub_1E41FE7E4();
          (*(v8 + 8))(v12, v6);
          if (v31)
          {
            if ([v31 scrollDirection] == 1)
            {
              v36 = 8;
            }

            else
            {
              v36 = 1;
            }
          }

          else
          {
            v36 = 8;
          }

          [v34 scrollToItemAtIndexPath:v35 atScrollPosition:v36 animated:v40 & 1];

          goto LABEL_34;
        }

        goto LABEL_23;
      }

LABEL_39:
      __break(1u);
      return;
    }

LABEL_23:

LABEL_24:
    OUTLINED_FUNCTION_25_2();

    return;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3842BD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!(*((*MEMORY[0x1E69E7D40] & *v2) + 0x230))())
  {
    return;
  }

  OUTLINED_FUNCTION_26_0();
  v6 = (*(v5 + 464))();
  if (!v6)
  {
LABEL_16:

    return;
  }

  v7 = v6;
  if (!sub_1E32AE9B0(v6))
  {
LABEL_17:

    return;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v8)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  type metadata accessor for CollectionViewModel();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_26_0();
  v10 = (*(v9 + 1040))();
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  if (!sub_1E32AE9B0(v10))
  {

    goto LABEL_17;
  }

  if ((v11 & 0xC000000000000001) == 0)
  {
    OUTLINED_FUNCTION_34_0();
    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = *(v11 + 32);

    goto LABEL_13;
  }

LABEL_23:
  OUTLINED_FUNCTION_41_1();
  v13 = v19;
LABEL_13:

  v15 = (*(*v13 + 872))(v14);

  if (!v15 || (v16 = sub_1E3841D9C(a2, v15), v18 = v17, , (v18 & 1) != 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  (*(v3 + OBJC_IVAR____TtC8VideosUI22ClipsTabViewController_didSelectItem))(v16);
}

uint64_t sub_1E3842E48()
{
}

id sub_1E3842EA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClipsTabViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ClipsTabViewController()
{
  result = qword_1ECF482E0;
  if (!qword_1ECF482E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3842F88()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = MEMORY[0x1E69E7D40];
    v2 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x1B8);
    v3 = Strong;
    v4 = v2();
    [v4 setNeedsFocusUpdate];

    v5 = v2();
    [v5 updateFocusIfNeeded];

    (*((*v1 & *v3) + 0xA50))();
    sub_1E38427B0();
  }
}

void sub_1E3843118()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = MEMORY[0x1E69E7D40];
    v2 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x248);
    v3 = Strong;
    v4 = v2();

    if (v4)
    {
      OUTLINED_FUNCTION_12_6();
      (*(v5 + 1040))();
      OUTLINED_FUNCTION_10_14();
      if (sub_1E32AE9B0(v4))
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_41_1();
        }

        else
        {
          OUTLINED_FUNCTION_34_0();
          if (!v6)
          {
            __break(1u);
            return;
          }
        }

        OUTLINED_FUNCTION_12_6();
        v8 = (*(v7 + 872))();

        if (v8)
        {
          v10 = *((*v1 & *v3) + 0xA50);
          v11 = v10(v9);
          v12 = sub_1E32AE9B0(v8);

          if (v11 < v12)
          {
            v10(v13);
            sub_1E38427B0();
          }
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1E38432E8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1E3843330()
{
  v0 = 83;
  v1 = [objc_opt_self() sharedInstance];
  v2 = MEMORY[0x1E69E6158];
  if (v1)
  {
    v3 = sub_1E3741090(0x415F5443454C4553, 0xEA00000000004C4CLL, v1);
    if (v4)
    {
      v0 = v3;
    }
  }

  v5 = 68;
  v6 = type metadata accessor for TextViewModel();
  v14 = OUTLINED_FUNCTION_5_54(v6, v7, v8, v9, v10, v11, v12, v13, v90, v95, v101, v107, v112, v117, v123, v129, v135, v141, v147, v153, v158, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v213, v218, v223, v228, v0);
  v148 = v14;
  if (v1)
  {
    v14 = sub_1E3741090(0x5443454C45534544, 0xEC0000004C4C415FLL, v1);
    if (v15)
    {
      v5 = v14;
    }
  }

  v22 = 68;
  v23 = OUTLINED_FUNCTION_5_54(v14, v15, v16, v17, v18, v19, v20, v21, v91, v96, v102, v108, v113, v118, v124, v130, v136, v142, v148, v154, v159, v164, v169, v174, v179, v184, v189, v194, v199, v204, v209, v214, v219, v224, v229, v5);
  v143 = v23;
  if (v1)
  {
    v23 = sub_1E3741090(0x4554454C4544, 0xE600000000000000, v1);
    if (v24)
    {
      v22 = v23;
    }
  }

  v31 = 69;
  v32 = OUTLINED_FUNCTION_5_54(v23, v24, v25, v26, v27, v28, v29, v30, v92, v97, v103, v109, v114, v119, v125, v131, v137, v143, v149, v155, v160, v165, v170, v175, v180, v185, v190, v195, v200, v205, v210, v215, v220, v225, v230, v22);
  v138 = v32;
  if (v1)
  {
    v32 = sub_1E3741090(1414087749, 0xE400000000000000, v1);
    if (v33)
    {
      v31 = v32;
    }
  }

  v40 = 67;
  v41 = OUTLINED_FUNCTION_5_54(v32, v33, v34, v35, v36, v37, v38, v39, v93, v98, v104, v110, v115, v120, v126, v132, v138, v144, v150, v156, v161, v166, v171, v176, v181, v186, v191, v196, v201, v206, v211, v216, v221, v226, v231, v31);
  v133 = v41;
  if (v1)
  {
    v41 = sub_1E3741090(0x4C45434E4143, 0xE600000000000000, v1);
    if (v42)
    {
      v40 = v41;
    }
  }

  v128 = OUTLINED_FUNCTION_5_54(v41, v42, v43, v44, v45, v46, v47, v48, v94, v99, v105, v111, v116, v121, v127, v133, v139, v145, v151, v157, v162, v167, v172, v177, v182, v187, v192, v197, v202, v207, v212, v217, v222, v227, v232, v40);
  type metadata accessor for ImageLayout();
  v49 = sub_1E3BD61D8();
  v50 = *(*v49 + 208);

  v51 = OUTLINED_FUNCTION_32_23();
  v50(v51);
  v52 = OUTLINED_FUNCTION_32_23();
  v53(v52);
  v54 = sub_1E4202A44();
  (*(*v49 + 2120))(v54);
  (*(*v49 + 2168))(3);
  v55 = *sub_1E3E60700();
  v56 = *(*v49 + 680);
  v57 = v55;
  v56(v55);

  v58 = sub_1E3BD61D8();
  v59 = *(*v58 + 208);

  v60 = OUTLINED_FUNCTION_32_23();
  v59(v60);
  OUTLINED_FUNCTION_30_15();
  v61 = OUTLINED_FUNCTION_32_23();
  v62(v61);
  sub_1E4202A44();
  OUTLINED_FUNCTION_30_15();
  (*(v63 + 2120))();
  OUTLINED_FUNCTION_30_15();
  (*(v64 + 2168))(3);
  v65 = [objc_opt_self() grayColor];
  OUTLINED_FUNCTION_30_15();
  (*(v66 + 680))();

  type metadata accessor for ImageViewModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 32) = v68;
  *(inited + 40) = v69;
  *(inited + 72) = v2;
  *(inited + 48) = 0xD000000000000011;
  *(inited + 56) = 0x80000001E425FF50;
  *(inited + 80) = sub_1E3C7CCAC(0);
  *(inited + 88) = v70;
  *(inited + 120) = v2;
  *(inited + 96) = 0xD000000000000020;
  *(inited + 104) = 0x80000001E425FF70;
  v71 = OUTLINED_FUNCTION_34_20();
  v122 = sub_1E3F5321C(39, v71, 0);
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(v72 + 32) = v73;
  *(v72 + 40) = v74;
  *(v72 + 72) = v2;
  *(v72 + 48) = 0xD000000000000015;
  *(v72 + 56) = 0x80000001E425FFA0;
  *(v72 + 80) = sub_1E3C7CCAC(0);
  *(v72 + 88) = v75;
  *(v72 + 120) = v2;
  *(v72 + 96) = 0xD000000000000011;
  *(v72 + 104) = 0x80000001E425FFC0;
  v76 = OUTLINED_FUNCTION_34_20();
  v77 = sub_1E3F5321C(39, v76, 0);
  if (v1)
  {
    v106 = v77;
    v100 = sub_1E3741090(0x4C45434E4143, 0xE600000000000000, v1);
    v79 = v78;
    v80 = sub_1E3741090(0xD000000000000012, 0x80000001E4260000, v1);
    v82 = v81;
    v83 = sub_1E38469F4(0xD000000000000013, 0x80000001E4260020, v1);
    if (v83)
    {
      v84 = v83;
      v85 = sub_1E4205F14();
      v87 = v86;
    }

    else
    {

      v85 = 0;
      v87 = 0;
    }

    v88 = v100;
    v77 = v106;
  }

  else
  {
    v85 = 0;
    v87 = 0;
    v80 = 0;
    v82 = 0;
    v88 = 0;
    v79 = 0;
  }

  qword_1ECF712C0 = v152;
  *algn_1ECF712C8 = v146;
  qword_1ECF712D0 = v140;
  qword_1ECF712D8 = v134;
  qword_1ECF712E0 = v128;
  unk_1ECF712E8 = v49;
  qword_1ECF712F0 = v58;
  unk_1ECF712F8 = v122;
  qword_1ECF71300 = v77;
  result = 2.30737904e21;
  unk_1ECF71308 = xmmword_1E42A2940;
  qword_1ECF71318 = 0xD000000000000013;
  unk_1ECF71320 = 0x80000001E425FFE0;
  qword_1ECF71328 = v88;
  unk_1ECF71330 = v79;
  qword_1ECF71338 = v80;
  unk_1ECF71340 = v82;
  qword_1ECF71348 = v85;
  unk_1ECF71350 = v87;
  return result;
}

uint64_t sub_1E3843A90()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1E3843AC0(char a1)
{
  result = OUTLINED_FUNCTION_3_0();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1E3843B48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();
}

uint64_t sub_1E3843C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4203C04();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*(**a2 + 200))(v7);
}

uint64_t sub_1E3843CF0(uint64_t a1)
{
  v2 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  v6();

  sub_1E4200684();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1E3843E08())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3846A58;
}

uint64_t sub_1E3843E94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB00);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAF8);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3843F7C()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB00);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAF8);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E384407C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E38440EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3844138(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 248);

  return v2(v3);
}

uint64_t sub_1E384418C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_19_19();
}

uint64_t (*sub_1E38441EC())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3846A58;
}

uint64_t sub_1E3844278()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB18);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB10);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3844360()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB18);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB10);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

void sub_1E3844460(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E3844528()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3844598@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E38445EC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 296);

  return v4(v2, v3);
}

uint64_t sub_1E384465C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t (*sub_1E38446D8())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3846A58;
}

uint64_t sub_1E3844764()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB20);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E384484C()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB20);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E384494C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E38449BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3844A10(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 344);

  return v2(v3);
}

uint64_t sub_1E3844A6C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_19_19();
}

uint64_t (*sub_1E3844ACC())()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_14(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(v4);
  return sub_1E3844B3C;
}

void sub_1E3844B40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1E3844BC4(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_23_23();
  return swift_endAccess();
}

uint64_t sub_1E3844C34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB38);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30);
  OUTLINED_FUNCTION_21_15();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_17_10();
  return v5(v4);
}

uint64_t sub_1E3844D1C()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB38);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3844E1C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3844E60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_allItemIds;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
}

void *sub_1E3844F00@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_uiConfigs;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_1E3843A58(__dst, v5);
  return memcpy(a1, __dst, 0x98uLL);
}

uint64_t sub_1E3844F74(const void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_uiConfigs;
  OUTLINED_FUNCTION_3_0();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy((v1 + v3), a1, 0x98uLL);
  return sub_1E3844FE0(__dst);
}

uint64_t sub_1E3845060()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_lastKnownConfirmationAction;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E38450A0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_lastKnownConfirmationAction;
  result = OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_1E3845144()
{
  result = qword_1ECF2BB48;
  if (!qword_1ECF2BB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BB48);
  }

  return result;
}

uint64_t sub_1E38451A8()
{
  v1 = *(*v0 + 240);

  v7[0] = v1(v2);
  sub_1E4200524();

  v3 = (*(*v0 + 256))(v7);
  v5 = v4;

  *v5 = MEMORY[0x1E69E7CD0];
  return v3(v7, 0);
}

uint64_t sub_1E38452BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB40);
  sub_1E3845144();
  return sub_1E42006B4();
}

uint64_t sub_1E3845318()
{
  v1 = *(*v0 + 240);

  v1(v2);
  sub_1E4200524();
}

uint64_t sub_1E38453A0()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_selectionDisplayCount;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1E38453E8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_selectionDisplayCount;
  result = OUTLINED_FUNCTION_3_0();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E3845440(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_selectionDisplayCount;
  result = OUTLINED_FUNCTION_3_0();
  *v3 = a1;
  *(v3 + 8) = 0;
  return result;
}

uint64_t sub_1E3845488(int a1)
{
  v2 = swift_allocObject();
  sub_1E38454C8(a1);
  return v2;
}

uint64_t sub_1E38454C8(int a1)
{
  v2 = v1;
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30);
  OUTLINED_FUNCTION_0_10();
  v50 = v4;
  v51 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v42 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  OUTLINED_FUNCTION_0_10();
  v46 = v8;
  v47 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_19(v10, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB10);
  OUTLINED_FUNCTION_0_10();
  v43 = v12;
  v44 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAF8);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  v21 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v42 - v29;
  *(v2 + 16) = 1;
  v49 = v2 + 16;
  v31 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__editState;
  (*(v23 + 104))(&v42 - v29, *MEMORY[0x1E697D710], v21, v28);
  (*(v23 + 16))(v26, v30, v21);
  sub_1E4200634();
  (*(v23 + 8))(v30, v21);
  (*(v17 + 32))(v2 + v31, v20, v42);
  v32 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__selections;
  v54[0] = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB08);
  sub_1E4200634();
  (*(v43 + 32))(v2 + v32, v15, v44);
  v33 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__singleSelection;
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  v34 = v45;
  sub_1E4200634();
  (*(v46 + 32))(v2 + v33, v34, v47);
  v35 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__selectedViewModel;
  v54[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28);
  v36 = v48;
  sub_1E4200634();
  (*(v50 + 32))(v2 + v35, v36, v51);
  *(v2 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_allItemIds) = MEMORY[0x1E69E7CC0];
  v37 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_uiConfigs;
  if (_MergedGlobals_160 != -1)
  {
    OUTLINED_FUNCTION_4_48();
  }

  memcpy(v54, &qword_1ECF712C0, 0x98uLL);
  memmove((v2 + v37), &qword_1ECF712C0, 0x98uLL);
  *(v2 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_lastKnownConfirmationAction) = 2;
  v38 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_deleteActionSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB40);
  swift_allocObject();
  sub_1E3843A58(v54, &v53);
  *(v2 + v38) = sub_1E4200544();
  v39 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_selectionActionSubject;
  swift_allocObject();
  *(v2 + v39) = sub_1E4200544();
  v40 = v2 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_selectionDisplayCount;
  *v40 = 0;
  *(v40 + 8) = 1;
  OUTLINED_FUNCTION_3_0();
  *(v2 + 16) = v52 & 1;
  return v2;
}

uint64_t sub_1E38459F0()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__editState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BAF8);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__selections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB10);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__singleSelection;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0);
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC8VideosUI23CollectionEditableModel__selectedViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30);
  OUTLINED_FUNCTION_2();
  (*(v8 + 8))(v0 + v7);

  memcpy(__dst, (v0 + OBJC_IVAR____TtC8VideosUI23CollectionEditableModel_uiConfigs), sizeof(__dst));
  sub_1E3844FE0(__dst);

  return v0;
}

uint64_t sub_1E3845B70()
{
  sub_1E38459F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3845BC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CollectionEditableModel(0);
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t sub_1E3845C08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3845C70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_3_46();
  sub_1E3845C08(v10, v11);
  *a5 = sub_1E4201754();
  a5[1] = v12;
  v13 = type metadata accessor for ListTemplateView(0);
  v14 = v13[5];
  *(a5 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v15 = (a5 + v13[6]);
  type metadata accessor for TemplateViewModel();
  OUTLINED_FUNCTION_2_46();
  sub_1E3845C08(v16, v17);
  result = sub_1E42010C4();
  *v15 = result;
  v15[1] = v19;
  v20 = a5 + v13[7];
  *v20 = a1;
  *(v20 + 1) = a2;
  v20[16] = a3;
  *(v20 + 3) = a4;
  return result;
}

uint64_t sub_1E3845DA8@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v43 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB58);
  OUTLINED_FUNCTION_0_10();
  v42 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_19(v12, v38);
  v13 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v40 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ListTemplateView(0);
  v19 = v1;
  v20 = (*(**(v1 + *(v18 + 24) + 8) + 464))();
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1E32AE9B0(v21))
  {
    v39 = v2;
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1E6911E60](0, v21);
    }

    else
    {
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_17:
        type metadata accessor for AppEnvironment();
        OUTLINED_FUNCTION_3_46();
        sub_1E3845C08(v36, v37);
        result = sub_1E4201744();
        __break(1u);
        return result;
      }

      v22 = *(v21 + 32);
    }

    type metadata accessor for CollectionViewModel();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v43 = v22;
      v24 = *v19;
      if (*v19)
      {
        v25 = v23;

        sub_1E3746E10(v17);
        sub_1E37FB85C(v25, v21, v24, 1, v50);
        memcpy(v48, v50, sizeof(v48));

        (*(v40 + 8))(v17, v13);
        memcpy(v49, v48, sizeof(v49));
        nullsub_1(v26, v27);
        memcpy(v51, v49, 0x150uLL);
        v28 = *(v19 + *(v18 + 28) + 24);
        sub_1E37E6E1C(v50, &v47);
        v29 = v41;
        sub_1E3A546A4(v25, v51, 0, v28, v41);
        sub_1E375B760(v50);
        v30 = v42;
        v31 = v45;
        (*(v42 + 16))(v9, v29, v45);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_14_14();
        OUTLINED_FUNCTION_10_1();
        sub_1E4201F44();

        sub_1E375B760(v50);
        return (*(v30 + 8))(v29, v31);
      }

      goto LABEL_17;
    }

    v2 = v39;
  }

  else
  {
  }

  nullsub_1(v33, v34);
  v35 = v43;
  (*(v43 + 16))(v9, v6, v2);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_14_14();
  OUTLINED_FUNCTION_10_1();
  sub_1E4201F44();
  return (*(v35 + 8))(v6, v2);
}

unint64_t sub_1E38462B4()
{
  result = qword_1ECF2BB60;
  if (!qword_1ECF2BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BB60);
  }

  return result;
}

uint64_t sub_1E384632C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 152))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1E3846380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1E3846430()
{
  sub_1E3846840(319, &qword_1EE28A088, MEMORY[0x1E697D718], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1E381A32C(319, &qword_1EE289F48, &qword_1ECF2BB08);
    if (v1 <= 0x3F)
    {
      sub_1E3846618();
      if (v2 <= 0x3F)
      {
        sub_1E381A32C(319, &qword_1EE289FD0, &qword_1ECF2BB28);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1E3846618()
{
  if (!qword_1EE289FC0)
  {
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289FC0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CollectionEditableModel.ConfirmationAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1E384676C()
{
  sub_1E381EC50();
  if (v0 <= 0x3F)
  {
    sub_1E3846840(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1E38468A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E3846840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1E38468A4()
{
  if (!qword_1EE289D58)
  {
    type metadata accessor for TemplateViewModel();
    sub_1E3845C08(&qword_1EE279848, type metadata accessor for TemplateViewModel);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289D58);
    }
  }
}

unint64_t sub_1E3846938()
{
  result = qword_1ECF2BB68;
  if (!qword_1ECF2BB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BB70);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BB68);
  }

  return result;
}

id sub_1E38469F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  v5 = [a3 localizedStringForKey_];

  return v5;
}

uint64_t FollowLiveUpdatesState.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x46676E6965427369;
  }
}

uint64_t sub_1E3846AC8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x776F6C6C6F666E75;
  }

  else
  {
    v3 = 0x776F6C6C6F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x776F6C6C6F666E75;
  }

  else
  {
    v5 = 0x776F6C6C6F66;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3846B64(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x46676E6965427369;
  }

  if (v2)
  {
    v4 = 0xEF6465776F6C6C6FLL;
  }

  else
  {
    v4 = 0x80000001E4260050;
  }

  if (a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x46676E6965427369;
  }

  if (a2)
  {
    v6 = 0x80000001E4260050;
  }

  else
  {
    v6 = 0xEF6465776F6C6C6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3846C3C()
{
  sub_1E4206014();
}

uint64_t sub_1E3846CA4()
{
  sub_1E4206014();
}

uint64_t sub_1E3846D28()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3846DB8()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

VideosUI::FollowLiveUpdatesState_optional sub_1E3846E34@<W0>(Swift::String *a1@<X0>, VideosUI::FollowLiveUpdatesState_optional *a2@<X8>)
{
  result.value = FollowLiveUpdatesState.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1E3846E64@<X0>(uint64_t *a1@<X8>)
{
  result = FollowLiveUpdatesState.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FollowLiveUpdatesRequestManagerError.hashValue.getter(unsigned __int8 a1)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3846F2C()
{
  v1 = *v0;
  sub_1E4207B44();
  FollowLiveUpdatesRequestManagerError.hash(into:)(v3, v1);
  return sub_1E4207BA4();
}

void FollowLiveUpdatesRequestManager.follow(for:completion:)()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if (qword_1EE29AB20 != -1)
  {
    OUTLINED_FUNCTION_3_47();
  }

  v10 = OUTLINED_FUNCTION_74();
  v11(v10);
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = v0;
  v12[4] = v3;
  v12[5] = v5;
  sub_1E4205004();
  OUTLINED_FUNCTION_38();

  sub_1E34AF604(v3);
  v13 = sub_1E4204FF4();
  (*(v8 + 104))(v2, *MEMORY[0x1E69D3988], v6);
  OUTLINED_FUNCTION_74();
  sub_1E4204F14();

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_25_2();
}

uint64_t *sub_1E3847108()
{
  if (qword_1EE29AB20 != -1)
  {
    OUTLINED_FUNCTION_3_47();
  }

  return &qword_1EE2AACF8;
}

void sub_1E3847148()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v56 = v7;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v60 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v58 = v21;
  v59 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  if (v9)
  {
    v53 = v4;
    v55 = v17;
    v25 = v9;
    v26 = sub_1E3E37F30();
    (*(v12 + 16))(v16, v26, v10);
    v27 = v9;

    v28 = sub_1E41FFC94();
    v29 = sub_1E42067F4();

    v57 = v9;
    v54 = v2;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_1E3270FC8(v56, v6, v61);
      *(v30 + 12) = 2080;
      swift_getErrorValue();
      v31 = sub_1E4207AB4();
      v33 = sub_1E3270FC8(v31, v32, v61);

      *(v30 + 14) = v33;
      _os_log_impl(&dword_1E323F000, v28, v29, "FollowLiveUpdatesRequestManager: error following '%s': %s", v30, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v12 + 8))(v16, v10);
    v34 = sub_1E41FE264();
    v35 = [v34 domain];
    v36 = sub_1E4205F14();
    v38 = v37;

    v39 = v36 == 0xD00000000000001BLL && 0x80000001E4260130 == v38;
    v40 = v53;
    if (v39 || (sub_1E42079A4() & 1) != 0)
    {

      if ([v34 code] == 2)
      {

        v41 = 3;
        v42 = v54;
LABEL_26:
        sub_1E32ADE38();
        v50 = sub_1E4206A04();
        v51 = swift_allocObject();
        *(v51 + 16) = v40;
        *(v51 + 24) = v42;
        *(v51 + 32) = v41;
        OUTLINED_FUNCTION_12_14(v51);
        OUTLINED_FUNCTION_6_44(COERCE_DOUBLE(1107296256));
        v62 = v52;
        v63 = &block_descriptor_78;
        _Block_copy(v61);
        OUTLINED_FUNCTION_32_24();
        sub_1E4203FE4();
        v61[0] = MEMORY[0x1E69E7CC0];
        sub_1E37E7A8C();
        OUTLINED_FUNCTION_29_14();
        OUTLINED_FUNCTION_2_47(&qword_1EE23B5D0);
        v17 = v55;
        sub_1E42072E4();
        OUTLINED_FUNCTION_20_29();
        _Block_release(v41);

        goto LABEL_27;
      }

      v42 = v54;
      if ([v34 code] == 4)
      {

        v41 = 1;
        goto LABEL_26;
      }

      v48 = [v34 code];

      if (v48 == 5)
      {
        v41 = 2;
        goto LABEL_26;
      }
    }

    else
    {
      if (v36 == 0xD000000000000020 && 0x80000001E4260150 == v38)
      {
      }

      else
      {
        v47 = sub_1E42079A4();

        if ((v47 & 1) == 0)
        {

          v42 = v54;
          goto LABEL_25;
        }
      }

      v49 = [v34 code];

      v42 = v54;
      if (v49 == 601)
      {
        v41 = 4;
        goto LABEL_26;
      }
    }

LABEL_25:
    v41 = 0;
    goto LABEL_26;
  }

  sub_1E3847EE0();
  sub_1E32ADE38();
  v43 = sub_1E4206A04();
  OUTLINED_FUNCTION_2_4();
  v44 = swift_allocObject();
  *(v44 + 16) = v4;
  *(v44 + 24) = v2;
  OUTLINED_FUNCTION_12_14(v44);
  OUTLINED_FUNCTION_6_44(COERCE_DOUBLE(1107296256));
  v62 = v45;
  v63 = &block_descriptor_72;
  _Block_copy(v61);
  OUTLINED_FUNCTION_32_24();
  sub_1E4203FE4();
  v61[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  OUTLINED_FUNCTION_29_14();
  OUTLINED_FUNCTION_2_47(&qword_1EE23B5D0);
  sub_1E42072E4();
  OUTLINED_FUNCTION_20_29();
  _Block_release(0);

LABEL_27:
  (*(v60 + 8))(v0, v17);
  (*(v58 + 8))(v24, v59);
  OUTLINED_FUNCTION_25_2();
}

void FollowLiveUpdatesRequestManager.unfollow(for:completion:)()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if (qword_1EE29AB20 != -1)
  {
    OUTLINED_FUNCTION_3_47();
  }

  v12 = OUTLINED_FUNCTION_74();
  v13(v12);
  sub_1E4205004();
  v14 = sub_1E4204FF4();
  (*(v7 + 104))(v11, *MEMORY[0x1E69D3988], v5);
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = v0;
  v15[4] = v2;
  v15[5] = v4;

  sub_1E34AF604(v2);
  OUTLINED_FUNCTION_74();
  sub_1E4204F24();

  (*(v7 + 8))(v11, v5);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3847948()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v50 = v4;
  v48 = v5;
  v7 = v6;
  v49 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v52 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  if (v7)
  {
    v44 = v3;
    v45 = v25 - v24;
    v46 = v22;
    v47 = v14;
    v27 = v7;
    v28 = sub_1E3E37F30();
    (*(v9 + 16))(v13, v28, v49);
    v29 = v7;

    v30 = sub_1E41FFC94();
    v31 = sub_1E42067E4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_1E3270FC8(v48, v50, v53);
      *(v32 + 12) = 2080;
      swift_getErrorValue();
      v33 = sub_1E4207AB4();
      v35 = sub_1E3270FC8(v33, v34, v53);

      *(v32 + 14) = v35;
      _os_log_impl(&dword_1E323F000, v30, v31, "FollowLiveUpdatesRequestManager: error unfollowing '%s': %s", v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v9 + 8))(v13, v49);
    sub_1E32ADE38();
    v36 = sub_1E4206A04();
    OUTLINED_FUNCTION_2_4();
    v37 = swift_allocObject();
    *(v37 + 16) = v44;
    *(v37 + 24) = v1;
    OUTLINED_FUNCTION_12_14(v37);
    OUTLINED_FUNCTION_7_56(COERCE_DOUBLE(1107296256));
    v54 = v38;
    v55 = &block_descriptor_66;
    v39 = _Block_copy(v53);
    sub_1E34AF604(v44);
    sub_1E4203FE4();
    sub_1E37E7A8C();
    OUTLINED_FUNCTION_29_14();
    OUTLINED_FUNCTION_2_47(&qword_1EE23B5D0);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v45, v19, v39);
    _Block_release(v39);

    (*(v52 + 8))(v19, v47);
    (*(v46 + 8))(v45, v20);
  }

  else
  {
    sub_1E3847EE0();
    sub_1E32ADE38();
    v51 = sub_1E4206A04();
    OUTLINED_FUNCTION_2_4();
    v40 = swift_allocObject();
    *(v40 + 16) = v3;
    *(v40 + 24) = v1;
    OUTLINED_FUNCTION_12_14(v40);
    OUTLINED_FUNCTION_7_56(COERCE_DOUBLE(1107296256));
    v54 = v41;
    v55 = &block_descriptor_18;
    v42 = v14;
    v43 = _Block_copy(v53);
    sub_1E34AF604(v3);
    sub_1E4203FE4();
    sub_1E37E7A8C();
    OUTLINED_FUNCTION_29_14();
    OUTLINED_FUNCTION_2_47(&qword_1EE23B5D0);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v26, v19, v43);
    _Block_release(v43);

    (*(v52 + 8))(v19, v42);
    (*(v22 + 8))(v26, v20);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3847EE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v1;
  v2 = sub_1E4205F14();
  v3 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v2;
  *(inited + 56) = v4;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v5;
  v6 = sub_1E4205F14();
  *(inited + 120) = v3;
  *(inited + 96) = v6;
  *(inited + 104) = v7;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v8;
  v9 = sub_1E4205F14();
  *(inited + 168) = v3;
  *(inited + 144) = v9;
  *(inited + 152) = v10;
  *(inited + 176) = sub_1E4205F14();
  *(inited + 184) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1E4297BE0;
  *(v12 + 32) = sub_1E4205F14();
  *(v12 + 40) = v13;
  *(v12 + 48) = sub_1E4205F14();
  *(v12 + 56) = v14;
  OUTLINED_FUNCTION_74();
  v15 = sub_1E4205CB4();
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
  *(inited + 192) = v15;
  v16 = sub_1E4205CB4();
  v17 = [objc_opt_self() sharedInstance];
  sub_1E3744600(v16);

  v18 = sub_1E4205C44();

  [v17 recordClick_];
}

Swift::Bool __swiftcall FollowLiveUpdatesRequestManager.check(for:)(Swift::String a1)
{
  v1 = sub_1E4205004();
  sub_1E4204FF4();
  OUTLINED_FUNCTION_38();
  v2 = sub_1E4204F94();

  return v2 & 1;
}

uint64_t sub_1E3848154(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = OUTLINED_FUNCTION_11_1();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E384817C()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1E3848270;

  return MEMORY[0x1EEE6DDE0](v0 + 6, 0, 0, 0xD00000000000001BLL, 0x80000001E4260080, sub_1E38494C8, v3, &type metadata for FollowLiveUpdatesState);
}

uint64_t sub_1E3848270()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1E3848388()
{
  OUTLINED_FUNCTION_31_1();
  v20[0] = v0;
  v20[1] = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BBA0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  v10 = sub_1E4204D54();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  sub_1E4205004();
  v17 = sub_1E4204FF4();
  (*(v12 + 104))(v16, *MEMORY[0x1E69D3988], v10);
  (*(v6 + 16))(v9, v3, v4);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v18, v9, v4);
  sub_1E4204F54();

  (*(v12 + 8))(v16, v10);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3848584()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E38485F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3848584();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3848650()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E38486C0(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_38();
  sub_1E384870C(v4, a2);
  return v2;
}

uint64_t sub_1E384870C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35_3();
  v11 = OBJC_IVAR____TtC8VideosUI20FollowStateViewModel__isFollowActive;
  sub_1E4200634();
  (*(v9 + 32))(v4 + v11, v3, v7);
  *(v4 + OBJC_IVAR____TtC8VideosUI20FollowStateViewModel_cancellables) = MEMORY[0x1E69E7CD0];
  v12 = (v4 + OBJC_IVAR____TtC8VideosUI20FollowStateViewModel_canonicalId);
  *v12 = a1;
  v12[1] = a2;
  sub_1E4205004();
  OUTLINED_FUNCTION_38();

  v13 = sub_1E4204FF4();
  sub_1E4204F84();

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B568);
  OUTLINED_FUNCTION_1_37();
  sub_1E32752B0(v16, v17);
  sub_1E4200844();

  OUTLINED_FUNCTION_11_3();
  sub_1E42004C4();
  swift_endAccess();

  sub_1E3848BCC();
  return v4;
}

void sub_1E384892C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25[0] = v3;
    v25[1] = v1;
    MEMORY[0x1EEE9AC00](Strong);
    *(&v24 - 2) = v25;
    sub_1E3849DF8(sub_1E3756228, (&v24 - 4), v13);
    sub_1E3848650();
    v15 = sub_1E3848584();
    if (v15)
    {
      v16 = 0xE900000000000067;
    }

    else
    {
      v16 = 0xED0000676E69776FLL;
    }

    v17 = sub_1E3E37F30();
    (*(v8 + 16))(v12, v17, v6);

    v18 = sub_1E41FFC94();
    v19 = sub_1E42067E4();

    if (os_log_type_enabled(v18, v19))
    {
      if (v15)
      {
        v20 = 0x6E69776F6C6C6F66;
      }

      else
      {
        v20 = 0x6C6C6F6620746F6ELL;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25[0] = v22;
      *v21 = 136315138;
      v23 = sub_1E3270FC8(v20, v16, v25);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1E323F000, v18, v19, "FollowStateViewModel: SportsManager.activitiesPublisher emitted state: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v8 + 8))(v12, v6);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3848BCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - v2;
  v4 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_1E376FE58(0, 0, v3, &unk_1E42A2DD0, v5);
}

uint64_t sub_1E3848CAC()
{
  OUTLINED_FUNCTION_24();
  v0[6] = v1;
  v2 = sub_1E41FFCB4();
  v0[7] = v2;
  v0[8] = *(v2 - 8);
  v0[9] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3848D60()
{
  OUTLINED_FUNCTION_24();
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC8VideosUI20FollowStateViewModel_canonicalId);
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1E3848E04;

  return sub_1E3848154(v3, v2);
}

uint64_t sub_1E3848E04()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  *(v1 + 96) = v0;

  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3848EF4()
{
  OUTLINED_FUNCTION_24();
  swift_weakInit();
  sub_1E4206434();
  *(v0 + 88) = sub_1E4206424();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3848F90, v2, v1);
}

uint64_t sub_1E3848F90()
{
  OUTLINED_FUNCTION_27_2();

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (*(v0 + 96))
    {
      v1 = 0x80000001E4260050;
    }

    else
    {
      v1 = 0xEF6465776F6C6C6FLL;
    }

    if (v1 != 0xEF6465776F6C6C6FLL || (*(v0 + 96) & 1) != 0)
    {
      sub_1E42079A4();
    }

    sub_1E3848650();
  }

  swift_weakDestroy();
  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E38490A8()
{
  v25 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = sub_1E3848584();
  if (v4)
  {
    v5 = 0xE900000000000067;
  }

  else
  {
    v5 = 0xED0000676E69776FLL;
  }

  v6 = sub_1E3E37F30();
  (*(v2 + 16))(v1, v6, v3);

  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 96);
    v10 = *(v0 + 64);
    v22 = *(v0 + 56);
    v23 = *(v0 + 72);
    if (v4)
    {
      v11 = 0x6E69776F6C6C6F66;
    }

    else
    {
      v11 = 0x6C6C6F6620746F6ELL;
    }

    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 136315394;
    if (v9)
    {
      v13 = 0xD000000000000012;
    }

    else
    {
      v13 = 0x46676E6965427369;
    }

    if (v9)
    {
      v14 = 0x80000001E4260050;
    }

    else
    {
      v14 = 0xEF6465776F6C6C6FLL;
    }

    v15 = sub_1E3270FC8(v13, v14, &v24);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = sub_1E3270FC8(v11, v5, &v24);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_1E323F000, v7, v8, "FollowStateViewModel.fetchFollowState: was %s, returned %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v10 + 8))(v23, v22);
  }

  else
  {
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v19 = *(v0 + 56);

    (*(v18 + 8))(v17, v19);
  }

  OUTLINED_FUNCTION_54();

  return v20();
}

uint64_t sub_1E384932C()
{
  v1 = OBJC_IVAR____TtC8VideosUI20FollowStateViewModel__isFollowActive;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1E38493B4()
{
  sub_1E384932C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E384940C()
{
  type metadata accessor for FollowRequestPublisher();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB78);
  OUTLINED_FUNCTION_119();
  result = sub_1E4200544();
  *(v0 + 16) = result;
  qword_1EE2AACF8 = v0;
  return result;
}

uint64_t objectdestroyTm_7()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_13Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t sub_1E3849534()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3286A7C;

  return sub_1E3848CAC();
}

uint64_t sub_1E38495C4()
{
  OUTLINED_FUNCTION_15_1();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB78);
  OUTLINED_FUNCTION_119();
  *(v0 + 16) = sub_1E4200544();
  return v0;
}

uint64_t sub_1E3849614()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB78);
  sub_1E32752B0(&qword_1EE28A170, &qword_1ECF2BB78);
  return sub_1E42006B4();
}

uint64_t sub_1E38496A0()
{
  v0 = sub_1E4207784();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E38496F0(char a1)
{
  if (a1)
  {
    return 0x776F6C6C6F666E75;
  }

  else
  {
    return 0x776F6C6C6F66;
  }
}

uint64_t sub_1E3849748@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E38496A0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3849780@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E38496F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E38497AC()
{

  sub_1E4200524();
}

void sub_1E38497FC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_34();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_35_3();
  sub_1E3849614();
  OUTLINED_FUNCTION_2_4();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B570);
  OUTLINED_FUNCTION_1_37();
  sub_1E32752B0(v11, v12);
  sub_1E42007B4();

  sub_1E32752B0(&qword_1EE28A2F0, &qword_1ECF2BB80);
  sub_1E42006B4();
  (*(v8 + 8))(v0, v6);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E384999C()
{

  v0 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E38499CC(void *a1)
{
  if (*a1 == *(v1 + 16) && a1[1] == *(v1 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1E42079A4();
  }
}

unint64_t sub_1E38499FC()
{
  result = qword_1ECF2BB88;
  if (!qword_1ECF2BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BB88);
  }

  return result;
}

unint64_t sub_1E3849A54()
{
  result = qword_1ECF2BB90;
  if (!qword_1ECF2BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BB90);
  }

  return result;
}

unint64_t sub_1E3849AAC()
{
  result = qword_1ECF2BB98;
  if (!qword_1ECF2BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BB98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FollowLiveUpdatesRequestManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for FollowStateViewModel()
{
  result = qword_1EE29DB10;
  if (!qword_1EE29DB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3849C54()
{
  sub_1E32A995C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *_s8VideosUI22FollowLiveUpdatesStateOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

BOOL sub_1E3849DF8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1E3849EA8()
{
  v0 = OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  v1 = OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  return sub_1E42063D4();
}

uint64_t sub_1E3849F58(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2((result & 1) << 8);
  }

  return result;
}

uint64_t objectdestroy_59Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3849FE4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32) | 0x100u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_24()
{
  sub_1E34AF604(v0);
}

uint64_t ViewModelEvent.description.getter(char a1)
{
  result = 0x79616C506F747561;
  switch(a1)
  {
    case 1:
      result = 2036427888;
      break;
    case 2:
      result = 0x7463656C6573;
      break;
    case 3:
      result = 0x6867696C68676968;
      break;
    case 4:
      result = 0x4D747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

VideosUI::ViewModelEvent_optional __swiftcall ViewModelEvent.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_59_4();
  if (v3)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1E384A168(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x65736142656D6954;
  }

  else
  {
    v3 = 0x615672656B636950;
  }

  if (v2)
  {
    v4 = 0xEB0000000065756CLL;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (a2)
  {
    v5 = 0x65736142656D6954;
  }

  else
  {
    v5 = 0x615672656B636950;
  }

  if (a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xEB0000000065756CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384A214(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x726579616C70;
  }

  else
  {
    v3 = 0x74616369646E7973;
  }

  if (v2)
  {
    v4 = 0xEB000000006E6F69;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x726579616C70;
  }

  else
  {
    v5 = 0x74616369646E7973;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384A2B8(unsigned __int8 a1, char a2)
{
  v2 = 0x656C7469546F6ELL;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x656C7469546F6ELL;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000010;
      v6 = "ssolve";
      goto LABEL_5;
    case 2:
      v5 = 0x6C6E4F656C746974;
      v3 = 0xE900000000000079;
      break;
    case 3:
      v5 = 0xD000000000000010;
      v6 = "titleWhenFocused";
LABEL_5:
      v3 = v6 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000010;
      v8 = "ssolve";
      goto LABEL_10;
    case 2:
      v2 = 0x6C6E4F656C746974;
      v7 = 0xE900000000000079;
      break;
    case 3:
      v2 = 0xD000000000000010;
      v8 = "titleWhenFocused";
LABEL_10:
      v7 = v8 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E384A404(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0x7A69536567646162;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x80000001E42607C0;
  }

  if (a2)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0x7A69536567646162;
  }

  if (a2)
  {
    v6 = 0x80000001E42607C0;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384A4AC(unsigned __int8 a1, char a2)
{
  v2 = 0xEF73656C62617961;
  v3 = 0x6C50736F65646976;
  v4 = a1;
  v5 = 0x6C50736F65646976;
  v6 = 0xEF73656C62617961;
  switch(v4)
  {
    case 1:
      v6 = 0x80000001E42617D0;
      v5 = 0xD000000000000013;
      break;
    case 2:
      break;
    case 3:
      v5 = 0x697463656C6C6F63;
      v6 = 0xEF656C7469546E6FLL;
      break;
    case 4:
      v5 = 0x7473696C79616C70;
      v6 = 0xEC00000065707954;
      break;
    case 5:
      v5 = 0xD000000000000012;
      v6 = 0x80000001E4261820;
      break;
    default:
      v6 = 0x80000001E42617B0;
      v5 = 0xD00000000000001BLL;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000001E42617D0;
      v3 = 0xD000000000000013;
      break;
    case 2:
      break;
    case 3:
      v3 = 0x697463656C6C6F63;
      v2 = 0xEF656C7469546E6FLL;
      break;
    case 4:
      v3 = 0x7473696C79616C70;
      v2 = 0xEC00000065707954;
      break;
    case 5:
      v3 = 0xD000000000000012;
      v2 = 0x80000001E4261820;
      break;
    default:
      v2 = 0x80000001E42617B0;
      v3 = 0xD00000000000001BLL;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384A6A4(unsigned __int8 a1, char a2)
{
  v2 = 0x656C626179616C70;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x656C626179616C70;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0x617461646174656DLL;
      break;
    case 3:
      v3 = 0x80000001E4261700;
      v5 = 0xD000000000000017;
      break;
    case 4:
      v5 = 0x6163696E6F6E6163;
      v3 = 0xEB0000000064496CLL;
      break;
    default:
      v5 = 0xD000000000000011;
      v3 = 0x80000001E42616E0;
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 0x617461646174656DLL;
      break;
    case 3:
      v6 = 0x80000001E4261700;
      v2 = 0xD000000000000017;
      break;
    case 4:
      v2 = 0x6163696E6F6E6163;
      v6 = 0xEB0000000064496CLL;
      break;
    default:
      v2 = 0xD000000000000011;
      v6 = 0x80000001E42616E0;
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384A830(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (v2)
  {
    v4 = "countdownButtonName";
  }

  else
  {
    v4 = "maxVideoPlayingDuration";
  }

  if (a2)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (a2)
  {
    v6 = "maxVideoPlayingDuration";
  }

  else
  {
    v6 = "countdownButtonName";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384A8D4(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000065707954;
  v3 = 0x79616C5074736F70;
  v4 = a1;
  v5 = 0x79616C5074736F70;
  v6 = 0xEC00000065707954;
  switch(v4)
  {
    case 1:
      v6 = 0x80000001E4261430;
      v5 = 0xD000000000000011;
      break;
    case 2:
      break;
    case 3:
      v6 = 0x80000001E4261450;
      v5 = 0xD000000000000013;
      break;
    default:
      v6 = 0x80000001E4261410;
      v5 = 0xD000000000000019;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000001E4261430;
      v3 = 0xD000000000000011;
      break;
    case 2:
      break;
    case 3:
      v2 = 0x80000001E4261450;
      v3 = 0xD000000000000013;
      break;
    default:
      v2 = 0x80000001E4261410;
      v3 = 0xD000000000000019;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384AA20(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000010;
  v3 = "removeTitleForSquareAspectRatio";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4 == 1)
    {
      v6 = "showsPageControl";
    }

    else
    {
      v6 = "autoScrollEnabled";
    }
  }

  else
  {
    v5 = 0xD000000000000010;
    v6 = "removeTitleForSquareAspectRatio";
  }

  if (a2)
  {
    v3 = "showsPageControl";
    v2 = a2 == 1 ? 0xD000000000000011 : 0xD000000000000012;
    if (a2 != 1)
    {
      v3 = "autoScrollEnabled";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384AAFC(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007961;
  v3 = 0x6C5074736F507369;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6F6E6143776F6873;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4 == 1)
    {
      v6 = 0xEF64496C6163696ELL;
    }

    else
    {
      v6 = 0x80000001E42614C0;
    }
  }

  else
  {
    v5 = 0x6C5074736F507369;
    v6 = 0xEA00000000007961;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6F6E6143776F6873;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (a2 == 1)
    {
      v2 = 0xEF64496C6163696ELL;
    }

    else
    {
      v2 = 0x80000001E42614C0;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384AC14(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6C61646F4D657375;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = 0x80000001E4261170;
  }

  else
  {
    v4 = 0xED0000656C797453;
  }

  if (a2)
  {
    v5 = 0x6C61646F4D657375;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (a2)
  {
    v6 = 0xED0000656C797453;
  }

  else
  {
    v6 = 0x80000001E4261170;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384ACC4(char a1, char a2)
{
  v3 = 0xD000000000000014;
  v4 = "oAXChanges";
  v5 = "oAXChanges";
  switch(a1)
  {
    case 1:
      v5 = "ignoresPrototypeSize";
      v3 = 0xD000000000000013;
      break;
    case 2:
      v5 = "useRestrictiveStyle";
      v3 = 0xD000000000000010;
      break;
    case 3:
      v5 = "useOldBadgeStyle";
      v3 = 0xD00000000000001BLL;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000014;
  switch(a2)
  {
    case 1:
      v4 = "ignoresPrototypeSize";
      v6 = 0xD000000000000013;
      break;
    case 2:
      v4 = "useRestrictiveStyle";
      v6 = 0xD000000000000010;
      break;
    case 3:
      v4 = "useOldBadgeStyle";
      v6 = 0xD00000000000001BLL;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384ADF8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000023;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = "undleIds";
  }

  else
  {
    v4 = "textBadgeIdentifier";
  }

  if (a2)
  {
    v5 = 0xD000000000000023;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (a2)
  {
    v6 = "textBadgeIdentifier";
  }

  else
  {
    v6 = "undleIds";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384AE9C(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x6C72556572616873;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 1)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0x80000001E42615D0;
    }
  }

  else
  {
    v4 = 0x80000001E42615A0;
    v3 = 0xD000000000000017;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x6C72556572616873;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0x80000001E42615D0;
    }
  }

  else
  {
    v6 = 0x80000001E42615A0;
    v5 = 0xD000000000000017;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384AF84(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000016;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD00000000000001BLL;
    }

    else
    {
      v4 = 0x64616F6C6E776F64;
    }

    if (v3 == 1)
    {
      v5 = 0x80000001E4261210;
    }

    else
    {
      v5 = 0xEE00737574617453;
    }
  }

  else
  {
    v5 = 0x80000001E42611F0;
    v4 = 0xD000000000000016;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001BLL;
    }

    else
    {
      v2 = 0x64616F6C6E776F64;
    }

    if (a2 == 1)
    {
      v6 = 0x80000001E4261210;
    }

    else
    {
      v6 = 0xEE00737574617453;
    }
  }

  else
  {
    v6 = 0x80000001E42611F0;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384B07C(unsigned __int8 a1, char a2)
{
  v2 = 0x656D614E707061;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6C646E7542707061;
    }

    else
    {
      v4 = 0x496D616441707061;
    }

    if (v3 == 1)
    {
      v5 = 0xEC00000073644965;
    }

    else
    {
      v5 = 0xEA00000000007364;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x656D614E707061;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6C646E7542707061;
    }

    else
    {
      v2 = 0x496D616441707061;
    }

    if (a2 == 1)
    {
      v6 = 0xEC00000073644965;
    }

    else
    {
      v6 = 0xEA00000000007364;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384B190(unsigned __int8 a1, char a2)
{
  v2 = 0x7865646E69;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7865646E69;
  switch(v4)
  {
    case 1:
      v5 = 0x676E654C65676170;
      v3 = 0xEA00000000006874;
      break;
    case 2:
      v5 = 0xD000000000000015;
      v6 = "y";
      goto LABEL_5;
    case 3:
      v5 = 0x756F436C61746F74;
      v3 = 0xEA0000000000746ELL;
      break;
    case 4:
      v5 = 0xD000000000000015;
      v6 = "Limit";
LABEL_5:
      v3 = v6 | 0x8000000000000000;
      break;
    case 5:
      v5 = 0x685374616C467369;
      v3 = 0xEA0000000000776FLL;
      break;
    case 6:
      v5 = 0x6F53676E696D6F63;
      v3 = 0xEE00657461446E6FLL;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x676E654C65676170;
      v7 = 0xEA00000000006874;
      break;
    case 2:
      v2 = 0xD000000000000015;
      v8 = "y";
      goto LABEL_13;
    case 3:
      v2 = 0x756F436C61746F74;
      v7 = 0xEA0000000000746ELL;
      break;
    case 4:
      v2 = 0xD000000000000015;
      v8 = "Limit";
LABEL_13:
      v7 = v8 | 0x8000000000000000;
      break;
    case 5:
      v2 = 0x685374616C467369;
      v7 = 0xEA0000000000776FLL;
      break;
    case 6:
      v2 = 0x6F53676E696D6F63;
      v7 = 0xEE00657461446E6FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E384B3A0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x7274654D65676170;
  }

  else
  {
    v3 = 0x6E656D6563616C70;
  }

  if (v2)
  {
    v4 = 0xEB00000000644974;
  }

  else
  {
    v4 = 0xEB00000000736369;
  }

  if (a2)
  {
    v5 = 0x7274654D65676170;
  }

  else
  {
    v5 = 0x6E656D6563616C70;
  }

  if (a2)
  {
    v6 = 0xEB00000000736369;
  }

  else
  {
    v6 = 0xEB00000000644974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384B450(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000006465;
  v3 = 0x7463656C65537369;
  v4 = a1;
  v5 = 0x7463656C65537369;
  v6 = 0xEA00000000006465;
  switch(v4)
  {
    case 1:
      v6 = 0x80000001E42616A0;
      v5 = 0xD000000000000016;
      break;
    case 2:
      break;
    case 3:
      v6 = 0x80000001E42616C0;
      v5 = 0xD00000000000001CLL;
      break;
    default:
      v6 = 0x80000001E4261680;
      v5 = 0xD000000000000018;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000001E42616A0;
      v3 = 0xD000000000000016;
      break;
    case 2:
      break;
    case 3:
      v2 = 0x80000001E42616C0;
      v3 = 0xD00000000000001CLL;
      break;
    default:
      v2 = 0x80000001E4261680;
      v3 = 0xD000000000000018;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384B59C(unsigned __int8 a1, char a2)
{
  v2 = 0xED00006449686374;
  v3 = 0x6157646572616873;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6157646572616873;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 1)
    {
      v6 = 0xEE006C7255686374;
    }

    else
    {
      v6 = 0x80000001E4261750;
    }
  }

  else
  {
    v5 = 0x6157646572616873;
    v6 = 0xED00006449686374;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xEE006C7255686374;
    }

    else
    {
      v3 = 0xD000000000000013;
      v2 = 0x80000001E4261750;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384B698(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v2)
  {
    v4 = "flipAndBlurImageAspectRatio";
  }

  else
  {
    v4 = "widthThresholdForIpadLayout";
  }

  if (a2)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (a2)
  {
    v6 = "widthThresholdForIpadLayout";
  }

  else
  {
    v6 = "flipAndBlurImageAspectRatio";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384B73C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6F4D746165706572;
  }

  else
  {
    v3 = 0x4F6F696475417369;
  }

  if (v2)
  {
    v4 = 0xEB00000000796C6ELL;
  }

  else
  {
    v4 = 0xEA00000000006564;
  }

  if (a2)
  {
    v5 = 0x6F4D746165706572;
  }

  else
  {
    v5 = 0x4F6F696475417369;
  }

  if (a2)
  {
    v6 = 0xEA00000000006564;
  }

  else
  {
    v6 = 0xEB00000000796C6ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384B7E8(unsigned __int8 a1, char a2)
{
  v2 = 0x644965756761656CLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6163696E6F6E6163;
    }

    else
    {
      v4 = 0xD000000000000019;
    }

    if (v3 == 1)
    {
      v5 = 0xEB0000000064496CLL;
    }

    else
    {
      v5 = 0x80000001E4261850;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x644965756761656CLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6163696E6F6E6163;
    }

    else
    {
      v2 = 0xD000000000000019;
    }

    if (a2 == 1)
    {
      v6 = 0xEB0000000064496CLL;
    }

    else
    {
      v6 = 0x80000001E4261850;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384B8F4(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000014;
  v3 = "shouldLockupIgnoreRTL";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000001CLL;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 1)
    {
      v6 = "flexibleGridPriority";
    }

    else
    {
      v6 = "isFlexibleGridRowHighlighted";
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    v6 = "shouldLockupIgnoreRTL";
  }

  if (a2)
  {
    v3 = "flexibleGridPriority";
    v2 = a2 == 1 ? 0xD00000000000001CLL : 0xD000000000000013;
    if (a2 != 1)
    {
      v3 = "isFlexibleGridRowHighlighted";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384B9D0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x74616369646E7973;
  }

  if (v2)
  {
    v4 = 0xED000064496E6F69;
  }

  else
  {
    v4 = 0x80000001E4261580;
  }

  if (a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x74616369646E7973;
  }

  if (a2)
  {
    v6 = 0x80000001E4261580;
  }

  else
  {
    v6 = 0xED000064496E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384BA80(unsigned __int8 a1, char a2)
{
  v2 = 0xEF726F6C6F43676ELL;
  v3 = 0x696E726157657375;
  v4 = a1;
  v5 = 0x696E726157657375;
  v6 = 0xEF726F6C6F43676ELL;
  switch(v4)
  {
    case 1:
      v6 = 0x80000001E42611B0;
      v5 = 0xD000000000000014;
      break;
    case 2:
      break;
    case 3:
      v6 = 0x80000001E42611D0;
      v5 = 0xD000000000000019;
      break;
    default:
      v6 = 0x80000001E4261190;
      v5 = 0xD000000000000012;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000001E42611B0;
      v3 = 0xD000000000000014;
      break;
    case 2:
      break;
    case 3:
      v2 = 0x80000001E42611D0;
      v3 = 0xD000000000000019;
      break;
    default:
      v2 = 0x80000001E4261190;
      v3 = 0xD000000000000012;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384BBD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E384BC60(char a1, char a2)
{
  v2 = 0x6576694C657270;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 1702259052;
    }

    else
    {
      v3 = 1953722224;
    }

    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6576694C657270;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1702259052;
    }

    else
    {
      v2 = 1953722224;
    }

    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E42079A4();
  }

  return v7 & 1;
}