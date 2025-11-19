void sub_220F753C4()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model;
  v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model + 48);
  if (v3)
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v4 = *(v2 + 40) & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = OUTLINED_FUNCTION_0_78();
      [v6 v7];
    }
  }

  if (!*(v2 + 32))
  {
    v10 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView, type metadata accessor for MapContinuousScaleView, sub_220ED0CF4);
    OUTLINED_FUNCTION_0_78();
    sub_220ED1320();
    goto LABEL_11;
  }

  if (*(v2 + 32) == 1)
  {
    v8 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView, type metadata accessor for MapDiscreteScaleView, sub_220E40618);
    v9 = OUTLINED_FUNCTION_0_78();
    sub_220E409C4(v9);

    v10 = *(v1 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView);
    sub_220E400C8();
LABEL_11:

    return;
  }

  if (([*(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_subtitleLabel) isHidden] & 1) == 0)
  {
    v11 = OUTLINED_FUNCTION_0_78();
    [v12 v13];
  }
}

id sub_220F755E8(unsigned __int8 *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = __src[96];
  memcpy(v10, (v1 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model), 0x61uLL);
  memcpy(v8, (v1 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model), sizeof(v8));
  sub_220E81E34(v10, v7);
  if ((sub_220FBB128(v8, __dst) & 1) == 0)
  {
    sub_220EA7278(v10);
    return sub_220F756F0();
  }

  v4 = v10[96];
  switch(v10[96])
  {
    case 5:
      result = sub_220EA7278(v10);
      if (v3 != 5)
      {
        return sub_220F756F0();
      }

      break;
    case 4:
      result = sub_220EA7278(v10);
      if (v3 != 4)
      {
        return sub_220F756F0();
      }

      break;
    case 3:
      result = sub_220EA7278(v10);
      if (v3 == 3)
      {
        return result;
      }

      return sub_220F756F0();
    default:
      result = sub_220EA7278(v10);
      if ((v3 - 6) > 0xFFFFFFFC || v4 != v3)
      {
        return sub_220F756F0();
      }

      break;
  }

  return result;
}

id sub_220F756F0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model];
  memcpy(__dst, &v0[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model], sizeof(__dst));
  sub_220E31B58(__dst, v31);
  if (qword_2812C78D8 != -1)
  {
    swift_once();
  }

  v31[0] = 0x616C696176616E75;
  v31[1] = 0xEB00000000656C62;
  v31[2] = 0;
  v31[3] = 0;
  v32 = 2;
  v33 = qword_2812CE540;
  v34 = *algn_2812CE548;
  v35 = MEMORY[0x277D84F90];
  v36 = 0;
  v37 = 0;
  v38 = xmmword_220FC8E20;

  v3 = sub_220FBB128(__dst, v31);
  sub_220E31784(v31);
  sub_220E31784(__dst);
  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleLabel];
  if (*(v2 + 6))
  {

    v5 = sub_220FC26C0();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText_];

  v6 = &property descriptor for MapLocationAccessibilityModel.expiration;
  [v4 setHidden_];
  if (v2[96] == 3 && (memcpy(v29, v2, sizeof(v29)), (v7 = v29[6]) != 0))
  {
    v8 = v29[5];
    sub_220E31B58(v29, v28);
    v6 = &property descriptor for MapLocationAccessibilityModel.expiration;
    v9 = sub_220FBB898(v8, v7);
    sub_220E31784(v29);
  }

  else
  {
    v9 = 0;
  }

  [v4 setAccessibilityAttributedLabel_];

  v10 = sub_220F76030();
  [v10 v6[277]];

  v11 = *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_subtitleLabel];
  v12 = v3 ^ 1;
  [v11 v6[277]];
  if ((v3 ^ 1))
  {
    v14 = 0;
  }

  else
  {
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v13 = qword_2812CE4B0;
    v25 = 0x8000000220FE5020;
    sub_220FBFF80();

    v14 = sub_220FC26C0();
  }

  [v11 setText_];

  if (!v2[32])
  {
    v19 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView, type metadata accessor for MapContinuousScaleView, sub_220ED0CF4);
    memcpy(v27, v2, sizeof(v27));
    memcpy(v28, &v19[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_scale], sizeof(v28));
    memmove(&v19[OBJC_IVAR____TtC11WeatherMaps22MapContinuousScaleView_scale], v2, 0x60uLL);
    sub_220E31B58(v27, v26);
    sub_220E31784(v28);
    sub_220ECFE90();

    [*&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView] v6[277]];
    v18 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView, type metadata accessor for MapDiscreteScaleView, sub_220E40618);
    [v18 v6[277]];
    goto LABEL_19;
  }

  if (v2[32] == 1)
  {
    v15 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView, type metadata accessor for MapContinuousScaleView, sub_220ED0CF4);
    [v15 v6[277]];

    v16 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView, type metadata accessor for MapDiscreteScaleView, sub_220E40618);
    [v16 v6[277]];

    v17 = *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView];
    memcpy(v27, v2, sizeof(v27));
    memcpy(v28, &v17[OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_scale], sizeof(v28));
    memmove(&v17[OBJC_IVAR____TtC11WeatherMaps20MapDiscreteScaleView_scale], v2, 0x60uLL);
    v18 = v17;
    sub_220E31B58(v27, v26);
    sub_220E31784(v28);
    sub_220E40224();
LABEL_19:

    goto LABEL_21;
  }

  v20 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView, type metadata accessor for MapContinuousScaleView, sub_220ED0CF4);
  [v20 v6[277]];

  v21 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView, type metadata accessor for MapDiscreteScaleView, sub_220E40618);
  [v21 v6[277]];

  [*&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView] v6[277]];
LABEL_21:
  [v1 setShowsLargeContentViewer_];
  if (*(v2 + 6))
  {

    v22 = sub_220FC26C0();
  }

  else
  {
    v22 = 0;
  }

  [v1 setLargeContentTitle_];

  v23 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v1 addInteraction_];

  return [v1 setNeedsLayout];
}

id sub_220F75DDC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_bounds);
}

id sub_220F75E8C(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_setBounds_, a1, a2, a3, a4);
  return sub_220F75EF8();
}

id sub_220F75EF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = objc_opt_self();
  [v3 begin];
  [v3 setDisableActions_];
  v4 = [v0 layer];
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_bounds);
  v9 = [objc_opt_self() bezierPathWithRect_];
  v10 = [v9 CGPath];

  [v4 setShadowPath_];
  return [v3 commit];
}

id sub_220F76030()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_220F760A4()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backgroundEffectManagerVibrancy;
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backgroundEffectManagerVibrancy))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backgroundEffectManagerVibrancy);
  }

  else
  {
    v3 = v0;
    type metadata accessor for BackgroundEffectManager();
    swift_allocObject();
    v2 = sub_220E3D348(2, 0xD000000000000017, 0x8000000220FE2560);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_220F7613C()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backdropLayerVibrancy;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backdropLayerVibrancy);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backdropLayerVibrancy);
  }

  else
  {
    v4 = v0;
    sub_220F760A4();
    v5 = sub_220E3D3CC();

    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_220F761B4()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___titleVibrancyEffectView;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___titleVibrancyEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___titleVibrancyEffectView);
  }

  else
  {
    v4 = v0;
    sub_220F760A4();
    v5 = sub_220E3D488(0, 1);

    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_220F76234(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(_BYTE *, void *))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = v3;
    memcpy(__dst, (v3 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model), sizeof(__dst));
    sub_220E31B58(__dst, &v16);
    v10 = sub_220F760A4();
    v11 = objc_allocWithZone(a2(0));
    v12 = a3(__dst, v10);
    v13 = *(v9 + v4);
    *(v9 + v4) = v12;
    v6 = v12;

    v5 = 0;
  }

  v14 = v5;
  return v6;
}

id sub_220F762FC(const void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleHeight] = 0x4040000000000000;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_maximumWidth] = 0x4062000000000000;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_minimumWidth] = 0x4055400000000000;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_padding] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleDividerSpacing] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backgroundEffectManagerVibrancy] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backdropLayerVibrancy] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___titleVibrancyEffectView] = 0;
  v4 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleLabel;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_subtitleLabel;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView] = 0;
  memcpy(&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model], a1, 0x61uLL);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220F7646C();

  return v6;
}

void sub_220F7646C()
{
  v1 = v0;
  if ((sub_220FC2300() & 1) == 0)
  {
    v2 = [v0 layer];
    [v2 setBorderWidth_];

    v3 = [v1 layer];
    v4 = [objc_opt_self() quaternaryLabelColor];
    v5 = [v1 traitCollection];
    v6 = [v4 resolvedColorWithTraitCollection_];

    v7 = [v6 CGColor];
    [v3 setBorderColor_];
  }

  v8 = [v1 layer];
  v9 = objc_opt_self();
  v10 = [v9 blackColor];
  v11 = [v10 colorWithAlphaComponent_];

  v12 = [v11 CGColor];
  [v8 setShadowColor_];

  v13 = [v1 layer];
  [v13 setShadowOffset_];

  v14 = [v1 layer];
  [v14 setShadowRadius_];

  v15 = [v1 layer];
  v16 = sub_220F7613C();
  [v15 addSublayer_];

  v17 = sub_220F76030();
  v18 = [v9 systemFillColor];
  [v17 setBackgroundColor_];

  v19 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v20 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView;
  v21 = [*&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView] layer];
  [v21 addSublayer_];

  v22 = [v9 systemFillColor];
  v23 = [v22 CGColor];

  [v19 setBackgroundColor_];
  v24 = sub_220FC26C0();
  [v19 setCompositingFilter_];

  [v1 addSubview_];
  v25 = *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleLabel];
  sub_220E41E50();
  v26 = *MEMORY[0x277D76938];
  v27 = sub_220E417BC(*MEMORY[0x277D76938], 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D74410]);
  [v25 setFont_];

  [v25 setAdjustsFontSizeToFitWidth_];
  [v25 setMinimumScaleFactor_];
  v28 = [v9 labelColor];
  [v25 setTextColor_];

  v29 = sub_220F761B4();
  v30 = [v29 contentView];

  [v30 addSubview_];
  [v1 addSubview_];
  v31 = *&v1[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_subtitleLabel];
  v32 = sub_220E417BC(v26, 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D74418]);
  [v31 setFont_];

  [v31 setAdjustsFontSizeToFitWidth_];
  [v31 setAllowsDefaultTighteningForTruncation_];
  [v31 setMinimumScaleFactor_];
  [v31 setAlpha_];
  [v1 addSubview_];
  v33 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView, type metadata accessor for MapContinuousScaleView, sub_220ED0CF4);
  [v1 addSubview_];

  v34 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView, type metadata accessor for MapDiscreteScaleView, sub_220E40618);
  [v1 addSubview_];

  sub_220F756F0();
  v35 = [objc_opt_self() defaultCenter];
  [v35 addObserver:v1 selector:sel_handleInvertColorsStatusDidChangeWithNotification_ name:*MEMORY[0x277D76480] object:0];
}

void sub_220F76AD4()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleHeight) = 0x4040000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_maximumWidth) = 0x4062000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_minimumWidth) = 0x4055400000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_padding) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleDividerSpacing) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backgroundEffectManagerVibrancy) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___backdropLayerVibrancy) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___titleVibrancyEffectView) = 0;
  v1 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_subtitleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView) = 0;
  sub_220FC3740();
  __break(1u);
}

void sub_220F76C2C()
{
  ObjectType = swift_getObjectType();
  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_bounds);
  sub_220F76C90(v2, v3);
}

void sub_220F76C90(double a1, double a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_220F7613C();
  [v7 setFrame_];

  v8 = *&v3[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_titleLabel];
  v9 = 10.0;
  if (([v8 isHidden] & 1) == 0)
  {
    [v8 sizeThatFits_];
    v11 = v10;
    v12 = sub_220F761B4();
    [v12 bounds];
    [v12 setBounds_];

    v13 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___titleVibrancyEffectView;
    [*&v3[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___titleVibrancyEffectView] setCenter_];
    [*&v3[v13] bounds];
    [v8 setFrame_];
    v14 = sub_220F76030();
    [*&v3[v13] &selRef_initForTextStyle_];
    v15 = CGRectGetMaxY(v30) + 10.0;
    v29.receiver = v3;
    v29.super_class = ObjectType;
    objc_msgSendSuper2(&v29, sel_bounds);
    [v14 setFrame_];

    [*&v3[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___separatorView] &selRef_initForTextStyle_];
    v9 = CGRectGetMaxY(v32) + 10.0;
  }

  v16 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView, type metadata accessor for MapContinuousScaleView, sub_220ED0CF4);
  v17 = [v16 isHidden];

  if ((v17 & 1) == 0)
  {
    v21 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView;
    v22 = *&v3[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___continuousScaleView];
    sub_220ED1320();
    v24 = v23;

    v25 = *&v3[v21];
    [v25 bounds];
    [v25 setBounds_];

    [*&v3[v21] setCenter_];
LABEL_9:
    v20 = *&v3[v21];
    goto LABEL_10;
  }

  v18 = sub_220F76234(&OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView, type metadata accessor for MapDiscreteScaleView, sub_220E40618);
  v19 = [v18 isHidden];

  if ((v19 & 1) == 0)
  {
    v21 = OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView;
    v26 = *&v3[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView____lazy_storage___discreteScaleView];
    sub_220E409C4(a1 + -20.0);

    v27 = *&v3[v21];
    [v27 bounds];
    [v27 setBounds_];

    v28 = *&v3[v21];
    [v28 bounds];
    [v28 setCenter_];

    goto LABEL_9;
  }

  v20 = *&v3[OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_subtitleLabel];
  if ([v20 isHidden])
  {
    return;
  }

  [v20 sizeThatFits_];
  [v20 bounds];
  [v20 setBounds_];
  [v20 bounds];
  [v20 setCenter_];
LABEL_10:
  [v20 frame];
  CGRectGetMaxY(v35);
}

uint64_t sub_220F77328(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v40 = MEMORY[0x277D84F90];
  sub_220F0B298(0, v1, 0);
  v2 = v40;
  result = sub_220F7BC80();
  v7 = result;
  v8 = 0;
  v9 = v3 + 64;
  v26 = v5;
  v27 = v1;
  v25 = v3 + 72;
  v28 = v3 + 64;
  v29 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (*(v3 + 36) != v5)
    {
      goto LABEL_23;
    }

    v32 = v5;
    v30 = v6;
    v31 = v8;
    v11 = (*(v3 + 48) + 16 * v7);
    v12 = v11[1];
    v33 = *v11;
    v13 = *(v3 + 56) + 96 * v7;
    memcpy(__dst, v13, sizeof(__dst));
    v36 = *(v13 + 32);
    v34 = *(v13 + 72);
    v35 = *(v13 + 88);
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    __src[2] = v36;
    __src[3] = __dst[3];
    *&__src[4] = *&__dst[4];
    *(&__src[5] + 1) = v35;
    *(&__src[4] + 8) = v34;
    swift_bridgeObjectRetain_n();
    sub_220E31B58(__dst, v39);
    sub_220E31B58(__src, v39);

    memcpy(v39, __src, 0x60uLL);
    result = sub_220E31784(v39);
    v40 = v2;
    v15 = *(v2 + 16);
    v14 = *(v2 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_220F0B298((v14 > 1), v15 + 1, 1);
      v2 = v40;
    }

    *(v2 + 16) = v15 + 1;
    v16 = v2 + 16 * v15;
    *(v16 + 32) = v33;
    *(v16 + 40) = v12;
    v3 = v29;
    v17 = 1 << *(v29 + 32);
    if (v7 >= v17)
    {
      goto LABEL_24;
    }

    v9 = v28;
    v18 = *(v28 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (*(v29 + 36) != v32)
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v17 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_220EDAB04(v7, v32, v30 & 1);
          v17 = __clz(__rbit64(v23)) + v20;
          goto LABEL_19;
        }
      }

      result = sub_220EDAB04(v7, v32, v30 & 1);
    }

LABEL_19:
    v6 = 0;
    v8 = v31 + 1;
    v7 = v17;
    v5 = v26;
    if (v31 + 1 == v27)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_220F7764C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_220F0B4A8(0, v1, 0);
  v2 = v29;
  result = sub_220F7BC80();
  v7 = result;
  v8 = 0;
  v9 = a1 + 64;
  v24 = v1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_24;
      }

      v25 = v6;
      v26 = v8;
      v27 = v5;
      v11 = *(a1 + 56) + 32 * v7;
      v12 = *(v11 + 16);
      v28 = *(v11 + 24);
      v13 = *(v29 + 16);
      v14 = *(v29 + 24);
      result = v12;
      if (v13 >= v14 >> 1)
      {
        result = sub_220F0B4A8((v14 > 1), v13 + 1, 1);
      }

      *(v29 + 16) = v13 + 1;
      v15 = v29 + 16 * v13;
      *(v15 + 32) = v12;
      *(v15 + 40) = v28;
      v16 = 1 << *(a1 + 32);
      if (v7 >= v16)
      {
        goto LABEL_25;
      }

      v9 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v10);
      if ((v17 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v27)
      {
        goto LABEL_27;
      }

      v18 = v17 & (-2 << (v7 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (a1 + 72 + 8 * v10);
        while (v20 < (v16 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_220EDAB04(v7, v27, v25 & 1);
            v16 = __clz(__rbit64(v22)) + v19;
            goto LABEL_18;
          }
        }

        result = sub_220EDAB04(v7, v27, v25 & 1);
      }

LABEL_18:
      v8 = v26 + 1;
      if (v26 + 1 == v24)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(a1 + 36);
      v7 = v16;
      if (v16 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

BOOL sub_220F7788C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_220FC1070() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_220F77960(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v18 = *v6;
    v9 = OUTLINED_FUNCTION_50_0();
    sub_220EE8D08(v9, v10);
    v11 = a1(&v18);
    if (v3)
    {
      v15 = OUTLINED_FUNCTION_50_0();
      sub_220E5E3BC(v15, v16);
      return v7 != 0;
    }

    v12 = v11;
    v13 = OUTLINED_FUNCTION_50_0();
    sub_220E5E3BC(v13, v14);
    ++v6;
  }

  while ((v12 & 1) == 0);
  return v7 != 0;
}

BOOL sub_220F77A20(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

char *sub_220F77B00(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_220FC34C0();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_220F0B1A0(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v12;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D9CB30](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      a2(0);
      swift_dynamicCast();
      v12 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_220F0B1A0((v9 > 1), v10 + 1, 1);
        v5 = v12;
      }

      ++v7;
      *(v5 + 16) = v10 + 1;
      sub_220E5D784(&v11, (v5 + 32 * v10 + 32));
    }

    while (v4 != v7);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_220F77C58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v30 = MEMORY[0x277D84F90];
    sub_220F0B4C8(0, v1, 0);
    v2 = v30;
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v28 = &type metadata for WeatherMapOverlayRegionMetadata;
      v29 = &off_2834842F0;
      v9 = swift_allocObject();
      v27[0] = v9;
      v9[2] = v5;
      v9[3] = v6;
      v9[4] = v7;
      v9[5] = v8;
      v30 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      v23 = v11 + 1;

      v12 = &type metadata for WeatherMapOverlayRegionMetadata;
      if (v11 >= v10 >> 1)
      {
        sub_220F0B4C8((v10 > 1), v23, 1);
        v12 = v28;
        v2 = v30;
      }

      v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v12);
      v22[1] = v22;
      v14 = MEMORY[0x28223BE20](v13, v13);
      v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16, v14);
      v18 = *v16;
      v19 = *(v16 + 3);
      v25 = &type metadata for WeatherMapOverlayRegionMetadata;
      v26 = &off_2834842F0;
      v20 = swift_allocObject();
      *&v24 = v20;
      *(v20 + 16) = v18;
      *(v20 + 24) = *(v16 + 8);
      *(v20 + 40) = v19;
      *(v2 + 16) = v23;
      sub_220E1E72C(&v24, v2 + 40 * v11 + 32);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t WeatherMapOverlayTileColorFormat.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_220FC37A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_220F77F38(uint64_t a1)
{
  v2 = sub_220F7BDA4();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_220F77F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_220F7BDA4();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_220F77FE8(uint64_t a1)
{
  v2 = sub_220F7BDA4();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

uint64_t WeatherMapOverlayTileColorFormat.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E30;
  v3 = MEMORY[0x277D837D0];
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = v3;
  *(inited + 48) = 0x6C61637379617267;
  *(inited + 56) = 0xEB00000000327665;
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F538);
  a1[4] = sub_220F78140();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

unint64_t sub_220F78140()
{
  result = qword_2812C5F88;
  if (!qword_2812C5F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9F538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5F88);
  }

  return result;
}

unint64_t sub_220F781A4()
{
  result = qword_27CF9F540;
  if (!qword_27CF9F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F540);
  }

  return result;
}

uint64_t sub_220F78214()
{
  sub_220F7BD50();

  return sub_220FC1290();
}

_BYTE *storeEnumTagSinglePayload for WeatherMapOverlayTileColorFormat(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_220F78310(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_220FC1570();

  v12 = sub_220FC13B0();
  sub_220FC1490();

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  *(v13 + 48) = a1;
  *(v13 + 56) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_220F7BAA8;
  *(v14 + 24) = v13;
  sub_220EA10E4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F548);
  v15 = sub_220FC14B0();

  return v15;
}

uint64_t sub_220F784E4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  if (qword_2812C5EA8 != -1)
  {
    swift_once();
  }

  v6 = sub_220FC17A0();
  __swift_project_value_buffer(v6, qword_2812C5EB0);
  v7 = sub_220FC1780();
  v8 = sub_220FC2E30();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_220E15000, v7, v8, "Receiving metadata request", v9, 2u);
    MEMORY[0x223D9DDF0](v9, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
  v11[0] = v3;
  v11[1] = v4;
  v12 = v5;
  return sub_220E61418(v11);
}

uint64_t sub_220F78600@<X0>(char *__src@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[24])
  {
    memcpy(v11, __src + 120, sizeof(v11));
    v12 = __dst[24];
    v13 = *(__src + 200);
    v14 = *(__src + 27);
    __swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
    v6 = __swift_project_boxed_opaque_existential_1(a2 + 12, a2[15]);
    v7 = *(*v6 + 160);
    v8 = *(*v6 + 168);

    sub_220F5377C(v11, v7, v8);
  }

  memcpy(a3, __dst, 0x158uLL);
  return sub_220E62C10(__dst, v10);
}

uint64_t sub_220F786E8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a2 + 7, a2[10]);
  v49 = a1;
  sub_220E632B0(a1);
  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D070);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_220FC8E30;
    v8 = __swift_project_boxed_opaque_existential_1(a2 + 12, a2[15]);
    v10 = *(*v8 + 160);
    v9 = *(*v8 + 168);
    *(v6 + 32) = v10;
    *(v6 + 40) = v9;

    v7 = 1;
  }

  v56 = MEMORY[0x277D84F90];
  sub_220F0B488(0, v7, 0);
  v11 = v56;
  v12 = (v6 + 40);
  do
  {
    v13 = *(v12 - 1);
    v14 = *v12;

    v15 = sub_220F78BCC(v13, v14, v49, a3, a4);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v23 = *(v56 + 16);
    v22 = *(v56 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_220F0B488((v22 > 1), v23 + 1, 1);
    }

    *(v56 + 16) = v23 + 1;
    v24 = (v56 + 32 * v23);
    v24[4] = v15;
    v24[5] = v17;
    v24[6] = v19;
    v24[7] = v21;
    v12 += 2;
    --v7;
  }

  while (v7);

  if (qword_2812C5EA8 != -1)
  {
    swift_once();
  }

  v25 = sub_220FC17A0();
  __swift_project_value_buffer(v25, qword_2812C5EB0);

  sub_220EA10E4(a3, a4);
  v26 = sub_220FC1780();
  v27 = sub_220FC2E30();

  sub_220E5E3D0(a3, a4);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v59 = v29;
    *v28 = 136381187;
    type metadata accessor for MKMapRect(0);
    sub_220F7BAD4(&qword_2812C5B10, type metadata accessor for MKMapRect);
    v30 = sub_220FC38F0();
    v32 = sub_220E20FF8(v30, v31, &v59);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    v33 = *(v56 + 16);
    v34 = MEMORY[0x277D84F90];
    if (v33)
    {
      v48 = v29;
      v50 = v27;
      v52 = v26;
      v55 = MEMORY[0x277D84F90];
      sub_220F0B298(0, v33, 0);
      v34 = v55;
      v35 = v56 + 56;
      do
      {
        v36 = *(v35 - 8);
        v57 = *(v35 - 24);
        v58 = *(v35 - 16);
        swift_bridgeObjectRetain_n();

        sub_220F9DA88(v36);

        v38 = *(v55 + 16);
        v37 = *(v55 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_220F0B298((v37 > 1), v38 + 1, 1);
        }

        *(v55 + 16) = v38 + 1;
        v39 = v55 + 16 * v38;
        *(v39 + 32) = v57;
        *(v39 + 40) = v58;
        v35 += 32;
        --v33;
      }

      while (v33);
      v26 = v52;
      v27 = v50;
      v29 = v48;
    }

    v40 = MEMORY[0x223D9BED0](v34, MEMORY[0x277D837D0]);
    v42 = v41;

    v43 = sub_220E20FF8(v40, v42, &v59);

    *(v28 + 14) = v43;
    *(v28 + 22) = 2080;
    sub_220EA10E4(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E3A8);
    v44 = sub_220FC2750();
    v46 = sub_220E20FF8(v44, v45, &v59);

    *(v28 + 24) = v46;
    _os_log_impl(&dword_220E15000, v26, v27, "Got metadata for rect=%{private}s, regions=%{public}s, selectedCountryCode=%s", v28, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v29, -1, -1);
    MEMORY[0x223D9DDF0](v28, -1, -1);
  }

  return v11;
}

uint64_t sub_220F78BCC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v260 = a3;
  v9 = sub_220FC0EA0();
  v257 = *(v9 - 8);
  v258 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v256 = &v229 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812C5EA8 != -1)
  {
    swift_once();
  }

  v12 = sub_220FC17A0();
  v13 = __swift_project_value_buffer(v12, qword_2812C5EB0);

  sub_220EA10E4(a4, a5);
  v269 = v13;
  v14 = sub_220FC1780();
  v15 = sub_220FC2E30();

  sub_220E5E3D0(a4, a5);
  v16 = os_log_type_enabled(v14, v15);
  v264 = a4;
  v265 = a5;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v271[0] = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_220E20FF8(a1, a2, v271);
    *(v17 + 12) = 2082;
    *&v277[0] = a4;
    *(&v277[0] + 1) = a5;
    sub_220EA10E4(a4, a5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E3A8);
    v19 = sub_220FC2750();
    v21 = sub_220E20FF8(v19, v20, v271);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_220E15000, v14, v15, "Compose overlays. intersectingRegionIdentifier=%{public}s, selectedCountryCode=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v18, -1, -1);
    MEMORY[0x223D9DDF0](v17, -1, -1);
  }

  v22 = v260;
  v233 = *(v260 + 8);
  v24 = *(v260 + 24);
  v23 = *(v260 + 32);
  v25 = *(v260 + 40);
  v246 = *(v260 + 48);
  v27 = *(v260 + 56);
  v26 = *(v260 + 64);
  v250 = v25;
  v251 = v27;
  *&v252 = v26;
  v247 = *(v260 + 72);
  v248 = *(v260 + 80);
  v249 = *(v260 + 96);
  v245 = *(v260 + 104);
  v29 = *(v260 + 112);
  v28 = *(v260 + 120);
  v30 = *(v260 + 136);
  v235 = *(v260 + 128);
  v239 = v28;
  v240 = v30;
  v31 = *(v260 + 144);
  v236 = *(v260 + 152);
  v237 = *(v260 + 160);
  v238 = *(v260 + 176);
  v234 = *(v260 + 184);
  v32 = *(v260 + 192);
  *&v262 = *(v260 + 200);
  v33 = *(v260 + 216);
  v242 = *(v260 + 208);
  v243 = v31;
  v241 = v33;
  v254 = *(v260 + 224);
  v34 = *(v260 + 248);
  v255 = *(v260 + 240);
  v253 = v34;
  v263 = *(v260 + 256);
  memcpy(__dst, (v260 + 264), sizeof(__dst));
  v267 = a1;
  v268 = a2;
  *&v261 = v32;
  if (!v24)
  {
    v46 = sub_220FC1780();
    v47 = sub_220FC2E30();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_220E15000, v46, v47, "No airQuality overlay in metadata", v48, 2u);
      MEMORY[0x223D9DDF0](v48, -1, -1);
    }

    v42 = 0;
    v270 = MEMORY[0x277D84F90];
    if (!v29)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  if (v265 >= 2)
  {
    a1 = v264;
    a2 = v265;
  }

  v35 = sub_220FC1780();
  v36 = sub_220FC2E30();

  v37 = os_log_type_enabled(v35, v36);
  v244 = v29;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v277[0] = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_220E20FF8(a1, a2, v277);
    _os_log_impl(&dword_220E15000, v35, v36, "AirQuality overlay present in metadata. airQualityRegionIdentifier=%{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x223D9DDF0](v39, -1, -1);
    MEMORY[0x223D9DDF0](v38, -1, -1);
  }

  *&v277[0] = a1;
  *(&v277[0] + 1) = a2;
  MEMORY[0x28223BE20](v40, v41);
  *(&v229 - 2) = v277;
  v42 = 0;
  if (sub_220F77A20(sub_220F7BDF8, (&v229 - 4), v23))
  {
    v279[0] = v24;
    if (*(v24 + 16))
    {
      v43 = sub_220F19120(a1, a2);
      if (v44)
      {
        v266 = 0;
        v45 = (*(v24 + 56) + 96 * v43);
        goto LABEL_21;
      }
    }

    v49 = __swift_project_boxed_opaque_existential_1((v259.i64[0] + 96), *(v259.i64[0] + 120));
    if (*(v24 + 16))
    {
      v50 = *(*v49 + 160);
      v51 = *(*v49 + 168);

      v52 = sub_220F19120(v50, v51);
      v54 = v53;

      if (v54)
      {
        v266 = 0;
        v45 = (*(v24 + 56) + 96 * v52);
LABEL_21:
        memcpy(v271, v45, 0x60uLL);
        memcpy(v277, v45, 0x60uLL);
        v55 = v271[10];
        v56 = v271[11];
        LODWORD(v232) = LOBYTE(v271[9]);
        v230 = v271[7];
        v231 = v271[8];
        v57 = v271[5];
        v58 = v271[6];
        v59 = BYTE1(v271[4]);
        v60 = v271[4];
        v61 = v271[2];
        v62 = v271[3];
        v63 = v271[1];
        v270 = v271[0];
        sub_220E31B58(v271, v275);
        memcpy(v276, v277, sizeof(v276));
        v275[0] = v270;
        v275[1] = v63;
        v275[2] = v61;
        v275[3] = v62;
        LOBYTE(v275[4]) = v60;
        BYTE1(v275[4]) = v59;
        v275[5] = v57;
        v275[6] = v58;
        v275[7] = v230;
        v275[8] = v231;
        LOBYTE(v275[9]) = v232;
        v275[10] = v55;
        v275[11] = v56;
        sub_220ED6038(v276, v277, &qword_27CF9EF78);
        sub_220ED6038(v279, v277, &qword_27CF9F568);

        v64 = sub_220FC1780();
        v65 = sub_220FC2E30();
        sub_220E31784(v275);
        sub_220E3B2DC(v279, &qword_27CF9F568);

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *&v277[0] = v67;
          *v66 = 136446466;

          v68 = sub_220E20FF8(v270, v63, v277);

          *(v66 + 4) = v68;
          *(v66 + 12) = 2082;
          v69 = MEMORY[0x223D9BED0](v23, MEMORY[0x277D837D0]);
          v71 = sub_220E20FF8(v69, v70, v277);

          *(v66 + 14) = v71;
          _os_log_impl(&dword_220E15000, v64, v65, "Append airQuality overlay. scale=%{public}s, supportedRegions=%{public}s", v66, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D9DDF0](v67, -1, -1);
          MEMORY[0x223D9DDF0](v66, -1, -1);
        }

        a1 = v267;
        a2 = v268;
        v42 = v266;
        v29 = v244;
        sub_220F37CA4();
        v74 = *(v72 + 16);
        v73 = *(v72 + 24);
        v270 = v72;
        if (v74 >= v73 >> 1)
        {
          sub_220F37CA4();
          v270 = v226;
        }

        v274 = 1;
        memcpy(v271 + 7, v275, 0x60uLL);
        v277[0] = vextq_s8(v233, v233, 8uLL);
        *&v277[1] = 0;
        BYTE8(v277[1]) = 1;
        memcpy(&v277[1] + 9, v271, 0x67uLL);
        sub_220F3D824(v277);
        v75 = v270;
        *(v270 + 16) = v74 + 1;
        memcpy((v75 + 184 * v74 + 32), v277, 0xB8uLL);
        if (!v29)
        {
          goto LABEL_26;
        }

        goto LABEL_31;
      }
    }
  }

  v77 = sub_220F77328(v24);

  v78 = sub_220FC1780();
  v79 = sub_220FC2E30();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v270 = swift_slowAlloc();
    *&v277[0] = v270;
    *v80 = 136446466;
    v81 = MEMORY[0x277D837D0];
    v82 = MEMORY[0x223D9BED0](v23, MEMORY[0x277D837D0]);
    v84 = sub_220E20FF8(v82, v83, v277);

    *(v80 + 4) = v84;
    *(v80 + 12) = 2082;
    v85 = MEMORY[0x223D9BED0](v77, v81);
    v87 = v86;

    v88 = sub_220E20FF8(v85, v87, v277);

    *(v80 + 14) = v88;
    _os_log_impl(&dword_220E15000, v78, v79, "AirQuality does not match requested region identfier. supportedRegions=%{public}s, scaleIdentifiers=%{public}s", v80, 0x16u);
    v89 = v270;
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v89, -1, -1);
    MEMORY[0x223D9DDF0](v80, -1, -1);
  }

  else
  {
  }

  v270 = MEMORY[0x277D84F90];
  a1 = v267;
  a2 = v268;
  v29 = v244;
  if (!v244)
  {
LABEL_26:
    v76 = 0;
LABEL_45:

    v119 = sub_220FC1780();
    v120 = sub_220FC2E30();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&v277[0] = v122;
      *v121 = 136446210;
      v271[0] = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F130);
      v123 = sub_220FC2750();
      v125 = sub_220E20FF8(v123, v124, v277);

      *(v121 + 4) = v125;
      a1 = v267;
      _os_log_impl(&dword_220E15000, v119, v120, "No matching precipitation forecast overlay in metadata. scaleIdentifiers=%{public}s", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v122);
      MEMORY[0x223D9DDF0](v122, -1, -1);
      MEMORY[0x223D9DDF0](v121, -1, -1);
    }

    else
    {
    }

    v114 = v262;
    goto LABEL_49;
  }

LABEL_31:
  if (*(v29 + 16) && (v90 = sub_220F19120(a1, a2), (v91 & 1) != 0))
  {
    v266 = v42;
    v92 = (*(v29 + 56) + 96 * v90);
  }

  else
  {
    v93 = __swift_project_boxed_opaque_existential_1((v259.i64[0] + 96), *(v259.i64[0] + 120));
    if (!*(v29 + 16) || (v94 = *(*v93 + 160), v95 = *(*v93 + 168), , v96 = sub_220F19120(v94, v95), v98 = v97, , (v98 & 1) == 0))
    {
      v76 = sub_220F77328(v29);
      goto LABEL_45;
    }

    v266 = v42;
    v92 = (*(v29 + 56) + 96 * v96);
  }

  memcpy(v276, v92, sizeof(v276));
  memcpy(v277, v92, 0x60uLL);
  v99 = v276[10];
  v100 = v276[11];
  v233.i32[0] = LOBYTE(v276[9]);
  v232 = v276[8];
  v101 = v276[7];
  v102 = v276[5];
  v103 = v276[6];
  v104 = BYTE1(v276[4]);
  v105 = v276[4];
  v106 = v276[2];
  v107 = v276[3];
  v244 = v276[0];
  v108 = v276[1];
  sub_220E31B58(v276, v275);
  memcpy(v271, v277, 0x60uLL);
  v276[0] = v244;
  v276[1] = v108;
  v276[2] = v106;
  v276[3] = v107;
  LOBYTE(v276[4]) = v105;
  BYTE1(v276[4]) = v104;
  v276[5] = v102;
  v276[6] = v103;
  v276[7] = v101;
  v276[8] = v232;
  LOBYTE(v276[9]) = v233.i8[0];
  v276[10] = v99;
  v276[11] = v100;
  sub_220ED6038(v271, v277, &qword_27CF9EF78);
  v109 = sub_220FC1780();
  v110 = sub_220FC2E30();
  sub_220E31784(v276);
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *&v277[0] = v112;
    *v111 = 136446210;

    v113 = sub_220E20FF8(v244, v108, v277);

    *(v111 + 4) = v113;
    _os_log_impl(&dword_220E15000, v109, v110, "Append precipitation forecast overlay. scale=%{public}s", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v112);
    MEMORY[0x223D9DDF0](v112, -1, -1);
    MEMORY[0x223D9DDF0](v111, -1, -1);
  }

  a1 = v267;
  a2 = v268;
  v42 = v266;
  v114 = v262;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220F37CA4();
    v270 = v224;
  }

  v115 = *(v270 + 16);
  if (v115 >= *(v270 + 24) >> 1)
  {
    sub_220F37CA4();
    v270 = v225;
  }

  v274 = v245 & 1;
  memcpy(&v272[7], v276, 0x60uLL);
  LOBYTE(v275[0]) = v247 & 1;
  *&v277[0] = v250;
  *(v277 + 1) = v246;
  *(&v277[1] + 8) = vextq_s8(v248, v248, 8uLL);
  *&v277[1] = v251;
  *(&v277[2] + 1) = v249;
  LOBYTE(v277[3]) = v245 & 1;
  memcpy(&v277[3] + 1, v272, 0x67uLL);
  *(&v277[9] + 1) = v252;
  LOBYTE(v277[10]) = v247 & 1;
  sub_220F3D810(v277);
  v116 = v270;
  *(v270 + 16) = v115 + 1;
  v117 = memcpy((v116 + 184 * v115 + 32), v277, 0xB8uLL);
LABEL_49:
  v126 = v261;
  if (v261)
  {
    *&v277[0] = a1;
    *(&v277[0] + 1) = a2;
    MEMORY[0x28223BE20](v117, v118);
    *(&v229 - 2) = v277;
    if (sub_220F77A20(sub_220F7BCEC, (&v229 - 4), v114))
    {
      if (*(v126 + 16))
      {
        v127 = sub_220F19120(a1, a2);
        if (v128)
        {
          v266 = v42;
          v129 = (*(v126 + 56) + 96 * v127);
          goto LABEL_58;
        }
      }

      v131 = __swift_project_boxed_opaque_existential_1((v259.i64[0] + 96), *(v259.i64[0] + 120));
      if (*(v126 + 16))
      {
        v132 = *(*v131 + 160);
        v133 = *(*v131 + 168);

        v134 = sub_220F19120(v132, v133);
        v135 = v126;
        v137 = v136;

        if (v137)
        {
          v266 = v42;
          v129 = (*(v135 + 56) + 96 * v134);
LABEL_58:
          memcpy(v276, v129, sizeof(v276));
          memcpy(v277, v129, 0x60uLL);
          v138 = v276[10];
          v139 = v276[11];
          LODWORD(v261) = LOBYTE(v276[9]);
          v259.i64[0] = v276[8];
          v140 = v276[7];
          v141 = v276[5];
          v142 = v276[6];
          v143 = BYTE1(v276[4]);
          v144 = v276[4];
          v145 = v276[2];
          v146 = v276[3];
          *&v262 = v276[0];
          v147 = v276[1];
          sub_220E31B58(v276, v275);
          memcpy(v271, v277, 0x60uLL);
          v276[0] = v262;
          v276[1] = v147;
          v276[2] = v145;
          v276[3] = v146;
          LOBYTE(v276[4]) = v144;
          BYTE1(v276[4]) = v143;
          v276[5] = v141;
          v276[6] = v142;
          v276[7] = v140;
          v276[8] = v259.i64[0];
          LOBYTE(v276[9]) = v261;
          v276[10] = v138;
          v276[11] = v139;
          sub_220ED6038(v271, v277, &qword_27CF9EF78);
          v148 = sub_220FC1780();
          v149 = sub_220FC2E30();
          sub_220E31784(v276);
          if (os_log_type_enabled(v148, v149))
          {
            v150 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            *&v277[0] = v151;
            *v150 = 136446210;

            v152 = sub_220E20FF8(v262, v147, v277);

            *(v150 + 4) = v152;
            _os_log_impl(&dword_220E15000, v148, v149, "Append precipitation radar overlay. scale=%{public}s", v150, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v151);
            MEMORY[0x223D9DDF0](v151, -1, -1);
            MEMORY[0x223D9DDF0](v150, -1, -1);
          }

          v153 = v263;
          v154 = v241;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_220F37CA4();
            v270 = v227;
          }

          v155 = *(v270 + 16);
          if (v155 >= *(v270 + 24) >> 1)
          {
            sub_220F37CA4();
            v270 = v228;
          }

          v274 = v234 & 1;
          memcpy(&v273[7], v276, 0x60uLL);
          LOBYTE(v275[0]) = v236 & 1;
          *&v277[0] = v239;
          *(v277 + 1) = v235;
          *(&v277[1] + 8) = vextq_s8(v237, v237, 8uLL);
          *&v277[1] = v240;
          *(&v277[2] + 1) = v238;
          LOBYTE(v277[3]) = v234 & 1;
          memcpy(&v277[3] + 1, v273, 0x67uLL);
          *(&v277[9] + 1) = v243;
          LOBYTE(v277[10]) = v236 & 1;
          *(&v277[10] + 1) = v242;
          *&v277[11] = v154;
          sub_220E21C3C(v277);
          v156 = v270;
          *(v270 + 16) = v155 + 1;
          memcpy((v156 + 184 * v155 + 32), v277, 0xB8uLL);
          if (!v153)
          {
            goto LABEL_65;
          }

          goto LABEL_74;
        }

        v126 = v135;
      }
    }

    v130 = sub_220F77328(v126);
  }

  else
  {
    v114 = 0;
    v130 = 0;
  }

  v164 = sub_220FC1780();
  v165 = sub_220FC2E30();

  v166 = os_log_type_enabled(v164, v165);
  v266 = v42;
  if (v166)
  {
    v167 = swift_slowAlloc();
    v168 = v114;
    v169 = swift_slowAlloc();
    *&v277[0] = v169;
    *v167 = 136446466;
    v271[0] = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F130);
    v170 = sub_220FC2750();
    v172 = sub_220E20FF8(v170, v171, v277);

    *(v167 + 4) = v172;
    *(v167 + 12) = 2082;
    v271[0] = v168;

    v173 = sub_220FC2750();
    v175 = sub_220E20FF8(v173, v174, v277);

    *(v167 + 14) = v175;
    _os_log_impl(&dword_220E15000, v164, v165, "No matching precipitation radar overlay in metadata. scaleIdentifiers=%{public}s, supportedRegions=%{public}s", v167, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v169, -1, -1);
    MEMORY[0x223D9DDF0](v167, -1, -1);
  }

  else
  {
  }

  v153 = v263;
  if (!v263)
  {
LABEL_65:
    v157 = sub_220FC1780();
    v158 = sub_220FC2E30();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *&v277[0] = v160;
      *v159 = 136446210;
      v271[0] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F560);
      v161 = sub_220FC2750();
      v163 = sub_220E20FF8(v161, v162, v277);

      *(v159 + 4) = v163;
      _os_log_impl(&dword_220E15000, v157, v158, "No matching temperature overlay in metadata. scaleIdentifiers=%{public}s", v159, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v160);
      MEMORY[0x223D9DDF0](v160, -1, -1);
      MEMORY[0x223D9DDF0](v159, -1, -1);
    }

    goto LABEL_93;
  }

LABEL_74:

  v176 = sub_220FC1780();
  v177 = sub_220FC2E30();
  if (os_log_type_enabled(v176, v177))
  {
    v178 = swift_slowAlloc();
    *v178 = 0;
    _os_log_impl(&dword_220E15000, v176, v177, "Append temperature overlay.", v178, 2u);
    MEMORY[0x223D9DDF0](v178, -1, -1);
  }

  v179 = *(v153 + 16);
  v180 = 0uLL;
  v261 = 0u;
  v262 = xmmword_220FC8E20;
  if (!v179)
  {
    v185 = 0;
    v183 = 0;
    v259.i32[0] = 0;
    v184 = MEMORY[0x277D84F90];
    v186 = 2;
    v188 = 0xE800000000000000;
    goto LABEL_87;
  }

  v181 = sub_220F191E0(0);
  if ((v182 & 1) == 0)
  {

    if (!*(v153 + 16))
    {
      goto LABEL_85;
    }

    v189 = sub_220F191E0(1);
    if (v190)
    {
LABEL_84:
      memcpy(v277, (*(v153 + 56) + 96 * v189), 0x60uLL);
      v259.i32[0] = BYTE8(v277[4]);
      v183 = *&v277[4];
      v184 = *(&v277[3] + 1);
      v261 = *(&v277[2] + 8);
      v262 = v277[5];
      v185 = BYTE1(v277[2]);
      v186 = v277[2];
      v252 = v277[1];
      v188 = *(&v277[0] + 1);
      v187 = *&v277[0];
      sub_220E31B58(v277, v271);
      goto LABEL_88;
    }

    if (*(v153 + 16))
    {
      v186 = 2;
      v189 = sub_220F191E0(2);
      if (v191)
      {
        goto LABEL_84;
      }

      v185 = 0;
      v183 = 0;
      v259.i32[0] = 0;
      v184 = MEMORY[0x277D84F90];
    }

    else
    {
LABEL_85:
      v185 = 0;
      v183 = 0;
      v259.i32[0] = 0;
      v184 = MEMORY[0x277D84F90];
      v186 = 2;
    }

    v188 = 0xE800000000000000;
    v180 = 0uLL;
LABEL_87:
    v252 = v180;
    v187 = 0x6576697463616E69;
    goto LABEL_88;
  }

  memcpy(v277, (*(v153 + 56) + 96 * v181), 0x60uLL);
  sub_220E31B58(v277, v271);

  v259.i32[0] = BYTE8(v277[4]);
  v183 = *&v277[4];
  v184 = *(&v277[3] + 1);
  v261 = *(&v277[2] + 8);
  v262 = v277[5];
  v185 = BYTE1(v277[2]);
  v186 = v277[2];
  v252 = v277[1];
  v188 = *(&v277[0] + 1);
  v187 = *&v277[0];
LABEL_88:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220F37CA4();
    v270 = v220;
  }

  v192 = *(v270 + 16);
  if (v192 >= *(v270 + 24) >> 1)
  {
    sub_220F37CA4();
    v270 = v221;
  }

  LOBYTE(v271[0]) = v253 & 1;
  v277[0] = vextq_s8(v254, v254, 8uLL);
  *&v277[1] = v255;
  BYTE8(v277[1]) = v253 & 1;
  *&v277[2] = v187;
  *(&v277[2] + 1) = v188;
  v277[3] = v252;
  LOBYTE(v277[4]) = v186;
  BYTE1(v277[4]) = v185;
  *(&v277[4] + 8) = v261;
  *(&v277[5] + 1) = v184;
  *&v277[6] = v183;
  BYTE8(v277[6]) = v259.i8[0];
  v277[7] = v262;
  *&v277[8] = v263;
  sub_220F3D7FC(v277);
  v193 = v270;
  *(v270 + 16) = v192 + 1;
  memcpy((v193 + 184 * v192 + 32), v277, 0xB8uLL);
LABEL_93:
  memcpy(v276, __dst, 0x50uLL);
  v194 = v276[9];
  if (v276[9])
  {
    *&v262 = v276[0];
    v255 = v276[1];
    v263 = v276[2];
    v269 = v276[3];
    v254.i32[0] = LOBYTE(v276[4]);
    v259 = *&v276[5];
    *&v261 = v276[7];
    LODWORD(v253) = LOBYTE(v276[8]);
    v196 = v256;
    v195 = v257;
    v197 = v258;
    (*(v257 + 104))(v256, *MEMORY[0x277D7AAB0], v258);
    if (*(v194 + 16))
    {
      sub_220ED6038(v276, v277, &qword_27CF9F558);

      v198 = sub_220F1914C();
      if (v199)
      {
        memcpy(v277, (*(v194 + 56) + 96 * v198), 0x60uLL);
        sub_220E31B58(v277, v271);
        (*(v195 + 8))(v196, v197);
        sub_220E3B2DC(v276, &qword_27CF9F558);
        v200 = *(&v277[5] + 1);
        v201 = *&v277[5];
        LODWORD(v258) = BYTE8(v277[4]);
        v256 = *(&v277[2] + 1);
        v257 = *&v277[4];
        v251 = *(&v277[3] + 1);
        *&v252 = *&v277[3];
        LODWORD(v250) = BYTE1(v277[2]);
        v202 = v277[2];
        v204 = *(&v277[1] + 1);
        v203 = *&v277[1];
        v205 = *(&v277[0] + 1);
        v206 = *&v277[0];
LABEL_103:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_220F37CA4();
          v270 = v222;
        }

        v214 = *(v270 + 16);
        if (v214 >= *(v270 + 24) >> 1)
        {
          sub_220F37CA4();
          v270 = v223;
        }

        LOBYTE(v275[0]) = v253 & 1;
        LOBYTE(v271[0]) = v254.i8[0] & 1;
        *&v277[0] = v262;
        *(v277 + 1) = v255;
        *(&v277[1] + 8) = vextq_s8(v259, v259, 8uLL);
        *&v277[1] = v263;
        *(&v277[2] + 1) = v261;
        LOBYTE(v277[3]) = v253 & 1;
        *(&v277[3] + 1) = v206;
        *&v277[4] = v205;
        *(&v277[4] + 1) = v203;
        *&v277[5] = v204;
        BYTE8(v277[5]) = v202;
        BYTE9(v277[5]) = v250;
        *&v277[6] = v256;
        *(&v277[6] + 1) = v252;
        *&v277[7] = v251;
        *(&v277[7] + 1) = v257;
        LOBYTE(v277[8]) = v258;
        *(&v277[8] + 1) = v201;
        *&v277[9] = v200;
        *(&v277[9] + 1) = v269;
        LOBYTE(v277[10]) = v254.i8[0] & 1;
        *(&v277[10] + 1) = v194;
        sub_220F3D6EC(v277);
        v215 = v270;
        *(v270 + 16) = v214 + 1;
        memcpy((v215 + 184 * v214 + 32), v277, 0xB8uLL);
        goto LABEL_108;
      }

      sub_220E3B2DC(v276, &qword_27CF9F558);
    }

    else
    {
    }

    (*(v195 + 8))(v196, v197);
    v203 = 0;
    v204 = 0;
    LODWORD(v250) = 0;
    v256 = 0;
    v257 = 0;
    *&v252 = 0;
    LODWORD(v258) = 0;
    v200 = 1.0;
    v201 = 0;
    v251 = MEMORY[0x277D84F90];
    v202 = 2;
    v205 = 0xE800000000000000;
    v206 = 0x6576697463616E69;
    goto LABEL_103;
  }

  v207 = sub_220FC1780();
  v208 = sub_220FC2E30();
  if (os_log_type_enabled(v207, v208))
  {
    v209 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    *&v277[0] = v210;
    *v209 = 136446210;
    v271[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F550);
    v211 = sub_220FC2750();
    v213 = sub_220E20FF8(v211, v212, v277);

    *(v209 + 4) = v213;
    _os_log_impl(&dword_220E15000, v207, v208, "No matching wind overlay in metadata. scaleIdentifiers=%{public}s", v209, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v210);
    MEMORY[0x223D9DDF0](v210, -1, -1);
    MEMORY[0x223D9DDF0](v209, -1, -1);
  }

LABEL_108:
  v216 = v267;
  if (v265 == 1 || (v217 = sub_220FC0C30(), !v218))
  {
  }

  else
  {
    v216 = v217;
  }

  sub_220F7764C(*v22);
  return v216;
}

uint64_t sub_220F7A7CC@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(_BYTE *, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v7 = a3(__dst, a2);
  v8 = sub_220F77C58(v7);

  *a4 = v8;
  return result;
}

uint64_t sub_220F7A850(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  sub_220F784E4(&v3);
}

void *sub_220F7A894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = __swift_project_boxed_opaque_existential_1((v6 + 176), *(v6 + 200));
  if ((a4 | a3 | a5) < 0)
  {
    __break(1u);
  }

  else
  {
    sub_220F7A988(a6);
    sub_220E89220();
    v13 = v12;

    type metadata accessor for WeatherMapOverlayFrameBasedTaskDataProvider();
    swift_allocObject();
    return sub_220F916A8(v13);
  }

  return result;
}

uint64_t sub_220F7A988(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_220F0B468(0, v2, 0);
    result = v12;
    v4 = *(v12 + 16);
    v5 = 16 * v4;
    v6 = (a1 + 40);
    do
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *(v6 - 1);
      }

      else
      {
        v8 = *(v6 - 1) & 1;
      }

      v13 = result;
      v9 = *(result + 24);
      v10 = v4 + 1;
      if (v4 >= v9 >> 1)
      {
        sub_220F0B468((v9 > 1), v4 + 1, 1);
        result = v13;
      }

      *(result + 16) = v10;
      v11 = result + v5;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v5 += 16;
      v6 += 16;
      v4 = v10;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *sub_220F7AAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  result = OUTLINED_FUNCTION_27_13();
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_220F7A988(a4);
    v10 = OUTLINED_FUNCTION_13_23();
    v11 = a6(v10);

    type metadata accessor for WeatherMapOverlayFrameBasedTaskDataProvider();
    swift_allocObject();
    return sub_220F916A8(v11);
  }

  return result;
}

void *sub_220F7ABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  result = OUTLINED_FUNCTION_27_13();
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_220F7A988(a4);
    v10 = OUTLINED_FUNCTION_13_23();
    v11 = a6(v10);

    type metadata accessor for WeatherMapOverlayFrameBasedTaskDataProvider();
    swift_allocObject();
    return sub_220F916A8(v11);
  }

  return result;
}

uint64_t sub_220F7AC60@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v169 = a2;
  v175 = a3;
  memcpy(v183, __src, sizeof(v183));
  v176 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3_3();
  v161 = v6;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_8_22();
  v168 = v9;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_8_22();
  v160 = v12;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_8_22();
  v167 = v15;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_8_22();
  v159 = v18;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v19, v20);
  v166 = &v155 - v21;
  sub_220FC0E70();
  OUTLINED_FUNCTION_6();
  v164 = v23;
  v165 = v22;
  MEMORY[0x28223BE20](v22, v24);
  sub_220FC0CA0();
  OUTLINED_FUNCTION_6();
  v162 = v26;
  v163 = v25;
  MEMORY[0x28223BE20](v25, v27);
  v174 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v29 = v28;
  MEMORY[0x28223BE20](v30, v31);
  OUTLINED_FUNCTION_3_3();
  v158 = v32;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v33, v34);
  OUTLINED_FUNCTION_8_22();
  v172 = v35;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v36, v37);
  OUTLINED_FUNCTION_8_22();
  v39 = v38;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v40, v41);
  OUTLINED_FUNCTION_8_22();
  v157 = v42;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v43, v44);
  OUTLINED_FUNCTION_8_22();
  v171 = v45;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v46, v47);
  OUTLINED_FUNCTION_8_22();
  v49 = v48;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v50, v51);
  OUTLINED_FUNCTION_8_22();
  v156 = v52;
  OUTLINED_FUNCTION_64();
  v55 = MEMORY[0x28223BE20](v53, v54);
  v57 = &v155 - v56;
  MEMORY[0x28223BE20](v55, v58);
  OUTLINED_FUNCTION_8_22();
  v170 = v59;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v60, v61);
  v63 = &v155 - v62;
  v173 = __src;
  memcpy(v182, __src, sizeof(v182));
  v64 = sub_220E435CC(v182);
  v65 = sub_220E22B0C(v182);
  switch(v64)
  {
    case 1:
      OUTLINED_FUNCTION_10_27(v65);
      v76 = v49;
      sub_220FC0670();
      if (v64)
      {
        OUTLINED_FUNCTION_8_29();
        sub_220FC0C90();
        v77 = OUTLINED_FUNCTION_26_16();
        v78(v77);
        sub_220FC0E30();
        v79 = OUTLINED_FUNCTION_14_23();
        v80(v79);
      }

      OUTLINED_FUNCTION_24_16();
      sub_220FC01C0();
      sub_220FC0230();
      OUTLINED_FUNCTION_21_14(v111, 300.0);
      sub_220FC0220();
      v112 = OUTLINED_FUNCTION_3_44();
      v113(v112);
      v114 = *(v29 + 16);
      v89 = v167;
      OUTLINED_FUNCTION_18_16();
      v114();
      v115 = OUTLINED_FUNCTION_4_42();
      (v114)(v115);
      OUTLINED_FUNCTION_11_21();
      if (qword_2812C5EA8 != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v116 = sub_220FC17A0();
      v92 = __swift_project_value_buffer(v116, qword_2812C5EB0);
      v93 = v157;
      OUTLINED_FUNCTION_18_16();
      v114();
      v117 = v160;
      sub_220E5ADF8(v89, v160);
      OUTLINED_FUNCTION_28_14(v181);
      v118 = sub_220E22B0C(v181);
      sub_220ED6038(v118, v180, &qword_27CF9E3A0);
      v119 = sub_220FC1780();
      v120 = sub_220FC2E30();
      v172 = v76;
      v121 = v120;
      sub_220E56918(v64);
      if (os_log_type_enabled(v119, v121))
      {
        swift_slowAlloc();
        v170 = OUTLINED_FUNCTION_33_8();
        v178 = v170;
        OUTLINED_FUNCTION_17_16(4.8754e-34);
        OUTLINED_FUNCTION_28_14(v179);
        v122 = sub_220E22B0C(v179);
        sub_220ED6038(v122, v180, &qword_27CF9E3A0);
        sub_220E568C4();
        sub_220FC38F0();
        OUTLINED_FUNCTION_12_23();
        OUTLINED_FUNCTION_32_12();
        sub_220E56918(v180);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        OUTLINED_FUNCTION_23_14();
        OUTLINED_FUNCTION_1_66();
        sub_220F7BAD4(v123, v124);
        OUTLINED_FUNCTION_30_11();
        v125 = OUTLINED_FUNCTION_5_33();
        v93(v125);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        OUTLINED_FUNCTION_20_17();
        OUTLINED_FUNCTION_0_79();
        sub_220F7BAD4(v126, v127);
        OUTLINED_FUNCTION_31_11();
        OUTLINED_FUNCTION_12_23();
        sub_220E83244(v117);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        *(v89 + 24) = v177;
        OUTLINED_FUNCTION_16_16(&dword_220E15000, v128, v129, "Returning time constraints for precipitation radar. metadata=%{public}s, current=%{public}s, timeConstraints=%{public}s");
        OUTLINED_FUNCTION_36_9();
        OUTLINED_FUNCTION_29_12();
        v130 = v89;
        v89 = v167;
        MEMORY[0x223D9DDF0](v130, -1, -1);

        v131 = v171;
        goto LABEL_23;
      }

      sub_220E83244(v117);
      v132 = OUTLINED_FUNCTION_25_17();
      v92(v132);
      v133 = v171;
      goto LABEL_26;
    case 2:
      OUTLINED_FUNCTION_10_27(v65);
      sub_220FC0670();
      if (v64)
      {
        OUTLINED_FUNCTION_8_29();
        sub_220FC0C90();
        v81 = OUTLINED_FUNCTION_26_16();
        v82(v81);
        sub_220FC0E40();
        v83 = OUTLINED_FUNCTION_14_23();
        v84(v83);
      }

      OUTLINED_FUNCTION_24_16();
      sub_220FC01C0();
      sub_220FC0230();
      OUTLINED_FUNCTION_21_14(v134, 3600.0);
      sub_220FC0220();
      v135 = OUTLINED_FUNCTION_3_44();
      v136(v135);
      v137 = *(v29 + 16);
      v89 = v166;
      OUTLINED_FUNCTION_18_16();
      v137();
      v138 = OUTLINED_FUNCTION_4_42();
      (v137)(v138);
      OUTLINED_FUNCTION_11_21();
      if (qword_2812C5EA8 != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v139 = sub_220FC17A0();
      v92 = __swift_project_value_buffer(v139, qword_2812C5EB0);
      v93 = v156;
      OUTLINED_FUNCTION_18_16();
      v137();
      v140 = v159;
      sub_220E5ADF8(v89, v159);
      OUTLINED_FUNCTION_28_14(v181);
      v141 = sub_220E22B0C(v181);
      sub_220E21C98(v141, v180);
      v142 = sub_220FC1780();
      v143 = sub_220FC2E30();
      v172 = v63;
      v144 = v143;
      sub_220E56918(v64);
      if (os_log_type_enabled(v142, v144))
      {
        swift_slowAlloc();
        v171 = OUTLINED_FUNCTION_33_8();
        v178 = v171;
        OUTLINED_FUNCTION_17_16(4.8754e-34);
        OUTLINED_FUNCTION_28_14(v179);
        v145 = sub_220E22B0C(v179);
        sub_220E21C98(v145, v180);
        sub_220E568C4();
        sub_220FC38F0();
        OUTLINED_FUNCTION_12_23();
        OUTLINED_FUNCTION_32_12();
        sub_220E56918(v180);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        OUTLINED_FUNCTION_23_14();
        OUTLINED_FUNCTION_1_66();
        sub_220F7BAD4(v146, v147);
        OUTLINED_FUNCTION_30_11();
        v148 = OUTLINED_FUNCTION_5_33();
        v93(v148);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        OUTLINED_FUNCTION_20_17();
        OUTLINED_FUNCTION_0_79();
        sub_220F7BAD4(v149, v150);
        OUTLINED_FUNCTION_31_11();
        OUTLINED_FUNCTION_12_23();
        sub_220E83244(v140);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        *(v89 + 24) = v177;
        OUTLINED_FUNCTION_16_16(&dword_220E15000, v151, v152, "Returning time constraints for precipitation forecast. metadata=%{public}s, current=%{public}s, timeConstraints=%{public}s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_29_12();
        v153 = v89;
        v89 = v166;
        MEMORY[0x223D9DDF0](v153, -1, -1);

        v131 = v170;
LABEL_23:
        (v93)(v131, v57);
        v108 = v172;
        goto LABEL_24;
      }

      sub_220E83244(v140);
      v154 = OUTLINED_FUNCTION_25_17();
      v92(v154);
      v133 = v170;
LABEL_26:
      (v92)(v133, v57);
      v110 = v172;
      goto LABEL_27;
    case 4:
      OUTLINED_FUNCTION_10_27(v65);
      sub_220FC0670();
      if (v64)
      {
        OUTLINED_FUNCTION_8_29();
        sub_220FC0C90();
        v72 = OUTLINED_FUNCTION_26_16();
        v73(v72);
        sub_220FC0DD0();
        v74 = OUTLINED_FUNCTION_14_23();
        v75(v74);
      }

      OUTLINED_FUNCTION_24_16();
      sub_220FC01C0();
      sub_220FC0230();
      OUTLINED_FUNCTION_21_14(v85, 3600.0);
      sub_220FC0220();
      v86 = OUTLINED_FUNCTION_3_44();
      v87(v86);
      v88 = *(v29 + 16);
      v89 = v168;
      OUTLINED_FUNCTION_18_16();
      v88();
      v90 = OUTLINED_FUNCTION_4_42();
      (v88)(v90);
      OUTLINED_FUNCTION_11_21();
      if (qword_2812C5EA8 != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v91 = sub_220FC17A0();
      v92 = __swift_project_value_buffer(v91, qword_2812C5EB0);
      v93 = v158;
      OUTLINED_FUNCTION_18_16();
      v88();
      v94 = v161;
      sub_220E5ADF8(v89, v161);
      OUTLINED_FUNCTION_28_14(v181);
      v95 = sub_220E22B0C(v181);
      sub_220ED6038(v95, v180, &qword_27CF9E398);
      v96 = sub_220FC1780();
      v97 = sub_220FC2E30();
      v171 = v39;
      v98 = v97;
      sub_220E56918(v64);
      if (os_log_type_enabled(v96, v98))
      {
        swift_slowAlloc();
        v170 = OUTLINED_FUNCTION_33_8();
        v178 = v170;
        OUTLINED_FUNCTION_17_16(4.8754e-34);
        OUTLINED_FUNCTION_28_14(v179);
        v99 = sub_220E22B0C(v179);
        sub_220ED6038(v99, v180, &qword_27CF9E398);
        sub_220E568C4();
        sub_220FC38F0();
        OUTLINED_FUNCTION_12_23();
        OUTLINED_FUNCTION_32_12();
        sub_220E56918(v180);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        OUTLINED_FUNCTION_23_14();
        OUTLINED_FUNCTION_1_66();
        sub_220F7BAD4(v100, v101);
        OUTLINED_FUNCTION_30_11();
        v102 = OUTLINED_FUNCTION_5_33();
        v93(v102);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        OUTLINED_FUNCTION_20_17();
        OUTLINED_FUNCTION_0_79();
        sub_220F7BAD4(v103, v104);
        OUTLINED_FUNCTION_31_11();
        OUTLINED_FUNCTION_12_23();
        sub_220E83244(v94);
        OUTLINED_FUNCTION_6_28();
        OUTLINED_FUNCTION_22_15();
        *(v89 + 24) = v177;
        OUTLINED_FUNCTION_16_16(&dword_220E15000, v105, v106, "Returning time constraints for animated wind. metadata=%{public}s, current=%{public}s, timeConstraints=%{public}s");
        OUTLINED_FUNCTION_36_9();
        OUTLINED_FUNCTION_29_12();
        v107 = v89;
        v89 = v168;
        MEMORY[0x223D9DDF0](v107, -1, -1);

        (v93)(v172, v57);
        v108 = v171;
LABEL_24:
        (v93)(v108, v57);
      }

      else
      {

        sub_220E83244(v94);
        v109 = OUTLINED_FUNCTION_25_17();
        v92(v109);
        (v92)(v172, v57);
        v110 = v171;
LABEL_27:
        (v92)(v110, v57);
      }

      return sub_220E5AE74(v89, v175);
    default:
      v66 = *(v29 + 16);
      v68 = v174;
      v67 = v175;
      v69 = v169;
      v66(v175, v169, v174);
      v70 = v176;
      result = (v66)(v67 + *(v176 + 20), v69, v68);
      *(v67 + *(v70 + 24)) = 0;
      *(v67 + *(v70 + 28)) = 0;
      return result;
  }
}

uint64_t sub_220F7B998()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0(v0 + 176);

  return v0;
}

uint64_t sub_220F7B9E8()
{
  sub_220F7B998();

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t sub_220F7BA40()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = v1;
  return sub_220F784E4(&v3);
}

uint64_t sub_220F7BAD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220F7BB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  switch(a2)
  {
    case 2:
      return a4 == 2;
    case 3:
      return a4 == 3;
    case 4:
      return a4 == 4;
    case 5:
      return a4 == 5;
    case 6:
      return a4 == 6;
    default:
      if ((a4 - 2) < 5)
      {
        return 0;
      }

      if (a2 != 1)
      {
        if (a4 == 1)
        {
          sub_220EA10E4(a3, 1);
        }

        else
        {
          sub_220EA10E4(a3, a4);
          OUTLINED_FUNCTION_50_0();
          v8 = sub_220FC0C10();
          sub_220E5E3BC(a3, v4);
          if (v8)
          {
            return 1;
          }
        }

        return 0;
      }

      if (a4 != 1)
      {
        return 0;
      }

      sub_220EA10E4(a3, 1);
      return v4;
  }
}

uint64_t sub_220F7BC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_220FC3940() & 1;
  }
}

unint64_t sub_220F7BD0C()
{
  result = qword_2812C5B78;
  if (!qword_2812C5B78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5B78);
  }

  return result;
}

unint64_t sub_220F7BD50()
{
  result = qword_2812C8448[0];
  if (!qword_2812C8448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812C8448);
  }

  return result;
}

unint64_t sub_220F7BDA4()
{
  result = qword_27CF9F570;
  if (!qword_27CF9F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F570);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_6_28()
{

  return sub_220E20FF8(v1, v2, (v0 + 360));
}

void OUTLINED_FUNCTION_16_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

void *OUTLINED_FUNCTION_17_16(float a1)
{
  *v2 = a1;

  return memcpy((v1 + 176), v3, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_22_15()
{
}

void *OUTLINED_FUNCTION_28_14(void *a1)
{

  return memcpy(a1, (v1 + 1104), 0xB8uLL);
}

void OUTLINED_FUNCTION_29_12()
{

  JUMPOUT(0x223D9DDF0);
}

uint64_t OUTLINED_FUNCTION_31_11()
{

  return sub_220FC38F0();
}

void *OUTLINED_FUNCTION_32_12()
{

  return memcpy((v0 + 552), (v0 + 176), 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_33_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_36_9()
{

  return swift_arrayDestroy();
}

_BYTE *_s5LayerOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220F7C0BC()
{
  result = qword_27CF9F578;
  if (!qword_27CF9F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F578);
  }

  return result;
}

uint64_t sub_220F7C110()
{
  memcpy(__dst, v0 + 2, sizeof(__dst));
  v1 = sub_220E435CC(__dst);
  sub_220E22B0C(__dst);
  switch(v1)
  {
    case 1:
      if (qword_2812C7508 != -1)
      {
        swift_once();
      }

      sub_220E20F44();

      sub_220E1B804();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F580);
      sub_220F7C37C();
      break;
    case 2:
    case 3:
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F580);
      sub_220F7C37C();
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F590);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_220FC8E30;
      *(v2 + 32) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F598);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_220FC8E30;
      v5 = *v0;
      v4 = v0[1];
      *(v3 + 32) = *v0;
      *(v3 + 40) = v4;
      *(v2 + 40) = v3;
      sub_220EA10E4(v5, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F580);
      sub_220F7C37C();
      break;
  }

  return sub_220FC2600();
}

unint64_t sub_220F7C37C()
{
  result = qword_27CF9F588;
  if (!qword_27CF9F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F588);
  }

  return result;
}

id sub_220F7C3D0()
{
  result = [*(v0 + OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label) font];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_220F7C424()
{
  v2 = v0;
  v3 = &v0[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_point];
  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_point + 8];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *&v0[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label];

  sub_220FB51B0(v5, v4, v6);
  sub_220F7CDC4(v5, v4, v2);
  v7 = *(v3 + 3);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *(v3 + 2) & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_220E1966C(0, &qword_2812C5B58);

    v9 = sub_220FC3220();
    v10 = [v9 accessibilityName];
    v11 = sub_220FC2700();
    v1 = v12;

    sub_220FB516C(v11, v1, v2);
  }

  else
  {
    if ((v3[48] & 1) == 0)
    {
      v13 = *(v3 + 5) * 100.0;
      if (COERCE__INT64(fabs(v13)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_25;
      }

      if (v13 <= -9.22337204e18)
      {
        goto LABEL_26;
      }

      if (v13 >= 9.22337204e18)
      {
        goto LABEL_27;
      }

      v1 = v13;
      if (qword_2812C5B30 != -1)
      {
        goto LABEL_28;
      }

      goto LABEL_12;
    }

    [v2 setAccessibilityValue_];
  }

  while (1)
  {
    [v2 setShowsLargeContentViewer_];
    sub_220F7CE1C(v5, v4, v2);
    v20 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
    [v2 addInteraction_];

LABEL_14:
    v21 = *&v2[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label];
    [v21 sizeThatFits_];
    v23 = v22;
    v4 = lroundf(v23);
    result = [v21 font];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    [result lineHeight];
    v26 = v25;

    v27 = v26;
    v28 = lroundf(v27);
    if (!v28)
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v4 != 0x8000000000000000 || v28 != -1)
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
LABEL_12:
    v14 = qword_2812CE4B0;
    v32 = 0x8000000220FE5250;
    sub_220FBFF80();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0);
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D83B88];
    *(v15 + 16) = xmmword_220FC8E30;
    v17 = MEMORY[0x277D83C10];
    *(v15 + 56) = v16;
    *(v15 + 64) = v17;
    *(v15 + 32) = v1;
    v18 = sub_220FC26D0();
    v1 = v19;

    sub_220FB516C(v18, v1, v2);
  }

  v30 = v4 / v28;
  [v21 intrinsicContentSize];
  *&v2[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_stepHeight] = v31 * v30;

  return [v2 setNeedsLayout];
}

id sub_220F7C804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v3[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_maximumWidth] = 0x405C800000000000;
  *&v3[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_stepHeight] = 0;
  v8 = &v3[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_point];
  v8[48] = *(a1 + 48);
  v9 = *(a1 + 32);
  *(v8 + 1) = *(a1 + 16);
  *(v8 + 2) = v9;
  *v8 = *a1;
  *&v3[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_backgroundEffectManager] = a2;

  *&v3[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_vibrancyEffectView] = sub_220E3D488(0, 1);
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v10 setIsAccessibilityElement_];
  sub_220F7C93C();

  return v10;
}

id sub_220F7C93C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_vibrancyEffectView];
  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label];
  sub_220E1966C(0, &qword_2812C5B80);
  v4 = sub_220E417BC(*MEMORY[0x277D76938], 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D74418]);
  [v3 setFont_];

  [v3 setAlpha_];
  LODWORD(v4) = DeviceIsSlow();
  v5 = objc_opt_self();
  v6 = &selRef_labelColor;
  if (!v4)
  {
    v6 = &selRef_blackColor;
  }

  v7 = [v5 *v6];
  [v3 setTextColor_];

  [v3 setLineBreakMode_];
  [v3 setNumberOfLines_];
  if (DeviceIsSlow())
  {
    [v1 addSubview_];
  }

  else
  {
    v8 = [v2 contentView];
    [v8 addSubview_];
  }

  return sub_220F7C424();
}

void sub_220F7CAF0()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_maximumWidth) = 0x405C800000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_stepHeight) = 0;
  sub_220FC3740();
  __break(1u);
}

id sub_220F7CBB0()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_vibrancyEffectView];
  [v0 bounds];
  return [v2 setFrame_];
}

void sub_220F7CDC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_220FC26C0();
  [a3 setAccessibilityLabel_];
}

void sub_220F7CE1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_220FC26C0();

  [a3 setLargeContentTitle_];
}

id sub_220F7CE80(void **a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = sub_220F44860();
  swift_unknownObjectRelease();
  v4 = *a1;
  [v4 setUsage_];
  if ((v3 - 1) >= 2u)
  {
    v6 = 2;
    [v4 setStorageMode_];
    v5 = 1;
  }

  else
  {
    v5 = 4;
    v6 = 4;
  }

  [v4 setSampleCount_];

  return [v4 setTextureType_];
}

uint64_t sub_220F7CF8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + 16);

  return sub_220E65A70(v3, a1);
}

uint64_t sub_220F7CFEC(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v67 = a4;
  v68 = a7;
  v65 = a5;
  v66 = a6;
  __swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40));
  v15 = a1;
  sub_220E470E4(a1, a3, v67, (a8 & 0xFFFFFFFFFFLL), &v71, a11);
  if (v72)
  {
    sub_220E1E72C(&v71, v73);
    sub_220E1E2A8(v73, v78);
    sub_220E1E2A8(v11 + 56, v77);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v77, v77[3]);
    MEMORY[0x28223BE20](v16, v16);
    v18 = (&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v21 = v65;
    swift_unknownObjectRetain();
    sub_220E4E4D8(v15, &v71);
    v22 = sub_220F7D81C(v15, (a8 & 0x8000000000) == 0, v21, v66, v78, v20);
    __swift_destroy_boxed_opaque_existential_0(v77);
    v23 = [objc_opt_self() sharedCaptureManager];
    v24 = v74;
    v25 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    (*(v25 + 8))(&v71, v24, v25);
    v26 = *(*__swift_project_boxed_opaque_existential_1(&v71, v72) + 24);
    swift_unknownObjectRetain();
    v27 = [v23 newCaptureScopeWithCommandQueue_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(&v71);
    memcpy(v76, (v15 + 16), sizeof(v76));
    memcpy(v78, (v15 + 16), 0xB8uLL);
    v28 = sub_220E435CC(v78);
    if (v28 == 1)
    {
      sub_220E22B0C(v78);
      if (qword_2812C7508 != -1)
      {
        swift_once();
      }

      v23 = sub_220E1B804();

      if ((v23 & 1) == 0 || (a8 & 0x8000000000) != 0)
      {
        sub_220E1E2A8(v73, v77);
        v46 = type metadata accessor for OverlayTileViewportManager();
        OUTLINED_FUNCTION_1_67(v46, &off_283483B10);
        type metadata accessor for OverlayRenderer();
        OUTLINED_FUNCTION_3_5();
        OUTLINED_FUNCTION_2_46();

        swift_unknownObjectRetain();
        v47 = OUTLINED_FUNCTION_0_80();
        v51 = sub_220F5AA64(v47, v48, v49, v50);
        if (!v23)
        {
          v35 = v51;
          v37 = 0x7261646152;
          v36 = 0xE500000000000000;
          goto LABEL_34;
        }
      }

      else
      {
        sub_220E1E2A8(v73, v77);
        v38 = type metadata accessor for OverlayTileViewportManager();
        OUTLINED_FUNCTION_1_67(v38, &off_283483B10);
        type metadata accessor for HashOverlayRenderer();
        OUTLINED_FUNCTION_3_5();
        OUTLINED_FUNCTION_2_46();

        swift_unknownObjectRetain();
        v39 = OUTLINED_FUNCTION_0_80();
        v43 = sub_220E3D66C(v39, v40, v41, v42);
        if (!v23)
        {
          v35 = v43;
          v36 = 0xEC00000029687361;
          v37 = 0x4828207261646152;
          goto LABEL_34;
        }
      }

      goto LABEL_27;
    }

    if (v28 == 4)
    {
      sub_220E22B0C(v78);
      if ((a8 & 0x8000000000) != 0)
      {
        sub_220E1E2A8(v73, v77);
        v52 = type metadata accessor for OverlayTileViewportManager();
        OUTLINED_FUNCTION_1_67(v52, &off_283483B10);
        type metadata accessor for WindIntensityOverlayRenderer();
        OUTLINED_FUNCTION_3_5();
        OUTLINED_FUNCTION_2_46();

        swift_unknownObjectRetain();
        v53 = OUTLINED_FUNCTION_0_80();
        sub_220EF2A88(v53, v54, v55, v56);
        if (!v23)
        {
          v35 = v57;
          v36 = 0x8000000220FE5380;
          v37 = 0xD000000000000010;
          goto LABEL_34;
        }
      }

      else
      {
        sub_220E1E2A8(v73, v77);
        v29 = type metadata accessor for OverlayTileViewportManager();
        OUTLINED_FUNCTION_1_67(v29, &off_283483B10);
        type metadata accessor for WindParticleOverlayRenderer();
        OUTLINED_FUNCTION_3_5();
        OUTLINED_FUNCTION_2_46();

        swift_unknownObjectRetain();
        v30 = OUTLINED_FUNCTION_0_80();
        v34 = sub_220EDD164(v30, v31, v32, v33);
        if (!v23)
        {
          v35 = v34;
          v36 = 0xEF29656C63697472;
          v37 = 0x61502820646E6957;
LABEL_34:
          *&v71 = 0;
          *(&v71 + 1) = 0xE000000000000000;
          sub_220FC35C0();

          strcpy(&v71, "MapOverlays - ");
          HIBYTE(v71) = -18;
          MEMORY[0x223D9BD60](v37, v36);

          v62 = sub_220FC26C0();

          [v27 setLabel_];
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_0(v73);
          return v35;
        }
      }

LABEL_27:
      if (qword_2812C5EC8 != -1)
      {
        swift_once();
      }

      v58 = sub_220FC17A0();
      __swift_project_value_buffer(v58, qword_2812C5ED0);
      v59 = sub_220FC1780();
      v60 = sub_220FC2E00();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_220E15000, v59, v60, "Could not create overlay renderer!", v61, 2u);
        MEMORY[0x223D9DDF0](v61, -1, -1);
      }

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v73);
      return 0;
    }

    memcpy(v77, v76, sizeof(v77));
    v44 = sub_220E435CC(v77);
    v45 = v15;
    if (v44)
    {
      if (v44 == 3)
      {
        v36 = 0xEB00000000657275;
        v37 = 0x74617265706D6554;
      }

      else
      {
        if (v44 != 2)
        {
          v36 = 0xE700000000000000;
          v37 = 0x6E776F6E6B6E55;
          goto LABEL_26;
        }

        v36 = 0xE800000000000000;
        v37 = 0x7473616365726F46;
      }
    }

    else
    {
      v36 = 0xEA00000000007974;
      v37 = 0x696C617551726941;
    }

    sub_220E22B0C(v77);
LABEL_26:
    sub_220E1E2A8(v73, v70);
    v69[3] = type metadata accessor for OverlayTileViewportManager();
    v69[4] = &off_283483B10;
    v69[0] = v22;
    type metadata accessor for OverlayRenderer();
    OUTLINED_FUNCTION_3_5();
    sub_220E4E4D8(v45, &v71);

    swift_unknownObjectRetain();
    v35 = sub_220F5AA64(v70, v69, v27, v45);
    goto LABEL_34;
  }

  sub_220F7D7B4(&v71);
  return 0;
}

uint64_t sub_220F7D750()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_220F7D7B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F7D81C(const void *a1, int a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t *a6)
{
  v31 = a4;
  v32 = a5;
  v30 = a3;
  v29 = a2;
  v28 = a1;
  v7 = *a6;
  v27 = sub_220FC2FB0();
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220FC2F80();
  MEMORY[0x28223BE20](v12, v13);
  v14 = sub_220FC2390();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v16 = sub_220FC1160();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v34[3] = v7;
  v34[4] = &off_2834859D8;
  v34[0] = a6;
  type metadata accessor for OverlayTileViewportManager();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v34, v7);
  MEMORY[0x28223BE20](v19, v19);
  v21 = (&v27 - v20);
  (*(v22 + 16))(&v27 - v20);
  v23 = *v21;
  *(v18 + 304) = v7;
  *(v18 + 312) = &off_2834859D8;
  *(v18 + 280) = v23;
  sub_220FC1150();
  sub_220FC1180();
  swift_allocObject();
  *(v18 + 320) = sub_220FC1170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D948);
  sub_220E98C20();
  v24 = MEMORY[0x277D84F90];
  *(v18 + 328) = sub_220FC2600();
  sub_220E1AAEC();
  sub_220FC2350();
  v33 = v24;
  sub_220E1A080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF28);
  sub_220E1AC1C();
  sub_220FC3430();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v27);
  *(v18 + 336) = sub_220FC2FF0();
  memcpy((v18 + 24), v28, 0xC8uLL);
  *(v18 + 16) = v29 & 1;
  v25 = v31;
  *(v18 + 224) = v30;
  *(v18 + 232) = v25;
  sub_220E1E72C(v32, v18 + 240);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return v18;
}

uint64_t sub_220F7DC08(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressPublisher) = a1;

  sub_220F7DE94();
}

void sub_220F7DC64(uint64_t a1, float a2)
{
  v6 = a2 * 100.0;
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 <= -9.2234e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 < 9.2234e18)
  {
    v2 = a1;
    v4 = v6;
    if (qword_2812C5B30 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  swift_once();
LABEL_5:
  v7 = qword_2812CE4B0;
  sub_220FBFF80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D83B88];
  *(v8 + 16) = xmmword_220FC8E30;
  v10 = MEMORY[0x277D83C10];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = v4;
  v11 = sub_220FC2720();
  v13 = v12;

  sub_220FB516C(v11, v13, v3);
  if (v2)
  {
    v14 = 0;
  }

  else
  {
    v14 = a2 == 0.0;
  }

  v15 = v14;
  v16 = (a2 > 0.99) | v15;
  v17 = [v3 accessibilityElementsHidden];
  [v3 setAccessibilityElementsHidden_];
  if (v16 != v17)
  {
    v18 = *MEMORY[0x277D76488];

    UIAccessibilityPostNotification(v18, 0);
  }
}

void sub_220F7DE94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF40);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F608);
  MEMORY[0x28223BE20](v6, v7);
  v10 = &v14 - v9;
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressPublisher))
  {
    v17 = *(v0 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressPublisher);
    v15 = v8;
    sub_220E1966C(0, &qword_2812C5CA0);

    v11 = sub_220FC2FC0();
    v16 = v11;
    v12 = sub_220FC2FA0();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F610);
    sub_220E453D4(&qword_27CF9F618, &qword_27CF9F610);
    sub_220F7EDFC();
    sub_220FC19F0();
    sub_220F7EE64(v5);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_220E453D4(&qword_27CF9F620, &qword_27CF9F608);
    v13 = sub_220FC1A10();

    (*(v15 + 8))(v10, v6);
    *(v1 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressObserver) = v13;
  }
}

void sub_220F7E150(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressReport;
    *v5 = v1;
    *(v5 + 8) = v2;
    sub_220F7DC64(v2, v1);
    sub_220F7E1D8(1);
  }
}

void sub_220F7E1D8(char a1)
{
  if ((v1[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_isAnimatingCompletion] & 1) == 0)
  {
    v3 = *&v1[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressReport];
    v4 = *&v1[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressReport + 8];
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3 == 0.0;
    }

    v6 = 1.0;
    v7 = 0.0;
    if (v5)
    {
      v6 = 0.0;
    }

    [v1 setAlpha_];
    if (a1)
    {
      v7 = 0.25;
    }

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = v3;
    *(v9 + 32) = v4;
    v19 = sub_220F7EDAC;
    v20 = v9;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_220F6DA78;
    v18 = &block_descriptor_26;
    v10 = _Block_copy(&v15);
    v11 = v1;

    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v4;
    *(v12 + 32) = v11;
    v19 = sub_220F7EDD4;
    v20 = v12;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_220EFF6B0;
    v18 = &block_descriptor_6;
    v13 = _Block_copy(&v15);
    v14 = v11;

    [v8 animateWithDuration:v10 animations:v13 completion:v7];
    _Block_release(v13);
    _Block_release(v10);
  }
}

char *sub_220F7E3D4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC11WeatherMaps11ProgressBar_barView;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v0[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressObserver] = 0;
  v3 = &v0[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressReport];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_previousFrame];
  *v4 = 0u;
  v4[1] = 0u;
  v0[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_isAnimatingCompletion] = 0;
  *&v0[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressPublisher] = 0;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemFillColor];
  [v7 setBackgroundColor_];

  sub_220FC0AB0();
  sub_220FC0A90();
  if (qword_27CF9C120 != -1)
  {
    swift_once();
  }

  sub_220FC0A80();

  v9 = *&v7[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_barView];
  v10 = &selRef_systemBlueColor;
  if (!v21)
  {
    v10 = &selRef_blackColor;
  }

  v11 = [v6 *v10];
  [v9 setBackgroundColor_];

  [v7 _setCornerRadius_];
  v12 = OBJC_IVAR____TtC11WeatherMaps11ProgressBar_barView;
  [*&v7[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_barView] _setCornerRadius_];
  [v7 addSubview_];
  [v7 setIsAccessibilityElement_];
  v13 = *MEMORY[0x277D765D0];
  v14 = [v7 accessibilityTraits];
  if ((v13 & ~v14) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  [v7 setAccessibilityTraits_];
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v16 = qword_2812CE4B0;
  v17 = sub_220FBFF80();
  v19 = v18;

  sub_220FB51A4(v17, v19, v7);

  return v7;
}

void sub_220F7E714()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps11ProgressBar_barView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressObserver) = 0;
  v2 = v0 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressReport;
  *v2 = 0;
  *(v2 + 8) = 0;
  v3 = (v0 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_previousFrame);
  *v3 = 0u;
  v3[1] = 0u;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_isAnimatingCompletion) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps11ProgressBar_progressPublisher) = 0;
  sub_220FC3740();
  __break(1u);
}

void sub_220F7E800(void *a1)
{
  v2 = v1;
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_layoutSublayersOfLayer_, a1);
  sub_220E1966C(0, &qword_2812C5B20);
  v4 = [v1 layer];
  v5 = sub_220FC3250();

  if (v5)
  {
    [a1 frame];
    v6 = &v2[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_previousFrame];
    if (!CGRectEqualToRect(v12, *&v2[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_previousFrame]))
    {
      [a1 frame];
      *v6 = v7;
      *(v6 + 1) = v8;
      *(v6 + 2) = v9;
      *(v6 + 3) = v10;
      sub_220F7E1D8(0);
    }
  }
}

id sub_220F7E958(char *a1, float a2)
{
  v4 = *&a1[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_barView];
  v5 = [a1 layer];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  v14 = CGRectGetWidth(v26) * a2;
  v15 = [a1 layer];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v27.origin.x = v17;
  v27.origin.y = v19;
  v27.size.width = v21;
  v27.size.height = v23;
  v28.size.height = CGRectGetHeight(v27);
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = v14;
  v29 = CGRectIntegral(v28);

  return [v4 setFrame_];
}

void sub_220F7EA7C(float a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a1 > 0.99)
  {
    v22 = v7;
    v23 = v6;
    v24 = v4;
    v25 = v5;
    a4[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_isAnimatingCompletion] = 1;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    v20 = sub_220F7EDE0;
    v21 = v10;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_220F6DA78;
    v19 = &block_descriptor_12;
    v11 = _Block_copy(&v16);
    v12 = a4;

    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v20 = sub_220F7EDF4;
    v21 = v13;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_220EFF6B0;
    v19 = &block_descriptor_18;
    v14 = _Block_copy(&v16);
    v15 = v12;

    [v9 animateWithDuration:v11 animations:v14 completion:0.3];
    _Block_release(v14);
    _Block_release(v11);
  }
}

id sub_220F7EC2C(int a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_barView];
  v4 = [a2 layer];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v14.origin.x = v6;
  v14.origin.y = v8;
  v14.size.width = v10;
  v14.size.height = v12;
  result = [v3 setFrame_];
  a2[OBJC_IVAR____TtC11WeatherMaps11ProgressBar_isAnimatingCompletion] = 0;
  return result;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_220F7EDFC()
{
  result = qword_27CF9CF58;
  if (!qword_27CF9CF58)
  {
    sub_220E1966C(255, &qword_2812C5CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9CF58);
  }

  return result;
}

uint64_t sub_220F7EE64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_220F7EEEC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationHeaderSectionView_headerLabel] = 0;
  v8 = &v3[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationHeaderSectionView_model];
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;

  v9 = a3;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220F7EFA4();

  return v10;
}

void sub_220F7EFA4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationHeaderSectionView_model + 16];
  v3 = objc_allocWithZone(MEMORY[0x277D756B8]);

  v4 = v2;
  v5 = [v3 init];
  v6 = sub_220FC26C0();
  [v5 setText_];

  sub_220E41E50();
  v7 = sub_220FC3150();
  [v5 setFont_];
  [v5 setTextAlignment_];
  [v5 setTextColor_];
  [v5 setAdjustsFontSizeToFitWidth_];
  [v5 setMinimumScaleFactor_];
  [v1 addSubview_];

  v8 = *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationHeaderSectionView_headerLabel];
  *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationHeaderSectionView_headerLabel] = v5;
}

void sub_220F7F114()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationHeaderSectionView_headerLabel) = 0;
  sub_220FC3740();
  __break(1u);
}

void sub_220F7F194()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationHeaderSectionView_headerLabel];
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_1_1();
    MinX = CGRectGetMinX(v7);
    OUTLINED_FUNCTION_1_1();
    v4 = CGRectGetMinY(v8) + 2.0;
    OUTLINED_FUNCTION_1_1();
    Width = CGRectGetWidth(v9);
    OUTLINED_FUNCTION_1_1();
    [v2 setFrame_];
  }
}

uint64_t sub_220F7F364()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24();
  qword_2812CA230 = result;
  return result;
}

uint64_t sub_220F7F508()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24();
  qword_2812CA240 = result;
  return result;
}

uint64_t sub_220F7F688()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24();
  qword_2812CA218 = result;
  return result;
}

uint64_t sub_220F7F82C()
{
  v0 = sub_220FC0B30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220FC0B10();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700);
  swift_allocObject();
  result = sub_220FC0BA0();
  qword_27CF9F638 = result;
  return result;
}

uint64_t sub_220F7FA14()
{
  v0 = sub_220FC0B30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220FC0B10();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700);
  swift_allocObject();
  result = sub_220FC0BA0();
  qword_2812CA1E0 = result;
  return result;
}

uint64_t sub_220F7FC20()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24();
  qword_2812CA1A0 = result;
  return result;
}

uint64_t sub_220F7FDA0()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24();
  qword_2812CA1B8 = result;
  return result;
}

uint64_t sub_220F7FF20()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6E8);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(49, v4, v5, v6, v7);
  qword_27CF9F640 = result;
  return result;
}

uint64_t sub_220F80040()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24();
  qword_27CF9F648 = result;
  return result;
}

uint64_t sub_220F801C4()
{
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_9_23();
  result = OUTLINED_FUNCTION_12_24();
  qword_2812CA200 = result;
  return result;
}

uint64_t sub_220F80348()
{
  v1 = sub_220FC0B30();
  MEMORY[0x28223BE20](v1 - 8, v2);
  OUTLINED_FUNCTION_0_81();
  v3 = sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3_45();
  type metadata accessor for Settings.Maps.Requests(0);
  (*(v5 + 104))(v0, *MEMORY[0x277D6D098], v3);
  sub_220FC0B20();
  result = OUTLINED_FUNCTION_17_17(28, 0x8000000220FE5B20);
  qword_2812CA138 = result;
  return result;
}

uint64_t sub_220F80480()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6E8);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(43, v4, v5, v6, v7);
  qword_27CF9F650 = result;
  return result;
}

uint64_t sub_220F805A0()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6E8);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(40, v4, v5, v6, v7);
  qword_27CF9F658 = result;
  return result;
}

uint64_t sub_220F806C0()
{
  v1 = sub_220FC0B30();
  MEMORY[0x28223BE20](v1 - 8, v2);
  OUTLINED_FUNCTION_0_81();
  v3 = sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3_45();
  type metadata accessor for Settings.Maps.Overrides(0);
  (*(v5 + 104))(v0, *MEMORY[0x277D6D098], v3);
  sub_220FC0B20();
  result = OUTLINED_FUNCTION_17_17(29, 0x8000000220FE5E40);
  qword_2812CA0F0 = result;
  return result;
}

uint64_t sub_220F807D4()
{
  v0 = sub_220FC0B30();
  v23 = *(v0 - 8);
  v24 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v22 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_220FC0B10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220FC0DC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v21 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F708);
  v21[1] = "ays.forceRadarPrecipOverlayKind";
  v21[2] = v17;
  v18 = *MEMORY[0x277D7AA80];
  v19 = *(v9 + 104);
  v19(v16, v18, v8);
  (*(v4 + 104))(v7, *MEMORY[0x277D6D098], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F718);
  *(swift_allocObject() + 16) = xmmword_220FC9880;
  v19(v12, *MEMORY[0x277D7AA78], v8);
  sub_220FC0B40();
  v19(v12, v18, v8);
  sub_220FC0B40();
  v19(v12, *MEMORY[0x277D7AA68], v8);
  sub_220FC0B40();
  v19(v12, *MEMORY[0x277D7AA88], v8);
  sub_220FC0B40();
  (*(v23 + 104))(v22, *MEMORY[0x277D6D0A8], v24);
  sub_220E1F290(&qword_27CF9F720, MEMORY[0x277D7AA90]);
  result = sub_220FC0B70();
  qword_27CF9F660 = result;
  return result;
}

uint64_t sub_220F80CA0()
{
  v0 = sub_220FC0B30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220FC0B10();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F700);
  swift_allocObject();
  result = sub_220FC0BA0();
  qword_27CF9F668 = result;
  return result;
}

uint64_t sub_220F80E84()
{
  v1 = sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_2_47();
  v6 = sub_220FC0A20();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F298);
  (*(v8 + 104))(v13, *MEMORY[0x277D6D050], v6);
  (*(v3 + 104))(v0, *MEMORY[0x277D6D098], v1);
  result = sub_220FC0B80();
  qword_27CF9F670 = result;
  return result;
}

uint64_t sub_220F81030()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8);
  OUTLINED_FUNCTION_7_26(0x4023000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(39, v4, v5, v6, v7);
  qword_27CF9F678 = result;
  return result;
}

uint64_t sub_220F81148()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8);
  OUTLINED_FUNCTION_7_26(0x4021CCCCCCCCCCCDLL);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(50, v4, v5, v6, v7);
  qword_27CF9F680 = result;
  return result;
}

uint64_t sub_220F81268()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8);
  OUTLINED_FUNCTION_7_26(0x4022000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(65, v4, v5, v6, v7);
  qword_27CF9F688 = result;
  return result;
}

uint64_t sub_220F81380()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8);
  OUTLINED_FUNCTION_7_26(0x401E000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(71, v4, v5, v6, v7);
  qword_27CF9F690 = result;
  return result;
}

uint64_t sub_220F81498()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8);
  OUTLINED_FUNCTION_7_26(0x401A000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(69, v4, v5, v6, v7);
  qword_27CF9F698 = result;
  return result;
}

uint64_t sub_220F815B0()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8);
  OUTLINED_FUNCTION_7_26(0x4014000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(56, v4, v5, v6, v7);
  qword_27CF9F6A0 = result;
  return result;
}

uint64_t sub_220F816C8()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8);
  OUTLINED_FUNCTION_7_26(0x4022333333333333);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(47, v4, v5, v6, v7);
  qword_27CF9F6A8 = result;
  return result;
}

uint64_t sub_220F817E4()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8);
  OUTLINED_FUNCTION_7_26(0x4023000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(56, v4, v5, v6, v7);
  qword_27CF9F6B0 = result;
  return result;
}

uint64_t sub_220F818FC()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8);
  OUTLINED_FUNCTION_7_26(0x4022000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(43, v4, v5, v6, v7);
  qword_27CF9F6B8 = result;
  return result;
}

uint64_t sub_220F81A14()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8);
  OUTLINED_FUNCTION_7_26(0x4021000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(40, v4, v5, v6, v7);
  qword_27CF9F6C0 = result;
  return result;
}

uint64_t sub_220F81B2C()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_2_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6F8);
  OUTLINED_FUNCTION_7_26(0x401C000000000000);
  v2 = OUTLINED_FUNCTION_6_29();
  v3(v2);
  OUTLINED_FUNCTION_4_43();
  result = OUTLINED_FUNCTION_11_22(33, v4, v5, v6, v7);
  qword_27CF9F6C8 = result;
  return result;
}

uint64_t sub_220F81C44()
{
  v0 = sub_220FC02B0();
  __swift_allocate_value_buffer(v0, qword_27CFAF690);
  __swift_project_value_buffer(v0, qword_27CFAF690);
  return sub_220FC0140();
}

uint64_t sub_220F81C94()
{
  v2 = sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_0_81();
  v7 = sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  v9 = v8;
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_3_45();
  v12 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v14 = v13;
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  if (qword_27CF9C1B0 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v12, qword_27CFAF690);
  (*(v14 + 16))(v19, v20, v12);
  (*(v9 + 104))(v1, *MEMORY[0x277D6D0A8], v7);
  (*(v4 + 104))(v0, *MEMORY[0x277D6D090], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6E0);
  OUTLINED_FUNCTION_3_5();
  result = sub_220FC0BA0();
  qword_27CFAF6A8 = result;
  return result;
}

uint64_t sub_220F81EDC()
{
  sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_0_81();
  sub_220FC0B30();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3_45();
  v4 = OUTLINED_FUNCTION_13_24();
  v5(v4);
  v6 = OUTLINED_FUNCTION_8_30();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F6E8);
  OUTLINED_FUNCTION_3_5();
  result = sub_220FC0BA0();
  qword_27CFAF6B0 = result;
  return result;
}

uint64_t sub_220F82050()
{
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_3();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_16_17();
  v4(v3);
  OUTLINED_FUNCTION_20_18();
  v5 = OUTLINED_FUNCTION_19_15();
  v6(v5);
  return v2;
}

uint64_t sub_220F82128()
{
  OUTLINED_FUNCTION_18_17();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v1, v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_16_17();
  v4(v3);
  OUTLINED_FUNCTION_20_18();
  v5 = OUTLINED_FUNCTION_19_15();
  v6(v5);
  return v0;
}

uint64_t Settings.Maps.ScrubberForecastHint.__deallocating_deinit()
{
  v0 = _s11TeaSettings0B0C11WeatherMapsE0D0V20ScrubberForecastHintCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_220F82234(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C1B8 != -1)
  {
    swift_once();
  }

  sub_220FC02B0();
  sub_220E1F290(&qword_27CF9F6F0, MEMORY[0x277CC9578]);
  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C1C0 != -1)
  {
    swift_once();
  }

  return sub_220FC0B00();
}

uint64_t sub_220F82384(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_2812CA238 != -1)
  {
    swift_once();
  }

  return sub_220FC0B00();
}

uint64_t sub_220F82424()
{
  sub_220FC0B60();
  OUTLINED_FUNCTION_3_5();
  return sub_220FC0B50();
}

uint64_t sub_220F82468(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C158 != -1)
  {
    swift_once();
  }

  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C160 != -1)
  {
    swift_once();
  }

  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C168 != -1)
  {
    swift_once();
  }

  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C188 != -1)
  {
    swift_once();
  }

  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C190 != -1)
  {
    swift_once();
  }

  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C198 != -1)
  {
    swift_once();
  }

  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C1A0 != -1)
  {
    swift_once();
  }

  sub_220FC0B00();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CF9C1A8 != -1)
  {
    swift_once();
  }

  return sub_220FC0B00();
}

_BYTE *_s4MapsVwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return MEMORY[0x2821D29A0](v7, a2, a3, a4, a5, v5);
}

uint64_t OUTLINED_FUNCTION_17_17(uint64_t a1, uint64_t a2)
{
  v5 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return MEMORY[0x2821D2890](v5, a2, 0, v3, v2);
}

uint64_t OUTLINED_FUNCTION_18_17()
{

  return sub_220FC0B10();
}

uint64_t OUTLINED_FUNCTION_20_18()
{

  return MEMORY[0x2821D2898](v2, v1, v0, v3);
}

uint64_t sub_220F82A30(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD71F0]) initWithDevice_];
  swift_unknownObjectRelease();
  *(v1 + 16) = v2;
  return v1;
}

uint64_t sub_220F82A88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E10;
  v1 = *MEMORY[0x277CD71A0];
  *(inited + 32) = *MEMORY[0x277CD71A0];
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v3 = v1;
  v4 = [v2 initWithBool_];
  v5 = sub_220ED19E4();
  *(inited + 40) = v4;
  v6 = *MEMORY[0x277CD71C0];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v8 = v6;
  v9 = [v7 initWithUnsignedInteger_];
  *(inited + 104) = v5;
  *(inited + 80) = v9;
  type metadata accessor for Option(0);
  sub_220F82F44();
  return sub_220FC2600();
}

id sub_220F82B9C(float a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_0_82();
  v4 = sub_220FC26C0();
  v5 = a1;
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v6 = qword_2812CE4B0;
  v7 = qword_2812CE4B0;
  v8 = sub_220F82A88();
  v13[0] = 0;
  v9 = sub_220F82E90(v4, v6, v5, v8, v13, v3);

  v10 = v13[0];
  if (!v9)
  {
    v11 = v10;
    sub_220FBFFE0();

    swift_willThrow();
  }

  return v9;
}

id sub_220F82CBC()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = sub_220FC0100();
  v3 = sub_220F82A88();
  v8[0] = 0;
  v4 = sub_220F82F9C(v2, v3, v8, v1, &selRef_newTextureWithData_options_error_);

  v5 = v8[0];
  if (!v4)
  {
    v6 = v5;
    sub_220FBFFE0();

    swift_willThrow();
  }

  return v4;
}

id sub_220F82D7C(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = sub_220F82A88();
  v9[0] = 0;
  v5 = sub_220F82F9C(a1, v4, v9, v3, &selRef_newTextureWithCGImage_options_error_);
  v6 = v9[0];
  if (!v5)
  {
    v7 = v6;
    sub_220FBFFE0();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_220F82E34()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id sub_220F82E90(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  type metadata accessor for Option(0);
  sub_220F82F44();
  v11 = sub_220FC25B0();

  v12 = [a6 newTextureWithName:a1 scaleFactor:a2 bundle:v11 options:a5 error:a3];

  return v12;
}

unint64_t sub_220F82F44()
{
  result = qword_27CF9C8E8;
  if (!qword_27CF9C8E8)
  {
    type metadata accessor for Option(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9C8E8);
  }

  return result;
}

id sub_220F82F9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  type metadata accessor for Option(0);
  sub_220F82F44();
  v9 = sub_220FC25B0();

  v10 = [a4 *a5];

  return v10;
}

uint64_t sub_220F83038(__int128 *a1, __int128 *a2)
{
  v15 = sub_220FC2FB0();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  sub_220FC2F80();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_3();
  v12 = sub_220FC2390();
  MEMORY[0x28223BE20](v12 - 8, v13);
  OUTLINED_FUNCTION_3();
  sub_220E1AAEC();
  sub_220FC2360();
  sub_220F84AEC(&qword_2812C5CA8, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF28);
  sub_220E1AC1C();
  sub_220FC3430();
  (*(v4 + 104))(v9, *MEMORY[0x277D85260], v15);
  *(v2 + 56) = sub_220FC2FF0();
  sub_220E1E72C(a1, v2 + 16);
  sub_220E1E72C(a2, v2 + 64);
  return v2;
}

uint64_t sub_220F83268(uint64_t a1, unsigned __int8 *a2, double a3, double a4)
{
  v7 = OUTLINED_FUNCTION_4_44(*a2, v9, v10, SWORD2(v10), BYTE6(v10), HIBYTE(v10));

  return sub_220F8342C(a1, a3, a4, v7);
}

double sub_220F832CC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_220FC0D50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (v9 != 5)
  {
    if (v9 == 4)
    {
      sub_220F83778(v8);
      sub_220FC0CD0();
    }

    else
    {
      if (v9 != 3)
      {
        v14 = *a2;
        return sub_220F83DA8(&v14);
      }

      sub_220F83778(v8);
      sub_220FC0CC0();
    }

    v11 = v10;
    (*(v5 + 8))(v8, v4);
    return v11;
  }

  return sub_220F84148();
}

uint64_t sub_220F8342C(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  v32 = a1;
  v10 = sub_220FC1070();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v11 + 16);
  v33(v14, a1, v10);
  v15 = *(v11 + 80);
  v29 = ((v15 + 24) & ~v15) + v12;
  v30 = (v15 + 24) & ~v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  v31 = *(v11 + 32);
  v31(v16 + ((v15 + 24) & ~v15), v14, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F748);
  sub_220FC1540();

  v33(v14, v32, v10);
  v17 = (v15 + 16) & ~v15;
  v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v31(v19 + v17, v14, v10);
  v20 = (v19 + v18);
  *v20 = a2;
  v20[1] = a3;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v21 = sub_220FC13B0();
  sub_220FC1500();

  v33(v14, v32, v10);
  v22 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  v31(v23 + v30, v14, v10);
  v24 = (v23 + v22);
  *v24 = a2;
  v24[1] = a3;
  v25 = sub_220FC13B0();
  v26 = sub_220FC1490();

  return v26;
}

void sub_220F83734(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = OUTLINED_FUNCTION_4_44(*a1, v3, v4, SWORD2(v4), BYTE6(v4), HIBYTE(v4));
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 32) = 0;
}

uint64_t sub_220F83778@<X0>(uint64_t a1@<X8>)
{
  v14[4] = a1;
  v2 = sub_220FC0E70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220FC0CA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812CA0E8 != -1)
  {
    swift_once();
  }

  if (sub_220FC0A50())
  {
    if (qword_27CF9C158 != -1)
    {
      swift_once();
    }

    sub_220F84AEC(&qword_27CF9F750, v12, type metadata accessor for WeatherMapCameraFocusFactory);
    sub_220FC0A00();
    v14[3] = v14[15];
    if (qword_27CF9C160 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    v14[2] = v14[14];
    if (qword_27CF9C168 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    v14[1] = v14[13];
    if (qword_27CF9C170 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    v14[0] = v14[12];
    if (qword_27CF9C178 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    if (qword_27CF9C180 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    if (qword_27CF9C188 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    if (qword_27CF9C190 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    if (qword_27CF9C198 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    if (qword_27CF9C1A0 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    if (qword_27CF9C1A8 != -1)
    {
      swift_once();
    }

    sub_220FC0A00();
    return sub_220FC0CB0();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v1 + 64), *(v1 + 88));
    sub_220FC0F40();
    sub_220FC0C90();
    (*(v8 + 8))(v11, v7);
    sub_220FC0DB0();
    return (*(v3 + 8))(v6, v2);
  }
}

double sub_220F83DA8(unsigned __int8 *a1)
{
  v2 = sub_220FC0D50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_220F83778(v6);
  v8 = (v3 + 8);
  switch(v7)
  {
    case 1:
      sub_220FC0D10();
      goto LABEL_7;
    case 2:
      sub_220FC0D30();
      goto LABEL_7;
    case 3:
      sub_220FC0D20();
      goto LABEL_7;
    case 4:
    case 5:
      sub_220FC0CE0();
      goto LABEL_7;
    case 6:
      sub_220FC0CE0();
      v10 = v21;
      (*v8)(v6, v2);
      return v10;
    default:
      sub_220FC0CF0();
LABEL_7:
      v10 = v9;
      v11 = *v8;
      (*v8)(v6, v2);
      sub_220F83778(v6);
      sub_220FC0CF0();
      v11(v6, v2);
      sub_220F83778(v6);
      sub_220FC0D00();
      v13 = v12;
      v11(v6, v2);
      if (v13 < v10)
      {
        if (qword_2812C5EC8 != -1)
        {
          swift_once();
        }

        v14 = sub_220FC17A0();
        __swift_project_value_buffer(v14, qword_2812C5ED0);
        v15 = sub_220FC1780();
        v16 = sub_220FC2E10();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v25 = v18;
          *v17 = 134218242;
          *(v17 + 4) = v10;
          *(v17 + 12) = 2080;
          v19 = 0xE900000000000072;
          v20 = 0x756F68207478656ELL;
          switch(v7)
          {
            case 0:
              v19 = 0xE300000000000000;
              v20 = 7827310;
              goto LABEL_18;
            case 1:
              goto LABEL_18;
            case 2:
              v19 = 0x8000000220FDCEB0;
              v20 = 0xD000000000000010;
              goto LABEL_18;
            case 3:
              v19 = 0xEE007372756F6820;
              v20 = 0x786973207478656ELL;
              goto LABEL_18;
            case 4:
              v19 = 0xE400000000000000;
              v20 = 1701736302;
              goto LABEL_18;
            case 5:
              v19 = 0xE700000000000000;
              v20 = 0x6E776F6E6B6E75;
LABEL_18:
              v22 = sub_220E20FF8(v20, v19, &v25);

              *(v17 + 14) = v22;
              _os_log_impl(&dword_220E15000, v15, v16, "Zoom level (%f) above radar threshold returned when rain expectation is: %s.", v17, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v18);
              MEMORY[0x223D9DDF0](v18, -1, -1);
              MEMORY[0x223D9DDF0](v17, -1, -1);
              break;
            default:
              return v10;
          }
        }
      }

      return v10;
  }
}

double sub_220F84148()
{
  v0 = sub_220FC0D50();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220F83778(v4);
  v5 = COERCE_DOUBLE(sub_220FC0D40());
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  result = v5;
  if (v7)
  {
    return 7.0;
  }

  return result;
}

uint64_t sub_220F84288@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v34 = a3;
  v12 = sub_220FC1070();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v17 = sub_220FC17A0();
  __swift_project_value_buffer(v17, qword_2812C5ED0);
  (*(v13 + 16))(v16, a2, v12);
  v18 = a1;
  v19 = sub_220FC1780();
  v20 = sub_220FC2E10();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33[1] = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v35 = v23;
    *v22 = 136447491;
    swift_getErrorValue();
    v24 = sub_220FC39D0();
    v26 = sub_220E20FF8(v24, v25, &v35);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    v27 = sub_220FC1020();
    v29 = v28;
    (*(v13 + 8))(v16, v12);
    v30 = sub_220E20FF8(v27, v29, &v35);

    *(v22 + 24) = v30;
    *(v22 + 32) = 2050;
    *(v22 + 34) = a4;
    *(v22 + 42) = 2050;
    *(v22 + 44) = a5;
    *(v22 + 52) = 2050;
    *(v22 + 54) = a6;
    _os_log_impl(&dword_220E15000, v19, v20, "Error while fitting zoomLevel. error=%{public}s, location=%{private,mask.hash}s, size.width=%{public}f, size.height=%{public}f, zoomLevel=%{public}f", v22, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v23, -1, -1);
    MEMORY[0x223D9DDF0](v22, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v31 = sub_220FC0F30();
  return __swift_storeEnumTagSinglePayload(v34, 1, 1, v31);
}

uint64_t sub_220F84598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F748);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v25 - v8;
  v10 = sub_220FC0F30();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220F84A14(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    result = sub_220F84A84(v9);
    *a2 = a3;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a2 + 32) = 0;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    sub_220FC0FE0();
    MKMapPointForCoordinate(v27);
    v26 = a3;
    MKMapRectMakeWithZoomLevel();
    sub_220FC0EF0();
    v17 = v16;
    sub_220FC0F00();
    v19 = v18;
    sub_220FC0F10();
    v21 = v20;
    sub_220FC0F20();
    v23 = v22;
    v24 = MKMapRectContainsRectWrappingMeridian();
    result = (*(v11 + 8))(v14, v10);
    if (v24)
    {
      *a2 = v26;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *(a2 + 32) = 0;
    }

    else
    {
      *a2 = v17;
      *(a2 + 8) = v19;
      *(a2 + 16) = v21;
      *(a2 + 24) = v23;
      *(a2 + 32) = 1;
    }
  }

  return result;
}

uint64_t sub_220F847F4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0(v0 + 64);
  return v0;
}

uint64_t sub_220F84824()
{
  sub_220F847F4();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_220F848E4()
{
  OUTLINED_FUNCTION_5_34();
  v0 = OUTLINED_FUNCTION_2_48();
  return sub_220F84288(v0, v1, v2, v3, v4, v5);
}

uint64_t sub_220F84980()
{
  OUTLINED_FUNCTION_5_34();
  v0 = OUTLINED_FUNCTION_2_48();
  return sub_220F84598(v0, v1, v2);
}

uint64_t sub_220F84A14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F84A84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F84AEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220F84B34()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_220F84B74()
{
  sub_220F84B34();

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

uint64_t sub_220F84BCC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_220F84C4C()
{
  result = qword_2812C6B78[0];
  if (!qword_2812C6B78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812C6B78);
  }

  return result;
}

uint64_t sub_220F84CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x223D9CFA0](a2);
  MEMORY[0x223D9CFA0](a3);
  return MEMORY[0x223D9CFA0](a4);
}

uint64_t sub_220F84D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](a1);
  MEMORY[0x223D9CFA0](a2);
  MEMORY[0x223D9CFA0](a3);
  return sub_220FC3A90();
}

uint64_t sub_220F84DB8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](v1);
  MEMORY[0x223D9CFA0](v2);
  MEMORY[0x223D9CFA0](v3);
  return sub_220FC3A90();
}

uint64_t sub_220F84E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x223D9CFA0](a2);
  MEMORY[0x223D9CFA0](a3);
  MEMORY[0x223D9CFA0](a4);
  return MEMORY[0x223D9CFA0](a5);
}

uint64_t sub_220F84E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](a1);
  MEMORY[0x223D9CFA0](a2);
  MEMORY[0x223D9CFA0](a3);
  MEMORY[0x223D9CFA0](a4);
  return sub_220FC3A90();
}

uint64_t sub_220F84F30()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](v1);
  MEMORY[0x223D9CFA0](v2);
  MEMORY[0x223D9CFA0](v3);
  MEMORY[0x223D9CFA0](v4);
  return sub_220FC3A90();
}

unint64_t sub_220F84FB0()
{
  result = qword_2812C5FD0;
  if (!qword_2812C5FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5FD0);
  }

  return result;
}

id sub_220F85004(double a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel__setCornerRadius_, a1);
  return sub_220F856C0();
}

uint64_t sub_220F85050(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_background;
  swift_beginAccess();
  sub_220F85EBC(a1, v1 + v3);
  swift_endAccess();
  sub_220F85148();
  return sub_220F85F20(a1);
}

id sub_220F850BC()
{
  v0 = [objc_opt_self() effectWithStyle_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  sub_220FAE50C(0xD00000000000002FLL, 0x8000000220FE60D0, v1);
  return v1;
}

char *sub_220F85148()
{
  v1 = sub_220FC2560();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherMapAnnotationBackground(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = objc_opt_self();
  [v10 begin];
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_disablesImplicitAnimations) == 1)
  {
    [v10 setDisableActions_];
  }

  v11 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_background;
  swift_beginAccess();
  sub_220F85F7C(v0 + v11, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v2 + 32))(v5, v9, v1);
      [*(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView) setAlpha_];
      LODWORD(v34) = 1.0;
      [*(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer) setOpacity_];
      sub_220FC2550();
      (*(v2 + 8))(v5, v1);
      return [v10 commit];
    case 2u:
      v20 = *v9;
      [*(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView) setAlpha_];
      v21 = *(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer);
      LODWORD(v22) = 1.0;
      [v21 setOpacity_];
      [v21 setLocations_];
      v23 = sub_220F43CDC(v20);
      if (v23)
      {
        v24 = v23;
        v37 = MEMORY[0x277D84F90];
        result = sub_220F0B1A0(0, v23 & ~(v23 >> 63), 0);
        if (v24 < 0)
        {
          __break(1u);
          return result;
        }

        v26 = 0;
        v27 = v37;
        do
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x223D9CB30](v26, v20);
          }

          else
          {
            v28 = v20[v26 + 4];
          }

          v29 = v28;
          v30 = [v28 CGColor];
          type metadata accessor for CGColor(0);
          v36 = v31;

          *&v35 = v30;
          v37 = v27;
          v33 = *(v27 + 16);
          v32 = *(v27 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_220F0B1A0((v32 > 1), v33 + 1, 1);
            v27 = v37;
          }

          ++v26;
          *(v27 + 16) = v33 + 1;
          sub_220E5D784(&v35, (v27 + 32 * v33 + 32));
        }

        while (v24 != v26);
      }

      else
      {

        v27 = MEMORY[0x277D84F90];
      }

      sub_220F85FE0(v27, v21);
      return [v10 commit];
    case 3u:
      [*(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView) setAlpha_];
      [*(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer) setOpacity_];
      return [v10 commit];
    default:
      v12 = *v9;
      [*(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView) setAlpha_];
      v13 = *(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer);
      LODWORD(v14) = 1.0;
      [v13 setOpacity_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEA0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_220FC8E10;
      v16 = [v12 CGColor];
      type metadata accessor for CGColor(0);
      v18 = v17;
      *(v15 + 56) = v17;
      *(v15 + 32) = v16;
      v19 = [v12 CGColor];
      *(v15 + 88) = v18;
      *(v15 + 64) = v19;
      sub_220F85FE0(v15, v13);

      return [v10 commit];
  }
}

id sub_220F85630()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel__cornerRadius);
}

id sub_220F856C0()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer];
  v6.receiver = v0;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel__cornerRadius);
  [v2 setCornerRadius_];
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel__cornerRadius);
  return [v3 _setCornerRadius_];
}

id sub_220F85754()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v3 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView;
  *&v0[v3] = sub_220F850BC();
  v0[OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_disablesImplicitAnimations] = 1;
  v4 = [objc_opt_self() whiteColor];
  OUTLINED_FUNCTION_0_83(v4);
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220F85838();

  return v5;
}

void sub_220F85838()
{
  [v0 addSubview_];
  v1 = [v0 layer];
  [v1 addSublayer_];
}

id sub_220F858DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v11 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView;
  *&v4[v11] = sub_220F850BC();
  v4[OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_disablesImplicitAnimations] = 1;
  v12 = [objc_opt_self() whiteColor];
  OUTLINED_FUNCTION_0_83(v12);
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_220F85838();

  return v13;
}

void sub_220F85A04()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v2 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView;
  *(v0 + v2) = sub_220F850BC();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_disablesImplicitAnimations) = 1;
  v3 = OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_background;
  *(v0 + v3) = [objc_opt_self() whiteColor];
  type metadata accessor for WeatherMapAnnotationBackground(0);
  swift_storeEnumTagMultiPayload();
  sub_220FC3740();
  __break(1u);
}

id sub_220F85B08()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v1 begin];
  if (v0[OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_disablesImplicitAnimations] == 1)
  {
    [v1 setDisableActions_];
  }

  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_gradientLayer];
  [v0 bounds];
  [v2 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps34WeatherMapAnnotationBackgroundView_materialView];
  [v0 bounds];
  [v3 setFrame_];
  return [v1 commit];
}

uint64_t sub_220F85CC8()
{
  result = type metadata accessor for WeatherMapAnnotationBackground(319);
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

void sub_220F85D94()
{
  sub_220F85E1C();
  if (v0 <= 0x3F)
  {
    sub_220FC2560();
    if (v1 <= 0x3F)
    {
      sub_220F85E64();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_220F85E1C()
{
  if (!qword_2812C5B60)
  {
    v0 = sub_220E31740();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C5B60);
    }
  }
}

void sub_220F85E64()
{
  if (!qword_27CF9F770)
  {
    sub_220E31740();
    v0 = sub_220FC2A10();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF9F770);
    }
  }
}

uint64_t sub_220F85EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotationBackground(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F85F20(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapAnnotationBackground(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F85F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotationBackground(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_220F85FE0(uint64_t a1, void *a2)
{
  v3 = sub_220FC2960();

  [a2 setColors_];
}

uint64_t sub_220F86050(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  swift_beginAccess();
  sub_220F87DE4(a1, v1 + v3);
  swift_endAccess();
  sub_220F863BC();
  OUTLINED_FUNCTION_0_84();
  return sub_220F87F60(a1, v4);
}

id sub_220F860C0()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapAnnotationViewModel();
  MEMORY[0x28223BE20](v2 - 8, v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___pinView;
  v13 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___pinView);
  if (v13)
  {
    v14 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___pinView);
  }

  else
  {
    v15 = v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_1_68();
    sub_220F87F00(v15, v6, v16);
    sub_220F86200(*(v15 + 27), v11);
    OUTLINED_FUNCTION_0_84();
    sub_220F87F60(v6, v17);
    v18 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationPinView(0));
    v19 = sub_220E461F8(v11);
    v20 = *(v1 + v12);
    *(v1 + v12) = v19;
    v14 = v19;

    v13 = 0;
  }

  v21 = v13;
  return v14;
}

int *sub_220F86200@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for WeatherMapAnnotationBackground(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = (v8 - v7);
  if (*(v2 + 26) == 1)
  {
    v10 = type metadata accessor for WeatherMapAnnotationViewModel();
    v11 = *(v2 + *(v10 + 48));
    *v9 = v11;
    swift_storeEnumTagMultiPayload();
    v12 = *v2;
    v13 = v2[1];
    v14 = v2[2];
    v15 = *(v2 + 24);
    v16 = *(v2 + *(v10 + 40));
    v17 = objc_opt_self();
    v18 = v11;
    OUTLINED_FUNCTION_7_27();
    v19 = v16;
    v20 = [v17 clearColor];
    v21 = 0;
  }

  else
  {
    if (a1 >= 2u)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    v22 = type metadata accessor for WeatherMapAnnotationViewModel();
    sub_220F87F00(v2 + v22[9], v9, type metadata accessor for WeatherMapAnnotationBackground);
    v12 = *v2;
    v13 = v2[1];
    v14 = v2[2];
    v15 = *(v2 + 24);
    v23 = v22[11];
    v24 = *(v2 + v22[10]);
    v25 = *(v2 + v23);
    OUTLINED_FUNCTION_7_27();
    v19 = v24;
    v20 = v25;
  }

  sub_220F87E48(v9, a2);
  result = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  v27 = a2 + result[5];
  *v27 = v12;
  *(v27 + 8) = v13;
  *(v27 + 16) = v14;
  *(v27 + 24) = v15;
  *(a2 + result[6]) = v19;
  *(a2 + result[7]) = v21;
  *(a2 + result[8]) = v20;
  return result;
}

uint64_t sub_220F863BC()
{
  v1 = type metadata accessor for WeatherMapAnnotationViewModel();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  swift_beginAccess();
  sub_220F87F00(v0 + v5, v4, type metadata accessor for WeatherMapAnnotationViewModel);
  sub_220F8648C(v4);
  return sub_220F87F60(v4, type metadata accessor for WeatherMapAnnotationViewModel);
}

id sub_220F8648C(uint64_t a1)
{
  v2 = v1;
  v31 = type metadata accessor for WeatherMapAnnotationPinView.ViewModel(0);
  v5 = MEMORY[0x28223BE20](v31, v4);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v30 - v8;
  v32 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_shouldDisableImplicitAnimations;
  if (v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_shouldDisableImplicitAnimations] == 1)
  {
    v10 = objc_opt_self();
    [v10 begin];
    [v10 setDisableActions_];
  }

  v33 = v9;
  v11 = *(a1 + 25);
  [v2 setCanShowCallout_];
  [v2 setEnabled_];
  if ((v11 & 1) == 0)
  {
    swift_unknownObjectWeakAssign();
  }

  v12 = sub_220F86898();
  v13 = *(a1 + 27);
  if (*(a1 + 26) & 1 | (v13 == 1))
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 40);
  v17 = *(a1 + 48);
  v16 = *(a1 + 56);
  v18 = v14 | *(a1 + 64);
  v19 = &v12[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model];
  v20 = *&v12[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model];
  v21 = *&v12[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model + 8];
  *v19 = *(a1 + 32);
  *(v19 + 1) = v15;
  *(v19 + 2) = v17;
  *(v19 + 3) = v16;
  *(v19 + 16) = v18;

  sub_220E3B0C4(v20, v21);
  sub_220E9BFF8();

  v22 = v33;
  sub_220F86200(v13, v33);
  v23 = sub_220F860C0();
  v24 = v30;
  sub_220F87F00(v22, v30, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);
  sub_220E4618C(v24);

  v25 = dbl_220FD8058[*(v22 + *(v31 + 28))];
  [*&v2[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___pinView] setBounds_];
  sub_220F86FB4();
  [v2 bounds];
  [v2 setBounds_];
  v26 = [v2 _calloutView];
  if (v26)
  {
    v27 = v26;
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      [v28 setStrokeColor_];
    }
  }

  result = sub_220F87F60(v22, type metadata accessor for WeatherMapAnnotationPinView.ViewModel);
  if (v2[v32] == 1)
  {
    return [objc_opt_self() commit];
  }

  return result;
}

double sub_220F867DC()
{
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  swift_beginAccess();
  result = 0.0;
  if (*(v1 + 26))
  {
    return -3.0;
  }

  return result;
}

double sub_220F86834()
{
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  swift_beginAccess();
  result = 2.0;
  if ((*(v1 + 26) & 1) == 0)
  {
    result = 0.0;
    if (*(v1 + 27) < 2u)
    {
      return 1.0;
    }
  }

  return result;
}

id sub_220F86898()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapAnnotationViewModel();
  MEMORY[0x28223BE20](v2 - 8, v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___locationLabel;
  v8 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___locationLabel);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___locationLabel);
  }

  else
  {
    if (qword_27CF9C068 != -1)
    {
      swift_once();
    }

    v27[0] = xmmword_27CFAF4A0;
    v27[1] = *&qword_27CFAF4B0;
    v27[2] = xmmword_27CFAF4C0;
    v27[3] = *&qword_27CFAF4D0;
    v10 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_1_68();
    sub_220F87F00(v1 + v10, v6, v11);
    v12 = (*(v6 + 26) & 1) != 0 || *(v6 + 27) == 1;
    v14 = *(v6 + 32);
    v13 = *(v6 + 40);
    v16 = *(v6 + 48);
    v15 = *(v6 + 56);
    v17 = *(v6 + 64);
    sub_220E9CA50(v27, v24);

    OUTLINED_FUNCTION_0_84();
    sub_220F87F60(v6, v18);
    v24[0] = v14;
    v24[1] = v13;
    v24[2] = v16;
    v24[3] = v15;
    v25 = v17;
    v26 = v12;
    v19 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationLocationLabel());
    v20 = sub_220E9C384(v27, v24);
    v21 = *(v1 + v7);
    *(v1 + v7) = v20;
    v9 = v20;

    v8 = 0;
  }

  v22 = v8;
  return v9;
}

id sub_220F86A3C(void *a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_29(OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_dataSource);
  OUTLINED_FUNCTION_0_29(OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_delegate);
  *&v3[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_cachedBalloonContentView] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___locationLabel] = 0;
  *&v3[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___pinView] = 0;
  *&v3[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_mapAnnotation] = a1;
  OUTLINED_FUNCTION_1_68();
  sub_220F87F00(a2, &v3[v8], v9);
  v3[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_shouldDisableImplicitAnimations] = a3;
  v10 = a1;
  v11 = sub_220FC26C0();

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v16, sel_initWithAnnotation_reuseIdentifier_, v10, v11);

  v13 = v12;
  sub_220F86BAC();

  OUTLINED_FUNCTION_0_84();
  sub_220F87F60(a2, v14);
  return v13;
}

uint64_t sub_220F86BAC()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapAnnotationViewModel();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_220FC1070();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *&v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_mapAnnotation];
  v16 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
  swift_beginAccess();
  sub_220F87F00(v15 + v16, v14, type metadata accessor for WeatherMapAnnotatedLocationData);
  sub_220F05E6C(v10);
  sub_220F87F60(v14, type metadata accessor for WeatherMapAnnotatedLocationData);
  sub_220FC1030();
  (*(v7 + 8))(v10, v6);
  v17 = sub_220FC0FB0();
  v19 = v18;
  if (v17 == sub_220FC0FB0() && v19 == v20)
  {

    LODWORD(v23) = 1144750080;
  }

  else
  {
    v22 = sub_220FC3940();

    LODWORD(v23) = 1132068864;
    if (v22)
    {
      *&v23 = 750.0;
    }
  }

  [v1 setDisplayPriority_];
  [v1 setCollisionMode_];
  [v1 _setCalloutStyle_];
  v24 = sub_220F860C0();
  [v1 addSubview_];

  v25 = sub_220F86898();
  [v1 addSubview_];

  v26 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  swift_beginAccess();
  sub_220F87F00(&v1[v26], v5, type metadata accessor for WeatherMapAnnotationViewModel);
  sub_220F8648C(v5);
  return sub_220F87F60(v5, type metadata accessor for WeatherMapAnnotationViewModel);
}

void sub_220F86EE8()
{
  OUTLINED_FUNCTION_0_29(OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_dataSource);
  OUTLINED_FUNCTION_0_29(OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_delegate);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_cachedBalloonContentView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___locationLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___pinView) = 0;
  sub_220FC3740();
  __break(1u);
}

double sub_220F86FB4()
{
  v1 = sub_220F86898();
  sub_220E9C770();
  OUTLINED_FUNCTION_17_0();

  v2 = sub_220F860C0();
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v12.origin.x = v4;
  v12.origin.y = v6;
  v12.size.width = v8;
  v12.size.height = v10;
  CGRectGetHeight(v12);
  sub_220F86834();
  return v0;
}

void sub_220F8709C()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  [v0 bounds];
  v2 = CGRectGetWidth(v15) * 0.5;
  [v0 bounds];
  v3 = CGRectGetHeight(v16) * 0.5;
  v4 = sub_220F860C0();
  [v4 setCenter_];

  v5 = sub_220F86898();
  sub_220E9C770();
  v7 = v6;

  v8 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___locationLabel;
  v9 = *&v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___locationLabel];
  [v9 bounds];
  [v9 setBounds_];

  v10 = *&v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView____lazy_storage___pinView];
  v11 = *&v1[v8];
  [v10 frame];
  MaxY = CGRectGetMaxY(v17);
  [v11 setCenter_];

  v13 = *&v1[v8];
  [v13 frame];
  v19 = CGRectIntegral(v18);
  [v13 setFrame_];
}

uint64_t sub_220F87274(char a1, char a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_setSelected_animated_, a1 & 1, a2 & 1);
  if ((a1 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    sub_220F26698(v2);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_220F26790(v2, a1 & 1, a2 & 1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220F873F0()
{
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + *(type metadata accessor for WeatherMapAnnotationViewModel() + 52));

  return v2;
}

uint64_t sub_220F874E0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel];
  OUTLINED_FUNCTION_5_1();
  if (v2[26] == 1)
  {
    v3 = *&v2[*(type metadata accessor for WeatherMapAnnotationViewModel() + 56)];
  }

  else
  {
    v7.receiver = v0;
    v7.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v7, sel_accessibilityValue);
    if (v4)
    {
      v5 = v4;
      v3 = sub_220FC2700();
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_220F875D4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (a3)
  {
    sub_220FC2700();
  }

  v6 = a1;
  a4();
}

unint64_t sub_220F8767C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v5, sel_accessibilityTraits);
  v2 = &v0[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel];
  OUTLINED_FUNCTION_5_1();
  if (v2[26])
  {
    v3 = *MEMORY[0x277D76598];
  }

  else
  {
    v3 = 0;
  }

  return v3 | v1;
}

double sub_220F87754()
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong accessibilityFrame];
    OUTLINED_FUNCTION_17_0();
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = ObjectType;
    objc_msgSendSuper2(&v6, sel_accessibilityFrame);
    OUTLINED_FUNCTION_17_0();
  }

  return v1;
}

id sub_220F8784C()
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v3 = Strong, v4 = [Strong accessibilityPath], v3, !v4))
  {
    v6.receiver = v0;
    v6.super_class = ObjectType;
    return objc_msgSendSuper2(&v6, sel_accessibilityPath);
  }

  return v4;
}

double sub_220F87980()
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong accessibilityActivationPoint];
    OUTLINED_FUNCTION_17_0();
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = ObjectType;
    objc_msgSendSuper2(&v6, sel_accessibilityActivationPoint);
    OUTLINED_FUNCTION_17_0();
  }

  return v1;
}

uint64_t type metadata accessor for WeatherMapAnnotationView()
{
  result = qword_2812C9B08;
  if (!qword_2812C9B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220F87B74()
{
  result = type metadata accessor for WeatherMapAnnotationViewModel();
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

void *sub_220F87C8C()
{
  v1 = v0;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_10;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v2 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_cachedBalloonContentView;
  if (*&v0[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_cachedBalloonContentView] && (sub_220F268BC(*&v0[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_mapAnnotation]) & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v3 = sub_220F26138(v0);
  v4 = *&v0[v2];
  *&v0[v2] = v3;

  v5 = [v0 isEnabled];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v5)
  {
    swift_unknownObjectWeakAssign();
  }

LABEL_10:
  v6 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_cachedBalloonContentView;
  v7 = *&v1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_cachedBalloonContentView];
  if (v7 && swift_unknownObjectWeakLoadStrong())
  {
    v8 = v7;
    sub_220F2671C(v8);

    swift_unknownObjectRelease();
  }

  v9 = *&v1[v6];
  v10 = v9;
  return v9;
}

uint64_t sub_220F87DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotationViewModel();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F87E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapAnnotationBackground(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_220F87EAC()
{
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + *(type metadata accessor for WeatherMapAnnotationViewModel() + 48));
  v3 = v2;
  return v2;
}

uint64_t sub_220F87F00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220F87F60(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_220F87FCC(uint64_t a1)
{
  OUTLINED_FUNCTION_5_35();
  MinX = CGRectGetMinX(v11);
  v9 = MinX;
  *&MinX = a1;
  v10 = *&MinX;
  v12.origin.x = OUTLINED_FUNCTION_6_0();
  MinY = CGRectGetMinY(v12);
  v13.origin.x = OUTLINED_FUNCTION_6_0();
  MaxX = CGRectGetMaxX(v13);
  v14.origin.x = OUTLINED_FUNCTION_6_0();
  MaxY = CGRectGetMaxY(v14);
  v4.f64[0] = MaxX;
  v4.f64[1] = MaxY;
  v5.f64[0] = v9;
  v5.f64[1] = MinY;
  *&result = vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v5), v4), vdupq_lane_s32(v10, 0)).u64[0];
  return result;
}

uint64_t sub_220F88060(void *a1)
{
  [a1 setRenderPipelineState_];
  sub_220F886CC(v1 + 16, &v4);
  if (v5[24] == 255)
  {
    return sub_220E832A0(&v4);
  }

  v6 = v4;
  v7[0] = *v5;
  *(v7 + 9) = *&v5[9];
  sub_220F880E4(a1, 1uLL);
  return sub_220E3FF0C(&v6);
}

id sub_220F880E4(void *a1, unint64_t a2)
{
  v3 = v2;
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  result = sub_220EF5194(v3, v8);
  switch(v9)
  {
    case 1:
      [a1 setFragmentTexture:v8[0] atIndex:a2];
      result = swift_unknownObjectRelease();
      break;
    case 2:
    case 3:
      result = sub_220E3FF0C(v8);
      break;
    case 4:
      result = [a1 setFragmentTexture:0 atIndex:a2];
      break;
    default:
      v7 = v8[0];
      break;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (HIDWORD(a2))
  {
    goto LABEL_12;
  }

  if (a2 == 4)
  {
    return [a1 setFragmentBytes:&v7 length:4 atIndex:1];
  }

  return result;
}

id sub_220F88234()
{
  OUTLINED_FUNCTION_5_35();
  sub_220F88060(v0);
  OUTLINED_FUNCTION_6_0();
  sub_220F87FCC(512);
  v1 = OUTLINED_FUNCTION_2_49();
  sub_220F880E4(v1, v2);
  v3 = OUTLINED_FUNCTION_1_69();
  [v3 v4];
  v5 = OUTLINED_FUNCTION_1_69();
  [v5 v6];
  v7 = OUTLINED_FUNCTION_1_69();
  return [v7 v8];
}

id sub_220F88340(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_4_45();
  sub_220F88060(v5);
  OUTLINED_FUNCTION_6_0();
  sub_220F87FCC(512);
  v6 = OUTLINED_FUNCTION_2_49();
  sub_220F880E4(v6, v7);
  sub_220F880E4(a4, 2uLL);
  v8 = OUTLINED_FUNCTION_1_69();
  [v8 v9];
  v10 = OUTLINED_FUNCTION_1_69();
  [v10 v11];
  v12 = OUTLINED_FUNCTION_1_69();
  return [v12 v13];
}

uint64_t sub_220F8843C()
{
  sub_220E832A0(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

double sub_220F884A0(void *a1)
{
  sub_220FC3200();
  v12 = v2;
  v10 = v4;
  v11 = v3;
  v9 = v5;

  v6.f64[0] = v10;
  v6.f64[1] = v9;
  v7.f64[0] = v12;
  v7.f64[1] = v11;
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v7), v6).u64[0];
  return result;
}

id sub_220F884F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  OUTLINED_FUNCTION_4_45();
  sub_220F88060(v11);
  OUTLINED_FUNCTION_6_0();
  sub_220F87FCC(512);
  v12 = OUTLINED_FUNCTION_2_49();
  sub_220F880E4(v12, v13);
  sub_220F880E4(a5, 2uLL);
  sub_220F880E4(a5, 3uLL);
  sub_220F880E4(a5, 4uLL);
  LODWORD(v23) = v8;
  v14 = OUTLINED_FUNCTION_3_46();
  [v14 v15];
  v16 = OUTLINED_FUNCTION_3_46();
  [v16 v17];
  v24 = *(v5 + 128);
  v18 = OUTLINED_FUNCTION_3_46();
  [v18 v19];
  LOBYTE(v25) = a4;
  v20 = OUTLINED_FUNCTION_3_46();
  return [v20 v21];
}

uint64_t sub_220F88644()
{
  sub_220E832A0(v0 + 16);
  swift_unknownObjectRelease();
  sub_220E3FF0C(v0 + 72);
  return v0;
}

uint64_t sub_220F88674()
{
  sub_220F88644();

  return MEMORY[0x2821FE8D8](v0, 144, 15);
}

uint64_t sub_220F886CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F88764()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F030);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v5 - v2;
  sub_220E43574();
  return sub_220F739EC(v3);
}

void static WeatherMap.LocationAction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29_2();
  v43 = v0;
  sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v41 = v2;
  v42 = v1;
  MEMORY[0x28223BE20](v1, v3);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v40 - v7;
  MEMORY[0x28223BE20](v9, v10);
  type metadata accessor for WeatherMap.LocationAction(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F800);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v40 - v25;
  v28 = *(v27 + 56);
  sub_220F8FF64();
  sub_220F8FF64();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_85();
      sub_220F8FF64();
      if (OUTLINED_FUNCTION_27_14() == 1)
      {
        v35 = v41;
        v34 = v42;
        (*(v41 + 32))(v8, &v26[v28], v42);
        sub_220FC1010();
        v36 = *(v35 + 8);
        v36(v8, v34);
        v36(v18, v34);
        goto LABEL_17;
      }

      v14 = v18;
      goto LABEL_13;
    case 2u:
      OUTLINED_FUNCTION_0_85();
      sub_220F8FF64();
      if (OUTLINED_FUNCTION_27_14() != 2)
      {
        goto LABEL_13;
      }

      v29 = OUTLINED_FUNCTION_30_12();
      v30 = v42;
      v31(v29);
      sub_220FC1010();
      v32 = OUTLINED_FUNCTION_28_15();
      (v18)(v32);
      v33 = v14;
      goto LABEL_16;
    case 3u:
      if (OUTLINED_FUNCTION_27_14() == 3)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    case 4u:
      if (OUTLINED_FUNCTION_27_14() != 4)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    default:
      OUTLINED_FUNCTION_0_85();
      sub_220F8FF64();
      if (OUTLINED_FUNCTION_27_14())
      {
        v14 = v22;
LABEL_13:
        (*(v41 + 8))(v14, v42);
LABEL_14:
        sub_220E3B2DC(v26, &qword_27CF9F800);
      }

      else
      {
        v30 = v42;
        v37 = OUTLINED_FUNCTION_30_12();
        v38(v37);
        sub_220FC1010();
        v39 = OUTLINED_FUNCTION_28_15();
        (v18)(v39);
        v33 = v22;
LABEL_16:
        (v18)(v33, v30);
LABEL_17:
        OUTLINED_FUNCTION_14_25();
      }

      OUTLINED_FUNCTION_22();
      return;
  }
}

uint64_t static WeatherMap.Event.Overlay.== infix(_:_:)(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a1[7] >> 6;
  if (!v4)
  {
    v17 = v2 ^ v3 ^ 1;
    v18 = v3 >> 62 == 0;
LABEL_10:
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    return v19 & 1;
  }

  v5 = *(a2 + 3);
  v6 = *(a2 + 1);
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  if (v4 != 1)
  {
    if (v3 >> 62 == 2 && v3 == 0x8000000000000000)
    {
      v22 = vorrq_s8(v6, v5);
      if (!(v8 | *&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | v9 | v10 | v7))
      {
        v19 = 1;
        return v19 & 1;
      }
    }

    goto LABEL_17;
  }

  if (v3 >> 62 != 1)
  {
LABEL_17:
    v19 = 0;
    return v19 & 1;
  }

  v11 = *(a1 + 5);
  v12 = *(a1 + 6);
  v13 = *(a1 + 7);
  v14 = *(a1 + 8);
  v15 = *(a1 + 24);
  v16 = *(a1 + 8);
  switch(v2)
  {
    case 5:
      if (*a2 != 5)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    case 4:
      if (*a2 != 4)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    case 3:
      if (*a2 != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
  }

  v19 = 0;
  if ((v3 - 6) <= 0xFCu && v2 == v3)
  {
LABEL_27:
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v16, v6), vceqq_s64(v15, v5)))))
    {
      v17 = v12 == v8 && v13 == v9 && v14 == v10;
      v18 = v11 == v7;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  return v19 & 1;
}

uint64_t static WeatherMap.Event.== infix(_:_:)(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[7];
  v4 = *a2;
  v5 = (v3 >> 4) & 3;
  if (v5)
  {
    v6 = *(a1 + 1);
    v7 = *(a1 + 2);
    v8 = *(a1 + 1) | ((*(a1 + 5) | (v3 << 16)) << 32);
    v9 = *(a1 + 3);
    v10 = *(a1 + 4);
    v11 = *(a1 + 5);
    v12 = *(a1 + 6);
    v14 = *(a1 + 7);
    v13 = *(a1 + 8);
    v15 = a2[1];
    v16 = a2[2];
    v17 = a2[3];
    v18 = a2[4];
    v19 = a2[5];
    v20 = a2[6];
    v22 = a2[7];
    v21 = a2[8];
    if (v5 == 1)
    {
      if ((v4 & 0x3000000000000000) == 0x1000000000000000)
      {
        v30 = v2;
        v31 = v8;
        v33 = (v8 & 0xFFCFFFFFFFFFFFFFLL) >> 48;
        v32 = (v8 & 0xFFCFFFFFFFFFFFFFLL) >> 32;
        v34 = v6;
        v35 = v7;
        v36 = v9;
        v37 = v10;
        v38 = v11;
        v39 = v12;
        v40 = v14;
        v41 = v13;
        v29[0] = v4 & 0xCFFFFFFFFFFFFFFFLL;
        v29[1] = v15;
        v29[2] = v16;
        v29[3] = v17;
        v29[4] = v18;
        v29[5] = v19;
        v29[6] = v20;
        v29[7] = v22;
        v29[8] = v21;
        v23 = static WeatherMap.Event.Overlay.== infix(_:_:)(&v30, v29);
        return v23 & 1;
      }
    }

    else
    {
      v24 = v7 | v6 | v9 | v10 | v11 | v12 | v14 | v13;
      if ((v2 | (v8 << 8)) == 0x2000000000000000 && v24 == 0)
      {
        if ((v4 & 0x3000000000000000) != 0x2000000000000000 || v4 != 0x2000000000000000)
        {
          goto LABEL_25;
        }
      }

      else if ((v4 & 0x3000000000000000) != 0x2000000000000000 || v4 != 0x2000000000000001)
      {
        goto LABEL_25;
      }

      if (!(v16 | v15 | v17 | v18 | v19 | v20 | v22 | v21))
      {
        v23 = 1;
        return v23 & 1;
      }
    }

LABEL_25:
    v23 = 0;
    return v23 & 1;
  }

  if ((v4 & 0x3000000000000000) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = v2 ^ v4 ^ 1;
  }

  return v23 & 1;
}

__n128 WeatherMap.displayMode.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 WeatherMap.displayMode.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t WeatherMap.preferredMapSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 40) = result;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3 & 1;
  return result;
}

uint64_t WeatherMap.selectedLocationId.getter()
{
  OUTLINED_FUNCTION_29_13();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808);
  MEMORY[0x223D9B7E0](&v2, v0);
  return v2;
}

uint64_t WeatherMap.selectedLocationId.setter()
{
  OUTLINED_FUNCTION_29_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808);
  return sub_220FC22A0();
}

void (*WeatherMap.selectedLocationId.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v4 = v1[9];
  v5 = v1[10];
  v3[12] = v4;
  v3[13] = v5;
  v7 = v1[11];
  v6 = v1[12];
  v3[14] = v7;
  v3[15] = v6;
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v7;
  v3[3] = v6;

  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808);
  MEMORY[0x223D9B7E0]();
  return sub_220F890F8;
}

void sub_220F890F8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v2[4] = *(*a1 + 96);
  v2[10] = v2[8];
  v4 = v2[9];
  v5 = v2[15];
  v6 = v2[14];
  v2[5] = v3;
  v2[6] = v6;
  v2[7] = v5;
  v2[11] = v4;
  if (a2)
  {

    sub_220FC22A0();
  }

  else
  {
    sub_220FC22A0();
  }

  free(v2);
}

uint64_t WeatherMap.$selectedLocationId.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808);
  sub_220FC22B0();
  return v1;
}

uint64_t WeatherMap.overlayKind.getter()
{
  OUTLINED_FUNCTION_24_17();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810);
  return MEMORY[0x223D9B7E0](v0);
}

uint64_t sub_220F89274@<X0>(_BYTE *a1@<X8>)
{
  result = WeatherMap.overlayKind.getter();
  *a1 = v3;
  return result;
}

uint64_t WeatherMap.overlayKind.setter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810);
  sub_220FC22A0();
}

void (*WeatherMap.overlayKind.modify(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v3[6] = v4;
  v3[7] = v5;
  v6 = *(v1 + 120);
  *(v3 + 19) = v6;
  *v3 = v4;
  v3[1] = v5;
  *(v3 + 16) = v6;

  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810);
  MEMORY[0x223D9B7E0]();
  return sub_220F89404;
}

void sub_220F89404(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_220FC22A0();

  free(v1);
}

uint64_t WeatherMap.$overlayKind.getter()
{
  OUTLINED_FUNCTION_24_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810);
  return sub_220FC22B0();
}

uint64_t WeatherMap.cacheIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t sub_220F895B0()
{
  v1 = sub_220FC1CD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 184);
  if (*(v0 + 192) == 1)
  {
  }

  else
  {

    sub_220FC2E20();
    v7 = sub_220FC1EE0();
    sub_220FC16C0();

    sub_220FC1CC0();
    swift_getAtKeyPath();
    sub_220F8FFBC(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }

  return v6;
}

double sub_220F89700()
{
  v1 = sub_220FC1CD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 216);
  if (*(v0 + 224) == 1)
  {
    return *(v0 + 216);
  }

  sub_220FC2E20();
  v8 = sub_220FC1EE0();
  sub_220FC16C0();

  sub_220FC1CC0();
  swift_getAtKeyPath();
  sub_220E2C4C4(v6, 0);
  (*(v2 + 8))(v5, v1);
  return *&v9[1];
}

uint64_t sub_220F8984C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220FC1CD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_220E43574();
  if (v12 == 1)
  {
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v11;
  }

  else
  {
    sub_220FC2E20();
    v9 = sub_220FC1EE0();
    sub_220FC16C0();

    sub_220FC1CC0();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_220F899BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220FC1CD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F818);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - v9;
  type metadata accessor for WeatherMap(0);
  sub_220E43574();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_220F90F5C(v10, a1);
  }

  sub_220FC2E20();
  v12 = sub_220FC1EE0();
  sub_220FC16C0();

  sub_220FC1CC0();
  swift_getAtKeyPath();

  return (*(v3 + 8))(v6, v2);
}

uint64_t WeatherMap.init(displayMode:startsFocused:preferredMapSize:locations:overlayKind:selectedLocationId:weatherData:options:cacheIdentifier:isPreferredForCachedInstance:debugIdentifier:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17)
{
  v22 = *a7;
  v21 = a7[1];
  v23 = *(a7 + 16);
  *(a9 + 184) = swift_getKeyPath();
  *(a9 + 192) = 0;
  sub_220FC12B0();
  OUTLINED_FUNCTION_3_47();
  sub_220F90264(v24, v25);
  v34 = a1[1];
  v35 = *a1;
  *(a9 + 200) = sub_220FC1BF0();
  *(a9 + 208) = v26;
  *(a9 + 216) = swift_getKeyPath();
  *(a9 + 224) = 0;
  *(a9 + 232) = swift_getKeyPath();
  *(a9 + 272) = 0;
  v27 = type metadata accessor for WeatherMap(0);
  v28 = v27[19];
  *(a9 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F818);
  swift_storeEnumTagMultiPayload();
  v29 = a9 + v27[20];
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  v30 = (a9 + v27[21]);
  type metadata accessor for CachingBannerViewControllerFactory();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_33_9(v31);
  sub_220FC2260();
  *v30 = v40;
  v30[1] = v41;
  *(a9 + 104) = v22;
  *(a9 + 112) = v21;
  *(a9 + 120) = v23;
  *(a9 + 80) = a10;
  *(a9 + 96) = a11;
  *a9 = v35;
  *(a9 + 16) = v34;
  *(a9 + 32) = a2;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5 & 1;
  *(a9 + 64) = a6;
  *(a9 + 72) = a8;
  *(a9 + 128) = a12;
  *(a9 + 144) = a13;
  *(a9 + 152) = a14;
  *(a9 + 160) = a15;
  *(a9 + 168) = a16;
  *(a9 + 176) = a17;
  v32 = (a9 + v27[22]);
  *v32 = 0;
  v32[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F820);
  sub_220FC2270();
  OUTLINED_FUNCTION_32_2();
  sub_220E563B0();
  swift_endAccess();
}

uint64_t WeatherMap.init<A, B>(displayMode:startsFocused:locations:overlayKind:selectedLocationId:weatherData:options:cacheIdentifier:isPreferredForCachedInstance:debugIdentifier:supplementaryOverlay:contentStatusBanner:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v42 = a4[1];
  v43 = *a4;
  v28 = *(a4 + 16);
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 56) = 1;
  *(a9 + 184) = swift_getKeyPath();
  *(a9 + 192) = 0;
  sub_220FC12B0();
  OUTLINED_FUNCTION_3_47();
  sub_220F90264(v29, v30);
  v40 = a1[1];
  v41 = *a1;
  *(a9 + 200) = sub_220FC1BF0();
  *(a9 + 208) = v31;
  *(a9 + 216) = swift_getKeyPath();
  *(a9 + 224) = 0;
  *(a9 + 232) = swift_getKeyPath();
  *(a9 + 272) = 0;
  v32 = type metadata accessor for WeatherMap(0);
  v33 = v32[19];
  *(a9 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F818);
  swift_storeEnumTagMultiPayload();
  v34 = a9 + v32[20];
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
  v35 = (a9 + v32[21]);
  type metadata accessor for CachingBannerViewControllerFactory();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_33_9(v36);
  sub_220FC2260();
  *v35 = v48;
  v35[1] = v49;
  *(a9 + 120) = v28;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 104) = v43;
  *(a9 + 112) = v42;
  *(a9 + 96) = a8;
  *a9 = v41;
  *(a9 + 16) = v40;
  *(a9 + 32) = a2;
  *(a9 + 64) = a3;
  *(a9 + 72) = a5;
  *(a9 + 128) = a10;
  *(a9 + 144) = a11;
  *(a9 + 152) = a12;
  *(a9 + 160) = a13;
  *(a9 + 168) = a14;
  *(a9 + 176) = a15;
  v37 = swift_allocObject();
  *(v37 + 2) = a20;
  *(v37 + 3) = a21;
  *(v37 + 4) = a22;
  *(v37 + 5) = a23;
  *(v37 + 6) = a24;
  *(v37 + 7) = a16;
  *(v37 + 8) = a17;
  v38 = (a9 + v32[22]);
  *v38 = sub_220F8EFC8;
  v38[1] = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F820);
  sub_220FC2270();
  type metadata accessor for ClosureBackedBannerViewFactory();
  swift_getWitnessTable();

  OUTLINED_FUNCTION_32_2();
  sub_220E563B0();
  swift_endAccess();
}

uint64_t sub_220F8A1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_220FC1DA0();
  (*(v4 + 16))(v6, v11, a3);
  v13 = sub_220FC1D90();
  (*(v4 + 8))(v11, a3);
  return v13;
}

uint64_t WeatherMap.makeCoordinator()()
{
  v18 = *(v0 + 8);
  v19 = *v0;
  v16 = *(v0 + 24);
  v17 = *(v0 + 16);
  v15 = *(v0 + 32);
  v1 = *(v0 + 160);
  v2 = *(v0 + 64);
  v3 = *(v0 + 128);

  v4 = sub_220F895B0();
  v5 = sub_220F89700();
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v26 = *(v0 + 104);
  v27 = v7;
  LOBYTE(v28) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810);
  sub_220FC22B0();
  v9 = *(v0 + 80);
  v26 = *(v0 + 72);
  v27 = v9;
  v28 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808);
  sub_220FC22B0();
  v26 = v23;
  v27 = v24;
  LOBYTE(v28) = v25;
  *(&v28 + 1) = v20;
  v29 = v21;
  v30 = v22;
  v10 = *(v0 + 200);
  if (v10)
  {
    type metadata accessor for WeatherMap.Coordinator();
    v11 = swift_allocObject();

    return sub_220F8F388(v19, v18, v17, v16, v15, v1, v2, v3, v5, v4, v6, &v26, v10, v11);
  }

  else
  {
    sub_220FC12B0();
    OUTLINED_FUNCTION_3_47();
    sub_220F90264(v13, v14);
    result = sub_220FC1BE0();
    __break(1u);
  }

  return result;
}

void sub_220F8A4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_36_10();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = *v26;
  v31 = v26[1];
  v33 = *(v26 + 16);
  v34 = v26[3];
  v35 = v26[4];
  v36 = v26[5];
  v37 = v26[6];
  a11 = *v26;
  a12 = v31;
  LOBYTE(a13) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810);
  MEMORY[0x223D9B7E0](&a9);
  v38 = *(v30 + 48);
  switch(a9)
  {
    case 5u:
      if (v38 != 5)
      {
        goto LABEL_7;
      }

      break;
    case 4u:
      if (v38 == 4)
      {
        break;
      }

      goto LABEL_7;
    case 3u:
      if (v38 == 3)
      {
        break;
      }

LABEL_7:
      a11 = v32;
      a12 = v31;
      LOBYTE(a13) = v33;
      LOBYTE(a9) = v38;

      sub_220FC22A0();

      break;
    default:
      if (a9 != v38 || (v38 - 6) >= 0xFFFFFFFD)
      {
        goto LABEL_7;
      }

      break;
  }

  a11 = v34;
  a12 = v35;
  a13 = v36;
  a14 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808);
  MEMORY[0x223D9B7E0](&a9);
  v40 = a9;
  v39 = a10;
  v41 = (v30 + *(type metadata accessor for WeatherMapStore.ViewModel(0) + 36));
  v43 = *v41;
  v42 = v41[1];
  if (v39)
  {
    if (v42)
    {
      if (v40 == v43 && v39 == v42)
      {

        goto LABEL_28;
      }

      v45 = sub_220FC3940();

      if (v45)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }
  }

  else if (!v42)
  {
    goto LABEL_28;
  }

  a11 = v34;
  a12 = v35;
  a13 = v36;
  a14 = v37;
  a9 = v43;
  a10 = v42;

  sub_220FC22A0();
LABEL_28:
  OUTLINED_FUNCTION_37_8();
}

BOOL sub_220F8A674(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *(v1 - 1);
    v4 = *v1;
    v1 += 16;
  }

  while (v4 != 1 || v3 != 0);
  return OUTLINED_FUNCTION_8_31(v2);
}

BOOL sub_220F8A6A0(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *(v1 - 1);
    v4 = *v1;
    v1 += 16;
  }

  while (v4 != 1 || v3 != 3);
  return OUTLINED_FUNCTION_8_31(v2);
}

double sub_220F8A6CC(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = (v1 + 16);
    v4 = *v1;
    v1 += 16;
    if ((v4 & 1) == 0)
    {
      return *(v3 - 3);
    }
  }

  return 0.0;
}

BOOL sub_220F8A700(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *(v1 - 1);
    v4 = *v1;
    v1 += 16;
  }

  while (v4 != 1 || v3 != 1);
  return OUTLINED_FUNCTION_8_31(v2);
}

BOOL sub_220F8A72C(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *(v1 - 1);
    v4 = *v1;
    v1 += 16;
  }

  while (v4 != 1 || v3 < 4);
  return v2 == 0;
}

uint64_t sub_220F8A760(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 24);
    v11 = *(result + 32);
    LOBYTE(v12) = *(result + 40);
    v13 = *(result + 48);
    v14 = *(result + 56);
    v15 = *(result + 64);
    v16 = *(result + 72);

    sub_220F8A4B4(a1, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  }

  return result;
}

uint64_t WeatherMap.Coordinator.deinit()
{

  return v0;
}

uint64_t WeatherMap.Coordinator.__deallocating_deinit()
{
  WeatherMap.Coordinator.deinit();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

void WeatherMap.makeUIViewController(context:)()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v1;
  v39 = v1;
  v3 = type metadata accessor for WeatherMap(0);
  v4 = OUTLINED_FUNCTION_29(v3);
  v6 = v5;
  v48 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v8);
  OUTLINED_FUNCTION_32_13();
  v42 = v9;
  MEMORY[0x28223BE20](v10, v11);
  v37[1] = v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830);
  OUTLINED_FUNCTION_6();
  v15 = v14;
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_32_13();
  v40 = v18;
  v37[4] = v19;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = v37 - v23;
  v25 = *(v0 + 144);
  v26 = *(v0 + 152);
  v46 = *(v0 + 168);
  v47 = v25;
  v27 = *(v0 + 176);
  v43 = v26;
  v44 = v27;
  v45 = *(v0 + 160);
  v38 = *(v15 + 16);
  v38(v37 - v23, v2, v13, v22);
  v37[2] = type metadata accessor for WeatherMap;
  sub_220F8FF64();
  v28 = *(v15 + 80);
  v29 = *(v6 + 80);
  v37[3] = v28 | v29;
  v30 = swift_allocObject();
  v31 = *(v15 + 32);
  v41 = v30;
  v31(v30 + ((v28 + 16) & ~v28), v24, v13);
  sub_220F90F04();
  sub_220F8FF64();
  v32 = v40;
  (v38)(v40, v39, v13);
  v33 = (v48 + v28 + ((v29 + 16) & ~v29)) & ~v28;
  v34 = swift_allocObject();
  sub_220F90F04();
  v31(v34 + v33, v32, v13);
  objc_allocWithZone(type metadata accessor for WeatherMapCachingViewController());
  v35 = v43;

  v36 = v44;

  sub_220F8D7C8(v47, v35, v46, v36, v45, sub_220F8FFC8, v41, sub_220F9008C, v34);
  OUTLINED_FUNCTION_22();
}

id sub_220F8AC34(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WeatherMap(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830);
  sub_220FC1EC0();
  v5 = *(v10 + 16);

  v6 = *(a2 + 200);
  if (v6)
  {
    sub_220F8FF64();
    v7 = swift_allocObject();
    sub_220F90F04();
    v8 = objc_allocWithZone(type metadata accessor for WeatherMapViewController(0));

    return sub_220F91154(v5, v6, sub_220F91100, v7, v8);
  }

  else
  {
    sub_220FC12B0();
    sub_220F90264(&qword_2812C5F48, MEMORY[0x277D6CCE8]);
    result = sub_220FC1BE0();
    __break(1u);
  }

  return result;
}

void sub_220F8AE1C(char *a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v48 = v46 - v7;
  v47 = type metadata accessor for WeatherMapOverlay();
  MEMORY[0x28223BE20](v47, v8);
  v46[1] = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WeatherMap(0);
  MEMORY[0x28223BE20](v10, v11);
  sub_220F8FF64();
  v12 = swift_allocObject();
  sub_220F90F04();
  v13 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_previewViewController];
  v14 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_previewViewController];
  *v13 = sub_220F90FCC;
  *(v13 + 1) = v12;
  sub_220E2DD2C(v14);
  sub_220F8FF64();
  v15 = swift_allocObject();
  sub_220F90F04();
  v16 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler];
  v17 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler];
  *v16 = sub_220F91018;
  *(v16 + 1) = v15;
  sub_220E2DD2C(v17);
  sub_220F8FF64();
  v18 = swift_allocObject();
  sub_220F90F04();
  v19 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canAddLocationHandler];
  v20 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canAddLocationHandler];
  *v19 = sub_220F9106C;
  v19[1] = v18;
  sub_220E2DD2C(v20);
  sub_220F8FF64();
  v21 = swift_allocObject();
  sub_220F90F04();
  v22 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canViewLocationHandler];
  v23 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canViewLocationHandler];
  *v22 = sub_220F91084;
  v22[1] = v21;
  sub_220E2DD2C(v23);
  sub_220F8FF64();
  v24 = swift_allocObject();
  sub_220F90F04();
  v25 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler];
  v26 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler];
  *v25 = sub_220F914D4;
  *(v25 + 1) = v24;
  sub_220E2DD2C(v26);
  sub_220F8984C(&v50);
  v27 = v51;
  if (v51)
  {
    v28 = v52;
    __swift_project_boxed_opaque_existential_1(&v50, v51);
    v29 = (*(v28 + 24))(v27, v28);
    v31 = v30;
    v32 = __swift_destroy_boxed_opaque_existential_0(&v50);
    if (v29)
    {
      ObjectType = swift_getObjectType();
      v34 = *(v31 + 16);
      v35 = swift_unknownObjectRetain();
      v34(v35, &protocol witness table for WeatherMapViewController, ObjectType, v31);
      v32 = swift_unknownObjectRelease();
    }
  }

  else
  {
    v32 = sub_220E3B2DC(&v50, &qword_27CF9F868);
  }

  v36 = *(a2 + *(v10 + 88));
  if (v36)
  {
    v37 = v36(v32);
  }

  else
  {
    v37 = 0;
  }

  sub_220E78EB0(v37);
  v38 = (a2 + *(v10 + 84));
  v40 = *v38;
  v39 = v38[1];
  *&v50 = v40;
  *(&v50 + 1) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F820);
  sub_220FC2270();
  v41 = sub_220F8B6F0();

  sub_220E78F10(v41);

  swift_beginAccess();
  type metadata accessor for WeatherMapStore.ViewModel(0);
  v42 = v48;
  sub_220E43574();
  if (__swift_getEnumTagSinglePayload(v42, 1, v47) == 1)
  {
    sub_220E3B2DC(v42, &unk_27CF9EB80);
  }

  else
  {
    sub_220F90F04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830);
    sub_220FC1EC0();

    sub_220F31868();

    sub_220F901C8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830);
  sub_220FC1EC0();
  v43 = *(v50 + 16);

  sub_220E78AD0(v43);
  v44 = *(a2 + 200);
  if (v44)
  {
    v51 = sub_220FC12B0();
    v52 = MEMORY[0x277D6CCE0];
    *&v50 = v44;
    v45 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_resolver;
    swift_beginAccess();

    __swift_destroy_boxed_opaque_existential_0(&a1[v45]);
    sub_220E1E72C(&v50, &a1[v45]);
    swift_endAccess();
    sub_220F8BA04(a1, 1, 0);
  }

  else
  {
    sub_220FC12B0();
    sub_220F90264(&qword_2812C5F48, MEMORY[0x277D6CCE8]);
    sub_220FC1BE0();
    __break(1u);
  }
}

uint64_t sub_220F8B51C(const void *a1)
{
  v2 = sub_220FC1CD0();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  memcpy(__dst, a1, sizeof(__dst));
  sub_220E43574();
  if (v14[40] == 1)
  {
    v15 = *v14;
    v16 = *&v14[16];
    v17 = *&v14[32];
  }

  else
  {
    sub_220FC2E20();
    v10 = sub_220FC1EE0();
    OUTLINED_FUNCTION_40_5();

    sub_220FC1CC0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v9, v2);
  }

  v11 = *(&v16 + 1);
  if (!*(&v16 + 1))
  {
    return sub_220E3B2DC(&v15, &qword_27CF9F868);
  }

  v12 = v17;
  __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
  memcpy(v14, __dst, sizeof(v14));
  (*(v12 + 56))(v14, v11, v12);
  return __swift_destroy_boxed_opaque_existential_0(&v15);
}

void *sub_220F8B6F0()
{
  v1 = v0;
  swift_beginAccess();
  sub_220E43574();
  if (AssociatedTypeWitness)
  {
    sub_220E1E72C(&v22, v26);
    v2 = v27;
    v3 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v4 = *(v3 + 32);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v22);
    v4(v2, v3);
    swift_beginAccess();
    sub_220E43574();
    if (v19)
    {
      sub_220F90EC4(&v18, &v20);
      v5 = *(v0 + 104);
      if (v5)
      {
        v6 = v21;
        v7 = __swift_project_boxed_opaque_existential_1(&v20, v21);
        v8 = v5;
        if ((sub_220F8EC34(v7, &v22, v6) & 1) == 0)
        {
          v9 = v27;
          v10 = v28;
          __swift_project_boxed_opaque_existential_1(v26, v27);
          v5 = sub_220F8EB04(v9, v10);

          sub_220F90E60(&v22, &v18);
          swift_beginAccess();
          sub_220E563B0();
          swift_endAccess();
          v11 = *(v1 + 104);
          *(v1 + 104) = v5;
          v12 = v5;
        }

        __swift_destroy_boxed_opaque_existential_0(&v20);
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_0(&v20);
    }

    else
    {
      sub_220E3B2DC(&v18, &qword_27CF9F908);
    }

    v13 = v27;
    v14 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v5 = sub_220F8EB04(v13, v14);
    sub_220F90E60(&v22, &v20);
    swift_beginAccess();
    sub_220E563B0();
    swift_endAccess();
    v15 = *(v1 + 104);
    *(v1 + 104) = v5;
    v16 = v5;

LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(&v22);
    __swift_destroy_boxed_opaque_existential_0(v26);
    return v5;
  }

  sub_220E3B2DC(&v22, &qword_27CF9F828);
  return 0;
}

void sub_220F8BA04(char *a1, char a2, char a3)
{
  v4 = v3;
  v58 = type metadata accessor for WeatherMap(0);
  MEMORY[0x28223BE20](v58, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE60);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE68);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v57 - v15;
  v59 = v3;
  v60 = a2;
  v61 = a3;

  sub_220F32468(sub_220F90C44);

  v17 = [a1 view];
  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = v17;
  sub_220FC18B0();
  v19 = sub_220FC18C0();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v19);
  sub_220FC18D0();
  sub_220E3B2DC(v12, &qword_27CF9EE60);
  v20 = sub_220FC18E0();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v20);
  sub_220FC31E0();

  sub_220F8FF64();
  v21 = swift_allocObject();
  sub_220F90F04();
  v22 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_previewViewController];
  v23 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_previewViewController];
  *v22 = sub_220F914C0;
  *(v22 + 1) = v21;
  sub_220E2DD2C(v23);
  sub_220F8FF64();
  v24 = swift_allocObject();
  sub_220F90F04();
  v25 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler];
  v26 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_locationActionHandler];
  *v25 = sub_220F914C8;
  *(v25 + 1) = v24;
  sub_220E2DD2C(v26);
  sub_220F8FF64();
  v27 = swift_allocObject();
  sub_220F90F04();
  v28 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canAddLocationHandler];
  v29 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canAddLocationHandler];
  *v28 = sub_220F914CC;
  *(v28 + 1) = v27;
  sub_220E2DD2C(v29);
  sub_220F8FF64();
  v30 = swift_allocObject();
  sub_220F90F04();
  v31 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canViewLocationHandler];
  v32 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_canViewLocationHandler];
  *v31 = sub_220F914D0;
  *(v31 + 1) = v30;
  sub_220E2DD2C(v32);
  sub_220F8FF64();
  v33 = swift_allocObject();
  sub_220F90F04();
  v34 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler];
  v35 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_onMapEventHandler];
  *v34 = sub_220F914D4;
  *(v34 + 1) = v33;
  sub_220E2DD2C(v35);
  v36 = &a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_preferredMapSize];
  v37 = *(v4 + 40);
  v38 = *(v4 + 48);
  v39 = *(v4 + 56);
  if (a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_preferredMapSize + 16])
  {
    if (*(v4 + 56))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 56) & 1) == 0 && *v36 == v37 && v36[1] == v38)
  {
    goto LABEL_11;
  }

  *v36 = v37;
  v36[1] = v38;
  *(v36 + 16) = v39;
  sub_220E78B2C();
LABEL_11:
  sub_220F8984C(v62);
  v41 = v63;
  if (v63)
  {
    v42 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v43 = (*(v42 + 24))(v41, v42);
    v45 = v44;
    v46 = __swift_destroy_boxed_opaque_existential_0(v62);
    if (v43)
    {
      ObjectType = swift_getObjectType();
      v48 = *(v45 + 16);
      v49 = swift_unknownObjectRetain();
      v48(v49, &protocol witness table for WeatherMapViewController, ObjectType, v45);
      v46 = swift_unknownObjectRelease();
    }
  }

  else
  {
    v46 = sub_220E3B2DC(v62, &qword_27CF9F868);
  }

  v50 = v58;
  v51 = *(v4 + *(v58 + 88));
  if (v51)
  {
    v52 = v51(v46);
  }

  else
  {
    v52 = 0;
  }

  sub_220E78EB0(v52);
  v53 = (v4 + *(v50 + 84));
  v55 = *v53;
  v54 = v53[1];
  v62[0] = v55;
  v62[1] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F820);
  sub_220FC2270();
  v56 = sub_220F8B6F0();

  sub_220E78F10(v56);
}

void WeatherMap.updateUIViewController(_:context:)()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v1;
  v3 = sub_220FC1CD0();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  if ((*(v0 + 16) & 0x8000000000000000) == 0)
  {
    v11 = v0 + *(type metadata accessor for WeatherMap(0) + 80);
    v12 = *v11;
    if (*(v11 + 8) == 1)
    {
      if (v12)
      {
        goto LABEL_13;
      }
    }

    else
    {

      sub_220FC2E20();
      v13 = sub_220FC1EE0();
      sub_220FC16C0();

      sub_220FC1CC0();
      swift_getAtKeyPath();
      sub_220E2C4C4(v12, 0);
      (*(v5 + 8))(v10, v3);
      if (v24)
      {
        goto LABEL_13;
      }
    }
  }

  v14 = *(v0 + 152);
  v15 = &v2[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier];
  *v15 = *(v0 + 144);
  v15[1] = v14;

  v2[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_isPreferredForCachedInstance] = *(v0 + 160);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = [v2 childViewControllers];
    sub_220F90184();
    v19 = sub_220FC2970();

    v20 = sub_220F40C10(v19);

    if (v20)
    {
      v21 = *&v17[OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F830);
      sub_220FC1EC0();
      v22 = *(v25 + 16);

      if (v21 == v22)
      {
        sub_220FC1ED0();
        v23 = sub_220FC1AF0();

        if (v23)
        {
        }

        sub_220F8BA04(v17, 0, v23 != 0);
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_22();
}

void sub_220F8C298(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v113 = a4;
  LODWORD(v118) = a3;
  v116 = type metadata accessor for WeatherMapPerformanceTestConditions(0);
  MEMORY[0x28223BE20](v116, v6);
  v108 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F920);
  MEMORY[0x28223BE20](v115, v8);
  v117 = &v106 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F030);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v112 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v110 = &v106 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v119 = &v106 - v18;
  v19 = type metadata accessor for InteractiveFocus();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v114 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for WeatherMapStore.ViewModel(0);
  MEMORY[0x28223BE20](v122, v22);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v120 = &v106 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v106 - v30;
  v32 = a1 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  swift_beginAccess();
  v33 = *(v32 + 40);

  sub_220F35194();
  if ((v34 & 1) == 0)
  {
    sub_220F32C58();
  }

  v121 = a1;
  v36 = *(a2 + 72);
  v35 = *(a2 + 80);
  v38 = *(a2 + 88);
  v37 = *(a2 + 96);
  v125 = v36;
  v126 = v35;
  v127 = v38;
  v128 = v37;
  v111 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808);
  v40 = MEMORY[0x223D9B7E0](&v123);
  v42 = (v32 + v122[9]);
  v43 = v42[1];
  if (v124)
  {
    if (v43)
    {
      if (v123 == *v42 && v124 == v43)
      {
      }

      else
      {
        v109 = v38;
        v45 = sub_220FC3940();

        if ((v45 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_19:

      v49 = v122;
      goto LABEL_20;
    }

    v109 = v38;
  }

  else
  {
    v109 = v38;
    if (!v43)
    {
      goto LABEL_19;
    }
  }

LABEL_14:
  if (*(v33 + 16))
  {
    v107 = &v106;
    MEMORY[0x28223BE20](v40, v41);
    *(&v106 - 2) = a2;
    v46 = sub_220F7788C(sub_220F90EDC, (&v106 - 4), v33);

    LODWORD(v107) = !v46;
  }

  else
  {

    LODWORD(v107) = 0;
  }

  v125 = v36;
  v126 = v35;
  v127 = v109;
  v128 = v111;
  MEMORY[0x223D9B7E0](&v123, v39);
  v48 = v123;
  v47 = v124;
  sub_220F8FF64();
  v49 = v122;
  v50 = &v31[v122[9]];
  swift_bridgeObjectRetain_n();

  *v50 = v48;
  *(v50 + 1) = v47;
  v51 = v114;
  sub_220F319DC();
  sub_220F347F0(v51, &v31[v49[11]]);
  v31[v49[12]] = 1;
  v31[v49[18]] = (v118 & 1) == 0;
  v52 = v120;
  sub_220F8FF64();
  sub_220F3196C(v52);
  sub_220F901C8();
  swift_bridgeObjectRelease_n();
LABEL_20:
  v54 = *a2;
  v53 = *(a2 + 8);
  v55 = *(a2 + 16);
  v57 = *v32;
  v56 = *(v32 + 8);
  v58 = *(v32 + 16);
  if (v55 < 0)
  {
    if (v58 < 0)
    {
      if (LOBYTE(v53))
      {
LABEL_26:
        if (LOBYTE(v56))
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      if (!(LOBYTE(v56) & 1 | (v54 != v57)))
      {
        goto LABEL_43;
      }
    }
  }

  else if ((v58 & 0x8000000000000000) == 0)
  {
    v59 = *(v32 + 24);
    v60 = *(a2 + 24);
    if ((v55 & 1) == 0)
    {
      if ((v58 & 1) == 0)
      {
        v61 = v54 == v57 && v53 == v56;
        if (v61 && v60 == v59)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_39;
    }

    LOBYTE(v56) = v58 & (v60 == v59);
    goto LABEL_26;
  }

LABEL_39:
  v63 = *(a2 + 24);
  v64 = (v118 ^ 1) & v113;
  sub_220F8FF64();
  if (v55 < 0 && (*(v24 + 2) & 0x8000000000000000) == 0)
  {
    v118 = a2;
    v65 = v31;
    v66 = v32;
    v67 = v53;
    v68 = v114;
    sub_220F319DC();
    v69 = v122;
    v70 = v68;
    v53 = v67;
    v32 = v66;
    v31 = v65;
    a2 = v118;
    sub_220F347F0(v70, &v24[v122[11]]);
    v24[v69[12]] = 1;
  }

  *v24 = v54;
  *(v24 + 1) = v53;
  *(v24 + 2) = v55;
  *(v24 + 3) = v63;
  v71 = v64 & 1;
  v49 = v122;
  v24[v122[18]] = v71;
  sub_220F8FF64();
  sub_220F3196C(v31);
  sub_220F901C8();
LABEL_43:
  v72 = *(a2 + 112);
  v73 = *(a2 + 120);
  v125 = *(a2 + 104);
  v126 = v72;
  LOBYTE(v127) = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F810);
  MEMORY[0x223D9B7E0](&v123);
  v75 = *(v32 + 48);
  if (v123 == 5)
  {
    v76 = v117;
    v77 = v119;
    if (v75 != 5)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v76 = v117;
    v77 = v119;
    if (v123 == 4)
    {
      if (v75 == 4)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    if (v123 == 3)
    {
      if (v75 == 3)
      {
        goto LABEL_50;
      }

LABEL_49:
      v78 = *(a2 + 112);
      v79 = *(a2 + 120);
      v125 = *(a2 + 104);
      v126 = v78;
      LOBYTE(v127) = v79;
      MEMORY[0x223D9B7E0](&v123, v74);
      LOBYTE(v125) = v123;
      sub_220F317A4(&v125);
      goto LABEL_50;
    }

    if (v123 != v75 || (v75 - 6) >= 0xFFFFFFFD)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  v122 = *(a2 + 136);
  v80 = sub_220F8CF50(v122);
  if (v80 != *(v32 + v49[15]))
  {
    sub_220F8FF64();
    v31[v49[15]] = v80;
    v81 = v120;
    sub_220F8FF64();
    sub_220F3196C(v81);
    sub_220F901C8();
  }

  v82 = *(a2 + 160);
  if (v82 != *(v32 + v49[25]))
  {
    sub_220F8FF64();
    v31[v49[25]] = v82;
    v83 = v120;
    sub_220F8FF64();
    sub_220F3196C(v83);
    sub_220F901C8();
  }

  v84 = *(a2 + 128);
  v85 = *(v32 + v49[10]);
  if (!v84)
  {
    if (!v85)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (!v85 || (, v86 = , sub_220F17768(v86, v85), v88 = v87, , , (v88 & 1) == 0))
  {
LABEL_59:
    sub_220F330CC(v84);
  }

LABEL_60:
  sub_220F899BC(v77);
  v89 = *(v115 + 48);
  sub_220E43574();
  sub_220E43574();
  v90 = v116;
  if (__swift_getEnumTagSinglePayload(v76, 1, v116) == 1)
  {
    sub_220E3B2DC(v77, &qword_27CF9F030);
    if (__swift_getEnumTagSinglePayload(v76 + v89, 1, v90) == 1)
    {
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  v91 = v110;
  sub_220E43574();
  if (__swift_getEnumTagSinglePayload(v76 + v89, 1, v90) == 1)
  {
    sub_220E3B2DC(v119, &qword_27CF9F030);
    sub_220F901C8();
LABEL_65:
    sub_220E3B2DC(v76, &qword_27CF9F920);
LABEL_66:
    v76 = v112;
    v92 = sub_220F899BC(v112);
    MEMORY[0x28223BE20](v92, v93);
    *(&v106 - 2) = v76;
    sub_220F32B5C(sub_220F90EFC);
LABEL_67:
    sub_220E3B2DC(v76, &qword_27CF9F030);
    goto LABEL_68;
  }

  v103 = v108;
  sub_220F90F04();
  v104 = static WeatherMapPerformanceTestConditions.== infix(_:_:)(v91, v103);
  sub_220F901C8();
  sub_220E3B2DC(v119, &qword_27CF9F030);
  sub_220F901C8();
  sub_220E3B2DC(v76, &qword_27CF9F030);
  if (!v104)
  {
    goto LABEL_66;
  }

LABEL_68:
  v94 = sub_220F895B0();
  v95 = *(v32 + v49[13]);

  sub_220F17BE4(v94, v95);
  v97 = v96;

  if ((v97 & 1) == 0)
  {
    v98 = sub_220F895B0();
    sub_220F33130(v98);
  }

  v99 = sub_220F8A674(v122);
  v100 = v49[22];
  if (v99 != *(v32 + v100))
  {
    *(v32 + v100) = v99;
    sub_220F318B0();
  }

  v101 = sub_220F8A72C(v122);
  v102 = v49[21];
  if (v101 != *(v32 + v102))
  {
    *(v32 + v102) = v101;
    sub_220F318B0();
  }
}

uint64_t sub_220F8CE64(uint64_t a1, uint64_t a2)
{
  v3 = sub_220FC1020();
  v5 = v4;
  v6 = *(a2 + 80);
  v13 = *(a2 + 72);
  v14 = v6;
  v15 = *(a2 + 88);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F808);
  MEMORY[0x223D9B7E0](&v11, v7);
  if (v12)
  {
    if (v3 == v11 && v12 == v5)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_220FC3940();
    }
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

BOOL sub_220F8CF50(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *(v1 - 1);
    v4 = *v1;
    v1 += 16;
  }

  while (v4 != 1 || v3 != 2);
  return OUTLINED_FUNCTION_8_31(v2);
}

uint64_t sub_220F8CF7C()
{
  v0 = sub_220FC1CD0();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  sub_220E43574();
  if (v15 == 1)
  {
    v16 = v12;
    v17 = v13;
    v18 = v14;
  }

  else
  {
    sub_220FC2E20();
    v8 = sub_220FC1EE0();
    OUTLINED_FUNCTION_40_5();

    sub_220FC1CC0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v7, v0);
  }

  v9 = *(&v17 + 1);
  if (*(&v17 + 1))
  {
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    (*(v10 + 16))(v9, v10);
    __swift_destroy_boxed_opaque_existential_0(&v16);
  }

  else
  {
    sub_220E3B2DC(&v16, &qword_27CF9F868);
  }

  return OUTLINED_FUNCTION_9();
}

uint64_t sub_220F8D12C()
{
  OUTLINED_FUNCTION_57_2();
  sub_220FC1CD0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_3_45();
  sub_220E43574();
  if (v8 == 1)
  {
    OUTLINED_FUNCTION_15_16();
  }

  else
  {
    sub_220FC2E20();
    v2 = sub_220FC1EE0();
    OUTLINED_FUNCTION_19_16();

    sub_220FC1CC0();
    OUTLINED_FUNCTION_26_17();

    v3 = OUTLINED_FUNCTION_20_19();
    v4(v3);
  }

  if (!v10)
  {
    return sub_220E3B2DC(v9, &qword_27CF9F868);
  }

  OUTLINED_FUNCTION_18_18();
  v5 = OUTLINED_FUNCTION_23_15();
  v6(v5);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_220F8D294()
{
  OUTLINED_FUNCTION_57_2();
  sub_220FC1CD0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_3_45();
  sub_220E43574();
  if (v9 == 1)
  {
    OUTLINED_FUNCTION_15_16();
  }

  else
  {
    sub_220FC2E20();
    v2 = sub_220FC1EE0();
    OUTLINED_FUNCTION_19_16();

    sub_220FC1CC0();
    OUTLINED_FUNCTION_26_17();

    v3 = OUTLINED_FUNCTION_20_19();
    v4(v3);
  }

  if (v11)
  {
    OUTLINED_FUNCTION_18_18();
    v5 = OUTLINED_FUNCTION_23_15();
    v7 = v6(v5);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_220E3B2DC(v10, &qword_27CF9F868);
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_220F8D408()
{
  OUTLINED_FUNCTION_57_2();
  sub_220FC1CD0();
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_3_45();
  sub_220E43574();
  if (v9 == 1)
  {
    OUTLINED_FUNCTION_15_16();
  }

  else
  {
    sub_220FC2E20();
    v2 = sub_220FC1EE0();
    OUTLINED_FUNCTION_19_16();

    sub_220FC1CC0();
    OUTLINED_FUNCTION_26_17();

    v3 = OUTLINED_FUNCTION_20_19();
    v4(v3);
  }

  if (v11)
  {
    OUTLINED_FUNCTION_18_18();
    v5 = OUTLINED_FUNCTION_23_15();
    v7 = v6(v5);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_220E3B2DC(v10, &qword_27CF9F868);
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_220F8D5B4@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherMap.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t sub_220F8D618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220F90264(qword_2812C7A68, type metadata accessor for WeatherMap);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_220F8D6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220F90264(qword_2812C7A68, type metadata accessor for WeatherMap);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_220F8D75C()
{
  sub_220F90264(qword_2812C7A68, type metadata accessor for WeatherMap);
  sub_220FC1EA0();
  __break(1u);
}

id sub_220F8D7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = (v9 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier);
  *v17 = 0;
  v17[1] = 0;
  *(v9 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_wasDismissed) = 0;
  swift_unknownObjectWeakInit();
  *v17 = a1;
  v17[1] = a2;

  v18 = (v9 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_debugIdentifier);
  *v18 = a3;
  v18[1] = a4;
  *(v9 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_isPreferredForCachedInstance) = a5;
  v19 = (v9 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_makeMapViewController);
  *v19 = a6;
  v19[1] = a7;
  v20 = (v9 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_connectToMapViewController);
  *v20 = a8;
  v20[1] = a9;
  type metadata accessor for WeatherMapCachingViewController();
  OUTLINED_FUNCTION_10();
  return objc_msgSendSuper2(v21, v22);
}

void sub_220F8D8C8()
{
  v1 = (v0 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_wasDismissed) = 0;
  swift_unknownObjectWeakInit();
  sub_220FC3740();
  __break(1u);
}

void sub_220F8D96C(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    if (v5 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 parentViewController];
    if (v8)
    {
      v9 = v8;

      if (v9 == v2)
      {
        sub_220FC2EF0();
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_220FC2EE0();

    v12 = *&v2[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_connectToMapViewController];

    v12(v11);
  }
}

void sub_220F8DA78(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_220F8D96C(Strong);
}

void sub_220F8DAE8()
{
  OUTLINED_FUNCTION_36_10();
  v21 = v1;
  if (!*&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier + 8])
  {
    goto LABEL_29;
  }

  v20 = *&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier];
  v2 = qword_2812C8898;
  v22 = *&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier + 8];

  if (v2 != -1)
  {
LABEL_35:
    OUTLINED_FUNCTION_6_30();
  }

  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v3 = qword_2812C88A0[0];
  v4 = sub_220F40C10(qword_2812C88A0[0]);

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      goto LABEL_29;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223D9CB30](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v6 = sub_220FC1380();
    if (v6)
    {

      v7 = sub_220FC1380();
      if (!v7 || (v8 = v7, v7, v8 != v0))
      {
        v9 = sub_220FC1380();
        if (v9)
        {
          v10 = v9[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_wasDismissed];

          if ((v10 & 1) == 0)
          {
            v11 = sub_220FC1380();
            if (v11)
            {
              v12 = v11;
              v14 = *(v11 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier);
              v13 = *(v11 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier + 8);

              if (v13)
              {
                if (v14 == v20 && v13 == v22)
                {
                }

                else
                {
                  v16 = sub_220FC3940();

                  if ((v16 & 1) == 0)
                  {
                    goto LABEL_26;
                  }
                }

                if ((v21 & 1) == 0)
                {

                  goto LABEL_32;
                }

                v17 = sub_220FC1380();
                if (v17)
                {
                  v18 = v17;
                  Strong = swift_unknownObjectWeakLoadStrong();

                  if (Strong)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_26:
  }

LABEL_32:
  sub_220FC1380();

LABEL_29:
  OUTLINED_FUNCTION_37_8();
}

void sub_220F8DD28()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
LABEL_2:

    return;
  }

  sub_220F8DAE8();
  if (Strong)
  {
    if ((*(Strong + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_isPreferredForCachedInstance) & 1) == 0)
    {
      v6 = Strong;
      v2 = swift_unknownObjectWeakLoadStrong();
      sub_220F8DA78(v2);
      sub_220F8DA78(0);
      Strong = v6;
    }

    goto LABEL_2;
  }

  v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_makeMapViewController);

  v5 = v3(v4);

  sub_220F8DA78(v5);
}

void sub_220F8DE1C()
{
  OUTLINED_FUNCTION_36_10();
  if (*&v0[OBJC_IVAR____TtC11WeatherMaps31WeatherMapCachingViewController_cacheIdentifier + 8])
  {
    if (qword_2812C8898 != -1)
    {
LABEL_18:
      OUTLINED_FUNCTION_6_30();
    }

    OUTLINED_FUNCTION_10();
    swift_beginAccess();
    v1 = qword_2812C88A0[0];
    v2 = sub_220F40C10(qword_2812C88A0[0]);

    for (i = 0; ; ++i)
    {
      if (v2 == i)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F238);
        swift_allocObject();
        v5 = v0;
        v6 = sub_220FC1390();
        OUTLINED_FUNCTION_32_2();
        sub_220F4387C(0, qword_2812C88A0[0]);
        sub_220F43080(0, 0, v6);
        swift_endAccess();
        goto LABEL_15;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D9CB30](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v4 = sub_220FC1380();

      if (v4)
      {

        if (v4 == v0)
        {
          break;
        }
      }
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_37_8();
}

uint64_t sub_220F8DFA8()
{
  if (qword_2812C8898 != -1)
  {
    OUTLINED_FUNCTION_6_30();
  }

  OUTLINED_FUNCTION_32_2();
  sub_220F8F018(qword_2812C88A0, v0);
  v2 = v1;
  v3 = sub_220F40C10(qword_2812C88A0[0]);
  if (v3 < v2)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_220F43044(v2, v3);
    return swift_endAccess();
  }

  return result;
}