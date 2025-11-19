void sub_220EA2BC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps8HintView_borderLayer);
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  v4 = [v3 CGColor];

  [v1 setFillColor_];
  [v1 setLineWidth_];
  v5 = [v2 blackColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = [v6 CGColor];
  [v1 setStrokeColor_];
}

void sub_220EA2CFC()
{
  v1 = [v0 layer];
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  v4 = [v3 CGColor];
  [v1 setShadowColor_];

  v5 = [v0 layer];
  [v5 setShadowOffset_];

  v6 = [v0 layer];
  LODWORD(v7) = 1.0;
  [v6 setShadowOpacity_];

  v8 = [v0 layer];
  [v8 setShadowRadius_];
}

void sub_220EA2E68()
{
  v1 = v0;
  v2 = sub_220FC18A0();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v30 - v11;
  v13 = sub_220FC3320();
  OUTLINED_FUNCTION_6();
  v15 = v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v30 - v22;
  v24 = (v0 + OBJC_IVAR____TtC11WeatherMaps8HintView_title);
  *v24 = 0;
  v24[1] = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps8HintView_image) = 0;
  v25 = (v0 + OBJC_IVAR____TtC11WeatherMaps8HintView_subtitle);
  *v25 = 0;
  v25[1] = 0;
  v31 = OBJC_IVAR____TtC11WeatherMaps8HintView_dismissIcon;
  sub_220FC3280();
  sub_220FC32B0();
  sub_220E1966C(0, &qword_2812C5B50);
  sub_220F6DD88(0x6B72616D78, 0xE500000000000000, *MEMORY[0x277D76968], -1, *MEMORY[0x277D74418], 0, 0, 2);
  sub_220FC3310();
  sub_220FC1890();
  sub_220FC1880();
  (*(v4 + 16))(v8, v12, v2);
  sub_220FC3270();
  sub_220E1966C(0, &qword_27CF9CD50);
  (*(v15 + 16))(v19, v23, v13);
  v26 = sub_220FC3330();
  v27 = [objc_opt_self() tertiaryLabelColor];
  [v26 setTintColor_];

  (*(v4 + 8))(v12, v2);
  (*(v15 + 8))(v23, v13);
  *(v1 + v31) = v26;
  *(v1 + OBJC_IVAR____TtC11WeatherMaps8HintView_iconSpacerWidth) = 0x4026000000000000;
  *(v1 + OBJC_IVAR____TtC11WeatherMaps8HintView_titleSpacerHeight) = 0x4010000000000000;
  *(v1 + OBJC_IVAR____TtC11WeatherMaps8HintView_dismissAffordancePadding) = 0x4020000000000000;
  v28 = OBJC_IVAR____TtC11WeatherMaps8HintView_borderLayer;
  *(v1 + v28) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v29 = OBJC_IVAR____TtC11WeatherMaps8HintView_maskLayer;
  *(v1 + v29) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  sub_220FC3740();
  __break(1u);
}

uint64_t sub_220EA3250()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps8HintView_onDismissHandler);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_220EA32D4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_220FC10C0();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x28223BE20](v10, v12).n128_u64[0];
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v4 effectiveUserInterfaceLayoutDirection];
  v17 = &v5[OBJC_IVAR____TtC11WeatherMaps8HintView_configuration];
  v18 = *&v5[OBJC_IVAR____TtC11WeatherMaps8HintView_configuration + 48];
  if (v18 == 1)
  {
    v44 = 0;
    v19 = 0;
    v20 = 0;
    v21 = v17[4];
LABEL_3:
    v22 = 0.0;
    goto LABEL_4;
  }

  v21 = 0.0;
  switch(v18)
  {
    case 8:
      v19 = 0;
      v20 = 0;
      v44 = 1;
      v22 = 0.0;
      break;
    case 4:
      v44 = 0;
      v19 = 0;
      v20 = 1;
      goto LABEL_3;
    case 2:
      v44 = 0;
      v20 = 0;
      v22 = v17[4];
      v19 = 1;
      break;
    default:
      v44 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_3;
  }

LABEL_4:
  v51.origin.x = UIEdgeInsetsInsetRect(a1, a2, a3, a4, v21, v22);
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  v27 = CGPathCreateWithRoundedRect(v51, v17[2] + v17[2], v17[2] + v17[2], 0);
  v28 = 0.0;
  if (*(v17 + 80) == 1)
  {
    [*&v5[OBJC_IVAR____TtC11WeatherMaps8HintView_dismissIcon] frame];
    v28 = CGRectGetWidth(v52) + 8.0;
  }

  v29 = *&v5[OBJC_IVAR____TtC11WeatherMaps8HintView_contentView];
  v30 = v28 + *v17;
  if (v16 == 1)
  {
    v31 = v30;
  }

  else
  {
    v31 = *v17;
  }

  [v29 setFrame_];
  if (*(v17 + 64))
  {
    if (*(v17 + 64) == 1)
    {
      v32 = v17[7];
      if (v16 != 1)
      {
        v53.origin.x = a1;
        v53.origin.y = a2;
        v53.size.width = a3;
        v53.size.height = a4;
        CGRectGetMaxX(v53);
        v54.origin.x = a1;
        v54.origin.y = a2;
        v54.size.width = a3;
        v54.size.height = a4;
        MaxY = CGRectGetMaxY(v54);
LABEL_19:
        v32 = MaxY - v32;
      }
    }

    else
    {
      sub_220FC3130();
      sub_220FC3130();
      v32 = v34;
    }
  }

  else
  {
    v32 = v17[7];
    if (v16 == 1)
    {
      v55.origin.x = a1;
      v55.origin.y = a2;
      v55.size.width = a3;
      v55.size.height = a4;
      CGRectGetMaxX(v55);
      v56.origin.x = a1;
      v56.origin.y = a2;
      v56.size.width = a3;
      v56.size.height = a4;
      MaxY = CGRectGetMaxX(v56);
      goto LABEL_19;
    }
  }

  if (v18 == 1)
  {
    Mutable = CGPathCreateMutable();
LABEL_38:
    v45 = 0x3FF0000000000000;
    v46 = 0;
    v47 = 0;
    v48 = 0x3FF0000000000000;
    v49 = 0;
    v50 = 0;
    sub_220FC2E60();
    sub_220FC2E80();
    sub_220FC2E80();
    goto LABEL_39;
  }

  v43 = v32;
  if (v20)
  {
    v57.origin.x = a1;
    v57.origin.y = a2;
    v57.size.width = a3;
    v57.size.height = a4;
    CGRectGetMaxY(v57);
    v58.origin.x = a1;
    v58.origin.y = a2;
    v58.size.width = a3;
    v58.size.height = a4;
    CGRectGetMaxY(v58);
  }

  else if (!v19)
  {
    v36 = a4;
    if (v44)
    {
      v37 = a1;
      v38 = a2;
      v39 = a3;
      CGRectGetMaxX(*(&v36 - 3));
      v59.origin.x = a1;
      v59.origin.y = a2;
      v59.size.width = a3;
      v59.size.height = a4;
      CGRectGetMaxX(v59);
    }
  }

  Mutable = CGPathCreateMutable();
  v40 = v18 == 2 || v18 == 8;
  if (v40 || v18 == 4)
  {
    goto LABEL_38;
  }

LABEL_39:
  (*(v11 + 104))(v15, *MEMORY[0x277CBF258], v10);
  v41 = sub_220FC3340();

  (*(v11 + 8))(v15, v10);
  return v41;
}

void sub_220EA3868(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *&v1[OBJC_IVAR____TtC11WeatherMaps8HintView_backgroundEffectView];
    v4 = a1;
    v5 = [v3 layer];
    v6 = [v5 mask];

    v7 = *&v2[OBJC_IVAR____TtC11WeatherMaps8HintView_maskLayer];
    if (!v6 || (sub_220E1966C(0, &qword_27CF9DD18), v8 = v7, v9 = sub_220FC3250(), v6, v8, (v9 & 1) == 0))
    {
      v10 = [v3 layer];
      [v10 setMask_];
    }

    v13 = v4;
    [v7 setPath_];
    [*&v2[OBJC_IVAR____TtC11WeatherMaps8HintView_borderLayer] setPath_];
    v11 = [v2 layer];
    [v11 setShadowPath_];
  }

  else
  {
    v12 = [*&v1[OBJC_IVAR____TtC11WeatherMaps8HintView_backgroundEffectView] layer];
    [v12 setMask_];

    [*&v2[OBJC_IVAR____TtC11WeatherMaps8HintView_maskLayer] setPath_];
    [*&v2[OBJC_IVAR____TtC11WeatherMaps8HintView_borderLayer] setPath_];
    v13 = [v2 layer];
    [v13 setShadowPath_];
  }
}

uint64_t sub_220EA3A84(double a1, double a2)
{
  v4 = *&v2[OBJC_IVAR____TtC11WeatherMaps8HintView_backgroundEffectView];
  v5 = 0.0;
  [v4 setFrame_];
  v6 = *&v2[OBJC_IVAR____TtC11WeatherMaps8HintView_contentView];
  [v4 frame];
  [v6 setFrame_];
  v7 = *&v2[OBJC_IVAR____TtC11WeatherMaps8HintView_maskLayer];
  [v2 bounds];
  [v7 setFrame_];
  v8 = *&v2[OBJC_IVAR____TtC11WeatherMaps8HintView_borderLayer];
  [v2 bounds];
  [v8 setFrame_];
  [v4 frame];
  v13 = sub_220EA32D4(v9, v10, v11, v12);
  sub_220EA3868(v13);

  v14 = *&v2[OBJC_IVAR____TtC11WeatherMaps8HintView_icon];
  v15 = [v14 image];
  if (v15)
  {

    [v14 frame];
    CGRectGetWidth(v25);
  }

  v16 = [v14 image];
  if (v16)
  {

    [v14 frame];
    v5 = CGRectGetWidth(v26) + 11.0;
  }

  v17 = sub_220FC2300();
  v18 = *&v2[OBJC_IVAR____TtC11WeatherMaps8HintView_maxContentWidth];
  if (v17)
  {
    if (v18 > a1)
    {
      v18 = a1;
    }

    v19 = v18 - v5 - (*&v2[OBJC_IVAR____TtC11WeatherMaps8HintView_configuration] + *&v2[OBJC_IVAR____TtC11WeatherMaps8HintView_configuration]);
  }

  else
  {
    v19 = v18 - v5;
  }

  [*&v2[OBJC_IVAR____TtC11WeatherMaps8HintView_label] sizeThatFits_];
  [*&v2[OBJC_IVAR____TtC11WeatherMaps8HintView_subtitleLabel] sizeThatFits_];
  v20 = [v6 frame];
  MEMORY[0x28223BE20](v20, v21);
  sub_220FC1810();
  v22 = [v4 frame];
  MEMORY[0x28223BE20](v22, v23);
  return sub_220FC1810();
}

void sub_220EA3DB8(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WeatherMaps8HintView_dismissIcon);
  [v3 sizeToFit];
  v6 = v1 + OBJC_IVAR____TtC11WeatherMaps8HintView_configuration;
  v7 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps8HintView_configuration + 80) == 1)
  {
    [v3 frame];
    Width = CGRectGetWidth(v22);
    v5 = 8.0;
  }

  v8 = *(v1 + OBJC_IVAR____TtC11WeatherMaps8HintView_icon);
  v9 = [v8 image];
  if (v9)
  {

    [v8 sizeToFit];
    [v8 frame];
    v7 = CGRectGetWidth(v23) + 11.0;
  }

  v10 = sub_220FC2300();
  v11 = *(v1 + OBJC_IVAR____TtC11WeatherMaps8HintView_maxContentWidth);
  if (v10)
  {
    if (v11 > a1)
    {
      v11 = a1;
    }

    v12 = v11 - v7 - (*v6 + *v6);
  }

  else
  {
    v12 = v11 - v7;
  }

  [*(v1 + OBJC_IVAR____TtC11WeatherMaps8HintView_label) sizeThatFits_];
  v14 = v13;
  v16 = v15;
  [*(v1 + OBJC_IVAR____TtC11WeatherMaps8HintView_subtitleLabel) sizeThatFits_];
  if (v14 > v17)
  {
    v19 = v14;
  }

  else
  {
    v19 = v17;
  }

  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps8HintView_subtitle + 8))
  {
    v20 = v16 + v18 + 4.0;
  }

  else
  {
    v20 = v16;
  }

  v21 = v7 + v19;
  switch(*(v6 + 48))
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_2_20(0.0, 0.0, v20, v21);
      break;
    case 2:
    case 8:
      OUTLINED_FUNCTION_2_20(0.0, 0.0, v20, v21);
      break;
    default:
      return;
  }
}

id sub_220EA4010(uint64_t a1, uint64_t a2)
{
  v3 = sub_220FC17D0();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + OBJC_IVAR____TtC11WeatherMaps8HintView_label);
  v10 = *MEMORY[0x277D6D320];
  v11 = *(v4 + 104);
  v11(v8, v10, v3, v6);
  sub_220FC17C0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(v4 + 8);
  v20(v8, v3);
  [v9 setFrame_];
  [v9 frame];
  CGRectGetMaxY(v42);
  v21 = *(a2 + OBJC_IVAR____TtC11WeatherMaps8HintView_subtitleLabel);
  HIDWORD(v40) = v10;
  v41 = v11;
  (v11)(v8, v10, v3);
  sub_220FC17C0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v20(v8, v3);
  [v21 setFrame_];
  v30 = *(a2 + OBJC_IVAR____TtC11WeatherMaps8HintView_icon);
  result = [v30 image];
  if (result)
  {

    [v30 frame];
    (v41)(v8, HIDWORD(v40), v3);
    sub_220FC17C0();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v20(v8, v3);
    return [v30 setFrame_];
  }

  return result;
}

void sub_220EA4308(uint64_t a1, uint64_t a2)
{
  v3 = sub_220FC17D0();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x28223BE20](v3, v5).n128_u64[0];
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + OBJC_IVAR____TtC11WeatherMaps8HintView_configuration + 80) == 1)
  {
    [*(a2 + OBJC_IVAR____TtC11WeatherMaps8HintView_label) frame];
    CGRectGetHeight(v19);
    v9 = *(a2 + OBJC_IVAR____TtC11WeatherMaps8HintView_dismissIcon);
    [v9 frame];
    CGRectGetHeight(v20);
    [*(a2 + OBJC_IVAR____TtC11WeatherMaps8HintView_backgroundEffectView) frame];
    CGRectGetMaxX(v21);
    [v9 frame];
    CGRectGetWidth(v22);
    [v9 frame];
    (*(v4 + 104))(v8, *MEMORY[0x277D6D320], v3);
    sub_220FC17C0();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    (*(v4 + 8))(v8, v3);
    [v9 setFrame_];
  }
}

uint64_t sub_220EA4694(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 81))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 80);
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

uint64_t sub_220EA46E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HintViewConfiguration.ArrowPosition(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for HintViewConfiguration.ArrowPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_220EA47F0(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_220EA4808(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_220EA4830()
{
  v1 = [v0 subviews];
  sub_220E1966C(0, &qword_2812C5B78);
  v2 = sub_220FC2970();

  v3 = sub_220F43CDC(v2);
  if (v3)
  {
    v4 = v3;
    v22 = MEMORY[0x277D84F90];
    sub_220F0B388(0, v3 & ~(v3 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return;
    }

    v5 = 0;
    v6 = v22;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D9CB30](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      [v7 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v18 = *(v22 + 16);
      v17 = *(v22 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_220F0B388((v17 > 1), v18 + 1, 1);
      }

      ++v5;
      *(v22 + 16) = v18 + 1;
      v19 = (v22 + 32 * v18);
      v19[4] = v10;
      v19[5] = v12;
      v19[6] = v14;
      v19[7] = v16;
    }

    while (v4 != v5);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v20 = *(v6 + 16);
  if (v20)
  {
    v21 = v6 + 56;
    do
    {
      v23.origin.x = OUTLINED_FUNCTION_1_27();
      CGRectUnion(v23, v24);
      v21 += 32;
      --v20;
    }

    while (v20);
  }

  OUTLINED_FUNCTION_1_27();
}

uint64_t sub_220EA4A2C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_buttonGroups);
  *(v1 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_buttonGroups) = a1;
  sub_220EA4BF0(v2);
}

uint64_t sub_220EA4A74(const void *a1)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleModel), 0x61uLL);
  memcpy(v6, (v1 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleModel), 0x61uLL);
  memcpy((v1 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleModel), a1, 0x61uLL);
  sub_220EA7208(__dst, __src);
  sub_220E45374(v6, &qword_27CF9DDB0);
  memcpy(__src, __dst, 0x61uLL);
  sub_220EA5088(__src);
  return sub_220E45374(__dst, &qword_27CF9DDB0);
}

void sub_220EA4BF0(uint64_t a1)
{
  if ((sub_220F35358(a1, *&v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_buttonGroups]) & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v6[4] = sub_220EA72D8;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_220F6DA78;
    v6[3] = &block_descriptor_6;
    v4 = _Block_copy(v6);
    v5 = v1;

    [v2 transitionWithView:v5 duration:5242880 options:v4 animations:0 completion:0.3];
    _Block_release(v4);
  }
}

void sub_220EA4D00()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11WeatherMaps12ControlsView_buttonGroupViews;
  swift_beginAccess();
  v3 = *&v0[v2];
  v4 = sub_220F43CDC(v3);

  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223D9CB30](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    [v6 removeFromSuperview];
  }

  *&v1[v2] = MEMORY[0x277D84F90];

  v8 = *(*&v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_buttonGroups] + 16);
  if (v8)
  {
    v9 = &v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_configuration];
    v31 = &v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_menuDelegate];
    v30 = &v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_actionDelegate];
    v10 = ( + 41);
    v33 = v2;
    v34 = v1;
    v32 = v9;
    do
    {
      v11 = *(v10 - 9);
      v12 = *(v10 - 1);
      v13 = *v10;
      if (v12 == 1)
      {
        v35 = *(v9 + 1);

        v14 = 0;
      }

      else
      {

        if (sub_220FC2300())
        {
          v14 = 0;
          v35 = *(v9 + 1);
        }

        else
        {
          v35 = 0;
          v14 = 1;
        }
      }

      v36 = v11;
      v37 = v12;
      v38 = v13;
      Strong = swift_unknownObjectWeakLoadStrong();
      v16 = *(v31 + 1);
      v17 = swift_unknownObjectWeakLoadStrong();
      v18 = *(v30 + 1);
      v19 = v9[7];
      v20 = *(v9 + 2);
      v21 = objc_allocWithZone(type metadata accessor for ButtonGroupView());

      v23 = sub_220EA7F20(&v36, Strong, v16, v17, v18, v12, v35, v14, v19, v20, 0, v22);
      [v23 setTranslatesAutoresizingMaskIntoConstraints_];
      v2 = v33;
      v1 = v34;
      swift_beginAccess();
      v24 = v23;
      MEMORY[0x223D9BEA0]();
      if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();
      swift_endAccess();

      v10 += 16;
      --v8;
      v9 = v32;
    }

    while (v8);
  }

  v25 = *&v1[v2];
  v26 = sub_220F43CDC(v25);

  for (j = 0; v26 != j; ++j)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x223D9CB30](j, v25);
    }

    else
    {
      if (j >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v28 = *(v25 + 8 * j + 32);
    }

    v29 = v28;
    if (__OFADD__(j, 1))
    {
      goto LABEL_31;
    }

    [v1 addSubview_];
  }
}

void sub_220EA5088(char *__src)
{
  memcpy(__dst, __src, 0x61uLL);
  memcpy(v28, (v1 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleModel), 0x61uLL);
  v3 = __dst[0];
  v4 = __dst[1];
  memcpy(v24, __src + 16, sizeof(v24));
  v6 = v28[0];
  v5 = v28[1];
  memcpy(v23, (v1 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleModel + 16), sizeof(v23));
  if (__dst[1])
  {
    __srca[0] = __dst[0];
    __srca[1] = __dst[1];
    memcpy(&__srca[2], __src + 16, 0x51uLL);
    memcpy(v19, __srca, sizeof(v19));
    v7 = LOBYTE(__srca[12]);
    if (v28[1])
    {
      v20[0] = v28[0];
      v20[1] = v28[1];
      memcpy(&v20[2], (v1 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleModel + 16), 0x51uLL);
      memcpy(v26, v20, sizeof(v26));
      v8 = LOBYTE(v20[12]);
      memcpy(v25, __srca, sizeof(v25));
      sub_220EA7208(v28, &v16);
      sub_220EA7208(v28, &v16);
      sub_220EA7208(__dst, &v16);
      sub_220EA7208(__srca, &v16);
      v9 = sub_220FBB128(v25, v26);
      sub_220E45374(v28, &qword_27CF9DDB0);
      if (v9)
      {
        switch(v7)
        {
          case 3:
            sub_220E45374(v20, &qword_27CF9DDB0);
            if (v8 == 3)
            {
              goto LABEL_26;
            }

            break;
          case 4:
            sub_220E45374(v20, &qword_27CF9DDB0);
            if (v8 == 4)
            {
              goto LABEL_26;
            }

            break;
          case 5:
            sub_220E45374(v20, &qword_27CF9DDB0);
            if (v8 == 5)
            {
LABEL_26:
              memcpy(v14, v19, sizeof(v14));
              v15 = v7;
              sub_220EA7278(v14);
              v16 = v3;
              v17 = v4;
              memcpy(v18, v24, sizeof(v18));
              v12 = &v16;
              goto LABEL_27;
            }

            break;
          default:
            sub_220E45374(v20, &qword_27CF9DDB0);
            if ((v8 - 6) <= 0xFFFFFFFC && v7 == v8)
            {
              goto LABEL_26;
            }

            break;
        }
      }

      else
      {
        sub_220E45374(v20, &qword_27CF9DDB0);
      }

      memcpy(v14, v19, sizeof(v14));
      v15 = v7;
      sub_220EA7278(v14);
      v16 = v3;
      v17 = v4;
      memcpy(v18, v24, sizeof(v18));
      v10 = &qword_27CF9DDB0;
      v11 = &v16;
LABEL_15:
      sub_220E45374(v11, v10);
      sub_220EA5440();
      return;
    }

    memcpy(v20, __srca, 0x60uLL);
    LOBYTE(v20[12]) = __srca[12];
    sub_220EA7208(v28, &v16);
    sub_220EA7208(__dst, &v16);
    sub_220EA7208(__srca, &v16);
    sub_220EA7278(v20);
LABEL_12:
    __srca[0] = v3;
    __srca[1] = v4;
    memcpy(&__srca[2], __src + 16, 0x51uLL);
    __srca[13] = v6;
    __srca[14] = v5;
    memcpy(v22, v23, sizeof(v22));
    v10 = &unk_27CF9DDB8;
    v11 = __srca;
    goto LABEL_15;
  }

  if (v28[1])
  {
    sub_220EA7208(v28, __srca);
    sub_220EA7208(__dst, __srca);
    goto LABEL_12;
  }

  __srca[0] = __dst[0];
  __srca[1] = 0;
  memcpy(&__srca[2], __src + 16, 0x51uLL);
  sub_220EA7208(v28, v20);
  sub_220EA7208(__dst, v20);
  v12 = __srca;
LABEL_27:
  sub_220E45374(v12, &qword_27CF9DDB0);
}

void sub_220EA5440()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleModel];
  memcpy(__dst, v2, 0x61uLL);
  v4 = __dst[0];
  v3 = __dst[1];
  memcpy(__src, v2 + 16, sizeof(__src));
  if (!__dst[1])
  {
    goto LABEL_4;
  }

  v27[0] = __dst[0];
  v27[1] = __dst[1];
  memcpy(v28, v2 + 16, sizeof(v28));
  sub_220FBB0E0(v26);
  sub_220EA7208(__dst, &v23);
  sub_220EA7208(__dst, &v23);
  v5 = sub_220FBB128(v27, v26);
  sub_220E31784(v26);
  sub_220E45374(__dst, &qword_27CF9DDB0);
  if (v5)
  {
    sub_220E45374(__dst, &qword_27CF9DDB0);
LABEL_4:
    v6 = *&v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleView];
    if (!v6)
    {
      return;
    }

    v7 = v6;
    [v7 alpha];
    if (v8 == 0.0)
    {

      return;
    }

    type metadata accessor for ViewAnimator();
    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    *(v13 + 24) = 0;
    v14 = v7;
    v15 = sub_220EA72CC;
    goto LABEL_12;
  }

  v9 = OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleView;
  v10 = *&v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleView];
  if (!v10)
  {
    v23 = v4;
    v24 = v3;
    memcpy(v25, __src, sizeof(v25));
    v16 = *&v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_backgroundEffectManagerUltraThin];
    v17 = objc_allocWithZone(type metadata accessor for ScaleView());

    v18 = sub_220F21A10(&v23, v16);
    [v18 setTranslatesAutoresizingMaskIntoConstraints_];
    [v18 setAlpha_];
    [v1 addSubview_];
    v19 = *&v1[v9];
    *&v1[v9] = v18;
    v20 = v18;

    type metadata accessor for ViewAnimator();
    v13 = swift_allocObject();
    *(v13 + 16) = v20;
    *(v13 + 24) = 0x3FF0000000000000;
    v14 = v20;
    v15 = sub_220EA73FC;
LABEL_12:
    sub_220F1AFD0(v15, v13, 0, 0);

    goto LABEL_14;
  }

  v23 = v4;
  v24 = v3;
  memcpy(v25, __src, sizeof(v25));
  v11 = v10;
  sub_220F219C8(&v23);
  [v1 setNeedsLayout];
  [v11 alpha];
  if (v12 == 1.0)
  {

    return;
  }

  type metadata accessor for ViewAnimator();
  v21 = swift_allocObject();
  *(v21 + 16) = v11;
  *(v21 + 24) = 0x3FF0000000000000;
  v22 = v11;
  sub_220F1AFD0(sub_220EA73FC, v21, 0, 0);

LABEL_14:
}

id sub_220EA5778(id result)
{
  v2 = v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_displaysFullWidthProgressBar];
  v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_displaysFullWidthProgressBar] = result;
  if (v2 != v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_displaysFullWidthProgressBar])
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_220EA57AC(uint64_t a1@<X8>)
{
  v3 = *&v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleView];
  if (v3)
  {
    v4 = &v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_configuration];
    v5 = *&v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_configuration + 24];
    v6 = v3;
    [v1 frame];
    MinY = CGRectGetMinY(v10);
    [v6 frame];
    MaxY = CGRectGetMaxY(v11);

    v9 = v4[4] + MinY + MaxY + *v4 + *v4;
  }

  else
  {
    v5 = 0;
    v9 = 0.0;
  }

  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = v3 == 0;
}

void sub_220EA5880(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_userInterfaceStyle) != a1)
  {
    sub_220EA4D00();
  }
}

void sub_220EA589C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_userInterfaceStyle);
  *(v1 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_userInterfaceStyle) = a1;
  sub_220EA5880(v2);
}

double sub_220EA58B4()
{
  sub_220FC0AB0();
  sub_220FC0A90();
  if (qword_27CF9C120 != -1)
  {
    swift_once();
  }

  sub_220FC0A80();

  result = 2.0;
  if (v1)
  {
    return 4.0;
  }

  return result;
}

void sub_220EA5948()
{
  OUTLINED_FUNCTION_0_29(OBJC_IVAR____TtC11WeatherMaps12ControlsView_delegate);
  OUTLINED_FUNCTION_3_18(OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleModel);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_shouldConsiderSafeArea) = 1;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_mapViewForZoomControl) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_userInterfaceStyle) = 1;
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleViewWidthPlusGutter;
  *v1 = 0;
  *(v1 + 8) = 1;
  OUTLINED_FUNCTION_0_29(OBJC_IVAR____TtC11WeatherMaps12ControlsView_menuDelegate);
  OUTLINED_FUNCTION_0_29(OBJC_IVAR____TtC11WeatherMaps12ControlsView_actionDelegate);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_zoomControl) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_progressBar) = 0;
  sub_220FC3740();
  __break(1u);
}

id sub_220EA5A54(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_29(OBJC_IVAR____TtC11WeatherMaps12ControlsView_delegate);
  OUTLINED_FUNCTION_3_18(OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleModel);
  v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_shouldConsiderSafeArea] = 1;
  *&v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_mapViewForZoomControl] = 0;
  *&v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_userInterfaceStyle] = 1;
  v15 = &v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleViewWidthPlusGutter];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_menuDelegate];
  *&v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_menuDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = &v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_actionDelegate];
  *&v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleView] = 0;
  *&v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_zoomControl] = 0;
  *&v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_progressBar] = 0;
  *&v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_buttonGroups] = a1;
  *&v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_buttonGroupViews] = MEMORY[0x277D84F90];
  memcpy(&v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_configuration], a2, 0x58uLL);
  *(v16 + 1) = a4;
  swift_unknownObjectWeakAssign();
  *(v17 + 1) = a6;
  swift_unknownObjectWeakAssign();
  *&v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_backgroundEffectManagerBlur] = a7;
  *&v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_backgroundEffectManagerUltraThin] = a8;
  *&v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_backgroundEffectManagerVibrancyFill] = a9;
  v9[OBJC_IVAR____TtC11WeatherMaps12ControlsView_displaysFullWidthProgressBar] = a2[64];
  v22.receiver = v9;
  v22.super_class = ObjectType;

  v18 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220EA5C88();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v18;
}

void sub_220EA5C88()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setShouldGroupAccessibilityChildren_];
  if (sub_220FC2300())
  {
    v1[3] = sub_220FC1850();
    v1[4] = MEMORY[0x277D74A50];
    __swift_allocate_boxed_opaque_existential_1(v1);
    sub_220FC1840();
    sub_220FC31B0();
  }

  sub_220EA5D0C();
  sub_220EA4D00();
}

void sub_220EA5D0C()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for ProgressBar());

  v3 = sub_220F7E3D4();
  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps12ControlsView_progressBar];
  *&v0[OBJC_IVAR____TtC11WeatherMaps12ControlsView_progressBar] = v3;
  v5 = v3;

  v6 = v5;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setHidden_];

  [v1 addSubview_];
}

uint64_t sub_220EA5DFC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_220FC2340();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220FC2390();
  OUTLINED_FUNCTION_6();
  v12 = v11;
  *&v15 = MEMORY[0x28223BE20](v13, v14).n128_u64[0];
  v17 = &aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49.receiver = v1;
  v49.super_class = ObjectType;
  objc_msgSendSuper2(&v49, sel_layoutSubviews, v15);
  [v1 bounds];
  v19 = v18;
  v21 = v20;
  v22 = OBJC_IVAR____TtC11WeatherMaps12ControlsView_shouldConsiderSafeArea;
  v23 = 0.0;
  if (v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_shouldConsiderSafeArea] == 1)
  {
    [v1 safeAreaInsets];
    v23 = v24;
  }

  v48 = 0;
  v25 = &v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_configuration];
  v26 = v23 + *&v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_configuration + 80];
  v47[0] = *&v1[OBJC_IVAR____TtC11WeatherMaps12ControlsView_configuration + 72];
  v47[1] = v26;
  v27 = sub_220FC2300();
  if ((v27 & 1) != 0 && v1[v22] == 1)
  {
    v27 = [v1 window];
    if (v27)
    {
      v29 = v27;
      v30 = [v27 windowScene];

      if (v30)
      {
        if ([v1 effectiveUserInterfaceLayoutDirection] == 1)
        {
          [v30 _safeAreaCornerInsets];
          v31 = v44;
          v32 = v45;
        }

        else
        {
          [v30 _safeAreaCornerInsets];
          v31 = aBlock;
          v32 = *&v39;
        }

        v47[0] = v31 + v25[9];
        v48 = v32 > 0.0;
      }
    }
  }

  v33 = v23 + v25[10];
  v46[0] = v19 - v25[9];
  v46[1] = v33;
  MEMORY[0x28223BE20](v27, v28);
  *(&aBlock - 8) = v1;
  *(&aBlock - 7) = &v48;
  *(&aBlock - 6) = v19;
  *(&aBlock - 5) = v21;
  *(&aBlock - 4) = v46;
  *(&aBlock - 3) = v47;
  *(&aBlock - 2) = v23;
  sub_220FC1810();
  sub_220E1966C(0, &qword_2812C5CA0);
  v34 = sub_220FC2FC0();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = sub_220EA7328;
  v43 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_220F6DA78;
  v41 = &block_descriptor_26;
  v36 = _Block_copy(&aBlock);

  sub_220FC2350();
  aBlock = MEMORY[0x277D84F90];
  sub_220EA7330();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
  sub_220E62E38();
  sub_220FC3430();
  MEMORY[0x223D9C530](0, v17, v9, v36);
  _Block_release(v36);

  (*(v5 + 8))(v9, v3);
  return (*(v12 + 8))(v17, v10);
}

void sub_220EA6250(uint64_t a1, char *a2, _BYTE *a3, double *a4, double *a5, double a6, double a7)
{
  v118 = a5;
  v124 = a3;
  v125 = a4;
  v127 = a1;
  v10 = sub_220FC17D0();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x28223BE20](v10, v12).n128_u64[0];
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = a2;
  v16 = [a2 subviews];
  sub_220E1966C(0, &qword_2812C5B78);
  v17 = sub_220FC2970();

  v18 = sub_220F43CDC(v17);
  v119 = v15;
  if (v18)
  {
    v19 = v18;
    if (v18 >= 1)
    {
      v20 = v11;
      v21 = 0;
      v122 = OBJC_IVAR____TtC11WeatherMaps12ControlsView_configuration;
      v128 = v17 & 0xC000000000000001;
      v121 = *MEMORY[0x277D6D320];
      v22 = (v20 + 104);
      v117 = v20;
      v23 = (v20 + 8);
      v123 = v18;
      v120 = v10;
      while (1)
      {
        v24 = v128 ? MEMORY[0x223D9CB30](v21, v17) : *(v17 + 8 * v21 + 32);
        v25 = v24;
        type metadata accessor for ButtonGroupView();
        v26 = swift_dynamicCastClass();
        if (v26)
        {
          break;
        }

LABEL_21:
        if (v19 == ++v21)
        {

          v11 = v117;
          goto LABEL_24;
        }
      }

      v27 = v26;
      if (*v124 == 1)
      {
        *(v26 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_effectiveAxis) = 1;
      }

      else
      {
        *(v26 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_effectiveAxis) = 2;
        if (*(v26 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_axis) != 1)
        {
          sub_220EA7404(a6, a7);
          v48 = &v27[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_buttonGroup];
          if (v27[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_buttonGroup + 8] == 1)
          {
            v49 = *v125 - v47;
          }

          else
          {
            v49 = *v118;
          }

          v50 = v120;
          (*v22)(v15, v121, v120);
          v51 = v25;
          sub_220FC17C0();
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v59 = v58;
          (*v23)(v15, v50);
          [v27 setFrame_];
          if (v48[8] == 1)
          {

            v60 = v125;
            v61 = v49 - *&v126[v122];
          }

          else
          {
            [v27 frame];
            v63 = v62;
            v65 = v64;
            v67 = v66;
            v69 = v68;

            v130.origin.x = v63;
            v130.origin.y = v65;
            v130.size.width = v67;
            v130.size.height = v69;
            MaxX = CGRectGetMaxX(v130);

            v61 = MaxX + *&v126[v122];
            v60 = v118;
          }

          *v60 = v61;
          v15 = v119;
          v10 = v120;
          goto LABEL_20;
        }
      }

      sub_220EA7404(a6, a7);
      v28 = v125;
      (*v22)(v15, v121, v10);
      v29 = v25;
      sub_220FC17C0();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      (*v23)(v15, v10);
      [v27 setFrame_];
      [v27 frame];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v129.origin.x = v39;
      v129.origin.y = v41;
      v129.size.width = v43;
      v129.size.height = v45;
      MaxY = CGRectGetMaxY(v129);

      v28[1] = MaxY + *&v126[v122];
LABEL_20:
      v19 = v123;
      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {

LABEL_24:
    v71 = v126;
    v72 = *&v126[OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleView];
    if (v72)
    {
      v73 = v72;
      [v71 bounds];
      sub_220F753C4();
      v75 = v74;
      v76 = &v71[OBJC_IVAR____TtC11WeatherMaps12ControlsView_configuration];
      v77 = v119;
      (*(v11 + 104))(v119, *MEMORY[0x277D6D320], v10);
      v78 = v73;
      sub_220FC17C0();
      v80 = v79;
      v82 = v81;
      v84 = v83;
      v86 = v85;
      (*(v11 + 8))(v77, v10);
      [v78 setFrame_];

      v87 = &v71[OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleViewWidthPlusGutter];
      *v87 = v75 + v76[9];
      *(v87 + 8) = 0;
    }

    v88 = *&v71[OBJC_IVAR____TtC11WeatherMaps12ControlsView_zoomControl];
    if (v88)
    {
      v89 = v88;
      [v71 bounds];
      [v89 sizeThatFits_];
      sub_220FC2300();
      v92 = v119;
      (*(v11 + 104))(v119, *MEMORY[0x277D6D320], v10);
      sub_220FC17C0();
      v94 = v93;
      v96 = v95;
      v98 = v97;
      v100 = v99;
      (*(v11 + 8))(v92, v10);
      [v89 setFrame_];
    }

    v101 = *&v71[OBJC_IVAR____TtC11WeatherMaps12ControlsView_progressBar];
    if (v101 && (v71[OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleViewWidthPlusGutter + 8] & 1) == 0)
    {
      v102 = *&v71[OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleViewWidthPlusGutter];
      v103 = v101;
      if ((sub_220FC2300() & 1) != 0 && v71[OBJC_IVAR____TtC11WeatherMaps12ControlsView_displaysFullWidthProgressBar] != 1)
      {
        [v71 bounds];
        if (v106 - (v102 + v102) > 938.0)
        {
          [v71 bounds];
          CGRectGetWidth(v132);
        }

        v107 = v103;
        sub_220EA58B4();
        v105 = v119;
        (*(v11 + 104))(v119, *MEMORY[0x277D6D320], v10);
      }

      else
      {
        v104 = v103;
        [v71 bounds];
        CGRectGetWidth(v131);
        sub_220EA58B4();
        v105 = v119;
        (*(v11 + 104))(v119, *MEMORY[0x277D6D320], v10);
      }

      sub_220FC17C0();
      v109 = v108;
      v111 = v110;
      v113 = v112;
      v115 = v114;
      (*(v11 + 8))(v105, v10);
      [v103 setFrame_];

      [v103 setHidden_];
    }
  }
}

void sub_220EA6AF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_220F03C0C();
      swift_unknownObjectRelease();
    }
  }
}

id sub_220EA6BB4(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v12, sel_hitTest_withEvent_, a1, a2, a3);
  if (v7)
  {
    sub_220E1966C(0, &qword_2812C5B78);
    v8 = v7;
    v9 = v3;
    v10 = sub_220FC3250();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

uint64_t sub_220EA6D78()
{
  v1 = v0;
  v19 = MEMORY[0x277D84F90];
  swift_beginAccess();

  v3 = sub_220F77AD0(v2);

  sub_220F34D28(v3);
  v4 = *(v0 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_scaleView);
  if (v4)
  {
    v18 = type metadata accessor for ScaleView();
    *&v17 = v4;
    v5 = v19;
    v6 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_220F376B8();
      v5 = v13;
    }

    v7 = *(v5 + 16);
    if (v7 >= *(v5 + 24) >> 1)
    {
      sub_220F376B8();
      v5 = v14;
    }

    *(v5 + 16) = v7 + 1;
    sub_220E5D784(&v17, (v5 + 32 * v7 + 32));
    v19 = v5;
  }

  v8 = *(v1 + OBJC_IVAR____TtC11WeatherMaps12ControlsView_zoomControl);
  if (!v8)
  {
    return v19;
  }

  v18 = sub_220E1966C(0, &qword_2812C5B78);
  *&v17 = v8;
  v9 = v19;
  v10 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220F376B8();
    v9 = v15;
  }

  v11 = *(v9 + 16);
  if (v11 >= *(v9 + 24) >> 1)
  {
    sub_220F376B8();
    v9 = v16;
  }

  *(v9 + 16) = v11 + 1;
  sub_220E5D784(&v17, (v9 + 32 * v11 + 32));
  return v9;
}

uint64_t sub_220EA7154(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 88))
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

uint64_t sub_220EA71A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_220EA7208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_220EA7330()
{
  result = qword_2812C5E08;
  if (!qword_2812C5E08)
  {
    sub_220FC2340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5E08);
  }

  return result;
}

uint64_t sub_220EA7388(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_220EA7404(double a1, double a2)
{
  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_effectiveAxis) == 2)
  {
    v5 = *(v2 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_axis);
  }

  else
  {
    v5 = *(v2 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_effectiveAxis);
  }

  sub_220EA7CF4();
  v7 = v6;
  result = sub_220F43CDC(v6);
  if (!result)
  {
  }

  v9 = result;
  if (result >= 1)
  {
    v10 = 0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D9CB30](v10, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v10 + 32);
      }

      v14 = v13;
      [v13 sizeThatFits_];
      v16 = v15;
      v18 = v17;

      if (v5)
      {
        if (v12 <= v16)
        {
          v12 = v16;
        }

        v11 = v11 + v18;
      }

      else
      {
        v12 = v12 + v16;
        if (v11 <= v18)
        {
          v11 = v18;
        }
      }

      ++v10;
    }

    while (v9 != v10);
  }

  __break(1u);
  return result;
}

void sub_220EA7534()
{
  sub_220EA7CF4();
  v1 = v0;
  v2 = sub_220F43CDC(v0);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      v37 = &v46[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_buttonGroup];
      v6 = *&v46[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_buttonGroup];
      v36 = OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_dividerThickness;
      v42 = &v46[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_menuDelegate];
      v41 = &v46[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_actionDelegate];
      v40 = &v46[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_fixedButtonWidth];
      v39 = &v46[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_fixedButtonHeight];
      v38 = OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_cornerRadius;

      v7 = 0;
      v8 = 32;
      v43 = v6;
      while (1)
      {
        v9 = *(v6 + 16);
        if (v7 == v9)
        {

          [v46 setNeedsLayout];
          return;
        }

        if (v7 >= v9)
        {
          goto LABEL_35;
        }

        memcpy(__dst, (v6 + v8), sizeof(__dst));
        memmove(__src, (v6 + v8), 0x78uLL);
        if (v7)
        {
          sub_220E32EEC(__dst, v48);
          if ((sub_220FC2300() & 1) == 0)
          {
            v10 = *&v46[v36];
            v11 = objc_allocWithZone(type metadata accessor for ButtonDivider());
            v12 = sub_220ED1A40(v10);
            [v12 setTranslatesAutoresizingMaskIntoConstraints_];
            [v46 addSubview_];
          }
        }

        else
        {
          sub_220E32EEC(__dst, v48);
        }

        v44 = v8;
        v45 = v7;
        if (sub_220FC2300())
        {
          v13 = 0;
        }

        else
        {
          v13 = v37[9];
        }

        memcpy(v48, __src, sizeof(v48));
        Strong = swift_unknownObjectWeakLoadStrong();
        v15 = *(v42 + 1);
        v16 = swift_unknownObjectWeakLoadStrong();
        v17 = *(v41 + 1);
        v18 = *v40;
        v19 = v40[8];
        v20 = *v39;
        v21 = v39[8];
        v22 = *&v46[v38];
        v23 = objc_allocWithZone(type metadata accessor for ButtonView());
        sub_220E32EEC(__src, v47);
        v24 = sub_220E31CB4(v48, v22, Strong, v15, v16, v17, v18, v19, v20, v21, v13);
        v25 = v24;
        v26 = __src[11];
        if (__src[11])
        {
          v27 = v24;

          v28 = sub_220FC26C0();
        }

        else
        {
          v29 = v24;
          v28 = 0;
        }

        v6 = v43;
        [v25 setAccessibilityLabel_];

        if (__src[13])
        {

          v30 = sub_220FC26C0();
        }

        else
        {
          v30 = 0;
        }

        [v25 setAccessibilityHint_];

        v31 = v25;
        [v31 setShowsLargeContentViewer_];
        if (v26)
        {
          goto LABEL_26;
        }

        v34 = [v31 titleLabel];
        v32 = v34;
        if (v34)
        {
          v35 = [v34 text];

          if (v35)
          {
            sub_220FC2700();

LABEL_26:

            v32 = sub_220FC26C0();

            goto LABEL_27;
          }

          v32 = 0;
        }

LABEL_27:
        [v31 setLargeContentTitle_];

        [v31 setLargeContentImage_];
        v33 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
        [v31 addInteraction_];

        [v31 setTranslatesAutoresizingMaskIntoConstraints_];
        [v46 addSubview_];

        sub_220E32FBC(__src);
        v8 = v44 + 120;
        v7 = v45 + 1;
      }
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x223D9CB30](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v4 removeFromSuperview];
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_220EA7A04()
{
  if ((sub_220FC2300() & 1) == 0)
  {
    v1 = v0[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_buttonGroup + 9];
    v2 = [v0 layer];
    v3 = v2;
    if (v1 == 1)
    {
      [v2 setBorderWidth_];
    }

    else
    {
      [v2 setBorderWidth_];

      v4 = [v0 layer];
      v5 = [objc_opt_self() blackColor];
      v6 = [v5 colorWithAlphaComponent_];

      v7 = [v6 CGColor];
      [v4 setBorderColor_];

      v8 = [v0 layer];
      [v8 setCornerRadius_];

      v3 = [v0 layer];
      [v3 setCornerCurve_];
    }

    v9 = [v0 layer];
    v10 = [objc_opt_self() blackColor];
    v11 = [v10 colorWithAlphaComponent_];

    v12 = [v11 CGColor];
    [v9 setShadowColor_];

    v13 = [v0 layer];
    [v13 setShadowOffset_];

    v14 = [v0 layer];
    LODWORD(v15) = 1.0;
    [v14 setShadowOpacity_];

    v16 = [v0 layer];
    [v16 setShadowRadius_];
  }
}

void sub_220EA7CF4()
{
  v1 = [v0 subviews];
  sub_220E1966C(0, &qword_2812C5B78);
  v2 = sub_220FC2970();

  v3 = sub_220F43CDC(v2);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223D9CB30](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for ButtonView();
    if (swift_dynamicCastClass() || (type metadata accessor for ButtonDivider(), swift_dynamicCastClass()))
    {
      sub_220FC3640();
      sub_220FC3680();
      sub_220FC3690();
      sub_220FC3650();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

id sub_220EA7E60()
{
  sub_220E1966C(0, &qword_2812C5B58);
  result = sub_220EA7EBC();
  qword_27CF9DDC0 = result;
  return result;
}

id sub_220EA7EBC()
{
  v0 = sub_220FC26C0();

  v1 = [swift_getObjCClassFromMetadata() colorNamed_];

  return v1;
}

char *sub_220EA7F20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, double a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v13 = v12;
  v63 = a8;
  v56 = a4;
  v57 = a5;
  v54 = a2;
  v55 = a3;
  v61 = a12;
  v62 = a7;
  v59 = a6;
  v60 = a11;
  v58 = a10;
  ObjectType = swift_getObjectType();
  v16 = sub_220FC1920();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v50 = &v47[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_220FC1950();
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v49 = &v47[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22, v23);
  v51 = &v47[-v24];
  v25 = *a1;
  v26 = *(a1 + 8);
  v27 = *(a1 + 9);
  v28 = &v12[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_menuDelegate];
  *&v12[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_menuDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v29 = &v12[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_actionDelegate];
  *&v12[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_effectiveAxis] = 2;
  v30 = &v12[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_fixedButtonWidth];
  *v30 = 0;
  v30[8] = 1;
  v31 = &v13[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_fixedButtonHeight];
  *v31 = 0;
  v31[8] = 1;
  v32 = OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_backgroundEffectView;
  *&v13[v32] = [objc_allocWithZone(type metadata accessor for BackgroundEffectView()) init];
  v33 = OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_cornerRadius;
  *&v13[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_cornerRadius] = 0x4030000000000000;
  v34 = &v13[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_buttonGroup];
  *v34 = v25;
  v34[8] = v26;
  v48 = v27;
  v34[9] = v27;
  *(v28 + 1) = v55;
  swift_unknownObjectWeakAssign();
  *(v29 + 1) = v57;
  swift_unknownObjectWeakAssign();
  v13[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_axis] = v59 & 1;
  *&v13[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_dividerThickness] = a9;
  *v30 = v62;
  v30[8] = v63 & 1;
  *v31 = v58;
  v31[8] = v60 & 1;
  v35 = v61;

  if ((sub_220FC2300() & 1) == 0 && v35)
  {

    v36 = sub_220E3D488(0, 1);

    v37 = *&v13[v32];
    *&v13[v32] = v36;
  }

  v38 = *&v13[v32];
  *&v13[v33] = *&v38[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_cornerRadius];
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  v66.receiver = v13;
  v66.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v66, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  if (sub_220FC2300())
  {

    sub_220FC1910();
    v40 = v49;
    sub_220FC1960();
    if (qword_27CF9C070 != -1)
    {
      swift_once();
    }

    v41 = v51;
    sub_220FC1930();
    v42 = v53;
    v43 = *(v52 + 8);
    v43(v40, v53);
    v65[3] = v42;
    v65[4] = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v65);
    sub_220FC1940();
    v43(v41, v42);
    sub_220FC31B0();
  }

  else
  {
    v44 = DeviceSupportsMapsControlEffects();

    if (v44)
    {
      [v39 addSubview_];
    }

    else if ((v48 & 1) == 0)
    {
      v45 = [objc_opt_self() tertiarySystemBackgroundColor];
      [v39 setBackgroundColor_];
    }
  }

  sub_220EA7534();
  sub_220EA7A04();
  [v39 setShouldGroupAccessibilityChildren_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v39;
}

void sub_220EA841C()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_menuDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_actionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_effectiveAxis) = 2;
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_fixedButtonWidth;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_fixedButtonHeight;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_backgroundEffectView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for BackgroundEffectView()) init];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_cornerRadius) = 0x4030000000000000;
  sub_220FC3740();
  __break(1u);
}

uint64_t sub_220EA8538()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_effectiveAxis) == 2)
  {
    v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_axis);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_effectiveAxis);
  }

  [v0 bounds];
  return sub_220EA85B8(v1 & 1, v2, v3);
}

uint64_t sub_220EA85B8(char a1, double a2, double a3)
{
  v4 = v3;
  if (a3 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a3;
  }

  if (sub_220FC2300())
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 + -3.0;
  }

  v10 = OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_backgroundEffectView;
  v11 = *&v3[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_backgroundEffectView];
  if (v3[OBJC_IVAR____TtC11WeatherMaps15ButtonGroupView_buttonGroup + 9] == 1)
  {
    [v11 setFrame_];
    v12 = *&v3[v10];
    *&v12[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_cornerRadius] = v9 * 0.5;
    v13 = v12;
    sub_220FADAEC();

    v14 = *MEMORY[0x277CDA130];
    v15 = *&v4[v10];
    sub_220FADA94(v14);

    LOBYTE(v14) = sub_220FC2300();
    v16 = [v4 layer];
    v17 = v16;
    if (v14)
    {
      goto LABEL_11;
    }

    [*&v4[v10] frame];
    v27 = [objc_opt_self() bezierPathWithOvalInRect_];
    v28 = [v27 CGPath];
  }

  else
  {
    [v11 setFrame_];
    v18 = *&v3[v10];
    *&v18[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_cornerRadius] = v9 * 0.5;
    v19 = v18;
    sub_220FADAEC();

    v20 = *MEMORY[0x277CDA138];
    v21 = *&v4[v10];
    sub_220FADA94(v20);

    LOBYTE(v20) = sub_220FC2300();
    v16 = [v4 layer];
    v17 = v16;
    if (v20)
    {
LABEL_11:
      [v16 setCornerRadius_];

      v22 = [v4 layer];
      [v22 setShadowPath_];
      goto LABEL_15;
    }

    [*&v4[v10] frame];
    v27 = [objc_opt_self() bezierPathWithRect_];
    v28 = [v27 CGPath];
  }

  v22 = v28;

  [v17 setShadowPath_];
LABEL_15:

  sub_220EA7CF4();
  v34 = v33;
  result = sub_220F43CDC(v33);
  if (result)
  {
    v36 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v37 = 0;
    MaxY = 0.0;
    MaxX = 0.0;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x223D9CB30](v37, v34);
      }

      else
      {
        v40 = *(v34 + 8 * v37 + 32);
      }

      v41 = v40;
      [v40 sizeThatFits_];
      if (a1)
      {
        [v41 setFrame_];
        [v41 frame];
        MaxY = CGRectGetMaxY(v46);
      }

      else
      {
        [v41 setFrame_];
        [v41 frame];
        MaxX = CGRectGetMaxX(v45);
      }

      ++v37;
    }

    while (v36 != v37);
  }
}

_BYTE *storeEnumTagSinglePayload for ButtonGroupView.Axis(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220EA8C28()
{
  result = qword_27CF9DE18;
  if (!qword_27CF9DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DE18);
  }

  return result;
}

void sub_220EA8C7C(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_220FC3480();
    sub_220EA9C1C();
    sub_220EA9C60();
    sub_220FC2C40();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_220FC34F0() || (sub_220EA9C1C(), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_220EA9CB8();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x223D9BEA0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_220EA8EC0(void *a1)
{
  v3 = sub_220FC1870();
  MEMORY[0x28223BE20](v3, v4);
  sub_220F22204();
  sub_220FC2EB0();
  sub_220FC1860();
  sub_220FC2EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F240);
  swift_allocObject();
  v5 = a1;
  sub_220FC1390();
  v6 = swift_beginAccess();
  MEMORY[0x223D9BEA0](v6);
  sub_220F09670(*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_220FC29F0();
  return swift_endAccess();
}

uint64_t sub_220EA8FFC(void *a1)
{
  swift_beginAccess();
  sub_220EA9884((v1 + 16), a1);
  v4 = v3;
  v5 = sub_220F43CDC(*(v1 + 16));
  if (v5 < v4)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_220F42E64(v4, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_220EA9094()
{
  type metadata accessor for SystemColorSchemeObserver();
  swift_allocObject();
  result = sub_220EA91D8();
  qword_2812CE4E0 = result;
  return result;
}

id sub_220EA90D0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_220EA9C1C();
  sub_220EA9C60();
  v2 = sub_220FC2C10();

  sub_220EA8C7C(v2);
  v4 = v3;

  if (sub_220F43CDC(v4))
  {
    sub_220F227B4(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223D9CB30](0, v4);
    }

    else
    {
      v5 = *(v4 + 32);
    }

    v6 = v5;
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_220EA91D8()
{
  v1 = v0;
  v2 = sub_220FC1870();
  MEMORY[0x28223BE20](v2, v3);
  v4 = MEMORY[0x277D84F90];
  *(v0 + 24) = 0u;
  v5 = v0 + 24;
  *(v0 + 16) = v4;
  *(v0 + 40) = 0u;
  v6 = sub_220EA90D0();
  if (v6)
  {
    v7 = v6;
    sub_220F22204();
    sub_220FC2DE0();
    sub_220FC1860();
    sub_220FC2DF0();
  }

  v8 = [objc_opt_self() defaultCenter];
  if (qword_2812C5C70 != -1)
  {
    swift_once();
  }

  v9 = qword_2812CE4B8;
  v10 = [objc_opt_self() mainQueue];
  v11 = swift_allocObject();
  swift_weakInit();
  v17 = sub_220EA9BF4;
  v18 = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220F1352C;
  ObjectType = &block_descriptor_7;
  v12 = _Block_copy(aBlock);

  v13 = [v8 addObserverForName:v9 object:0 queue:v10 usingBlock:v12];
  _Block_release(v12);

  ObjectType = swift_getObjectType();
  aBlock[0] = v13;
  swift_beginAccess();
  sub_220EA9814(aBlock, v5);
  swift_endAccess();
  return v1;
}

uint64_t sub_220EA9450()
{

  sub_220FC15D0();
}

void sub_220EA94A8()
{
  v0 = sub_220FC1870();
  MEMORY[0x28223BE20](v0, v1);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = *(v3 + 16);
    v5 = sub_220F43CDC(v4);
    if (v5)
    {
      v6 = v5;
      if (v5 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223D9CB30](i, v4);
        }

        else
        {
        }

        v8 = sub_220FC1380();
        if (v8)
        {
          v9 = v8;
          sub_220F22204();
          sub_220FC2EB0();
          sub_220FC1860();
          sub_220FC2EC0();
        }

        else
        {
        }
      }
    }

    v10 = sub_220EA90D0();
    if (v10)
    {
      v11 = v10;
      sub_220F22204();
      sub_220FC2DE0();
      sub_220FC1860();
      sub_220FC2DF0();
    }

    else
    {
    }
  }
}

uint64_t sub_220EA96A4()
{
  swift_beginAccess();
  sub_220E5EA18(v0 + 24, &v3);
  if (*(&v4 + 1))
  {
    sub_220E5D784(&v3, &v5);
    v1 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_1(&v5, v6);
    [v1 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v5);
    v3 = 0u;
    v4 = 0u;
    swift_beginAccess();
    sub_220EA9814(&v3, v0 + 24);
    swift_endAccess();
  }

  else
  {
    sub_220E5E9B0(&v3);
  }

  sub_220E5E9B0(v0 + 24);
  return v0;
}

uint64_t sub_220EA97BC()
{
  sub_220EA96A4();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_220EA9814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_220EA9884(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  sub_220EA9AE8(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_41;
  }

  if (v7)
  {
    sub_220F43CDC(v4);
LABEL_41:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v4 >> 62 ? sub_220FC34C0() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_41;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D9CB30](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }
      }

      v11 = sub_220FC1380();
      if (v11)
      {

        v12 = sub_220FC1380();

        if (!v12 || (v12, v12 != v5))
        {
          if (v8 != v9)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x223D9CB30](v8, v4);
              v14 = MEMORY[0x223D9CB30](v9, v4);
            }

            else
            {
              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_47;
              }

              v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v8 >= v15)
              {
                goto LABEL_48;
              }

              if (v9 >= v15)
              {
                goto LABEL_49;
              }

              v13 = *(v4 + 32 + 8 * v8);
              v14 = *(v4 + 32 + 8 * v9);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
            {
              v4 = sub_220E98DA8(v4);
              v16 = (v4 >> 62) & 1;
            }

            else
            {
              LODWORD(v16) = 0;
            }

            v17 = v4 & 0xFFFFFFFFFFFFFF8;
            *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;

            if ((v4 & 0x8000000000000000) != 0 || v16)
            {
              v4 = sub_220E98DA8(v4);
              v17 = v4 & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_40:
                __break(1u);
                goto LABEL_41;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_40;
            }

            if (v9 >= *(v17 + 16))
            {
              goto LABEL_46;
            }

            *(v17 + 8 * v9 + 32) = v13;

            *a1 = v4;
          }

          v18 = __OFADD__(v8++, 1);
          if (v18)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
      }

      v18 = __OFADD__(v9++, 1);
      if (v18)
      {
        goto LABEL_44;
      }
    }
  }

  __break(1u);
}

void sub_220EA9AE8(uint64_t a1, void *a2)
{
  v4 = sub_220F43CDC(a1);
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_15:

      return;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    MEMORY[0x223D9CB30](v5, a1);
LABEL_6:
    v6 = sub_220FC1380();
    if (!v6)
    {

      return;
    }

    v7 = sub_220FC1380();

    if (v7)
    {

      if (v7 == a2)
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }
  }

  if (v5 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_6;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_220EA9C1C()
{
  result = qword_2812C5B40;
  if (!qword_2812C5B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5B40);
  }

  return result;
}

unint64_t sub_220EA9C60()
{
  result = qword_2812C5B38;
  if (!qword_2812C5B38)
  {
    sub_220EA9C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5B38);
  }

  return result;
}

BOOL sub_220EA9CC0()
{
  v0 = sub_220FC37A0();

  return v0 != 0;
}

BOOL sub_220EA9D24()
{
  v0 = sub_220FC37A0();

  return v0 != 0;
}

uint64_t sub_220EA9D6C(char a1)
{
  if (a1)
  {
    return 0x6E6F67796C6F50;
  }

  else
  {
    return 0x6C6F5069746C754DLL;
  }
}

uint64_t sub_220EA9DAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_220FC3940() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
      if (v7 || (sub_220FC3940() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x797274656D6F6567 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_220FC3940();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_220EA9F0C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x69747265706F7270;
      break;
    case 3:
      result = 0x797274656D6F6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220EA9F80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_220FC3940();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_220EAA048(char a1)
{
  if (a1)
  {
    return 0x7365727574616566;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_220EAA078(char a1)
{
  if (a1)
  {
    return 0x4554455243534944;
  }

  else
  {
    return 0x4F554E49544E4F43;
  }
}

uint64_t sub_220EAA0B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
    if (v6 || (sub_220FC3940() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_220FC3940();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_220EAA1D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_220FC3940() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7974536C6562616CLL && a2 == 0xEA0000000000656CLL;
      if (v7 || (sub_220FC3940() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_220FC3940() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000;
          if (v9 || (sub_220FC3940() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x707954656C616373 && a2 == 0xE900000000000065;
            if (v10 || (sub_220FC3940() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x73746E696F70 && a2 == 0xE600000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_220FC3940();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220EAA414(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0x7974536C6562616CLL;
      break;
    case 3:
      v3 = 1450076525;
      goto LABEL_6;
    case 4:
      v3 = 1450729837;
LABEL_6:
      result = v3 | 0x65756C6100000000;
      break;
    case 5:
      result = 0x707954656C616373;
      break;
    case 6:
      result = 0x73746E696F70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220EAA4CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F6F5A78616DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6F6F5A6E696DLL && a2 == 0xE700000000000000;
    if (v6 || (sub_220FC3940() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D6F6F5A65736162 && a2 == 0xE800000000000000;
      if (v7 || (sub_220FC3940() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000220FDF300 == a2;
        if (v8 || (sub_220FC3940() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x73656C616373 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_220FC3940();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_220EAA680(char a1)
{
  result = 0x6D6F6F5A78616DLL;
  switch(a1)
  {
    case 1:
      result = 0x6D6F6F5A6E696DLL;
      break;
    case 2:
      result = 0x6D6F6F5A65736162;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x73656C616373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220EAA718(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F43656D617266 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E49656D617266 && a2 == 0xED00006C61767265;
    if (v6 || (sub_220FC3940() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7565414 && a2 == 0xE300000000000000;
      if (v7 || (sub_220FC3940() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000220FDF320 == a2;
        if (v8 || (sub_220FC3940() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D6F6F5A78616DLL && a2 == 0xE700000000000000;
          if (v9 || (sub_220FC3940() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D6F6F5A6E696DLL && a2 == 0xE700000000000000;
            if (v10 || (sub_220FC3940() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6D6F6F5A65736162 && a2 == 0xE800000000000000;
              if (v11 || (sub_220FC3940() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x73656C616373 && a2 == 0xE600000000000000;
                if (v12 || (sub_220FC3940() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000010 && 0x8000000220FDF300 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_220FC3940();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_220EAA9FC(char a1)
{
  result = 0x756F43656D617266;
  switch(a1)
  {
    case 1:
      result = 0x746E49656D617266;
      break;
    case 2:
      result = 7565414;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      v3 = 1517838701;
      goto LABEL_8;
    case 5:
      v3 = 1517185389;
LABEL_8:
      result = v3 | 0x6D6F6F00000000;
      break;
    case 6:
      result = 0x6D6F6F5A65736162;
      break;
    case 7:
      result = 0x73656C616373;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220EAAAF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F43656D617266 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E49656D617266 && a2 == 0xED00006C61767265;
    if (v6 || (sub_220FC3940() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7565414 && a2 == 0xE300000000000000;
      if (v7 || (sub_220FC3940() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000220FDF320 == a2;
        if (v8 || (sub_220FC3940() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D6F6F5A78616DLL && a2 == 0xE700000000000000;
          if (v9 || (sub_220FC3940() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D6F6F5A6E696DLL && a2 == 0xE700000000000000;
            if (v10 || (sub_220FC3940() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6D6F6F5A65736162 && a2 == 0xE800000000000000;
              if (v11 || (sub_220FC3940() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x8000000220FDF300 == a2;
                if (v12 || (sub_220FC3940() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x73656C616373 && a2 == 0xE600000000000000;
                  if (v13 || (sub_220FC3940() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000010 && 0x8000000220FDF340 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_220FC3940();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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
}

uint64_t sub_220EAAE20(char a1)
{
  result = 0x756F43656D617266;
  switch(a1)
  {
    case 1:
      result = 0x746E49656D617266;
      break;
    case 2:
      result = 7565414;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      v3 = 1517838701;
      goto LABEL_10;
    case 5:
      v3 = 1517185389;
LABEL_10:
      result = v3 | 0x6D6F6F00000000;
      break;
    case 6:
      result = 0x6D6F6F5A65736162;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x73656C616373;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220EAAF2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F6F5A78616DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6F6F5A6E696DLL && a2 == 0xE700000000000000;
    if (v6 || (sub_220FC3940() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D6F6F5A65736162 && a2 == 0xE800000000000000;
      if (v7 || (sub_220FC3940() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73656C616373 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_220FC3940();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_220EAB088(char a1)
{
  result = 0x6D6F6F5A78616DLL;
  switch(a1)
  {
    case 1:
      result = 0x6D6F6F5A6E696DLL;
      break;
    case 2:
      result = 0x6D6F6F5A65736162;
      break;
    case 3:
      result = 0x73656C616373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220EAB104(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F43656D617266 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E49656D617266 && a2 == 0xED00006C61767265;
    if (v6 || (sub_220FC3940() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7565414 && a2 == 0xE300000000000000;
      if (v7 || (sub_220FC3940() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000220FDF320 == a2;
        if (v8 || (sub_220FC3940() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D6F6F5A78616DLL && a2 == 0xE700000000000000;
          if (v9 || (sub_220FC3940() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D6F6F5A6E696DLL && a2 == 0xE700000000000000;
            if (v10 || (sub_220FC3940() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6D6F6F5A65736162 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_220FC3940();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220EAB354(char a1)
{
  result = 0x756F43656D617266;
  switch(a1)
  {
    case 1:
      result = 0x746E49656D617266;
      break;
    case 2:
      result = 7565414;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      v3 = 1517838701;
      goto LABEL_7;
    case 5:
      v3 = 1517185389;
LABEL_7:
      result = v3 | 0x6D6F6F00000000;
      break;
    case 6:
      result = 0x6D6F6F5A65736162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220EAB424(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C617551726961 && a2 == 0xEA00000000007974;
  if (v4 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
    if (v6 || (sub_220FC3940() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646172 && a2 == 0xE500000000000000;
      if (v7 || (sub_220FC3940() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
        if (v8 || (sub_220FC3940() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1684957559 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_220FC3940();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_220EAB5D4(char a1)
{
  result = 0x696C617551726961;
  switch(a1)
  {
    case 1:
      result = 0x7469706963657270;
      break;
    case 2:
      result = 0x7261646172;
      break;
    case 3:
      result = 0x74617265706D6574;
      break;
    case 4:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220EAB67C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F69676572 && a2 == 0xE700000000000000;
  if (v4 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7379616C7265766FLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_220FC3940();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_220EAB744(char a1)
{
  if (a1)
  {
    return 0x7379616C7265766FLL;
  }

  else
  {
    return 0x736E6F69676572;
  }
}

void sub_220EAB77C()
{
  OUTLINED_FUNCTION_5_0();
  v2 = v1;
  v9 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DE20);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v4, v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_220EAF018();
  sub_220FC3AA0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    LOBYTE(v10[0]) = 0;
    sub_220EAF06C();
    OUTLINED_FUNCTION_38_3();
    v6 = v11;
    OUTLINED_FUNCTION_37_3();
    sub_220EAF0C0();
    OUTLINED_FUNCTION_38_3();
    v7 = OUTLINED_FUNCTION_30_3();
    v8(v7);
    memcpy(v14, v13, sizeof(v14));
    v10[0] = v6;
    memcpy(&v10[1], v13, 0x15AuLL);
    sub_220E63244(v10, &v11);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v11 = v6;
    memcpy(v12, v14, sizeof(v12));
    sub_220EAF114(&v11);
    memcpy(v9, v10, 0x162uLL);
  }

  OUTLINED_FUNCTION_8_10();
}

void sub_220EAB990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_34_3();
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DE40);
  OUTLINED_FUNCTION_6();
  v18 = v17;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v28 - v21;
  OUTLINED_FUNCTION_4_19();
  sub_220EAF144();
  OUTLINED_FUNCTION_14_6();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    OUTLINED_FUNCTION_5_12();
    sub_220FC3840();
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_5_12();
    sub_220FC3840();
    OUTLINED_FUNCTION_33_3();
    LOBYTE(a10) = v23;
    OUTLINED_FUNCTION_5_12();
    v24 = sub_220FC3800();
    HIDWORD(v28) = v25;
    v29 = v24;
    v30 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D068);
    v31 = 3;
    sub_220EAF45C(&qword_27CF9DE50, &qword_27CF9D068);
    OUTLINED_FUNCTION_7_9();
    sub_220FC3810();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DE58);
    v31 = 4;
    sub_220EAF198();
    OUTLINED_FUNCTION_7_9();
    sub_220FC3850();
    (*(v18 + 8))(v22, v16);
    __swift_destroy_boxed_opaque_existential_0(v10);
    v26 = v29;
    v27 = v30;
    *v30 = v12;
    v27[1] = v13;
    v27[2] = v26;
    *(v27 + 24) = BYTE4(v28) & 1;
    v27[4] = a10;
    v27[5] = a10;
  }

  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_8_10();
}

BOOL sub_220EABBE4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_220EA9CC0();
  *a1 = result;
  return result;
}

unint64_t sub_220EABC18@<X0>(void *a1@<X8>)
{
  result = sub_220EA9D08();
  *a1 = 0xD000000000000011;
  a1[1] = v3;
  return result;
}

BOOL sub_220EABC54@<W0>(_BYTE *a1@<X8>)
{
  result = sub_220EA9D24();
  *a1 = result;
  return result;
}

uint64_t sub_220EABCC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EAC87C();
  *a1 = result;
  return result;
}

uint64_t sub_220EABD00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220EA9D6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_220EABD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220EA9DAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220EABD5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EA9F04();
  *a1 = result;
  return result;
}

uint64_t sub_220EABD84(uint64_t a1)
{
  v2 = sub_220EAFBD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220EABDC0(uint64_t a1)
{
  v2 = sub_220EAFBD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220EABE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220EA9F80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220EABE2C(uint64_t a1)
{
  v2 = sub_220EAFDA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220EABE68(uint64_t a1)
{
  v2 = sub_220EAFDA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220EABEC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EAC87C();
  *a1 = result;
  return result;
}

uint64_t sub_220EABF00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EAC87C();
  *a1 = result;
  return result;
}

uint64_t sub_220EABF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220EAA0B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220EABF68(uint64_t a1)
{
  v2 = sub_220EAF710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220EABFA4(uint64_t a1)
{
  v2 = sub_220EAF710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220EABFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220EAA1D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220EAC010@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EAA40C();
  *a1 = result;
  return result;
}

uint64_t sub_220EAC038(uint64_t a1)
{
  v2 = sub_220EAF504();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220EAC074(uint64_t a1)
{
  v2 = sub_220EAF504();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220EAC0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220EAA4CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220EAC0E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EAA678();
  *a1 = result;
  return result;
}

uint64_t sub_220EAC108(uint64_t a1)
{
  v2 = sub_220EAF144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220EAC144(uint64_t a1)
{
  v2 = sub_220EAF144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220EAC188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220EAA718(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220EAC1B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EAA9F4();
  *a1 = result;
  return result;
}

uint64_t sub_220EAC1D8(uint64_t a1)
{
  v2 = sub_220EAFA5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220EAC214(uint64_t a1)
{
  v2 = sub_220EAFA5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220EAC258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220EAAAF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220EAC280@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EAAE18();
  *a1 = result;
  return result;
}

uint64_t sub_220EAC2A8(uint64_t a1)
{
  v2 = sub_220EAFB18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220EAC2E4(uint64_t a1)
{
  v2 = sub_220EAFB18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220EAC328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220EAAF2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220EAC350(uint64_t a1)
{
  v2 = sub_220EAFEF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220EAC38C(uint64_t a1)
{
  v2 = sub_220EAFEF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220EAC3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220EAB104(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220EAC3F8(uint64_t a1)
{
  v2 = sub_220EAFF44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220EAC434(uint64_t a1)
{
  v2 = sub_220EAFF44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220EAC478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220EAB424(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220EAC4A0(uint64_t a1)
{
  v2 = sub_220EAF7B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220EAC4DC(uint64_t a1)
{
  v2 = sub_220EAF7B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220EAC520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220EAB67C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220EAC548(uint64_t a1)
{
  v2 = sub_220EAF018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220EAC584(uint64_t a1)
{
  v2 = sub_220EAF018();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_220EAC5C0(void *a1@<X8>)
{
  sub_220EAB77C();
  if (!v1)
  {
    memcpy(a1, __src, 0x162uLL);
  }
}

double sub_220EAC614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_220EAB990(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v15;
    result = *&v16;
    a9[2] = v16;
  }

  return result;
}

void sub_220EAC658()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_34_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DE70);
  OUTLINED_FUNCTION_6();
  v4 = v3;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v9[-v7];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_220EAF278();
  OUTLINED_FUNCTION_39_1();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    sub_220EAF2CC();
    sub_220FC3850();
    if (v9[8] == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DEA0);
      OUTLINED_FUNCTION_37_3();
      sub_220EAF320();
      OUTLINED_FUNCTION_20_5();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DE88);
      OUTLINED_FUNCTION_37_3();
      sub_220EAF350(&qword_27CF9DE90, &qword_27CF9DE88, &unk_220FCDC80, sub_220EAF320);
    }

    sub_220FC3850();
    (*(v4 + 8))(v8, v2);
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_8_10();
}

uint64_t sub_220EAC87C()
{
  v0 = sub_220FC37A0();

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

uint64_t sub_220EAC8CC(char a1)
{
  if (a1)
  {
    return 0x616E6964726F6F63;
  }

  else
  {
    return 1701869940;
  }
}

void *sub_220EAC904@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DEC8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5, v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220EAF504();
  sub_220FC3AA0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_12_7();
  v7 = sub_220FC3820();
  v9 = v8;
  v22 = v7;
  OUTLINED_FUNCTION_12_7();
  v10 = sub_220FC3820();
  v12 = v11;
  v21 = v10;
  sub_220EAF558();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_12_7();
  sub_220FC3830();
  v14 = v13;
  LOBYTE(v24[0]) = 4;
  OUTLINED_FUNCTION_12_7();
  sub_220FC3830();
  v16 = v15;
  LOBYTE(__src[0]) = 5;
  sub_220EAF5AC();
  OUTLINED_FUNCTION_32_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DEE8);
  v30 = 6;
  sub_220EAF350(&qword_27CF9DEF0, &qword_27CF9DEE8, &unk_220FCDCA8, sub_220EAF600);
  sub_220FC3850();
  v17 = OUTLINED_FUNCTION_16_5();
  v18(v17);
  v20 = v31;
  __src[0] = v22;
  __src[1] = v9;
  __src[2] = v21;
  __src[3] = v12;
  LOBYTE(__src[4]) = 1;
  __src[5] = v14;
  __src[6] = v16;
  LOBYTE(__src[7]) = 4;
  __src[8] = v31;
  sub_220EAF654(__src, v24);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v24[0] = v22;
  v24[1] = v9;
  v24[2] = v21;
  v24[3] = v12;
  v25 = 1;
  v26 = v14;
  v27 = v16;
  v28 = 4;
  v29 = v20;
  sub_220EAF68C(v24);
  return memcpy(a2, __src, 0x48uLL);
}

uint64_t sub_220EACCA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DF08);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_4_19();
  sub_220EAF710();
  OUTLINED_FUNCTION_36_2();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_17_4();
  v7 = sub_220FC37E0();
  v17 = v8;
  OUTLINED_FUNCTION_17_4();
  v15 = sub_220FC3820();
  v16 = v9;
  OUTLINED_FUNCTION_17_4();
  sub_220FC3830();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_3_19();
  v13(v12);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v7;
  a2[1] = v17;
  a2[2] = v15;
  a2[3] = v16;
  a2[4] = v11;
  return result;
}

void sub_220EACE98()
{
  OUTLINED_FUNCTION_5_0();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DF20);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5, v6);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_220EAF7B8();
  OUTLINED_FUNCTION_39_1();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    v7 = v4;
    sub_220EAF80C();
    OUTLINED_FUNCTION_15_3();
    sub_220FC3810();
    v16 = v22;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    v8 = v27;
    v20 = v26;
    OUTLINED_FUNCTION_37_3();
    sub_220EAF860();
    OUTLINED_FUNCTION_15_3();
    sub_220FC3810();
    memcpy(v41, v38, sizeof(v41));
    sub_220EAF8F8();
    OUTLINED_FUNCTION_15_3();
    sub_220FC3810();
    memcpy(v40, v37, sizeof(v40));
    LOBYTE(v21[0]) = 3;
    sub_220EAF94C();
    OUTLINED_FUNCTION_15_3();
    sub_220FC3810();
    v12 = v23;
    v13 = v22;
    v11 = v24;
    v14 = v25;
    v15 = v26;
    sub_220EAF9A0();
    OUTLINED_FUNCTION_15_3();
    sub_220FC3810();
    v9 = OUTLINED_FUNCTION_11_6();
    v10(v9);
    memcpy(v39, v36, sizeof(v39));
    v21[0] = v16;
    v21[1] = v17;
    v21[2] = v18;
    v21[3] = v19;
    v21[4] = v20;
    v21[5] = v8;
    memcpy(&v21[6], v41, 0x58uLL);
    memcpy(&v21[17], v40, 0x68uLL);
    v21[30] = v13;
    v21[31] = v12;
    v21[32] = v11;
    v21[33] = v14;
    v21[34] = v15;
    memcpy(&v21[35], v36, 0x42uLL);
    sub_220EAF9F4(v21, &v22);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v25 = v19;
    v26 = v20;
    v27 = v8;
    memcpy(v28, v41, sizeof(v28));
    memcpy(v29, v40, sizeof(v29));
    v30 = v13;
    v31 = v12;
    v32 = v11;
    v33 = v14;
    v34 = v15;
    memcpy(v35, v39, sizeof(v35));
    sub_220EAFA2C(&v22);
    memcpy(v7, v21, 0x15AuLL);
  }

  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_8_10();
}

void sub_220EAD32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_34_3();
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DF68);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_4_19();
  sub_220EAFA5C();
  OUTLINED_FUNCTION_14_6();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    LOBYTE(v35[0]) = 0;
    OUTLINED_FUNCTION_5_12();
    sub_220FC3840();
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_2_21(v19);
    sub_220FC3840();
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_2_21(v20);
    v33 = sub_220FC3840();
    OUTLINED_FUNCTION_2_21(3);
    v32 = sub_220FC3800();
    OUTLINED_FUNCTION_31_4(v32, v21);
    OUTLINED_FUNCTION_2_21(v22);
    v31 = sub_220FC3840();
    OUTLINED_FUNCTION_2_21(5);
    v30 = sub_220FC3840();
    OUTLINED_FUNCTION_2_21(6);
    v29 = sub_220FC3800();
    v44 = v23 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DE58);
    LOBYTE(v34[0]) = 7;
    sub_220EAF198();
    OUTLINED_FUNCTION_7_9();
    sub_220FC3850();
    v28 = v35[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D068);
    sub_220EAF45C(&qword_27CF9DE50, &qword_27CF9D068);
    OUTLINED_FUNCTION_7_9();
    sub_220FC3810();
    v24 = OUTLINED_FUNCTION_13_7();
    v25(v24, v16);
    v27 = v43;
    v34[0] = v12;
    v34[1] = v13;
    v34[2] = v33;
    v34[3] = v32;
    LOBYTE(v34[4]) = a10;
    v34[5] = v31;
    v34[6] = v30;
    v34[7] = v29;
    v26 = v44;
    LOBYTE(v34[8]) = v44;
    v34[9] = v28;
    v34[10] = v43;
    sub_220EAFAB0(v34, v35);
    __swift_destroy_boxed_opaque_existential_0(v10);
    v35[0] = v12;
    v35[1] = v13;
    v35[2] = v33;
    v35[3] = v32;
    v36 = a10;
    v37 = v31;
    v38 = v30;
    v39 = v29;
    v40 = v26;
    v41 = v28;
    v42 = v27;
    sub_220EAFAE8(v35);
    memcpy(v15, v34, 0x58uLL);
  }

  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_8_10();
}

void sub_220EAD6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_34_3();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DF78);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_4_19();
  sub_220EAFB18();
  OUTLINED_FUNCTION_14_6();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    OUTLINED_FUNCTION_6_12();
    sub_220FC3840();
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_1_28(v18);
    sub_220FC3840();
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_1_28(v19);
    v38 = sub_220FC3840();
    OUTLINED_FUNCTION_1_28(3);
    v37 = sub_220FC3800();
    OUTLINED_FUNCTION_31_4(v37, v20);
    OUTLINED_FUNCTION_1_28(v21);
    v36 = sub_220FC3840();
    OUTLINED_FUNCTION_1_28(5);
    v35 = sub_220FC3840();
    OUTLINED_FUNCTION_1_28(6);
    v32 = sub_220FC3800();
    v33 = v13;
    v34 = v12;
    v50 = v22 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D068);
    sub_220EAF45C(&qword_27CF9DE50, &qword_27CF9D068);
    OUTLINED_FUNCTION_10_9();
    sub_220FC3810();
    v23 = v40[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DE58);
    LOBYTE(v39[0]) = 8;
    sub_220EAF198();
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_10_9();
    sub_220FC3850();
    v24 = v40[0];
    OUTLINED_FUNCTION_6_12();
    v25 = sub_220FC3820();
    v31 = v26;
    v27 = v25;
    v28 = OUTLINED_FUNCTION_3_19();
    v29(v28);
    v39[0] = v34;
    v39[1] = v33;
    v39[2] = v38;
    v39[3] = v37;
    LOBYTE(v39[4]) = a10;
    v39[5] = v36;
    v39[6] = v35;
    v39[7] = v32;
    v30 = v50;
    LOBYTE(v39[8]) = v50;
    v39[9] = v23;
    v39[10] = v24;
    v39[11] = v27;
    v39[12] = v31;
    sub_220EAFB6C(v39, v40);
    __swift_destroy_boxed_opaque_existential_0(v10);
    v40[0] = v34;
    v40[1] = v33;
    v40[2] = v38;
    v40[3] = v37;
    v41 = a10;
    v42 = v36;
    v43 = v35;
    v44 = v32;
    v45 = v30;
    v46 = v23;
    v47 = v24;
    v48 = v27;
    v49 = v31;
    sub_220EAFBA4(v40);
    memcpy(v15, v39, 0x68uLL);
  }

  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_8_10();
}

void sub_220EADAD0()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_34_3();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DF88);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_4_19();
  sub_220EAFBD4();
  OUTLINED_FUNCTION_14_6();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    sub_220EAFC28();
    OUTLINED_FUNCTION_10_9();
    sub_220FC3850();
    LOBYTE(v11) = 1;
    OUTLINED_FUNCTION_6_12();
    v6 = sub_220FC3820();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DFA0);
    sub_220EAFC7C();
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_10_9();
    sub_220FC3850();
    sub_220EAFCF8();
    OUTLINED_FUNCTION_10_9();
    sub_220FC3850();
    v9 = OUTLINED_FUNCTION_3_19();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_0(v0);
    *v3 = v6;
    *(v3 + 8) = v8;
    *(v3 + 16) = v11;
    *(v3 + 24) = v11;
    *(v3 + 32) = v12;
  }

  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_8_10();
}

void *sub_220EADD18(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DFC0);
  OUTLINED_FUNCTION_6();
  v5 = v4;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v13[-v8];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220EAFDA0();
  sub_220FC3AA0();
  if (!v1)
  {
    v15 = 0;
    sub_220EAFDF4();
    sub_220FC3850();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DFD8);
    OUTLINED_FUNCTION_24_4();
    v13[15] = v11;
    sub_220EAF350(&qword_27CF9DFE0, &qword_27CF9DFD8, &unk_220FCDCF8, sub_220EAFE48);
    sub_220FC3850();
    (*(v5 + 8))(v9, v3);
    v10 = v14;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

void sub_220EADF10()
{
  OUTLINED_FUNCTION_5_0();
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DFF8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_4_19();
  sub_220EAFEF0();
  OUTLINED_FUNCTION_36_2();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  else
  {
    OUTLINED_FUNCTION_17_4();
    sub_220FC3840();
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_17_4();
    sub_220FC3840();
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_17_4();
    v9 = sub_220FC3800();
    v15 = v10;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DE58);
    sub_220EAF198();
    OUTLINED_FUNCTION_20_5();
    sub_220FC3850();
    v11 = OUTLINED_FUNCTION_3_19();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_0(v4);
    *v6 = v1;
    *(v6 + 8) = v2;
    *(v6 + 16) = v13;
    *(v6 + 24) = v15 & 1;
    *(v6 + 32) = v14;
  }

  OUTLINED_FUNCTION_8_10();
}

void sub_220EAE0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_5_0();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E008);
  OUTLINED_FUNCTION_6();
  v19 = v18;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v31 - v22;
  OUTLINED_FUNCTION_4_19();
  sub_220EAFF44();
  sub_220FC3AA0();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    OUTLINED_FUNCTION_8_11();
    sub_220FC3840();
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_8_11();
    sub_220FC3840();
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_8_11();
    v35 = sub_220FC3840();
    OUTLINED_FUNCTION_8_11();
    v34 = sub_220FC3800();
    OUTLINED_FUNCTION_31_4(v34, v24);
    OUTLINED_FUNCTION_8_11();
    v33 = sub_220FC3840();
    OUTLINED_FUNCTION_8_11();
    v32 = sub_220FC3840();
    OUTLINED_FUNCTION_8_11();
    v25 = sub_220FC3800();
    v27 = v26;
    v28 = *(v19 + 8);
    v31 = v25;
    v28(v23, v17);
    v27 &= 1u;
    v36 = v27;
    __swift_destroy_boxed_opaque_existential_0(v14);
    *v16 = v11;
    *(v16 + 8) = v12;
    v29 = v34;
    *(v16 + 16) = v35;
    *(v16 + 24) = v29;
    *(v16 + 32) = a10;
    v30 = v32;
    *(v16 + 40) = v33;
    *(v16 + 48) = v30;
    *(v16 + 56) = v31;
    *(v16 + 64) = v27;
  }

  OUTLINED_FUNCTION_8_10();
}

uint64_t sub_220EAE338@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EAC87C();
  *a1 = result;
  return result;
}

uint64_t sub_220EAE370@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220EAC8CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_220EAE3A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220EAC87C();
  *a1 = result;
  return result;
}

uint64_t sub_220EAE3E0(uint64_t a1)
{
  v2 = sub_220EAF278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220EAE41C(uint64_t a1)
{
  v2 = sub_220EAF278();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_220EAE458(uint64_t a1@<X8>)
{
  sub_220EAC658();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
  }
}

void *sub_220EAE4EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_220EAC904(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x48uLL);
  }

  return result;
}

double sub_220EAE598@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_220EACCA8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

void sub_220EAE640(void *a1@<X8>)
{
  sub_220EACE98();
  if (!v1)
  {
    memcpy(a1, v3, 0x15AuLL);
  }
}

void sub_220EAE694(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_220EAD32C(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0]);
  if (!v9)
  {
    memcpy(a9, __src, 0x58uLL);
  }
}

void sub_220EAE6E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_220EAD6B4(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0]);
  if (!v9)
  {
    memcpy(a9, __src, 0x68uLL);
  }
}

double sub_220EAE72C@<D0>(uint64_t a1@<X8>)
{
  sub_220EADAD0();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

void *sub_220EAE7D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_220EADD18(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double sub_220EAE860@<D0>(uint64_t a1@<X8>)
{
  sub_220EADF10();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

void sub_220EAE8A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_220EAE0E4(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0]);
  if (!v9)
  {
    memcpy(a9, __src, 0x41uLL);
  }
}

void *sub_220EAE8F4@<X0>(void *a1@<X8>)
{
  result = sub_220F39AD0(__src);
  if (!v1)
  {
    return memcpy(a1, __src, 0x162uLL);
  }

  return result;
}

double sub_220EAE99C@<D0>(_OWORD *a1@<X8>)
{
  sub_220F39C28();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_220EAEA1C@<X0>(uint64_t a1@<X8>)
{
  result = sub_220F39F34();
  if (!v1)
  {
    *a1 = result;
    *(a1 + 8) = v4 & 1;
  }

  return result;
}

uint64_t sub_220EAEA70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220F3E600();
  if (!v1)
  {
    *a1 = result & 1;
  }

  return result;
}

void *sub_220EAEABC@<X0>(void *a1@<X8>)
{
  result = sub_220F3A1FC(__src);
  if (!v1)
  {
    return memcpy(a1, __src, 0x48uLL);
  }

  return result;
}

double sub_220EAEB5C@<D0>(uint64_t a1@<X8>)
{
  sub_220F3A564(v5);
  if (!v1)
  {
    result = *v5;
    v4 = v5[1];
    *a1 = v5[0];
    *(a1 + 16) = v4;
    *(a1 + 32) = v6;
  }

  return result;
}

void sub_220EAEBE0(void *a1@<X8>)
{
  sub_220F3A6DC();
  if (!v1)
  {
    memcpy(a1, v3, 0x15AuLL);
  }
}

void *sub_220EAEC88@<X0>(void *a1@<X8>)
{
  result = sub_220F3ABF0();
  if (!v1)
  {
    return memcpy(a1, __src, 0x58uLL);
  }

  return result;
}

void *sub_220EAED28@<X0>(void *a1@<X8>)
{
  result = sub_220F3B060();
  if (!v1)
  {
    return memcpy(a1, __src, 0x68uLL);
  }

  return result;
}

double sub_220EAEDC8@<D0>(uint64_t a1@<X8>)
{
  sub_220F3B500(v5);
  if (!v1)
  {
    result = *v5;
    v4 = v5[1];
    *a1 = v5[0];
    *(a1 + 16) = v4;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_220EAEE7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220F3B68C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

double sub_220EAEEF4@<D0>(uint64_t a1@<X8>)
{
  sub_220F3C004();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

void *sub_220EAEF78@<X0>(void *a1@<X8>)
{
  result = sub_220F3C22C(__src);
  if (!v1)
  {
    return memcpy(a1, __src, 0x41uLL);
  }

  return result;
}

unint64_t sub_220EAF018()
{
  result = qword_27CF9DE28;
  if (!qword_27CF9DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DE28);
  }

  return result;
}

unint64_t sub_220EAF06C()
{
  result = qword_27CF9DE30;
  if (!qword_27CF9DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DE30);
  }

  return result;
}

unint64_t sub_220EAF0C0()
{
  result = qword_27CF9DE38;
  if (!qword_27CF9DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DE38);
  }

  return result;
}

unint64_t sub_220EAF144()
{
  result = qword_27CF9DE48;
  if (!qword_27CF9DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DE48);
  }

  return result;
}

unint64_t sub_220EAF198()
{
  result = qword_27CF9DE60;
  if (!qword_27CF9DE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9DE58);
    sub_220EAF224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DE60);
  }

  return result;
}

unint64_t sub_220EAF224()
{
  result = qword_27CF9DE68;
  if (!qword_27CF9DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DE68);
  }

  return result;
}

unint64_t sub_220EAF278()
{
  result = qword_27CF9DE78;
  if (!qword_27CF9DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DE78);
  }

  return result;
}

unint64_t sub_220EAF2CC()
{
  result = qword_27CF9DE80;
  if (!qword_27CF9DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DE80);
  }

  return result;
}

uint64_t sub_220EAF350(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    OUTLINED_FUNCTION_18_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220EAF3B8()
{
  result = qword_27CF9DEA8;
  if (!qword_27CF9DEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9DEB0);
    sub_220EAF45C(&qword_27CF9DEB8, &qword_27CF9D218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DEA8);
  }

  return result;
}

uint64_t sub_220EAF45C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_18_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220EAF4B0()
{
  result = qword_27CF9DEC0;
  if (!qword_27CF9DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DEC0);
  }

  return result;
}

unint64_t sub_220EAF504()
{
  result = qword_27CF9DED0;
  if (!qword_27CF9DED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DED0);
  }

  return result;
}

unint64_t sub_220EAF558()
{
  result = qword_27CF9DED8;
  if (!qword_27CF9DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DED8);
  }

  return result;
}

unint64_t sub_220EAF5AC()
{
  result = qword_27CF9DEE0;
  if (!qword_27CF9DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DEE0);
  }

  return result;
}

unint64_t sub_220EAF600()
{
  result = qword_27CF9DEF8;
  if (!qword_27CF9DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DEF8);
  }

  return result;
}

unint64_t sub_220EAF6BC()
{
  result = qword_27CF9DF00;
  if (!qword_27CF9DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DF00);
  }

  return result;
}

unint64_t sub_220EAF710()
{
  result = qword_27CF9DF10;
  if (!qword_27CF9DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DF10);
  }

  return result;
}

unint64_t sub_220EAF764()
{
  result = qword_27CF9DF18;
  if (!qword_27CF9DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DF18);
  }

  return result;
}

unint64_t sub_220EAF7B8()
{
  result = qword_27CF9DF28;
  if (!qword_27CF9DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DF28);
  }

  return result;
}

unint64_t sub_220EAF80C()
{
  result = qword_27CF9DF30;
  if (!qword_27CF9DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DF30);
  }

  return result;
}

unint64_t sub_220EAF860()
{
  result = qword_27CF9DF38;
  if (!qword_27CF9DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DF38);
  }

  return result;
}

uint64_t sub_220EAF8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

unint64_t sub_220EAF8F8()
{
  result = qword_27CF9DF50;
  if (!qword_27CF9DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DF50);
  }

  return result;
}

unint64_t sub_220EAF94C()
{
  result = qword_27CF9DF58;
  if (!qword_27CF9DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DF58);
  }

  return result;
}

unint64_t sub_220EAF9A0()
{
  result = qword_27CF9DF60;
  if (!qword_27CF9DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DF60);
  }

  return result;
}

unint64_t sub_220EAFA5C()
{
  result = qword_27CF9DF70;
  if (!qword_27CF9DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DF70);
  }

  return result;
}

unint64_t sub_220EAFB18()
{
  result = qword_27CF9DF80;
  if (!qword_27CF9DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DF80);
  }

  return result;
}

unint64_t sub_220EAFBD4()
{
  result = qword_27CF9DF90;
  if (!qword_27CF9DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DF90);
  }

  return result;
}

unint64_t sub_220EAFC28()
{
  result = qword_27CF9DF98;
  if (!qword_27CF9DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DF98);
  }

  return result;
}

unint64_t sub_220EAFC7C()
{
  result = qword_27CF9DFA8;
  if (!qword_27CF9DFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9DFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DFA8);
  }

  return result;
}

unint64_t sub_220EAFCF8()
{
  result = qword_27CF9DFB0;
  if (!qword_27CF9DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DFB0);
  }

  return result;
}

unint64_t sub_220EAFD4C()
{
  result = qword_27CF9DFB8;
  if (!qword_27CF9DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DFB8);
  }

  return result;
}

unint64_t sub_220EAFDA0()
{
  result = qword_27CF9DFC8;
  if (!qword_27CF9DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DFC8);
  }

  return result;
}

unint64_t sub_220EAFDF4()
{
  result = qword_27CF9DFD0;
  if (!qword_27CF9DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DFD0);
  }

  return result;
}

unint64_t sub_220EAFE48()
{
  result = qword_27CF9DFE8;
  if (!qword_27CF9DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DFE8);
  }

  return result;
}

unint64_t sub_220EAFE9C()
{
  result = qword_27CF9DFF0;
  if (!qword_27CF9DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DFF0);
  }

  return result;
}

unint64_t sub_220EAFEF0()
{
  result = qword_27CF9E000;
  if (!qword_27CF9E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E000);
  }

  return result;
}

unint64_t sub_220EAFF44()
{
  result = qword_27CF9E010;
  if (!qword_27CF9E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E010);
  }

  return result;
}

uint64_t sub_220EAFF98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_220EAFFD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220EB0050(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_29_4(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_29_4((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_29_4((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_29_4((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_29_4(v8);
}

_BYTE *sub_220EB00D4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_28_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_26_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_27_6(result, v6);
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
          result = OUTLINED_FUNCTION_21_4(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t _s7StorageV12RadarOverlayV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7StorageV12RadarOverlayV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t _s7StorageV20PrecipitationOverlayV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7StorageV20PrecipitationOverlayV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s7StorageV17OverlayScalePointV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220EB0554(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_29_4(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_29_4((*a1 | (v4 << 8)) - 7);
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

      return OUTLINED_FUNCTION_29_4((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_29_4((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_29_4(v8);
}

_BYTE *sub_220EB05D8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_28_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_26_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_27_6(result, v6);
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
          result = OUTLINED_FUNCTION_21_4(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220EB06B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_29_4(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_29_4((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_29_4((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_29_4((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_29_4(v8);
}

_BYTE *sub_220EB0734(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_28_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_26_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_27_6(result, v6);
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
          result = OUTLINED_FUNCTION_21_4(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps0A18MapOverlayMetadataO7StorageV010AirQualityD0VSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps0A18MapOverlayMetadataO7StorageV013PrecipitationD0VSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps0A18MapOverlayMetadataO7StorageV05RadarD0VSg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_220EB0860(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 354))
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

uint64_t sub_220EB08A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 354) = 1;
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

    *(result + 354) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_220EB0960(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_220EB09A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220EB0A24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_220EB0A64(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_220EB0ACC(uint64_t a1, int a2)
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

uint64_t sub_220EB0B0C(uint64_t result, int a2, int a3)
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

uint64_t sub_220EB0B60(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_29_4(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_29_4((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_29_4((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_29_4((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_29_4(v8);
}

_BYTE *sub_220EB0BE4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_28_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_26_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_27_6(result, v6);
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
          result = OUTLINED_FUNCTION_21_4(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220EB0CB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 346))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_220EB0D08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 344) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 346) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 346) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_220EB0DC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_220EB0E04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220EB0E64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_220EB0EA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220EB0F2C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_220EB0F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220EB0FB4(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_35_1(a1);
}

_BYTE *sub_220EB1000(_BYTE *result, int a2, int a3)
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

uint64_t sub_220EB10BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 65))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220EB10DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 65) = v3;
  return result;
}

unint64_t sub_220EB112C()
{
  result = qword_27CF9E018;
  if (!qword_27CF9E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E018);
  }

  return result;
}

unint64_t sub_220EB1184()
{
  result = qword_27CF9E020;
  if (!qword_27CF9E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E020);
  }

  return result;
}

unint64_t sub_220EB11DC()
{
  result = qword_27CF9E028;
  if (!qword_27CF9E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E028);
  }

  return result;
}

unint64_t sub_220EB1234()
{
  result = qword_27CF9E030;
  if (!qword_27CF9E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E030);
  }

  return result;
}

unint64_t sub_220EB128C()
{
  result = qword_27CF9E038;
  if (!qword_27CF9E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E038);
  }

  return result;
}

unint64_t sub_220EB12E4()
{
  result = qword_27CF9E040;
  if (!qword_27CF9E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E040);
  }

  return result;
}

unint64_t sub_220EB133C()
{
  result = qword_27CF9E048;
  if (!qword_27CF9E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E048);
  }

  return result;
}

unint64_t sub_220EB1394()
{
  result = qword_27CF9E050;
  if (!qword_27CF9E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E050);
  }

  return result;
}

unint64_t sub_220EB13EC()
{
  result = qword_27CF9E058;
  if (!qword_27CF9E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E058);
  }

  return result;
}

unint64_t sub_220EB1444()
{
  result = qword_27CF9E060;
  if (!qword_27CF9E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E060);
  }

  return result;
}

unint64_t sub_220EB149C()
{
  result = qword_27CF9E068;
  if (!qword_27CF9E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E068);
  }

  return result;
}

unint64_t sub_220EB14F4()
{
  result = qword_27CF9E070;
  if (!qword_27CF9E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E070);
  }

  return result;
}

unint64_t sub_220EB154C()
{
  result = qword_27CF9E078;
  if (!qword_27CF9E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E078);
  }

  return result;
}

unint64_t sub_220EB15A4()
{
  result = qword_27CF9E080;
  if (!qword_27CF9E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E080);
  }

  return result;
}

unint64_t sub_220EB15FC()
{
  result = qword_27CF9E088;
  if (!qword_27CF9E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E088);
  }

  return result;
}

unint64_t sub_220EB1654()
{
  result = qword_27CF9E090;
  if (!qword_27CF9E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E090);
  }

  return result;
}

unint64_t sub_220EB16AC()
{
  result = qword_27CF9E098;
  if (!qword_27CF9E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E098);
  }

  return result;
}

unint64_t sub_220EB1704()
{
  result = qword_27CF9E0A0;
  if (!qword_27CF9E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E0A0);
  }

  return result;
}

unint64_t sub_220EB175C()
{
  result = qword_27CF9E0A8;
  if (!qword_27CF9E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E0A8);
  }

  return result;
}

unint64_t sub_220EB17B4()
{
  result = qword_27CF9E0B0;
  if (!qword_27CF9E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E0B0);
  }

  return result;
}

unint64_t sub_220EB180C()
{
  result = qword_27CF9E0B8;
  if (!qword_27CF9E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E0B8);
  }

  return result;
}

unint64_t sub_220EB1864()
{
  result = qword_27CF9E0C0;
  if (!qword_27CF9E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E0C0);
  }

  return result;
}

unint64_t sub_220EB18BC()
{
  result = qword_27CF9E0C8;
  if (!qword_27CF9E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E0C8);
  }

  return result;
}

unint64_t sub_220EB1914()
{
  result = qword_27CF9E0D0;
  if (!qword_27CF9E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E0D0);
  }

  return result;
}

unint64_t sub_220EB196C()
{
  result = qword_27CF9E0D8;
  if (!qword_27CF9E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E0D8);
  }

  return result;
}

unint64_t sub_220EB19C4()
{
  result = qword_27CF9E0E0;
  if (!qword_27CF9E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E0E0);
  }

  return result;
}

unint64_t sub_220EB1A1C()
{
  result = qword_27CF9E0E8;
  if (!qword_27CF9E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E0E8);
  }

  return result;
}

unint64_t sub_220EB1A74()
{
  result = qword_27CF9E0F0;
  if (!qword_27CF9E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E0F0);
  }

  return result;
}

unint64_t sub_220EB1ACC()
{
  result = qword_27CF9E0F8;
  if (!qword_27CF9E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E0F8);
  }

  return result;
}

unint64_t sub_220EB1B24()
{
  result = qword_27CF9E100;
  if (!qword_27CF9E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E100);
  }

  return result;
}

unint64_t sub_220EB1B7C()
{
  result = qword_27CF9E108;
  if (!qword_27CF9E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E108);
  }

  return result;
}

unint64_t sub_220EB1BD4()
{
  result = qword_27CF9E110;
  if (!qword_27CF9E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E110);
  }

  return result;
}

unint64_t sub_220EB1C2C()
{
  result = qword_27CF9E118;
  if (!qword_27CF9E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E118);
  }

  return result;
}

unint64_t sub_220EB1C84()
{
  result = qword_27CF9E120;
  if (!qword_27CF9E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E120);
  }

  return result;
}

unint64_t sub_220EB1CDC()
{
  result = qword_27CF9E128;
  if (!qword_27CF9E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E128);
  }

  return result;
}

unint64_t sub_220EB1D34()
{
  result = qword_27CF9E130;
  if (!qword_27CF9E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E130);
  }

  return result;
}

unint64_t sub_220EB1D8C()
{
  result = qword_27CF9E138;
  if (!qword_27CF9E138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E138);
  }

  return result;
}

unint64_t sub_220EB1DE4()
{
  result = qword_27CF9E140;
  if (!qword_27CF9E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E140);
  }

  return result;
}

unint64_t sub_220EB1E3C()
{
  result = qword_27CF9E148;
  if (!qword_27CF9E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E148);
  }

  return result;
}

unint64_t sub_220EB1E94()
{
  result = qword_27CF9E150;
  if (!qword_27CF9E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E150);
  }

  return result;
}

unint64_t sub_220EB1EEC()
{
  result = qword_27CF9E158;
  if (!qword_27CF9E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E158);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_3()
{

  return sub_220FC3850();
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return sub_220FC3AA0();
}

uint64_t OUTLINED_FUNCTION_38_3()
{

  return sub_220FC3850();
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return sub_220FC3AA0();
}

uint64_t sub_220EB20EC(uint64_t a1, unint64_t a2)
{
  v6 = sub_220EB26E8(12, a1, a2, &v103);
  v7 = v2;
  if (v2)
  {
    goto LABEL_45;
  }

  LODWORD(v8) = v6;
  v9 = sub_220F35AB4(&unk_28347B9F8, v6);

  if ((v9 & 1) == 0)
  {
    sub_220EB2F84();
    OUTLINED_FUNCTION_53();
    *v80 = 0;
    goto LABEL_44;
  }

  v10 = OUTLINED_FUNCTION_0_30();
  v11 = MEMORY[0x223D99670](v10);
  result = v103;
  v13 = v103 + 4;
  if (__OFADD__(v103, 4))
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v11 < v13)
  {
LABEL_41:
    sub_220EB2F84();
    OUTLINED_FUNCTION_53();
    v79 = 4;
LABEL_42:
    *v78 = v79;
LABEL_44:
    swift_willThrow();
LABEL_45:
    v81 = OUTLINED_FUNCTION_0_30();
    sub_220E565AC(v81, v82);
    return OUTLINED_FUNCTION_5_13();
  }

  if (v13 < v103)
  {
    goto LABEL_47;
  }

  v14 = OUTLINED_FUNCTION_3_20();
  v16 = v15;
  sub_220EB2BF4(v14, v15);
  sub_220E565AC(v14, v16);
  v17 = OUTLINED_FUNCTION_0_30();
  result = MEMORY[0x223D99670](v17);
  v8 = v13 + 4;
  if (__OFADD__(v13, 4))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (result < v8)
  {
    goto LABEL_41;
  }

  if (v8 < v13)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v18 = OUTLINED_FUNCTION_3_20();
  v3 = v19;
  v7 = sub_220EB2BF4(v18, v19);
  sub_220E565AC(v18, v3);
  v20 = OUTLINED_FUNCTION_0_30();
  result = MEMORY[0x223D99670](v20);
  v21 = v8 + 4;
  if (__OFADD__(v8, 4))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (result < v21)
  {
    goto LABEL_41;
  }

  if (v21 < v8)
  {
    __break(1u);
    goto LABEL_65;
  }

  v22 = OUTLINED_FUNCTION_3_20();
  v24 = v23;
  v103 = v8 + 4;
  sub_220EB2BF4(v22, v23);
  sub_220E565AC(v22, v24);
  v25 = OUTLINED_FUNCTION_0_30();
  v26 = MEMORY[0x223D99670](v25);
  v27 = v8 + 8;
  if (__OFADD__(v21, 4))
  {
LABEL_65:
    __break(1u);
LABEL_66:
    sub_220EB2F84();
    OUTLINED_FUNCTION_53();
    v79 = 3;
    goto LABEL_42;
  }

  if (v26 < v27)
  {
    goto LABEL_41;
  }

  if (v27 < v21)
  {
    __break(1u);
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_1_29();
  v28 = OUTLINED_FUNCTION_3_20();
  v30 = v29;
  LODWORD(v8) = sub_220EB2BF4(v28, v29);
  sub_220E565AC(v28, v30);
  v31 = OUTLINED_FUNCTION_0_30();
  result = MEMORY[0x223D99670](v31);
  v32 = v21 + 8;
  if (__OFADD__(v27, 4))
  {
LABEL_68:
    __break(1u);
    goto LABEL_45;
  }

  if (result < v32)
  {
    goto LABEL_41;
  }

  if (v32 < v27)
  {
    __break(1u);
    goto LABEL_71;
  }

  v33 = OUTLINED_FUNCTION_3_20();
  v35 = v34;
  v36 = sub_220EB2BF4(v33, v34);
  sub_220E565AC(v33, v35);
  v37 = OUTLINED_FUNCTION_0_30();
  result = MEMORY[0x223D99670](v37);
  v38 = v32 + 4;
  if (__OFADD__(v32, 4))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (result < v38)
  {
    goto LABEL_41;
  }

  if (v38 < v32)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v39 = OUTLINED_FUNCTION_3_20();
  v41 = v40;
  sub_220EB2BF4(v39, v40);
  sub_220E565AC(v39, v41);
  v42 = OUTLINED_FUNCTION_0_30();
  result = MEMORY[0x223D99670](v42);
  v43 = v38 + 4;
  if (__OFADD__(v38, 4))
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (result < v43)
  {
    goto LABEL_41;
  }

  v102 = v36;
  if (v43 < v38)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v44 = OUTLINED_FUNCTION_3_20();
  sub_220EB2BF4(v44, v45);
  v46 = OUTLINED_FUNCTION_5_13();
  sub_220E565AC(v46, v47);
  v48 = OUTLINED_FUNCTION_0_30();
  result = MEMORY[0x223D99670](v48);
  v49 = v38 + 8;
  if (__OFADD__(v43, 4))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (result < v49)
  {
    goto LABEL_41;
  }

  if (v49 < v43)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_2_22();
  sub_220EB2BF4(v50, v51);
  v52 = OUTLINED_FUNCTION_1_29();
  sub_220E565AC(v52, v53);
  v54 = OUTLINED_FUNCTION_0_30();
  result = MEMORY[0x223D99670](v54);
  v55 = v38 + 12;
  if (__OFADD__(v49, 4))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (result < v55)
  {
    goto LABEL_41;
  }

  if (v55 < v49)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_2_22();
  v101 = sub_220EB2BF4(v56, v57);
  v58 = OUTLINED_FUNCTION_1_29();
  sub_220E565AC(v58, v59);
  v60 = OUTLINED_FUNCTION_0_30();
  result = MEMORY[0x223D99670](v60);
  v61 = v38 + 16;
  if (__OFADD__(v55, 4))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (result < v61)
  {
    goto LABEL_41;
  }

  if (v61 < v55)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_2_22();
  v100 = sub_220EB2BF4(v62, v63);
  v64 = OUTLINED_FUNCTION_1_29();
  sub_220E565AC(v64, v65);
  v66 = OUTLINED_FUNCTION_0_30();
  result = MEMORY[0x223D99670](v66);
  v67 = v38 + 20;
  if (__OFADD__(v61, 4))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (result < v67)
  {
    goto LABEL_41;
  }

  if (v67 < v61)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_2_22();
  v99 = sub_220EB2BF4(v68, v69);
  v70 = OUTLINED_FUNCTION_1_29();
  sub_220E565AC(v70, v71);
  v72 = OUTLINED_FUNCTION_0_30();
  result = MEMORY[0x223D99670](v72);
  v5 = v38 + 24;
  if (__OFADD__(v67, 4))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (result < v5)
  {
    goto LABEL_41;
  }

  if (v5 < v67)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_2_22();
  v98 = sub_220EB2BF4(v73, v74);
  v3 = v2;
  v75 = OUTLINED_FUNCTION_1_29();
  sub_220E565AC(v75, v76);
  v77 = OUTLINED_FUNCTION_0_30();
  result = MEMORY[0x223D99670](v77);
  v4 = v38 + 28;
  if (__OFADD__(v5, 4))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (result < v4)
  {
    goto LABEL_41;
  }

LABEL_51:
  if (v4 < v5)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_2_22();
  v83 = v3;
  v86 = sub_220EB2BF4(v84, v85);
  v87 = OUTLINED_FUNCTION_1_29();
  result = sub_220E565AC(v87, v88);
  if (v100)
  {
    goto LABEL_66;
  }

  v89 = v99 == 1 && v98 == 1;
  if (!v89 || v101)
  {
    goto LABEL_66;
  }

  v90 = v4 + v86;
  if (__OFADD__(v4, v86))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v91 = v90 + 4;
  if (__OFADD__(v90, 4))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v92 = OUTLINED_FUNCTION_0_30();
  result = MEMORY[0x223D99670](v92);
  if (result >= v91)
  {
    v93 = OUTLINED_FUNCTION_3_20();
    sub_220EB29A8(v93, v94);
    OUTLINED_FUNCTION_2_22();
    v95 = sub_220FC0100();
    v96 = OUTLINED_FUNCTION_1_29();
    sub_220E565AC(v96, v97);
    sub_220EB2B2C(v7, v8, v102);
    if (v83)
    {
    }

    goto LABEL_45;
  }

LABEL_89:
  __break(1u);
  return result;
}

int64_t sub_220EB26E8(int64_t result, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = result;
  v6 = 0;
  switch(a3 >> 62)
  {
    case 1uLL:
      LODWORD(v6) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
        goto LABEL_42;
      }

      v6 = v6;
LABEL_6:
      v10 = v25 + result;
      if (__OFADD__(v25, result))
      {
        goto LABEL_40;
      }

      if (v6 < v10)
      {
        sub_220EB2F84();
        swift_allocError();
        *v11 = 4;
        swift_willThrow();
        return v4;
      }

      *a4 = v10;
      if ((result & 0x8000000000000000) == 0)
      {
        v4 = MEMORY[0x277D84F90];
        if (!result)
        {
          return v4;
        }

        v26 = MEMORY[0x277D84F90];
        sub_220F0B3E8(0, result, 0);
        v12 = 0;
        v4 = v26;
        while (2)
        {
          result = v25 + v12;
          if (__OFADD__(v25, v12))
          {
            __break(1u);
LABEL_35:
            __break(1u);
          }

          else
          {
            if ((v25 ^ 0x7FFFFFFFFFFFFFFFLL) == v12)
            {
              goto LABEL_35;
            }

            if (result != 0x7FFFFFFFFFFFFFFFLL)
            {
              result = sub_220FC00E0();
              v13 = result;
              v15 = v14;
              v16 = 0;
              switch(v14 >> 62)
              {
                case 1uLL:
                  if (result > result >> 32)
                  {
                    goto LABEL_37;
                  }

                  v17 = sub_220FBFEB0();
                  if (v17)
                  {
                    v18 = v17;
                    result = sub_220FBFED0();
                    if (__OFSUB__(v13, result))
                    {
                      goto LABEL_39;
                    }

                    v19 = (v13 - result + v18);
                  }

                  else
                  {
                    v19 = 0;
                  }

                  result = sub_220FBFEC0();
                  if (!v19)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_29;
                case 2uLL:
                  v20 = *(result + 16);
                  v21 = sub_220FBFEB0();
                  if (v21)
                  {
                    v22 = v21;
                    result = sub_220FBFED0();
                    if (__OFSUB__(v20, result))
                    {
                      goto LABEL_38;
                    }

                    v19 = (v20 - result + v22);
                  }

                  else
                  {
                    v19 = 0;
                  }

                  result = sub_220FBFEC0();
                  if (!v19)
                  {
                    goto LABEL_44;
                  }

LABEL_29:
                  v16 = *v19;
LABEL_30:
                  sub_220E565AC(v13, v15);
                  v24 = *(v26 + 16);
                  v23 = *(v26 + 24);
                  if (v24 >= v23 >> 1)
                  {
                    sub_220F0B3E8((v23 > 1), v24 + 1, 1);
                  }

                  ++v12;
                  *(v26 + 16) = v24 + 1;
                  *(v26 + v24 + 32) = v16;
                  if (v5 == v12)
                  {
                    return v4;
                  }

                  continue;
                case 3uLL:
                  goto LABEL_30;
                default:
                  v16 = result;
                  goto LABEL_30;
              }
            }
          }

          break;
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    case 2uLL:
      v8 = *(a2 + 16);
      v7 = *(a2 + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_43;
    case 3uLL:
      goto LABEL_6;
    default:
      v6 = BYTE6(a3);
      goto LABEL_6;
  }
}

uint64_t sub_220EB29A8(uint64_t a1, uint64_t a2)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v12[3] = MEMORY[0x277CC9318];
  v12[4] = MEMORY[0x277CC9300];
  v12[0] = a1;
  v12[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v12, MEMORY[0x277CC9318]);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_220EB3094(v6, v7, &v11);
      goto LABEL_9;
    case 3uLL:
      memset(v10, 0, 14);
      v5 = v10;
      goto LABEL_5;
    default:
      v10[0] = *v2;
      LOWORD(v10[1]) = v4;
      BYTE2(v10[1]) = BYTE2(v4);
      BYTE3(v10[1]) = BYTE3(v4);
      BYTE4(v10[1]) = BYTE4(v4);
      BYTE5(v10[1]) = BYTE5(v4);
      v5 = v10 + BYTE6(v4);
LABEL_5:
      sub_220EB301C(v10, v5, &v11);
LABEL_9:
      v8 = v11;
      __swift_destroy_boxed_opaque_existential_0(v12);
      return v8;
  }
}

uint64_t sub_220EB2B2C(int a1, int a2, unsigned int a3)
{
  if (a1 && a2)
  {
    v4 = 1;
  }

  else
  {
    if (qword_27CF9C080 != -1)
    {
      swift_once();
    }

    v5 = off_27CF9E160;
    if (*(off_27CF9E160 + 2))
    {
      v6 = sub_220F1AE18(a3);
      if (v7)
      {
        return *(v5[7] + 8 * v6);
      }
    }

    v4 = 2;
  }

  sub_220EB2F84();
  swift_allocError();
  *v9 = v4;
  return swift_willThrow();
}

uint64_t sub_220EB2BF4(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 >= a1)
      {
        v4 = a1;
        goto LABEL_6;
      }

      __break(1u);
      break;
    case 2uLL:
      v4 = *(a1 + 16);
LABEL_6:
      result = sub_220EB3128(v4);
      break;
    case 3uLL:
      return result;
    default:
      result = a1;
      break;
  }

  return result;
}

uint64_t sub_220EB2C70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 - 186) > 0x20 || ((0x1FF7C7FDFuLL >> (a4 + 70)) & 1) == 0)
  {
    return 0;
  }

  v4 = qword_220FCF368[a4 - 186];
  if (!(result % v4) || (v5 = v4 - result % v4, v6 = __OFADD__(result, v5), result += v5, !v6))
  {
    v7 = result / v4;
    if ((v7 - 0x800000000000000) >> 60 == 15)
    {
      return 16 * v7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_220EB2CEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id a6)
{
  v9 = sub_220EB2C70(a3, a2, a3, a6);
  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v12 = v9;
    if ([a1 pixelFormat] == a6)
    {
      v13 = OUTLINED_FUNCTION_5_13();
      MTLRegionMake2D(v13, v14, v15);
      return [a1 replaceRegion:&v18 mipmapLevel:0 withBytes:objc_msgSend(a5 bytesPerRow:{sel_bytes), v12}];
    }

    v11 = 5;
  }

  sub_220EB2F84();
  OUTLINED_FUNCTION_53();
  *v17 = v11;
  return swift_willThrow();
}

id sub_220EB2DFC(void *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v14 = sub_220EB2C70(a6, a2, a3, a9);
  if ((v15 & 1) == 0)
  {
    if (a9 != a2 || (v17 = v14, [a1 pixelFormat] != a3))
    {
      v16 = 5;
      goto LABEL_8;
    }

    if (a4 == 1)
    {
      v18 = OUTLINED_FUNCTION_5_13();
      MTLRegionMake2D(v18, v19, v20);
      return [a1 replaceRegion:&v23 mipmapLevel:0 withBytes:objc_msgSend(a8 bytesPerRow:{sel_bytes), v17}];
    }
  }

  v16 = 2;
LABEL_8:
  sub_220EB2F84();
  OUTLINED_FUNCTION_53();
  *v22 = v16;
  return swift_willThrow();
}

unint64_t sub_220EB2F84()
{
  result = qword_27CF9E168;
  if (!qword_27CF9E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E168);
  }

  return result;
}

void *sub_220EB2FD8()
{
  type metadata accessor for MTLPixelFormat(0);
  result = sub_220FC2600();
  off_27CF9E160 = result;
  return result;
}

uint64_t sub_220EB301C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_220FC00A0();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x223D99600]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x223D99620]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_220EB3094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_220FBFEB0();
  v7 = result;
  if (result)
  {
    result = sub_220FBFED0();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_220FBFEC0();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_220EB301C(v7, v13, a3);
}

uint64_t sub_220EB3128(uint64_t a1)
{
  v2 = sub_220FBFEB0();
  if (v2)
  {
    v3 = v2;
    result = sub_220FBFED0();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - result + v3);
  }

  else
  {
    v5 = 0;
  }

  result = sub_220FBFEC0();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for RainExpectation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for KTXError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220EB330C()
{
  result = qword_27CF9E170;
  if (!qword_27CF9E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9E170);
  }

  return result;
}

BOOL sub_220EB3360(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
    v3 = v2 && *(a1 + 24) == *(a2 + 24);
    if (v3 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
    {
      return 1;
    }
  }

  return result;
}