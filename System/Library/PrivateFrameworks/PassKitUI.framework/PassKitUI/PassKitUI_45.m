id sub_1BD4FE520()
{
  v38 = *MEMORY[0x1E69E9840];
  v37.receiver = v0;
  v37.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferencesViewController();
  objc_msgSendSuper2(&v37, sel_viewDidLayoutSubviews);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  [v1 bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;

  v11 = *&v0[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_headerView];
  if (!v11)
  {
    return [*&v0[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_tableView] setFrame_];
  }

  v12 = *&v0[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_divider];
  if (!v12)
  {
    return [*&v0[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_tableView] setFrame_];
  }

  v13 = v12;
  v14 = v11;
  result = [v0 view];
  if (result)
  {
    v16 = result;
    [result bounds];
    v18 = v17;
    v20 = v19;

    [v14 sizeThatFits_];
    v22 = v21;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [v14 setFrame_];
    memset(&slice, 0, sizeof(slice));
    memset(&v35, 0, sizeof(v35));
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    CGRectDivide(v39, &slice, &v35, v22, CGRectMinYEdge);
    origin = v35.origin;
    size = v35.size;
    result = [v0 view];
    if (result)
    {
      v25 = result;
      [result bounds];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v40.origin.x = v27;
      v40.origin.y = v29;
      v40.size.width = v31;
      v40.size.height = v33;
      CGRectGetWidth(v40);
      v34 = PKUIPixelLength();
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [v13 setFrame_];
      memset(&slice, 0, sizeof(slice));
      memset(&v35, 0, sizeof(v35));
      v41.origin = origin;
      v41.size = size;
      CGRectDivide(v41, &slice, &v35, v34, CGRectMinYEdge);

      y = v35.origin.y;
      x = v35.origin.x;
      height = v35.size.height;
      width = v35.size.width;
      return [*&v0[OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_tableView] setFrame_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD4FE83C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NearbyPeerPaymentAppearanceSetting();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v41 - v11;
  v13 = sub_1BE04B404();
  if (v13)
  {
    if (v13 != 1)
    {
      goto LABEL_28;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_settings;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (!*(v16 + 16) || (v17 = sub_1BD1494B0(v14), (v18 & 1) == 0))
  {
LABEL_28:
    v39 = sub_1BE04B3C4();
    [a1 deselectRowAtIndexPath:v39 animated:1];

    return;
  }

  v45 = a1;
  v19 = *(*(v16 + 56) + 8 * v17);
  sub_1BE048C84();
  v20 = sub_1BE04B3F4();
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v20 >= *(v19 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v44 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  sub_1BD50955C(v19 + v44 + *(v5 + 72) * v20, v8, type metadata accessor for NearbyPeerPaymentAppearanceSetting);

  sub_1BD5095C4(v8, v12, type metadata accessor for NearbyPeerPaymentAppearanceSetting);
  a1 = v45;
  if (v12[v4[5] + 16] == 1)
  {
    goto LABEL_27;
  }

  v21 = sub_1BE04B3C4();
  v4 = [a1 cellForRowAtIndexPath_];

  if (!v4)
  {
    goto LABEL_27;
  }

  type metadata accessor for NearbyPeerPaymentAppearancePreferenceCell();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    goto LABEL_26;
  }

  v8 = v22;
  v23 = sub_1BE04B3F4();
  v41 = *(v2 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_identityManager);
  v42 = v23;
  swift_beginAccess();
  LODWORD(v43) = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v2 + v15);
  v24 = v46;
  *(v2 + v15) = 0x8000000000000000;
  v26 = sub_1BD1494B0(v14);
  v27 = *(v24 + 16);
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  LOBYTE(a1) = v25;
  if (*(v24 + 24) >= v29)
  {
    if ((v43 & 1) == 0)
    {
      goto LABEL_35;
    }

    if (v25)
    {
      while (1)
      {
LABEL_19:
        v32 = *(v46 + 56);
        v43 = v26;
        v14 = *(v32 + 8 * v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_32:
          v14 = sub_1BD4FFFF4(v14);
        }

        a1 = v45;
        if ((v42 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v42 < *(v14 + 16))
        {
          sub_1BD4FCFBC(v41);
          v33 = v46;
          *(*(v46 + 56) + 8 * v43) = v14;
          *(v2 + v15) = v33;
          swift_endAccess();
          v34 = OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabled;
          swift_beginAccess();
          v35 = v8[v34];
          v8[v34] = v35 ^ 1;
          v36 = *&v8[OBJC_IVAR____TtC9PassKitUI41NearbyPeerPaymentAppearancePreferenceCell_enabledImageView];
          if (v35)
          {
            v37 = sub_1BD89BB38();
          }

          else
          {
            v37 = sub_1BD89B974();
          }

          v38 = v37;
          [v36 setImage_];

          v4 = v38;
LABEL_26:

LABEL_27:
          sub_1BD509138(v12);
          goto LABEL_28;
        }

        __break(1u);
LABEL_35:
        v40 = v26;
        sub_1BD50708C();
        v26 = v40;
        if ((a1 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    goto LABEL_36;
  }

  sub_1BD5021DC(v29, v43);
  v30 = sub_1BD1494B0(v14);
  if ((a1 & 1) == (v31 & 1))
  {
    v26 = v30;
    if (a1)
    {
      goto LABEL_19;
    }

LABEL_36:
    __break(1u);
  }

  sub_1BE053C14();
  __break(1u);
}

double sub_1BD4FED60(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_context) == 2 || a2 != 0)
  {
    return 20.0;
  }

  v4 = 0.0;
  if (_UISolariumFeatureFlagEnabled())
  {
    return 20.0;
  }

  return v4;
}

id sub_1BD4FEDF0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_context) != 2 && a2 == 0;
  if (v3 && (_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  }

  else
  {
    return 0;
  }
}

double sub_1BD4FEEF0(void *a1, uint64_t a2)
{
  result = 0.0;
  if (a2 == 1)
  {
    v4 = *(v2 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_footer);
    [a1 bounds];
    [v4 sizeThatFits_];
    return v5;
  }

  return result;
}

void *sub_1BD4FEFE4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_footer);
  v4 = v3;
  return v3;
}

void sub_1BD4FF074(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_divider);
  if (v2)
  {
    v6 = v2;
    [a1 contentOffset];
    v4 = 0.0;
    if (v5 > 0.0)
    {
      v4 = 1.0;
    }

    [v6 setAlpha_];
  }
}

id NearbyPeerPaymentAppearancePreferencesViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

char *sub_1BD4FF344()
{
  v1 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_titleLabel;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeButton;
  *&v0[v2] = [objc_opt_self() buttonWithType_];
  v3 = &v0[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeAction];
  v4 = type metadata accessor for NearbyPeerPaymentAppearancePreferencesHeaderView();
  *v3 = 0;
  *(v3 + 1) = 0;
  v18.receiver = v0;
  v18.super_class = v4;
  v5 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_titleLabel;
  v7 = *&v5[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_titleLabel];
  v8 = v5;
  v9 = v7;
  v10 = sub_1BE052404();

  [v9 setText_];

  v11 = *MEMORY[0x1E69DDDC0];
  v12 = *MEMORY[0x1E69DDC20];
  v13 = *MEMORY[0x1E69DB970];
  v14 = *&v5[v6];
  v15 = PKFontForDefaultDesign(v11, v12, v13);
  [v14 setFont_];

  [*&v5[v6] setAccessibilityIdentifier_];
  [v8 addSubview_];
  v16 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeButton;
  [*&v8[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeButton] addTarget:v8 action:sel_closeTapped forControlEvents:64];
  [*&v8[v16] setAccessibilityIdentifier_];
  [v8 addSubview_];
  [v8 setAccessibilityIdentifier_];

  return v8;
}

id sub_1BD4FF63C()
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferencesHeaderView();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  [v0 bounds];
  memset(&slice, 0, sizeof(slice));
  memset(&v8, 0, sizeof(v8));
  CGRectDivide(v12, &slice, &v8, 20.0, CGRectMinXEdge);
  v13 = v8;
  memset(&slice, 0, sizeof(slice));
  memset(&v8, 0, sizeof(v8));
  CGRectDivide(v13, &slice, &v8, 20.0, CGRectMaxXEdge);
  origin = v8.origin;
  size = v8.size;
  v3 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_closeButton];
  [v3 sizeThatFits_];
  v5 = v4;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [v3 setFrame_];
  memset(&slice, 0, sizeof(slice));
  memset(&v8, 0, sizeof(v8));
  v14.origin = origin;
  v14.size = size;
  CGRectDivide(v14, &slice, &v8, v5 + 20.0, CGRectMaxXEdge);
  v6 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesHeaderView_titleLabel];
  [v6 sizeThatFits_];
  PKSizeAlignedInRect();
  return [v6 setFrame_];
}

char *sub_1BD4FF9E0()
{
  v1 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesFooterView_label;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v18.receiver = v0;
  v18.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferencesFooterView();
  v2 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesFooterView_label;
  v4 = *&v2[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesFooterView_label];
  v5 = v2;
  v6 = v4;
  v7 = sub_1BE052404();

  [v6 setText_];

  v8 = *&v2[v3];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 secondaryLabelColor];
  [v10 setTextColor_];

  v12 = *&v2[v3];
  v13 = objc_opt_self();
  v14 = *MEMORY[0x1E69DDD28];
  v15 = v12;
  v16 = [v13 preferredFontForTextStyle_];
  [v15 setFont_];

  [*&v2[v3] setNumberOfLines_];
  [*&v2[v3] setAccessibilityIdentifier_];
  [v5 addSubview_];

  return v5;
}

id sub_1BD4FFC48()
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for NearbyPeerPaymentAppearancePreferencesFooterView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  [v0 bounds];
  memset(&slice, 0, sizeof(slice));
  memset(&v3, 0, sizeof(v3));
  CGRectDivide(v7, &slice, &v3, 20.0, CGRectMinXEdge);
  v8 = v3;
  memset(&slice, 0, sizeof(slice));
  memset(&v3, 0, sizeof(v3));
  CGRectDivide(v8, &slice, &v3, 20.0, CGRectMaxXEdge);
  v9 = v3;
  memset(&slice, 0, sizeof(slice));
  memset(&v3, 0, sizeof(v3));
  CGRectDivide(v9, &slice, &v3, 8.0, CGRectMinYEdge);
  v10 = v3;
  memset(&slice, 0, sizeof(slice));
  memset(&v3, 0, sizeof(v3));
  CGRectDivide(v10, &slice, &v3, 8.0, CGRectMaxYEdge);
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUIP33_A2EF9233F7BE1A078A97F131412991B548NearbyPeerPaymentAppearancePreferencesFooterView_label];
  [v1 sizeThatFits_];
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  return [v1 setFrame_];
}

id sub_1BD4FFEBC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD50001C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1BE053704();
  }

  return sub_1BE053884();
}

uint64_t sub_1BD5000BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E80);
  v33 = a2;
  result = sub_1BE0539F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1BD1B6140(v24, v34);
      }

      else
      {
        sub_1BD038CD0(v24, v34);
        sub_1BE048C84();
      }

      sub_1BE053D04();
      sub_1BE052524();
      result = sub_1BE053D64();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1BD1B6140(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1BD500374(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C018);
  v37 = a2;
  result = sub_1BE0539F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 16 * v20);
      v24 = v23[1];
      v39 = *v23;
      if ((v37 & 1) == 0)
      {
        v25 = v22;
        sub_1BE048C84();
      }

      sub_1BE052434();
      sub_1BE053D04();
      sub_1BE052524();
      v26 = sub_1BE053D64();

      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = (*(v7 + 56) + 16 * v15);
      v12 = v38;
      *v16 = v39;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BD500648(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E20);
  v31 = a2;
  result = sub_1BE0539F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v32 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v31 & 1) == 0)
      {
        sub_1BE048C84();
        v22 = v20;
      }

      sub_1BE053D04();
      sub_1BE053D24();
      if (v21)
      {
        sub_1BE052524();
      }

      result = sub_1BE053D64();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v32;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_1BD50090C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10);
  result = sub_1BE0539F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1BD1B6140((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1BD149C8C(v23, &v36);
        sub_1BD038CD0(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1BE0537A4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1BD1B6140(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1BD500BC4(uint64_t a1, int a2)
{
  v3 = v2;
  v54 = sub_1BE0493F4();
  v5 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v6);
  v53 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE049B04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v55 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48EE0);
  v49 = a2;
  result = sub_1BE0539F4();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = v9;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v45 = (v16 + 16);
    v46 = v16;
    v43 = v2;
    v44 = v5 + 16;
    v47 = v12;
    v48 = v5;
    v50 = (v5 + 32);
    v51 = (v16 + 32);
    v22 = result + 64;
    v23 = v16;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v15 << 6);
      v29 = *(v12 + 48);
      v52 = *(v23 + 72);
      v30 = v29 + v52 * v28;
      if (v49)
      {
        (*v51)(v55, v30, v8);
        v31 = *(v12 + 56);
        v32 = *(v48 + 72);
        (*(v48 + 32))(v53, v31 + v32 * v28, v54);
      }

      else
      {
        (*v45)(v55, v30, v8);
        v33 = *(v12 + 56);
        v32 = *(v48 + 72);
        (*(v48 + 16))(v53, v33 + v32 * v28, v54);
      }

      sub_1BD509710(&qword_1EBD3A338, MEMORY[0x1E6967AD0]);
      result = sub_1BE052284();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v22 + 8 * v36);
          if (v40 != -1)
          {
            v24 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v51)((*(v14 + 48) + v52 * v24), v55, v8);
      result = (*v50)(*(v14 + 56) + v32 * v24, v53, v54);
      ++*(v14 + 16);
      v23 = v46;
      v12 = v47;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v21)
      {
        break;
      }

      v27 = v17[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v17, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
  return result;
}

uint64_t sub_1BD50106C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1BE0492B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48EF0);
  v40 = a2;
  result = sub_1BE0539F4();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
        sub_1BE048C84();
      }

      sub_1BD509710(&qword_1EBD3A378, MEMORY[0x1E6967728]);
      result = sub_1BE052284();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1BD501470(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFA8);
  v37 = a2;
  result = sub_1BE0539F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
        sub_1BE048C84();
        sub_1BE048C84();
      }

      sub_1BE053D04();
      sub_1BE052524();
      result = sub_1BE053D64();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BD501744(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48E58);
  result = sub_1BE0539F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        sub_1BE048C84();
      }

      result = sub_1BE053CF4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BD5019F0(uint64_t a1, int a2)
{
  v3 = v2;
  v56 = sub_1BE04C164();
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v6);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v55 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v47 - v13;
  v15 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E40);
  v54 = a2;
  result = sub_1BE0539F4();
  v17 = result;
  if (*(v15 + 16))
  {
    v47 = v2;
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v52 = (v5 + 48);
    v48 = (v5 + 8);
    v49 = (v5 + 32);
    v24 = result + 64;
    v58 = v14;
    v50 = v15;
    while (1)
    {
      if (!v22)
      {
        v27 = v18;
        while (1)
        {
          v18 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            __break(1u);
            goto LABEL_44;
          }

          if (v18 >= v23)
          {
            break;
          }

          v28 = v19[v18];
          ++v27;
          if (v28)
          {
            v26 = __clz(__rbit64(v28));
            v22 = (v28 - 1) & v28;
            goto LABEL_15;
          }
        }

        if ((v54 & 1) == 0)
        {

          v3 = v47;
          goto LABEL_42;
        }

        v46 = 1 << *(v15 + 32);
        v3 = v47;
        if (v46 >= 64)
        {
          bzero(v19, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v19 = -1 << v46;
        }

        *(v15 + 16) = 0;
        break;
      }

      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v29 = v26 | (v18 << 6);
      v30 = *(v53 + 72);
      v31 = *(v15 + 48) + v30 * v29;
      v32 = v58;
      if (v54)
      {
        sub_1BD5095C4(v31, v58, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
        v57 = *(*(v15 + 56) + 8 * v29);
      }

      else
      {
        sub_1BD50955C(v31, v58, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
        v57 = *(*(v15 + 56) + 8 * v29);
        sub_1BE048C84();
      }

      sub_1BE053D04();
      v33 = v55;
      sub_1BD50955C(v32, v55, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
      v34 = (*v52)(v33, 3, v56);
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          v38 = 2;
        }

        else
        {
          v38 = 3;
        }
      }

      else
      {
        if (!v34)
        {
          v35 = v51;
          v36 = v56;
          (*v49)(v51, v55, v56);
          MEMORY[0x1BFB40DA0](1);
          sub_1BD509710(&qword_1EBD3A348, MEMORY[0x1E69B8260]);
          sub_1BE052294();
          v37 = v36;
          v15 = v50;
          (*v48)(v35, v37);
          goto LABEL_26;
        }

        v38 = 0;
      }

      MEMORY[0x1BFB40DA0](v38);
LABEL_26:
      result = sub_1BE053D64();
      v39 = -1 << *(v17 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v24 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v24 + 8 * v41);
          if (v45 != -1)
          {
            v25 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v40) & ~*(v24 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      result = sub_1BD5095C4(v58, *(v17 + 48) + v30 * v25, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
      *(*(v17 + 56) + 8 * v25) = v57;
      ++*(v17 + 16);
    }
  }

LABEL_42:
  *v3 = v17;
  return result;
}

uint64_t sub_1BD501F34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFC0);
  v34 = a2;
  result = sub_1BE0539F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        sub_1BE048C84();
        swift_unknownObjectRetain();
      }

      sub_1BE053D04();
      sub_1BE052524();
      result = sub_1BE053D64();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BD5021DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFB8);
  v30 = a2;
  result = sub_1BE0539F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        sub_1BE048C84();
      }

      sub_1BE053D04();
      MEMORY[0x1BFB40DA0](v20);
      result = sub_1BE053D64();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BD502480(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF90);
  v40 = a2;
  result = sub_1BE0539F4();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
      result = sub_1BE052284();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1BD502884(uint64_t a1, int a2)
{
  v3 = v2;
  v54 = sub_1BE0495A4();
  v5 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v6);
  v53 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04AFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v55 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFA0);
  v49 = a2;
  result = sub_1BE0539F4();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = v9;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v45 = (v16 + 16);
    v46 = v16;
    v43 = v2;
    v44 = v5 + 16;
    v47 = v12;
    v48 = v5;
    v50 = (v5 + 32);
    v51 = (v16 + 32);
    v22 = result + 64;
    v23 = v16;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v15 << 6);
      v29 = *(v12 + 48);
      v52 = *(v23 + 72);
      v30 = v29 + v52 * v28;
      if (v49)
      {
        (*v51)(v55, v30, v8);
        v31 = *(v12 + 56);
        v32 = *(v48 + 72);
        (*(v48 + 32))(v53, v31 + v32 * v28, v54);
      }

      else
      {
        (*v45)(v55, v30, v8);
        v33 = *(v12 + 56);
        v32 = *(v48 + 72);
        (*(v48 + 16))(v53, v33 + v32 * v28, v54);
      }

      sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
      result = sub_1BE052284();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v22 + 8 * v36);
          if (v40 != -1)
          {
            v24 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v51)((*(v14 + 48) + v52 * v24), v55, v8);
      result = (*v50)(*(v14 + 56) + v32 * v24, v53, v54);
      ++*(v14 + 16);
      v23 = v46;
      v12 = v47;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v21)
      {
        break;
      }

      v27 = v17[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v17, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
  return result;
}

uint64_t sub_1BD502D2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E70);
  v33 = a2;
  result = sub_1BE0539F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
        sub_1BE048C84();
        sub_1BD041A38(v34, *(&v34 + 1));
      }

      sub_1BE053D04();
      sub_1BE052524();
      result = sub_1BE053D64();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BD503038(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_1BE0539F4();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
        sub_1BE048C84();
        sub_1BE048C84();
      }

      sub_1BE053D04();
      sub_1BE052524();
      result = sub_1BE053D64();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1BD50333C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DF0);
  v34 = a2;
  result = sub_1BE0539F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        sub_1BE048C84();
        sub_1BE048964();
      }

      sub_1BE053D04();
      sub_1BE052524();
      result = sub_1BE053D64();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BD5035E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E90);
  v37 = a2;
  result = sub_1BE0539F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v41 = *v22;
      v24 = *(v5 + 56) + 48 * v21;
      v25 = *(v24 + 8);
      v39 = *v24;
      v40 = *(v24 + 16);
      v26 = *(v24 + 32);
      v38 = *(v24 + 40);
      if ((v37 & 1) == 0)
      {
        v27 = v26;
        sub_1BE048C84();
        sub_1BE048C84();
      }

      sub_1BE053D04();
      sub_1BE052524();
      result = sub_1BE053D64();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v39;
      *(v17 + 8) = v25;
      *(v17 + 16) = v40;
      *(v17 + 32) = v26;
      *(v17 + 40) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BD5038EC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_1BE0539F4();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        sub_1BE048964();
      }

      result = sub_1BE053CF4();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1BD503B54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DD0);
  result = sub_1BE0539F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1BE053CF4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1BD503E08(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v49 = a6;
  v8 = v6;
  v10 = a3(0);
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v48 = &v43 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v47 = a2;
  result = sub_1BE0539F4();
  v15 = result;
  if (*(v13 + 16))
  {
    v44 = v6;
    v45 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v46 + 72);
      v34 = v29 + v33 * v28;
      if (v47)
      {
        sub_1BD5095C4(v34, v48, v49);
      }

      else
      {
        sub_1BD50955C(v34, v48, v49);
        sub_1BE048C84();
      }

      sub_1BE053D04();
      sub_1BE052524();
      result = sub_1BE053D64();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      result = sub_1BD5095C4(v48, *(v15 + 56) + v33 * v23, v49);
      ++*(v15 + 16);
      v13 = v45;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v8 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v8 = v15;
  return result;
}

uint64_t sub_1BD50415C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_1BE0539F4();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {
        sub_1BE048C84();
        v26 = v25;
      }

      sub_1BE053D04();
      sub_1BE052524();
      result = sub_1BE053D64();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1BD504420(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = v4;
  v49 = a3(0);
  v8 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v9);
  v48 = &v41 - v10;
  v11 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v46 = a2;
  result = sub_1BE0539F4();
  v13 = result;
  if (*(v11 + 16))
  {
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v42 = v4;
    v43 = (v8 + 16);
    v44 = v11;
    v45 = v8;
    v47 = (v8 + 32);
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v11 + 56);
      v28 = (*(v11 + 48) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(v45 + 72);
      v32 = v27 + v31 * v26;
      if (v46)
      {
        (*v47)(v48, v32, v49);
      }

      else
      {
        (*v43)(v48, v32, v49);
        sub_1BE048C84();
      }

      sub_1BE053D04();
      sub_1BE052524();
      result = sub_1BE053D64();
      v33 = -1 << *(v13 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v21 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v30;
      v22[1] = v29;
      result = (*v47)(*(v13 + 56) + v31 * v21, v48, v49);
      ++*(v13 + 16);
      v11 = v44;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v6 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v11 + 32);
    v6 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v6 = v13;
  return result;
}

uint64_t sub_1BD5047A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE70);
  result = sub_1BE0539F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(v5 + 56) + 40 * v19;
      if (a2)
      {
        sub_1BD1B6150(v21, v31);
      }

      else
      {
        sub_1BD509500(v21, v31);
      }

      result = sub_1BE053CF4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1BD1B6150(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1BD504A24(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata();
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04AFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DE0);
  v45 = a2;
  result = sub_1BE0539F4();
  v14 = result;
  if (*(v12 + 16))
  {
    v40 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v9 + 16);
    v42 = v9;
    v46 = (v9 + 32);
    v21 = result + 64;
    v43 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v47 = *(v9 + 72);
      v28 = v27 + v47 * v26;
      if (v45)
      {
        (*v46)(v48, v28, v8);
        v29 = *(v12 + 56);
        v30 = *(v44 + 72);
        sub_1BD5095C4(v29 + v30 * v26, v49, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
      }

      else
      {
        (*v41)(v48, v28, v8);
        v31 = *(v12 + 56);
        v30 = *(v44 + 72);
        sub_1BD50955C(v31 + v30 * v26, v49, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
      }

      sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
      result = sub_1BE052284();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v46)((*(v14 + 48) + v47 * v22), v48, v8);
      result = sub_1BD5095C4(v49, *(v14 + 56) + v30 * v22, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
      ++*(v14 + 16);
      v9 = v42;
      v12 = v43;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v12 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
  return result;
}

uint64_t sub_1BD504EC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF60);
  v35 = a2;
  result = sub_1BE0539F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1BD1B6140(v22, v36);
      }

      else
      {
        sub_1BD038CD0(v22, v36);
        v23 = v21;
      }

      sub_1BE052434();
      sub_1BE053D04();
      sub_1BE052524();
      v24 = sub_1BE053D64();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_1BD1B6140(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1BD505194(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BE053684() + 1) & ~v5;
    do
    {
      sub_1BE053D04();
      sub_1BE048C84();
      sub_1BE052524();
      v10 = sub_1BE053D64();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1BD505344(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BE053684() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1BE052434();
      sub_1BE053D04();
      v10 = v9;
      sub_1BE052524();
      v11 = sub_1BE053D64();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_1BD50550C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BE053684() + 1) & ~v5;
    do
    {
      sub_1BE053D04();
      sub_1BE048C84();
      sub_1BE052524();
      v9 = sub_1BE053D64();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1BD5056BC(int64_t a1, uint64_t a2)
{
  v39 = sub_1BE04AFE4();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v5);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v40 = v6;
    v12 = sub_1BE053684();
    v13 = v39;
    v6 = v40;
    v14 = v11;
    v37 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v35 = a2 + 64;
    v36 = v16;
    v17 = *(v15 + 56);
    v34 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v38;
      v21 = v14;
      v22 = v15;
      v36(v38, *(v6 + 48) + v17 * v10, v13);
      sub_1BD509710(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
      v23 = sub_1BE052284();
      (*v34)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v37)
      {
        if (v24 >= v37 && a1 >= v24)
        {
LABEL_15:
          v6 = v40;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v40 + 48) + v18 * a1 >= (*(v40 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v40;
            v17 = v18;
            v14 = v21;
            v8 = v35;
          }

          else
          {
            v8 = v35;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v40;
              v17 = v18;
              v14 = v21;
            }
          }

          v27 = *(v6 + 56);
          v28 = (v27 + 8 * a1);
          v29 = (v27 + 8 * v10);
          if (a1 != v10 || v28 >= v29 + 1)
          {
            *v28 = *v29;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v37 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v35;
      v17 = v18;
      v6 = v40;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v6 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v32;
    ++*(v6 + 36);
  }
}

uint64_t sub_1BD505A0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BE053684() + 1) & ~v5;
    do
    {
      sub_1BE053D04();
      sub_1BE048C84();
      sub_1BE052524();
      v9 = sub_1BE053D64();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BD505BBC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BE053684() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1BE053CF4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BD505D44(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1BE053684() + 1) & ~v6;
    while (1)
    {
      sub_1BE053D04();
      sub_1BE048C84();
      sub_1BE052524();
      v11 = sub_1BE053D64();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BD505F38(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BE053684() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1BE053CF4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 40 * v3;
      if (v3 < v6 || result >= v15 + 40 * v6 + 40)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1BD5060D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E80);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1BD038CD0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1BD1B6140(v25, (*(v4 + 56) + v22));
        result = sub_1BE048C84();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1BD506274()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C018);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
        result = sub_1BE048C84();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1BD5063E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E20);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_1BE048C84();
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BD50654C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE10);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1BD149C8C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1BD038CD0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1BD1B6140(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1BD50672C()
{
  v1 = v0;
  v34 = sub_1BE0492B4();
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48EF0);
  v4 = *v0;
  v5 = sub_1BE0539E4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;
        result = sub_1BE048C84();
        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1BD5069C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFA8);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
        sub_1BE048C84();
        result = sub_1BE048C84();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BD506B4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48E58);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_1BE048C84();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BD506CD0()
{
  v1 = v0;
  v2 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E40);
  v5 = *v0;
  v6 = sub_1BE0539E4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v27 = v5 + 64;
    v10 = 0;
    v11 = *(v5 + 16);
    v30 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_1BD50955C(*(v5 + 48) + v22, v28, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = v30;
        sub_1BD5095C4(v21, *(v30 + 48) + v22, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
        *(*(v24 + 56) + 8 * v20) = v23;
        result = sub_1BE048C84();
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v26;
        v7 = v30;
        goto LABEL_18;
      }

      v19 = *(v27 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1BD506F1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFC0);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_1BE048C84();
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BD50708C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BFB8);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_1BE048C84();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1BD5071FC()
{
  v1 = v0;
  v32 = sub_1BE04AFE4();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF90);
  v4 = *v0;
  v5 = sub_1BE0539E4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_1BD5074D4(uint64_t (*a1)(void), uint64_t (*a2)(void, double), uint64_t *a3)
{
  v6 = v3;
  v49 = a1(0);
  v52 = *(v49 - 8);
  v8 = MEMORY[0x1EEE9AC00](v49, v7);
  v48 = &v38 - v9;
  v47 = a2(0, v8);
  v51 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v10);
  v46 = &v38 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v12 = *v3;
  v13 = sub_1BE0539E4();
  v14 = v13;
  if (*(v12 + 16))
  {
    result = (v13 + 64);
    v16 = (v12 + 64);
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    v38 = v6;
    v39 = v12 + 64;
    if (v14 != v12 || result >= &v16[8 * v17])
    {
      result = memmove(result, v16, 8 * v17);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v50 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v12 + 64);
    v23 = (v20 + 63) >> 6;
    v43 = v51 + 16;
    v44 = v23;
    v41 = v51 + 32;
    v42 = v52 + 16;
    v40 = v52 + 32;
    v45 = v12;
    v25 = v46;
    v24 = v47;
    if (v22)
    {
      do
      {
        v26 = __clz(__rbit64(v22));
        v53 = (v22 - 1) & v22;
LABEL_14:
        v29 = v26 | (v18 << 6);
        v30 = v51;
        v31 = *(v51 + 72) * v29;
        (*(v51 + 16))(v25, *(v12 + 48) + v31, v24);
        v32 = v52;
        v33 = *(v52 + 72) * v29;
        v34 = v48;
        v35 = v49;
        (*(v52 + 16))(v48, *(v12 + 56) + v33, v49);
        v36 = v50;
        (*(v30 + 32))(*(v50 + 48) + v31, v25, v24);
        v37 = *(v36 + 56);
        v12 = v45;
        result = (*(v32 + 32))(v37 + v33, v34, v35);
        v23 = v44;
        v22 = v53;
      }

      while (v53);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v6 = v38;
        v14 = v50;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v53 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v14;
  }

  return result;
}

void *sub_1BD507830()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E70);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;
        sub_1BE048C84();
        result = sub_1BD041A38(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BD507A04(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1BE0539E4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
        sub_1BE048C84();
        result = sub_1BE048C84();
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1BD507BC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DF0);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_1BE048C84();
        result = sub_1BE048964();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BD507D38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48E90);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 32);
        v26 = *(v22 + 40);
        v27 = (*(v4 + 48) + v18);
        v28 = *(v22 + 16);
        *v27 = v20;
        v27[1] = v21;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        v30 = v25;
        sub_1BE048C84();
        result = sub_1BE048C84();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BD507EF4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1BE0539E4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
        result = sub_1BE048964();
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1BD508040()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DD0);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BD5081DC(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v41 = a4;
  v6 = v4;
  v7 = a1(0);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v39 = &v38 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v10 = *v4;
  v11 = sub_1BE0539E4();
  v12 = v11;
  if (*(v10 + 16))
  {
    v38 = v6;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v42 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = v10;
        v31 = *v29;
        v32 = v29[1];
        v33 = v39;
        v34 = *(v40 + 72) * v26;
        v35 = v41;
        sub_1BD50955C(v28 + v34, v39, v41);
        v36 = v42;
        v37 = (*(v42 + 48) + v27);
        *v37 = v31;
        v37[1] = v32;
        v10 = v30;
        sub_1BD5095C4(v33, *(v36 + 56) + v34, v35);
        result = sub_1BE048C84();
        v21 = v43;
      }

      while (v43);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v38;
        v12 = v42;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v43 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v12;
  }

  return result;
}

id sub_1BD508444(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1BE0539E4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
        sub_1BE048C84();
        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1BD5085C8(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v42 = a1(0);
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v5);
  v41 = &v36 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *v2;
  v8 = sub_1BE0539E4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v4;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 64 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v14 = 0;
    v15 = *(v7 + 16);
    v43 = v9;
    *(v9 + 16) = v15;
    v16 = 1 << *(v7 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v7 + 64);
    v19 = (v16 + 63) >> 6;
    v38 = v44 + 32;
    v39 = v44 + 16;
    v40 = v7;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v45 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = 16 * v23;
        v25 = *(v7 + 56);
        v26 = (*(v7 + 48) + 16 * v23);
        v27 = *v26;
        v28 = v26[1];
        v29 = v44;
        v30 = *(v44 + 72) * v23;
        v31 = v41;
        v32 = v42;
        (*(v44 + 16))(v41, v25 + v30, v42);
        v33 = v43;
        v34 = (*(v43 + 48) + v24);
        *v34 = v27;
        v34[1] = v28;
        v35 = *(v33 + 56) + v30;
        v7 = v40;
        (*(v29 + 32))(v35, v31, v32);
        result = sub_1BE048C84();
        v18 = v45;
      }

      while (v45);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v4 = v37;
        v9 = v43;
        goto LABEL_21;
      }

      v22 = *(v11 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v45 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v9;
  }

  return result;
}

void *sub_1BD508850()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE70);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1BD509500(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1BD1B6150(v19, *(v4 + 56) + 40 * v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1BD5089D0()
{
  v1 = v0;
  v2 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata();
  v40 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BE04AFE4();
  v42 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48DE0);
  v7 = *v0;
  v8 = sub_1BE0539E4();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_1BD50955C(v28 + v30, v39, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = sub_1BD5095C4(v31, *(v20 + 56) + v30, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

id sub_1BD508CF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BF60);
  v2 = *v0;
  v3 = sub_1BE0539E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1BD038CD0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1BD1B6140(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BD508E74(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BE052404();
  v6 = sub_1BE04B3C4();
  v7 = [a1 dequeueReusableCellWithIdentifier:v5 forIndexPath:v6];

  type metadata accessor for NearbyPeerPaymentAppearancePreferenceCell();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    sub_1BD89B2C8(a3);
  }

  else
  {
  }

  return v8;
}

uint64_t sub_1BD508F34(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  if (!a3)
  {
    if (a6)
    {
      return 0;
    }

    if (a2 >> 60 == 15)
    {
      if (a5 >> 60 == 15)
      {
        sub_1BD5096E8(a1, a2, 0);
        sub_1BD5096E8(a4, a5, 0);
        sub_1BD030220(a1, a2);
        return 1;
      }
    }

    else if (a5 >> 60 != 15)
    {
      sub_1BD5096E8(a1, a2, 0);
      sub_1BD5096E8(a4, a5, 0);
      v15 = sub_1BD3D8CB4(a1, a2, a4, a5);
      sub_1BD030220(a4, a5);
      sub_1BD030220(a1, a2);
      return (v15 & 1) != 0;
    }

    sub_1BD5096E8(a1, a2, 0);
    sub_1BD5096E8(a4, a5, 0);
    sub_1BD030220(a1, a2);
    sub_1BD030220(a4, a5);
    return 0;
  }

  if (a3 != 1)
  {
    if (a6 == 2)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_10:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_1BE053B84();
}

uint64_t sub_1BD509138(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentAppearanceSetting();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD509204()
{
  result = sub_1BE04AFE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD509454()
{
  result = qword_1EBD48D98;
  if (!qword_1EBD48D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48D98);
  }

  return result;
}

unint64_t sub_1BD5094AC()
{
  result = qword_1EBD48DA0;
  if (!qword_1EBD48DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48DA0);
  }

  return result;
}

uint64_t sub_1BD50955C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD5095C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD50962C()
{
  *(v0 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_headerView) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_divider) = 0;
  v1 = OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController_tableView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC9PassKitUI52NearbyPeerPaymentAppearancePreferencesViewController____lazy_storage___datasource) = 0;
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD5096E8(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
    return sub_1BE048C84();
  }

  if (!a3)
  {
    return sub_1BD030394(result, a2);
  }

  return result;
}

uint64_t sub_1BD509710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD509790@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a4;
  v59 = a3;
  v52 = a1;
  v61 = a5;
  v6 = sub_1BE04E2E4();
  v51 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48EF8);
  MEMORY[0x1EEE9AC00](v53, v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F00);
  v58 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v57 = &v45 - v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F08);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v16);
  v18 = &v45 - v17;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F10);
  v19 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v20);
  v50 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v49 = &v45 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v63 >> 62)
  {
    v25 = sub_1BE053704();
  }

  else
  {
    v25 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v26 = 1;
  if (v25 > 0 || v62)
  {
    *v12 = sub_1BE04F7B4();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v27 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F18) + 44)];
    v47 = v13;
    v48 = v18;
    v28 = v19;
    v29 = v52;
    v30 = v59;
    v31 = v55;
    v32 = sub_1BD50A884(v52, a2, v55, v27);
    v46 = v6;
    v33 = v51;
    v45 = &v45;
    MEMORY[0x1EEE9AC00](v32, v34);
    *(&v45 - 48) = v25 > 0;
    *(&v45 - 5) = v29;
    *(&v45 - 4) = a2;
    v19 = v28;
    *(&v45 - 3) = v30;
    *(&v45 - 2) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F20);
    sub_1BD0DE4F4(&qword_1EBD48F28, &qword_1EBD48EF8);
    sub_1BD50BDD8();
    v35 = v57;
    sub_1BE051A24();
    v36 = v46;
    if (v30)
    {
      v37 = 0x4030000000000000;
    }

    else
    {
      v37 = 0;
    }

    v38 = MEMORY[0x1E697DAD8];
    if (v30)
    {
      v38 = MEMORY[0x1E697DAD0];
    }

    (*(v33 + 104))(v9, *v38, v46);
    sub_1BD50C2A0();
    v40 = v47;
    v39 = v48;
    sub_1BE050B84();
    (*(v33 + 8))(v9, v36);
    (*(v58 + 8))(v35, v40);
    v41 = v50;
    (*(v54 + 32))(v50, v39, v56);
    v42 = v41 + *(v60 + 36);
    *v42 = 0;
    *(v42 + 8) = v37;
    *(v42 + 16) = 0;
    *(v42 + 24) = v37;
    *(v42 + 32) = 0;
    v43 = v49;
    sub_1BD0828F4(v41, v49);
    sub_1BD0828F4(v43, v61);
    v26 = 0;
  }

  return (*(v19 + 56))(v61, v26, 1, v60);
}

uint64_t sub_1BD509D70@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a2;
  v40 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48FC8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F50);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v37 - v17;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = a6;
    sub_1BE04D8B4();

    v19 = swift_allocObject();
    v20 = v40;
    v19[2] = v39;
    v19[3] = a3;
    v19[4] = v20;
    v19[5] = a5;
    v21 = a3;
    v22 = a5;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FBC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F60);
    sub_1BD0DE4F4(&qword_1EBD3FBC8, &qword_1EBD3FBC0);
    sub_1BD50BF6C();
    sub_1BD50CC3C(&unk_1EBD3FBD0, type metadata accessor for TransactionPresentation);
    sub_1BE0519D4();
    (*(v15 + 16))(v13, v18, v14);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F98);
    sub_1BD50BEE8();
    sub_1BD50C130();
    v23 = v38;
    sub_1BE04F9A4();
    (*(v15 + 8))(v18, v14);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F40);
    return (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  }

  else
  {
    sub_1BD50C364();
    if (v26)
    {
      v27 = sub_1BE04F504();
      v42 = 1;
      sub_1BD50A700(v45);

      *(v41 + 7) = v45[0];
      *(&v41[1] + 7) = v45[1];
      *(&v41[2] + 7) = v46[0];
      v41[3] = *(v46 + 9);
      v28 = v42;
      sub_1BE051CD4();
      sub_1BE04EE54();
      *&v43[55] = v46[5];
      *&v43[71] = v46[6];
      *&v43[87] = v46[7];
      *&v43[103] = v46[8];
      *&v43[7] = v46[2];
      *&v43[23] = v46[3];
      *&v43[39] = v46[4];
      v29 = v41[1];
      *(v13 + 17) = v41[0];
      *(v13 + 33) = v29;
      v30 = v41[3];
      *(v13 + 49) = v41[2];
      *(v13 + 65) = v30;
      v31 = *&v43[80];
      *(v13 + 145) = *&v43[64];
      *(v13 + 161) = v31;
      *(v13 + 177) = *&v43[96];
      v32 = *&v43[16];
      *(v13 + 81) = *v43;
      *(v13 + 97) = v32;
      v33 = *&v43[48];
      *(v13 + 113) = *&v43[32];
      v44 = 0;
      *v13 = v27;
      *(v13 + 1) = 0;
      v13[16] = v28;
      *(v13 + 24) = *&v43[111];
      *(v13 + 129) = v33;
      *(v13 + 216) = 0u;
      *(v13 + 200) = 0u;
      v13[232] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F98);
      sub_1BD50BEE8();
      sub_1BD50C130();
      sub_1BE04F9A4();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F40);
      return (*(*(v34 - 8) + 56))(a6, 0, 1, v34);
    }

    else
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48F40);
      v36 = *(*(v35 - 8) + 56);

      return v36(a6, 1, 1, v35);
    }
  }
}

id sub_1BD50A32C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = v10;
  *a6 = v10;
  *(a6 + 8) = sub_1BD50C6CC;
  *(a6 + 16) = v11;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 56) = 0;
  swift_retain_n();
  v12 = a3;

  return a5;
}

uint64_t sub_1BD50A3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v24[0] = sub_1BE04F434();
  v7 = *(v24[0] - 8);
  MEMORY[0x1EEE9AC00](v24[0], v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
  v12 = *(a1 + OBJC_IVAR____TtC9PassKitUI23TransactionPresentation_transaction);
  v13 = *(a2 + OBJC_IVAR____TtC9PassKitUI15TransactionList_transactionFetcher);
  v14 = v12;
  v15 = [v14 identifier];
  v16 = [v13 cashbackGroupForTransactionWithIdentifier:v15 cashbackTransactionSourceCollection:0];

  v17 = [a3 viewControllerForTransaction:v14 sourceCollection:v11 familyCollection:0 account:*(a2 + OBJC_IVAR____TtC9PassKitUI15TransactionList_account) accountUserCollection:0 bankConnectInstitution:0 physicalCards:0 group:v16 navigationController:0];
  v18 = sub_1BE04F7B4();
  v19 = v17;
  sub_1BE051CD4();
  sub_1BE04EE54();
  LOBYTE(v34[0]) = 1;
  v20 = sub_1BE04EC54();
  v21 = sub_1BE0501D4();
  v25 = v18;
  LOBYTE(v26) = 1;
  *(&v26 + 1) = v19;
  *&v33[1] = v20;
  BYTE8(v33[1]) = v21;
  v22 = v24[0];
  (*(v7 + 104))(v10, *MEMORY[0x1E697C438], v24[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B810);
  sub_1BD196C48();
  sub_1BE050E84();

  (*(v7 + 8))(v10, v22);
  v34[6] = v31;
  v34[7] = v32;
  v35[0] = v33[0];
  *(v35 + 9) = *(v33 + 9);
  v34[2] = v27;
  v34[3] = v28;
  v34[4] = v29;
  v34[5] = v30;
  v34[0] = v25;
  v34[1] = v26;
  return sub_1BD0DE53C(v34, &qword_1EBD3B810);
}

uint64_t sub_1BD50A700@<X0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  sub_1BE050324();
  v7 = sub_1BE0505F4();
  v9 = v8;
  v11 = v10;

  sub_1BD0DDF10(v2, v4, v6 & 1);

  sub_1BE04FC94();
  v12 = sub_1BE050574();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1BD0DDF10(v7, v9, v11 & 1);

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v12;
  *(a1 + 24) = v14;
  *(a1 + 32) = v16 & 1;
  *(a1 + 40) = v18;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_1BD0D7F18(v12, v14, v16 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v12, v14, v16 & 1);
}

uint64_t sub_1BD50A884@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48FD0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v20 - v14;
  *v15 = sub_1BE04F504();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48FD8);
  sub_1BD50AA14(a1, a2, a3, &v15[*(v16 + 44)]);
  sub_1BD0DE19C(v15, v11, &qword_1EBD48FD0);
  *a4 = 0x4010000000000000;
  *(a4 + 8) = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48FE0);
  sub_1BD0DE19C(v11, a4 + *(v17 + 48), &qword_1EBD48FD0);
  v18 = a4 + *(v17 + 64);
  *v18 = 0x4018000000000000;
  *(v18 + 8) = 0;
  sub_1BD0DE53C(v15, &qword_1EBD48FD0);
  return sub_1BD0DE53C(v11, &qword_1EBD48FD0);
}

id sub_1BD50AA14@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X3>, uint64_t a4@<X8>)
{
  v114 = a3;
  v113 = a2;
  v112 = a1;
  v120 = a4;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48FE8);
  MEMORY[0x1EEE9AC00](v119, v4);
  v115 = &v106 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48FF0);
  v116 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v106 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48FF8);
  v121 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v106 - v20;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49000);
  MEMORY[0x1EEE9AC00](v118, v22);
  v117 = (&v106 - v23);
  v24 = sub_1BE04BD74();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v29, v30);
  v34 = &v106 - v31;
  if (!v32)
  {
    v107 = v17;
    v108 = v9;
    v109 = v14;
    v110 = v13;
    v55 = v116;
    v111 = v6;
    (*(v25 + 104))(v28, *MEMORY[0x1E69B80E0], v24, v33);
    result = PKPassKitBundle();
    if (result)
    {
      v56 = result;
      v57 = sub_1BE04B6F4();
      v59 = v58;

      (*(v25 + 8))(v28, v24);
      *&v128[0] = v57;
      *(&v128[0] + 1) = v59;
      sub_1BD0DDEBC();
      v60 = sub_1BE0506C4();
      v62 = v61;
      v64 = v63;
      v66 = v65;
      LOBYTE(v59) = sub_1BE050204();
      sub_1BE04E1F4();
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v75 = v64 & 1;
      v130 = v64 & 1;
      v129 = 0;
      v76 = sub_1BE0503D4();
      KeyPath = swift_getKeyPath();
      *&v122 = v60;
      *(&v122 + 1) = v62;
      LOBYTE(v123) = v75;
      *(&v123 + 1) = v66;
      LOBYTE(v124) = v59;
      *(&v124 + 1) = v68;
      *&v125 = v70;
      *(&v125 + 1) = v72;
      *&v126 = v74;
      BYTE8(v126) = 0;
      *&v127 = KeyPath;
      *(&v127 + 1) = v76;
      sub_1BE050364();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49010);
      sub_1BD50C6D8();
      v106 = v21;
      sub_1BE050854();
      v128[2] = v124;
      v128[3] = v125;
      v128[4] = v126;
      v128[5] = v127;
      v128[0] = v122;
      v128[1] = v123;
      v78 = sub_1BD0DE53C(v128, &qword_1EBD49010);
      MEMORY[0x1EEE9AC00](v78, v79);
      v80 = v113;
      *(&v106 - 4) = v112;
      *(&v106 - 3) = v80;
      v81 = v114;
      *(&v106 - 2) = 0;
      *(&v106 - 1) = v81;
      MEMORY[0x1EEE9AC00](v82, v83);
      *(&v106 - 4) = v85;
      *(&v106 - 3) = v84;
      *(&v106 - 2) = 0;
      *(&v106 - 1) = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49020);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49028);
      sub_1BD50C7A8();
      sub_1BD0DE4F4(&qword_1EBD49098, &qword_1EBD49028);
      v87 = v110;
      sub_1BE0504F4();
      v88 = *(v121 + 16);
      v89 = v107;
      v90 = v109;
      v88(v107, v21, v109);
      v91 = v55;
      v92 = *(v55 + 16);
      v93 = v108;
      v94 = v111;
      v92(v108, v87, v111);
      v95 = v115;
      v88(v115, v89, v90);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD490A0);
      v97 = v95 + *(v96 + 48);
      *v97 = 0;
      *(v97 + 8) = 1;
      v92((v95 + *(v96 + 64)), v93, v94);
      v98 = *(v91 + 8);
      v98(v93, v94);
      v99 = *(v121 + 8);
      v121 += 8;
      v99(v89, v90);
      sub_1BD0DE19C(v95, v117, &qword_1EBD48FE8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
      sub_1BD2A275C();
      sub_1BD0DE4F4(&qword_1EBD490A8, &qword_1EBD48FE8);
      v100 = v120;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v95, &qword_1EBD48FE8);
      v98(v110, v111);
      v99(v106, v109);
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49008);
      return (*(*(v101 - 8) + 56))(v100, 0, 1, v101);
    }

    goto LABEL_11;
  }

  if (v32 == 1)
  {
    (*(v25 + 104))(&v106 - v31, *MEMORY[0x1E69B80E0], v24, v33);
    result = PKPassKitBundle();
    if (result)
    {
      v36 = result;
      v37 = sub_1BE04B6F4();
      v39 = v38;

      (*(v25 + 8))(v34, v24);
      *&v128[0] = v37;
      *(&v128[0] + 1) = v39;
      sub_1BD0DDEBC();
      v40 = sub_1BE0506C4();
      v42 = v41;
      LOBYTE(v39) = v43;
      v45 = v44;
      v46 = sub_1BE050204();
      sub_1BE04E1F4();
      v47 = v39 & 1;
      LOBYTE(v128[0]) = v39 & 1;
      LOBYTE(v122) = 0;
      v48 = v117;
      *v117 = v40;
      v48[1] = v42;
      *(v48 + 16) = v47;
      v48[3] = v45;
      *(v48 + 32) = v46;
      v48[5] = v49;
      v48[6] = v50;
      v48[7] = v51;
      v48[8] = v52;
      *(v48 + 72) = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
      sub_1BD2A275C();
      sub_1BD0DE4F4(&qword_1EBD490A8, &qword_1EBD48FE8);
      v53 = v120;
      sub_1BE04F9A4();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49008);
      return (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49008);
  v103 = *(*(v102 - 8) + 56);
  v104 = v102;
  v105 = v120;

  return v103(v105, 1, 1, v104);
}

uint64_t sub_1BD50B51C()
{
  type metadata accessor for TransactionList();
  sub_1BD50CC3C(&qword_1EBD3AFF8, type metadata accessor for TransactionList);
  v0 = sub_1BE04E964();
  swift_getKeyPath();
  sub_1BE04E974();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD490B0);
  sub_1BD50CC84();
  sub_1BD50CCD8();
  return sub_1BE0517D4();
}

uint64_t sub_1BD50B65C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD490C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD490D0);
  sub_1BD0DE4F4(&qword_1EBD490D8, &qword_1EBD490C8);
  sub_1BD50CC84();
  swift_getOpaqueTypeConformance2();
  sub_1BD50CD9C();
  return sub_1BE0519D4();
}

uint64_t sub_1BD50B790@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1BD5682E4(*a1);
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_1BD50B7FC()
{
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49060);
  sub_1BD50C840();
  sub_1BD50C9C0();
  return sub_1BE051C74();
}

uint64_t sub_1BD50B8E4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F00);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v23 - v4;
  sub_1BE051574();
  sub_1BE04F804();
  v6 = sub_1BE04F824();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = sub_1BE0515B4();

  sub_1BD0DE53C(v5, &qword_1EBD41F00);
  v8 = sub_1BE051494();
  KeyPath = swift_getKeyPath();
  v10 = sub_1BE0503D4();
  v11 = swift_getKeyPath();
  v23[1] = v7;
  v23[2] = KeyPath;
  v23[3] = v8;
  v23[4] = v11;
  v23[5] = v10;
  sub_1BE0503A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49048);
  sub_1BD50C908();
  sub_1BE050854();

  v12 = sub_1BE050224();
  sub_1BE04E1F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49040);
  v22 = a1 + *(result + 36);
  *v22 = v12;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_1BD50BB10@<X0>(uint64_t a1@<X8>)
{
  sub_1BD50BB94(&v8);
  v2 = v8;
  v3 = v9;
  v4 = sub_1BE051224();
  KeyPath = swift_getKeyPath();
  v6 = sub_1BE0503D4();
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = v4;
  *(a1 + 32) = result;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_1BD50BB94@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BE051574();
  result = sub_1BE04F9A4();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1BD50BCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F794();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49100);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49108) + 36));
  *v6 = v4;
  v6[1] = sub_1BD277450;
  v6[2] = 0;
  v7 = sub_1BE04F7A4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49110);
  v9 = (a2 + *(result + 36));
  *v9 = v7;
  v9[1] = sub_1BD50BCB0;
  v9[2] = 0;
  return result;
}

unint64_t sub_1BD50BDD8()
{
  result = qword_1EBD48F30;
  if (!qword_1EBD48F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F20);
    sub_1BD50BE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48F30);
  }

  return result;
}

unint64_t sub_1BD50BE5C()
{
  result = qword_1EBD48F38;
  if (!qword_1EBD48F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F40);
    sub_1BD50BEE8();
    sub_1BD50C130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48F38);
  }

  return result;
}

unint64_t sub_1BD50BEE8()
{
  result = qword_1EBD48F48;
  if (!qword_1EBD48F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F50);
    sub_1BD50BF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48F48);
  }

  return result;
}

unint64_t sub_1BD50BF6C()
{
  result = qword_1EBD48F58;
  if (!qword_1EBD48F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F60);
    sub_1BD50C024();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48F58);
  }

  return result;
}

unint64_t sub_1BD50C024()
{
  result = qword_1EBD48F68;
  if (!qword_1EBD48F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F70);
    sub_1BD0DE4F4(&qword_1EBD48F78, &qword_1EBD48F80);
    sub_1BD50C0DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48F68);
  }

  return result;
}

unint64_t sub_1BD50C0DC()
{
  result = qword_1EBD48F88;
  if (!qword_1EBD48F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48F88);
  }

  return result;
}

unint64_t sub_1BD50C130()
{
  result = qword_1EBD48F90;
  if (!qword_1EBD48F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F98);
    sub_1BD50C1E8();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48F90);
  }

  return result;
}

unint64_t sub_1BD50C1E8()
{
  result = qword_1EBD48FA0;
  if (!qword_1EBD48FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48FA8);
    sub_1BD0DE4F4(&qword_1EBD48FB0, &qword_1EBD48FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48FA0);
  }

  return result;
}

unint64_t sub_1BD50C2A0()
{
  result = qword_1EBD48FC0;
  if (!qword_1EBD48FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F00);
    sub_1BD0DE4F4(&qword_1EBD48F28, &qword_1EBD48EF8);
    sub_1BD50BDD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD48FC0);
  }

  return result;
}

id sub_1BD50C364()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v21[-v7];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v21[-v11];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v21[-v15];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v17 = v22;
  if (v22 <= 1u)
  {
    if (!v22)
    {
      return v17;
    }

    (*(v1 + 104))(v16, *MEMORY[0x1E69B80E0], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v17 = sub_1BE04B6F4();
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v18 = *MEMORY[0x1E69B80E0];
  if (v22 == 2)
  {
    (*(v1 + 104))(v12, v18, v0);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v17 = sub_1BE04B6F4();
      v16 = v12;
      goto LABEL_13;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v22 == 3)
  {
    (*(v1 + 104))(v8, v18, v0);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v17 = sub_1BE04B6F4();
      v16 = v8;
LABEL_13:

      (*(v1 + 8))(v16, v0);
      return v17;
    }

    goto LABEL_16;
  }

  (*(v1 + 104))(v4, v18, v0);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v17 = sub_1BE04B6F4();
    v16 = v4;
    goto LABEL_13;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1BD50C6D8()
{
  result = qword_1EBD49018;
  if (!qword_1EBD49018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49010);
    sub_1BD2A275C();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49018);
  }

  return result;
}

unint64_t sub_1BD50C7A8()
{
  result = qword_1EBD49030;
  if (!qword_1EBD49030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49020);
    sub_1BD50C840();
    sub_1BD50C9C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49030);
  }

  return result;
}

unint64_t sub_1BD50C840()
{
  result = qword_1EBD49038;
  if (!qword_1EBD49038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49048);
    sub_1BD50C908();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49038);
  }

  return result;
}

unint64_t sub_1BD50C908()
{
  result = qword_1EBD49050;
  if (!qword_1EBD49050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49048);
    sub_1BD2F17DC();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49050);
  }

  return result;
}

unint64_t sub_1BD50C9C0()
{
  result = qword_1EBD49058;
  if (!qword_1EBD49058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49060);
    sub_1BD50CA78();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49058);
  }

  return result;
}

unint64_t sub_1BD50CA78()
{
  result = qword_1EBD49068;
  if (!qword_1EBD49068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49070);
    sub_1BD50CB30();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49068);
  }

  return result;
}

unint64_t sub_1BD50CB30()
{
  result = qword_1EBD49078;
  if (!qword_1EBD49078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49080);
    sub_1BD50CBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49078);
  }

  return result;
}

unint64_t sub_1BD50CBB4()
{
  result = qword_1EBD49088;
  if (!qword_1EBD49088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49088);
  }

  return result;
}

uint64_t sub_1BD50CC3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD50CC84()
{
  result = qword_1EBD490B8;
  if (!qword_1EBD490B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD490B8);
  }

  return result;
}

unint64_t sub_1BD50CCD8()
{
  result = qword_1EBD490C0;
  if (!qword_1EBD490C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD490B0);
    sub_1BD50CC84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD490C0);
  }

  return result;
}

unint64_t sub_1BD50CD9C()
{
  result = qword_1EBD490E0;
  if (!qword_1EBD490E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD490E0);
  }

  return result;
}

unint64_t sub_1BD50CE00()
{
  result = qword_1EBD490E8;
  if (!qword_1EBD490E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD490F0);
    sub_1BD50CE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD490E8);
  }

  return result;
}

unint64_t sub_1BD50CE84()
{
  result = qword_1EBD490F8;
  if (!qword_1EBD490F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD48F00);
    sub_1BD50C2A0();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD490F8);
  }

  return result;
}

unint64_t sub_1BD50CF94()
{
  result = qword_1EBD49118;
  if (!qword_1EBD49118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49110);
    sub_1BD50D020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49118);
  }

  return result;
}

unint64_t sub_1BD50D020()
{
  result = qword_1EBD49120;
  if (!qword_1EBD49120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49108);
    sub_1BD0DE4F4(&qword_1EBD49128, &qword_1EBD49100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49120);
  }

  return result;
}

uint64_t sub_1BD50D0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v19 - v10;
  v12 = sub_1BE050354();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1BE048964();
  v13 = sub_1BE0503B4();
  sub_1BD3FA0F4(v11);
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v16 = sub_1BE0501D4();
  v17 = v19[1];
  *(a4 + 40) = v19[0];
  *a4 = a1;
  *(a4 + 8) = KeyPath;
  *(a4 + 16) = v13;
  *(a4 + 24) = v15;
  *(a4 + 32) = a2;
  *(a4 + 56) = v17;
  *(a4 + 72) = v19[2];
  *(a4 + 88) = a3;
  *(a4 + 96) = v16;
  *(a4 + 97) = 256;
  return sub_1BE048964();
}

uint64_t sub_1BD50D260()
{
  v0 = sub_1BE051424();
  v1 = sub_1BE051304();
  result = sub_1BE051574();
  qword_1EBDAB200 = result;
  *algn_1EBDAB208 = v0;
  qword_1EBDAB210 = v1;
  return result;
}

uint64_t sub_1BD50D2BC(uint64_t a1, int64_t a2, char a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      sub_1BE051424();
      sub_1BE051314();
      return sub_1BE051574();
    }

    if (a2 == 3)
    {
      if ((a3 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_9:
      sub_1BE051424();
      sub_1BE051304();
      return sub_1BE051574();
    }

LABEL_10:
    sub_1BD35D778(a1, a2);
    if ((a3 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
    if (a3)
    {
      sub_1BE051424();
      sub_1BE0512E4();
      return sub_1BE051574();
    }

LABEL_15:
    sub_1BE0513C4();
    sub_1BE0512C4();
    return sub_1BE051574();
  }

  if (a2 != 1)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1BE051424();
  sub_1BE0512F4();
  return sub_1BE051574();
}

uint64_t sub_1BD50D434(void *a1)
{
  v2 = sub_1BE051584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BE0B7020;
  v10 = *MEMORY[0x1E695C400];
  v11 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v12 = a1;
  *(v9 + 32) = [v11 initWithString_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD56750);
  v13 = sub_1BE052724();

  LODWORD(v9) = [v12 areKeysAvailable_];

  if (!v9 || (v14 = [v12 thumbnailImageData]) == 0)
  {
LABEL_9:
    v26 = sub_1BE051574();
    sub_1BE051424();
    sub_1BE0513C4();

    return v26;
  }

  v15 = v14;
  v16 = sub_1BE04AAC4();
  v18 = v17;

  v19 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v20 = sub_1BE04AAB4();
  v21 = [v19 initWithData_];

  if (!v21 || (v22 = [v21 CGImage], v21, !v22))
  {
    sub_1BD1245AC(v16, v18);
    goto LABEL_9;
  }

  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 mainScreen];
  [v25 scale];

  sub_1BE051564();
  (*(v3 + 104))(v7, *MEMORY[0x1E6981630], v8);
  v26 = sub_1BE0515E4();

  (*(v3 + 8))(v7, v8);
  sub_1BE051404();
  sub_1BE051404();
  sub_1BD1245AC(v16, v18);

  return v26;
}

unint64_t sub_1BD50D798()
{
  result = qword_1EBD49138;
  if (!qword_1EBD49138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD49140);
    sub_1BD4B75D0();
    sub_1BD0DE4F4(&qword_1EBD491B8, &unk_1EBD491C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49138);
  }

  return result;
}

uint64_t sub_1BD50D88C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = sub_1BE050014();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD491E0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD491E8);
  MEMORY[0x1EEE9AC00](v20, v10);
  v12 = &v19 - v11;
  v23 = v1;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40540);
  sub_1BD50EB10(&qword_1EBD40550, &qword_1EBD40540, &unk_1BE0DC3A0, sub_1BD2A275C);
  sub_1BE051704();
  v13 = sub_1BE0511D4();
  KeyPath = swift_getKeyPath();
  v15 = &v9[*(v6 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  sub_1BE050004();
  sub_1BD50EBC4();
  sub_1BD50ECA8(&qword_1EBD366F0, MEMORY[0x1E697CB70]);
  v16 = v21;
  sub_1BE050894();
  (*(v2 + 8))(v5, v16);
  sub_1BD0DE53C(v9, &qword_1EBD491E0);
  v17 = &v12[*(v20 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49208);
  sub_1BE04EE74();
  *v17 = swift_getKeyPath();
  sub_1BE051C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49210);
  sub_1BD50ECF0();
  sub_1BD50EE34();
  sub_1BE0510C4();
  return sub_1BD082A70(v12);
}

uint64_t sub_1BD50DBE8()
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v0 = sub_1BE0506C4();
  v2 = v1;
  v4 = v3;
  sub_1BE051424();
  v5 = sub_1BE050564();
  v7 = v6;
  v9 = v8;

  sub_1BD0DDF10(v0, v2, v4 & 1);

  v10 = sub_1BE0505F4();
  v12 = v11;
  LOBYTE(v2) = v13;
  sub_1BD0DDF10(v5, v7, v9 & 1);

  sub_1BE050384();
  v14 = sub_1BE050544();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1BD0DDF10(v10, v12, v2 & 1);

  *&v22 = v14;
  *(&v22 + 1) = v16;
  LOBYTE(v23) = v18 & 1;
  *(&v23 + 1) = v20;
  v24[0] = sub_1BE0501D4();
  *&v24[8] = xmmword_1BE0DDBC0;
  *&v24[24] = xmmword_1BE0DDBC0;
  v24[40] = 0;
  sub_1BE052434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
  sub_1BD2A275C();
  sub_1BE050DE4();

  v25[1] = v23;
  v25[2] = *v24;
  v26[0] = *&v24[16];
  *(v26 + 9) = *&v24[25];
  v25[0] = v22;
  return sub_1BD0DE53C(v25, &unk_1EBD3DF90);
}

__n128 sub_1BD50DE10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD082AD8(a1, a2);
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49210) + 36));
  v4[4] = v10;
  v4[5] = v11;
  v4[6] = v12;
  *v4 = v6;
  v4[1] = v7;
  result = v9;
  v4[2] = v8;
  v4[3] = v9;
  return result;
}

id sub_1BD50DF04@<X0>(void *a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v9 = v1[1];
  (*(v4 + 104))(v8, *MEMORY[0x1E69B8068], v3, v6);
  sub_1BE048964();
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v13 = sub_1BE04B6F4();
    v15 = v14;

    (*(v4 + 8))(v8, v3);
    result = sub_1BE0502A4();
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v13;
    a1[3] = v15;
    a1[4] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD50E060()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1BE048964();
  sub_1BD50E160(v1, v2, v3);
  sub_1BE0502A4();
  sub_1BE052434();
  sub_1BD50EA88();
  sub_1BE050DE4();
}

id sub_1BD50E160(uint64_t a1, int a2, uint64_t a3)
{
  v89 = a3;
  v88 = a2;
  v4 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v4, v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v87[-v14];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v87[-v18];
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v87[-v22];
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v87[-v26];
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v87[-v30];
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v87[-v34];
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v87[-v38];
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v87[-v42];
  v52.n128_f64[0] = MEMORY[0x1EEE9AC00](v44, v45);
  v54 = &v87[-v53];
  if (v55)
  {
    v56 = v89;
LABEL_40:
    sub_1BE048C84();
    return v56;
  }

  v57 = *(v50 + 104);
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      v69 = v46;
      if (a1 == 5)
      {
        v71 = v50;
        (v57)(v19, *MEMORY[0x1E69B8068], v46, v52.n128_f64[0]);
        result = PKPassKitBundle();
        if (result)
        {
          v72 = result;
          v56 = sub_1BE04B6F4();

          (*(v71 + 8))(v19, v69);
          goto LABEL_40;
        }
      }

      else
      {
        v63 = v50;
        v64 = v46;
        v39 = v49;
        (v57)(v49, *MEMORY[0x1E69B8068], v46, v52.n128_f64[0]);
        result = PKPassKitBundle();
        if (result)
        {
          v65 = result;
          goto LABEL_38;
        }

        __break(1u);
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (a1 == 7)
    {
      v76 = v50;
      v77 = v46;
      (v57)(v15, *MEMORY[0x1E69B8068], v46, v52.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v78 = result;
        v56 = sub_1BE04B6F4();

        (*(v76 + 8))(v15, v77);
        goto LABEL_40;
      }

      goto LABEL_48;
    }

    v62 = v46;
    if (a1 == 8)
    {
      v63 = v50;
      v64 = v46;
      v39 = v47;
      (v57)(v47, *MEMORY[0x1E69B8068], v46, v52.n128_f64[0]);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v65 = result;
    }

    else
    {
      if (a1 != 9)
      {
LABEL_36:
        v63 = v50;
        v64 = v62;
        v39 = v51;
        v57(v51, *MEMORY[0x1E69B8068], v64, v52);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v65 = result;
        goto LABEL_38;
      }

      v63 = v50;
      v64 = v46;
      v39 = v48;
      (v57)(v48, *MEMORY[0x1E69B80E0], v46, v52.n128_f64[0]);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v65 = result;
    }

LABEL_38:
    v56 = sub_1BE04B6F4();

    (*(v63 + 8))(v39, v64);
    goto LABEL_40;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      v58 = v46;
      if (a1 == 3)
      {
        v79 = v50;
        (v57)(v27, *MEMORY[0x1E69B8068], v46, v52.n128_f64[0]);
        result = PKPassKitBundle();
        if (result)
        {
          v80 = result;
          v56 = sub_1BE04B6F4();

          (*(v79 + 8))(v27, v58);
          goto LABEL_40;
        }

        goto LABEL_51;
      }

      v59 = v50;
      (v57)(v23, *MEMORY[0x1E69B8068], v46, v52.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v61 = result;
        v56 = sub_1BE04B6F4();

        (*(v59 + 8))(v23, v58);
        goto LABEL_40;
      }

      goto LABEL_49;
    }

    v73 = v50;
    v74 = v46;
    (v57)(v31, *MEMORY[0x1E69B8068], v46, v52.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v75 = result;
      v56 = sub_1BE04B6F4();

      (*(v73 + 8))(v31, v74);
      goto LABEL_40;
    }

    goto LABEL_47;
  }

  if (a1)
  {
    v62 = v46;
    if (a1 == 1)
    {
      v66 = v50;
      v67 = *MEMORY[0x1E69B8068];
      if ((v88 & 1) == 0)
      {
        v81 = v46;
        (v57)(v43, v67, v46, v52.n128_f64[0]);
        result = PKPassKitBundle();
        if (result)
        {
          v82 = result;
          v83 = sub_1BE04B6F4();

          v84 = v43;
          v56 = v83;
          (*(v66 + 8))(v84, v81);
          goto LABEL_40;
        }

        goto LABEL_56;
      }

      (v57)(v54, v67, v46, v52.n128_f64[0]);
      result = PKPassKitBundle();
      if (result)
      {
        v68 = result;
        v56 = sub_1BE04B6F4();

        (*(v66 + 8))(v54, v62);
        goto LABEL_40;
      }

      goto LABEL_54;
    }

    goto LABEL_36;
  }

  v63 = v50;
  v70 = *MEMORY[0x1E69B8068];
  if (v88)
  {
    v64 = v46;
    (v57)(v39, v70, v46, v52.n128_f64[0]);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v65 = result;
    goto LABEL_38;
  }

  v85 = v46;
  (v57)(v35, v70, v46, v52.n128_f64[0]);
  result = PKPassKitBundle();
  if (result)
  {
    v86 = result;
    v56 = sub_1BE04B6F4();

    (*(v63 + 8))(v35, v85);
    goto LABEL_40;
  }

LABEL_57:
  __break(1u);
  return result;
}

unint64_t sub_1BD50EA88()
{
  result = qword_1EBD365B0;
  if (!qword_1EBD365B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD365B0);
  }

  return result;
}

uint64_t sub_1BD50EB10(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1BD50ECA8(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD50EBC4()
{
  result = qword_1EBD491F0;
  if (!qword_1EBD491F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD491E0);
    sub_1BD0DE4F4(&qword_1EBD491F8, &qword_1EBD49200);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD491F0);
  }

  return result;
}

uint64_t sub_1BD50ECA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD50ECF0()
{
  result = qword_1EBD49218;
  if (!qword_1EBD49218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD491E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD491E0);
    sub_1BE050014();
    sub_1BD50EBC4();
    sub_1BD50ECA8(&qword_1EBD366F0, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD366E8, &qword_1EBD49208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49218);
  }

  return result;
}

unint64_t sub_1BD50EE34()
{
  result = qword_1EBD49220;
  if (!qword_1EBD49220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49210);
    sub_1BD50ECF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49220);
  }

  return result;
}

Swift::Void __swiftcall VFXNode.restart()()
{
  v1 = [v0 particleEmitter];
  [v1 killParticles];

  v2 = [v0 particleEmitter];
  [v2 restart];
}

void VFXNode.setBehaviorGraphValue(key:value:)(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = [v2 behaviorGraph];
  if (v5)
  {
    v6 = v5;
    v17 = v4;
    NearbyPeerPaymentVFXUtilities.BehaviorGraph.rawValue.getter();
    sub_1BD1C4810(a2, v15);
    v7 = v16;
    if (v16)
    {
      v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
      v9 = *(v7 - 8);
      MEMORY[0x1EEE9AC00](v8, v8);
      v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v11);
      v12 = sub_1BE053B74();
      (*(v9 + 8))(v11, v7);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_1BE052404();

    [v6 setObject:v12 forKeyedSubscript:v13];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BD50F0F4()
{
  v0 = sub_1BD1AB78C(&unk_1F3B8D190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49250);
  result = swift_arrayDestroy();
  qword_1EBDAB218 = v0;
  return result;
}

uint64_t sub_1BD50F150()
{
  v0 = sub_1BD1AD164(&unk_1F3B8D350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49238);
  result = swift_arrayDestroy();
  qword_1EBDAB220 = v0;
  return result;
}

PassKitUI::NearbyPeerPaymentVFXUtilities::BehaviorGraph_optional __swiftcall NearbyPeerPaymentVFXUtilities.BehaviorGraph.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BE053BC4();

  v5 = 0;
  v6 = 41;
  switch(v3)
  {
    case 0:
      goto LABEL_55;
    case 1:
      v5 = 1;
      goto LABEL_55;
    case 2:
      v5 = 2;
      goto LABEL_55;
    case 3:
      v5 = 3;
      goto LABEL_55;
    case 4:
      v5 = 4;
      goto LABEL_55;
    case 5:
      v5 = 5;
      goto LABEL_55;
    case 6:
      v5 = 6;
      goto LABEL_55;
    case 7:
      v5 = 7;
      goto LABEL_55;
    case 8:
      v5 = 8;
      goto LABEL_55;
    case 9:
      v5 = 9;
      goto LABEL_55;
    case 10:
      v5 = 10;
      goto LABEL_55;
    case 11:
      v5 = 11;
      goto LABEL_55;
    case 12:
      v5 = 12;
      goto LABEL_55;
    case 13:
      v5 = 13;
      goto LABEL_55;
    case 14:
      v5 = 14;
      goto LABEL_55;
    case 15:
      v5 = 15;
      goto LABEL_55;
    case 16:
      v5 = 16;
      goto LABEL_55;
    case 17:
      v5 = 17;
      goto LABEL_55;
    case 18:
      v5 = 18;
      goto LABEL_55;
    case 19:
      v5 = 19;
      goto LABEL_55;
    case 20:
      v5 = 20;
      goto LABEL_55;
    case 21:
      v5 = 21;
      goto LABEL_55;
    case 22:
      v5 = 22;
      goto LABEL_55;
    case 23:
      v5 = 23;
      goto LABEL_55;
    case 24:
      v5 = 24;
      goto LABEL_55;
    case 25:
      v5 = 25;
      goto LABEL_55;
    case 26:
      v5 = 26;
      goto LABEL_55;
    case 27:
      v5 = 27;
      goto LABEL_55;
    case 28:
      v5 = 28;
      goto LABEL_55;
    case 29:
      v5 = 29;
      goto LABEL_55;
    case 30:
      v5 = 30;
      goto LABEL_55;
    case 31:
      v5 = 31;
      goto LABEL_55;
    case 32:
      v5 = 32;
      goto LABEL_55;
    case 33:
      v5 = 33;
      goto LABEL_55;
    case 34:
      v5 = 34;
      goto LABEL_55;
    case 35:
      v5 = 35;
      goto LABEL_55;
    case 36:
      v5 = 36;
      goto LABEL_55;
    case 37:
      v5 = 37;
      goto LABEL_55;
    case 38:
      v5 = 38;
      goto LABEL_55;
    case 39:
      v5 = 39;
      goto LABEL_55;
    case 40:
      v5 = 40;
LABEL_55:
      v6 = v5;
      break;
    case 41:
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    default:
      v6 = 59;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t NearbyPeerPaymentVFXUtilities.BehaviorGraph.rawValue.getter()
{
  result = 0x7974696361706FLL;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x7265764F65746172;
      break;
    case 3:
      result = 0x706D755074786574;
      break;
    case 4:
      result = 0x43724F64756F6C63;
      break;
    case 5:
      result = 0x6F69746365726964;
      break;
    case 6:
      result = 0x6F69746365726964;
      break;
    case 7:
      result = 0x6F69746365726964;
      break;
    case 8:
      result = 0xD000000000000027;
      break;
    case 9:
      result = 0x69646152676E6972;
      break;
    case 0xA:
      result = 0xD00000000000001ELL;
      break;
    case 0xB:
      result = 0x656D6954676E6972;
      break;
    case 0xC:
      result = 0x72617453676E6972;
      break;
    case 0xD:
    case 0x1C:
    case 0x24:
    case 0x2F:
    case 0x35:
      result = 0xD000000000000012;
      break;
    case 0xE:
      result = 0x6C6C6946676E6972;
      break;
    case 0xF:
      result = 0x706147637261;
      break;
    case 0x10:
      result = 0x676E6152657A6973;
      break;
    case 0x11:
      result = 0x656C616373;
      break;
    case 0x12:
      result = 0x5772657474696D65;
      break;
    case 0x13:
      result = 0x6465657073;
      break;
    case 0x14:
      result = 0x6E6F697469736F70;
      break;
    case 0x15:
      result = 0x7461526874646977;
      break;
    case 0x16:
      result = 0x6874676E65727473;
      break;
    case 0x17:
      result = 0x6C6F526863746970;
      break;
    case 0x18:
      result = 0x676E69646E756F62;
      break;
    case 0x19:
      result = 0x676E697472617473;
      break;
    case 0x1A:
      result = 0x61704F6C65646F6DLL;
      break;
    case 0x1B:
      result = 0xD000000000000016;
      break;
    case 0x1D:
    case 0x27:
    case 0x28:
    case 0x32:
      result = 0xD000000000000014;
      break;
    case 0x1E:
    case 0x22:
      result = 0xD000000000000015;
      break;
    case 0x1F:
      result = 0xD000000000000017;
      break;
    case 0x20:
      result = 0x6163537469676964;
      break;
    case 0x21:
      result = 0xD000000000000017;
      break;
    case 0x23:
    case 0x33:
      result = 0xD000000000000018;
      break;
    case 0x25:
      result = 0xD000000000000017;
      break;
    case 0x26:
    case 0x2B:
    case 0x3A:
      result = 0xD000000000000010;
      break;
    case 0x29:
      result = 0xD000000000000017;
      break;
    case 0x2A:
      result = 0xD000000000000017;
      break;
    case 0x2C:
      result = 0x6163536573696F6ELL;
      break;
    case 0x2D:
      result = 0x6163536573696F6ELL;
      break;
    case 0x2E:
      result = 0x6163536573696F6ELL;
      break;
    case 0x30:
    case 0x31:
      result = 0x726566736E617274;
      break;
    case 0x34:
      result = 0x6F6D416B63656863;
      break;
    case 0x36:
      result = 0xD000000000000011;
      break;
    case 0x37:
      result = 0x696C47746867696CLL;
      break;
    case 0x38:
      result = 0xD000000000000013;
      break;
    case 0x39:
      result = 0xD000000000000021;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

unint64_t sub_1BD50FA8C@<X0>(unint64_t *a1@<X8>)
{
  result = NearbyPeerPaymentVFXUtilities.BehaviorGraph.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

PassKitUI::NearbyPeerPaymentVFXUtilities::Node_optional __swiftcall NearbyPeerPaymentVFXUtilities.Node.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BE053A44();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t NearbyPeerPaymentVFXUtilities.Node.rawValue.getter()
{
  result = 0x746E6569626D61;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x646E694265646F6ELL;
      break;
    case 4:
      result = 0x676E695265756C62;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x47676E69736C7570;
      break;
    case 7:
      result = 0x6172656D6163;
      break;
    case 8:
      result = 0x6F6F527469676964;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 0xB:
      result = 0x6C65646F6DLL;
      break;
    case 0xC:
      result = 0x5472657472617473;
      break;
    case 0xD:
      result = 0x7461706973736964;
      break;
    case 0xE:
      result = 0x726566736E617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BD50FCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BE053B84();
  }

  return v11 & 1;
}

uint64_t sub_1BD50FDA8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1BE053D04();
  a3(v4);
  sub_1BE052524();

  return sub_1BE053D64();
}

uint64_t sub_1BD50FE30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  sub_1BE052524();
}

uint64_t sub_1BD50FEB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1BE053D04();
  a4(v5);
  sub_1BE052524();

  return sub_1BE053D64();
}

unint64_t sub_1BD50FF28@<X0>(unint64_t *a1@<X8>)
{
  result = NearbyPeerPaymentVFXUtilities.Node.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1BD50FF54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v115 = *MEMORY[0x1E69E9840];
  v6 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v7 = sub_1BE052404();
  v8 = [v6 initWithString_];

  Frame = [v8 length];
  v10 = sub_1BE052534();
  v11 = 100.0;
  v12 = 120.0;
  if (v10 < 4)
  {
    v12 = 154.0;
  }

  if (v10 <= 5)
  {
    v11 = v12;
  }

  if (v10 <= 7)
  {
    width = v11;
  }

  else
  {
    width = 80.0;
  }

  v14 = [objc_opt_self() chiseledCashFontDescriptor];
  if (!v14)
  {
    goto LABEL_126;
  }

  v15 = v14;
  v16 = CTFontCreateWithFontDescriptor(v14, width, 0);

  LOBYTE(v113[0]) = 2;
  v114.spec = kCTParagraphStyleSpecifierAlignment;
  v114.valueSize = 1;
  v114.value = v113;
  v17 = CTParagraphStyleCreate(&v114, 1uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49240);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BE0B6CA0;
  v19 = *MEMORY[0x1E6965658];
  type metadata accessor for CFString(0);
  v21 = v20;
  *(v18 + 56) = v20;
  *(v18 + 32) = v19;
  type metadata accessor for CTFont(0);
  *(v18 + 64) = v16;
  v22 = *MEMORY[0x1E6965A30];
  *(v18 + 120) = v21;
  *(v18 + 88) = v23;
  *(v18 + 96) = v22;
  type metadata accessor for CTParagraphStyle(0);
  *(v18 + 152) = v24;
  *(v18 + 128) = v17;
  sub_1BD0E5E8C(0, &qword_1EBD49248);
  v25 = v19;
  v26 = v16;
  v27 = v22;
  v28 = v17;
  v29 = sub_1BE052BC4();
  v30 = v8;
  attrString = CFAttributedStringCreate(*MEMORY[0x1E695E480], v8, v29);
  if (!attrString)
  {

    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  v105 = v26;
  if ((Frame & 0x8000000000000000) != 0)
  {
    goto LABEL_121;
  }

  v103 = v29;
  v104 = v28;
  if (Frame)
  {
    v8 = sub_1BE0527B4();
    *(v8 + 16) = Frame;
    v31 = (v8 + 32);
    bzero((v8 + 32), 2 * Frame);
    [v30 getCharacters_];
    v29 = sub_1BE0527B4();
    *(v29 + 16) = Frame;
    bzero((v29 + 32), 2 * Frame);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
    v31 = (MEMORY[0x1E69E7CC0] + 32);
    [v8 getCharacters_];
    v8 = v29;
  }

  v32 = v105;
  sub_1BE048C84();
  CTFontGetGlyphsForCharacters(v105, v31, (v29 + 32), Frame);

  if (Frame >> 58)
  {
    goto LABEL_122;
  }

  v109 = swift_slowAlloc();
  CTFontGetBoundingRectsForGlyphs(v105, kCTFontOrientationDefault, (v29 + 32), v109, Frame);
  v8 = CTFramesetterCreateWithAttributedString(attrString);
  fitRange.location = 0;
  fitRange.length = 0;
  v119.width = 1.79769313e308;
  v116.location = 0;
  v116.length = 0;
  v119.height = 1.79769313e308;
  v33 = CTFramesetterSuggestFrameSizeWithConstraints(v8, v116, 0, v119, &fitRange);
  width = v33.width;
  height = v33.height;
  v120.origin.x = 0.0;
  v120.origin.y = 0.0;
  v120.size.width = v33.width;
  v120.size.height = v33.height;
  v34 = CGPathCreateWithRect(v120, 0);
  v117.location = 0;
  v117.length = 0;
  Frame = CTFramesetterCreateFrame(v8, v117, v34, 0);
  v35 = CTFrameGetLines(Frame);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_48:

    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    MEMORY[0x1BFB45F20](v109, -1, -1);

    goto LABEL_110;
  }

  v102 = v34;
  v113[0] = 0;
  type metadata accessor for CTLine(0);
  sub_1BE052734();

  v29 = v113[0];
  if (!v113[0])
  {
    v35 = v8;
    v8 = v34;
    goto LABEL_48;
  }

  *&v110 = a1;
  *&v111 = a2;
  a1 = v113[0] & 0xFFFFFFFFFFFFFF8;
  if (v113[0] >> 62)
  {
    goto LABEL_123;
  }

  for (i = *((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    if ((i - 0x800000000000000) >> 60 != 15)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
    }

    v100 = v8;
    v101 = v30;
    v37 = swift_slowAlloc();
    v99 = Frame;
    v118.location = 0;
    v118.length = 0;
    v108 = v37;
    CTFrameGetLineOrigins(Frame, v118, v37);
    if (i < 0)
    {
      goto LABEL_125;
    }

    if (i)
    {
      Frame = 0;
      v30 = (v29 & 0xC000000000000001);
      do
      {
        if (v30)
        {
          v38 = MEMORY[0x1BFB40900](Frame, v29);
        }

        else
        {
          if (Frame >= *(a1 + 16))
          {
            goto LABEL_120;
          }

          v38 = *(v29 + 32 + 8 * Frame);
        }

        v39 = v38;
        StringRange = CTLineGetStringRange(v38);
        length = StringRange.length;
        v42 = StringRange.location + StringRange.length;
        if (__OFADD__(StringRange.location, StringRange.length))
        {
          goto LABEL_113;
        }

        location = StringRange.location;
        if (v42 < StringRange.location)
        {
          goto LABEL_114;
        }

        if (StringRange.location != v42)
        {
          if (StringRange.location >= v42)
          {
            goto LABEL_119;
          }

          p_x = &v108[Frame].x;
          v46 = *p_x;
          v45 = p_x[1];
          v8 = &v109[StringRange.location];
          do
          {
            v47 = location + 1;
            v48 = v46 + CTLineGetOffsetForStringIndex(v39, location, 0);
            v121 = CGRectOffset(*v8, v48, v45);
            *v8 = v121.origin.x;
            *(v8 + 8) = v121.origin.y;
            v8 += 32;
            location = v47;
            --length;
          }

          while (length);
        }

        ++Frame;
      }

      while (Frame != i);
    }

    v49 = BYTE7(v111) & 0xF;
    v113[0] = v110;
    v113[1] = v111;
    if ((v111 & 0x2000000000000000) == 0)
    {
      v49 = v110 & 0xFFFFFFFFFFFFLL;
    }

    v113[2] = 0;
    v113[3] = v49;
    sub_1BE048C84();
    v50 = sub_1BE052594();
    if (v51)
    {
      v52 = v50;
      v53 = v51;
      v54 = MEMORY[0x1E69E7CC0];
      do
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1BD03B038(0, *(v54 + 2) + 1, 1, v54);
        }

        v56 = *(v54 + 2);
        v55 = *(v54 + 3);
        if (v56 >= v55 >> 1)
        {
          v54 = sub_1BD03B038((v55 > 1), v56 + 1, 1, v54);
        }

        *(v54 + 2) = v56 + 1;
        v57 = &v54[16 * v56];
        *(v57 + 4) = v52;
        *(v57 + 5) = v53;
        v52 = sub_1BE052594();
        v53 = v58;
      }

      while (v58);
    }

    else
    {
      v54 = MEMORY[0x1E69E7CC0];
    }

    v30 = *(v54 + 2);
    if (!v30)
    {
      break;
    }

    v8 = 0;
    Frame = (v54 + 40);
    v29 = MEMORY[0x1E69E7CC0];
    while (v8 < *(v54 + 2))
    {
      a1 = *(Frame - 8);
      v59 = *Frame;
      v60 = &v109[v8];
      v110 = v60[1];
      v111 = *v60;
      sub_1BE048C84();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1BD1D7F34(0, *(v29 + 16) + 1, 1, v29);
      }

      v62 = *(v29 + 16);
      v61 = *(v29 + 24);
      if (v62 >= v61 >> 1)
      {
        v29 = sub_1BD1D7F34((v61 > 1), v62 + 1, 1, v29);
      }

      ++v8;
      *(v29 + 16) = v62 + 1;
      v63 = v29 + 48 * v62;
      *(v63 + 32) = a1;
      *(v63 + 40) = v59;
      *(v63 + 48) = v111;
      *(v63 + 64) = v110;
      Frame += 16;
      if (v30 == v8)
      {
        goto LABEL_60;
      }
    }

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
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    ;
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_60:

  v64 = *(v29 + 16);
  if (v64)
  {
    v30 = 0;
    v65 = v29 + 72;
    v66 = MEMORY[0x1E69E7CC0];
    while (v30 < *(v29 + 16))
    {
      MinX = CGRectGetMinX(*(v65 - 24));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1BD1D7E30(0, *(v66 + 2) + 1, 1, v66);
      }

      v8 = *(v66 + 2);
      v68 = *(v66 + 3);
      if (v8 >= v68 >> 1)
      {
        v66 = sub_1BD1D7E30((v68 > 1), v8 + 1, 1, v66);
      }

      ++v30;
      *(v66 + 2) = v8 + 1;
      *&v66[8 * v8 + 32] = MinX;
      v65 += 48;
      if (v64 == v30)
      {
        v30 = 0;
        v69 = v29 + 72;
        v8 = MEMORY[0x1E69E7CC0];
        while (v30 < *(v29 + 16))
        {
          MaxX = CGRectGetMaxX(*(v69 - 24));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1BD1D7E30(0, *(v8 + 16) + 1, 1, v8);
          }

          Frame = *(v8 + 16);
          v71 = *(v8 + 24);
          if (Frame >= v71 >> 1)
          {
            v8 = sub_1BD1D7E30((v71 > 1), Frame + 1, 1, v8);
          }

          ++v30;
          *(v8 + 16) = Frame + 1;
          *(v8 + 8 * Frame + 32) = MaxX;
          v69 += 48;
          if (v64 == v30)
          {
            v30 = 0;
            v72 = v29 + 72;
            Frame = MEMORY[0x1E69E7CC0];
            while (v30 < *(v29 + 16))
            {
              MinY = CGRectGetMinY(*(v72 - 24));
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                Frame = sub_1BD1D7E30(0, *(Frame + 16) + 1, 1, Frame);
              }

              v75 = *(Frame + 16);
              v74 = *(Frame + 24);
              if (v75 >= v74 >> 1)
              {
                Frame = sub_1BD1D7E30((v74 > 1), v75 + 1, 1, Frame);
              }

              ++v30;
              *(Frame + 16) = v75 + 1;
              *(Frame + 8 * v75 + 32) = MinY;
              v72 += 48;
              if (v64 == v30)
              {
                v30 = 0;
                a1 = v29 + 72;
                v76 = MEMORY[0x1E69E7CC0];
                while (v30 < *(v29 + 16))
                {
                  MaxY = CGRectGetMaxY(*(a1 - 24));
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v76 = sub_1BD1D7E30(0, *(v76 + 2) + 1, 1, v76);
                  }

                  v79 = *(v76 + 2);
                  v78 = *(v76 + 3);
                  if (v79 >= v78 >> 1)
                  {
                    v76 = sub_1BD1D7E30((v78 > 1), v79 + 1, 1, v76);
                  }

                  ++v30;
                  *(v76 + 2) = v79 + 1;
                  *&v76[8 * v79 + 32] = MaxY;
                  a1 += 48;
                  if (v64 == v30)
                  {
                    goto LABEL_91;
                  }
                }

                goto LABEL_118;
              }
            }

            goto LABEL_117;
          }
        }

        goto LABEL_116;
      }
    }

    goto LABEL_115;
  }

  Frame = MEMORY[0x1E69E7CC0];
  v66 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v76 = MEMORY[0x1E69E7CC0];
LABEL_91:

  v80 = COERCE_DOUBLE(sub_1BD5DD054(v8));
  v82 = v81;

  if ((v82 & 1) != 0 || (v83 = *(v66 + 2)) == 0)
  {

LABEL_107:

    v30 = v101;
    v32 = v105;
LABEL_108:
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    MEMORY[0x1BFB45F20](v108, -1, -1);

    goto LABEL_109;
  }

  v84 = *(v66 + 4);
  v85 = v83 - 1;
  if (v85)
  {
    v86 = (v66 + 40);
    do
    {
      v87 = *v86++;
      v88 = v87;
      if (v87 < v84)
      {
        v84 = v88;
      }

      --v85;
    }

    while (v85);
  }

  v89 = COERCE_DOUBLE(sub_1BD5DD054(v76));
  v91 = v90;

  if (v91)
  {
    goto LABEL_107;
  }

  v92 = *(Frame + 16);
  v30 = v101;
  v32 = v105;
  if (!v92)
  {

    goto LABEL_108;
  }

  v93 = *(Frame + 32);
  v94 = v92 - 1;
  if (v94)
  {
    v95 = (Frame + 40);
    do
    {
      v96 = *v95++;
      v97 = v96;
      if (v96 < v93)
      {
        v93 = v97;
      }

      --v94;
    }

    while (v94);
  }

  *a3 = v84;
  *(a3 + 8) = v93;
  *(a3 + 16) = v80 - v84;
  *(a3 + 24) = v89 - v93;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = width;
  *(a3 + 56) = height;
  *(a3 + 64) = v29;
  *(a3 + 72) = v99;
  v98 = v99;
  MEMORY[0x1BFB45F20](v108, -1, -1);

LABEL_109:
  MEMORY[0x1BFB45F20](v109, -1, -1);

LABEL_110:
}