void specialized FMR1GlyphButton.init(coder:)()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_style;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = v0 + v1;
  v3 = qword_2804DCFA0;
  v4 = qword_2804DCFA8;
  v5 = qword_2804DCFC0;
  v6 = xmmword_2804DCFB0;
  *v2 = static FMR1GlyphButtonStyle.default;
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = v6;
  *(v2 + 48) = v5;
  v7 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button;
  v8 = objc_opt_self();
  v9 = v4;
  *(v0 + v7) = [v8 buttonWithType_];
  v10 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_label;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_normalBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringDisplayLink) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringPerimiterAnimationSpring) = 0;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringFadeAnimationSpring) = 0;
  v11 = v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_lastRenderTime;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_usesGlassBackground) = 0;
  v12 = (v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_legend);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_named);
  *v13 = 0;
  v13[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized FMR1GlyphButton.draw(_:)()
{
  v1 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringPerimiterAnimationSpring;
  v2 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringPerimiterAnimationSpring);
  if (v2)
  {
    v3 = &v2[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s];
    swift_beginAccess();
    if (vabdd_f64(v3[35] + *&v2[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40], *v3 + *&v2[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o]) > *&v2[OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold])
    {
      v4 = *v3 + *&v2[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o];
    }

    else
    {
      v4 = v3[35] + *&v2[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40];
    }

    v5 = &OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_derivativeCenterFactor;
    if (v4 >= 0.99)
    {
      v6 = *&v2[OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters + 16];
      v7 = v2;
      v8 = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F50624DD2F1A9FCLL, 0, v6, 0);
      v9 = (v8 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
      swift_beginAccess();
      v10 = (v8 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
      if (v9[35] + *(v8 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40) == 1.79769313e308)
      {
        FLSpring.resetImmediately(toValue:)(1.0);

        *(v8 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
      }

      else
      {
      }

      v13 = 1.0 - v10[5];
      v9[35] = v13;
      v9[30] = v13;
      v9[31] = 0.0;
      v5 = &OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_derivativeCenterFactor;
      v14 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringFadeAnimationSpring);
      *(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringFadeAnimationSpring) = v8;

      v15 = *(v0 + v1);
      *(v0 + v1) = 0;
    }

    v11 = (v0 + v5[48]);
    v12 = *v11;
    if (!*v11)
    {
      v18 = v4 * 6.28318531 + -1.57079633;
LABEL_21:
      v28 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button;
      [*(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_button) frame];
      v29 = CGRectGetWidth(v35) * 0.5;
      [*(v0 + v28) frame];
      v30 = CGRectGetHeight(v36) * 0.5;
      v31 = v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_style;
      v32 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_style + 40);
      v33 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v29 startAngle:v30 endAngle:(*(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_style) - v32) * 0.5 clockwise:{-1.57079633, v18}];
      [v33 setLineWidth_];
      [v33 setLineCapStyle_];
      v34 = [*(v0 + v28) tintColor];
      [v34 setStroke];

      [v33 strokeWithBlendMode:0 alpha:v4 * *(v31 + 48)];
      return;
    }

LABEL_13:
    v16 = &v12[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s];
    swift_beginAccess();
    v17 = *v16 + *&v12[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o];
    if (vabdd_f64(v16[35] + *&v12[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40], v17) <= *&v12[OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold])
    {
      v17 = v16[35] + *&v12[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40];
    }

    v4 = 1.0 - v17;
    v18 = 4.71238898;
    if (v17 >= 0.99)
    {
      v19 = OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringDisplayLink;
      v20 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringDisplayLink);
      if (v20)
      {
        v21 = objc_opt_self();
        v22 = v12;
        v23 = v20;
        v24 = [v21 currentRunLoop];
        [v23 removeFromRunLoop:v24 forMode:*MEMORY[0x277CBE738]];

        v25 = *(v0 + v19);
      }

      else
      {
        v25 = 0;
      }

      *(v0 + v19) = 0;

      v26 = v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_lastRenderTime;
      *v26 = 0;
      *(v26 + 8) = 1;
      v27 = *v11;
      *v11 = 0;
    }

    goto LABEL_21;
  }

  v11 = (v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringFadeAnimationSpring);
  v12 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMR1GlyphButton_ringFadeAnimationSpring);
  if (v12)
  {
    goto LABEL_13;
  }
}

uint64_t outlined consume of Set<UITouch>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id UIColor.fmpfBlendWithColor(_:factor:)(void *a1, double a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = 0.0;
  v14[0] = 0.0;
  v11 = 0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0;
  v8 = 0.0;
  if ([v2 getRed:v14 green:&v13 blue:&v12 alpha:&v11])
  {
    v5 = a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || ![a1 getRed:&v10 green:&v9 blue:&v8 alpha:&v7])
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:(1.0 - a2) * v14[0] + v10 * a2 green:(1.0 - a2) * v13 + v9 * a2 blue:(1.0 - a2) * v12 + v8 * a2 alpha:1.0];
  }
}

id one-time initialization function for fmpfBlackColor()
{
  result = [objc_opt_self() blackColor];
  static UIColor.fmpfBlackColor = result;
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FMPFSKLabelNodeStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for FMPFSKLabelNodeStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double one-time initialization function for r1NoAR()
{
  v0 = [objc_opt_self() whiteColor];
  *&static FMPFSKLabelNodeStyle.r1NoAR = 0xD000000000000012;
  *(&static FMPFSKLabelNodeStyle.r1NoAR + 1) = 0x800000026D0DCDC0;
  *&xmmword_2804DCFE0 = v0;
  *(&xmmword_2804DCFE0 + 1) = 0x4046000000000000;
  *&result = 2;
  xmmword_2804DCFF0 = xmmword_26D0D4180;
  qword_2804DD000 = 0;
  byte_2804DD008 = 0;
  return result;
}

{
  if (one-time initialization token for r1NoAR != -1)
  {
    swift_once();
  }

  *&static FMPFSKPatternNodeStyle.r1NoAR = 0;
  BYTE8(static FMPFSKPatternNodeStyle.r1NoAR) = 1;
  xmmword_2804DD288 = xmmword_26D0D42A0;
  *&xmmword_2804DD298 = 0x3FEAAAAAAAAAAAABLL;
  BYTE8(xmmword_2804DD298) = 1;
  xmmword_2804DD2A8 = xmmword_26D0D4210;
  xmmword_2804DD2B8 = xmmword_26D0D42B0;
  __asm { FMOV            V1.2D, #1.0 }

  xmmword_2804DD2C8 = _Q1;
  xmmword_2804DD2D8 = _Q1;
  xmmword_2804DD2E8 = _Q1;
  xmmword_2804DD2F8 = xmmword_26D0D4260;
  xmmword_2804DD308 = xmmword_26D0D4270;
  *&xmmword_2804DD318 = 0x3FECCCCCCCCCCCCDLL;
  *(&xmmword_2804DD318 + 1) = *(&xmmword_2804DA248 + 1);
  result = 0.6;
  xmmword_2804DD328 = xmmword_26D0D42C0;
  xmmword_2804DD338 = xmmword_26D0D42D0;
  return result;
}

{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  static FMPFSKPeripheralDotNodeStyle.r1NoAR = xmmword_26D0D43D0;
  qword_2804DA218 = 16;
  unk_2804DA220 = xmmword_26D0D43E0;
  *(&xmmword_2804DA228 + 8) = xmmword_26D0D43F0;
  qword_2804DA240 = v1;
  result = 0.5;
  xmmword_2804DA248 = xmmword_26D0D4400;
  qword_2804DA258 = 0x4040000000000000;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10TVRemoteUI20FMPFSKLabelNodeStyleVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FMPFSKPatternNodeConfig(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 177))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FMPFSKPatternNodeConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for FMPFSKPatternNodeStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 208))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FMPFSKPatternNodeStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 200) = 0;
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
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 2;
    }
  }

  return result;
}

id one-time initialization function for default()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 whiteColor];
  v3 = [v2 colorWithAlphaComponent_];

  result = [v0 whiteColor];
  static FMPFSKPatternNodeCommonStyle.default = v1;
  qword_2804DD018 = v3;
  qword_2804DD020 = result;
  qword_2804DD028 = 0x3FE0000000000000;
  return result;
}

double one-time initialization function for r1OrBT()
{
  static FMPFSKPatternNodeConfig.r1OrBT = xmmword_26D0D41E0;
  byte_2804DD040 = 1;
  qword_2804DD048 = 0;
  LOBYTE(xmmword_2804DD050) = 1;
  *(&xmmword_2804DD050 + 1) = 0;
  byte_2804DD060 = 1;
  qword_2804DD068 = 0;
  LOBYTE(xmmword_2804DD070) = 1;
  *(&xmmword_2804DD070 + 1) = 0;
  byte_2804DD080 = 1;
  qword_2804DD088 = 0;
  LOBYTE(xmmword_2804DD090) = 1;
  *(&xmmword_2804DD090 + 1) = 0;
  byte_2804DD0A0 = 1;
  result = 0.0;
  *&algn_2804DD0A1[7] = 0u;
  *(&xmmword_2804DD0B0 + 8) = 0u;
  unk_2804DD0C8 = 0u;
  *(&xmmword_2804DD0D0 + 1) = 0u;
  return result;
}

{
  if (one-time initialization token for r1OrBT != -1)
  {
    swift_once();
  }

  *&static FMPFSKPatternNodeStyle.r1OrBT = 0x3FE0000000000000;
  BYTE8(static FMPFSKPatternNodeStyle.r1OrBT) = 0;
  xmmword_2804DD1B8 = xmmword_26D0D4200;
  *&xmmword_2804DD1C8 = 0x3FEAAAAAAAAAAAABLL;
  BYTE8(xmmword_2804DD1C8) = 0;
  xmmword_2804DD1D8 = xmmword_26D0D4210;
  xmmword_2804DD1E8 = xmmword_26D0D4220;
  xmmword_2804DD1F8 = xmmword_26D0D4230;
  xmmword_2804DD208 = xmmword_26D0D4240;
  xmmword_2804DD218 = xmmword_26D0D4250;
  xmmword_2804DD228 = xmmword_26D0D4260;
  xmmword_2804DD238 = xmmword_26D0D4270;
  *&xmmword_2804DD248 = 0x3FECCCCCCCCCCCCDLL;
  *(&xmmword_2804DD248 + 1) = *(&xmmword_2804DA1F0 + 1);
  result = 0.5;
  xmmword_2804DD258 = xmmword_26D0D4280;
  xmmword_2804DD268 = xmmword_26D0D4290;
  return result;
}

{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  static FMPFSKPeripheralDotNodeStyle.r1OrBT = xmmword_26D0D43D0;
  qword_2804DA1C0 = 16;
  *algn_2804DA1C8 = xmmword_26D0D43E0;
  *(&xmmword_2804DA1D0 + 8) = xmmword_26D0D43F0;
  qword_2804DA1E8 = v1;
  result = 0.5;
  xmmword_2804DA1F0 = xmmword_26D0D4400;
  qword_2804DA200 = 0x4040000000000000;
  return result;
}

uint64_t one-time initialization function for r1NoAR()
{
  if (one-time initialization token for r1NoAR != -1)
  {
    swift_once();
  }

  v9[0] = static FMPFSKLabelNodeStyle.r1NoAR;
  v9[1] = xmmword_2804DCFE0;
  v10[0] = xmmword_2804DCFF0;
  *(v10 + 9) = *(&xmmword_2804DCFF0 + 9);
  v1[0] = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  *&v2[48] = *(&xmmword_2804DCFF0 + 9);
  *&v2[39] = xmmword_2804DCFF0;
  *&v2[23] = xmmword_2804DCFE0;
  *&v2[7] = static FMPFSKLabelNodeStyle.r1NoAR;
  static FMPFSKPatternNodeConfig.r1NoAR = xmmword_26D0D41F0;
  byte_2804DD100 = 0;
  qword_2804DD108 = 5;
  LOBYTE(xmmword_2804DD110) = 0;
  *(&xmmword_2804DD110 + 1) = 120;
  byte_2804DD120 = 0;
  qword_2804DD128 = 0;
  LOBYTE(xmmword_2804DD130) = 0;
  *(&xmmword_2804DD130 + 1) = 0x4059000000000000;
  byte_2804DD140 = 0;
  qword_2804DD148 = 1;
  LOBYTE(xmmword_2804DD150) = 0;
  *(&xmmword_2804DD150 + 1) = 0;
  byte_2804DD160 = 0;
  *(&xmmword_2804DD190 + 1) = *&v2[48];
  unk_2804DD181 = *&v2[32];
  *(&xmmword_2804DD170 + 1) = *&v2[16];
  *algn_2804DD161 = *v2;
  return outlined init with copy of FMPFSKLabelNodeStyle(v9, v1);
}

void FMPFSKPatternFragmentNode.applyConformationFactor(_:)(double a1)
{
  v2 = v1;
  if ((v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationTimingFunction + 32] & 1) == 0 && (v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style + 288] & 1) == 0)
  {
    v3 = &v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationTimingFunction];
    a1 = pow(a1 * a1 * a1 * v3[3] + a1 * a1 * ((1.0 - a1) * (v3[2] * 3.0)) + (1.0 - a1) * ((1.0 - a1) * (1.0 - a1)) * *v3 + (1.0 - a1) * (1.0 - a1) * (v3[1] * 3.0) * a1, *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style + 280]);
  }

  v13 = a1;
  specialized FMPFSKPatternFragmentNode.positionOnCurvedPathWith(conformationFactor:trackOffsetCorrection:)(v14, a1);
  if ((v15 & 1) == 0)
  {
    v4 = v14[0];
    if ((v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor + 8] & 1) == 0 && (v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset + 16] & 1) == 0)
    {
      v4 = vaddq_f64(v14[0], vmulq_n_f64(*&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset], v13 * (1.0 - *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor])));
    }

    if (v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_explodedPosition + 16] & 1) != 0 || (v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor + 8])
    {
      [*&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_dotNode] setPosition_];
      v5 = v13;
      v6 = 1.0 - v13;
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_dotNode] setPosition_];
      v6 = 1.0 - v13;
      v5 = v13;
    }

    v12 = v6;
    v7 = v6 * *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_nonConformedBrightness] + v5 * *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformedBrightness];
    v8 = *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_renderingColor];
    v9 = *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_dotNode];
    v10 = v8;
    FMPFSKSpriteNode.setBrightness(_:with:)(v10, v7);

    v11 = v12 * *&v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style + 104] + v13 * *&v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style + 96];

    [v2 setAlpha_];
  }
}

id FMPFSKPatternFragmentNode.applyScalingFactor(_:)(double a1)
{
  v2 = 1.0;
  v3 = 1.0 - a1;
  v4 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_maxScaleFactor) * a1 + (1.0 - a1) * *(v1 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_minScaleFactor);
  v5 = v1 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style;
  v6 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style + 192);
  if (*(v1 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style + 200))
  {
    v6 = 1.0;
  }

  v7 = *(v5 + 208);
  if (*(v5 + 216))
  {
    v7 = 1.0;
  }

  v8 = *(v5 + 224);
  if (*(v5 + 232))
  {
    v8 = 1.0;
  }

  if (!*(v5 + 248))
  {
    v2 = *(v5 + 240);
  }

  if (*(v1 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_useAlternateScaling) == 1 && (*(v5 + 264) & 1) == 0)
  {
    v9 = *(v5 + 256);
    v10 = 1.0;
    if (v6 > 1.0)
    {
      v6 = v6 * v9;
      if (v7 <= 1.0)
      {
LABEL_13:
        if (v8 <= 1.0)
        {
          goto LABEL_14;
        }

        goto LABEL_25;
      }
    }

    else if (v7 <= 1.0)
    {
      goto LABEL_13;
    }

    v7 = v7 * v9;
    if (v8 <= 1.0)
    {
LABEL_14:
      if (v2 <= 1.0)
      {
LABEL_16:
        v2 = v2 * v10;
        goto LABEL_17;
      }

LABEL_15:
      v10 = *(v5 + 256);
      goto LABEL_16;
    }

LABEL_25:
    v8 = v8 * v9;
    if (v2 <= 1.0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  v11 = v3 * v7 + v2 * a1;
  v12 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_dotNode;
  [*(v1 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_dotNode) setXScale_];
  [*(v1 + v12) setYScale_];
  if (*(v1 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_experienceType) == 1)
  {
    [*(v1 + v12) size];
    v14 = v13;
    [*(v1 + v12) xScale];
    v16 = v14 / v15;
    [*(v1 + v12) size];
    v18 = (v17 - v16) * 0.5;
    v19 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_gimbalNode);
  }

  else
  {
    v19 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_gimbalNode);
    v18 = 0.0;
  }

  return [v19 setPosition_];
}

Swift::Void __swiftcall FMPFSKPatternFragmentNode.updateWithDeltaTime(_:)(Swift::Double a1)
{
  v2 = v1;
  if (v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceScatterOffset] != 1)
  {
    goto LABEL_29;
  }

  v4 = *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = &v4[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s];
  swift_beginAccess();
  v7 = &v4[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o];
  if (v6[35] + *&v4[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40] == 1.79769313e308)
  {
    goto LABEL_29;
  }

  v8 = &v5[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s];
  swift_beginAccess();
  v9 = &v5[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o];
  if (v8[35] + *&v5[OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40] == 1.79769313e308)
  {
    goto LABEL_29;
  }

  v10 = &v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style];
  if (v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style + 136] & 1) != 0 || (v10[120])
  {
    goto LABEL_29;
  }

  v47 = *(v10 + 16);
  v11 = *(v10 + 14);
  FLSpring.step(_:)(a1);
  v4[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready] = 1;
  FLSpring.step(_:)(a1);
  v5[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready] = 1;
  v12 = *v6 + *v7;
  if (vabdd_f64(v6[35] + v7[5], v12) <= *&v4[OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold])
  {
    v12 = v6[35] + v7[5];
  }

  v13 = *v8 + *v9;
  if (vabdd_f64(v8[35] + v9[5], v13) <= *&v5[OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold])
  {
    v13 = v8[35] + v9[5];
  }

  v14 = &v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset];
  *v14 = v12;
  v14[1] = v13;
  *(v14 + 16) = 0;
  if (v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor + 8])
  {
    v15 = v4;
    v16 = v5;
  }

  else
  {
    v17 = *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor];
    v18 = v4;
    v19 = v5;
    FMPFSKPatternFragmentNode.applyConformationFactor(_:)(v17);
  }

  v20 = *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbScatterRandomOffsetFrameCounter];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_60;
  }

  *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbScatterRandomOffsetFrameCounter] = v22;
  if (!v47)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v22 == 0x8000000000000000 && v47 == -1)
  {
    goto LABEL_61;
  }

  if (!(v22 % v47))
  {
    v23 = fmax(v11 * *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralDiskRadius], 1.0);
    v24 = v23 + v23;
    if (COERCE__INT64(fabs(v23 + v23)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v25 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001);
      v26 = v24 * vcvtd_n_f64_u64(v25, 0x35uLL) - v23;
      if (v25 == 0x20000000000000)
      {
        v27 = v23;
      }

      else
      {
        v27 = v26;
      }

      v28 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001);
      v29 = v24 * vcvtd_n_f64_u64(v28, 0x35uLL) - v23;
      if (v28 == 0x20000000000000)
      {
        v30 = v23;
      }

      else
      {
        v30 = v29;
      }

      FMPFSKPatternFragmentNode.setDisturbanceScatterOffset(_:sprung:)(__PAIR128__(*&v30, *&v27), 1);
      goto LABEL_28;
    }

LABEL_62:
    __break(1u);
    return;
  }

LABEL_28:

LABEL_29:
  if (v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceHomingFactor] == 1)
  {
    v31 = *&v1[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring];
    if (v31)
    {
      if (!FMPFFluidSpring.isStable.getter())
      {
        FLSpring.step(_:)(a1);
        *(v31 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
        v32 = (v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
        swift_beginAccess();
        v33 = *v32 + *(v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
        if (vabdd_f64(v32[35] + *(v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v33) <= *(v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
        {
          v33 = v32[35] + *(v31 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
        }

        v34 = &v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor];
        *v34 = v33;
        *(v34 + 8) = 0;
      }
    }
  }

  v35 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_headingSpring;
  v36 = *&v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_headingSpring];
  if (!FMPFFluidSpring.isStable.getter() && *&v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction])
  {
    FLSpring.step(_:)(a1);
    *(v36 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
    v37 = *&v2[v35];
    v38 = (v37 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
    swift_beginAccess();
    v39 = *v38 + *(v37 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
    if (vabdd_f64(v38[35] + *(v37 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40), v39) <= *(v37 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
    {
      v39 = v38[35] + *(v37 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
    }

    *&v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedAbsoluteHeading] = v39;
    [v2 setZRotation_];
  }

  v40 = *&v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_noiseSubSpring];
  FLSpring.step(_:)(a1);
  *(v40 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
  v41 = &v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor];
  if ((v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor + 8] & 1) == 0)
  {
    v42 = *v41;
    if (*v41 <= 0.0 && v42 <= *&v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style + 56])
    {
      FMPFSKPatternFragmentNode.setDotsFreeFromBearing()();
      return;
    }

    if (v42 > 0.0)
    {
      FMPFSKPatternFragmentNode.setDotsBoundToBearing()();
      return;
    }

    if (v42 == 1.0)
    {
      v44 = &v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition];
      v45 = &v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialPeripheralPosition];
      if (v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
      {
        if ((v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialPeripheralPosition + 16] & 1) == 0)
        {
LABEL_58:
          FMPFSKPatternFragmentNode.resetToInitialPeripheralPosition()();
        }
      }

      else
      {
        if (v2[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialPeripheralPosition + 16])
        {
          goto LABEL_58;
        }

        if (*v44 != *v45 || v44[1] != v45[1])
        {
          goto LABEL_58;
        }
      }
    }
  }
}

Swift::Void __swiftcall FMFindingSleepPreventer.disableSleepingForAWhileWhileFinding()()
{
  v1 = v0;
  v27 = type metadata accessor for DispatchWallTime();
  v2 = *(v27 - 8);
  v4 = MEMORY[0x28223BE20](v27, v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x28223BE20](v10, v11);
  v12 = [objc_opt_self() sharedApplication];
  [v12 setIdleTimerDisabled_];

  if (*(v1 + 16))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in FMFindingSleepPreventer.disableSleepingForAWhileWhileFinding();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_7;
  _Block_copy(aBlock);
  v28 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v14 = DispatchWorkItem.init(flags:block:)();

  *(v1 + 16) = v14;

  type metadata accessor for OS_dispatch_queue();
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchWallTime.now()();
  + infix(_:_:)();
  v16 = *(v2 + 8);
  v17 = v6;
  v18 = v27;
  v16(v17, v27);
  OS_dispatch_queue.asyncAfter(wallDeadline:execute:)();

  v16(v9, v18);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.default);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v1;
    aBlock[0] = v23;
    *v22 = 136315138;
    type metadata accessor for FMFindingSleepPreventer();

    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_26CFEB000, v20, v21, "🧭 FMItemDetailContentViewController%s: disabling sleeping timer", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x26D6B2710](v23, -1, -1);
    MEMORY[0x26D6B2710](v22, -1, -1);
  }
}

void closure #1 in FMFindingSleepPreventer.disableSleepingForAWhileWhileFinding()()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = [objc_opt_self() sharedApplication];
    [v0 setIdleTimerDisabled_];

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.default);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      type metadata accessor for FMFindingSleepPreventer();

      v6 = String.init<A>(describing:)();
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_26CFEB000, v2, v3, "🧭 FMItemDetailContentViewController%s: re-enabling sleeping timer", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x26D6B2710](v5, -1, -1);
      MEMORY[0x26D6B2710](v4, -1, -1);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall FMFindingSleepPreventer.reset()()
{
  if (*(v0 + 16))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v0 + 16) = 0;

  v1 = [objc_opt_self() sharedApplication];
  [v1 setIdleTimerDisabled_];
}

uint64_t FMFindingSleepPreventer.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall FMPFView.updateWithDeltaTime(_:)(Swift::Double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v1[OBJC_IVAR____TtC10TVRemoteUI8FMPFView_fmpfdelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v1, ObjectType, v12, a1);
    swift_unknownObjectRelease();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  v15 = objc_opt_self();
  v16 = v1;
  if ([v15 isMainThread])
  {
    closure #1 in FMPFView.updateWithDeltaTime(_:)(v16, a1);
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v21 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = partial apply for closure #1 in FMPFView.updateWithDeltaTime(_:);
    *(v17 + 24) = v14;
    aBlock[4] = partial apply for closure #2 in FMPFRingView.setOpacity(_:sprung:);
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_8;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v21;
    MEMORY[0x26D6B1500](0, v10, v6, v18);
    _Block_release(v18);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }
}

void closure #1 in FMPFView.updateWithDeltaTime(_:)(uint64_t a1, Swift::Double a2)
{
  v4 = a1 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropRGBAColorSprings;
  v5 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropRGBAColorSprings);
  FLSpring.step(_:)(a2);
  *(v5 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
  v6 = *(v4 + 8);
  FLSpring.step(_:)(a2);
  *(v6 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
  v7 = *(v4 + 16);
  FLSpring.step(_:)(a2);
  *(v7 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
  v8 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropSigmaSpring);
  FLSpring.step(_:)(a2);
  *(v8 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
  v9 = *(a1 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_backdropAlphaSpring);
  FLSpring.step(_:)(a2);
  *(v9 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 1;
}

uint64_t protocol witness for FMPFSKPatternNodeDelegate.fragmentsStartedOrbiting() in conformance FMPFView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + OBJC_IVAR____TtC10TVRemoteUI8FMPFView_fmpfdelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(v3, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall UIView.setGlassBackground()()
{
  type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x28223BE20]();
  static _Glass._GlassVariant.regular.getter();
  v0[3] = type metadata accessor for _Glass();
  v0[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v0);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

void @objc UIView.setGlassBackground()(void *a1)
{
  type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x28223BE20]();
  v2 = a1;
  static _Glass._GlassVariant.regular.getter();
  v3[3] = type metadata accessor for _Glass();
  v3[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v3);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

Swift::Void __swiftcall UIView.setFlexibleGlassBackground()()
{
  type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x28223BE20]();
  v0 = type metadata accessor for _Glass();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v5[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static _Glass._GlassVariant.regular.getter();
  _Glass.init(_:smoothness:)();
  v5[3] = v0;
  v5[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v5);
  _Glass.flexible(_:)();
  (*(v1 + 8))(v3, v0);
  UIView._background.setter();
}

void @objc UIView.setFlexibleGlassBackground()(void *a1)
{
  type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x28223BE20]();
  v2 = type metadata accessor for _Glass();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v8[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  static _Glass._GlassVariant.regular.getter();
  _Glass.init(_:smoothness:)();
  v8[3] = v2;
  v8[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v8);
  _Glass.flexible(_:)();
  (*(v3 + 8))(v5, v2);
  UIView._background.setter();
}

Swift::Void __swiftcall UIView.setGlassGroup()()
{
  v0[3] = type metadata accessor for _GlassGroup();
  v0[4] = MEMORY[0x277D74A50];
  __swift_allocate_boxed_opaque_existential_1(v0);
  _GlassGroup.init(foreground:)();
  UIView._background.setter();
}

void @objc UIView.setGlassGroup()(void *a1)
{
  v3[3] = type metadata accessor for _GlassGroup();
  v3[4] = MEMORY[0x277D74A50];
  __swift_allocate_boxed_opaque_existential_1(v3);
  v2 = a1;
  _GlassGroup.init(foreground:)();
  UIView._background.setter();
}

void @objc UIView.removeGlassBackground()(void *a1)
{
  v1 = a1;
  UIView._background.setter();
}

Swift::Void __swiftcall UIView.makeCapsuleCorners()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x28223BE20]();
  v1 = &v3 - v0;
  static _UICornerMaskingConfiguration.capsule.getter();
  v2 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  UIView.cornerMaskingConfiguration.setter();
}

void @objc UIView.makeCapsuleCorners()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x28223BE20]();
  v3 = &v6 - v2;
  v4 = a1;
  static _UICornerMaskingConfiguration.capsule.getter();
  v5 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  UIView.cornerMaskingConfiguration.setter();
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FMPFSKPeripheralDotNodeStyle(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FMPFSKPeripheralDotNodeStyle(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

double FMPFFluidSpring.ftarget.didset()
{
  if (*(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget + 8))
  {
    v1 = 1.79769313e308;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget);
  }

  v2 = v0 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s;
  swift_beginAccess();
  v3 = v0 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o;
  v4 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
  if (*(v2 + 280) + v4 == 1.79769313e308)
  {
    FLSpring.resetImmediately(toValue:)(v1);
    *(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v4 = *(v3 + 40);
  }

  result = v1 - v4;
  *(v2 + 280) = result;
  *(v2 + 240) = result;
  *(v2 + 248) = 0;
  return result;
}

BOOL FMPFFluidSpring.isStable.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
  swift_beginAccess();
  v2 = (v0 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  v3 = *(v0 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
  if (v1[35] + v3 == 1.79769313e308)
  {
    return 1;
  }

  if (*(v0 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) == 1)
  {
    memcpy(__dst, v1, sizeof(__dst));
    if (FLCompoundSpring.isStable()() && vabdd_f64(*v2, v3) <= v2[6])
    {
      return fabs(v2[1]) <= v2[7];
    }
  }

  return 0;
}

id FMPFFluidSpring.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFFluidSpring();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D6B2720](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D6B2720](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = objc_allocWithZone(type metadata accessor for FMPFFluidSpring());
  v12[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready] = 0;
  v13 = &v12[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_initialResponse];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget];
  *v14 = 0;
  v14[8] = 1;
  v15 = FLSpring.init(with:)(0.0);
  v16 = v15;
  if (a6)
  {
    v17 = 0.5;
  }

  else
  {
    v17 = *&a5;
  }

  v18 = (v15 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_initialResponse);
  *v18 = v17;
  *(v18 + 8) = 0;
  v19 = (v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters);
  v20 = *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters);
  v21 = *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters + 8);
  v22 = *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters + 16);
  v23 = *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters + 24);
  *v19 = xmmword_26D0D4470;
  v19[2] = v17;
  v19[3] = 0.0;
  FLSpring.parameters.didset(v20, v21, v22, v23);
  if (a2)
  {
    v24 = 1.79769313e308;
  }

  else
  {
    v24 = *&a1;
  }

  v25 = (v16 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
  swift_beginAccess();
  *v25 = v24;
  v26 = (v16 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  v27 = *(v16 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
  v28 = v25[35] + v27;
  v29 = OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold;
  if (vabdd_f64(v28, v24 + *(v16 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v16 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
  {
    v30 = v24 + *(v16 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  }

  else
  {
    v30 = v25[35] + v27;
  }

  if (v28 == 1.79769313e308)
  {
    FLSpring.resetImmediately(toValue:)(v30);
    *(v16 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v27 = v26[5];
  }

  v31 = v30 - v27;
  v25[35] = v31;
  v25[30] = v31;
  v25[31] = 0.0;
  v32 = *&a3;
  if (a4)
  {
    v32 = 0.0;
  }

  *(v16 + v29) = v32;
  v25[44] = v32;
  v26[6] = v32;
  *(v16 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableVelocityThreshold) = 0x3F847AE147AE147BLL;
  v25[45] = 0.01;
  v26[7] = 0.01;
  return v16;
}

void *specialized static FMPFFluidSpring.randomSpringWith(initialValue:randomFactor:stableValueThreshold:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = objc_allocWithZone(type metadata accessor for FMPFFluidSpring());
  v12[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready] = 0;
  v13 = &v12[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_initialResponse];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget];
  *v14 = 0;
  v14[8] = 1;
  v15 = FLSpring.init(with:)(0.0);
  if (a4)
  {
    v16 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
    v17 = (vcvtd_n_f64_u64(v16, 0x35uLL) * 100.0 + 0.0) / 100.0;
    if (v16 == 0x20000000000000)
    {
      v17 = 1.0;
    }
  }

  else
  {
    v17 = *&a3;
  }

  v18 = v17 + 1.0 - v17 + 1.0 - v17;
  v19 = (v15 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_initialResponse);
  *v19 = v18;
  *(v19 + 8) = 0;
  v20 = (v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters);
  v21 = *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters);
  v22 = *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters + 8);
  v23 = *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters + 16);
  v24 = *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters + 24);
  *v20 = xmmword_26D0D4470;
  v20[2] = v18;
  v20[3] = 0.0;
  FLSpring.parameters.didset(v21, v22, v23, v24);
  if (a2)
  {
    v25 = 1.79769313e308;
  }

  else
  {
    v25 = *&a1;
  }

  v26 = (v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
  swift_beginAccess();
  *v26 = v25;
  v27 = (v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  v28 = *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
  v29 = v26[35] + v28;
  v30 = OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold;
  if (vabdd_f64(v29, v25 + *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
  {
    v31 = v25 + *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  }

  else
  {
    v31 = v26[35] + v28;
  }

  if (v29 == 1.79769313e308)
  {
    FLSpring.resetImmediately(toValue:)(v31);
    *(v15 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v28 = v27[5];
  }

  v32 = v31 - v28;
  v26[35] = v32;
  v26[30] = v32;
  v26[31] = 0.0;
  v33 = *&a5;
  if (a6)
  {
    v33 = 0.0;
  }

  *(v15 + v30) = v33;
  v26[44] = v33;
  v27[6] = v33;
  *(v15 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableVelocityThreshold) = 0x3F847AE147AE147BLL;
  v26[45] = 0.01;
  v27[7] = 0.01;
  return v15;
}

void *specialized static FMPFFluidSpring.lazySpringWith(initialValue:stableValueThreshold:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, __n128 a6)
{
  v11 = objc_allocWithZone(type metadata accessor for FMPFFluidSpring());
  v11[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready] = 0;
  v12 = &v11[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_initialResponse];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v11[OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ftarget];
  *v13 = 0;
  v13[8] = 1;
  v14 = FLSpring.init(with:)(0.0);
  v15 = v14 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_initialResponse;
  *v15 = a5;
  v15[8] = 0;
  v16 = (v14 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters);
  v17 = *(v14 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters);
  v18 = *(v14 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters + 8);
  v19 = *(v14 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters + 16);
  v20 = *(v14 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_parameters + 24);
  *v16 = xmmword_26D0D4470;
  v16[1] = a6;
  FLSpring.parameters.didset(v17, v18, v19, v20);
  if (a2)
  {
    v21 = 1.79769313e308;
  }

  else
  {
    v21 = *&a1;
  }

  v22 = (v14 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__s);
  swift_beginAccess();
  *v22 = v21;
  v23 = (v14 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  v24 = *(v14 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o + 40);
  v25 = v22[35] + v24;
  v26 = OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold;
  if (vabdd_f64(v25, v21 + *(v14 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o)) > *(v14 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableValueThreshold))
  {
    v27 = v21 + *(v14 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring__o);
  }

  else
  {
    v27 = v22[35] + v24;
  }

  if (v25 == 1.79769313e308)
  {
    FLSpring.resetImmediately(toValue:)(v27);
    *(v14 + OBJC_IVAR____TtC10TVRemoteUI15FMPFFluidSpring_ready) = 0;
    v24 = v23[5];
  }

  v28 = v27 - v24;
  v22[35] = v28;
  v22[30] = v28;
  v22[31] = 0.0;
  v29 = *&a3;
  if (a4)
  {
    v29 = 0.0;
  }

  *(v14 + v26) = v29;
  v22[44] = v29;
  v23[6] = v29;
  *(v14 + OBJC_IVAR____TtC10TVRemoteUI8FLSpring_stableVelocityThreshold) = 0x3F847AE147AE147BLL;
  v22[45] = 0.01;
  v23[7] = 0.01;
  return v14;
}

id @objc NSUserDefaults.fmpfDebugMode.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = a1;
  v9 = [v7 sharedInstance];
  v10 = [v9 isInternalBuild];

  if (v10)
  {
    v11 = MEMORY[0x26D6B1210](a3, a4);
    v12 = [v8 BOOLForKey_];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void @objc NSUserDefaults.fmpfDebugMode.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_opt_self();
  v12 = a1;
  v9 = [v8 sharedInstance];
  [v9 isInternalBuild];

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v11 = MEMORY[0x26D6B1210](a4, a5);
  [v12 setValue:isa forKey:v11];
}

id @objc NSUserDefaults.fmpfDebugModeWithoutBearing.getter(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 sharedInstance];
  v5 = [v4 isInternalBuild];

  if (v5)
  {
    v6 = MEMORY[0x26D6B1210](0xD000000000000017, 0x800000026D0DD000);
    v7 = [v3 BOOLForKey_];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void @objc NSUserDefaults.fmpfDebugModeWithoutBearing.setter(void *a1)
{
  v2 = objc_opt_self();
  v6 = a1;
  v3 = [v2 sharedInstance];
  [v3 isInternalBuild];

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v5 = MEMORY[0x26D6B1210](0xD000000000000017, 0x800000026D0DD000);
  [v6 setValue:isa forKey:v5];
}

id @objc NSUserDefaults.fmpfArrowDotCount.getter(void *a1)
{
  v1 = a1;
  v2 = NSUserDefaults.fmpfArrowDotCount.getter();

  return v2;
}

id NSUserDefaults.fmpfArrowDotCount.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (one-time initialization token for r1OrBT != -1)
  {
    swift_once();
  }

  v3 = static FMPFSKPatternNodeConfig.r1OrBT;
  if (v2)
  {
    v4 = MEMORY[0x26D6B1210](0x746F44776F727261, 0xED0000746E756F43);
    v5 = [v0 valueForKey_];

    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined destroy of Any?(v8);
      v6 = MEMORY[0x26D6B1210](0x746F44776F727261, 0xED0000746E756F43);
      v3 = [v0 integerForKey_];
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      outlined destroy of Any?(v8);
    }
  }

  return v3;
}

void @objc NSUserDefaults.fmpfArrowDotCount.setter(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 sharedInstance];
  [v4 isInternalBuild];

  if (one-time initialization token for r1OrBT != -1)
  {
    swift_once();
  }

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v6 = MEMORY[0x26D6B1210](0x746F44776F727261, 0xED0000746E756F43);
  [v3 setValue:isa forKey:v6];
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMPFSKPatternNode.readjustFragmentNodesComposedPositionForTape(_:)(uint64_t result, char a2)
{
  if (v2[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_experienceType] != 1 || (v2[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_config + 48] & 1) != 0 || *&v2[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_config + 40] < 1)
  {
    return result;
  }

  v169 = &v2[OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_config];
  LOBYTE(v191) = a2;
  v190 = *&result;
  v4 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v189[0] = v2;
  v5 = *&v2[v4];
  v192[0] = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_232;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v8 = 0;
  while ((v5 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D6B1680](v8, v5);
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_18;
    }

LABEL_13:
    if (*(v9 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 16) & 1) != 0 || (*(v9 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v8;
    if (v10 == v6)
    {
      goto LABEL_19;
    }
  }

  if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_217;
  }

  v9 = *(v5 + 8 * v8 + 32);
  v10 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_13;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  v11 = v192[0];
  v7 = MEMORY[0x277D84F90];
LABEL_21:

  v192[0] = specialized Array._copyToContiguousArray()(v12);
  v5 = 0;
  specialized MutableCollection<>.sort(by:)(v192, &OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition);
  v13 = v192[0];
  v192[0] = v7;
  v14 = (v13 >> 62) & 1;
  if (v13 < 0)
  {
    LODWORD(v14) = 1;
  }

  v173 = v14;
  if (v14 == 1)
  {
    v15 = MEMORY[0x26D6B1780](v13);
    if (v15)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v15 = *(v13 + 16);
    if (v15)
    {
LABEL_25:
      v16 = 0;
      do
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x26D6B1680](v16, v13);
        }

        else
        {
          if (v16 >= *(v13 + 16))
          {
            goto LABEL_219;
          }

          v17 = *(v13 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_218;
        }

        if ([v17 isHidden])
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v16;
      }

      while (v19 != v15);
      v7 = v192[0];
    }
  }

  v20 = v7 < 0 || (v7 & 0x4000000000000000) != 0;
  if (!v20)
  {
    if (*(v7 + 16))
    {
      goto LABEL_41;
    }

LABEL_239:
    v192[0] = 0;
    v192[1] = 0xE000000000000000;
    v7 = v192;
    _StringGuts.grow(_:)(66);
    MEMORY[0x26D6B12B0](0x1000000000000016, 0x800000026D0DD070);
    v24 = [v189[0] description];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v143;

    MEMORY[0x26D6B12B0](v5, v23);

    MEMORY[0x26D6B12B0](0xD00000000000002ALL, 0x800000026D0DD090);
    LODWORD(v167) = 0;
    v166 = 377;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_240:
    v144 = MEMORY[0x26D6B1780](v11);
    v26 = v144 - v23;
    if (!__OFSUB__(v144, v23))
    {
      goto LABEL_54;
    }

LABEL_242:
    __break(1u);
    goto LABEL_243;
  }

  if (!MEMORY[0x26D6B1780](v7))
  {
    goto LABEL_239;
  }

LABEL_41:
  if (v173)
  {
    v21 = MEMORY[0x26D6B1780](v13);
  }

  else
  {
    v21 = *(v13 + 16);
  }

  v22 = v21;
  if (v191)
  {
    v3 = v22 * 0.5;
    if (!v20)
    {
      goto LABEL_46;
    }

LABEL_48:
    v23 = MEMORY[0x26D6B1780](v7);
  }

  else
  {
    v3 = (1.0 - v190) * v22;
    if (v20)
    {
      goto LABEL_48;
    }

LABEL_46:
    v23 = *(v7 + 16);
  }

  LODWORD(v24) = v11 < 0 || (v11 & 0x4000000000000000) != 0;
  if (v24 == 1)
  {
    goto LABEL_240;
  }

  v25 = *(v11 + 16);
  v26 = v25 - v23;
  if (__OFSUB__(v25, v23))
  {
    goto LABEL_242;
  }

LABEL_54:
  v27 = v3 - (v23 / 2);
  if (COERCE__INT64(fabs(v27)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
    goto LABEL_247;
  }

  v180 = v7;
  v171 = v15;
  if (v27 < 0)
  {
    if (v26 <= 0)
    {
      goto LABEL_60;
    }

    v26 = 0;
    if ((v24 & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_61:
    v28 = v23;
    v175 = v26;
    v29 = MEMORY[0x26D6B1780](v11);
  }

  else
  {
    if (v26 >= v27)
    {
      v26 = v27;
    }

LABEL_60:
    if (v24)
    {
      goto LABEL_61;
    }

LABEL_64:
    v28 = v23;
    v175 = v26;
    v29 = *(v11 + 16);
  }

  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  while (v29 != v30)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x26D6B1680](v30, v11);
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_215;
      }
    }

    else
    {
      if (v30 >= *(v11 + 16))
      {
        goto LABEL_216;
      }

      v32 = *(v11 + 8 * v30 + 32);
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        if (v5 < 0)
        {
          v142 = v5;
        }

        else
        {
          v142 = v5 & 0xFFFFFFFFFFFFFF8;
        }

        v6 = MEMORY[0x26D6B1780](v142);
        goto LABEL_6;
      }
    }

    v191 = *&v32[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition];
    v33 = v32[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 16];

    ++v30;
    if ((v33 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      }

      v35 = *(v31 + 2);
      v34 = *(v31 + 3);
      v36 = v191;
      if (v35 >= v34 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v31);
        v36 = v191;
        v31 = v37;
      }

      *(v31 + 2) = v35 + 1;
      *&v31[16 * v35 + 32] = v36;
      v30 = v23;
    }
  }

  v192[0] = v31;

  specialized MutableCollection<>.sort(by:)(v192, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
  v168 = v5;
  if (v5)
  {
    goto LABEL_254;
  }

  v183 = v13;

  if (v28 < 0)
  {
    goto LABEL_246;
  }

  v182 = v192[0];
  v38 = v175;
  v179 = v28;
  if (v28)
  {
    v39 = 0;
    v177 = v192[0] + 32;
    v3 = 3.14159265;
    v170 = 0xC01921FB54442D18;
    do
    {
      if (v38 < 0)
      {
        goto LABEL_220;
      }

      if (v39 + v38 >= *(v182 + 16))
      {
        goto LABEL_221;
      }

      v191 = *(v177 + 16 * (v39 + v38));
      if ((v180 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x26D6B1680](v39, v180);
      }

      else
      {
        if (v39 >= *(v180 + 16))
        {
          goto LABEL_229;
        }

        v42 = *(v180 + 32 + 8 * v39);
      }

      v43 = v42;
      v44 = &v42[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition];
      *v44 = v191;
      *(v44 + 16) = 0;
      v45 = &v42[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition];
      if (v42[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
      {
        v46 = 1;
        v47 = *v45;
      }

      else
      {
        v48 = *v45;
        if (v42[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle])
        {
          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v38 = v175;
          if ((v49 & 1) == 0)
          {
            v46 = v45[16];
            v47 = *v45;
            goto LABEL_100;
          }
        }

        else
        {
        }

        *&v191 = *&v43[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius];
        v51 = *&v43[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style];
        specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v50, 0.0, 3.14159265);
        v53 = v52 * 0.25;
        v54 = 2.0;
        if (v48 > 0.0)
        {
          v54 = -2.0;
        }

        v56 = __sincos_stret(v51 * (v54 * v53) + 1.57079633);
        v55.f64[0] = v56.__cosval;
        v46 = 0;
        v55.f64[1] = v56.__sinval;
        v47 = vmulq_n_f64(v55, *&v191);
      }

LABEL_100:
      v5 = &v43[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_intermediatePosition];
      *v5 = v47;
      *(v5 + 16) = v46;
      v57 = 0.0;
      if ((v44[2] & 1) == 0 && (v46 & 1) == 0)
      {
        v187 = v47;
        *v189 = *v44;
        v60 = v44[1];
        v61 = FMPFSKPatternFragmentNode.controlPoint(with:trackOffset:)(*v44);
        v63 = v62;
        v64 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle;
        *&v65.f64[0] = v61;
        v65.f64[1] = v66;
        v185 = v65;
        v59 = 0.0;
        v67 = *v189;
        v68 = 1;
        while (1)
        {
          *&v191 = vcvtd_n_f64_u64(v68, 4uLL);
          v190 = 1.0 - *&v191;
          if (v43[v64])
          {
            v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v70)
            {
              goto LABEL_112;
            }

            if (!v43[v64] || v43[v64] != 1)
            {
              v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v71 & 1) == 0)
              {
                goto LABEL_104;
              }

              goto LABEL_112;
            }
          }

LABEL_112:
          if ((v63 & 1) == 0)
          {
            v69 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v185, *&v191), vmulq_n_f64(*v189, v190)), v190), vmulq_n_f64(vaddq_f64(vmulq_n_f64(v187, *&v191), vmulq_n_f64(v185, v190)), *&v191));
            goto LABEL_105;
          }

LABEL_104:
          v69 = vaddq_f64(vmulq_n_f64(v187, *&v191), vmulq_n_f64(*v189, v190));
LABEL_105:
          v59 = v59 + sqrt((v69.f64[0] - v67) * (v69.f64[0] - v67) + (v69.f64[1] - v60) * (v69.f64[1] - v60));
          ++v68;
          v60 = v69.f64[1];
          v67 = v69.f64[0];
          if (v68 == 17)
          {
            v58 = 0;
            v38 = v175;
            goto LABEL_115;
          }
        }
      }

      v58 = 1;
      v59 = 0.0;
LABEL_115:
      v72 = &v43[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength];
      *v72 = v59;
      *(v72 + 8) = v58;
      if (*(v5 + 16) & 1) != 0 || (v45[16])
      {
        v40 = 1;
      }

      else
      {
        v73 = *v45;
        v74 = *(v45 + 1);
        v76 = *v5;
        v75 = *(v5 + 8);
        v77 = hypot(*v45, v74);
        v78 = atan2(v75, v76);
        v79 = atan2(v74, v73);
        v80 = v79 - v78;
        if (vabdd_f64(v79, v78) > 3.14159265)
        {
          if (v78 >= 0.0 || v79 < 0.0)
          {
            if (v79 < 0.0 && v78 >= 0.0)
            {
              v80 = v80 + 6.28318531;
            }
          }

          else
          {
            v80 = v80 + -6.28318531;
          }
        }

        v40 = 0;
        v57 = fabs((v77 + v77) * v80);
      }

      ++v39;
      v41 = &v43[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_arcLength];
      *v41 = v57;
      *(v41 + 8) = v40;
    }

    while (v39 != v179);
  }

  v82 = MEMORY[0x277D84F90];
  v192[0] = MEMORY[0x277D84F90];
  if (v171)
  {
    v83 = 0;
    v84 = v183;
    do
    {
      if ((v183 & 0xC000000000000001) != 0)
      {
        v85 = MEMORY[0x26D6B1680](v83, v84);
      }

      else
      {
        if (v83 >= *(v84 + 16))
        {
          goto LABEL_223;
        }

        v85 = *(v84 + 8 * v83 + 32);
      }

      v5 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_222;
      }

      if (v85[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
      {
        goto LABEL_252;
      }

      if (*&v85[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 8] >= 0.0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v83;
      v84 = v183;
    }

    while (v5 != v171);
    v86 = v192[0];
    v38 = v175;
  }

  else
  {
    v86 = MEMORY[0x277D84F90];
    v84 = v183;
  }

  v192[0] = specialized Array._copyToContiguousArray()(v86);
  specialized MutableCollection<>.shuffle<A>(using:)();
  v87 = v192[0];
  v192[0] = v82;
  if (v173)
  {
    v88 = MEMORY[0x26D6B1780](v84);
    if (v88)
    {
      goto LABEL_143;
    }

LABEL_156:
    v92 = MEMORY[0x277D84F90];
    goto LABEL_157;
  }

  v88 = *(v84 + 16);
  if (!v88)
  {
    goto LABEL_156;
  }

LABEL_143:
  v89 = 0;
  v5 = v84 & 0xC000000000000001;
  do
  {
    if (v5)
    {
      v90 = MEMORY[0x26D6B1680](v89, v84);
    }

    else
    {
      if (v89 >= *(v84 + 16))
      {
        goto LABEL_225;
      }

      v90 = *(v84 + 8 * v89 + 32);
    }

    v91 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      goto LABEL_224;
    }

    if (v90[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
    {
      goto LABEL_253;
    }

    if (*&v90[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 8] < 0.0)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v89;
    v84 = v183;
  }

  while (v91 != v88);
  v92 = v192[0];
  v38 = v175;
LABEL_157:

  v192[0] = specialized Array._copyToContiguousArray()(v92);
  specialized MutableCollection<>.shuffle<A>(using:)();
  v93 = v192[0];
  v192[0] = v87;
  specialized Array.append<A>(contentsOf:)(v93, specialized Array._copyContents(initializing:));
  v23 = v192[0];
  v170 = v192[0];
  if (v192[0] >> 62)
  {
LABEL_247:
    if (v23 < 0)
    {
      v145 = v23;
    }

    else
    {
      v145 = v23 & 0xFFFFFFFFFFFFFF8;
    }

    v146 = MEMORY[0x26D6B1780](v145);
    if ((v146 & 0x8000000000000000) == 0)
    {
      v5 = v146;
      v38 = v175;
      v23 = v170;
      if (v146)
      {
        goto LABEL_159;
      }

      goto LABEL_256;
    }

    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    v147 = v168;
LABEL_293:

    *&result = COERCE_DOUBLE();
    __break(1u);
    return result;
  }

  v5 = *((v192[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_159:
    v94 = 0;
    v95 = 0;
    v184 = v23 & 0xC000000000000001;
    v172 = v23 + 32;
    v174 = v23 & 0xFFFFFFFFFFFFFF8;
    v3 = 3.14159265;
    v96 = __OFADD__(v38, v179);
    v179 += v38;
    v97 = v96;
    v178 = v97;
    v176 = v5;
    do
    {
      if (v184)
      {
        v98 = MEMORY[0x26D6B1680](v95, v23);
      }

      else
      {
        if (v95 >= *(v174 + 16))
        {
          goto LABEL_230;
        }

        v98 = *(v172 + 8 * v95);
      }

      v99 = v98;
      if (![v98 isHidden])
      {

        goto LABEL_164;
      }

      if (v94 == v38)
      {
        v100 = v179;
      }

      else
      {
        v100 = v94;
      }

      if (((v94 == v38) & v178) != 0)
      {
        goto LABEL_231;
      }

      if ((v100 & 0x8000000000000000) != 0)
      {
        goto LABEL_226;
      }

      if (v100 >= *(v182 + 16))
      {
        goto LABEL_227;
      }

      v101 = &v99[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition];
      *v101 = *(v182 + 32 + 16 * v100);
      *(v101 + 16) = 0;
      v102 = &v99[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition];
      v181 = &v99[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition];
      if (v99[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16])
      {
        v103 = 1;
        v104 = *v102;
      }

      else
      {
        v105 = v102->f64[0];
        if (v99[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle])
        {
          v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v38 = v175;
          if ((v106 & 1) == 0)
          {
            v103 = v181[16];
            v104 = *v181;
            goto LABEL_185;
          }
        }

        else
        {
        }

        *&v191 = *&v99[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius];
        v108 = *&v99[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style];
        specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v107, 0.0, 3.14159265);
        v110 = v109 * 0.25;
        v111 = 2.0;
        if (v105 > 0.0)
        {
          v111 = -2.0;
        }

        v113 = __sincos_stret(v108 * (v111 * v110) + 1.57079633);
        v112.f64[0] = v113.__cosval;
        v103 = 0;
        v112.f64[1] = v113.__sinval;
        v104 = vmulq_n_f64(v112, *&v191);
      }

LABEL_185:
      v114 = &v99[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_intermediatePosition];
      *v114 = v104;
      v114[16] = v103;
      v115 = 0.0;
      if ((v101[2] & 1) == 0 && (v103 & 1) == 0)
      {
        v188 = v104;
        *v189 = *v101;
        v118 = v101[1];
        v119 = FMPFSKPatternFragmentNode.controlPoint(with:trackOffset:)(*v101);
        v121 = v120;
        v122 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle;
        *&v123.f64[0] = v119;
        v123.f64[1] = v124;
        v186 = v123;
        v117 = 0.0;
        v125 = *v189;
        v126 = 1;
        while (1)
        {
          *&v191 = vcvtd_n_f64_u64(v126, 4uLL);
          v190 = 1.0 - *&v191;
          if (v99[v122])
          {
            v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v128)
            {
              goto LABEL_197;
            }

            if (!v99[v122] || v99[v122] != 1)
            {
              v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v129 & 1) == 0)
              {
                goto LABEL_189;
              }

              goto LABEL_197;
            }
          }

LABEL_197:
          if ((v121 & 1) == 0)
          {
            v127 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v186, *&v191), vmulq_n_f64(*v189, v190)), v190), vmulq_n_f64(vaddq_f64(vmulq_n_f64(v188, *&v191), vmulq_n_f64(v186, v190)), *&v191));
            goto LABEL_190;
          }

LABEL_189:
          v127 = vaddq_f64(vmulq_n_f64(v188, *&v191), vmulq_n_f64(*v189, v190));
LABEL_190:
          v117 = v117 + sqrt((v127.f64[0] - v125) * (v127.f64[0] - v125) + (v127.f64[1] - v118) * (v127.f64[1] - v118));
          ++v126;
          v118 = v127.f64[1];
          v125 = v127.f64[0];
          if (v126 == 17)
          {
            v116 = 0;
            v38 = v175;
            v23 = v170;
            goto LABEL_200;
          }
        }
      }

      v116 = 1;
      v117 = 0.0;
LABEL_200:
      v130 = &v99[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength];
      *v130 = v117;
      *(v130 + 8) = v116;
      v5 = v176;
      if (v114[16] & 1) != 0 || (v181[16])
      {
        v131 = 1;
      }

      else
      {
        v132 = *v181;
        v133 = *(v181 + 1);
        v135 = *v114;
        v134 = *(v114 + 1);
        v136 = hypot(*v181, v133);
        v137 = atan2(v134, v135);
        v138 = atan2(v133, v132);
        v139 = v138 - v137;
        if (vabdd_f64(v138, v137) > 3.14159265)
        {
          if (v137 >= 0.0 || v138 < 0.0)
          {
            if (v138 < 0.0 && v137 >= 0.0)
            {
              v139 = v139 + 6.28318531;
            }
          }

          else
          {
            v139 = v139 + -6.28318531;
          }
        }

        v131 = 0;
        v115 = fabs((v136 + v136) * v139);
      }

      v141 = &v99[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_arcLength];
      *v141 = v115;
      *(v141 + 8) = v131;

      v94 = v100 + 1;
      if (__OFADD__(v100, 1))
      {
        goto LABEL_228;
      }

LABEL_164:
      ++v95;
    }

    while (v95 != v5);
  }

LABEL_256:

  if (v169[16] == 1)
  {

    v148 = v168;
  }

  else
  {
    v149 = *(v169 + 1);

    v192[0] = specialized Array._copyToContiguousArray()(v150);
    v148 = v168;
    specialized MutableCollection<>.sort(by:)(v192, &OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition);
    if (v168)
    {
LABEL_292:
      v147 = v148;
      goto LABEL_293;
    }

    v152 = v192[0];
    if (v192[0] < 0 || (v192[0] & 0x4000000000000000) != 0)
    {
      v151 = MEMORY[0x26D6B1780](v192[0]);
      if ((v151 & 0x8000000000000000) == 0)
      {
        goto LABEL_273;
      }

      __break(1u);
      goto LABEL_271;
    }

    v153 = *(v192[0] + 16);
    if (v153)
    {
      do
      {
        v96 = __OFADD__(v149++, 1);
        if (v96)
        {
LABEL_271:
          __break(1u);
        }

        else if (v149)
        {
          v154 = 0;
          do
          {
            if ((v152 & 0xC000000000000001) != 0)
            {
              v155 = MEMORY[0x26D6B1680](v154, v152);
            }

            else
            {
              v155 = *(v152 + 8 * v154 + 32);
            }

            v155[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_useAlternateScaling] = v154 % v149 == 0;

            ++v154;
          }

          while (v153 != v154);
          break;
        }

        __break(1u);
LABEL_273:
        v153 = v151;
      }

      while (v151);
    }
  }

  v192[0] = specialized Array._copyToContiguousArray()(v156);
  specialized MutableCollection<>.sort(by:)(v192);
  if (v148)
  {
    goto LABEL_292;
  }

  v157 = v192[0];
  if (v192[0] < 0 || (v192[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_289;
  }

  v158 = *(v192[0] + 16);
  for (i = v158; v158; v158 = MEMORY[0x26D6B1780](v157))
  {
    v160 = 0;
    v161 = 0.0;
    v162 = 1.0 / i;
    while ((v157 & 0xC000000000000001) != 0)
    {
      v163 = MEMORY[0x26D6B1680](v160, v157);
      v164 = v160 + 1;
      if (__OFADD__(v160, 1))
      {
        goto LABEL_287;
      }

LABEL_283:
      v165 = &v163[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationTimingFunction];
      *v165 = 0;
      *(v165 + 8) = vmulq_n_f64(xmmword_26D0D44C0, 1.0 - v161);
      *(v165 + 3) = 0x3FF0000000000000;
      v165[32] = 0;

      v161 = v162 + v161;
      ++v160;
      if (v164 == v158)
      {
        goto LABEL_290;
      }
    }

    if (v160 >= *(v157 + 16))
    {
      goto LABEL_288;
    }

    v163 = *(v157 + 8 * v160 + 32);
    v164 = v160 + 1;
    if (!__OFADD__(v160, 1))
    {
      goto LABEL_283;
    }

LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    i = MEMORY[0x26D6B1780](v157);
  }

LABEL_290:
  *&result = COERCE_DOUBLE();
  return result;
}

Swift::Void __swiftcall FMPFSKPatternNode.readjustFragmentNodesPeripheralPositionForTape()()
{
  [*(v0 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_gimbalNode) position];
  *&v2 = COERCE_DOUBLE(FMPFSKPatternNode.visibleTrackOffsets(center:)(-v1));
  if ((v4 & 1) == 0)
  {
    v5 = *&v2;
    v6 = v3;
    v7 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes;
    swift_beginAccess();
    v8 = *(v0 + v7);
    if (v8 >> 62)
    {
      goto LABEL_64;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x26D6B1780](v77))
    {
      v10 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style;
      v85 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_peripheralDiskRadius;

      if (!i)
      {
        break;
      }

      v11 = 0;
      v12 = (v5 + *&v6) * 0.5;
      v5 = 4.45014772e-308;
      v84 = v0 + v10;
      v13 = v8 & 0xC000000000000001;
      v6 = v8 & 0xFFFFFFFFFFFFFF8;
      v86 = v8 + 32;
      v14 = -0.5;
      v15 = 0.5;
      v81 = i;
      v82 = v8 & 0xFFFFFFFFFFFFFF8;
      v83 = v8 & 0xC000000000000001;
      v79 = v8;
      v80 = v0;
      v78 = v12;
      while (1)
      {
        if (v13)
        {
          v18 = MEMORY[0x26D6B1680](v11, v8);
        }

        else
        {
          if (v11 >= *(v6 + 16))
          {
            goto LABEL_62;
          }

          v18 = *(v86 + 8 * v11);
        }

        v19 = v18;
        if (__OFADD__(v11++, 1))
        {
          break;
        }

        if (([v18 isHidden] & 1) == 0)
        {
          v21 = &v19[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition];
          if ((v19[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 16] & 1) == 0)
          {
            if (v12 <= v21[1])
            {
              do
              {
                v90 = 0;
                v22 = MEMORY[0x26D6B2720](&v90, 8);
              }

              while (0x20000000000001 * v90 < 0x1FFFFFFFFFF801);
              v26 = (v90 * 0x20000000000001uLL) >> 64;
              v25 = 3.14159265;
              if (v26 != 0x20000000000000)
              {
                v25 = vcvtd_n_f64_u64(v26, 0x35uLL) * 3.14159265 + 0.0;
              }
            }

            else
            {
              do
              {
                v90 = 0;
                v22 = MEMORY[0x26D6B2720](&v90, 8);
              }

              while (0x20000000000001 * v90 < 0x1FFFFFFFFFF801);
              v23 = (v90 * 0x20000000000001uLL) >> 64;
              v24 = -(vcvtd_n_f64_u64(v23, 0x35uLL) * 3.14159265 + 2.22044605e-16);
              if (v23 == 0x20000000000000)
              {
                v25 = -3.14159265;
              }

              else
              {
                v25 = v24;
              }
            }

            v27 = *(v84 + 72);
            v28 = v27 * v14;
            v29 = v27 * v15;
            if (v28 > v29)
            {
              goto LABEL_63;
            }

            specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v22, v28, v29);
            v31 = *(v0 + v85) * (1.0 - v30);
            v32 = __sincos_stret(v25);
            v33 = v32.__cosval * v31;
            v34 = &v19[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition];
            *v34 = v32.__cosval * v31;
            v34[1] = v32.__sinval * v31;
            *(v34 + 16) = 0;
            v35 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle;
            if (v19[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle])
            {
              v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

              i = v81;
              if ((v36 & 1) == 0)
              {
                v38 = *v34;
                v39 = v34[1];
                v40 = *(v34 + 16);
                goto LABEL_31;
              }
            }

            else
            {
            }

            v41 = *&v19[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius];
            v42 = *&v19[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style];
            specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v37, 0.0, 3.14159265);
            v44 = v43 * 0.25;
            v45 = 2.0;
            if (v33 > 0.0)
            {
              v45 = -2.0;
            }

            v46 = __sincos_stret(v42 * (v45 * v44) + 1.57079633);
            v40 = 0;
            v38 = v41 * v46.__cosval;
            v39 = v41 * v46.__sinval;
LABEL_31:
            v47 = &v19[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_intermediatePosition];
            *v47 = v38;
            *(v47 + 1) = v39;
            v47[16] = v40;
            v48 = 0.0;
            if (v21[2] & 1) != 0 || (v40)
            {
              v49 = 1;
              v50 = 0.0;
LABEL_46:
              v67 = &v19[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength];
              *v67 = v50;
              *(v67 + 8) = v49;
              if (v47[16] & 1) != 0 || (v34[2])
              {
                v16 = 1;
                v5 = 4.45014772e-308;
                v6 = v82;
                v13 = v83;
              }

              else
              {
                v68 = *v34;
                v69 = v34[1];
                v71 = *v47;
                v70 = *(v47 + 1);
                v72 = hypot(*v34, v69);
                v73 = atan2(v70, v71);
                v74 = atan2(v69, v68);
                v75 = v74 - v73;
                if (vabdd_f64(v74, v73) > 3.14159265)
                {
                  if (v73 >= 0.0 || v74 < 0.0)
                  {
                    if (v74 < 0.0 && v73 >= 0.0)
                    {
                      v75 = v75 + 6.28318531;
                    }
                  }

                  else
                  {
                    v75 = v75 + -6.28318531;
                  }
                }

                v5 = 4.45014772e-308;
                v6 = v82;
                v13 = v83;
                v14 = -0.5;
                v15 = 0.5;
                v16 = 0;
                v48 = fabs((v72 + v72) * v75);
              }

              v17 = &v19[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_arcLength];
              *v17 = v48;
              *(v17 + 8) = v16;
              goto LABEL_8;
            }

            v88 = v39;
            v89 = v38;
            v52 = *v21;
            v51 = v21[1];
            *&v53 = COERCE_DOUBLE(FMPFSKPatternFragmentNode.controlPoint(with:trackOffset:)(*v21));
            v55 = v54;
            v87 = *&v53;
            v57 = v56;
            v50 = 0.0;
            v58 = v51;
            v59 = v52;
            v60 = 1;
            while (2)
            {
              v63 = vcvtd_n_f64_u64(v60, 4uLL);
              v64 = 1.0 - v63;
              if (!v19[v35])
              {
LABEL_41:

                goto LABEL_43;
              }

              v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v65)
              {
                goto LABEL_43;
              }

              if (v19[v35] && v19[v35] == 1)
              {
                goto LABEL_41;
              }

              v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v66)
              {
LABEL_43:
                if ((v55 & 1) == 0)
                {
                  v61 = v64 * (v63 * v87 + v59 * v64) + v63 * (v89 * v63 + v64 * v87);
                  v62 = v64 * (v63 * v57 + v58 * v64) + v63 * (v88 * v63 + v64 * v57);
LABEL_36:
                  v50 = v50 + sqrt((v61 - v52) * (v61 - v52) + (v62 - v51) * (v62 - v51));
                  ++v60;
                  v51 = v62;
                  v52 = v61;
                  if (v60 == 17)
                  {
                    v49 = 0;
                    v8 = v79;
                    v0 = v80;
                    i = v81;
                    v12 = v78;
                    v14 = -0.5;
                    v15 = 0.5;
                    v48 = 0.0;
                    goto LABEL_46;
                  }

                  continue;
                }
              }

              break;
            }

            v61 = v89 * v63 + v59 * v64;
            v62 = v88 * v63 + v58 * v64;
            goto LABEL_36;
          }
        }

LABEL_8:

        if (v11 == i)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      if (v8 < 0)
      {
        v77 = v8;
      }

      else
      {
        v77 = v8 & 0xFFFFFFFFFFFFFF8;
      }
    }

LABEL_59:
  }
}

void FMPFSKPatternNode.setupArrowChildNodes(conformationFactor:)(char *a1, char a2)
{
  v3 = v2;
  v175 = objc_opt_self();
  v5 = [v175 standardUserDefaults];
  v169 = [v5 fmpfDebugMode];

  if (a2)
  {
    a1 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactor);
    v164 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactor + 8);
  }

  else
  {
    v164 = 0;
  }

  v166 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasDebugNode);
  v6 = [v166 children];
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for SKNode);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v161 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_gimbalNode);
  v8 = [v161 children];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v177[3] = v7;
  specialized Array.append<A>(contentsOf:)(v9, specialized Array._copyContents(initializing:));
  v10 = v7;
  v11 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (v12 >> 62)
  {
    goto LABEL_18;
  }

  swift_bridgeObjectRetain_n();
  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  for (i = v12; ; i = _bridgeCocoaArray<A>(_:)())
  {

    v177[0] = v10;
    specialized Array.append<A>(contentsOf:)(i, specialized Array._copyContents(initializing:));
    v14 = v10;
    if (v10 >> 62)
    {
      break;
    }

    v15 = *((v177[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_23;
    }

LABEL_8:
    v16 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x26D6B1680](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v10 = v17;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      [v17 removeFromParent];

      ++v16;
      if (v18 == v15)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
  }

  if (v177[0] < 0)
  {
    v19 = v177[0];
  }

  else
  {
    v19 = v177[0] & 0xFFFFFFFFFFFFFF8;
  }

  v15 = MEMORY[0x26D6B1780](v19);
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_23:

  *(v3 + v11) = MEMORY[0x277D84F90];

  v20 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_sceneSize);
  if (*(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_sceneSize + 8) < v20)
  {
    v20 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_sceneSize + 8);
  }

  v21 = (v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style);
  v22 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style);
  if (*(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style + 8))
  {
    v22 = 1.0;
  }

  v23 = v20 * v22;
  v24 = *(v21 + 2);
  v25 = *(v21 + 3);
  v26 = v20 * v22 - v24;
  v27 = v24 + 2.22044605e-16;
  v157 = (v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_style);
  if (v24 + 2.22044605e-16 <= v20 * v22 * *(v21 + 4))
  {
    v27 = v23 * *(v21 + 4);
  }

  v155 = *(v21 + 2);
  v173 = v27 * 0.5;
  v28 = v27 * 0.5 + v24 * -0.5;
  v29 = 0.0 - v28;
  v172 = v28 / tan(v25);
  v30 = v26 * 0.5 - v172;
  v31 = v28 + 0.0;
  v170 = cos(v25);
  v32 = &unk_279D89000;
  [v161 addChild_];
  v33 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasPatternSpinesNode);
  [v166 addChild_];
  v34 = &unk_279D89000;
  v35 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v35 moveToPoint_];
  [v35 addLineToPoint_];
  [v35 closePath];
  type metadata accessor for FMPFSKShapeNode();
  v149 = v35;
  v36 = [v35 CGPath];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 whiteColor];
  [v40 setStrokeColor_];

  [v40 setLineCap_];
  v42 = one-time initialization token for default;
  v43 = v40;
  if (v42 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v44 = *&qword_2804DD028;
    [v43 setAlpha_];

    v148 = v43;
    [v33 *(v32 + 3832)];
    v45 = [objc_allocWithZone(MEMORY[0x277D75208]) *(v34 + 3056)];
    [v45 moveToPoint_];
    [v45 addLineToPoint_];
    [v45 closePath];
    v147 = v45;
    v46 = [v45 CGPath];
    v47 = v34;
    v48 = v32;
    v49 = v33;
    v50 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v51 = v50;
    v52 = [v39 whiteColor];
    [v51 setStrokeColor_];

    [v51 setLineCap_];
    [v51 setAlpha_];
    v146 = v51;
    [v49 (v48 + 1411)];
    v53 = [objc_allocWithZone(MEMORY[0x277D75208]) v47 + 2936];
    [v53 moveToPoint_];
    [v53 addLineToPoint_];
    [v53 closePath];
    v145 = v53;
    v54 = [v53 CGPath];
    v55 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v56 = v55;
    v57 = [v39 whiteColor];
    [v56 setStrokeColor_];

    [v56 setLineCap_];
    [v56 setAlpha_];
    v153 = v49;
    v144 = v56;
    [v49 addChild_];
    type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for UIBezierPath);
    v143.super.isa = UIBezierPath.init(fmpfRectangleCentered:size:)(0, __PAIR128__(*&v23, v173 + v173)).super.isa;
    v58 = [(objc_class *)v143.super.isa CGPath];
    v59 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v60 = v59;
    v61 = [v39 whiteColor];
    [v60 setStrokeColor_];

    v62 = v60;
    [v62 setAlpha_];
    v32 = &unk_279D89000;
    [v166 addChild_];
    v63 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasInsideBorderBezierNode;
    v64 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasInsideBorderBezierNode);
    *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasInsideBorderBezierNode) = v62;

    v171 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_peripheralDiskRadius;
    v23 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_peripheralDiskRadius);
    v142 = [objc_opt_self() bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:v23 clockwise:{-3.14159265, 3.14159265}];
    v65 = [v142 CGPath];
    v66 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v67 = v66;
    v156 = v39;
    v68 = [v39 whiteColor];
    [v67 setStrokeColor_];

    v69 = v67;
    [v69 setAlpha_];
    [v69 setZPosition_];
    [v166 addChild_];
    v39 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasDiskBezierNode;
    v70 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasDiskBezierNode);
    *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasDiskBezierNode) = v69;

    v43 = [v175 standardUserDefaults];
    v71 = [v43 fmpfArrowDotCount];

    if (__OFSUB__(v71, 1))
    {
      break;
    }

    v72 = fmax((v26 + v172 / v170 + v172 / v170) / (v71 - 1), 2.22044605e-16);
    v73 = round(v172 / v170 / v72);
    if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_55;
    }

    if (v73 <= -9.22337204e18)
    {
      goto LABEL_56;
    }

    if (v73 >= 9.22337204e18)
    {
      goto LABEL_57;
    }

    if (__OFADD__(v73, 1))
    {
      goto LABEL_58;
    }

    v162 = v73 + 1;
    v74 = round(v26 / v72);
    if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_59;
    }

    if (v74 <= -9.22337204e18)
    {
      goto LABEL_60;
    }

    if (v74 >= 9.22337204e18)
    {
      goto LABEL_61;
    }

    if (__OFADD__(v74, 1))
    {
      goto LABEL_62;
    }

    v71 = &unk_279D89000;
    v154 = (v74 + 1);
    v151 = v39;
    v141 = v62;
    v159 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_explodedDiskRadius;
    v158 = (v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformedToExplodedFactor);
    v160 = static FMPFSKPatternNodeCommonStyle.default;
    v43 = v3;
    v75 = specialized FMPFSKPatternNode.arrowFragmentNodesWith(spineBottom:spineTop:dotCount:ignoreTop:dotDiameter:explodedDiskRadius:peripheralDiskRadius:color:conformedToExplodedFactor:conformationFactor:startIndex:)(v162, 1, static FMPFSKPatternNodeCommonStyle.default, *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformedToExplodedFactor), *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformedToExplodedFactor + 8), a1, v164, 0, v29, v30, 0.0, v26 * 0.5, *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_explodedDiskRadius), *&v171[v3]);
    v32 = v76;
    v170 = *&OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentsNode;
    v139 = v75;
    [*(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentsNode) &off_279D89580 + 3];
    v140 = v69;
    v152 = v63;
    if (v32 >> 62)
    {
      goto LABEL_63;
    }

    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v150 = v32;
    if (!v33)
    {
      goto LABEL_67;
    }

LABEL_41:
    v34 = 0;
    ObjCClassFromMetadata = (v32 & 0xC000000000000001);
    v71 = v32 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (ObjCClassFromMetadata)
      {
        v77 = MEMORY[0x26D6B1680](v34, v32);
      }

      else
      {
        if (v34 >= *(v71 + 16))
        {
          goto LABEL_52;
        }

        v77 = *(v32 + 8 * v34 + 32);
      }

      v43 = v77;
      v39 = (v34 + 1);
      if (__OFADD__(v34, 1))
      {
        break;
      }

      swift_beginAccess();
      v78 = v43;
      MEMORY[0x26D6B1320]();
      if (*((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v32 = v150;
      }

      v43 = (v3 + v11);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      ++v34;
      if (v39 == v33)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  if (v32 < 0)
  {
    v79 = v32;
  }

  else
  {
    v79 = v32 & 0xFFFFFFFFFFFFFF8;
  }

  v33 = MEMORY[0x26D6B1780](v79);
  v150 = v32;
  if (v33)
  {
    goto LABEL_41;
  }

LABEL_67:
  v80 = specialized FMPFSKPatternNode.arrowFragmentNodesWith(spineBottom:spineTop:dotCount:ignoreTop:dotDiameter:explodedDiskRadius:peripheralDiskRadius:color:conformedToExplodedFactor:conformationFactor:startIndex:)(v162, 1, v160, *v158, *(v158 + 8), a1, v164, v162, v31, v30, 0.0, v26 * 0.5, *(v3 + v159), *&v171[v3]);
  v82 = v81;
  v138 = v80;
  [*(v3 + *&v170) addChild_];
  v174 = v11;
  v176 = v3;
  if (v82 >> 62)
  {
    goto LABEL_81;
  }

  for (j = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = MEMORY[0x26D6B1780](v89))
  {
    v84 = 0;
    *&v172 = v82 & 0xC000000000000001;
    while (1)
    {
      if (v172 == 0.0)
      {
        if (v84 >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        v85 = *(v82 + 8 * v84 + 32);
      }

      else
      {
        v85 = MEMORY[0x26D6B1680](v84, v82);
      }

      v86 = v85;
      v87 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        break;
      }

      v3 = v82;
      v71 = v174;
      swift_beginAccess();
      v88 = v86;
      MEMORY[0x26D6B1320]();
      if (*((*(v176 + v71) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v176 + v71) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      ++v84;
      if (v87 == j)
      {
        goto LABEL_85;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    if (v82 < 0)
    {
      v89 = v82;
    }

    else
    {
      v89 = v82 & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_85:
  if (v162 + 0x4000000000000000 < 0)
  {
    goto LABEL_124;
  }

  v3 = v176;
  v90 = COERCE_DOUBLE(specialized FMPFSKPatternNode.arrowFragmentNodesWith(spineBottom:spineTop:dotCount:ignoreTop:dotDiameter:explodedDiskRadius:peripheralDiskRadius:color:conformedToExplodedFactor:conformationFactor:startIndex:)(v154, 0, v160, *v158, *(v158 + 8), a1, v164, 2 * v162, 0.0, v26 * -0.5, 0.0, v26 * 0.5, *(v176 + v159), *&v171[v176]));
  v71 = v91;
  [*(v176 + *&v170) addChild_];
  v172 = v90;
  if (v71 >> 62)
  {
    goto LABEL_125;
  }

  v92 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v93 = v174;
    if (v92)
    {
      v94 = 0;
      v174 = v71 & 0xC000000000000001;
      while (1)
      {
        if (v174)
        {
          v95 = MEMORY[0x26D6B1680](v94, v71);
        }

        else
        {
          if (v94 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_121;
          }

          v95 = *(v71 + 8 * v94 + 32);
        }

        v96 = v95;
        v97 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        swift_beginAccess();
        v98 = v96;
        MEMORY[0x26D6B1320]();
        if (*((*(v3 + v93) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v93) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v3 = v176;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        ++v94;
        if (v97 == v92)
        {
          goto LABEL_99;
        }
      }

      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      if (v71 < 0)
      {
        v125 = v71;
      }

      else
      {
        v125 = v71 & 0xFFFFFFFFFFFFFF8;
      }

      v92 = MEMORY[0x26D6B1780](v125);
      continue;
    }

    break;
  }

LABEL_99:
  [v161 addChild_];
  if (v169)
  {
    v99 = [v156 yellowColor];
  }

  else
  {
    v99 = qword_2804DD018;
  }

  v100 = v99;
  v174 = v71;
  v176 = v82;
  v101 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNode;
  v102 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_noonNode);
  if (v102)
  {
    [v102 removeFromParent];
  }

  v103 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_experienceType;
  LOBYTE(v177[0]) = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_experienceType);
  v104 = *&v171[v3];
  v105 = *(v157 + 14);
  v106 = type metadata accessor for FMPFSKPeripheralDotNode();
  objc_allocWithZone(v106);
  v168 = v100;
  v107 = FMPFSKPeripheralDotNode.init(experienceType:name:dotDiameter:color:diskRadius:dotScale:angle:opacity:offset:)(v177, 1852796750, 0xE400000000000000, v100, v104, 0, v105, 0, v155, 0, 0, 0x3FF0000000000000, 0, 0, 0, 1);
  [v3 addChild_];
  [*&v107[OBJC_IVAR____TtC10TVRemoteUI23FMPFSKPeripheralDotNode_btRangingNode] removeFromParent];
  v108 = *(v3 + v101);
  *(v3 + v101) = v107;
  v165 = v107;

  if (v169)
  {
    v109 = [v156 purpleColor];
  }

  else
  {
    v109 = qword_2804DD020;
  }

  v110 = v109;
  v82 = &unk_279D89000;
  v111 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeNode;
  v112 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_pointeeNode);
  if (v112)
  {
    [v112 removeFromParent];
  }

  LOBYTE(v177[0]) = *(v3 + v103);
  v113 = *&v171[v3];
  v114 = *(v157 + 12);
  v115 = objc_allocWithZone(v106);
  v171 = v110;
  v116 = FMPFSKPeripheralDotNode.init(experienceType:name:dotDiameter:color:diskRadius:dotScale:angle:opacity:offset:)(v177, 0x6565746E696F50, 0xE700000000000000, v110, v113, 0, v114, 0, v155, 0, 0, 0x3FF0000000000000, 0, 0, 0, 1);
  [v3 addChild_];
  v117 = *(v3 + v111);
  *(v3 + v111) = v116;
  v163 = v116;

  [v166 setHidden_];
  [*(v3 + v152) setHidden_];
  [*&v151[v3] setHidden_];
  v118 = [v153 children];
  v119 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v119 >> 62))
  {
    v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v120)
    {
      goto LABEL_133;
    }

    goto LABEL_111;
  }

  if (v119 < 0)
  {
    v126 = v119;
  }

  else
  {
    v126 = v119 & 0xFFFFFFFFFFFFFF8;
  }

  v120 = MEMORY[0x26D6B1780](v126);
  if (v120)
  {
LABEL_111:
    v121 = 0;
    v71 = 0x277CDC000uLL;
    do
    {
      if ((v119 & 0xC000000000000001) != 0)
      {
        v122 = MEMORY[0x26D6B1680](v121, v119);
      }

      else
      {
        if (v121 >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_123;
        }

        v122 = *(v119 + 8 * v121 + 32);
      }

      v123 = v122;
      v82 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        goto LABEL_122;
      }

      objc_opt_self();
      v124 = swift_dynamicCastObjCClass();
      if (v124)
      {
        [v124 setLineWidth_];
      }

      ++v121;
    }

    while (v82 != v120);
  }

LABEL_133:

  [*(v3 + *&v170) setHidden_];
  if (v169)
  {
    v127 = [v156 yellowColor];
    v128 = [v127 colorWithAlphaComponent_];

    v129 = v165;
    FMPFSKPeripheralDotNode.renderingColor.setter(v128);
    v130 = [v156 purpleColor];
    v131 = [v130 colorWithAlphaComponent_];

    v132 = v131;
    v134 = v140;
    v133 = v141;
    v135 = v172;
    v136 = v168;
    v137 = v171;
  }

  else
  {
    v136 = v168;
    v129 = v165;
    FMPFSKPeripheralDotNode.renderingColor.setter(v168);
    v137 = v171;
    v132 = v171;
    v134 = v140;
    v133 = v141;
    v135 = v172;
  }

  FMPFSKPeripheralDotNode.renderingColor.setter(v132);
  [v129 setHidden_];

  [v163 setHidden_];
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v22[0] = v4 + 32;
  v22[1] = v6;
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    v8 = result;
    v9 = v6 >> 1;
    if (v6 >= 2)
    {
      type metadata accessor for FMPFSKPatternFragmentNode();
      v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v21[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
    v21[1] = v9;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v21, v23, v22, v8, a2);
    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return specialized ContiguousArray._endMutation()();
  }

  if (v6 < 2)
  {
    return specialized ContiguousArray._endMutation()();
  }

  v11 = -1;
  v12 = 1;
  v13 = (v4 + 32);
LABEL_9:
  v14 = *(v4 + 32 + 8 * v12);
  v15 = v11;
  v16 = v13;
  while (1)
  {
    v17 = v14 + *a2;
    if (*(v17 + 16))
    {
      break;
    }

    v18 = *v16;
    v19 = *v16 + *a2;
    if (*(v19 + 16))
    {
      goto LABEL_20;
    }

    if (*(v17 + 8) < *(v19 + 8))
    {
      *v16 = v14;
      v16[1] = v18;
      --v16;
      if (!__CFADD__(v15++, 1))
      {
        continue;
      }
    }

    ++v12;
    ++v13;
    --v11;
    if (v12 == v6)
    {
      return specialized ContiguousArray._endMutation()();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = a2(v4);
  }

  v5 = *(v4 + 16);
  v20[0] = v4 + 32;
  v20[1] = v5;
  result = _minimumMergeRunLength(_:)(v5);
  if (result >= v5)
  {
    if (v5 >= 2)
    {
      v10 = (v4 + 48);
      v11 = -1;
      for (i = 1; i != v5; ++i)
      {
        v13 = *(v4 + 32 + 16 * i + 8);
        v14 = v11;
        v15 = v10;
        do
        {
          if (v13 >= *(v15 - 1))
          {
            break;
          }

          v16 = *v15;
          *v15 = *(v15 - 1);
          *(v15 - 1) = v13;
          *(v15 - 2) = v16;
          v15 -= 2;
        }

        while (!__CFADD__(v14++, 1));
        v10 += 2;
        --v11;
      }
    }
  }

  else
  {
    v7 = result;
    v8 = v5 >> 1;
    if (v5 >= 2)
    {
      type metadata accessor for CGPoint(0);
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v9 + 16) = v8;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v18[0] = v9 + 32;
    v18[1] = v8;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v19, v20, v7);
    *(v9 + 16) = 0;
  }

  *a1 = v4;
  return result;
}

void *closure #9 in FMPFSKPatternNode.readjustFragmentNodesComposedPositionForTape(_:)(void *result, void *a2)
{
  v2 = *result + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition;
  if (*(v2 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *result + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition;
  if (*(v3 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = *a2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition;
  if (*(v4 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = *a2 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition;
  if ((*(v5 + 16) & 1) == 0)
  {
    v6 = *(v2 + 8) - *(v3 + 8);
    return (v6 * v6 + (*v2 - *v3) * (*v2 - *v3) < (*(v4 + 8) - *(v5 + 8)) * (*(v4 + 8) - *(v5 + 8)) + (*v4 - *v5) * (*v4 - *v5));
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t FMPFSKPatternNode.visibleTrackOffsets(center:)(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackTop + 16))
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackBottom + 16))
  {
    return 0;
  }

  v2 = (v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_config);
  if (*(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_config + 48))
  {
    return 0;
  }

  if (__OFSUB__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackTop + 8);
    v5 = *(v1 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackBottom + 8);
    v6 = (v4 - v5) / (*v2 - 1) * v2[5] * 0.5;
    if (v6 + a1 < v4)
    {
      v4 = v6 + a1;
    }

    return *&v4;
  }

  return result;
}

void FMPFSKPatternNode.setupTapeChildNodes(conformationFactor:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = [objc_opt_self() standardUserDefaults];
  v94 = [v6 fmpfDebugMode];

  if (a2)
  {
    v96 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactor);
    LOBYTE(v95) = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_conformationFactor + 8);
  }

  else
  {
    v96 = a1;
    LOBYTE(v95) = 0;
  }

  v97 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasDebugNode);
  v7 = [v97 children];
  type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for SKNode);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v98 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_gimbalNode);
  v9 = [v98 children];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.append<A>(contentsOf:)(v10, specialized Array._copyContents(initializing:));
  v11 = v8;
  v12 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentNodes;
  swift_beginAccess();
  v100 = v12;
  v13 = *(v3 + v12);
  if (v13 >> 62)
  {
    goto LABEL_18;
  }

  swift_bridgeObjectRetain_n();
  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  for (i = v13; ; i = _bridgeCocoaArray<A>(_:)())
  {

    specialized Array.append<A>(contentsOf:)(i, specialized Array._copyContents(initializing:));
    v15 = v11;
    if (v11 >> 62)
    {
      break;
    }

    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_23;
    }

LABEL_8:
    v17 = 0;
    v18 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v18)
      {
        v19 = MEMORY[0x26D6B1680](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v19 = *(v15 + 8 * v17 + 32);
      }

      v11 = v19;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v19 removeFromParent];

      ++v17;
      if (v20 == v16)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
  }

  if (v11 < 0)
  {
    v21 = v11;
  }

  else
  {
    v21 = v11 & 0xFFFFFFFFFFFFFF8;
  }

  v16 = MEMORY[0x26D6B1780](v21);
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_23:
  *(v3 + v100) = MEMORY[0x277D84F90];

  v22 = (v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_config);
  if (*(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_config + 32))
  {
    __break(1u);
    return;
  }

  v23 = *v22;
  v24 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_peripheralDiskRadius;
  v25 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_peripheralDiskRadius);
  v26 = v22[3];

  v93 = v23;
  v27 = (v25 + v25) * v23 / v26;
  v28 = -*(v3 + v24);
  v29 = v27 * 0.5;
  v30 = v27 * -0.5;
  v31 = (v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackTop);
  *v31 = v28;
  v31[1] = v27 * 0.5;
  *(v31 + 16) = 0;
  v32 = (v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_trackBottom);
  *v32 = v28;
  v32[1] = v27 * -0.5;
  *(v32 + 16) = 0;
  v33 = &unk_279D89000;
  v34 = v97;
  [v98 addChild_];
  v35 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasPatternSpinesNode);
  [v97 addChild_];
  v36 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [v36 moveToPoint_];
  [v36 addLineToPoint_];
  [v36 closePath];
  type metadata accessor for FMPFSKShapeNode();
  v91 = v36;
  v37 = [v36 CGPath];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [ObjCClassFromMetadata shapeNodeWithPath_];

  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 whiteColor];
  v43 = &selRef_displayLinkWithTarget_selector_;
  [v41 setStrokeColor_];

  [v41 setLineCap_];
  v44 = one-time initialization token for default;
  v45 = v41;
  if (v44 != -1)
  {
    goto LABEL_40;
  }

  while (2)
  {
    v46 = *&qword_2804DD028;
    [v45 setAlpha_];

    v99 = v35;
    v90 = v45;
    [v35 v33[479]];
    v89 = [objc_opt_self() bezierPathWithArcCenter:1 radius:0.0 startAngle:0.0 endAngle:*(v3 + v24) clockwise:{-3.14159265, 3.14159265}];
    v47 = [v89 CGPath];
    v48 = [ObjCClassFromMetadata shapeNodeWithPath_];

    v49 = v48;
    v50 = [v40 whiteColor];
    [v49 v43[26]];

    v51 = v49;
    [v51 setAlpha_];
    [v51 setZPosition_];
    [v34 v33[479]];
    v52 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasDiskBezierNode);
    v88 = v51;
    v92 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasDiskBezierNode;
    *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasDiskBezierNode) = v51;

    v43 = v3;
    v53 = specialized FMPFSKPatternNode.tapeFragmentNodesWith(spineBottom:spineTop:dotCount:dotDiameter:peripheralDiskRadius:color:conformationFactor:startIndex:)(v93, static FMPFSKPatternNodeCommonStyle.default, v96, v95, 0, v28, v30, v28, v29, *(v3 + v24));
    v55 = v54;
    v95 = v56;
    v96 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentsNode;
    v93 = v53;
    [*(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_patternFragmentsNode) v33[479]];
    if (!(v55 >> 62))
    {
      v45 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v40 = v35;
      if (!v45)
      {
        break;
      }

      goto LABEL_27;
    }

    if (v55 < 0)
    {
      v60 = v55;
    }

    else
    {
      v60 = v55 & 0xFFFFFFFFFFFFFF8;
    }

    v45 = MEMORY[0x26D6B1780](v60);
    v40 = v35;
    if (v45)
    {
LABEL_27:
      v24 = 0;
      v35 = (v55 & 0xC000000000000001);
      ObjCClassFromMetadata = (v55 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v35)
        {
          v57 = MEMORY[0x26D6B1680](v24, v55);
        }

        else
        {
          if (v24 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v57 = *(v55 + 8 * v24 + 32);
        }

        v43 = v57;
        v40 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v33 = v55;
        swift_beginAccess();
        v34 = v43;
        MEMORY[0x26D6B1320]();
        v58 = v100;
        if (*((*(v3 + v58) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v58) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v58 = v100;
        }

        v43 = (v3 + v58);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        ++v24;
        v59 = v40 == v45;
        v40 = v99;
        if (v59)
        {
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
      continue;
    }

    break;
  }

LABEL_45:
  [v98 addChild_];
  v61 = *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_labelsNode);
  *(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_labelsNode) = v95;
  v62 = v95;

  [v98 addChild_];
  [v97 setHidden_];
  [*(v3 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_canvasInsideBorderBezierNode) setHidden_];
  [*(v3 + v92) setHidden_];
  v63 = [v40 children];
  v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v87 = v55;
  if (v64 >> 62)
  {
    goto LABEL_58;
  }

  for (j = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = MEMORY[0x26D6B1780](v71))
  {
    v66 = 0;
    while (1)
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x26D6B1680](v66, v64);
      }

      else
      {
        if (v66 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v67 = *(v64 + 8 * v66 + 32);
      }

      v68 = v67;
      v69 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      objc_opt_self();
      v70 = swift_dynamicCastObjCClass();
      if (v70)
      {
        [v70 setLineWidth_];
      }

      ++v66;
      if (v69 == j)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    if (v64 < 0)
    {
      v71 = v64;
    }

    else
    {
      v71 = v64 & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_62:

  [*(v3 + v96) setHidden_];
  [v98 position];
  *&v73 = COERCE_DOUBLE(FMPFSKPatternNode.visibleTrackOffsets(center:)(-v72));
  if ((v75 & 1) == 0)
  {
    v76 = *&v73;
    v77 = v74;
    v78 = *(v3 + v100);
    if (v78 >> 62)
    {
      goto LABEL_82;
    }

    for (k = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = MEMORY[0x26D6B1780](v86))
    {

      if (!k)
      {
        break;
      }

      v80 = 0;
      v81 = v76 + 1.0;
      while (1)
      {
        if ((v78 & 0xC000000000000001) != 0)
        {
          v82 = COERCE_DOUBLE(MEMORY[0x26D6B1680](v80, v78));
        }

        else
        {
          if (v80 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_81;
          }

          *&v82 = *(v78 + 8 * v80 + 32);
        }

        v76 = v82;
        v83 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          break;
        }

        if ((*(*&v82 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 16) & 1) == 0)
        {
          v84 = *(*&v82 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 8);
          v85 = v77 + -1.0 > v84 || v84 > v81;
          [*&v82 setHidden_];
        }

        ++v80;
        if (v83 == k)
        {
          goto LABEL_78;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      if (v78 < 0)
      {
        v86 = v78;
      }

      else
      {
        v86 = v78 & 0xFFFFFFFFFFFFFF8;
      }
    }

LABEL_78:
  }

  FMPFSKPatternNode.readjustFragmentNodesComposedPositionForTape(_:)(0, 1);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10TVRemoteUI25FMPFSKPatternFragmentNodeC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t specialized static BinaryFloatingPoint<>.random<A>(in:using:)(uint64_t result, uint64_t (*a2)(uint64_t, double, double), double a3, double a4)
{
  if (a3 == a4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = a4 - a3;
  if (COERCE__INT64(fabs(a4 - a3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = 0;
  result = MEMORY[0x26D6B2720](&v9, 8);
  if (v6 * vcvtd_n_f64_u64(v9 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a3 == a4)
  {
    return a2(v8, a3, a4);
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, void (*a2)(uint64_t, void, uint64_t))
{
  v4 = a1;
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v5 = MEMORY[0x26D6B1780](a1);
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  else
  {
    v16 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v17 = MEMORY[0x26D6B1780](v16);
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), v4);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    if (v3 < 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x26D6B1780](v5);
  }

LABEL_12:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

void specialized MutableCollection<>.shuffle<A>(using:)()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v20 = 0;
      MEMORY[0x26D6B2720](&v20, 8);
      v5 = (v20 * v1) >> 64;
      if (v1 > v20 * v1)
      {
        v6 = -v1 % v1;
        if (v6 > v20 * v1)
        {
          do
          {
            v20 = 0;
            MEMORY[0x26D6B2720](&v20, 8);
          }

          while (v6 > v20 * v1);
          v5 = (v20 * v1) >> 64;
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_21;
        }

        if (v7 >= v9)
        {
          goto LABEL_22;
        }

        v10 = *(v8 + 32 + 8 * v7);
        v11 = *(v8 + 32 + 8 * v3);
        v12 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v14 = v8 + 8 * v3;
        v15 = *(v14 + 32);
        *(v14 + 32) = v12;

        specialized ContiguousArray._endMutation()();
        v16 = *v0;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v16;
        if ((v17 & 1) == 0)
        {
          v16 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v16);
          *v0 = v16;
        }

        if (v7 >= *(v16 + 16))
        {
          goto LABEL_24;
        }

        v18 = v16 + 8 * v7;
        v19 = *(v18 + 32);
        *(v18 + 32) = v11;

        specialized ContiguousArray._endMutation()();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v13 = 0;
      MEMORY[0x26D6B2720](&v13, 8);
      v6 = (v13 * v2) >> 64;
      if (v2 > v13 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v13 * v2)
        {
          do
          {
            v13 = 0;
            MEMORY[0x26D6B2720](&v13, 8);
          }

          while (v7 > v13 * v2);
          v6 = (v13 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v11 = *&v1[16 * v4 + 32];
        v12 = *&v1[16 * v8 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
        }

        v10 = *(v1 + 2);
        if (v4 >= v10)
        {
          goto LABEL_21;
        }

        *&v1[16 * v4 + 32] = v12;
        if (v8 >= v10)
        {
          goto LABEL_22;
        }

        *&v1[16 * v8 + 32] = v11;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result >= v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      if (v2 < 2)
      {
        return result;
      }

      v7 = *a1;
      v8 = -1;
      v9 = 1;
      v10 = *a1;
LABEL_9:
      v11 = *(v7 + 8 * v9);
      v12 = v8;
      v13 = v10;
      while (1)
      {
        result = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition;
        v14 = (v11 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition);
        if (*(v11 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 16))
        {
          goto LABEL_25;
        }

        v15 = (v11 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (*(v11 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_27;
        }

        v16 = *v13;
        result = *v13 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition;
        if (*(result + 16))
        {
          goto LABEL_26;
        }

        if (*(v16 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_24;
        }

        v18 = v14[1] - v15[1];
        v17 = (v16 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (v18 * v18 + (*v14 - *v15) * (*v14 - *v15) < (*(result + 8) - v17[1]) * (*(result + 8) - v17[1]) + (*result - *v17) * (*result - *v17))
        {
          if (!v7)
          {
            goto LABEL_28;
          }

          *v13 = v11;
          v13[1] = v16;
          --v13;
          if (!__CFADD__(v12++, 1))
          {
            continue;
          }
        }

        ++v9;
        ++v10;
        --v8;
        if (v9 == v2)
        {
          return result;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for FMPFSKPatternFragmentNode();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v20[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v20[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v20, v21, a1, v4);
      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v86;
    if (!*v86)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v78 = (v8 + 16);
    v79 = *(v8 + 16);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = (v8 + 16 * v79);
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v80), (*a3 + 16 * *v82), (*a3 + 16 * v83), v5);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_114;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_115;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_116;
        }

        v79 = *v78 - 1;
        result = memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v85 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 16 * v7 - 16;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = *(v23 + v11);
            *(v23 + v11) = *(v23 + v19);
            *(v23 + v19) = v22;
          }

          ++v21;
          v19 -= 16;
          v11 += 16;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v32 = *(v8 + 24);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v33;
    v34 = v8 + 32;
    v35 = (v8 + 32 + 16 * v5);
    *v35 = v9;
    v35[1] = v7;
    v87 = *v86;
    if (!*v86)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v36 = *(v8 + 32);
          v37 = *(v8 + 40);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = (v8 + 16 * v33);
          v54 = *v52;
          v53 = v52[1];
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = (v34 + 16 * v5);
          v60 = *v58;
          v59 = v58[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v5 = v33 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v33 < 2)
        {
          goto LABEL_112;
        }

        v62 = (v8 + 16 * v33);
        v64 = *v62;
        v63 = v62[1];
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_108;
        }

        v65 = (v34 + 16 * v5);
        v67 = *v65;
        v66 = v65[1];
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_110;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v33)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v73 = (v34 + 16 * (v5 - 1));
        v74 = *v73;
        v75 = (v34 + 16 * v5);
        v76 = v75[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v87);
        if (v4)
        {
        }

        if (v76 < v74)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v73 = v74;
        v73[1] = v76;
        v77 = *(v8 + 16);
        if (v5 >= v77)
        {
          goto LABEL_101;
        }

        v33 = v77 - 1;
        result = memmove((v34 + 16 * v5), v75 + 2, 16 * (v77 - 1 - v5));
        *(v8 + 16) = v77 - 1;
        if (v77 <= 2)
        {
          goto LABEL_3;
        }
      }

      v40 = v34 + 16 * v33;
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = (v8 + 16 * v33);
      v49 = *v47;
      v48 = v47[1];
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = (v34 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v38 < v72)
        {
          v5 = v33 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v85;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 16 * v7;
  v26 = v9 - v7;
LABEL_30:
  v27 = *(v24 + 16 * v7 + 8);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    if (v27 >= *(v29 - 1))
    {
LABEL_29:
      ++v7;
      v25 += 16;
      --v26;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v30 = *v29;
    *v29 = *(v29 - 1);
    *(v29 - 1) = v27;
    *(v29 - 2) = v30;
    v29 -= 2;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

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

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v5 = v4;
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_97:
    v7 = *v93;
    if (*v93)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_99;
    }

LABEL_143:
    __break(1u);
    return result;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 + 1 >= v6)
    {
      v6 = v8 + 1;
    }

    else
    {
      v10 = *a3;
      v11 = *(*a3 + 8 * (v8 + 1));
      v96 = *(*a3 + 8 * v8);
      v97 = v11;
      result = closure #9 in FMPFSKPatternNode.readjustFragmentNodesComposedPositionForTape(_:)(&v97, &v96);
      if (v5)
      {
      }

      v12 = v8 + 2;
      v13 = 8 * v8;
      v14 = (v10 + 8 * v8 + 16);
      while (v6 != v12)
      {
        v15 = *v14;
        v16 = *v14 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition;
        if (*(v16 + 16))
        {
          goto LABEL_135;
        }

        v17 = (v15 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (*(v15 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_138;
        }

        v18 = *(v14 - 1);
        v19 = (v18 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition);
        if (*(v18 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 16))
        {
          goto LABEL_137;
        }

        v20 = v18 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition;
        if (*(v20 + 16))
        {
          goto LABEL_136;
        }

        v21 = *(v16 + 8) - v17[1];
        ++v12;
        ++v14;
        if (((result ^ (v21 * v21 + (*v16 - *v17) * (*v16 - *v17) >= (v19[1] - *(v20 + 8)) * (v19[1] - *(v20 + 8)) + (*v19 - *v20) * (*v19 - *v20))) & 1) == 0)
        {
          v6 = v12 - 1;
          break;
        }
      }

      if (result)
      {
        if (v6 < v8)
        {
          goto LABEL_128;
        }

        if (v8 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v8;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v25 = *(v26 + v13);
              *(v26 + v13) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v13 += 8;
          }

          while (v24 < v23);
        }
      }
    }

    v27 = a3[1];
    if (v6 >= v27)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_125;
    }

    if (v6 - v8 >= v7)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v8, v7))
    {
      goto LABEL_126;
    }

    v28 = &v7[v8] >= v27 ? a3[1] : &v7[v8];
    if (v28 < v8)
    {
      break;
    }

    if (v6 != v28)
    {
      v75 = *a3;
      v76 = *a3 + 8 * v6 - 8;
      v77 = v8 - v6;
LABEL_86:
      v78 = *(v75 + 8 * v6);
      v79 = v77;
      v80 = v76;
      while (1)
      {
        v81 = (v78 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition);
        if (*(v78 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 16))
        {
          goto LABEL_132;
        }

        v82 = (v78 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (*(v78 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_133;
        }

        v83 = *v80;
        v84 = *v80 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition;
        result = *(v84 + 16);
        if (result)
        {
          break;
        }

        result = *(v83 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16);
        if (result)
        {
          goto LABEL_131;
        }

        v86 = v81[1] - v82[1];
        v85 = (v83 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (v86 * v86 + (*v81 - *v82) * (*v81 - *v82) < (*(v84 + 8) - v85[1]) * (*(v84 + 8) - v85[1]) + (*v84 - *v85) * (*v84 - *v85))
        {
          if (!v75)
          {
            goto LABEL_134;
          }

          *v80 = v78;
          v80[1] = v83;
          --v80;
          if (!__CFADD__(v79++, 1))
          {
            continue;
          }
        }

        ++v6;
        v76 += 8;
        --v77;
        if (v6 == v28)
        {
          goto LABEL_34;
        }

        goto LABEL_86;
      }

      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

LABEL_33:
    v28 = v6;
LABEL_34:
    if (v28 < v8)
    {
      goto LABEL_124;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v94 = v28;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v30 = *(v9 + 2);
    v29 = *(v9 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v31;
    v32 = &v9[16 * v30];
    *(v32 + 4) = v8;
    *(v32 + 5) = v94;
    v33 = *v93;
    if (!*v93)
    {
      goto LABEL_142;
    }

    if (v30)
    {
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v9 + 4);
          v36 = *(v9 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_54:
          if (v38)
          {
            goto LABEL_113;
          }

          v51 = &v9[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_116;
          }

          v57 = &v9[16 * v34 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_120;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v61 = &v9[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_68:
        if (v56)
        {
          goto LABEL_115;
        }

        v64 = &v9[16 * v34];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_118;
        }

        if (v67 < v55)
        {
          goto LABEL_3;
        }

LABEL_75:
        v72 = v34 - 1;
        if (v34 - 1 >= v31)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v73 = *&v9[16 * v72 + 32];
        v7 = *&v9[16 * v34 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 8 * v73, (*a3 + 8 * *&v9[16 * v34 + 32]), (*a3 + 8 * v7), v33);
        if (v5)
        {
        }

        if (v7 < v73)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v72 >= *(v9 + 2))
        {
          goto LABEL_110;
        }

        v74 = &v9[16 * v72];
        *(v74 + 4) = v73;
        *(v74 + 5) = v7;
        v98 = v9;
        result = specialized Array.remove(at:)(v34);
        v9 = v98;
        v31 = *(v98 + 2);
        if (v31 <= 1)
        {
          goto LABEL_3;
        }
      }

      v39 = &v9[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_111;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_112;
      }

      v46 = &v9[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_114;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_117;
      }

      if (v50 >= v42)
      {
        v68 = &v9[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_121;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v8 = v94;
    v6 = a3[1];
    v7 = a4;
    if (v94 >= v6)
    {
      goto LABEL_97;
    }
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  v9 = result;
LABEL_99:
  v98 = v9;
  v88 = *(v9 + 2);
  if (v88 >= 2)
  {
    while (*a3)
    {
      v89 = *&v9[16 * v88];
      v90 = *&v9[16 * v88 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 8 * v89, (*a3 + 8 * *&v9[16 * v88 + 16]), (*a3 + 8 * v90), v7);
      if (v5)
      {
      }

      if (v90 < v89)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      }

      if (v88 - 2 >= *(v9 + 2))
      {
        goto LABEL_123;
      }

      v91 = &v9[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v98 = v9;
      result = specialized Array.remove(at:)(v88 - 1);
      v9 = v98;
      v88 = *(v98 + 2);
      if (v88 <= 1)
      {
      }
    }

LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }
}

unint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v107 = result;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v8 + 1;
      if (v8 + 1 >= v7)
      {
        goto LABEL_24;
      }

      v11 = *a3;
      v12 = *a5;
      v13 = *(*a3 + 8 * v10) + *a5;
      if (*(v13 + 16))
      {
        goto LABEL_183;
      }

      v14 = *(v11 + 8 * v8) + v12;
      if (*(v14 + 16))
      {
        goto LABEL_184;
      }

      v15 = *(v14 + 8);
      v16 = *(v13 + 8);
      v17 = v8 + 2;
      v18 = 8 * v8;
      v19 = (v11 + 8 * v8 + 16);
      do
      {
        if (v7 == v17)
        {
          v10 = v7;
          if (v16 >= v15)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }

        v20 = *v19 + v12;
        if (*(v20 + 16))
        {
          goto LABEL_178;
        }

        v21 = *(v19 - 1) + v12;
        if (*(v21 + 16))
        {
          goto LABEL_179;
        }

        ++v17;
        ++v19;
      }

      while (v16 < v15 != *(v20 + 8) >= *(v21 + 8));
      v10 = v17 - 1;
      if (v16 >= v15)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v10 < v8)
      {
        goto LABEL_166;
      }

      if (v8 < v10)
      {
        v22 = 8 * v10 - 8;
        v23 = v10;
        v24 = v8;
        do
        {
          if (v24 != --v23)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_180;
            }

            v25 = *(v26 + v18);
            *(v26 + v18) = *(v26 + v22);
            *(v26 + v22) = v25;
          }

          ++v24;
          v22 -= 8;
          v18 += 8;
        }

        while (v24 < v23);
        v7 = a3[1];
      }

LABEL_24:
      if (v10 < v7)
      {
        if (__OFSUB__(v10, v8))
        {
          goto LABEL_165;
        }

        if (v10 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_167;
          }

          if (v8 + a4 < v7)
          {
            v7 = v8 + a4;
          }

          if (v7 < v8)
          {
            goto LABEL_168;
          }

          if (v10 != v7)
          {
            v27 = *a3;
            v28 = *a3 + 8 * v10 - 8;
            v29 = v8 - v10;
            do
            {
              v30 = *(v27 + 8 * v10);
              v31 = v29;
              v32 = v28;
              do
              {
                v33 = v30 + *a5;
                if (*(v33 + 16))
                {
                  goto LABEL_174;
                }

                v34 = *v32;
                v35 = *v32 + *a5;
                if (*(v35 + 16))
                {
                  goto LABEL_173;
                }

                if (*(v33 + 8) >= *(v35 + 8))
                {
                  break;
                }

                if (!v27)
                {
                  goto LABEL_175;
                }

                *v32 = v30;
                v32[1] = v34;
                --v32;
              }

              while (!__CFADD__(v31++, 1));
              ++v10;
              v28 += 8;
              --v29;
            }

            while (v10 != v7);
            v10 = v7;
          }
        }
      }

      if (v10 < v8)
      {
        goto LABEL_162;
      }

      v109 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v38 = *(v9 + 2);
      v37 = *(v9 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v9);
      }

      *(v9 + 2) = v39;
      v40 = &v9[16 * v38];
      *(v40 + 4) = v8;
      *(v40 + 5) = v109;
      result = *v107;
      if (!*v107)
      {
        goto LABEL_181;
      }

      if (v38)
      {
        break;
      }

LABEL_3:
      v8 = v109;
      v7 = a3[1];
      if (v109 >= v7)
      {
        goto LABEL_137;
      }
    }

    v116 = *v107;
    while (1)
    {
      v41 = v39 - 1;
      if (v39 >= 4)
      {
        break;
      }

      if (v39 == 3)
      {
        v42 = *(v9 + 4);
        v43 = *(v9 + 5);
        v52 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        v45 = v52;
LABEL_64:
        if (v45)
        {
          goto LABEL_153;
        }

        v58 = &v9[16 * v39];
        v60 = *v58;
        v59 = *(v58 + 1);
        v61 = __OFSUB__(v59, v60);
        v62 = v59 - v60;
        v63 = v61;
        if (v61)
        {
          goto LABEL_156;
        }

        v64 = &v9[16 * v41 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v52 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v52)
        {
          goto LABEL_159;
        }

        if (__OFADD__(v62, v67))
        {
          goto LABEL_160;
        }

        if (v62 + v67 >= v44)
        {
          if (v44 < v67)
          {
            v41 = v39 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      v68 = &v9[16 * v39];
      v70 = *v68;
      v69 = *(v68 + 1);
      v52 = __OFSUB__(v69, v70);
      v62 = v69 - v70;
      v63 = v52;
LABEL_78:
      if (v63)
      {
        goto LABEL_155;
      }

      v71 = &v9[16 * v41];
      v73 = *(v71 + 4);
      v72 = *(v71 + 5);
      v52 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v52)
      {
        goto LABEL_158;
      }

      if (v74 < v62)
      {
        goto LABEL_3;
      }

LABEL_85:
      if (v41 - 1 >= v39)
      {
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      v79 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      v114 = v41;
      v115 = v9;
      v111 = v41 - 1;
      v80 = *&v9[16 * v41 + 16];
      v81 = *&v9[16 * v41 + 32];
      v112 = *&v9[16 * v41 + 40];
      v113 = v80;
      v82 = 8 * v80;
      v83 = (v79 + 8 * v80);
      v9 = (8 * v81);
      v84 = (v79 + 8 * v81);
      v85 = (v79 + 8 * v112);
      v5 = 8 * v81 - 8 * v80;
      v86 = 8 * v112 - 8 * v81;
      if (v5 >= v86)
      {
        if (v84 != result || v85 <= result)
        {
          memmove(result, (v79 + 8 * v81), 8 * v112 - 8 * v81);
          result = v116;
        }

        v87 = (result + v86);
        if (v86 < 1 || v9 <= v82)
        {
          v88 = result;
LABEL_126:
          v93 = v84;
        }

        else
        {
          do
          {
            v93 = v84 - 8;
            v85 -= 8;
            v94 = v87;
            v88 = v116;
            while (1)
            {
              v96 = *(v94 - 1);
              v94 -= 8;
              v95 = v96;
              v97 = v96 + *a5;
              if (*(v97 + 16))
              {
                goto LABEL_172;
              }

              v98 = *v93 + *a5;
              if (*(v98 + 16))
              {
                goto LABEL_171;
              }

              if (*(v97 + 8) < *(v98 + 8))
              {
                break;
              }

              if (v85 + 8 != v87)
              {
                *v85 = v95;
              }

              v85 -= 8;
              v87 = v94;
              if (v94 <= v116)
              {
                v87 = v94;
                goto LABEL_126;
              }
            }

            if (v85 + 8 != v84)
            {
              *v85 = *v93;
            }

            if (v87 <= v116)
            {
              break;
            }

            v84 -= 8;
          }

          while (v83 < v93);
        }
      }

      else
      {
        if (v83 != result || v84 <= result)
        {
          memmove(result, (v79 + 8 * v80), 8 * v81 - 8 * v80);
          result = v116;
        }

        v87 = (result + v5);
        if (v5 >= 1 && 8 * v112 > v9)
        {
          v88 = result;
          while (1)
          {
            v89 = *v84;
            v90 = *v84 + *a5;
            if (*(v90 + 16))
            {
              goto LABEL_169;
            }

            v91 = *v88 + *a5;
            if (*(v91 + 16))
            {
              goto LABEL_170;
            }

            if (*(v90 + 8) >= *(v91 + 8))
            {
              break;
            }

            v92 = v83 == v84;
            v84 += 8;
            if (!v92)
            {
              goto LABEL_101;
            }

LABEL_102:
            v83 += 8;
            if (v88 >= v87 || v84 >= v85)
            {
              goto LABEL_123;
            }
          }

          v89 = *v88;
          v92 = v83 == v88;
          v88 += 8;
          if (v92)
          {
            goto LABEL_102;
          }

LABEL_101:
          *v83 = v89;
          goto LABEL_102;
        }

        v88 = result;
LABEL_123:
        v93 = v83;
      }

      v99 = v87 - v88 + (v87 - v88 < 0 ? 7uLL : 0);
      if (v93 != v88 || v93 >= &v88[v99 & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v93, v88, 8 * (v99 >> 3));
      }

      v5 = v112;
      v100 = v115;
      if (v112 < v113)
      {
        goto LABEL_149;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = specialized _ArrayBuffer._consumeAndCreateNew()(v115);
      }

      if (v114 > *(v100 + 2))
      {
        goto LABEL_150;
      }

      v101 = &v100[16 * v111];
      *(v101 + 4) = v113;
      *(v101 + 5) = v112;
      specialized Array.remove(at:)(v114);
      v9 = v100;
      v39 = *(v100 + 2);
      result = v116;
      if (v39 <= 1)
      {
        goto LABEL_3;
      }
    }

    v46 = &v9[16 * v39 + 32];
    v47 = *(v46 - 64);
    v48 = *(v46 - 56);
    v52 = __OFSUB__(v48, v47);
    v49 = v48 - v47;
    if (v52)
    {
      goto LABEL_151;
    }

    v51 = *(v46 - 48);
    v50 = *(v46 - 40);
    v52 = __OFSUB__(v50, v51);
    v44 = v50 - v51;
    v45 = v52;
    if (v52)
    {
      goto LABEL_152;
    }

    v53 = &v9[16 * v39];
    v55 = *v53;
    v54 = *(v53 + 1);
    v52 = __OFSUB__(v54, v55);
    v56 = v54 - v55;
    if (v52)
    {
      goto LABEL_154;
    }

    v52 = __OFADD__(v44, v56);
    v57 = v44 + v56;
    if (v52)
    {
      goto LABEL_157;
    }

    if (v57 >= v49)
    {
      v75 = &v9[16 * v41 + 32];
      v77 = *v75;
      v76 = *(v75 + 1);
      v52 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v52)
      {
        goto LABEL_161;
      }

      if (v44 < v78)
      {
        v41 = v39 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_64;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_137:
  v5 = *v107;
  if (*v107)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_176:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v102 = *(v9 + 2);
    if (v102 < 2)
    {
    }

    while (*a3)
    {
      v103 = *&v9[16 * v102];
      v104 = *&v9[16 * v102 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 8 * v103, (*a3 + 8 * *&v9[16 * v102 + 16]), (*a3 + 8 * v104), v5, a5);
      if (v108)
      {
      }

      if (v104 < v103)
      {
        goto LABEL_163;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      }

      if (v102 - 2 >= *(v9 + 2))
      {
        goto LABEL_164;
      }

      v105 = &v9[16 * v102];
      *v105 = v103;
      *(v105 + 1) = v104;
      result = specialized Array.remove(at:)(v102 - 1);
      v102 = *(v9 + 2);
      if (v102 <= 1)
      {
      }
    }

LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
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

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t __dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = &__src[-__dst];
  v9 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v9 = &__src[-__dst];
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
    if (a4 != __dst || __dst + 8 * v10 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        v16 = *v6 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition;
        if (*(v16 + 16))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v17 = (v15 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition);
        if (*(v15 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
        {
          goto LABEL_51;
        }

        v18 = *v4 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition;
        if (*(v18 + 16))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v19 = *v4 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition;
        if (*(v19 + 16))
        {
          goto LABEL_49;
        }

        v20 = *(v16 + 8) - v17[1];
        if (v20 * v20 + (*v16 - *v17) * (*v16 - *v17) >= (*(v18 + 8) - *(v19 + 8)) * (*(v18 + 8) - *(v19 + 8)) + (*v18 - *v19) * (*v18 - *v19))
        {
          break;
        }

        v21 = v7 == v6;
        v6 += 8;
        if (!v21)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v15 = *v4;
      v21 = v7 == v4;
      v4 += 8;
      if (v21)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = v15;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
    goto LABEL_44;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 < 8 || v6 <= v7)
  {
LABEL_44:
    v32 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
    if (v6 != v4 || v6 >= &v4[v32 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v6, v4, 8 * (v32 >> 3));
    }

    return 1;
  }

LABEL_29:
  v22 = v6 - 8;
  v5 -= 8;
  v23 = v14;
  while (1)
  {
    v25 = *(v23 - 8);
    v23 -= 8;
    v24 = v25;
    v26 = (v25 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition);
    if (*(v25 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition + 16))
    {
      break;
    }

    v27 = (v24 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition);
    if (*(v24 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16))
    {
      goto LABEL_55;
    }

    v28 = *v22;
    v29 = *v22 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition;
    __dst = *(v29 + 16);
    if (__dst)
    {
      goto LABEL_52;
    }

    __dst = *(v28 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition + 16);
    if (__dst)
    {
LABEL_53:
      __break(1u);
      break;
    }

    v31 = v26[1] - v27[1];
    v30 = (v28 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition);
    if (v31 * v31 + (*v26 - *v27) * (*v26 - *v27) < (*(v29 + 8) - v30[1]) * (*(v29 + 8) - v30[1]) + (*v29 - *v30) * (*v29 - *v30))
    {
      if (v5 + 8 != v6)
      {
        *v5 = v28;
      }

      if (v14 <= v4 || (v6 -= 8, v22 <= v7))
      {
        v6 = v22;
        goto LABEL_44;
      }

      goto LABEL_29;
    }

    if (v5 + 8 != v14)
    {
      *v5 = v24;
    }

    v5 -= 8;
    v14 = v23;
    if (v23 <= v4)
    {
      v14 = v23;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return __dst;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t __dst, char *__src, char *a3, char *a4, void *a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = &__src[-__dst];
  v11 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v11 = &__src[-__dst];
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v12 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[8 * v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
LABEL_39:
      v27 = v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0);
      if (v8 != v6 || v8 >= &v6[v27 & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v8, v6, 8 * (v27 >> 3));
      }

      return 1;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v17 = *v8;
      v19 = *v8 + *a5;
      if (*(v19 + 16))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v20 = *v6 + *a5;
      if (*(v20 + 16))
      {
        goto LABEL_44;
      }

      if (*(v19 + 8) < *(v20 + 8))
      {
        break;
      }

      v17 = *v6;
      v18 = v9 == v6;
      v6 += 8;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 8;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }

    v18 = v9 == v8;
    v8 += 8;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v15] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v15);
  }

  v16 = &v6[8 * v15];
  if (v13 < 8 || v8 <= v9)
  {
    goto LABEL_39;
  }

LABEL_26:
  v21 = v8 - 8;
  v7 -= 8;
  v22 = v16;
  while (1)
  {
    v24 = *(v22 - 8);
    v22 -= 8;
    v23 = v24;
    v25 = v24 + *a5;
    if (*(v25 + 16))
    {
      break;
    }

    v26 = *v21 + *a5;
    if (*(v26 + 16))
    {
      goto LABEL_46;
    }

    if (*(v25 + 8) < *(v26 + 8))
    {
      if (v7 + 8 != v8)
      {
        *v7 = *v21;
      }

      if (v16 <= v6 || (v8 -= 8, v21 <= v9))
      {
        v8 = v21;
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v7 + 8 != v16)
    {
      *v7 = v23;
    }

    v7 -= 8;
    v16 = v22;
    if (v22 <= v6)
    {
      v16 = v22;
      goto LABEL_39;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return __dst;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
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

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo7CGPointVGMd);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t specialized Array._copyToContiguousArray()(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v2 = a1;
  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v3 = MEMORY[0x26D6B1780](a1);
  if (!v3)
  {
LABEL_9:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10TVRemoteUI25FMPFSKPatternFragmentNodeC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, v2);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x26D6B1780](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x26D6B1780](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SKNode] and conformance [A](&lazy protocol witness table cache variable for type [FMPFSKPatternFragmentNode] and conformance [A], &_sSay10TVRemoteUI25FMPFSKPatternFragmentNodeCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10TVRemoteUI25FMPFSKPatternFragmentNodeCGMd);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FMPFSKPatternFragmentNode();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x26D6B1780](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x26D6B1780](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SKNode] and conformance [A](&lazy protocol witness table cache variable for type [SKNode] and conformance [A], &_sSaySo6SKNodeCGMd);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6SKNodeCGMd);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SKConstraint(0, &lazy cache variable for type metadata for SKNode);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

id specialized FMPFSKPatternNode.arrowFragmentNodesWith(spineBottom:spineTop:dotCount:ignoreTop:dotDiameter:explodedDiskRadius:peripheralDiskRadius:color:conformedToExplodedFactor:conformationFactor:startIndex:)(char *a1, __int128 *a2, void *a3, char *a4, char a5, char *a6, char a7, uint64_t a8, double a9, double a10, double cosval, double a12, double a13, double a14)
{
  LOBYTE(v17) = a7;
  LOBYTE(v19) = a5;
  v179 = type metadata accessor for FMPFSKNode();
  result = [objc_allocWithZone(v179) init];
  v183 = result;
  v221 = MEMORY[0x277D84F90];
  v29 = (a1 - 1);
  if (__OFSUB__(a1, 1))
  {
    goto LABEL_85;
  }

  v30 = &a1[-(a2 & 1)];
  v182 = v14;
  v177 = v30;
  v178 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_experienceType;
  if (*(v14 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_experienceType) != 1)
  {
    v15 = &xmmword_2804DD1D8 + 1;
    a1 = &xmmword_2804DD1F8 + 8;
    a2 = &xmmword_2804DD1F8;
    v16 = &xmmword_2804DD1E8 + 8;
    if (one-time initialization token for r1OrBT != -1)
    {
      goto LABEL_87;
    }

LABEL_6:
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_88:
    __break(1u);
    return result;
  }

  v15 = &xmmword_2804DD2A8 + 1;
  a1 = &xmmword_2804DD2C8 + 8;
  a2 = &xmmword_2804DD2C8;
  v16 = &xmmword_2804DD2B8 + 8;
  if (one-time initialization token for r1NoAR == -1)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_87:
    result = swift_once();
    v30 = v177;
    if ((v177 & 0x8000000000000000) != 0)
    {
      goto LABEL_88;
    }

LABEL_7:
    if (!v30)
    {
      return v183;
    }

    v175 = *v16 * 0.5;
    v176 = *v16 * -0.5;
    if (v176 <= v175)
    {
      v173 = *a2;
      v174 = *a1;
      v172 = *v15;
      a2 = 0x7672754364617571;
      v165 = (a12 - a10) / v29;
      v166 = (cosval - a9) / v29;
      type metadata accessor for FMPFSKSpriteNode();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v167 = ObjCClassFromMetadata;
      v15 = 0;
      if (v19)
      {
        v32 = 0;
      }

      else
      {
        v32 = a4;
      }

      v171 = v32;
      if (v17)
      {
        v33 = 0;
      }

      else
      {
        v33 = a6;
      }

      v170 = v33;
      __asm { FMOV            V0.2D, #0.5 }

      v169 = _Q0;
      v39 = 1;
      v29 = v182;
      v168 = a14;
      while (1)
      {
        v191 = a9;
        a1 = v39;
        v40 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(ObjCClassFromMetadata, v176, v175);
        v42 = v41;
        a12 = 3.14159265;
        specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v40, 0.0, 3.14159265);
        v44 = v43 * 0.25;
        v45 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x7FFFFFFFFFFFFFFFLL);
        v46 = 4.0;
        if ((v45 & 1) == 0)
        {
          v46 = -4.0;
        }

        v47 = __sincos_stret(v44 * v46);
        cosval = v47.__cosval;
        v48 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001);
        v49 = (vcvtd_n_f64_u64(v48, 0x35uLL) * 100.0 + 0.0) / 100.0;
        a9 = v48 == 0x20000000000000 ? 1.0 : v49;
        specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v48, 0.0, 3.14159265);
        specialized RandomNumberGenerator.next<A>(upperBound:)(0x7FFFFFFFFFFFFFFFLL);
        if (__OFADD__(a8, v15))
        {
          break;
        }

        v208 = v15 + a8;
        v209 = 0x746E656D67617246;
        v210 = 0xE900000000000023;
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26D6B12B0](v50);

        v194 = v209;
        v196 = v210;
        v51._object = 0x800000026D0DD020;
        v51._countAndFlagsBits = 0xD000000000000016;
        isa = FMPFTexture(name:)(v51).super.isa;
        v16 = *(v29 + v178);
        v192 = type metadata accessor for FMPFSKPatternFragmentNode();
        v19 = objc_allocWithZone(v192);
        v53 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_gimbalNode;
        v54 = objc_allocWithZone(v179);
        v189 = isa;
        *(v19 + v53) = [v54 init];
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbScatterRandomOffsetFrameCounter) = 0.0;
        v55 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialPeripheralPosition;
        *v55 = 0;
        *(v55 + 1) = 0;
        v55[16] = 1;
        v56 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialExplodedPosition;
        *v56 = 0;
        *(v56 + 1) = 0;
        v56[16] = 1;
        v57 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength;
        *v57 = 0;
        v57[8] = 1;
        v58 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_arcLength;
        *v58 = 0;
        v58[8] = 1;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction) = 0.0;
        v59 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_intermediatePosition;
        *v59 = 0;
        *(v59 + 1) = 0;
        v59[16] = 1;
        v60 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_relativeHeading;
        *v60 = 0;
        v60[8] = 1;
        v61 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring) = 0.0;
        v62 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring) = 0.0;
        v63 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring) = 0.0;
        v64 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_explodedPosition;
        *v64 = 0;
        *(v64 + 1) = 0;
        v64[16] = 1;
        v65 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition;
        *v65 = 0;
        *(v65 + 1) = 0;
        v65[16] = 1;
        v66 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition;
        *v66 = 0;
        *(v66 + 1) = 0;
        v66[16] = 1;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_useAlternateScaling) = 0;
        v67 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationTimingFunction;
        *v67 = 0u;
        *(v67 + 1) = 0u;
        v67[32] = 1;
        v15 = (v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor);
        *v15 = 0.0;
        *(v15 + 8) = 1;
        a4 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor;
        *a4 = 0;
        a4[8] = 1;
        v68 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_scalingFactor;
        *v68 = 0;
        v68[8] = 1;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceScatterOffset) = 1;
        v17 = (v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset);
        *v17 = 0;
        *(v17 + 1) = 0;
        *(v17 + 16) = 1;
        v69 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset;
        *v69 = 0;
        *(v69 + 1) = 0;
        v69[16] = 1;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceHomingFactor) = 1;
        a6 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor;
        *a6 = 0;
        a6[8] = 1;
        v70 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor;
        *v70 = 0;
        v70[8] = 1;
        v71 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_trackOffset;
        *v71 = 0;
        v71[8] = 1;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedAbsoluteHeading) = 0.0;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_experienceType) = v16;
        v186 = v63;
        v187 = a1;
        v184 = v61;
        v185 = v62;
        if (v16 == 1)
        {
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 1;
          LOBYTE(v209) = 1;
          LOBYTE(v208) = 1;
          v207 = 1;
          v206 = 1;
          v205 = 1;
          v204 = 0;
          v203 = 0;
          v202 = 0;
          v201 = 0;
          v200 = 0;
          v199 = 0;
          v80 = 0x4010000000000000;
          v81 = 0;
          v82 = 0x3FF8000000000000;
          v83 = 0x3FF0000000000000;
          v84 = 0;
          v85 = 0x4004000000000000;
          v86 = 0.0;
          v87 = 0.6;
        }

        else
        {
          v79 = 0;
          v85 = 0;
          v83 = 0;
          v82 = 0;
          v80 = 0;
          LOBYTE(v209) = 0;
          LOBYTE(v208) = 0;
          v207 = 0;
          v206 = 0;
          v205 = 0;
          v76 = 1;
          v204 = 1;
          v203 = 1;
          v202 = 1;
          v201 = 1;
          v200 = 1;
          v199 = 1;
          v75 = 0x3FF0000000000000;
          v81 = 1;
          v74 = 0x3FE6666666666666;
          v87 = 1.0;
          v86 = 0.75;
          v72 = 0x3FB999999999999ALL;
          v84 = 1;
          v73 = 30;
          v77 = 1;
          v78 = 1;
        }

        v88 = v199;
        v190 = a10;
        a1 = v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style;
        *a1 = xmmword_26D0D44D0;
        *(a1 + 1) = xmmword_26D0D44E0;
        *(a1 + 2) = v169;
        *(a1 + 6) = 16;
        *(a1 + 7) = v86;
        *(a1 + 4) = xmmword_26D0D4470;
        *(a1 + 5) = xmmword_26D0D44F0;
        *(a1 + 12) = v87;
        *(a1 + 13) = 0x3FF0000000000000;
        *(a1 + 14) = v72;
        a1[120] = v79;
        *(a1 + 121) = *v220;
        *(a1 + 31) = *&v220[3];
        *(a1 + 16) = v73;
        a1[136] = v79;
        *(a1 + 35) = *&v219[3];
        *(a1 + 137) = *v219;
        *(a1 + 18) = 0;
        a1[152] = v79;
        *(a1 + 39) = *&v218[3];
        *(a1 + 153) = *v218;
        *(a1 + 20) = v74;
        a1[168] = v79;
        *(a1 + 43) = *&v217[3];
        *(a1 + 169) = *v217;
        *(a1 + 22) = v75;
        a1[184] = v79;
        v89 = *v216;
        *(a1 + 47) = *&v216[3];
        *(a1 + 185) = v89;
        *(a1 + 24) = v83;
        a1[200] = v76;
        v90 = *v215;
        *(a1 + 51) = *&v215[3];
        *(a1 + 201) = v90;
        *(a1 + 26) = v83;
        a1[216] = v77;
        v91 = *v214;
        *(a1 + 55) = *&v214[3];
        *(a1 + 217) = v91;
        *(a1 + 28) = v85;
        a1[232] = v78;
        v92 = *v213;
        *(a1 + 59) = *&v213[3];
        *(a1 + 233) = v92;
        *(a1 + 30) = v83;
        a1[248] = v81;
        v93 = *v212;
        *(a1 + 63) = *&v212[3];
        *(a1 + 249) = v93;
        *(a1 + 32) = v82;
        a1[264] = v84;
        v94 = *v211;
        *(a1 + 67) = *&v211[3];
        *(a1 + 265) = v94;
        *(a1 + 34) = 0x3FE0000000000000;
        *(a1 + 35) = v80;
        v95 = a3;
        a1[288] = v88;
        if (!a3)
        {
          v95 = [objc_opt_self() whiteColor];
        }

        a12 = (1.0 - v42) * a14;
        v96 = 1.0 - a9;
        v97 = a13 - v172 * ((1.0 - a9) * a13);
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_renderingColor) = v95;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_explodedDiskRadius) = v97;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralDiskRadius) = a14;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius) = a12;
        if (v16 == 1)
        {
          v29 = one-time initialization token for r1NoAR;
          v98 = a3;
          v99 = &xmmword_2804DD298 + 8;
          if (v29 != -1)
          {
            swift_once();
            v99 = &xmmword_2804DD298 + 8;
          }
        }

        else
        {
          v29 = one-time initialization token for r1OrBT;
          v100 = a3;
          v99 = &xmmword_2804DD1C8 + 8;
          if (v29 != -1)
          {
            swift_once();
            v99 = &xmmword_2804DD1C8 + 8;
          }
        }

        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle) = *v99;
        *v15 = v171;
        *(v15 + 8) = 0;
        *a4 = v170;
        a4[8] = 0;
        *v68 = 0;
        v68[8] = 0;
        *a6 = 0;
        a6[8] = 0;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_minScaleFactor) = v173;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_maxScaleFactor) = v174;
        v101 = *(a1 + 8);
        v102 = *(a1 + 9);
        v103 = v101 * (1.0 - v102);
        if (v103 < 0.0)
        {
          v103 = 0.0;
        }

        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformedBrightness) = v96 * v103 + a9 * fmin(v101 * (v102 + 1.0), 1.0);
        v104 = *(a1 + 10);
        v105 = *(a1 + 11);
        v106 = v104 * (1.0 - v105);
        if (v106 < 0.0)
        {
          v106 = 0.0;
        }

        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_nonConformedBrightness) = v96 * v106 + a9 * fmin(v104 * (v105 + 1.0), 1.0);
        a10 = fmax(*(a1 + 2) / 200.0 * a14, 1.0);
        v107 = a10 + a10;
        if (COERCE__INT64(fabs(a10 + a10)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_83;
        }

        v108 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001);
        v109 = v107 * vcvtd_n_f64_u64(v108, 0x35uLL) - a10;
        if (v108 == 0x20000000000000)
        {
          v110 = a10;
        }

        else
        {
          v110 = v109;
        }

        v111 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001);
        v112 = v107 * vcvtd_n_f64_u64(v111, 0x35uLL) - a10;
        if (v111 == 0x20000000000000)
        {
          v112 = a10;
        }

        v113 = (v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialDisturbanceScatterOffset);
        *v113 = v110;
        v113[1] = v112;
        *v17 = v110;
        *(v17 + 1) = v112;
        *(v17 + 16) = 0;
        v114 = v190;
        if ((a1[136] & 1) == 0)
        {
          v115 = specialized static FMPFFluidSpring.slowSpringWith(initialValue:stableValueThreshold:)(*&v110, 0, 0x3FE0000000000000, 0);
          v116 = *(v19 + v184);
          *(v19 + v184) = v115;

          if (*(v17 + 16))
          {
            v117 = 0;
          }

          else
          {
            v117 = *(v17 + 1);
          }

          v118 = specialized static FMPFFluidSpring.slowSpringWith(initialValue:stableValueThreshold:)(v117, *(v17 + 16), 0x3FE0000000000000, 0);
          v119 = *(v19 + v185);
          *(v19 + v185) = v118;

          v120 = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(*a6, a6[8], 0x3F847AE147AE147BLL, 0, 0, 1);
          v121 = *(v19 + v186);
          *(v19 + v186) = v120;
        }

        v122 = a12 * v47.__cosval;
        a12 = a12 * v47.__sinval;
        v123 = v47.__sinval * v97;
        v124 = v47.__cosval * v97;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_headingSpring) = specialized static FMPFFluidSpring.randomSpringWith(initialValue:randomFactor:stableValueThreshold:)(0, 0, *&a9, 0, 0x3FE0000000000000, 0);
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_noiseSubSpring) = specialized static FMPFFluidSpring.lazySpringWith(initialValue:stableValueThreshold:)(0, 0, 0, 1);
        v125 = [objc_allocWithZone(v167) init];
        v126 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_dotNode;
        *(v19 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_dotNode) = v125;
        v17 = v189;
        [v125 setTexture_];
        v127 = *(v19 + v126);
        [(objc_class *)v189 size];
        [v127 setSize_];

        v198.receiver = v19;
        v198.super_class = v192;
        v128 = objc_msgSendSuper2(&v198, sel_init);
        v129 = MEMORY[0x26D6B1210](v194, v196);

        [v128 setName_];

        v130 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_gimbalNode;
        [v128 addChild_];
        v131 = *&v128[v130];
        v132 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_dotNode;
        [v131 addChild_];
        [*&v128[v132] setColorBlendFactor_];
        [*&v128[v132] setPosition_];
        v133 = &v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_explodedPosition];
        *v133 = v124;
        v133[1] = v123;
        *(v133 + 16) = 0;
        v19 = &v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition];
        *v19 = v122;
        v19[1] = a12;
        *(v19 + 16) = 0;
        v134 = &v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition];
        v135 = v191;
        *v134 = v191;
        v134[1] = v190;
        *(v134 + 16) = 0;
        v136 = &v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialPeripheralPosition];
        *v136 = v122;
        v136[1] = a12;
        *(v136 + 16) = 0;
        v137 = &v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialExplodedPosition];
        *v137 = v124;
        v137[1] = v123;
        *(v137 + 16) = 0;
        *&v138 = COERCE_DOUBLE(FMPFSKPatternFragmentNode.calculateIntermediatePosition()());
        if (v140)
        {
          v141 = v122;
        }

        else
        {
          v141 = *&v138;
        }

        if (v140)
        {
          v142 = a12;
        }

        else
        {
          v142 = v139;
        }

        a1 = &v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_intermediatePosition];
        *a1 = v141;
        *(a1 + 1) = v142;
        a1[16] = 0;
        v16 = *(v134 + 16);
        v143 = 0.0;
        if ((v16 & 1) == 0)
        {
          cosval = *v134;
          a12 = v134[1];
          v195 = v142;
          v197 = v141;
          *&v144 = COERCE_DOUBLE(FMPFSKPatternFragmentNode.controlPoint(with:trackOffset:)(*v134));
          v146 = v145;
          v147 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle;
          v193 = *&v144;
          v149 = v148;
          v150 = a12;
          v151 = cosval;
          v152 = 1;
          while (1)
          {
            v155 = vcvtd_n_f64_u64(v152, 4uLL);
            v156 = 1.0 - v155;
            if (v128[v147])
            {
              v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v157)
              {
                goto LABEL_63;
              }

              if (!v128[v147] || v128[v147] != 1)
              {
                v158 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v158 & 1) == 0)
                {
                  goto LABEL_55;
                }

                goto LABEL_63;
              }
            }

LABEL_63:
            if ((v146 & 1) == 0)
            {
              v153 = v156 * (v155 * v193 + v151 * v156) + v155 * (v155 * v197 + v156 * v193);
              v154 = v156 * (v155 * v149 + v150 * v156) + v155 * (v155 * v195 + v156 * v149);
              goto LABEL_56;
            }

LABEL_55:
            v153 = v155 * v197 + v151 * v156;
            v154 = v155 * v195 + v150 * v156;
LABEL_56:
            v143 = v143 + sqrt((v153 - cosval) * (v153 - cosval) + (v154 - a12) * (v154 - a12));
            ++v152;
            a12 = v154;
            cosval = v153;
            if (v152 == 17)
            {
              v114 = v190;
              v135 = v191;
              v17 = v189;
              break;
            }
          }
        }

        v159 = &v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength];
        *v159 = v143;
        *(v159 + 8) = v16;
        v160 = specialized FMPFSKPatternFragmentNode.arcLength(from:endPoint:)(*a1, *(a1 + 1), a1[16], *v19, *(v19 + 1), *(v19 + 16));
        v161 = &v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_arcLength];
        *v161 = v160;
        v161[8] = v162 & 1;
        a4 = &v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor];
        if ((v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor + 8] & 1) == 0)
        {
          FMPFSKPatternFragmentNode.applyConformationFactor(_:)(*a4);
        }

        v29 = v182;
        a14 = v168;
        v15 = v187;
        if ((v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_scalingFactor + 8] & 1) == 0)
        {
          FMPFSKPatternFragmentNode.applyScalingFactor(_:)(*&v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_scalingFactor]);
        }

        if ((v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset + 16] & 1) == 0)
        {
          v163 = &v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset];
          *v163 = *&v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset];
          v163[16] = 0;
          if ((a4[8] & 1) == 0)
          {
            FMPFSKPatternFragmentNode.applyConformationFactor(_:)(*a4);
          }
        }

        if ((v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor + 8] & 1) == 0)
        {
          v164 = &v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor];
          *v164 = *&v128[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor];
          v164[8] = 0;
        }

        [v128 setZPosition_];

        [v183 addChild_];
        a6 = v128;
        MEMORY[0x26D6B1320]();
        if (*((v221 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v221 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          a4 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        if (v187 == v177)
        {
          return v183;
        }

        a10 = v165 + v114;
        a9 = v166 + v135;
        v39 = v187 + 1;
        if (__OFADD__(v187, 1))
        {
          goto LABEL_84;
        }
      }

      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t specialized FMPFSKPatternNode.tapeFragmentNodesWith(spineBottom:spineTop:dotCount:dotDiameter:peripheralDiskRadius:color:conformationFactor:startIndex:)(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10)
{
  v248 = type metadata accessor for FMPFSKNode();
  v246 = [objc_allocWithZone(v248) init];
  v19 = MEMORY[0x277D84F90];
  v297 = MEMORY[0x277D84F90];
  v249 = v10;
  v244 = OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_experienceType;
  if (*(v10 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_experienceType) == 1)
  {
    v20 = &xmmword_2804DD2B8 + 8;
    v21 = &xmmword_2804DD2C8 + 8;
    v22 = &xmmword_2804DD2C8;
    if (one-time initialization token for r1NoAR == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = &xmmword_2804DD1E8 + 8;
    v21 = &xmmword_2804DD1F8 + 8;
    v22 = &xmmword_2804DD1F8;
    if (one-time initialization token for r1OrBT == -1)
    {
      goto LABEL_5;
    }
  }

  while (1)
  {
    swift_once();
LABEL_5:
    if (a1 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = a1;
    }

    if (__OFSUB__(a1, 1))
    {
      goto LABEL_149;
    }

    v240 = *v22;
    v241 = *v21;
    v24 = *v20;
    v25 = (a1 - 1);
    v229 = [objc_allocWithZone(v248) init];
    v26 = v249 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_config;
    v228 = 0.0;
    if (*(v249 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_config + 64) & 1) != 0 || (*(v26 + 80))
    {
      v239 = 1;
      if (a1 < 0)
      {
        goto LABEL_141;
      }
    }

    else
    {
      v239 = 0;
      v228 = -(*(v26 + 72) - *(v26 + 56)) / v25;
      if (a1 < 0)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }
    }

    v230 = v249 + OBJC_IVAR____TtC10TVRemoteUI17FMPFSKPatternNode_config;
    if (a1)
    {
      v27 = a9 - a7;
      a9 = 6.28318531 / v23;
      a8 = (a8 - a6) / v25;
      v28 = v27 / v25;
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v30 = *(v29 + 2);
      v31 = 16 * v30;
      v32 = a1;
      do
      {
        v33 = *(v29 + 3);
        v34 = v30 + 1;
        if (v30 >= v33 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v30 + 1, 1, v29);
        }

        *(v29 + 2) = v34;
        v35 = &v29[v31];
        *(v35 + 4) = a6;
        *(v35 + 5) = a7;
        a6 = a8 + a6;
        a7 = v28 + a7;
        v31 += 16;
        v30 = v34;
        --v32;
      }

      while (v32);
      v247 = v29;
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v37 = *(v36 + 2);
      v38 = 16 * v37;
      a7 = -2.22044605e-16;
      do
      {
        v41 = __sincos_stret(a7);
        cosval = v41.__cosval;
        sinval = v41.__sinval;
        v42 = *(v36 + 3);
        v22 = (v37 + 1);
        if (v37 >= v42 >> 1)
        {
          a6 = v41.__sinval;
          a8 = v41.__cosval;
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v37 + 1, 1, v36);
          cosval = v41.__cosval;
          sinval = v41.__sinval;
          v36 = v44;
        }

        *(v36 + 2) = v22;
        v43 = &v36[v38];
        *(v43 + 4) = cosval * a10;
        *(v43 + 5) = sinval * a10;
        v296 = v36;
        a7 = a7 - a9;
        v38 += 16;
        ++v37;
        --a1;
      }

      while (a1);
    }

    else
    {
      v296 = v19;
      v247 = v19;
    }

    specialized MutableCollection<>.sort(by:)(&v296, specialized _ArrayBuffer._consumeAndCreateNew());
    v20 = v296;
    v21 = *(v296 + 2);
    if (v21)
    {
      v45 = v296 + 32;
      v46 = MEMORY[0x277D84F90];
      v22 = (v296 + 32);
      v47 = *(v296 + 2);
      do
      {
        if (*(v22 + 1) < 0.0)
        {
          v264 = *v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v274 = v46;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 16) + 1, 1);
            v46 = v274;
          }

          v49 = *(v46 + 16);
          v48 = *(v46 + 24);
          v50 = v264;
          if (v49 >= v48 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
            v50 = v264;
            v46 = v274;
          }

          *(v46 + 16) = v49 + 1;
          *(v46 + 16 * v49 + 32) = v50;
        }

        ++v22;
        --v47;
      }

      while (v47);
      *&v274 = v46;
      specialized MutableCollection<>.shuffle<A>(using:)();
      a1 = v274;
      v19 = MEMORY[0x277D84F90];
      do
      {
        if (*(v45 + 1) >= 0.0)
        {
          v265 = *v45;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          *&v274 = v19;
          if ((v55 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1);
            v19 = v274;
          }

          v53 = *(v19 + 2);
          v52 = *(v19 + 3);
          v22 = (v53 + 1);
          v54 = v265;
          if (v53 >= v52 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
            v54 = v265;
            v19 = v274;
          }

          *(v19 + 2) = v22;
          *&v19[16 * v53 + 32] = v54;
        }

        v45 += 16;
        --v21;
      }

      while (v21);
    }

    else
    {
      *&v274 = v19;
      specialized MutableCollection<>.shuffle<A>(using:)();
      a1 = v274;
    }

    *&v274 = v19;
    specialized MutableCollection<>.shuffle<A>(using:)();
    v56 = v274;
    *&v274 = a1;
    specialized Array.append<A>(contentsOf:)(v56);
    v57 = v274;
    v245 = *(v274 + 16);
    if (!v245)
    {
LABEL_139:

      return v246;
    }

    v237 = v24 * 0.5;
    v238 = v24 * -0.5;
    if (v24 * -0.5 <= v24 * 0.5)
    {
      break;
    }

LABEL_150:
    __break(1u);
  }

  type metadata accessor for FMPFSKSpriteNode();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (a4)
  {
    v58 = 0;
  }

  else
  {
    v58 = a3;
  }

  v235 = v58;
  v59 = v247;
  if (!*(v57 + 16))
  {
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v20 = 0;
  v236 = v57 + 32;
  v227 = v245;
  a4 = 113;
  a1 = &OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength;
  __asm { FMOV            V0.2D, #0.5 }

  v234 = _Q0;
  v65 = 1;
  v232 = a10;
  v231 = v57;
  while (1)
  {
    a3 = v65;
    if (v20 >= *(v59 + 2))
    {
      goto LABEL_143;
    }

    v66 = &v247[16 * v20 + 32];
    v255 = *v66;
    v256 = v66[1];
    v67 = atan2(*(v236 + 16 * v20 + 8), *(v236 + 16 * v20));
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v68, v238, v237);
    v70 = v69;
    v71 = __sincos_stret(v67);
    a9 = v71.__sinval;
    a8 = v71.__cosval;
    v72 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001);
    v73 = (vcvtd_n_f64_u64(v72, 0x35uLL) * 100.0 + 0.0) / 100.0;
    if (v72 == 0x20000000000000)
    {
      v74 = 1.0;
    }

    else
    {
      v74 = v73;
    }

    if (__OFADD__(a5, v20))
    {
      goto LABEL_144;
    }

    v243 = v20;
    v254 = a3;
    *&v274 = 0x746E656D67617246;
    *(&v274 + 1) = 0xE900000000000023;
    *&v271 = a5 + v20;
    v75 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D6B12B0](v75);

    v261 = v274;
    v76 = *(v249 + v244);
    v258 = type metadata accessor for FMPFSKPatternFragmentNode();
    a3 = objc_allocWithZone(v258);
    v77 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_gimbalNode;
    *(a3 + v77) = [objc_allocWithZone(v248) init];
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbScatterRandomOffsetFrameCounter) = 0;
    v78 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialPeripheralPosition);
    *v78 = 0;
    *(v78 + 1) = 0;
    v78[16] = 1;
    v79 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialExplodedPosition);
    *v79 = 0;
    *(v79 + 1) = 0;
    v79[16] = 1;
    v80 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength);
    *v80 = 0;
    v80[8] = 1;
    v81 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_arcLength);
    *v81 = 0;
    v81[8] = 1;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_perimeterRotateOnceAction) = 0;
    v82 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_intermediatePosition);
    *v82 = 0;
    *(v82 + 1) = 0;
    v82[16] = 1;
    v83 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_relativeHeading);
    *v83 = 0;
    v83[8] = 1;
    v19 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetXSpring) = 0;
    v84 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffsetYSpring) = 0;
    v85 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactorSpring) = 0;
    v86 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_explodedPosition);
    *v86 = 0;
    *(v86 + 1) = 0;
    v86[16] = 1;
    v87 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition);
    *v87 = 0;
    *(v87 + 1) = 0;
    v87[16] = 1;
    v88 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition);
    *v88 = 0;
    *(v88 + 1) = 0;
    v88[16] = 1;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_useAlternateScaling) = 0;
    v89 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationTimingFunction);
    *v89 = 0u;
    *(v89 + 1) = 0u;
    v89[32] = 1;
    v21 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformedToExplodedFactor);
    *v21 = 0;
    v21[8] = 1;
    a1 = a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor;
    *a1 = 0;
    *(a1 + 8) = 1;
    v20 = a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_scalingFactor;
    *v20 = 0;
    *(v20 + 8) = 1;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceScatterOffset) = 1;
    v22 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset);
    *v22 = 0;
    *(v22 + 1) = 0;
    *(v22 + 16) = 1;
    v90 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset);
    *v90 = 0;
    *(v90 + 1) = 0;
    v90[16] = 1;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_shouldApplyDisturbanceHomingFactor) = 1;
    v91 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor);
    *v91 = 0;
    v91[8] = 1;
    v92 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor);
    *v92 = 0;
    v92[8] = 1;
    v93 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_trackOffset);
    *v93 = 0;
    v93[8] = 1;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedAbsoluteHeading) = 0;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_experienceType) = v76;
    v250 = v84;
    v252 = v85;
    if (v76 == 1)
    {
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v101 = 1;
      LOBYTE(v274) = 1;
      LOBYTE(v271) = 1;
      v270[0] = 1;
      v285 = 1;
      v284 = 1;
      v283 = 0;
      v282 = 0;
      v281 = 0;
      v280 = 0;
      v279 = 0;
      v278 = 0;
      v102 = 0x4010000000000000;
      v103 = 0;
      v104 = 0x3FF8000000000000;
      v105 = 0x3FF0000000000000;
      v106 = 0;
      v107 = 0x4004000000000000;
      v108 = 0.0;
      v109 = 0.6;
    }

    else
    {
      v101 = 0;
      v107 = 0;
      v105 = 0;
      v104 = 0;
      v102 = 0;
      LOBYTE(v274) = 0;
      LOBYTE(v271) = 0;
      v270[0] = 0;
      v285 = 0;
      v284 = 0;
      v98 = 1;
      v283 = 1;
      v282 = 1;
      v281 = 1;
      v280 = 1;
      v279 = 1;
      v278 = 1;
      v97 = 0x3FF0000000000000;
      v103 = 1;
      v96 = 0x3FE6666666666666;
      v109 = 1.0;
      v108 = 0.75;
      v94 = 0x3FB999999999999ALL;
      v106 = 1;
      v95 = 30;
      v99 = 1;
      v100 = 1;
    }

    v110 = v278;
    v111 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_style);
    *v111 = xmmword_26D0D44D0;
    *(v111 + 1) = xmmword_26D0D44E0;
    *(v111 + 2) = v234;
    *(v111 + 6) = 16;
    *(v111 + 7) = v108;
    *(v111 + 4) = xmmword_26D0D4470;
    *(v111 + 5) = xmmword_26D0D44F0;
    *(v111 + 12) = v109;
    *(v111 + 13) = 0x3FF0000000000000;
    *(v111 + 14) = v94;
    v111[120] = v101;
    *(v111 + 121) = v295[0];
    *(v111 + 31) = *(v295 + 3);
    *(v111 + 16) = v95;
    v111[136] = v101;
    *(v111 + 35) = *&v294[3];
    *(v111 + 137) = *v294;
    *(v111 + 18) = 0;
    v111[152] = v101;
    *(v111 + 39) = *&v293[3];
    *(v111 + 153) = *v293;
    *(v111 + 20) = v96;
    v111[168] = v101;
    *(v111 + 43) = *&v292[3];
    *(v111 + 169) = *v292;
    *(v111 + 22) = v97;
    v111[184] = v101;
    v112 = *v291;
    *(v111 + 47) = *&v291[3];
    *(v111 + 185) = v112;
    *(v111 + 24) = v105;
    v111[200] = v98;
    v113 = *v290;
    *(v111 + 51) = *&v290[3];
    *(v111 + 201) = v113;
    *(v111 + 26) = v105;
    v111[216] = v99;
    v114 = *v289;
    *(v111 + 55) = *&v289[3];
    *(v111 + 217) = v114;
    *(v111 + 28) = v107;
    v111[232] = v100;
    v115 = *v288;
    *(v111 + 59) = *&v288[3];
    *(v111 + 233) = v115;
    *(v111 + 30) = v105;
    v111[248] = v103;
    v116 = *v287;
    *(v111 + 63) = *&v287[3];
    *(v111 + 249) = v116;
    *(v111 + 32) = v104;
    v111[264] = v106;
    v117 = *v286;
    *(v111 + 67) = *&v286[3];
    *(v111 + 265) = v117;
    *(v111 + 34) = 0x3FE0000000000000;
    *(v111 + 35) = v102;
    v118 = a2;
    v111[288] = v110;
    if (!a2)
    {
      v118 = [objc_opt_self() whiteColor];
    }

    v119 = (1.0 - v70) * a10;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_renderingColor) = v118;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_explodedDiskRadius) = v119;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralDiskRadius) = a10;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_innerPeripheralDiskRadius) = v119;
    if (v76 == 1)
    {
      v120 = one-time initialization token for r1NoAR;
      v121 = a2;
      v122 = &xmmword_2804DD298 + 8;
      if (v120 != -1)
      {
        swift_once();
        v122 = &xmmword_2804DD298 + 8;
      }
    }

    else
    {
      v123 = one-time initialization token for r1OrBT;
      v124 = a2;
      v122 = &xmmword_2804DD1C8 + 8;
      if (v123 != -1)
      {
        swift_once();
        v122 = &xmmword_2804DD1C8 + 8;
      }
    }

    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle) = *v122;
    *v21 = 0;
    v21[8] = 0;
    *a1 = v235;
    *(a1 + 8) = 0;
    *v20 = 0;
    *(v20 + 8) = 0;
    *v91 = 0;
    v91[8] = 0;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_minScaleFactor) = v240;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_maxScaleFactor) = v241;
    v125 = *(v111 + 8);
    v126 = *(v111 + 9);
    v127 = v125 * (1.0 - v126);
    if (v127 < 0.0)
    {
      v127 = 0.0;
    }

    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformedBrightness) = (1.0 - v74) * v127 + v74 * fmin(v125 * (v126 + 1.0), 1.0);
    v128 = *(v111 + 10);
    v129 = *(v111 + 11);
    v130 = v128 * (1.0 - v129);
    if (v130 < 0.0)
    {
      v130 = 0.0;
    }

    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_nonConformedBrightness) = (1.0 - v74) * v130 + v74 * fmin(v128 * (v129 + 1.0), 1.0);
    v131 = fmax(*(v111 + 2) / 200.0 * a10, 1.0);
    a7 = v131 + v131;
    if (COERCE__INT64(fabs(v131 + v131)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_145;
    }

    v132 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001);
    v133 = a7 * vcvtd_n_f64_u64(v132, 0x35uLL) - v131;
    if (v132 == 0x20000000000000)
    {
      a6 = v131;
    }

    else
    {
      a6 = v133;
    }

    v134 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001);
    v135 = a7 * vcvtd_n_f64_u64(v134, 0x35uLL) - v131;
    if (v134 == 0x20000000000000)
    {
      v135 = v131;
    }

    v136 = (a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialDisturbanceScatterOffset);
    *v136 = a6;
    v136[1] = v135;
    *v22 = a6;
    *(v22 + 1) = v135;
    *(v22 + 16) = 0;
    if ((v111[136] & 1) == 0)
    {
      v137 = specialized static FMPFFluidSpring.slowSpringWith(initialValue:stableValueThreshold:)(*&a6, 0, 0x3FE0000000000000, 0);
      v138 = *&v19[a3];
      *&v19[a3] = v137;

      if (v22[1])
      {
        v139 = 0;
      }

      else
      {
        v139 = *(v22 + 1);
      }

      v140 = specialized static FMPFFluidSpring.slowSpringWith(initialValue:stableValueThreshold:)(v139, *(v22 + 16), 0x3FE0000000000000, 0);
      v141 = *(a3 + v250);
      *(a3 + v250) = v140;

      v142 = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(*v91, v91[8], 0x3F847AE147AE147BLL, 0, 0, 1);
      v143 = *(a3 + v252);
      *(a3 + v252) = v142;
    }

    a8 = v71.__cosval * v119;
    a9 = v71.__sinval * v119;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_headingSpring) = specialized static FMPFFluidSpring.randomSpringWith(initialValue:randomFactor:stableValueThreshold:)(0, 0, *&v74, 0, 0x3FE0000000000000, 0);
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_noiseSubSpring) = specialized static FMPFFluidSpring.lazySpringWith(initialValue:stableValueThreshold:)(0, 0, 0, 1);
    v144._object = 0x800000026D0DD0C0;
    v144._countAndFlagsBits = 0xD000000000000015;
    isa = FMPFTexture(name:)(v144).super.isa;
    v146 = [objc_allocWithZone(ObjCClassFromMetadata) initWithTexture_];
    v147 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_dotNode;
    *(a3 + OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_dotNode) = v146;
    v148 = v146;
    [v148 size];
    a7 = 0.5;
    v150 = 0.5 - 1.0 / v149 * 0.5;
    [*(a3 + v147) size];
    v152 = 0.5 - 1.0 / v151 * 0.5;
    [*(a3 + v147) size];
    v154 = 1.0 / v153;
    [*(a3 + v147) size];
    [v148 setCenterRect_];

    v277.receiver = a3;
    v277.super_class = v258;
    v156 = objc_msgSendSuper2(&v277, sel_init);
    v157 = MEMORY[0x26D6B1210](v261, *(&v261 + 1));

    [v156 setName_];

    v158 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_gimbalNode;
    [v156 addChild_];
    v159 = *&v156[v158];
    v160 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_dotNode;
    [v159 addChild_];
    [*&v156[v160] setColorBlendFactor_];
    [*&v156[v160] setPosition_];
    v161 = &v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_explodedPosition];
    *v161 = a8;
    v161[1] = a9;
    *(v161 + 16) = 0;
    v22 = &v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_peripheralPosition];
    *v22 = a8;
    *(v22 + 1) = a9;
    *(v22 + 16) = 0;
    v162 = &v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_composedPosition];
    *v162 = v255;
    v162[1] = v256;
    *(v162 + 16) = 0;
    v163 = &v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialPeripheralPosition];
    *v163 = a8;
    v163[1] = a9;
    *(v163 + 16) = 0;
    v164 = &v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_initialExplodedPosition];
    *v164 = a8;
    v164[1] = a9;
    *(v164 + 16) = 0;
    *&v165 = COERCE_DOUBLE(FMPFSKPatternFragmentNode.calculateIntermediatePosition()());
    if (v167)
    {
      v168 = a8;
    }

    else
    {
      v168 = *&v165;
    }

    if (v167)
    {
      v169 = a9;
    }

    else
    {
      v169 = v166;
    }

    v21 = &v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_intermediatePosition];
    *v21 = v168;
    *(v21 + 1) = v169;
    v21[16] = 0;
    v170 = *(v162 + 16);
    v171 = 0.0;
    if ((v170 & 1) == 0)
    {
      a8 = *v162;
      a9 = v162[1];
      v262 = v169;
      v266 = v168;
      *&v186 = COERCE_DOUBLE(FMPFSKPatternFragmentNode.controlPoint(with:trackOffset:)(*v162));
      v188 = v187;
      v189 = OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_travelingStyle;
      v259 = *&v186;
      v191 = v190;
      v192 = a9;
      a6 = a8;
      for (i = 1; i != 17; ++i)
      {
        v196 = vcvtd_n_f64_u64(i, 4uLL);
        a7 = 1.0 - v196;
        if (v156[v189])
        {
          v197 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v197)
          {
            goto LABEL_118;
          }

          if (!v156[v189] || v156[v189] != 1)
          {
            v198 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v198 & 1) == 0)
            {
              goto LABEL_110;
            }

            goto LABEL_118;
          }
        }

LABEL_118:
        if ((v188 & 1) == 0)
        {
          v194 = a7 * (v196 * v259 + a6 * a7) + v196 * (v196 * v266 + a7 * v259);
          v195 = a7 * (v196 * v191 + v192 * a7) + v196 * (v196 * v262 + a7 * v191);
          goto LABEL_111;
        }

LABEL_110:
        v194 = v196 * v266 + a6 * a7;
        v195 = v196 * v262 + v192 * a7;
LABEL_111:
        v171 = v171 + sqrt((v194 - a8) * (v194 - a8) + (v195 - a9) * (v195 - a9));
        a9 = v195;
        a8 = v194;
      }
    }

    a1 = &OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength;
    v172 = &v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_curveLength];
    *v172 = v171;
    *(v172 + 8) = v170;
    v173 = specialized FMPFSKPatternFragmentNode.arcLength(from:endPoint:)(*v21, *(v21 + 1), v21[16], *v22, *(v22 + 1), *(v22 + 16));
    v174 = &v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_arcLength];
    *v174 = v173;
    v174[8] = v175 & 1;
    v20 = &v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor];
    if ((v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_conformationFactor + 8] & 1) == 0)
    {
      FMPFSKPatternFragmentNode.applyConformationFactor(_:)(*v20);
    }

    a10 = v232;
    if ((v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_scalingFactor + 8] & 1) == 0)
    {
      FMPFSKPatternFragmentNode.applyScalingFactor(_:)(*&v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_scalingFactor]);
    }

    if ((v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset + 16] & 1) == 0)
    {
      v176 = &v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceScatterOffset];
      *v176 = *&v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceScatterOffset];
      v176[16] = 0;
      if ((*(v20 + 8) & 1) == 0)
      {
        FMPFSKPatternFragmentNode.applyConformationFactor(_:)(*v20);
      }
    }

    if ((v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor + 8] & 1) == 0)
    {
      v177 = &v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_presentedDisturbanceHomingFactor];
      *v177 = *&v156[OBJC_IVAR____TtC10TVRemoteUI25FMPFSKPatternFragmentNode_disturbanceHomingFactor];
      v177[8] = 0;
    }

    [v156 setZPosition_];

    [v246 addChild_];
    v19 = v156;
    MEMORY[0x26D6B1320]();
    if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    a3 = v297;
    if ((v239 & 1) == 0 && (*(v230 + 80) & 1) == 0 && (*(v230 + 16) & 1) == 0 && *(v230 + 96) != 1)
    {
      v179 = *(v230 + 8);
      v180 = v179 + 1;
      if (__OFADD__(v179, 1))
      {
        goto LABEL_146;
      }

      v181 = *(v230 + 88);
      v182 = v180 * v181;
      if ((v180 * v181) >> 64 != (v180 * v181) >> 63)
      {
        goto LABEL_147;
      }

      if (!v182)
      {
        goto LABEL_148;
      }

      if (!(v243 % v182))
      {
        break;
      }
    }

LABEL_136:

    v59 = v247;
    if (v254 == v245)
    {
      goto LABEL_139;
    }

    v65 = v254 + 1;
    v20 = v254;
    if (v254 >= *(v231 + 16))
    {
      goto LABEL_142;
    }
  }

  a8 = v243;
  a9 = round((v228 * v243 + *(v230 + 72)) * 10.0) / 10.0;
  v183 = a9 * 10.0;
  if (COERCE_UNSIGNED_INT64(fabs(a9 * 10.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v183 <= -9.22337204e18)
    {
      goto LABEL_153;
    }

    if (v183 >= 9.22337204e18)
    {
      goto LABEL_154;
    }

    v184 = v183;
    v185 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v185 setNumberStyle_];
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v184 + 0x1999999999999998, 1) <= 0x1999999999999998uLL)
    {
      [v185 setMaximumFractionDigits_];
    }

    else
    {
      [v185 setMinimumFractionDigits_];
      [v185 setMaximumFractionDigits_];
    }

    v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v199 = [v185 stringFromNumber_];

    if (v199)
    {
      v263 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v251 = v200;

      v201 = *(v249 + v244);
      v202 = *(v230 + 136);
      v274 = *(v230 + 120);
      v275 = v202;
      *v276 = *(v230 + 152);
      *&v276[9] = *(v230 + 161);
      v253 = type metadata accessor for FMPFSKLabelNode();
      v203 = objc_allocWithZone(v253);
      v203[OBJC_IVAR____TtC10TVRemoteUI15FMPFSKLabelNode_experienceType] = v201;
      v204 = *(&v274 + 1);
      if (*(&v274 + 1))
      {
        v205 = v274;
        a9 = *(&v275 + 1);
        v206 = v275;
        v208 = *&v276[8];
        v207 = *v276;
        v209 = *&v276[16];
        v210 = v276[24];
      }

      else
      {
        if (one-time initialization token for r1NoAR != -1)
        {
          swift_once();
        }

        *&v273[9] = *(&xmmword_2804DCFF0 + 9);
        v272 = xmmword_2804DCFE0;
        *v273 = xmmword_2804DCFF0;
        v271 = static FMPFSKLabelNodeStyle.r1NoAR;
        v208 = *(&xmmword_2804DCFF0 + 1);
        *&v209 = *(&xmmword_2804DCFF0 + 9) >> 56;
        v210 = byte_2804DD008;
        v267 = xmmword_2804DCFF0;
        a9 = *(&xmmword_2804DCFE0 + 1);
        v204 = *(&static FMPFSKLabelNodeStyle.r1NoAR + 1);
        v206 = xmmword_2804DCFE0;
        v205 = static FMPFSKLabelNodeStyle.r1NoAR;
        outlined init with copy of FMPFSKLabelNodeStyle(&v271, v270);
        v207 = v267;
      }

      v268 = v207;
      *&v271 = v205;
      *(&v271 + 1) = v204;
      *&v272 = v206;
      *(&v272 + 1) = a9;
      *v273 = v207;
      *&v273[8] = v208;
      *&v273[16] = v209;
      v260 = v210;
      v273[24] = v210 & 1;
      v211 = &v203[OBJC_IVAR____TtC10TVRemoteUI15FMPFSKLabelNode_style];
      v212 = v271;
      v213 = v272;
      v214 = *v273;
      *(v211 + 41) = *&v273[9];
      v211[1] = v213;
      v211[2] = v214;
      *v211 = v212;
      *&v203[OBJC_IVAR____TtC10TVRemoteUI15FMPFSKLabelNode_normalizedIndex] = 1.0 - a8 / v227;
      v215 = objc_allocWithZone(MEMORY[0x277CDCF48]);
      outlined init with copy of FMPFSKLabelNodeStyle?(&v274, v270);
      outlined init with copy of FMPFSKLabelNodeStyle(&v271, v270);
      v216 = MEMORY[0x26D6B1210](v205, v204);
      v217 = [v215 initWithFontNamed_];

      [v217 setFontSize_];
      [v217 setFontColor_];
      v218 = v203;
      v21 = v263;
      v219 = MEMORY[0x26D6B1210](v263, v251);
      [v217 setText_];

      [v217 setVerticalAlignmentMode_];
      [v217 setHorizontalAlignmentMode_];
      [v217 setNumberOfLines_];
      *&v218[OBJC_IVAR____TtC10TVRemoteUI15FMPFSKLabelNode_labelNode] = v217;
      v269.receiver = v218;
      v269.super_class = v253;
      v220 = v217;
      v22 = objc_msgSendSuper2(&v269, sel_init);
      [v22 addChild_];
      v221 = MEMORY[0x26D6B1210](v263, v251);
      [v22 setName_];

      v222._countAndFlagsBits = 49;
      v222._object = 0xE100000000000000;
      LOBYTE(v221) = String.hasSuffix(_:)(v222);

      v223 = 0.0;
      if ((v221 & 1) != 0 && [v220 horizontalAlignmentMode] == 2)
      {
        [v220 fontSize];
        v223 = v224 * -0.125;
      }

      v225 = 0.0;
      if (v260)
      {
        v226 = 0.0;
      }

      else
      {
        v226 = v209;
      }

      if ((v260 & 1) == 0)
      {
        v225 = v208;
      }

      [v22 setPosition_];

      outlined destroy of FMPFSKLabelNodeStyle(&v271);
      [v229 addChild_];
    }

    goto LABEL_136;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
  return result;
}