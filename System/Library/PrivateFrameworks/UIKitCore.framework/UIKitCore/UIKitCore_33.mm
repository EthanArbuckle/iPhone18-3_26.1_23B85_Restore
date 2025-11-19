void sub_188E87920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v17 = sub_188E873E8();
  [v9 addSubview_];
  [v17 bounds];
  v19 = v18;
  [v9 bounds];
  Width = CGRectGetWidth(v85);
  [v9 bounds];
  Height = CGRectGetHeight(v86);
  [v9 bounds];
  v22 = CGRectGetWidth(v87);
  [v9 bounds];
  v23 = CGRectGetHeight(v88);
  v24 = a7 < 0.5;
  a = 1.0;
  v26 = -1.0;
  if (a7 >= 0.5)
  {
    v26 = 1.0;
  }

  v62 = a6;
  v63 = a7;
  v27 = Width * a6 + a8;
  v28 = v26 * (v19 * 0.5) + Height * a7 + a9;
  v64 = a9;
  v65 = -(v26 * v19) - v26 * v23 + a9;
  v66 = v22 * 0.5;
  b = 0.0;
  c = 0.0;
  d = 1.0;
  tx = 0.0;
  ty = 0.0;
  if (v24)
  {
    CGAffineTransformMakeRotation(&v81, 3.14159265);
    a = v81.a;
    b = v81.b;
    c = v81.c;
    d = v81.d;
    tx = v81.tx;
    ty = v81.ty;
  }

  v81.a = a;
  v81.b = b;
  v81.c = c;
  v81.d = d;
  v81.tx = tx;
  v81.ty = ty;
  [v17 setTransform_];
  [v17 setCenter_];
  [v17 setAlpha_];
  v77.a = a;
  v77.b = b;
  v77.c = c;
  v77.d = d;
  v77.tx = tx;
  v77.ty = ty;
  *&v78 = a4;
  *(&v78 + 1) = a5;
  *&v79 = v66;
  *(&v79 + 1) = v65;
  v80 = v17;
  v84 = v17;
  v81 = v77;
  v82 = v78;
  v83 = v79;
  v67 = objc_opt_self();
  v34 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v35 = swift_allocObject();
  v36 = v82;
  *(v35 + 56) = *&v81.tx;
  *(v35 + 72) = v36;
  *(v35 + 88) = v83;
  v37 = *&v81.c;
  *(v35 + 24) = *&v81.a;
  *(v35 + 16) = v34;
  v38 = v84;
  *(v35 + 40) = v37;
  *(v35 + 104) = v38;
  *(v35 + 112) = a2;
  *(v35 + 120) = a3;
  v75 = sub_188E8A4AC;
  v76 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v72 = 1107296256;
  v73 = sub_188A4A8F0;
  v74 = &block_descriptor_19_0;
  v39 = _Block_copy(&aBlock);
  v40 = v17;
  sub_188D738F4(a4);
  sub_188E89E24(&v77, v70);
  sub_188D738F4(a2);

  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  v43 = v82;
  *(v42 + 56) = *&v81.tx;
  *(v42 + 72) = v43;
  *(v42 + 88) = v83;
  v44 = *&v81.c;
  *(v42 + 24) = *&v81.a;
  *(v42 + 16) = v41;
  *(v42 + 104) = v84;
  *(v42 + 40) = v44;
  v75 = sub_188E8A4BC;
  v76 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v72 = 1107296256;
  v73 = sub_188C3DD6C;
  v74 = &block_descriptor_26_0;
  v45 = _Block_copy(&aBlock);
  sub_188E89E24(&v77, v70);

  [v67 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v45);
  _Block_release(v39);
  sub_188E89F28(&v77);
  v46 = &v9[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_configuration];
  swift_beginAccess();
  v47 = *(v46 + 1);
  v48 = objc_opt_self();
  v49 = v47;
  v50 = v9;
  swift_unknownObjectRetain();
  v51 = [v48 clearColor];
  v52 = v51;
  if (!v47)
  {
    if (v51)
    {

      swift_unknownObjectRelease();
      goto LABEL_14;
    }

LABEL_12:
    v54 = sub_188E873E8();
    v55 = *&v50[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_fillView];
    v56 = v54;
    [v50 insertSubview:v56 aboveSubview:v55];
    v57 = [v48 whiteColor];
    v58 = *&v56[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillColor];
    *&v56[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillColor] = v57;
    v59 = v57;

    sub_188E896A8();
    v60 = [v56 layer];

    v61 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    [v60 setCompositingFilter_];

    sub_188E87F40(v56, v50, a1, v62, v63, a8, v64);
    swift_unknownObjectRelease();

    goto LABEL_14;
  }

  if (!v51)
  {

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  sub_188A34624(0, qword_1ED4913C0);
  v53 = sub_18A4A7C88();

  if (v53)
  {
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
LABEL_14:
}

uint64_t sub_188E87F40(void *a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  [a1 bounds];
  v43 = v11;
  [a2 bounds];
  Width = CGRectGetWidth(v63);
  [a2 bounds];
  Height = CGRectGetHeight(v64);
  [a2 bounds];
  v39 = CGRectGetWidth(v65);
  [a2 bounds];
  v12 = CGRectGetHeight(v66);
  v13 = 0.5;
  v14 = a5;
  if (a5 >= 0.5)
  {
    b = 0.0;
    v19 = 1.0;
    a = 1.0;
    c = 0.0;
    d = 1.0;
    tx = 0.0;
    ty = 0.0;
  }

  else
  {
    CGAffineTransformMakeRotation(&v59, 3.14159265);
    v13 = 0.5;
    a = v59.a;
    b = v59.b;
    c = v59.c;
    d = v59.d;
    v19 = -1.0;
    tx = v59.tx;
    ty = v59.ty;
  }

  v37 = -(v19 * v43) - v12 * v19 + a7;
  v40 = v39 * v13;
  v22 = Height * v14 + v43 * v13 * v19 + a7;
  v59.a = a;
  v59.b = b;
  v59.c = c;
  v59.d = d;
  v59.tx = tx;
  v59.ty = ty;
  [a1 setTransform_];
  [a1 setCenter_];
  [a1 setAlpha_];
  v54.a = a;
  v54.b = b;
  v54.c = c;
  v54.d = d;
  v54.tx = tx;
  v54.ty = ty;
  v55 = 0;
  v56 = 0;
  *&v57 = v40;
  *(&v57 + 1) = v38;
  v58 = a1;
  v62 = a1;
  v59 = v54;
  v60 = 0u;
  v61 = v57;
  v23 = objc_opt_self();
  v24 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v25 = swift_allocObject();
  v26 = v60;
  *(v25 + 56) = *&v59.tx;
  *(v25 + 72) = v26;
  *(v25 + 88) = v61;
  v27 = *&v59.c;
  *(v25 + 24) = *&v59.a;
  *(v25 + 16) = v24;
  v28 = v62;
  *(v25 + 40) = v27;
  *(v25 + 112) = 0;
  *(v25 + 120) = 0;
  *(v25 + 104) = v28;
  v52 = sub_188E8AAAC;
  v53 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_188A4A8F0;
  v51 = &block_descriptor_69_0;
  v29 = _Block_copy(&aBlock);
  v30 = a1;
  sub_188E89E24(&v54, v47);

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v33 = v60;
  *(v32 + 56) = *&v59.tx;
  *(v32 + 72) = v33;
  *(v32 + 88) = v61;
  v34 = *&v59.c;
  *(v32 + 24) = *&v59.a;
  *(v32 + 16) = v31;
  *(v32 + 104) = v62;
  *(v32 + 40) = v34;
  v52 = sub_188E8AAA4;
  v53 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_188C3DD6C;
  v51 = &block_descriptor_77;
  v35 = _Block_copy(&aBlock);
  sub_188E89E24(&v54, v47);

  [v23 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v35);
  _Block_release(v29);
  return sub_188E89F28(&v54);
}

id UIDirectionalLightEffectView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void *UIDirectionalLightEffectView.Configuration.washColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t UIDirectionalLightEffectView.Configuration.init(fillColor:washColor:scaleFactor:spreadFactor:sparklePalette:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v8 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a7;
  *(a4 + 40) = a8;
  *(a4 + 48) = v8;
  return result;
}

uint64_t sub_188E8853C()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  v2 = [v0 darkGrayColor];
  if (qword_1EA92EB08 != -1)
  {
    v9 = v2;
    swift_once();
    v2 = v9;
  }

  qword_1EA92EB40 = v1;
  *algn_1EA92EB48 = v2;
  __asm { FMOV            V0.2D, #3.0 }

  xmmword_1EA92EB50 = _Q0;
  unk_1EA92EB60 = _Q0;
  qword_1EA92EB70 = qword_1EA92EB10;
}

id static UIDirectionalLightEffectView.Configuration.pondering.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA92EB38 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EA92EB48;
  v7 = qword_1EA92EB40;
  v2 = qword_1EA92EB70;
  *a1 = qword_1EA92EB40;
  *(a1 + 8) = v1;
  v3 = unk_1EA92EB60;
  *(a1 + 16) = xmmword_1EA92EB50;
  *(a1 + 32) = v3;
  *(a1 + 48) = v2;
  v4 = v1;

  return v7;
}

uint64_t sub_188E886A8()
{
  v0 = objc_opt_self();
  v1 = [v0 clearColor];
  v2 = [v0 labelColor];
  v3 = [v2 colorWithAlphaComponent_];

  if (qword_1EA92EB20 != -1)
  {
    swift_once();
  }

  qword_1EA92EB88 = v1;
  unk_1EA92EB90 = v3;
  __asm { FMOV            V0.2D, #3.0 }

  xmmword_1EA92EB98 = _Q0;
  unk_1EA92EBA8 = _Q0;
  qword_1EA92EBB8 = qword_1EA92EB28;
}

id static UIColor.ponderingFill.getter()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [v0 colorWithAlphaComponent_];

  return v1;
}

id static UIDirectionalLightEffectView.Configuration.placeholderPondering.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA92EB80 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EA92EB90;
  v7 = qword_1EA92EB88;
  v2 = qword_1EA92EBB8;
  *a1 = qword_1EA92EB88;
  *(a1 + 8) = v1;
  v3 = unk_1EA92EBA8;
  *(a1 + 16) = xmmword_1EA92EB98;
  *(a1 + 32) = v3;
  *(a1 + 48) = v2;
  v4 = v1;

  return v7;
}

uint64_t sub_188E888A4()
{
  v0 = objc_opt_self();
  v1 = [v0 grayColor];
  v2 = [v0 clearColor];
  if (qword_1EA92F268 != -1)
  {
    v9 = v2;
    swift_once();
    v2 = v9;
  }

  qword_1EA934CC8 = v1;
  unk_1EA934CD0 = v2;
  __asm { FMOV            V0.2D, #3.0 }

  xmmword_1EA934CD8 = _Q0;
  unk_1EA934CE8 = _Q0;
  qword_1EA934CF8 = qword_1EA92F270;
}

id static UIDirectionalLightEffectView.Configuration.replacementOut.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA931CD8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EA934CD0;
  v7 = qword_1EA934CC8;
  v2 = qword_1EA934CF8;
  *a1 = qword_1EA934CC8;
  *(a1 + 8) = v1;
  v3 = unk_1EA934CE8;
  *(a1 + 16) = xmmword_1EA934CD8;
  *(a1 + 32) = v3;
  *(a1 + 48) = v2;
  v4 = v1;

  return v7;
}

uint64_t sub_188E88A10()
{
  v0 = objc_opt_self();
  v1 = [v0 clearColor];
  v2 = [v0 labelColor];
  if (qword_1EA92F280 != -1)
  {
    v9 = v2;
    swift_once();
    v2 = v9;
  }

  qword_1EA92F298 = v1;
  unk_1EA92F2A0 = v2;
  __asm { FMOV            V0.2D, #3.0 }

  xmmword_1EA92F2A8 = _Q0;
  unk_1EA92F2B8 = _Q0;
  qword_1EA92F2C8 = qword_1EA92F288;
}

id static UIDirectionalLightEffectView.Configuration.replacementIn.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA92F290 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EA92F2A0;
  v7 = qword_1EA92F298;
  v2 = qword_1EA92F2C8;
  *a1 = qword_1EA92F298;
  *(a1 + 8) = v1;
  v3 = unk_1EA92F2B8;
  *(a1 + 16) = xmmword_1EA92F2A8;
  *(a1 + 32) = v3;
  *(a1 + 48) = v2;
  v4 = v1;

  return v7;
}

id sub_188E88B7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64E3D0;
  *(v0 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.804 green:0.612 blue:0.867 alpha:1.0];
  *(v0 + 40) = [objc_allocWithZone(UIColor) initWithRed:0.682 green:0.51 blue:0.796 alpha:1.0];
  *(v0 + 48) = [objc_allocWithZone(UIColor) initWithRed:0.686 green:0.421 blue:0.87 alpha:1.0];
  *(v0 + 56) = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.796 blue:1.0 alpha:1.0];
  result = [objc_allocWithZone(UIColor) initWithRed:0.682 green:0.51 blue:0.796 alpha:0.0];
  *(v0 + 64) = result;
  qword_1EA92EB10 = v0;
  return result;
}

id sub_188E88CD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64E3E0;
  *(v0 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.804 green:0.612 blue:0.867 alpha:1.0];
  *(v0 + 40) = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.796 blue:1.0 alpha:1.0];
  result = [objc_allocWithZone(UIColor) initWithRed:0.682 green:0.51 blue:0.796 alpha:0.0];
  *(v0 + 48) = result;
  qword_1EA92EB28 = v0;
  return result;
}

id sub_188E88DEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64E3E0;
  *(v0 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.925 green:0.553 blue:0.918 alpha:1.0];
  *(v0 + 40) = [objc_allocWithZone(UIColor) initWithRed:0.604 green:0.431 blue:0.843 alpha:1.0];
  result = [objc_allocWithZone(UIColor) initWithRed:0.604 green:0.431 blue:0.843 alpha:0.0];
  *(v0 + 48) = result;
  qword_1EA92F270 = v0;
  return result;
}

id sub_188E88F14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64E3D0;
  *(v0 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.475 green:0.345 blue:0.773 alpha:1.0];
  *(v0 + 40) = [objc_allocWithZone(UIColor) initWithRed:0.812 green:0.518 blue:0.4 alpha:1.0];
  *(v0 + 48) = [objc_allocWithZone(UIColor) initWithRed:0.945 green:0.678 blue:0.388 alpha:1.0];
  *(v0 + 56) = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:1.0];
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:1.0];
  *(v0 + 64) = result;
  qword_1EA92F288 = v0;
  return result;
}

uint64_t sub_188E8906C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

uint64_t UIDirectionalLightEffectView.IdleTimer.init(timeInterval:repeats:block:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *(a4 + 16) = a5;
  *(a4 + 24) = result;
  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

char *sub_188E890D8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillColor;
  v10 = objc_opt_self();
  *&v4[v9] = [v10 clearColor];
  v11 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_gradientColors;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18A64E3F0;
  *(v12 + 32) = [v10 blackColor];
  *(v12 + 40) = [v10 whiteColor];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_gradientView;
  *&v4[v13] = [objc_allocWithZone(_UIGradientView) initWithFrame_];
  v14 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_clippingView;
  *&v4[v14] = [objc_allocWithZone(UIView) initWithFrame_];
  v15 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_clippingMaskView;
  *&v4[v15] = [objc_allocWithZone(_UIGradientView) initWithFrame_];
  v16 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillView;
  *&v4[v16] = [objc_allocWithZone(_UIGradientView) initWithFrame_];
  v17 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillTrailView;
  *&v4[v17] = [objc_allocWithZone(UIView) initWithFrame_];
  v40.receiver = v4;
  v40.super_class = type metadata accessor for UIDirectionalLightEffectView.WaveView();
  v18 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a1, a2, a3, a4);
  [v18 setUserInteractionEnabled_];
  v19 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillView;
  v20 = [*&v18[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillView] gradientLayer];
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18A64E3E0;
  sub_188A34624(0, &qword_1ED48FD80);
  *(v21 + 32) = sub_18A4A7C48();
  *(v21 + 40) = sub_18A4A7C48();
  *(v21 + 48) = sub_18A4A7C48();
  v22 = sub_18A4A7518();

  [v20 setLocations_];

  v23 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_clippingMaskView;
  v24 = [*&v18[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_clippingMaskView] gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_18A64BFA0;
  v26 = [v10 blackColor];
  v27 = [v26 CGColor];

  type metadata accessor for CGColor(0);
  v29 = v28;
  *(v25 + 56) = v28;
  *(v25 + 32) = v27;
  v30 = [v10 clearColor];
  v31 = [v30 CGColor];

  *(v25 + 88) = v29;
  *(v25 + 64) = v31;
  v32 = sub_18A4A7518();

  [v24 setColors_];

  v33 = [*&v18[v23] gradientLayer];
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_18A64E3F0;
  *(v34 + 32) = sub_18A4A7C48();
  *(v34 + 40) = sub_18A4A7C48();
  v35 = sub_18A4A7518();

  [v33 setLocations_];

  [v18 addSubview_];
  [v18 addSubview_];
  v36 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_clippingView;
  [*&v18[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_clippingView] setClipsToBounds_];
  [*&v18[v36] setMaskView_];
  [v18 addSubview_];
  v37 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_gradientView;
  v38 = [*&v18[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_gradientView] gradientLayer];
  [v38 setStartPoint_];
  [v38 setEndPoint_];
  [v38 setType_];
  [*&v18[v36] addSubview_];
  sub_188E896A8();
  sub_188E89808();

  return v18;
}

id sub_188E896A8()
{
  v1 = [*(v0 + OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillView) gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18A64BFA0;
  v3 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillColor;
  v4 = [*(v0 + OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillColor) colorWithAlphaComponent_];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v2 + 56) = v6;
  *(v2 + 32) = v5;
  v8 = [*(v0 + v3) CGColor];
  *(v2 + 88) = v7;
  *(v2 + 64) = v8;
  v9 = sub_18A4A7518();

  [v1 setColors_];

  v10 = *(v0 + OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillTrailView);
  v11 = *(v0 + v3);

  return [v10 setBackgroundColor_];
}

void sub_188E89808()
{
  v1 = [*(v0 + OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_gradientView) gradientLayer];
  v2 = *(v0 + OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_gradientColors);
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v3)
  {
    v15 = MEMORY[0x1E69E7CC0];

    sub_188B221A4(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      v5 = v15;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = sub_188E48DA0(v4, v2);
        }

        else
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_17:
            __break(1u);
LABEL_18:
            v3 = sub_18A4A7F68();
            goto LABEL_3;
          }

          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v6 = *(v2 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = [v6 CGColor];
        type metadata accessor for CGColor(0);
        v14 = v9;

        *&v13 = v8;
        v15 = v5;
        v11 = *(v5 + 16);
        v10 = *(v5 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_188B221A4((v10 > 1), v11 + 1, 1);
          v5 = v15;
        }

        ++v4;
        *(v5 + 16) = v11 + 1;
        sub_188A55538(&v13, (v5 + 32 * v11 + 32));
        if (v3 == v4)
        {

          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v12 = sub_18A4A7518();

    [v1 setColors_];
  }
}

id sub_188E899F0()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for UIDirectionalLightEffectView.WaveView();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_gradientView];
  [v0 bounds];
  [v1 setFrame_];
  [v0 bounds];
  Width = CGRectGetWidth(v10);
  [v0 bounds];
  v3 = CGRectGetHeight(v11) * 0.5;
  [*&v0[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_clippingView] setFrame_];
  [*&v0[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_clippingMaskView] setFrame_];
  v4 = *&v0[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillView];
  [v0 bounds];
  [v4 setFrame_];
  v5 = *&v0[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillTrailView];
  [v0 bounds];
  Height = CGRectGetHeight(v12);
  [v0 bounds];
  v7 = CGRectGetWidth(v13);
  [v0 bounds];
  return [v5 setFrame_];
}

id sub_188E89BCC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void (*UIDirectionalLightEffectView.isPaused.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView__isPaused;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_188E89CF4;
}

void (*sub_188E89D40(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView__isPaused;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_188E89CF4;
}

id sub_188E89D74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  CGAffineTransformMakeScale(&t1, 3.0, 1.0);
  v4 = *&t1.a;
  v5 = *&t1.c;
  v6 = *&t1.tx;
  v7 = *(a2 + 16);
  *&t1.a = *a2;
  *&t1.c = v7;
  *&t1.tx = *(a2 + 32);
  *&t2.a = v4;
  *&t2.c = v5;
  *&t2.tx = v6;
  CGAffineTransformConcat(&v9, &t1, &t2);
  t1 = v9;
  [v3 setTransform_];
  return [v3 setCenter_];
}

void sub_188E89E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_configuration;
    swift_beginAccess();
    if (*(v6 + 8))
    {
      [*&v5[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_fillView] setBackgroundColor_];
    }

    v7 = [*(a3 + 80) removeFromSuperview];
    v8 = *(a3 + 48);
    if (v8)
    {
      v8(v7);
    }
  }
}

id sub_188E89F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(id))
{
  v5 = *(a2 + 80);
  CGAffineTransformMakeScale(&t1, 3.0, 1.0);
  v6 = *&t1.a;
  v7 = *&t1.c;
  v8 = *&t1.tx;
  v9 = *(a2 + 16);
  *&t1.a = *a2;
  *&t1.c = v9;
  *&t1.tx = *(a2 + 32);
  *&t2.a = v6;
  *&t2.c = v7;
  *&t2.tx = v8;
  CGAffineTransformConcat(&v11, &t1, &t2);
  t1 = v11;
  [v5 setTransform_];
  result = [v5 setCenter_];
  if (a3)
  {
    return a3(result);
  }

  return result;
}

void sub_188E8A018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong + OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_configuration;
    swift_beginAccess();
    if (*(v7 + 8))
    {
      [*&v6[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_fillView] setBackgroundColor_];
    }

    v8 = [*(a4 + 80) removeFromSuperview];
    v9 = *(a4 + 48);
    if (v9)
    {
      v9(v8);
    }
  }
}

void sub_188E8A0D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

Swift::Void __swiftcall UIDirectionalLightEffectView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIDirectionalLightEffectView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_fillView];
  [v0 bounds];
  [v1 setFrame_];
}

Swift::Void __swiftcall UIDirectionalLightEffectView.didMoveToSuperview()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for UIDirectionalLightEffectView();
  objc_msgSendSuper2(&v1, sel_didMoveToSuperview);
  sub_188E8691C();
}

void sub_188E8A2B4(char *a1, void *a2, double a3, double a4, double a5)
{
  v10 = &a1[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_configuration];
  swift_beginAccess();
  v11 = *(v10 + 1);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  v15 = v14;
  if (!v11)
  {
    if (v14)
    {
LABEL_8:

      return;
    }

LABEL_6:
    v17 = sub_188E873E8();
    v18 = *&a1[OBJC_IVAR____TtC5UIKit28UIDirectionalLightEffectView_fillView];
    v15 = v17;
    [a1 insertSubview:v15 aboveSubview:v18];
    v19 = [v12 whiteColor];
    v20 = *&v15[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillColor];
    *&v15[OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillColor] = v19;
    v21 = v19;

    sub_188E896A8();
    v22 = [v15 layer];

    v23 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    [v22 setCompositingFilter_];

    sub_188E8752C(v15, a2, a3, a4, a5);
    goto LABEL_8;
  }

  if (!v14)
  {
    v15 = v13;
    goto LABEL_8;
  }

  sub_188A34624(0, qword_1ED4913C0);
  v16 = sub_18A4A7C88();

  if (v16)
  {
    goto LABEL_6;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_188E8A6C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188E8A710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188E8A788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188E8A7D0(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

void sub_188E8A834()
{
  v1 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillColor;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 clearColor];
  v3 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_gradientColors;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18A64E3F0;
  *(v4 + 32) = [v2 blackColor];
  *(v4 + 40) = [v2 whiteColor];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_gradientView;
  *(v0 + v5) = [objc_allocWithZone(_UIGradientView) initWithFrame_];
  v6 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_clippingView;
  *(v0 + v6) = [objc_allocWithZone(UIView) initWithFrame_];
  v7 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_clippingMaskView;
  *(v0 + v7) = [objc_allocWithZone(_UIGradientView) initWithFrame_];
  v8 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillView;
  *(v0 + v8) = [objc_allocWithZone(_UIGradientView) initWithFrame_];
  v9 = OBJC_IVAR____TtCC5UIKit28UIDirectionalLightEffectViewP33_FFDE3B7A64024E6DED98D26CC792816C8WaveView_fillTrailView;
  *(v0 + v9) = [objc_allocWithZone(UIView) initWithFrame_];
  sub_18A4A8398();
  __break(1u);
}

uint64_t objectdestroy_15Tm()
{

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 112))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

char *UITextField._selectedRanges.getter()
{
  v1 = [v0 _selectedRanges];
  sub_188A34624(0, &qword_1ED48EC30);
  v2 = sub_18A4A7548();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    v4 = 0;
    v18 = v2 & 0xC000000000000001;
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = v2;
    while (1)
    {
      if (v18)
      {
        v8 = sub_188E49AE4(v4, v2);
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v2 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v11 = [v8 rangeValue];
      v13 = v12;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_188E4B6C0(0, *(v6 + 2) + 1, 1, v6);
      }

      v15 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (v15 >= v14 >> 1)
      {
        v6 = sub_188E4B6C0((v14 > 1), v15 + 1, 1, v6);
      }

      *(v6 + 2) = v15 + 1;
      v16 = &v6[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      ++v4;
      v2 = v7;
      if (v10 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v6;
}

void UITextField._selectedRanges.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_18A4A8208();
    v4 = objc_opt_self();
    v5 = (a1 + 40);
    do
    {
      v6 = [v4 valueWithRange_];
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  sub_188A34624(0, &qword_1ED48EC30);
  v7 = sub_18A4A7518();

  [v1 _setSelectedRanges_];
}

void (*UITextField._selectedRanges.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = UITextField._selectedRanges.getter();
  return sub_188E8AE20;
}

void sub_188E8AE20(uint64_t *a1, char a2)
{
  if (a2)
  {

    UITextField._selectedRanges.setter(v2);
  }

  else
  {
    UITextField._selectedRanges.setter(*a1);
  }
}

uint64_t sub_188E8AF40@<X0>(void *a1@<X8>)
{
  sub_18A4A2438();
  if (!v6)
  {
    result = sub_188A3F5FC(v5, &qword_1EA934050);
    goto LABEL_5;
  }

  sub_188A34624(0, &qword_1EA934D60);
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

uint64_t sub_188E8AFEC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_188A34624(0, &qword_1EA934D60);
  v4 = v2;
  v5 = v3;
  return sub_18A4A2428();
}

uint64_t sub_188E8B078(void **a1, uint64_t a2, uint64_t a3, void **a4)
{
  v4 = *a1;
  v5 = *a4;
  sub_188A34624(0, &qword_1EA934D60);
  v6 = v4;
  v7 = v5;
  return sub_18A4A2428();
}

uint64_t UITextField.TextDidEndEditingMessage.reason.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t UITextField.TextDidEndEditingMessage.init(reason:textField:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static UITextField.TextDidEndEditingMessage.makeMessage(_:)@<X0>(void *a1@<X8>)
{
  sub_18A4A2438();
  if (!v11[3])
  {
    result = sub_188A3F5FC(v11, &qword_1EA934050);
    goto LABEL_11;
  }

  sub_188A34624(0, &qword_1EA934D60);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_11:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return result;
  }

  v3 = v12;
  v4 = sub_18A4A2448();
  if (!v4)
  {
LABEL_13:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_14;
  }

  v5 = v4;
  *&v12 = sub_18A4A7288();
  *(&v12 + 1) = v6;
  sub_18A4A8048();
  if (!*(v5 + 16) || (v7 = sub_188BBA050(v11), (v8 & 1) == 0))
  {

    sub_188BBA15C(v11);
    goto LABEL_13;
  }

  sub_188A55598(*(v5 + 56) + 32 * v7, &v12);
  sub_188BBA15C(v11);

  if (*(&v13 + 1))
  {
    type metadata accessor for DidEndEditingReason(0);
    result = swift_dynamicCast();
    v9 = v11[0];
    if (!result)
    {
      v9 = 0;
    }

    v10 = result ^ 1;
    goto LABEL_15;
  }

LABEL_14:
  result = sub_188A3F5FC(&v12, &qword_1EA934050);
  v9 = 0;
  v10 = 1;
LABEL_15:
  *a1 = v9;
  a1[1] = v10;
  a1[2] = v3;
  return result;
}

uint64_t static UITextField.TextDidEndEditingMessage.makeNotification(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = a1[2];
  sub_188A34624(0, &qword_1EA934D60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  sub_18A4A7288();
  v5 = v3;
  v6 = @"UITextFieldTextDidEndEditingNotification";
  sub_18A4A8048();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D70);
  *(inited + 72) = v1;
  *(inited + 80) = v2;
  sub_188E8DA14(inited);
  swift_setDeallocating();
  sub_188A3F5FC(inited + 32, &qword_1EA934D78);
  return sub_18A4A2428();
}

unint64_t sub_188E8B480(uint64_t a1, unsigned __int8 a2)
{
  sub_18A4A8888();
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    MEMORY[0x18CFE37E0](v4);
    sub_18A4A7C98();
  }

  else
  {
    MEMORY[0x18CFE37E0](a2 != 0);
    sub_18A4A7288();
    sub_18A4A7348();
  }

  v5 = sub_18A4A88E8();

  return sub_188E8C088(a1, a2, v5);
}

unint64_t sub_188E8B5AC(uint64_t a1)
{
  sub_18A4A7288();
  sub_18A4A8888();
  sub_18A4A7348();
  v2 = sub_18A4A88E8();

  return sub_188E8CB5C(a1, v2);
}

unint64_t sub_188E8B63C(uint64_t a1)
{
  sub_18A4A8888();
  MEMORY[0x18CFE3810](a1);
  v2 = sub_18A4A88E8();

  return sub_188A41228(a1, v2);
}

unint64_t sub_188E8B6A8(__int16 a1)
{
  sub_18A4A8888();
  sub_1890EB498();
  v2 = sub_18A4A88E8();

  return sub_188E8C234(a1, v2);
}

unint64_t sub_188E8B718(uint64_t a1, uint64_t a2)
{
  sub_18A4A8888();
  if (a2 < 0)
  {
    MEMORY[0x18CFE37E0](1);
    MEMORY[0x18CFE37E0](a1);
    sub_18A4A7E18();
    sub_18A4A71A8();
  }

  else
  {
    MEMORY[0x18CFE37E0](0);
    MEMORY[0x18CFE37E0](a1);
  }

  v4 = sub_18A4A88E8();
  return sub_188E8C300(a1, a2, v4);
}

unint64_t sub_188E8B838(uint64_t a1, uint64_t a2)
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  v4 = sub_18A4A88E8();

  return sub_188E8C624(a1, a2, v4);
}

unint64_t sub_188E8B8AC(uint64_t a1, char a2)
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  MEMORY[0x18CFE37E0](a2 & 1);
  v4 = sub_18A4A88E8();

  return sub_188E8C694(a1, a2 & 1, v4);
}

unint64_t sub_188E8B9FC(uint64_t a1)
{
  sub_18A4A29D8();
  v2 = MEMORY[0x1E69695A8];
  sub_188E90698(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
  v3 = sub_18A4A7198();
  return sub_188E8C788(a1, v3, MEMORY[0x1E69695A8], &qword_1EA930B00, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_188E8BAD0(char a1)
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1 & 1);
  v2 = sub_18A4A88E8();
  return sub_188E8C718(a1 & 1, v2);
}

unint64_t sub_188E8BB38(uint64_t a1)
{
  sub_18A4A3538();
  v2 = MEMORY[0x1E69DB9E0];
  sub_188E90698(&qword_1EA934F58, MEMORY[0x1E69DB9E0]);
  v3 = sub_18A4A7198();
  return sub_188E8C788(a1, v3, MEMORY[0x1E69DB9E0], &qword_1EA934F60, v2, MEMORY[0x1E69DB9F0]);
}

unint64_t sub_188E8BC0C(uint64_t a1, uint64_t a2)
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a1);
  MEMORY[0x18CFE37E0](a2);
  v4 = sub_18A4A88E8();

  return sub_188E8C928(a1, a2, v4);
}

unint64_t sub_188E8BC8C(uint64_t *a1)
{
  sub_18A4A8888();
  sub_18A4A7348();
  _s8CacheKeyVMa();
  sub_18A4A2DB8();
  sub_188E904A0();
  sub_18A4A71A8();
  v2 = sub_18A4A88E8();

  return sub_188E8C9A0(a1, v2);
}

unint64_t sub_188E8BD28(uint64_t a1)
{
  sub_18A4A3D18();
  v2 = MEMORY[0x1E69DBC58];
  sub_188E90698(&qword_1EA934F30, MEMORY[0x1E69DBC58]);
  v3 = sub_18A4A7198();
  return sub_188E8C788(a1, v3, MEMORY[0x1E69DBC58], &qword_1EA934F38, v2, MEMORY[0x1E69DBC68]);
}

unint64_t sub_188E8BDFC(uint64_t a1)
{
  sub_18A4A8888();
  sub_18A4A7C98();
  type metadata accessor for CGRect(0);
  sub_18A4A82D8();
  sub_18A4A7348();

  sub_18A4A7348();
  v2 = sub_18A4A88E8();
  return sub_188E8CC60(a1, v2);
}

unint64_t sub_188E8BEEC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  sub_18A4A8888();
  sub_18A4A29D8();
  sub_188E90698(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
  sub_18A4A71A8();
  v6 = sub_18A4A88E8();
  return sub_188E8CE6C(a1, v6, a2, a3);
}

unint64_t sub_188E8BFB4(uint64_t a1)
{
  sub_18A4A5448();
  v2 = MEMORY[0x1E697F7A0];
  sub_188E90698(&unk_1EA938B20, MEMORY[0x1E697F7A0]);
  v3 = sub_18A4A7198();
  return sub_188E8C788(a1, v3, MEMORY[0x1E697F7A0], &qword_1EA934DA8, v2, MEMORY[0x1E697F7B0]);
}

unint64_t sub_188E8C088(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v9 = ~v5;
    do
    {
      v12 = *(v7 + 48) + 16 * v6;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          if (a2 == 2)
          {
            goto LABEL_3;
          }
        }

        else if (a2 == 3)
        {
LABEL_3:
          sub_188A34624(0, &qword_1ED490230);
          v10 = v13;
          v11 = sub_18A4A7C88();

          if (v11)
          {
            return v6;
          }
        }
      }

      else
      {
        if (v14)
        {
          if (a2 != 1)
          {
            goto LABEL_4;
          }
        }

        else if (a2)
        {
          goto LABEL_4;
        }

        v15 = sub_18A4A7288();
        v17 = v16;
        if (v15 == sub_18A4A7288() && v17 == v18)
        {

          return v6;
        }

        v20 = sub_18A4A86C8();

        if (v20)
        {
          return v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_188E8C234(__int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 2 * result);
      v8 = *v7;
      v9 = v7[1];
      if (v9)
      {
        if (v9 == 1)
        {
          if (HIBYTE(a1) != 1)
          {
            goto LABEL_4;
          }
        }

        else if (HIBYTE(a1) != 2)
        {
          goto LABEL_4;
        }
      }

      else if (HIBYTE(a1))
      {
        goto LABEL_4;
      }

      if (v8 == 2)
      {
        if (a1 == 2)
        {
          return result;
        }
      }

      else if (a1 != 2 && (a1 & 1) == (v8 & 1))
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_188E8C300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v10 = ~v5;
    while (1)
    {
      v11 = (*(v7 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      if ((v13 & 0x8000000000000000) == 0)
      {
        break;
      }

      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

      if (v12 != a1)
      {
        sub_188E90558(a1, a2);
        sub_188E90558(v12, v13);
        goto LABEL_10;
      }

      sub_18A4A7E18();
      sub_188E90558(a1, v13);
      sub_188E90558(a1, a2);
      sub_188E90558(a1, v13);
      v14 = MEMORY[0x18CFE2D50](v13 & 0x7FFFFFFFFFFFFFFFLL, a2 & 0x7FFFFFFFFFFFFFFFLL);
      sub_188E90548(a1, v13);
      sub_188E90548(a1, v13);
      sub_188E90548(a1, a2);
      if (v14)
      {
        return v6;
      }

LABEL_4:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_188E90548(*v11, v11[1]);
      sub_188E90548(a1, a2);
      if (v12 == a1)
      {
        return v6;
      }

      goto LABEL_4;
    }

LABEL_9:

LABEL_10:
    sub_188E90548(v12, v13);
    sub_188E90548(a1, a2);
    goto LABEL_4;
  }

  return v6;
}

unint64_t sub_188E8C490(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_188A34624(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_18A4A7C88();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_188E8C55C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    a3(0);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_18A4A7C88();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_188E8C624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      if (*(*(v3 + 48) + 16 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_188E8C694(uint64_t a1, int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      if (!((*(*(v3 + 48) + 16 * result) != a1) | (*(*(v3 + 48) + 16 * result + 8) ^ a2) & 1))
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_188E8C718(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_188E8C788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_188E90698(v24, v25);
      v20 = sub_18A4A7248();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_188E8C928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_188E8C9A0(uint64_t *a1, uint64_t a2)
{
  v5 = _s8CacheKeyVMa();
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = a1[1];
    v14 = *(v6 + 72);
    while (1)
    {
      sub_188E905D0(*(v2 + 48) + v14 * v10, v8, _s8CacheKeyVMa);
      v15 = *v8 == v12 && v8[1] == v13;
      if (v15 || (sub_18A4A86C8()) && (MEMORY[0x18CFDDCF0](v8 + *(v5 + 20), a1 + *(v5 + 20)))
      {
        break;
      }

      sub_188E90638(v8, _s8CacheKeyVMa);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_188E90638(v8, _s8CacheKeyVMa);
  }

  return v10;
}

unint64_t sub_188E8CB5C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_18A4A7288();
      v8 = v7;
      if (v6 == sub_18A4A7288() && v8 == v9)
      {
        break;
      }

      v11 = sub_18A4A86C8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_188E8CC60(uint64_t a1, uint64_t a2)
{
  v5 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = *(v6 + 72);
    do
    {
      sub_188E905D0(*(v2 + 48) + v16 * v10, v8, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      v20.origin.x = v12;
      v20.origin.y = v13;
      v20.size.width = v14;
      v20.size.height = v15;
      if (CGRectEqualToRect(*v8, v20) && [*(v8 + 4) isEqualToTextRange_])
      {
        if (*(v8 + 5) == *(a1 + 40) && *(v8 + 6) == *(a1 + 48))
        {
          sub_188E90638(v8, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
          return v10;
        }

        v17 = sub_18A4A86C8();
        sub_188E90638(v8, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
        if (v17)
        {
          return v10;
        }
      }

      else
      {
        sub_188E90638(v8, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_188E8CE6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = -1 << *(v4 + 32);
  v12 = a2 & ~v11;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v8 + 72);
    do
    {
      sub_188E905D0(*(v4 + 48) + v14 * v12, v10, a4);
      v15 = _s5UIKit16UITextEffectViewC0C2IDV2eeoiySbAE_AEtFZ_0();
      sub_188E90638(v10, a4);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_188E8CFB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E38);
    v3 = sub_18A4A8488();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_188B0944C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8D0B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C330);
  v3 = sub_18A4A8488();
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 40);
  result = sub_188E8B6A8(v4 | (v5 << 8));
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 48);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = (v3[6] + 2 * result);
    *v10 = v4;
    v10[1] = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 16;
    v4 = *v9;
    v5 = v9[1];
    v15 = *(v9 + 1);
    v16 = v6;
    result = sub_188E8B6A8(v4 | (v5 << 8));
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_188E8D1D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938C30);
    v3 = sub_18A4A8488();
    for (i = a1 + 32; ; i += 16)
    {
      sub_188A3F29C(i, &v11, &qword_1EA934E18);
      v5 = v11;
      result = sub_188A403F4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_188A3F704(&v12, v3[7] + 8 * result, &qword_1EA936E70);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8D310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938DA0);
    v3 = sub_18A4A8488();
    v4 = a1 + 32;

    while (1)
    {
      sub_188A3F29C(v4, &v10, &qword_1EA934DB0);
      result = sub_188E8B718(v10, *(&v10 + 1));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v10;
      result = sub_188A55538(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8D430(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E08);
    v3 = sub_18A4A8488();
    v4 = a1 + 32;

    while (1)
    {
      sub_188A3F29C(v4, &v14, &qword_1EA934E10);
      v5 = v14;
      result = sub_188E8B7E4(v14);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = v3[7] + 40 * result;
      v9 = v15;
      v10 = v16;
      *(v8 + 32) = v17;
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8D568(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938BE0);
    v3 = sub_18A4A8488();
    v4 = a1 + 32;

    while (1)
    {
      sub_188A3F29C(v4, v13, &qword_1EA934E00);
      result = sub_188C479E4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_188E8D690(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938BD0);
  v3 = sub_18A4A8488();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_188B8558C(v4, sub_188A41228);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_188B8558C(v4, sub_188A41228);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_188E8D7C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934DE8);
    v3 = sub_18A4A8488();
    v4 = a1 + 32;

    while (1)
    {
      sub_188A3F29C(v4, &v13, &qword_1EA934DF0);
      result = sub_188C46540(&v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 48 * result);
      v8 = v13;
      v9 = v14[0];
      *(v7 + 25) = *(v14 + 9);
      *v7 = v8;
      v7[1] = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8D8EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C260);
    v3 = sub_18A4A8488();
    v4 = a1 + 32;

    while (1)
    {
      sub_188A3F29C(v4, v13, &qword_1EA934DF8);
      result = sub_188C479E4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8DA14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934F70);
    v3 = sub_18A4A8488();
    v4 = a1 + 32;

    while (1)
    {
      sub_188A3F29C(v4, v13, &qword_1EA934D78);
      result = sub_188BBA050(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_188A55538(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_188E8DB70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188E8DBB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_188E8DC08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934EA0);
    v3 = sub_18A4A8488();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_188B0944C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_188E8DD04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C190);
  v3 = sub_18A4A8488();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_188E8B8AC(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = v3[6] + 16 * v9;
    *v12 = v4;
    *(v12 + 8) = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 8);
    v17 = *v11;

    v9 = sub_188E8B8AC(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_188E8DE50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938BB0);
    v3 = sub_18A4A8488();
    v4 = a1 + 32;

    while (1)
    {
      sub_188A3F29C(v4, &v17, &qword_1EA934DD8);
      result = sub_188C46540(&v17);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 48 * result);
      v8 = v17;
      v9 = v18[0];
      *(v7 + 25) = *(v18 + 9);
      *v7 = v8;
      v7[1] = v9;
      v10 = v3[7] + 48 * result;
      v11 = v19;
      v12 = v21;
      v13 = v20;
      *v10 = v18[2];
      *(v10 + 16) = v11;
      *(v10 + 24) = v13;
      *(v10 + 40) = v12;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 96;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8DF98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938C20);
    v3 = sub_18A4A8488();

    for (i = (a1 + 88); ; i += 8)
    {
      v5 = *(i - 7);
      v6 = *(i - 6);
      v8 = *(i - 5);
      v7 = *(i - 4);
      v9 = *(i - 3);
      v10 = *(i - 2);
      v11 = *(i - 8);
      v12 = *(i - 7);
      v13 = *i;

      result = sub_188B0944C(v5, v6);
      if (v15)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      v17 = v3[7] + 48 * result;
      *v17 = v8;
      *(v17 + 8) = v7;
      *(v17 + 16) = v9;
      *(v17 + 24) = v10;
      *(v17 + 32) = v11;
      *(v17 + 33) = v12;
      *(v17 + 40) = v13;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v3[2] = v20;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8E0EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E68);
    v7 = sub_18A4A8488();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_188A3F29C(v9, v5, &qword_1EA934E60);
      result = sub_188E8BEEC(v5, type metadata accessor for UITextEffectView.EffectID, type metadata accessor for UITextEffectView.EffectID);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UITextEffectView.EffectID();
      sub_188E90568(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for UITextEffectView.EffectID);
      result = sub_188A5EBAC(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8E398(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C180);
  v3 = sub_18A4A8488();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  result = sub_188B8558C(v4, sub_188A41228);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 9);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 2);
    v5 = *(v9 - 1);
    v15 = *v9;
    v16 = v6;
    result = sub_188B8558C(v4, sub_188A41228);
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_188E8E520(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_18A4A8488();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_188E8E63C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C2A0);
  v3 = sub_18A4A8488();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_188A403F4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_188A403F4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_188E8E76C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E88);
    v3 = sub_18A4A8488();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_188B0944C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8E870(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E30);
  v3 = sub_18A4A8488();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_188E8B63C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_188E8B63C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_188E8E96C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B30);
    v3 = sub_18A4A8488();
    for (i = a1 + 32; ; i += 24)
    {
      sub_188A3F29C(i, &v11, &qword_1EA934DA0);
      v5 = v11;
      result = sub_188A403F4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_188E8FC60(&v12, v3[7] + 16 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8EA88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E20);
    v3 = sub_18A4A8488();
    for (i = a1 + 32; ; i += 40)
    {
      sub_188A3F29C(i, &v11, &qword_1EA934F78);
      v5 = v11;
      result = sub_188A403F4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_188A55538(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8EBF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E80);
    v3 = sub_18A4A8488();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_188E8B5AC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8ECEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938D40);
    v3 = sub_18A4A8488();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 8);
      v7 = *i;
      v8 = v5;
      v9 = v7;
      result = sub_188E8B480(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 16 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8EDF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938D20);
    v3 = sub_18A4A8488();
    for (i = a1 + 32; ; i += 48)
    {
      sub_188A3F29C(i, &v11, &qword_1EA934E78);
      v5 = v11;
      result = sub_188A403F4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_188A5EBAC(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_188E8EF14(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C340);
  v3 = sub_18A4A8488();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_188B8558C(v4, sub_188A41228);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_188B8558C(v4, sub_188A41228);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_188E8F044(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938CE0);
    v3 = sub_18A4A8488();
    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 1);
      v12 = i[1];
      v13 = *i;
      result = sub_188A403F4(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8F154(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    v12 = sub_18A4A8488();
    v13 = *(v7 + 48);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);

    while (1)
    {
      sub_188A3F29C(v14, v10, a2);
      result = sub_188E8B9FC(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = sub_18A4A29D8();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v10, v20);
      *(v12[7] + 8 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8F334(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938CD0);
    v7 = sub_18A4A8488();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_188A3F29C(v9, v5, &qword_1EA934E50);
      v11 = *v5;
      v12 = v5[1];
      result = sub_188E8BC0C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for UITextEffectView.EffectID();
      result = sub_188E90568(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for UITextEffectView.EffectID);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8F510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934F18);
    v3 = sub_18A4A8488();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_188E8B5AC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8F660(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_18A4A8488();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *i;
      v7 = *(i - 1);
      v8 = v6;
      result = sub_188E8B5AC(v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v7;
      *(v4[7] + 8 * result) = v8;
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8F750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E30);
    v3 = sub_18A4A8488();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_188A403F4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8F830(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934F28);
    v3 = sub_18A4A8488();

    for (i = (a1 + 48); ; i += 4)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v16 = i[1];
      v17 = *i;
      v7 = *(i + 4);
      v8 = *(i + 5);

      result = sub_188B0944C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 48 * result;
      *v12 = v17;
      *(v12 + 16) = v16;
      *(v12 + 32) = v7;
      *(v12 + 40) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8F954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934F20);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C310);
    v7 = sub_18A4A8488();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_188A3F29C(v9, v5, &qword_1EA934F20);
      result = sub_188E8BDFC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
      result = sub_188E90568(v5, v14 + *(*(v15 - 8) + 72) * v13, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8FB38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C220);
    v3 = sub_18A4A8488();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v15 = *i;

      v7 = v15;
      v8 = *(&v15 + 1);
      result = sub_188B0944C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 16 * result) = v15;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E8FCD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B70);
  v4 = sub_18A4A8488();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v25 = *(a1 + 48);
  v7 = *(a1 + 64);
  result = sub_188B8558C(v5, sub_188A41228);
  v9 = v25;
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v22 = v9;
    v23 = v1;
    v24 = v7;
    return v4;
  }

  v11 = (a1 + 104);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 8 * result) = v5;
    v12 = v4[7] + 32 * result;
    *v12 = v6;
    *(v12 + 8) = v9;
    *(v12 + 24) = v7;
    v13 = v4[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v4[2] = v15;
    v1 = *(&v9 + 1);
    if (!--v2)
    {
      goto LABEL_8;
    }

    v16 = v11 + 5;
    v5 = *(v11 - 4);
    v6 = *(v11 - 3);
    v26 = *(v11 - 1);
    v17 = *v11;
    v18 = v9;
    v19 = v1;
    v20 = v7;
    result = sub_188B8558C(v5, sub_188A41228);
    v11 = v16;
    v7 = v17;
    v9 = v26;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_188E8FE74(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934F08);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v9 = sub_18A4A8488();
    v10 = *(v4 + 48);
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);

    while (1)
    {
      sub_188A3F29C(v11, v7, &qword_1EA934F08);
      result = sub_188E8B9FC(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_18A4A29D8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 16 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E9005C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934EF0);
    v3 = sub_18A4A8488();
    for (i = a1 + 32; ; i += 16)
    {
      sub_188A3F29C(i, &v11, &qword_1EA934EF8);
      v5 = v11;
      result = sub_188A403F4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_188A3F704(&v12, v3[7] + 8 * result, &qword_1EA934F00);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E90194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934EE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1D0);
    v7 = sub_18A4A8488();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_188A3F29C(v9, v5, &qword_1EA934EE8);
      result = sub_188E8BFB4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_18A4A5448();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E9037C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B50);
    v3 = sub_18A4A8488();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_188DCCD6C(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_188E904A0()
{
  result = qword_1EA938C90;
  if (!qword_1EA938C90)
  {
    sub_18A4A2DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA938C90);
  }

  return result;
}

uint64_t sub_188E90548(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

uint64_t sub_188E90558(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

uint64_t sub_188E90568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_188E905D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_188E90638(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_188E90698(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t UIParentModifierTransitionComponent.init(impl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_18A4A29C8();
  v4 = type metadata accessor for UIParentModifierTransitionComponent();
  v6 = *(v4 + 48);
  v7 = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for UIAnyModifierComponent();
  *(a3 + v6) = sub_18A4A75C8();
  return (*(*(a2 - 8) + 32))(a3 + *(v7 + 44), a1, a2);
}

BOOL sub_188E9090C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for UIAnyModifierComponent();
  return sub_189225058(v3, a2);
}

uint64_t UIParentModifierTransitionComponent.receive(event:responder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 32);
  v9 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_18A4A7D38();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v54 = &v41 - v17;
  v18 = *(v8 + 32);
  v53 = *(a3 + 44);
  v18(a1, v9, v8, v16);
  v19 = AssociatedTypeWitness;
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v51 + 8))(v13, v52);
    v20 = *(a3 + 24);
    v21 = *(v20 + 16);
LABEL_8:
    v40 = (*(v21 + 56))(a1, a2, v9);
    MEMORY[0x1EEE9AC00](v40);
    *(&v41 - 4) = v9;
    *(&v41 - 3) = v20;
    *(&v41 - 2) = v8;
    *(&v41 - 1) = v4;
    return sub_188E92238(sub_188E92C18);
  }

  v46 = a1;
  v44 = v14;
  (*(v14 + 32))(v54, v13, AssociatedTypeWitness);
  v22 = *(a3 + 48);
  v63 = *(v4 + v22);
  v23 = *(a3 + 24);
  v24 = *(v23 + 16);
  v25 = swift_getAssociatedTypeWitness();
  v52 = swift_getAssociatedTypeWitness();
  v51 = swift_getAssociatedTypeWitness();
  v48 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v25;
  v27 = v19;
  v49 = swift_getAssociatedConformanceWitness();
  v42 = v24;
  v28 = v52;
  v29 = swift_getAssociatedConformanceWitness();
  v43 = v23;
  v47 = v9;
  v30 = v51;
  v31 = swift_getAssociatedConformanceWitness();
  v45 = v27;
  v55 = v27;
  v56 = v26;
  v57 = v28;
  v58 = v30;
  v59 = AssociatedConformanceWitness;
  v60 = v49;
  v61 = v29;
  v62 = v31;
  v32 = type metadata accessor for UIAnyModifierComponent();
  sub_18A4A7648();
  swift_getWitnessTable();
  result = sub_18A4A7808();
  v35 = v55;
  v34 = v56;
  if (v55 == v56)
  {
LABEL_7:
    (*(v44 + 8))(v54, v45);
    v9 = v47;
    v8 = v48;
    a1 = v46;
    v20 = v43;
    v21 = v42;
    goto LABEL_8;
  }

  if (v56 < v55)
  {
    __break(1u);
  }

  else if (v55 < v56)
  {
    do
    {
      sub_18A4A7658();
      WitnessTable = swift_getWitnessTable();
      sub_188FB7560(v54, a2, v32, WitnessTable);
      v37 = a2;
      v38 = v55;

      sub_18A4A75B8();
      v39 = *(v4 + v22);
      sub_188E926CC(v35, v39);

      *((v39 & 0xFFFFFFFFFFFFFF8) + 8 * v35 + 0x20) = v38;
      a2 = v37;

      ++v35;
    }

    while (v34 != v35);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t UIParentModifierTransitionComponent.updateInputModel(_:responder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v5 = *(v3 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();

  type metadata accessor for UIAnyModifierComponent();
  sub_18A4A7648();
  swift_getWitnessTable();
  sub_18A4A74B8();

  return (*(v5 + 64))(a1, a2, v4, v5);
}

uint64_t UIParentBaseLayoutTransitionComponent.init(impl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(type metadata accessor for UIParentBaseLayoutTransitionComponent() + 44);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_188E92C90();
  type metadata accessor for UIAnyModifierComponent();
  *(a3 + v5) = sub_18A4A75C8();
  return (*(*(a2 - 8) + 32))(a3, a1, a2);
}

uint64_t UIParentBaseLayoutTransitionComponent.receive(event:responder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a2;
  v7 = *(a3 + 32);
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_18A4A7D38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v47 = &v39 - v17;
  v18 = *(v7 + 32);
  v45 = a1;
  v18(a1, v8, v7, v16);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v19 = *(a3 + 24);
    v20 = *(v19 + 8);
    v21 = v46;
LABEL_8:
    v38 = sub_188FB7560(v45, v21, v8, v20);
    MEMORY[0x1EEE9AC00](v38);
    *(&v39 - 4) = v8;
    *(&v39 - 3) = v19;
    *(&v39 - 2) = v7;
    *(&v39 - 1) = v4;
    return sub_188E92238(sub_188E9405C);
  }

  v41 = v14;
  (*(v14 + 32))(v47, v13, AssociatedTypeWitness);
  v22 = v8;
  v23 = *(a3 + 44);
  v56 = *(v4 + v23);
  v40 = *(a3 + 24);
  v24 = *(v40 + 8);
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedTypeWitness();
  v44 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = swift_getAssociatedConformanceWitness();
  v39 = v24;
  v43 = v22;
  v29 = swift_getAssociatedConformanceWitness();
  v30 = sub_188E92C90();
  v42 = AssociatedTypeWitness;
  v48 = AssociatedTypeWitness;
  v49 = v25;
  v50 = v26;
  v51 = &type metadata for UILayoutOutputModel;
  v52 = AssociatedConformanceWitness;
  v53 = v28;
  v54 = v29;
  v55 = v30;
  v31 = type metadata accessor for UIAnyModifierComponent();
  sub_18A4A7648();
  swift_getWitnessTable();
  result = sub_18A4A7808();
  v33 = v48;
  v34 = v49;
  v21 = v46;
  if (v48 == v49)
  {
LABEL_7:
    (*(v41 + 8))(v47, v42);
    v8 = v43;
    v7 = v44;
    v20 = v39;
    v19 = v40;
    goto LABEL_8;
  }

  if (v49 < v48)
  {
    __break(1u);
  }

  else if (v48 < v49)
  {
    do
    {
      sub_18A4A7658();
      WitnessTable = swift_getWitnessTable();
      sub_188FB7560(v47, v21, v31, WitnessTable);
      v36 = v48;

      sub_18A4A75B8();
      v37 = *(v4 + v23);
      sub_188E926CC(v33, v37);

      *((v37 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20) = v36;

      ++v33;
    }

    while (v34 != v33);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

BOOL sub_188E91840(uint64_t *a1, void *a2)
{
  v2 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_188E92C90();
  type metadata accessor for UIAnyModifierComponent();
  return sub_189225058(v2, a2);
}

uint64_t UIParentBaseLayoutTransitionComponent.updateInputModel(_:responder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v5 = *(a3 + 16);
  v6 = *(*(a3 + 24) + 8);
  v32 = *(a3 + 24);
  v7 = v32;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = *(v10 + 16);
  v13 = &WitnessTable - v12;
  v30 = &WitnessTable - v12;
  v11(v9);
  v56 = *(v3 + *(a3 + 44));
  v14 = v56;
  v44 = v5;
  v45 = v7;
  v46 = *(a3 + 32);
  v47 = v13;
  v28 = v46;
  v15 = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v29 = AssociatedTypeWitness;
  v19 = swift_getAssociatedConformanceWitness();
  v20 = sub_188E92C90();

  v48 = v15;
  v49 = v16;
  v50 = AssociatedTypeWitness;
  v51 = &type metadata for UILayoutOutputModel;
  v52 = AssociatedConformanceWitness;
  v53 = v18;
  v54 = v19;
  v55 = v20;
  type metadata accessor for UIAnyModifierComponent();
  sub_18A4A7648();
  WitnessTable = swift_getWitnessTable();
  sub_18A4A74B8();

  v21 = v30;
  v22 = v33;
  v23 = v31;
  (*(v6 + 64))(v30, v33, v5, v6);
  v48 = v14;
  v39 = v5;
  v24 = v32;
  v40 = v32;
  v25 = v28;
  v41 = v28;
  v42 = v21;
  v43 = v22;

  sub_18A4A74B8();

  v35 = v5;
  v36 = v24;
  v37 = v25;
  v38 = v23;
  sub_188E92238(sub_188E92D28);
  return (*(v34 + 8))(v21, v29);
}

uint64_t sub_188E91D4C(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  (*(v4 + 16))(v6, a2, AssociatedTypeWitness, v8);
  sub_189226A9C();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return (*(v4 + 40))(a2, v10, AssociatedTypeWitness);
}

uint64_t sub_188E91EA8(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, a2, AssociatedTypeWitness, v5);
  sub_189226AC4();
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

UIKit::UILayoutOutputModel __swiftcall UIParentBaseLayoutTransitionComponent.outputModel()()
{
  v2 = v1;
  (*(*(v0 + 24) + 24))(&v4, *(v0 + 16), *(v0 + 24));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_188E92C90();

  type metadata accessor for UIAnyModifierComponent();
  sub_18A4A7648();
  swift_getWitnessTable();
  sub_18A4A74B8();

  *v2 = v4;
  return result;
}

uint64_t sub_188E921C0(uint64_t a1, void *a2)
{

  sub_189226AEC();

  *a2 = v4;
}

uint64_t sub_188E92238(uint64_t (*a1)(__int128 *, uint64_t))
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (!*(v4 + 16) || (v5 = sub_188E8B838(&type metadata for UIParentComponentResponse, &protocol witness table for UIParentComponentResponse), (v6 & 1) == 0))
  {
    v11 = 0;
LABEL_17:
    swift_beginAccess();
    sub_188F2855C(v11, &type metadata for UIParentComponentResponse, &protocol witness table for UIParentComponentResponse);
    return swift_endAccess();
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  v8 = *(v7 + 16);

  if (!v8)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_16:

    goto LABEL_17;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = v7 + 32;
  while (v10 < *(v7 + 16))
  {
    sub_188A53994(v12, v19);
    sub_188A53994(v19, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934448);
    swift_dynamicCast();
    v13 = a1(v17, v2);
    sub_188E94008(v17);
    if (v13)
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v19);
    }

    else
    {
      sub_188A5EBAC(v19, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_188E6D19C(0, *(v11 + 16) + 1, 1);
        v11 = v20;
      }

      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_188E6D19C((v15 > 1), v16 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v16 + 1;
      result = sub_188A5EBAC(v17, v11 + 40 * v16 + 32);
    }

    ++v10;
    v12 += 40;
    if (v8 == v10)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188E92464(uint64_t (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UILayoutComponentResponse(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v2 + 16);
  if (!*(v9 + 16) || (v10 = sub_188E8B838(v6, &protocol witness table for UILayoutComponentResponse), (v11 & 1) == 0))
  {
    v16 = 0;
LABEL_17:
    swift_beginAccess();
    sub_188F2855C(v16, v6, &protocol witness table for UILayoutComponentResponse);
    return swift_endAccess();
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  v13 = *(v12 + 16);

  v25 = v13;
  if (!v13)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_16:

    goto LABEL_17;
  }

  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = v12 + 32;
  v23 = a1;
  v24 = a2;
  while (v15 < *(v12 + 16))
  {
    sub_188A53994(v17, v27);
    sub_188A53994(v27, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934448);
    swift_dynamicCast();
    v18 = a1(v8, v3);
    sub_188E93B00(v8);
    if (v18)
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    else
    {
      sub_188A5EBAC(v27, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_188E6D19C(0, *(v16 + 16) + 1, 1);
        v16 = v28;
      }

      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_188E6D19C((v20 > 1), v21 + 1, 1);
        v16 = v28;
      }

      *(v16 + 16) = v21 + 1;
      result = sub_188A5EBAC(v26, v16 + 40 * v21 + 32);
      a1 = v23;
    }

    ++v15;
    v17 += 40;
    if (v25 == v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188E926CC(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_188E92720(uint64_t a1, uint64_t a2)
{
  sub_188E93FAC(a1, v36);
  if (v37)
  {
    v3 = sub_188A5EBAC(v36, v33);
    v24 = &v21;
    MEMORY[0x1EEE9AC00](v3);
    v23 = v20;
    v4 = *(a2 + 24);
    v20[2] = *(a2 + 16);
    v20[3] = v4;
    v20[4] = *(a2 + 32);
    v20[5] = v33;
    v22 = *(a2 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = swift_getAssociatedTypeWitness();
    v7 = swift_getAssociatedTypeWitness();
    v8 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = swift_getAssociatedConformanceWitness();
    v11 = swift_getAssociatedConformanceWitness();
    v12 = swift_getAssociatedConformanceWitness();
    v25 = AssociatedTypeWitness;
    v26 = v6;
    v27 = v7;
    v28 = v8;
    v29 = AssociatedConformanceWitness;
    v30 = v10;
    v31 = v11;
    v32 = v12;
    type metadata accessor for UIAnyModifierComponent();
    sub_18A4A7648();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_18A4A78E8();
  }

  else
  {
    sub_188A5EBAC(v36, v33);
    v22 = v34;
    v24 = v35;
    v23 = __swift_project_boxed_opaque_existential_0(v33, v34);
    v21 = swift_getAssociatedTypeWitness();
    v25 = v21;
    v26 = swift_getAssociatedTypeWitness();
    v27 = swift_getAssociatedTypeWitness();
    v28 = swift_getAssociatedTypeWitness();
    v29 = swift_getAssociatedConformanceWitness();
    v30 = swift_getAssociatedConformanceWitness();
    v31 = swift_getAssociatedConformanceWitness();
    v32 = swift_getAssociatedConformanceWitness();
    v13 = type metadata accessor for UIAnyModifierComponent();
    v14 = v22;
    v15 = MEMORY[0x1EEE9AC00](v13);
    v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17, v23, v22, v15);
    v25 = sub_189225000(v17, v14, v24);
    sub_18A4A7648();
    sub_18A4A7618();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  return 1;
}

unint64_t sub_188E92C90()
{
  result = qword_1EA934F80[0];
  if (!qword_1EA934F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA934F80);
  }

  return result;
}

uint64_t sub_188E92E2C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_188E92ED4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E92F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_188E92F5C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_188E92FA8()
{
  result = sub_18A4A29D8();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for UIAnyModifierComponent();
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

uint64_t sub_188E931B4(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_18A4A29D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
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

  v13 = *(*(v6 - 8) + 64) + v11;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
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
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25, v10);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_188E933E8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_18A4A29D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  if (v12 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = v13 + v14;
  v18 = (v13 + v14) & ~v14;
  v19 = v15 + 7;
  v20 = ((v15 + 7 + v18) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v15 + 7 + v18) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = a3 - v16 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v16 < a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a2 > v16)
  {
    if (v20)
    {
      v25 = 1;
    }

    else
    {
      v25 = a2 - v16;
    }

    if (v20)
    {
      v26 = ~v16 + a2;
      bzero(a1, v20);
      *a1 = v26;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }
    }

    else if (v24)
    {
      *(a1 + v20) = v25;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v20) = 0;
  }

  else if (v24)
  {
    *(a1 + v20) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v10 == v16)
  {
    v27 = *(v9 + 56);

    v27(a1, a2, v10, v8);
  }

  else
  {
    v28 = (a1 + v17) & ~v14;
    if (v12 == v16)
    {
      v29 = *(v11 + 56);

      v29(v28, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v30 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v30 = (a2 - 1);
      }

      *((v19 + v28) & 0xFFFFFFFFFFFFFFF8) = v30;
    }
  }
}

uint64_t sub_188E9365C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    sub_188E92C90();
    type metadata accessor for UIAnyModifierComponent();
    result = sub_18A4A7648();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_188E93810(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
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
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_188E9394C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
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

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_188E93B00(uint64_t a1)
{
  v2 = type metadata accessor for UILayoutComponentResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_188E93B5C(uint64_t a1)
{
  sub_188E93FAC(a1, v29);
  if (v30)
  {
    v1 = sub_188A5EBAC(v29, v26);
    v17 = &v16;
    MEMORY[0x1EEE9AC00](v1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v3 = swift_getAssociatedTypeWitness();
    v4 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = swift_getAssociatedConformanceWitness();
    v7 = swift_getAssociatedConformanceWitness();
    v8 = sub_188E92C90();
    v18 = AssociatedTypeWitness;
    v19 = v3;
    v20 = v4;
    v21 = &type metadata for UILayoutOutputModel;
    v22 = AssociatedConformanceWitness;
    v23 = v6;
    v24 = v7;
    v25 = v8;
    type metadata accessor for UIAnyModifierComponent();
    sub_18A4A7648();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_18A4A78E8();
  }

  else
  {
    sub_188A5EBAC(v29, v26);
    v9 = v27;
    v17 = v28;
    v16 = __swift_project_boxed_opaque_existential_0(v26, v27);
    v18 = swift_getAssociatedTypeWitness();
    v19 = swift_getAssociatedTypeWitness();
    v20 = swift_getAssociatedTypeWitness();
    v21 = &type metadata for UILayoutOutputModel;
    v22 = swift_getAssociatedConformanceWitness();
    v23 = swift_getAssociatedConformanceWitness();
    v24 = swift_getAssociatedConformanceWitness();
    v25 = sub_188E92C90();
    v10 = type metadata accessor for UIAnyModifierComponent();
    v11 = MEMORY[0x1EEE9AC00](v10);
    v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13, v16, v9, v11);
    v18 = sub_189225000(v13, v9, v17);
    sub_18A4A7648();
    sub_18A4A7618();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return 1;
}

void sub_188E94088()
{
  v1 = *(v0 + 16);
  sub_18A4A7C98();
}

uint64_t sub_188E940E0()
{
  sub_18A4A8888();
  sub_188E94088();
  return sub_18A4A88E8();
}

uint64_t sub_188E94120()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_188E941BC()
{
  sub_18A4A8888();
  sub_188E94088();
  return sub_18A4A88E8();
}

uint64_t sub_188E94220()
{
  MEMORY[0x18CFE22D0](60, 0xE100000000000000);
  v0 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v0);

  MEMORY[0x18CFE22D0](0x203A6C706D6920, 0xE700000000000000);
  swift_getWitnessTable();
  sub_18A4A8698();
  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_188E94350()
{
  sub_18A4A8888();
  sub_188E94088();
  return sub_18A4A88E8();
}

uint64_t sub_188E943A4()
{
  sub_18A4A8888();
  sub_188E9432C();
  return sub_18A4A88E8();
}

void sub_188E9442C(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_tabBarButton];
  type metadata accessor for _UITabButton();
  v5 = v4;
  v6 = sub_18A4A7C88();

  if ((v6 & 1) == 0)
  {
    v7 = *&v2[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedTabButton];
    if (v7)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v9 = v7;
      sub_1892029B4(Strong);
    }

    swift_unknownObjectWeakAssign();
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    *(v11 + 24) = a1;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_188E94EF0;
    *(v12 + 24) = v11;
    v17[4] = sub_188A4B574;
    v17[5] = v12;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_188A4A968;
    v17[3] = &block_descriptor_9;
    v13 = _Block_copy(v17);
    v14 = v2;
    v15 = a1;

    [v10 performWithoutAnimation_];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

id sub_188E9463C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_tabBarButton;
  v5 = *(a1 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_tabBarButton);
  [a2 frame];
  [v5 setFrame_];

  v6 = *(*(a1 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_primaryPlatterView) + OBJC_IVAR____TtC5UIKit20_UITabBarPlatterView_contentView);
  v7 = *(a1 + v4);

  return [v6 addSubview_];
}

void sub_188E946D8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedTabButton;
  v5 = *&v1[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedTabButton];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    swift_unknownObjectWeakAssign();
LABEL_8:
    [a1 removeFromSuperview];
    goto LABEL_9;
  }

  if (!a1)
  {
    swift_unknownObjectWeakAssign();
    v9 = *&v2[v4];
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_14:
    v14 = OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedPlatterView;
    v15 = *&v2[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedPlatterView];
    if (v15)
    {
      [v15 removeFromSuperview];
      v13 = *&v2[v14];
    }

    else
    {
      v13 = 0;
    }

    *&v2[v14] = 0;
    goto LABEL_20;
  }

  type metadata accessor for _UITabButton();
  v6 = v5;
  v7 = a1;
  v8 = sub_18A4A7C88();

  if (v8)
  {
    return;
  }

  swift_unknownObjectWeakAssign();
  if (a1)
  {
    goto LABEL_8;
  }

LABEL_9:
  v9 = *&v2[v4];
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_10:
  v10 = OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedPlatterView;
  v11 = *&v2[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedPlatterView];
  if (v11)
  {
    v12 = v9;
    v13 = v11;
  }

  else
  {
    type metadata accessor for _UITabBarPlatterView();
    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v17 = v9;
    v13 = [v16 init];
    [v13 setHidden_];
    [v2 addSubview_];
    v18 = *&v2[v10];
    *&v2[v10] = v13;
  }

  v19 = v11;
  [v13 bounds];
  [v9 setFrame_];
  [v9 setAutoresizingMask_];
  v20 = *&v13[OBJC_IVAR____TtC5UIKit20_UITabBarPlatterView_contentView];

  [v20 addSubview_];
LABEL_20:

  [v2 setNeedsLayout];
}

id sub_188E94954()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_primaryPlatterView);
  if (*(v0 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_displayState))
  {
    if (*(v0 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_displayState) == 1)
    {
      [v1 setHidden_];
      result = *(v0 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedPlatterView);
      if (!result)
      {
        return result;
      }

      v3 = 0;
    }

    else
    {
      [v1 setHidden_];
      result = *(v0 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedPlatterView);
      if (!result)
      {
        return result;
      }

      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
    [v1 setHidden_];
    result = *(v0 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedPlatterView);
    if (!result)
    {
      return result;
    }
  }

  return [result setHidden_];
}

char *sub_188E94A40(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedTabButton] = 0;
  v1[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_displayState] = 2;
  v4 = &v1[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedItemSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v1[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedItemInset] = 0;
  v5 = OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_primaryPlatterView;
  type metadata accessor for _UITabBarPlatterView();
  *&v1[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedPlatterView] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_tabBarButton] = a1;
  v6 = a1;
  [v6 bounds];
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v12, sel_initWithFrame_);
  v8 = OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_primaryPlatterView;
  v9 = *&v7[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_primaryPlatterView];
  v10 = v7;
  [v10 addSubview_];
  [*(*&v7[v8] + OBJC_IVAR____TtC5UIKit20_UITabBarPlatterView_contentView) addSubview_];

  return v10;
}

void sub_188E94BA4()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_tabBarButton;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_tabBarButton];
  [v0 bounds];
  [v2 setFrame_];

  v3 = *&v0[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_primaryPlatterView];
  [v0 bounds];
  [v3 setCenter_];
  [v0 bounds];
  [v3 setBounds_];
  v7 = *&v0[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedPlatterView];
  if (v7)
  {
    v8 = v7;
    v9 = [v0 _shouldReverseLayoutDirection];
    v10 = &v0[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedItemSize];
    if (v0[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedItemSize + 16])
    {
      [*&v0[v1] bounds];
      v12 = v11;
      v14 = v13;
    }

    else
    {
      v12 = *v10;
      v14 = v10[1];
    }

    v15 = *&v0[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedItemInset];
    [v0 bounds];
    if (v9)
    {
      v20 = v15 + CGRectGetMinX(*&v16);
    }

    else
    {
      v20 = CGRectGetMaxX(*&v16) - v12 - v15;
    }

    [v0 bounds];
    v21 = CGRectGetHeight(v24) - v14 - v15;
    v22 = v8;
    [v22 setBounds_];
    [v22 setCenter_];
  }
}

unint64_t sub_188E94E9C()
{
  result = qword_1EA935140;
  if (!qword_1EA935140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935140);
  }

  return result;
}

void sub_188E94EF8()
{
  *(v0 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedTabButton) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_displayState) = 2;
  v1 = v0 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedItemSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedItemInset) = 0;
  v2 = OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_primaryPlatterView;
  type metadata accessor for _UITabBarPlatterView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedPlatterView) = 0;
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_188E94FCC()
{
  v0 = sub_188E8DC08(&unk_1EFAB7758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935150);
  result = swift_arrayDestroy();
  off_1EA935148 = v0;
  return result;
}

unint64_t sub_188E95028()
{
  result = qword_1EA92EBC8;
  if (!qword_1EA92EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92EBC8);
  }

  return result;
}

unint64_t sub_188E9507C()
{
  result = qword_1EA92F2D8;
  if (!qword_1EA92F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F2D8);
  }

  return result;
}

uint64_t _s22AnimatablePropertyTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s22AnimatablePropertyTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_188E95224()
{
  result = qword_1EA935158;
  if (!qword_1EA935158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935158);
  }

  return result;
}

void sub_188E95278()
{
  objc_opt_self();
  v0 = +[UIScreen _mainScreen];
  [v0 scale];

  v1 = +[UIScreen _mainScreen];
  [v1 scale];
}

double sub_188E95338@<D0>(double *a1@<X8>)
{
  objc_opt_self();
  v2 = +[UIScreen _mainScreen];
  [v2 scale];
  v4 = v3;

  result = 1.0 / v4;
  *a1 = 1.0 / v4;
  return result;
}

double sub_188E9539C@<D0>(double *a1@<X8>)
{
  objc_opt_self();
  v2 = +[UIScreen _mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = 1.0 / v4;
  v6 = +[UIScreen _mainScreen];
  [v6 scale];
  v8 = v7;

  result = v5 * (1.0 / v8);
  *a1 = result;
  return result;
}

uint64_t sub_188E9547C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_188A55598(a1, v10);
  sub_188A921E4();
  swift_dynamicCast();
  [v9 CGSizeValue];
  v5 = v4;
  v7 = v6;

  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v5;
  a2[1] = v7;
  return result;
}

unint64_t sub_188E95514@<X0>(void *a1@<X8>)
{
  v3 = [objc_opt_self() valueWithCGSize_];
  result = sub_188A921E4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

float64x2_t sub_188E9557C(float64x2_t *a1)
{
  result = vmulq_f64(*a1, *v1);
  *v1 = result;
  return result;
}

float64x2_t sub_188E955AC@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vaddq_f64(*a1, *a2);
  *a3 = result;
  return result;
}

float64x2_t sub_188E955C0(float64x2_t *a1, float64x2_t *a2)
{
  result = vaddq_f64(*a2, *a1);
  *a1 = result;
  return result;
}

void sub_188E95738(void *a1)
{
  v16 = signpost_c2_entryLock_start;
  v17 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_188A4A968;
  v15 = &block_descriptor_10;
  v3 = _Block_copy(&v12);

  [a1 appendProem:v1 block:v3];
  _Block_release(v3);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return;
  }

  v4 = [a1 style];
  v5 = [v4 verbosity];

  if (v5 != 2)
  {
    v6 = [objc_opt_self() succinctStyle];
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_188E95EA4;
    *(v8 + 24) = v7;
    v16 = sub_188A4B574;
    v17 = v8;
    v12 = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_188A4A968;
    v15 = &block_descriptor_8_0;
    v9 = _Block_copy(&v12);
    v10 = a1;
    v11 = v1;

    [v10 overlayStyle:v6 block:v9];

    _Block_release(v9);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_188E959B4(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188E95EAC;
  *(v5 + 24) = v4;
  v10[4] = sub_188E3FE50;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188A4A968;
  v10[3] = &block_descriptor_18_1;
  v6 = _Block_copy(v10);
  v7 = a1;
  v8 = a2;

  [v7 appendBodySectionWithName:0 block:v6];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void sub_188E95B18(void *a1, id a2)
{
  v3 = [a2 _view];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"<%@: %p>", v7, v4];
  }

  else
  {
    v8 = @"(nil)";
    v9 = @"(nil)";
  }

  v10 = v8;
  v11 = sub_18A4A7258();
  [a1 appendString:v10 withName:v11];

  Strong = swift_weakLoadStrong();
  v13 = sub_18A4A7258();
}

id _UIScrollPocketRegistrationInteraction.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  *&v0[OBJC_IVAR____UIScrollPocketRegistrationInteraction_receiver + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v2.receiver = v0;
  v2.super_class = _UIScrollPocketRegistrationInteraction;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for _UIScrollPocketRegistrationInteraction()
{
  result = qword_1EA9352A0;
  if (!qword_1EA9352A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9352A0);
  }

  return result;
}

uint64_t sub_188E95EB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9352B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_UISliderFluidVisualElementFactory __swiftcall _UISliderFluidVisualElementFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_188E96138(char a1)
{
  *(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_changeWithVolumeButtons) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidInteraction))
    {
      v3 = Strong;
      sub_188BFC124(Strong);
      sub_188BFB3D4(0);
      Strong = v3;
    }
  }
}

void sub_188E961B4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong _sliderConfiguration];

    if (v2)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        [v3 expansionFactor];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_188E962EC(int a1, int a2, float a3)
{
  v117 = a1;
  v109 = sub_18A4A6DD8();
  v114 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v103 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v97 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v104 = (&v97 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v97 - v12;
  v115 = sub_18A4A6DF8();
  v107 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v97 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v97 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v97 - v23;
  v25 = sub_18A4A6DC8();
  v111 = *(v25 - 8);
  v112 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v106 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v113 = &v97 - v28;
  v116 = sub_18A4A6D88();
  v110 = *(v116 - 8);
  v29 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v105 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v108 = &v97 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v97 - v33;
  v35 = sub_188BFFEB8(0, a3);
  v36 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data;
  v37 = *(v3 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  if (!v37)
  {
    return;
  }

  v38 = v35;
  [v37 minimumValue];
  v40 = *(v3 + v36);
  if (!v40)
  {
    return;
  }

  v41 = v39;
  [v40 maximumValue];
  v43 = *(v3 + v36);
  if (!v43)
  {
    return;
  }

  v44 = v42;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v99 = a2;
  v45 = *(v3 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidUpdateSource) & 7;
  v100 = v43;
  v47 = Strong;
  if (v45 && [Strong _allowsSymbolAnimations])
  {
    if (a3 < 1.0)
    {
      if (a3 > 0.0)
      {
        *(v3 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_hasPlayedBounceForCurrentValue) = 0;
        goto LABEL_25;
      }

      if (*(v3 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_hasPlayedBounceForCurrentValue))
      {
        goto LABEL_25;
      }

      *(v3 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_hasPlayedBounceForCurrentValue) = 1;
      v71 = *(v3 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_minimumView);
      if (!v71)
      {
        goto LABEL_25;
      }

      objc_opt_self();
      v72 = swift_dynamicCastObjCClass();
      if (!v72)
      {
        goto LABEL_25;
      }

      v97 = v72;
      v98 = v71;
      sub_18A4A6D78();
      sub_18A4A6DB8();
      v73 = sub_188E9CD3C();
      v74 = v116;
      v113 = v73;
      sub_18A4A6D48();
      v75 = v102;
      sub_18A4A6DE8();
      v107 = *(v107 + 8);
      (v107)(v18, v115);
      v76 = v114;
      v77 = v109;
      v104 = *(v114 + 88);
      v78 = v104(v75, v109);
      v79 = *MEMORY[0x1E6982218];
      v102 = *(v76 + 8);
      v114 = v76 + 8;
      (v102)(v75, v77);
      if (v78 != v79)
      {
        v80 = v105;
        sub_18A4A6D48();
        v81 = v103;
        sub_18A4A6DE8();
        (v107)(v15, v115);
        v82 = v104(v81, v77);
        v83 = *MEMORY[0x1E6982210];
        (v102)(v81, v77);
        if (v82 != v83)
        {
          v84 = sub_18A4A6D58();
          if (v84)
          {
            v85 = v84;
            v86 = v80;
            v87 = v74;
            v88 = v106;
            v89 = sub_18A4A6DA8();
            v90 = v110;
            v91 = v108;
            (*(v110 + 16))(v108, v86, v74);
            v92 = (*(v90 + 80) + 32) & ~*(v90 + 80);
            v93 = swift_allocObject();
            *(v93 + 16) = 0;
            *(v93 + 24) = 0;
            (*(v90 + 32))(v93 + v92, v91, v87);
            v122 = sub_188E9CD94;
            v123 = v93;
            aBlock = MEMORY[0x1E69E9820];
            v119 = 1107296256;
            v120 = sub_188BFF280;
            v121 = &block_descriptor_392_0;
            v94 = _Block_copy(&aBlock);

            [v97 addSymbolEffect:v85 options:v89 animated:1 completion:v94];
            _Block_release(v94);

            (*(v111 + 8))(v88, v112);
            (*(v90 + 8))(v86, v87);
            goto LABEL_24;
          }

LABEL_35:
          __break(1u);
          return;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (*(v3 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_hasPlayedBounceForCurrentValue))
    {
      goto LABEL_25;
    }

    *(v3 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_hasPlayedBounceForCurrentValue) = 1;
    v48 = *(v3 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_maximumView);
    if (!v48)
    {
      goto LABEL_25;
    }

    objc_opt_self();
    v49 = swift_dynamicCastObjCClass();
    if (!v49)
    {
      goto LABEL_25;
    }

    v102 = v49;
    v103 = v48;
    sub_18A4A6D78();
    sub_18A4A6DB8();
    v106 = sub_188E9CD3C();
    sub_18A4A6D48();
    sub_18A4A6DE8();
    v107 = *(v107 + 8);
    (v107)(v24, v115);
    v50 = v114;
    v51 = v109;
    v105 = *(v114 + 88);
    v52 = (v105)(v13, v109);
    v53 = *MEMORY[0x1E6982218];
    v54 = v13;
    v55 = v51;
    v56 = *(v50 + 8);
    v56(v54, v55);
    if (v52 == v53)
    {
      __break(1u);
    }

    else
    {
      sub_18A4A6D48();
      v57 = v104;
      sub_18A4A6DE8();
      (v107)(v21, v115);
      v58 = (v105)(v57, v55);
      v59 = *MEMORY[0x1E6982210];
      v56(v57, v55);
      if (v58 != v59)
      {
        v60 = v34;
        v61 = sub_18A4A6D58();
        if (v61)
        {
          v62 = v61;
          v63 = v113;
          v64 = sub_18A4A6DA8();
          v65 = v110;
          v66 = v108;
          v67 = v116;
          (*(v110 + 16))(v108, v60, v116);
          v68 = (*(v65 + 80) + 32) & ~*(v65 + 80);
          v69 = swift_allocObject();
          *(v69 + 16) = 0;
          *(v69 + 24) = 0;
          (*(v65 + 32))(v69 + v68, v66, v67);
          v122 = sub_188E9CFA4;
          v123 = v69;
          aBlock = MEMORY[0x1E69E9820];
          v119 = 1107296256;
          v120 = sub_188BFF280;
          v121 = &block_descriptor_399;
          v70 = _Block_copy(&aBlock);

          [v102 addSymbolEffect:v62 options:v64 animated:1 completion:v70];
          _Block_release(v70);

          (*(v111 + 8))(v63, v112);
          (*(v65 + 8))(v60, v67);
LABEL_24:
          v47 = Strong;
          goto LABEL_25;
        }

        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_25:
  *&v46 = v41 + (v38 * (v44 - v41));
  v95 = v100;
  v96 = [v100 setValue_];
  if (v117 & 1) != 0 && ((v96 | v99))
  {
    [v47 sendActionsForControlEvents_];
  }
}

void sub_188E96E38()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_interactiveChangeState) = 0;
    v1 = swift_unknownObjectWeakLoadStrong();
    if (v1 && (v2 = v1, v3 = [v1 _sliderConfiguration], v2, v3))
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (!v4)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = [v4 delegate];

    if (v5)
    {
      if ([v5 respondsToSelector_])
      {
        [v5 _sliderFluidInteractionDidEnd_];
      }

      v6 = swift_unknownObjectRelease();
    }

    if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x300))(v6))
    {
      v7 = Strong;
      [v7 endTrackingWithTouch:0 withEvent:0];
      v8 = [v7 _wasTouchInside];

      if (v8)
      {
        v9 = 64;
      }

      else
      {
        v9 = 128;
      }

      [v7 sendActionsForControlEvents_];
    }
  }
}

void sub_188E97000(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_lastUpdate);
  *(v4 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_lastUpdate) = a1;
  v8 = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = *(v4 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  if (v10)
  {
    v11 = *(v4 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidInteraction);
    if (v11)
    {
      v131 = Strong;
      v12 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView;
      v13 = *(v4 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView);
      v14 = v10;
      v129 = v11;
      [v13 bounds];
      Width = CGRectGetWidth(v137);
      [*(v4 + v12) bounds];
      Height = CGRectGetHeight(v138);
      if (Height >= Width)
      {
        Height = Width;
      }

      v17 = Height * 0.5;
      v18 = *(v4 + v12);
      [v8 trackBounds];
      [v18 setBounds_];

      v19 = *(v4 + v12);
      [v8 trackTransform];
      [v19 setTransform_];

      v20 = [*(v4 + v12) layer];
      [v20 setCornerRadius_];

      v21 = &selRef_setEnqueuedWillEnterForegroundActions_;
      v22 = &selRef_finishTransition;
      if (((*((*MEMORY[0x1E69E7D40] & *v4) + 0x350))() & 1) == 0)
      {
        v23 = *(v4 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_tickView);
        if (v23)
        {
          v24 = v14;
          v25 = *(v4 + v12);
          v26 = v23;
          v27 = v25;
          v14 = v24;
          v22 = &selRef_finishTransition;
          [v27 frame];
          MinX = CGRectGetMinX(v139);
          [*(v4 + v12) frame];
          v29 = CGRectGetMaxY(v140) + 3.0;
          [*(v4 + v12) frame];
          [v26 setFrame_];
          [v8 trackTransform];
          [v26 setTransform_];

          v21 = &selRef_setEnqueuedWillEnterForegroundActions_;
        }
      }

      [v8 barFrame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      if (a4)
      {
        v38 = v30;
        v39 = &selRef_thinKeycapsFontName;
        goto LABEL_25;
      }

      v39 = &selRef_thinKeycapsFontName;
      [v8 trackBounds];
      if (v40 <= 0.0)
      {
        v38 = v31;
LABEL_25:
        [*(v4 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barView) v21[400]];
        v53 = [v4 _shouldReverseLayoutDirection];
        [v8 v39[489]];
        v130 = v14;
        sub_188BFF920(v14, v38, v33, v35, v37, v54, v55, v56, v57);
        [v4 bounds];
        [v131 trackRectForBounds_];
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v66 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_maximumView;
        if (v53)
        {
          v67 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_maximumView;
        }

        else
        {
          v67 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_minimumView;
        }

        v68 = *(v4 + v67);
        if (v53)
        {
          v66 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_minimumView;
        }

        v127 = *(v4 + v66);
        v69 = v127;
        v128 = v68;
        [v4 bounds];
        [v131 minimumValueImageRectForBounds_];
        v71 = v70;
        v73 = v72;
        v75 = v74;
        v77 = v76;
        [v4 bounds];
        [v131 maximumValueImageRectForBounds_];
        if (v53)
        {
          v82 = v71;
        }

        else
        {
          v82 = v78;
        }

        v126 = v82;
        if (v53)
        {
          v83 = v73;
        }

        else
        {
          v83 = v79;
        }

        v125 = v83;
        if (v53)
        {
          v84 = v75;
        }

        else
        {
          v84 = v80;
        }

        v124 = v84;
        if (v53)
        {
          v85 = v77;
        }

        else
        {
          v85 = v81;
        }

        if (!v53)
        {
          v78 = v71;
        }

        v122 = v78;
        v123 = v85;
        if (v53)
        {
          v86 = v79;
        }

        else
        {
          v86 = v73;
        }

        if (v53)
        {
          v87 = v80;
        }

        else
        {
          v87 = v75;
        }

        v120 = v87;
        v121 = v86;
        if (v53)
        {
          v88 = v81;
        }

        else
        {
          v88 = v77;
        }

        v119 = v88;
        [*(v4 + v12) v22[509]];
        v89 = CGRectGetMinX(v143);
        v144.origin.x = v59;
        v144.origin.y = v61;
        v144.size.width = v63;
        v144.size.height = v65;
        v90 = CGRectGetMinX(v144);
        v145.origin.x = v59;
        v145.origin.y = v61;
        v145.size.width = v63;
        v145.size.height = v65;
        MaxX = CGRectGetMaxX(v145);
        [*(v4 + v12) v22[509]];
        v92 = CGRectGetMaxX(v146);
        v93 = swift_unknownObjectWeakLoadStrong();
        if (v93 && (v94 = v93, v95 = [v93 _sliderConfiguration], v94, v95))
        {
          objc_opt_self();
          v96 = swift_dynamicCastObjCClass();
          if (!v96)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v96 = 0;
        }

        v97 = v89 - v90;
        v98 = MaxX - v92;
        v99 = [v96 delegate];

        if (v99)
        {
          if ([v99 respondsToSelector_])
          {
            [v99 _sliderFluidInteractionWillRubberband_insets_];
          }

          if ([v99 respondsToSelector_])
          {
            [v99 _sliderFluidInteractionWillExtend_insets_];
          }

          swift_unknownObjectRelease();
        }

        v100 = swift_unknownObjectWeakLoadStrong();
        if (v100)
        {
          v101 = v100;
          v102 = [v100 _sliderConfiguration];

          if (v102)
          {
            objc_opt_self();
            v103 = swift_dynamicCastObjCClass();
            if (v103)
            {
              v104 = [v103 disableSliderRubberbandTransform];
              swift_unknownObjectRelease();
              if (v104)
              {
                v105 = *(v4 + v12);
                v132 = 0x3FF0000000000000uLL;
                v133 = 0;
                v134 = 0x3FF0000000000000;
                v135 = 0uLL;
                [v105 setTransform_];
                [*(v4 + v12) frame];
                CGRectGetMinX(v147);
                v148.origin.x = v59;
                v148.origin.y = v61;
                v148.size.width = v63;
                v148.size.height = v65;
                CGRectGetMinX(v148);
                v149.origin.x = v59;
                v149.origin.y = v61;
                v149.size.width = v63;
                v149.size.height = v65;
                [*(v4 + v12) frame];
                CGRectGetMaxX(v150);
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }
        }

        if (v68)
        {
          v106 = v128;
          v151.origin.x = v122;
          v151.origin.y = v121;
          v151.size.width = v120;
          v151.size.height = v119;
          v107 = v97 + CGRectGetMidX(v151);
          v152.origin.x = v122;
          v152.origin.y = v121;
          v152.size.width = v120;
          v152.size.height = v119;
          [v106 setCenter_];
        }

        if (v127)
        {
          v108 = v69;
          v153.origin.x = v126;
          v153.origin.y = v125;
          v153.size.width = v124;
          v153.size.height = v123;
          v109 = CGRectGetMidX(v153) - v98;
          v154.origin.x = v126;
          v154.origin.y = v125;
          v154.size.width = v124;
          v154.size.height = v123;
          [v108 setCenter_];
        }

        v110 = [v8 type];
        v111 = (v110 >> 1) & 1;
        if ((v110 & 4) != 0)
        {
          v111 = 2;
        }

        *(v4 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidUpdateSource) = v111;
        v112 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_interactiveChangeState;
        if (*(v4 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_interactiveChangeState))
        {
          v113 = [v8 isAtTarget];
          v114 = 0;
          if (v113)
          {
            v115 = 3;
          }

          else
          {
            v115 = 2;
          }

          *(v4 + v112) = v115;
          if ((*(v4 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging) & 1) == 0)
          {
            v116 = v130;
            if (v113)
            {
              sub_188E96E38();
              v114 = 1;
            }

            goto LABEL_85;
          }
        }

        else
        {
          v114 = 0;
        }

        v116 = v130;
LABEL_85:
        if (([v8 type] & 2) != 0 || (objc_msgSend(v8, sel_type) & 4) != 0)
        {
          if ([v8 isAtTarget])
          {
            v117 = 1;
          }

          else
          {
            v117 = [v131 isContinuous];
          }
        }

        else
        {
          v117 = 0;
        }

        [v129 value];
        *&v118 = v118;
        sub_188E962EC(v117, v114, *&v118);

        return;
      }

      v41 = *&a2;
      v141.origin.x = v31;
      v141.origin.y = v33;
      v141.size.width = v35;
      v141.size.height = v37;
      v42 = CGRectGetMinX(v141);
      [v8 trackBounds];
      v44 = v43;
      v45 = v42 / v43;
      v46 = v42 / v43;
      if (v42 / v43 > 0.02)
      {
        v47 = *&a2;
        if (v45 < 0.98)
        {
          goto LABEL_19;
        }

        v46 = 1.0 - v45;
      }

      v47 = _UILerp(v46 / 0.02, *&a2);
LABEL_19:
      v38 = v47 * 0.5 + v45 * (v44 - v47);
      v142.origin.x = v31;
      v142.origin.y = v33;
      v142.size.width = v35;
      v142.size.height = v37;
      v48 = CGRectGetMaxX(v142);
      [v8 trackBounds];
      v50 = v49;
      v51 = v48 / v49;
      v52 = v51;
      if (v51 > 0.02)
      {
        if (v51 < 0.98)
        {
LABEL_23:
          v35 = v41 * 0.5 + v51 * (v50 - v41) - v38;
          goto LABEL_25;
        }

        v52 = 1.0 - v51;
      }

      v41 = _UILerp(v52 / 0.02, *&a2);
      goto LABEL_23;
    }
  }
}

void sub_188E979CC(void *a1)
{
  v3 = [a1 state] == 1 || objc_msgSend(a1, sel_state) == 2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = *(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidInteraction);
  if (v5)
  {
    v41 = Strong;
    v6 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging;
    if (v3 != *(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging))
    {
      v7 = MEMORY[0x1E69E7D40];
      if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x300))())
      {
        *(v1 + v6) = v3;
        v8 = v5;
        v9 = &unk_1EA935000;
        if (!v3)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v12 = v5;
        v13 = sub_18A4A7258();
        [v41 willChangeValueForKey_];

        *(v1 + v6) = v3;
        v14 = sub_18A4A7258();
        [v41 didChangeValueForKey_];

        v9 = &unk_1EA935000;
        if (!v3)
        {
LABEL_16:
          if ((*((*v7 & *v1) + 0x350))(v8))
          {
            v15 = objc_opt_self();
            v16 = swift_allocObject();
            *(v16 + 16) = v1;
            *(v16 + 24) = v3;
            aBlock[4] = sub_188E9CD04;
            aBlock[5] = v16;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_188A4A8F0;
            aBlock[3] = &block_descriptor_382;
            v17 = _Block_copy(aBlock);
            v18 = v1;

            [v15 animateWithDuration:v17 animations:0.2];
            _Block_release(v17);
          }

          v19 = swift_unknownObjectWeakLoadStrong();
          if (v19 && (v20 = v19, v21 = [v19 _sliderConfiguration], v20, v21))
          {
            objc_opt_self();
            v22 = swift_dynamicCastObjCClass();
            if (!v22)
            {
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v22 = 0;
          }

          v23 = [v22 delegate];

          if (v23)
          {
            if (v3)
            {
              [a1 locationInView_];
              [v23 _sliderFluidInteractionWillBegin_withLocation_];
            }

            else
            {
              [v23 _sliderFluidInteractionWillEnd_];
            }

            swift_unknownObjectRelease();
          }

          [v1 bounds];
          v24 = [v41 trackRectForBounds_];
          v26 = v25;
          v28 = v27;
          if (v3)
          {
            v29 = (*((*v7 & *v1) + 0x328))(v24);
            v30 = swift_unknownObjectWeakLoadStrong();
            v31 = 1.0;
            if (v30)
            {
              v32 = v30;
              v33 = [v30 _sliderConfiguration];

              if (v33)
              {
                objc_opt_self();
                v34 = swift_dynamicCastObjCClass();
                if (v34)
                {
                  [v34 horizontalExpansionFactor];
                  v31 = v35;
                }

                swift_unknownObjectRelease();
              }
            }

            v28 = v28 * v29;
            v26 = v26 * v31;
          }

          else if ((*(v1 + v9[108]) | 2) == 3)
          {
            sub_188E96E38();
            [v5 value];
            *&v36 = v36;
            sub_188E962EC(1, 1, *&v36);
          }

          v37 = sub_188BFC734(v26, v28);
          [v5 setConfiguration_];

          return;
        }
      }

      *(v1 + v9[108]) = 1;
      goto LABEL_16;
    }

    v10 = swift_unknownObjectWeakLoadStrong();
    v39 = v5;
    if (v10)
    {
      v11 = [v10 _sliderConfiguration];

      if (v11)
      {
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (!v10)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v10 = 0;
      }
    }

    v38 = [v10 delegate];

    if (v38)
    {
      [a1 locationInView_];
      [v38 _sliderFluidInteractionWillContinue_withLocation_];
      swift_unknownObjectRelease();
    }

    Strong = v40;
  }
}

void sub_188E97FDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidInteraction);
  if (!v1)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data;
  v3 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  if (!v3)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = v3;
  v37 = v1;
  [v6 minimumEnabledValue];
  v8 = v7;
  v9 = *(v0 + v2);
  if (v9)
  {
    [v9 minimumValue];
    v11 = v10;
    v12 = *(v0 + v2);
    if (v12)
    {
      [v12 maximumValue];
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0.0;
  }

  v13 = 1.0;
LABEL_10:
  v14 = v13 - v11;
  v15 = 0.0;
  if (v14 > 0.0)
  {
    v15 = ((v8 - v11) / v14);
  }

  [v6 maximumEnabledValue];
  v17 = v16;
  v18 = *(v0 + v2);
  if (!v18)
  {
    v20 = 0.0;
    goto LABEL_16;
  }

  [v18 minimumValue];
  v20 = v19;
  v21 = *(v0 + v2);
  if (!v21)
  {
LABEL_16:
    v22 = 1.0;
    goto LABEL_17;
  }

  [v21 maximumValue];
LABEL_17:
  v23 = v22 - v20;
  v24 = 0.0;
  if (v23 > 0.0)
  {
    v24 = ((v17 - v20) / v23);
  }

  v25 = [v37 configuration];
  [v25 minValue];
  v27 = v26;

  if (v15 != v27 || (v28 = [v37 configuration], objc_msgSend(v28, sel_maxValue), v30 = v29, v28, v24 != v30))
  {
    [v0 bounds];
    v31 = [v5 trackRectForBounds_];
    v34 = v33;
    v35 = v32;
    if (*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging) == 1)
    {
      v35 = v32 * (*((*MEMORY[0x1E69E7D40] & *v0) + 0x328))(v31);
    }

    v36 = sub_188BFC734(v34, v35);
    [v37 setConfiguration_];
  }
}

id sub_188E98280(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for _UISliderFluidVisualElement();
  Strong = objc_msgSendSuper2(&v12, sel_hitTest_withEvent_, a1, a2, a3);
  if (Strong)
  {
    sub_188A34624(0, &qword_1ED48F680);
    v8 = Strong;
    v9 = v3;
    v10 = sub_18A4A7C88();

    if (v10)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
    }
  }

  return Strong;
}

BOOL sub_188E983E0(CGFloat a1, double a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v6 = Strong;
  v7 = *&v2[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  if (([v8 isFluidTrackHidden] & 1) == 0)
  {

    return 1;
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9 && (v10 = v9, v11 = [v9 _sliderConfiguration], v10, v11))
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 delegate];

  if (v13)
  {
    if ([v13 respondsToSelector_])
    {
      v14 = [v13 _slider_shouldBeginDragAtPoint_];
      swift_unknownObjectRelease();

      return v14;
    }

    swift_unknownObjectRelease();
  }

  [v2 bounds];
  [v6 trackRectForBounds_];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  if (CGRectGetMinX(v21) > a1)
  {

LABEL_16:
    return 1;
  }

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MaxX = CGRectGetMaxX(v22);

  return MaxX < a1;
}

uint64_t sub_188E985E0(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  [a1 locationInView_];
  v6 = v5;
  v8 = v7;

  v9 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x438))(v6, v8);
  v10 = *(v2 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_expansionGesture);
  if (!v10 || (sub_188A34624(0, &unk_1EA930B30), v11 = a1, v12 = v10, v13 = sub_18A4A7C88(), v12, v11, v14 = v9, (v13 & 1) == 0))
  {
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 isTracking];

      if (v17)
      {
        v14 = 0;
        return v14 & 1;
      }
    }

    v18 = [a1 _isGestureType_];
    v14 = v18 ^ 1;
    if ((v18 & 1) == 0 && ((v9 ^ 1) & 1) == 0)
    {
      v19 = [a1 view];
      if (v19)
      {
        v20 = v19;
        sub_188A34624(0, &qword_1ED48F680);
        v21 = v2;
        v22 = sub_18A4A7C88();

        if (v22)
        {
          goto LABEL_27;
        }
      }

      v23 = [a1 view];
      v24 = swift_unknownObjectWeakLoadStrong();
      v25 = v24;
      if (v23)
      {
        if (v24)
        {
          sub_188A34624(0, &qword_1ED48F680);
          v26 = sub_18A4A7C88();

          if (v26)
          {
            goto LABEL_27;
          }

          goto LABEL_18;
        }

        v25 = v23;
      }

      else if (!v24)
      {
        goto LABEL_27;
      }

LABEL_18:
      if ([a1 _isGestureType_])
      {
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v28 = v27;
          v29 = a1;
          if ([v28 numberOfTouchesRequired] == 1)
          {
            v30 = [v28 direction];

            v14 = (v30 & 3) == 0;
            return v14 & 1;
          }
        }
      }

      if ([a1 _isGestureType_])
      {
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v32 = v31;
          v33 = a1;
          if ([v32 minimumNumberOfTouches] <= 1)
          {
            [v32 translationInView_];
            v36 = v35;
            v38 = v37;

            v14 = fabs(v36) <= fabs(v38);
            return v14 & 1;
          }
        }
      }

LABEL_27:
      v14 = 1;
    }
  }

  return v14 & 1;
}

void sub_188E98AB4()
{
  v1 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data];
  if (v2)
  {
    v3 = v2;
    [v3 value];
    v5 = v4;
    [v3 minimumValue];
    v7 = v6;
    [v3 maximumValue];
    v9 = v8 - v7;
    v10 = 0.0;
    if (v9 > 0.0)
    {
      v10 = (v5 - v7) / v9;
    }

    v11 = sub_188BFFEB8(1, v10);
    *&v12 = v7 + (v9 * v11);
    if ((v13 & 1) == 0)
    {
      *&v12 = v5;
    }

    [*&v0[v1] setValue_];
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = v0;
    *(v15 + 24) = v11;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_188DF83A8;
    *(v16 + 24) = v15;
    v19[4] = sub_188E3FE50;
    v19[5] = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_188A4A968;
    v19[3] = &block_descriptor_352;
    v17 = _Block_copy(v19);
    v18 = v0;

    [v14 performWithoutAnimation_];
    _Block_release(v17);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }

    else
    {
      sub_188E97FDC();
    }
  }
}

void sub_188E98D6C(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x418))();
  sub_188DFB8E4();
  sub_188BFB3D4(0);
  sub_188BFB9E4();
}

void sub_188E98DDC(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x418);
  v2 = a1;
  v1();
}

id sub_188E98E7C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);
  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      v4 = v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_188E98EE4(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barView;
    v5 = *(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barView);
    v26 = v2;
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [*(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView) bounds];
    sub_188BFF920(v26, v7, v9, v11, v13, v14, v15, v16, v17);
    v18 = [v26 isMinimumTrackVisible];
    v19 = v18;
    if (a1 <= 0.0)
    {
      if (v18)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = 0.0;
      }

      v25 = *(v1 + v4);
      [v25 setAlpha_];
    }

    else
    {
      v20 = objc_opt_self();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v19;
      aBlock[4] = sub_188E9CCF0;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A8F0;
      aBlock[3] = &block_descriptor_333;
      v23 = _Block_copy(aBlock);

      [v20 animateWithDuration:v23 animations:a1];

      _Block_release(v23);
    }
  }
}

void sub_188E99110(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = 0.0;
    if (a2)
    {
      v4 = 1.0;
    }

    v5 = Strong;
    [*(Strong + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barView) setAlpha_];
  }
}

void *sub_188E991F8()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_leftTrackEffectView];
  if (v1 && (v2 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_rightTrackEffectView]) != 0)
  {
    v3 = v1;
    v4 = v2;
    if ([v0 _shouldReverseLayoutDirection])
    {
    }

    else
    {

      return v2;
    }
  }

  else
  {
    v1 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_trackView];
    v5 = v1;
  }

  return v1;
}

void sub_188E992D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  if (v1)
  {
    v4 = v1;
    v2 = [v4 isFluidTrackHidden];
    v3 = 1.0;
    if (v2)
    {
      v3 = 0.0;
    }

    [*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView) setAlpha_];
  }
}

void sub_188E993A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidInteraction);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      v5 = [v3 configuration];
      [v4 sliderSpeedMultiplier];
      v7 = [v5 copyWithVelocityMultiplier_];

      [v3 setConfiguration_];
    }
  }
}

uint64_t sub_188E99778()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([v1 isHighlighted])
    {
      [v1 setHighlighted_];
    }

    [v1 _sendActionsForEvents_withEvent_];
  }

  return 1;
}

uint64_t sub_188E99828()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([v2 isTracking])
    {
      [v0 endTrackingWithTouch:0 withEvent:0];
    }

    if ([v2 isHighlighted])
    {
      [v2 setHighlighted_];
    }

    [v2 _sendActionsForEvents_withEvent_];
  }

  return 1;
}

double sub_188E99904()
{
  result = 1.55;
  if (*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_thumbImageView))
  {
    return 1.0;
  }

  return result;
}

double sub_188E99928()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x4F8))();
  result = 2.4;
  if ((v1 & 1) == 0)
  {
    return 1.0;
  }

  return result;
}

void *sub_188E99A94()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result sliderStyle];

    return (v2 == 1);
  }

  return result;
}

void sub_188E99B10(void *a1)
{
  sub_188E979CC(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ([a1 state] == 1 || objc_msgSend(a1, sel_state) == 3 || objc_msgSend(a1, sel_state) == 4)
    {
      [*(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView) frame];
      [Strong value];
      v4 = v3;
      [v1 bounds];
      LODWORD(v14) = v4;
      v5 = [Strong thumbRectForBounds:v14 trackRect:? value:?];
      v9 = MEMORY[0x1E69E7D40];
      if (*(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging))
      {
        v10 = v6;
        v11 = v7;
        v12 = v8;
        (*((*MEMORY[0x1E69E7D40] & *v1) + 0x470))(v5);
        v8 = v12;
        v7 = v11;
        v6 = v10;
      }

      v13.n128_f64[0] = UIRectGetCenter(v6, v7, v8);
      (*((*v9 & *v1) + 0x500))(v13);
    }
  }
}

void sub_188E99D98()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x468))();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v2 = Strong;
  v3 = [Strong minimumValueImage];

  if (!v3)
  {
    goto LABEL_6;
  }

  [v3 size];
  [v3 size];
  if (v4 <= 34.0)
  {

LABEL_6:
    v6 = 34.0;
    goto LABEL_7;
  }

  [v3 size];
  v6 = v5;

LABEL_7:
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 maximumValueImage];

    if (v9)
    {
      [v9 size];
      [v9 size];
      if (v6 < v10)
      {
        [v9 size];
      }
    }
  }
}

void sub_188E99F7C()
{
  v1 = OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_thumbImageView;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_thumbImageView);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong thumbImageForState_];

    if (v6)
    {
      v7 = OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView;
      v8 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView);
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 clearColor];
      [v10 setRestingBackgroundColor_];

      [*(v0 + v7) setRestingShadowProperties_];
      v12 = [objc_allocWithZone(UIImageView) initWithImage_];
      v13 = *(v0 + v7);
      [v13 addSubview_];

      v14 = *(v0 + v1);
      *(v0 + v1) = v12;
      goto LABEL_15;
    }
  }

  v15 = OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView;
  v16 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView);
  v17 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  if (!v17)
  {
    v20 = v16;
LABEL_11:
    v19 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_defaultThumbTintColor);
    goto LABEL_12;
  }

  v18 = v16;
  v19 = [v17 thumbTintColor];
  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_12:
  [v16 setRestingBackgroundColor_];

  v21 = qword_1EA930530;
  v22 = *(v0 + v15);
  if (v21 != -1)
  {
    swift_once();
  }

  [v22 setRestingShadowProperties_];
  v14 = v22;
LABEL_15:
}

void sub_188E9A1BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView);
  v2 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data;
  v3 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  v7 = v1;
  if (v3)
  {
    v4 = v1;
    v3 = [v3 thumbTintColor];
    if (!v3)
    {
      v5 = *(v0 + v2);
      if (v5)
      {
        v3 = [v5 minimumTrackTintColor];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v6 = v1;
  }

  [v7 setTintColor_];
}

void sub_188E9A288()
{
  sub_188BFDD9C();

  sub_188E9A1BC();
}

void sub_188E9A340()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for _UISliderGlassVisualElement();
  objc_msgSendSuper2(&v6, sel_didSetThumbTintColor);
  sub_188E9A1BC();
  v1 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView];
  v2 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data];
  if (!v2)
  {
    v5 = v1;
LABEL_5:
    v4 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_defaultThumbTintColor];
    goto LABEL_6;
  }

  v3 = v1;
  v4 = [v2 thumbTintColor];
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_6:
  [v1 setRestingBackgroundColor_];
}

void sub_188E9A448()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x4F8))();
  v2 = OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView;
  v3 = [*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView) superview];
  if (v1)
  {
    if (!v3)
    {
      return;
    }

    [*(v0 + v2) removeFromSuperview];
    goto LABEL_10;
  }

  if (!v3)
  {
    [v0 addSubview_];
LABEL_10:
    sub_188BFB3D4(0);

    sub_188BFB9E4();
    return;
  }
}

void sub_188E9A594()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x4F8))())
  {
    v5.receiver = v0;
    v5.super_class = type metadata accessor for _UISliderGlassVisualElement();
    objc_msgSendSuper2(&v5, sel_thumbHitEdgeInsets);
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView) bounds];
    x = v6.origin.x;
    y = v6.origin.y;
    width = v6.size.width;
    height = v6.size.height;
    CGRectGetWidth(v6);
    v7.origin.x = x;
    v7.origin.y = y;
    v7.size.width = width;
    v7.size.height = height;
    CGRectGetHeight(v7);
  }
}

uint64_t sub_188E9A710(CGFloat a1, double a2)
{
  if (!sub_188E983E0(a1, a2))
  {
    return 0;
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x4F8))())
  {
    return 1;
  }

  v6 = OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView;
  [*(v2 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView) convertPoint:v2 fromCoordinateSpace:{a1, a2}];
  v8 = v7;
  v10 = v9;
  [*(v2 + v6) bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v2 thumbHitEdgeInsets];
  v25.origin.x = UIRectInset(v12, v14, v16, v18, v19, v22, v21, v20);
  v24.x = v8;
  v24.y = v10;
  v23 = CGRectContainsPoint(v25, v24);
  result = 1;
  if ((*(v2 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging) & 1) == 0 && !v23)
  {
    result = *(v2 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
    if (result)
    {
      return [result isTrackEnabled];
    }
  }

  return result;
}

void sub_188E9A868()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_defaultThumbTintColor);
}

char *sub_188E9A910()
{
  v1 = OBJC_IVAR____TtC5UIKit23_UISliderColorKnobLayer_maskLayer;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v15.receiver = v0;
  v15.super_class = type metadata accessor for _UISliderColorKnobLayer();
  v2 = objc_msgSendSuper2(&v15, sel_init);
  v3 = *MEMORY[0x1E6979E40];
  v4 = v2;
  [v4 setCornerRadius_];
  v5 = *MEMORY[0x1E69796E8];
  [v4 setCornerCurve_];
  [v4 setAllowsEdgeAntialiasing_];
  LODWORD(v6) = 1.0;
  [v4 setShadowOpacity_];
  v7 = objc_opt_self();
  v8 = [v7 _controlShadowColor];
  v9 = [v8 CGColor];

  [v4 setShadowColor_];
  [v4 setShadowOffset_];
  [v4 setShadowRadius_];
  v10 = OBJC_IVAR____TtC5UIKit23_UISliderColorKnobLayer_maskLayer;
  [*&v4[OBJC_IVAR____TtC5UIKit23_UISliderColorKnobLayer_maskLayer] setCornerCurve_];
  [*&v4[v10] setAllowsEdgeAntialiasing_];
  v11 = *&v4[v10];
  v12 = [v7 blackColor];
  v13 = [v12 CGColor];

  [v11 setBorderColor_];
  [*&v4[v10] setBorderWidth_];
  [v4 setMask_];

  return v4;
}

char *sub_188E9AFD0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_colorKnobView;
  type metadata accessor for _UISliderColorKnobView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_checkerboardView;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_gradientView;
  *&v4[v11] = [objc_allocWithZone(_UIGradientView) init];
  v34.receiver = v4;
  v34.super_class = type metadata accessor for _UISliderColorVisualElement();
  v12 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_checkerboardView;
  v14 = *&v12[OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_checkerboardView];
  v15 = v12;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v12[v13] setAutoresizingMask_];
  v16 = *&v12[v13];
  v17 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_trackView;
  v18 = *&v15[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_trackView];
  v19 = v15;
  v20 = v16;
  [v18 bounds];
  [v20 setFrame_];

  [*&v12[v13] setHidden_];
  [*&v15[v17] addSubview_];
  v21 = OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_gradientView;
  [*&v19[OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_gradientView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v19[v21] setAutoresizingMask_];
  v22 = *&v15[v17];
  v23 = *&v19[v21];
  [v22 bounds];
  [v23 setFrame_];

  v24 = [*&v19[v21] gradientLayer];
  [v24 setStartPoint_];

  v25 = [*&v19[v21] gradientLayer];
  [v25 setEndPoint_];

  [*&v15[v17] addSubview_];
  v26 = OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_colorKnobView;
  v27 = *&v19[OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_colorKnobView];
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 whiteColor];
  [v29 setBackgroundColor_];

  [*&v19[v26] setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 addSubview_];
  v31 = *&v19[OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView];

  v32 = [v28 clearColor];
  [v31 setRestingBackgroundColor_];

  return v19;
}

id sub_188E9B358(double a1, double a2, double a3, double a4, double a5, double a6)
{
  sub_188BFF674(a1, a2, a3, a4, a5, a6);
  v13 = OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_colorKnobView;
  [*&v6[OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_colorKnobView] setCenter_];
  v14 = *&v6[v13];
  v15 = [v6 traitCollection];
  [v15 displayScale];
  v17 = v16;

  [v14 setBounds_];
  v18 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging;
  if (v6[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging])
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 1.0;
  }

  [*&v6[v13] setAlpha_];
  v20 = *&v6[OBJC_IVAR____TtC5UIKit27_UISliderGlassVisualElement_lensView];
  if (v6[v18])
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  return [v20 setAlpha_];
}

void sub_188E9B4A0()
{
  v1 = OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_checkerboardView;
  v2 = [*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_checkerboardView) backgroundColor];
  if (v2)
  {
  }

  else
  {
    v9.width = 24.0;
    v9.height = 24.0;
    UIGraphicsBeginImageContextWithOptions(v9, 0, 0.0);
    v3 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:0.851 green:0.847 blue:0.855 alpha:1.0];
    [v3 set];

    v10.origin.x = 0.0;
    v10.origin.y = 0.0;
    v10.size.width = 12.0;
    v10.size.height = 12.0;
    UIRectFill(v10);
    v11.origin.x = 12.0;
    v11.origin.y = 12.0;
    v11.size.width = 12.0;
    v11.size.height = 12.0;
    UIRectFill(v11);
    v4 = *(v0 + v1);
    v5 = UIGraphicsGetImageFromCurrentImageContext();
    if (v5)
    {
      v6 = v5;
      v7 = [objc_allocWithZone(UIColor) initWithPatternImage_];

      [v4 setBackgroundColor_];

      UIGraphicsEndImageContext();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_188E9B5F8()
{
  v61.receiver = v0;
  v61.super_class = type metadata accessor for _UISliderColorVisualElement();
  objc_msgSendSuper2(&v61, sel_didUpdateConfiguration);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong _sliderConfiguration];

    if (v3)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass() || (v60[1] = &unk_1EFE7F4B0, (v4 = swift_dynamicCastObjCProtocolConditional()) == 0))
      {
        swift_unknownObjectRelease();
        return;
      }

      v5 = v4;
      v6 = [v4 showCheckerboard];
      v7 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_checkerboardView);
      if (v6)
      {
        [v7 setHidden_];
        sub_188E9B4A0();
      }

      else
      {
        [v7 setHidden_];
      }

      v8 = [v0 _shouldReverseLayoutDirection];
      v9 = OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_gradientView;
      v10 = [*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_gradientView) gradientLayer];
      v54 = v5;
      v11 = [v5 colors];
      sub_188A34624(0, qword_1ED4913C0);
      v12 = sub_18A4A7548();

      if (!v8)
      {
        if (v12 >> 62)
        {
          goto LABEL_62;
        }

        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_16;
      }

      v8 = v12 >> 62;
      if (v12 >> 62)
      {
        goto LABEL_44;
      }

      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v0; v13; i = v0)
      {
        v60[0] = MEMORY[0x1E69E7CC0];
        v14 = v60;
        sub_188B221A4(0, v13 & ~(v13 >> 63), 0);
        v5 = v60[0];
        if (v8)
        {
          v15 = sub_18A4A7F68();
        }

        else
        {
          v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v51 = v10;
        v56 = v9;
        if (v13 < 0)
        {
          goto LABEL_64;
        }

        v9 = 0;
        v10 = v12 & 0xC000000000000001;
        v0 = (v12 & 0xFFFFFFFFFFFFFF8);
        v8 = v15 + 3;
        while ((v15 ^ v9) != 0x8000000000000000)
        {
          v26 = v8 - 4;
          if (v10)
          {
            v27 = sub_188E48DA0(v26, v12);
          }

          else
          {
            if ((v26 & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            if (v26 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v27 = *(v12 + 8 * v8);
          }

          v28 = v27;
          v29 = [v27 CGColor];
          type metadata accessor for CGColor(0);
          v59 = v30;

          *&v58 = v29;
          v60[0] = v5;
          v32 = v5[2];
          v31 = v5[3];
          if (v32 >= v31 >> 1)
          {
            sub_188B221A4((v31 > 1), v32 + 1, 1);
            v5 = v60[0];
          }

          ++v9;
          v5[2] = v32 + 1;
          sub_188A55538(&v58, &v5[4 * v32 + 4]);
          --v8;
          if (v13 == v9)
          {

            v0 = i;
            v9 = v56;
            v10 = v51;
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v13 = sub_18A4A7F68();
      }

LABEL_46:
      v33 = sub_18A4A7518();

      [v10 setColors_];

      v5 = [*(v0 + v9) gradientLayer];
      v12 = v54;
      v25 = [v54 locations];
      if (v25)
      {
        v14 = sub_188A34624(0, &qword_1ED48FD80);
        v13 = sub_18A4A7548();

        v8 = v13 & 0xFFFFFFFFFFFFFF8;
        if (v13 >> 62)
        {
          goto LABEL_65;
        }

        v34 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
          v49 = v14;
          v52 = v5;
          *&v58 = MEMORY[0x1E69E7CC0];
          v0 = &v58;
          sub_18A4A8208();
          v57 = v13 & 0xFFFFFFFFFFFFFF8;
          for (j = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = v41)
          {
            v8 = 0;
            v5 = (v13 & 0xC000000000000001);
            v10 = j + 3;
            v9 = &_OBJC_LABEL_PROTOCOL____UIRemoteViewController_ViewControllerOperatorInterface;
            while ((j ^ v8) != 0x8000000000000000)
            {
              v39 = v10 - 4;
              if (v5)
              {
                v36 = sub_188E48F84(v39, v13);
              }

              else
              {
                if ((v39 & 0x8000000000000000) != 0)
                {
                  goto LABEL_60;
                }

                if (v39 >= *(v57 + 16))
                {
                  goto LABEL_61;
                }

                v36 = *(v13 + 8 * v10);
              }

              v37 = v36;
              ++v8;
              [v36 doubleValue];
              [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];

              sub_18A4A81D8();
              v12 = *(v58 + 16);
              sub_18A4A8218();
              sub_18A4A8228();
              v0 = &v58;
              sub_18A4A81E8();
              --v10;
              if (v34 == v8)
              {

                v5 = v52;
                goto LABEL_69;
              }
            }

            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            v13 = sub_18A4A7F68();
LABEL_16:
            v55 = v9;
            v50 = v10;
            if (!v13)
            {
              break;
            }

            i = v0;
            v60[0] = MEMORY[0x1E69E7CC0];
            v14 = v60;
            sub_188B221A4(0, v13 & ~(v13 >> 63), 0);
            if ((v13 & 0x8000000000000000) == 0)
            {
              v16 = 0;
              v17 = v60[0];
              do
              {
                if ((v12 & 0xC000000000000001) != 0)
                {
                  v18 = sub_188E48DA0(v16, v12);
                }

                else
                {
                  v18 = *(v12 + 8 * v16 + 32);
                }

                v19 = v18;
                v20 = [v18 CGColor];
                type metadata accessor for CGColor(0);
                v59 = v21;

                *&v58 = v20;
                v60[0] = v17;
                v23 = *(v17 + 16);
                v22 = *(v17 + 24);
                if (v23 >= v22 >> 1)
                {
                  sub_188B221A4((v22 > 1), v23 + 1, 1);
                  v17 = v60[0];
                }

                ++v16;
                *(v17 + 16) = v23 + 1;
                sub_188A55538(&v58, (v17 + 32 * v23 + 32));
              }

              while (v13 != v16);

              v0 = i;
              goto LABEL_27;
            }

            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            v40 = sub_18A4A7F68();
            if (!v40)
            {
              goto LABEL_68;
            }

            v34 = v40;
            v57 = v8;
            v49 = v14;
            v52 = v5;
            *&v58 = MEMORY[0x1E69E7CC0];
            v0 = &v58;
            sub_18A4A8208();
            v41 = sub_18A4A7F68();
            if (v34 < 0)
            {
              __break(1u);
              return;
            }
          }

LABEL_27:
          v24 = sub_18A4A7518();

          [v50 setColors_];

          v5 = [*(v0 + v55) gradientLayer];
          v12 = v54;
          v25 = [v54 locations];
          goto LABEL_70;
        }

LABEL_68:

LABEL_69:
        v25 = sub_18A4A7518();

        v0 = i;
        v12 = v54;
      }

LABEL_70:
      [v5 setLocations_];

      v42 = OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_gradientView;
      v43 = [*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_gradientView) gradientLayer];
      [v12 maxGain];
      v44 = MEMORY[0x1E69792A0];
      if (v45 <= 1.0)
      {
        v44 = MEMORY[0x1E6979290];
      }

      v46 = *v44;
      [v43 setPreferredDynamicRange_];

      v47 = [*(v0 + v42) gradientLayer];
      [v12 maxGain];
      [v47 setContentsHeadroom_];

      v48 = [*(v0 + v42) gradientLayer];
      [v48 setToneMapMode_];
      swift_unknownObjectRelease();
    }
  }
}

void sub_188E9BE94()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderColorVisualElement_gradientView);
}

id sub_188E9BEFC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for _UIScrollAwayInteraction.Direction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _UIScrollAwayInteraction.Direction(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_188E9C10C()
{
  result = qword_1EA935510;
  if (!qword_1EA935510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA935510);
  }

  return result;
}

void *sub_188E9C160(void *result, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = result;
    v7 = [result isFinished];
    v8 = [v6 sender];
    v9 = sub_18A4A6D88();
    v12[3] = v9;
    v12[4] = sub_188E9CD3C();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a4, v9);
    swift_unknownObjectWeakInit();
    v11[0] = v7;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    a2(v11);
    return sub_188E9CED8(v11);
  }

  return result;
}

void sub_188E9C26C(void *a1)
{
  v3 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView;
  [*(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView) bounds];
  Width = CGRectGetWidth(v45);
  [*(v1 + v3) bounds];
  Height = CGRectGetHeight(v46);
  if (Height >= Width)
  {
    Height = Width;
  }

  v6 = Height * 0.5;
  v7 = [*(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barView) layer];
  [v7 setCornerRadius_];

  [a1 value];
  v9 = v8;
  v10 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data;
  v11 = *(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  v12 = 1.0;
  if (v11)
  {
    [v11 minimumValue];
    v14 = v13;
    v15 = *(v1 + v10);
    if (v15)
    {
      [v15 maximumValue];
      v12 = v16;
    }
  }

  else
  {
    v14 = 0.0;
  }

  [*(v1 + v3) frame];
  v17 = [a1 trackBounds];
  v18 = MEMORY[0x1E69E7D40];
  v20 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x4F8))(v17);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v22 = v9;
    v23 = v14 + ((v12 - v14) * v22);
    Strong = swift_unknownObjectWeakLoadStrong();
    [v1 bounds];
    *&v43 = v23;
    if (Strong)
    {
      [Strong thumbRectForBounds:v43 trackRect:? value:?];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v33 = v28;
      v34 = v26;
    }

    else
    {
      [v1 thumbRectForBounds:v43 trackRect:? value:?];
      v30 = v35;
      v32 = v36;
    }

    v37.n128_f64[0] = UIRectGetCenter(v34, v33, v30);
    v39.n128_f64[0] = v30;
    if (*(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging) == 1)
    {
      v40 = v37.n128_u64[0];
      v41 = v38.n128_u64[0];
      v37.n128_f64[0] = (*((*v18 & *v1) + 0x470))();
      v38.n128_u64[0] = v41;
      v42 = v37.n128_f64[0];
      v37.n128_u64[0] = v40;
      v39.n128_f64[0] = v30 * v42;
      v32 = v32 * v42;
    }

    (*((*v18 & *v1) + 0x500))(v37, v38, 0.0, 0.0, v39, v32);
    v21 = *&v30;
  }

  sub_188E97000(a1, v21, v19, v20 & 1);
}

void sub_188E9C588()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data) = 0;
  v1 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_clipView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_trackView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_tickViews) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_tickView) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_leftTrackEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_rightTrackEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_minimumView) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_maximumView) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_usingSliderStyling) = 1;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_lastUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_hasPlayedBounceForCurrentValue) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_changeWithVolumeButtons) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_expansionGesture) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_interactiveChangeState) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_paddingAroundImage) = 0x4026000000000000;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_defaultExpansionFactor) = 0x4003333333333333;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_defaultHorizontalExpansionFactor) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_disabledAlpha) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_acceleratedThumbFillRange) = 0x3F947AE147AE147BLL;
  *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidUpdateSource) = 0;
  sub_18A4A8398();
  __break(1u);
}

id sub_188E9C794(double *a1, double *a2, double *a3, double a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = *(v4 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data);
  if (v9)
  {
    [v9 sliderSpeedMultiplier];
    v11 = v10 + -1.0;
  }

  else
  {
    v11 = 0.0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = [result _sliderConfiguration];

    if (!v14)
    {
      return 0;
    }

    v22 = &unk_1EFE72090;
    v15 = swift_dynamicCastObjCProtocolConditional();
    if (!v15 || fabsf(v11) > 0.01)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v20 = -1.0;
    v21 = -1.0;
    v19 = -1.0;
    *&v16 = a4;
    v17 = [v15 adjustPositionForTargetPosition:&v21 adjustedPosition:&v20 startPosition:&v19 endPosition:v16];
    *a1 = v21;
    if (a2)
    {
      *a2 = v20;
    }

    v18 = v17;
    if (a3)
    {
      *a3 = v19;
    }

    swift_unknownObjectRelease();
    return v18;
  }

  return result;
}

uint64_t sub_188E9C91C(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_isInteractivelyChanging))
  {
    return 1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  [a1 locationInView_];
  v6 = v5;
  v8 = v7;

  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x438);
  v10.n128_u64[0] = v6;
  v11.n128_u64[0] = v8;

  return v9(v10, v11);
}