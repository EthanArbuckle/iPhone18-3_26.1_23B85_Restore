uint64_t sub_21DA8C6AC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65858);
  v1 = __swift_project_value_buffer(v0, qword_27CE65858);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRISeparator.thickness.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

id sub_21DA8C7CC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness;
  swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  [v4 invalidateIntrinsicContentSize];
  return [v4 setNeedsDisplay];
}

id TTRISeparator.thickness.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness];
  swift_beginAccess();
  *v4 = v2;
  v4[8] = v3;
  [v1 invalidateIntrinsicContentSize];
  return [v1 setNeedsDisplay];
}

id (*TTRISeparator.thickness.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21DA8C92C;
}

id sub_21DA8C92C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    [v5 invalidateIntrinsicContentSize];

    return [v5 setNeedsDisplay];
  }

  return result;
}

uint64_t TTRISeparator.dotted.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_dotted;
  swift_beginAccess();
  return *(v0 + v1);
}

void TTRISeparator.dotted.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_dotted;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_21DA8CA2C();
}

void sub_21DA8CA2C()
{
  [v0 setNeedsDisplay];
  v1 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_dotted;
  swift_beginAccess();
  v2 = v0[v1];
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer];
  if (v2 == 1)
  {
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_21DC0AA00;
      v5 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v6 = v3;
      *(v4 + 32) = [v5 initWithInteger_];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_21D0D8CF0(0, &unk_280D0C1E0);
      v7 = sub_21DBFA5DC();

      [v6 setLineDashPattern_];

      return;
    }

    __break(1u);
    goto LABEL_8;
  }

  if (!v3)
  {
LABEL_8:
    __break(1u);
    return;
  }

  [v3 setLineDashPattern_];
}

void (*TTRISeparator.dotted.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21DA8CBF4;
}

void sub_21DA8CBF4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_21DA8CA2C();
  }
}

id TTRISeparator.init(axis:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness];
  *v4 = 0;
  v4[8] = 1;
  v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_dotted] = 0;
  v5 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_appliedBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis];
  *v6 = 0;
  v6[8] = 1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_21DA8CD00(a1);

  return v7;
}

id sub_21DA8CD00(uint64_t a1)
{
  swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis];
  *v3 = a1;
  v3[8] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v5 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer;
  v6 = *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer];
  *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer] = v4;

  if (!*&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor])
  {
    v7 = [objc_opt_self() separatorColor];
    TTRISeparator.backgroundColor.setter(v7);
  }

  result = [v1 layer];
  if (*&v1[v5])
  {
    v9 = result;
    [result addSublayer_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65630);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21DC08D00;
    v11 = sub_21DBF874C();
    v12 = MEMORY[0x277D74B68];
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    sub_21DBFB5CC();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id TTRISeparator.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRISeparator.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRISeparator.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness];
  *v4 = 0;
  v4[8] = 1;
  v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_dotted] = 0;
  v5 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_appliedBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis];
  *v6 = 0;
  v6[8] = 1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor] = 0;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    [v9 bounds];
    Width = CGRectGetWidth(v14);
    [v9 bounds];
    v11 = CGRectGetHeight(v15) >= Width;
    sub_21DA8CD00(v11);
  }

  return v8;
}

void TTRISeparator.intrinsicContentSize.getter()
{
  if (v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis + 8])
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis];
  if (v1 != 1)
  {
    if (!v1)
    {
      v4 = &v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness];
      swift_beginAccess();
      if (v4[8])
      {
        goto LABEL_4;
      }

      return;
    }

LABEL_11:
    if (qword_27CE57058 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE65858);
    v6 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v6);
    sub_21DAEAB00("unknown axis", 12, 2);
    __break(1u);
    return;
  }

  v2 = &v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness];
  swift_beginAccess();
  if (v2[8])
  {
LABEL_4:
    v3 = [v0 traitCollection];
    [v3 displayScale];
  }
}

CGSize __swiftcall TTRISeparator.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  TTRISeparator.intrinsicContentSize.getter();
  if (v3 == *MEMORY[0x277D77260])
  {
    v3 = width;
  }

  if (v4 == *MEMORY[0x277D77260])
  {
    v4 = height;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

Swift::Void __swiftcall TTRISeparator.layoutSubviews()()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_appliedBounds];
  if ((v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_appliedBounds + 32] & 1) != 0 || (v2 = *(v1 + 2), [v0 bounds], v4.i64[0] = v3, v5.n128_u64[0] = 0x3E50000000000000, (sub_21D110D14(v4, v5, v2, v6) & 1) == 0) || (v1[32] & 1) != 0 || (v7 = *(v1 + 3), objc_msgSend(v0, sel_bounds), v9.i64[0] = v8.i64[0], v10.n128_u64[0] = 0x3E50000000000000, (sub_21D110D14(v9, v10, v7, v8) & 1) == 0))
  {
    [v0 bounds];
    *v1 = v11;
    *(v1 + 1) = v12;
    *(v1 + 2) = v13;
    *(v1 + 3) = v14;
    v1[32] = 0;
    sub_21DA8D488();
  }

  v15 = *&v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer];
  if (v15)
  {
    v16 = *&v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor];
    v17 = v15;
    if (v16)
    {
      v16 = [v16 CGColor];
    }

    [v15 setStrokeColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21DA8D488()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness];
  swift_beginAccess();
  if (v2[1])
  {
    v3 = [v1 traitCollection];
    [v3 displayScale];
    v5 = v4;

    if (v5 <= 0.0)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 1.0 / v5;
    }
  }

  else
  {
    v6 = *v2;
  }

  if (v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis + 8])
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis];
  if (v7 == 1)
  {
    [v1 layoutMargins];
    v8 = [v1 layer];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v32.origin.x = v10;
    v32.origin.y = v12;
    v32.size.width = v14;
    v32.size.height = v16;
    CGRectGetHeight(v32);
    [v1 layoutMargins];
    goto LABEL_11;
  }

  if (!v7)
  {
    [v1 layoutMargins];
    v17 = [v1 layer];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v33.origin.x = v19;
    v33.origin.y = v21;
    v33.size.width = v23;
    v33.size.height = v25;
    CGRectGetWidth(v33);
    [v1 layoutMargins];
LABEL_11:
    Mutable = CGPathCreateMutable();
    sub_21DBFB01C();
    sub_21DBFB02C();
    v27 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer;
    v28 = *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer];
    if (v28)
    {
      [v28 setPath_];
      v29 = *&v1[v27];
      if (v29)
      {
        [v29 setLineWidth_];

        return;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (qword_27CE57058 != -1)
  {
    swift_once();
  }

  v30 = sub_21DBF84BC();
  __swift_project_value_buffer(v30, qword_27CE65858);
  v31 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v31);
  sub_21DAEAB00("unknown axis", 12, 2);
  __break(1u);
}

void *TTRISeparator.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor);
  v2 = v1;
  return v1;
}

void TTRISeparator.backgroundColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor;
  v4 = *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    v4 = 0;
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    *&v1[v3] = a1;
    v8 = a1;

    [v1 setNeedsLayout];
    goto LABEL_8;
  }

  v5 = v1;
  sub_21D0D8CF0(0, &qword_280D1B8F0);
  v6 = v4;
  v8 = a1;
  v7 = sub_21DBFB63C();

  if ((v7 & 1) == 0)
  {
    v1 = v5;
    v4 = *&v5[v3];
    goto LABEL_7;
  }

LABEL_8:
}

void (*TTRISeparator.backgroundColor.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_21DA8D9B8;
}

void sub_21DA8D9B8(uint64_t a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 8);
    v3 = *(a1 + 16);
    v5 = *&v4[v3];
    if (v5)
    {
      if (v2)
      {
        sub_21D0D8CF0(0, &qword_280D1B8F0);
        v7 = v5;
        v9 = v2;
        v8 = sub_21DBFB63C();

        if (v8)
        {
          goto LABEL_10;
        }

        v4 = *(a1 + 8);
        v3 = *(a1 + 16);
        v5 = *&v4[v3];
      }
    }

    else
    {
      if (!v2)
      {
        return;
      }

      v5 = 0;
    }

    *&v4[v3] = v2;
    v9 = v2;

    [v4 setNeedsLayout];
    goto LABEL_10;
  }

  v9 = v2;
  TTRISeparator.backgroundColor.setter(v2);
LABEL_10:
}

id TTRISeparator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s15RemindersUICore13TTRISeparatorC5frameACSo6CGRectV_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_dotted) = 0;
  v2 = v0 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_appliedBounds;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = v0 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor) = 0;
  sub_21DBFC31C();
  __break(1u);
}

void *sub_21DA8DC6C(void *a1)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_21DBF86EC();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF8B2C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    v15 = OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_activeEffect;
    swift_beginAccess();
    sub_21D0D3954(v2 + v15, v13, &qword_27CE659A8);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E528);
    v31 = *(v16 - 8);
    v17 = (*(v31 + 48))(v13, 1, v16);
    result = sub_21D0CF7E0(v13, &qword_27CE659A8);
    if (v17 == 1)
    {
      result = sub_21DA8E3EC();
      if (result)
      {
        v18 = result;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          if ([Strong isFirstResponder])
          {
            [v20 resignFirstResponder];
          }

          v21 = *(v2 + OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_containerView);
          if (v21)
          {
            [v21 setUserInteractionEnabled_];
          }

          [v20 _addBoundingPathChangeObserver_];
        }

        v22 = [objc_allocWithZone(type metadata accessor for TTRITextViewAnimationSupport.FullDocumentTextChunk(0)) init];
        v23 = v18;
        sub_21DBF8B1C();
        v24 = type metadata accessor for TTRIHorizontalPonderingTextEffect();
        swift_allocObject();
        v25 = sub_21DA92FD4(v22, v23, v7);

        v26 = *(v25 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_animateFromColor);
        v27 = v32;
        *(v25 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_animateFromColor) = v32;
        v28 = v27;

        v36[3] = v24;
        v36[4] = sub_21DA91144(&qword_27CE659B0, type metadata accessor for TTRIHorizontalPonderingTextEffect);
        v36[0] = v25;

        v29 = v33;
        sub_21DBF864C();

        __swift_destroy_boxed_opaque_existential_0(v36);
        (*(v34 + 32))(v10, v29, v35);
        (*(v31 + 56))(v10, 0, 1, v16);
        swift_beginAccess();
        sub_21DA9118C(v10, v2 + v15);
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_21DA8E08C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659A8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v20[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E528);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-v9];
  v11 = OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_activeEffect;
  swift_beginAccess();
  sub_21D0D3954(v0 + v11, v6, &qword_27CE659A8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_27CE659A8;
    v13 = v6;
  }

  else
  {
    sub_21DA911FC(v6, v10);
    v14 = *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_textEffectView);
    if (v14)
    {
      v15 = v14;
      sub_21DBF86AC();
    }

    (*(v8 + 56))(v3, 1, 1, v7);
    swift_beginAccess();
    sub_21DA9118C(v3, v0 + v11);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_containerView);
      if (v18)
      {
        [v18 setUserInteractionEnabled_];
      }

      [v17 _removeBoundingPathChangeObserver_];
    }

    v12 = &qword_27CE5E528;
    v13 = v10;
  }

  return sub_21D0CF7E0(v13, v12);
}

uint64_t sub_21DA8E324()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE658A0);
  v1 = __swift_project_value_buffer(v0, qword_27CE658A0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_21DA8E3EC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_textEffectView;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_textEffectView];
  v3 = v2;
  if (!v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong bounds];
      v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
      v9 = objc_allocWithZone(sub_21DBF872C());
      v10 = v0;
      v3 = sub_21DBF871C();
      [v5 addSubview_];
      [v8 addSubview_];

      v11 = *&v10[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_containerView];
      *&v10[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_containerView] = v8;

      v12 = *&v0[v1];
      *&v0[v1] = v3;
      v13 = v3;
    }

    else
    {
      v3 = 0;
    }
  }

  v14 = v2;
  return v3;
}

unint64_t sub_21DA8E518()
{
  v1 = *v0;
  v2 = 0x2064696C61766E49;
  v3 = 0xD000000000000024;
  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000015;
  }

  else
  {
    return v2;
  }
}

id sub_21DA8E5DC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_21DA8E708()
{
  sub_21DA8E7BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21DA8E7BC()
{
  if (!qword_27CE65900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5E528);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE65900);
    }
  }
}

void sub_21DA8E888(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    type metadata accessor for TTRITextViewAnimationSupport.FullDocumentTextChunk(0);
    if (swift_dynamicCastClass())
    {
      v4 = swift_unknownObjectWeakLoadStrong();
      v5 = a1;
      if (v4 && (v6 = [v4 beginningOfDocument], v7 = objc_msgSend(v4, sel_endOfDocument), v8 = objc_msgSend(v4, sel_textRangeFromPosition_toPosition_, v6, v7), v4, v6, v7, v8))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21DC08D00;
        v10 = *MEMORY[0x277D740C0];
        *(inited + 32) = *MEMORY[0x277D740C0];
        v11 = objc_opt_self();
        v12 = v10;
        v13 = [v11 labelColor];
        *(inited + 64) = sub_21D114D24();
        *(inited + 40) = v13;
        sub_21D11274C(inited);
        swift_setDeallocating();
        sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0);
        type metadata accessor for Key(0);
        sub_21DA91144(&qword_280D17790, type metadata accessor for Key);
        v14 = sub_21DBF9E5C();

        [v3 _targetedPreviewForRange_withRenderingAttributes_includeFullDocument_];
      }

      else
      {
        sub_21DA90E54();
        swift_allocError();
        *v16 = 2;
        swift_willThrow();
      }
    }

    else
    {
      sub_21DA90E54();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_21DA90E54();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
  }
}

uint64_t sub_21DA8ECF0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_21DBFA84C();
  v2[5] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA8ED8C, v4, v3);
}

uint64_t sub_21DA8ED8C()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;
  v0[7] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA8EE38, v5, v4);
}

uint64_t sub_21DA8EE38()
{
  v1 = v0[3];

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
  }

  v3 = Strong != 0;
  v4 = v0[6];
  v4[2](v4, v3);
  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_21DA8EEE0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21DBFA84C();
  v2[4] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA8EF78, v4, v3);
}

uint64_t sub_21DA8EF78()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    type metadata accessor for TTRITextViewAnimationSupport.FullDocumentTextChunk(0);
    Strong = swift_dynamicCastClass();
    if (Strong)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        v3 = *(v0 + 16);
        v4 = [v2 beginningOfDocument];
        v5 = [v2 endOfDocument];
        v6 = [v2 textRangeFromPosition:v4 toPosition:v5];

        if (v6)
        {
        }

        Strong = v6 != 0;
      }
    }
  }

  v7 = *(v0 + 8);

  return v7(Strong);
}

uint64_t sub_21DA8F238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_21DBFA84C();
  v3[5] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA8F2D4, v5, v4);
}

uint64_t sub_21DA8F2D4()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_21DA8F398;
  v7 = v0[2];

  return sub_21DA8EEE0(v7);
}

uint64_t sub_21DA8F398(char a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_21DA8F4F8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_21DBFA84C();
  v2[8] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA8F590, v4, v3);
}

uint64_t sub_21DA8F590()
{
  v1 = *(v0 + 48);

  sub_21DA8E888(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_21DA8F920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_21DBFA84C();
  v3[5] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA8F9BC, v5, v4);
}

uint64_t sub_21DA8F9BC()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_21DA8FA80;
  v7 = v0[2];

  return sub_21DA8F4F8(v7);
}

uint64_t sub_21DA8FA80(void *a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_21DA8FD74(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  sub_21DBFA84C();
  *(v4 + 40) = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA8FE14, v6, v5);
}

uint64_t sub_21DA8FE14()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_21DA8FEEC;
  v7 = *(v0 + 64);

  return sub_21DA906EC(v7);
}

uint64_t sub_21DA8FEEC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_21DA900C4()
{
  result = qword_27CE65990;
  if (!qword_27CE65990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65990);
  }

  return result;
}

uint64_t sub_21DA90118(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_21D0F00D0;

  return v6();
}

uint64_t sub_21DA90200(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_21D1B795C;

  return v7();
}

uint64_t sub_21DA902E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_21D0D3954(a3, v23 - v10, &unk_27CE5F150);
  v12 = sub_21DBFA89C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5F150);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21DBFA88C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_21DBFA7CC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_21DBFA1EC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_21D0CF7E0(a3, &unk_27CE5F150);

    return v21;
  }

LABEL_8:
  sub_21D0CF7E0(a3, &unk_27CE5F150);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

id sub_21DA905E4()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_chunkVisibilityUpdater];
  *v2 = 0;
  *(v2 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_containerView] = 0;
  *&v0[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_textEffectView] = 0;
  v3 = OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_activeEffect;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E528);
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  swift_unknownObjectWeakAssign();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_21DA906EC(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 64) = a1;
  sub_21DBFA84C();
  *(v2 + 56) = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA90788, v4, v3);
}

uint64_t sub_21DA90788()
{
  v22 = v0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 48);

    v3 = v2 + OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_chunkVisibilityUpdater;
    v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_chunkVisibilityUpdater);
    if (v4)
    {
      v5 = *(v0 + 64);
      v6 = *(v3 + 8);

      v4(v5);
      sub_21D0EC9F4(v4, v6);
      goto LABEL_11;
    }

    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  sub_21DA90E54();
  v8 = swift_allocError();
  *v9 = v7;
  swift_willThrow();
  if (qword_27CE57060 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE658A0);
  v11 = v8;
  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAEBC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = sub_21DBFC74C();
    v18 = sub_21D0CDFB4(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_21D0C9000, v12, v13, "TTRITextViewAnimationSupport: failed to update chunk visibility {error:  %s}", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v14, -1, -1);
  }

  else
  {
  }

LABEL_11:
  v19 = *(v0 + 8);

  return v19();
}

void sub_21DA909E0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (!Strong)
    {
      return;
    }

    v5 = Strong;

    if (v5 != a1)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!Strong)
  {
LABEL_9:
    v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_textEffectView);
    if (v4)
    {

      [v4 setNeedsLayout];
    }

    return;
  }
}

uint64_t sub_21DA90A94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21D1B795C;

  return sub_21DA8FD74(v2, v3, v5, v4);
}

uint64_t sub_21DA90B58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21D0F00D0;

  return sub_21DA90118(v2, v3, v4);
}

uint64_t sub_21DA90C18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21DA90200(a1, v4, v5, v6);
}

uint64_t sub_21DA90CE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return sub_21D0ED4E8(a1, v4);
}

uint64_t sub_21DA90D9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1B795C;

  return sub_21D0ED4E8(a1, v4);
}

unint64_t sub_21DA90E54()
{
  result = qword_27CE659A0;
  if (!qword_27CE659A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE659A0);
  }

  return result;
}

uint64_t sub_21DA90EA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21D0F00D0;

  return sub_21DA8F920(v2, v3, v4);
}

uint64_t objectdestroy_31Tm_0()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21DA90FA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21D0F00D0;

  return sub_21DA8F238(v2, v3, v4);
}

uint64_t sub_21DA91058()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21D0F00D0;

  return sub_21DA8ECF0(v2, v3);
}

uint64_t objectdestroy_10Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21DA91144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DA9118C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DA911FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E528);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DA91284()
{
  result = qword_27CE659B8;
  if (!qword_27CE659B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE659B8);
  }

  return result;
}

id sub_21DA912D8(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  v3 = 0.5;
  if (v1 == 1)
  {
    v3 = 0.75;
  }

  return [v2 initWithWhite:v3 alpha:1.0];
}

void sub_21DA9133C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [a1 view];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v33.origin.x = v11;
    v33.origin.y = v13;
    v33.size.width = v15;
    v33.size.height = v17;
    Width = CGRectGetWidth(v33);
    v19 = sub_21DA916A8();
    v20 = *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_animateFromColor);
    v21 = swift_allocObject();
    v21[2] = Width;
    v21[3] = v19;
    *(v21 + 4) = 1;
    MEMORY[0x28223BE20](v21);
    *(&v32 - 2) = v20;
    *(swift_allocObject() + 16) = v20;
    sub_21DBF8B8C();
    v22 = v20;
    v23 = sub_21DBF863C();

    sub_21DBF866C();
    v24 = sub_21DBF867C();
    MEMORY[0x28223BE20](v24);
    *(&v32 - 2) = sub_21DA93508;
    *(&v32 - 1) = v21;
    sub_21DBF869C();
    v25 = *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_trackedTargetedPreview);
    *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_trackedTargetedPreview) = a1;

    *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_effectViewHandle) = v23;
    v26 = a1;

    v27 = sub_21DBFA89C();
    (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
    sub_21DBFA84C();
    v28 = v8;

    v29 = sub_21DBFA83C();
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    v30[2] = v29;
    v30[3] = v31;
    v30[4] = v28;
    v30[5] = v2;
    sub_21D1B56F0(0, 0, v6, &unk_21DC3A188, v30);
  }
}

double sub_21DA916A8()
{
  v1 = [v0 parameters];
  v2 = [v1 ttr_textLineRects];

  if (!v2)
  {
    return 24.0;
  }

  sub_21DA9360C();
  v3 = sub_21DBFA5EC();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_17:

    v7 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v4 = sub_21DBFBD7C();
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_4:
  v29 = MEMORY[0x277D84F90];
  sub_21D18F77C(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = v29;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D44740](v6, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    [v8 CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v19 = v29[2];
    v18 = v29[3];
    if (v19 >= v18 >> 1)
    {
      sub_21D18F77C((v18 > 1), v19 + 1, 1);
    }

    ++v6;
    v29[2] = v19 + 1;
    v20 = &v29[4 * v19];
    v20[4] = v11;
    v20[5] = v13;
    v20[6] = v15;
    v20[7] = v17;
  }

  while (v4 != v6);

  if (!v29[2])
  {
LABEL_18:

    return 24.0;
  }

LABEL_13:
  v21 = v7[4];
  v22 = v7[5];
  v23 = v7[6];
  v24 = v7[7];

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;

  return CGRectGetHeight(*&v25);
}

uint64_t sub_21DA918CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659E8);
  sub_21DBF8B7C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D00;
  sub_21DBF8B6C();
  return v0;
}

id sub_21DA919A8(uint64_t a1)
{
  v2 = [objc_allocWithZone(sub_21DBF8B8C()) initWithFrame_];
  [v2 setUserInteractionEnabled_];
  [v2 setBackgroundColor_];

  sub_21DBF8B5C();
  return v2;
}

void sub_21DA91A38(void *a1, uint64_t a2)
{
  [a1 setBackgroundColor_];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v7[4] = sub_21DA935EC;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_21D0D74FC;
  v7[3] = &block_descriptor_30_3;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v3 animateWithDuration:v5 animations:0.35];
  _Block_release(v5);
}

void sub_21DA91B3C(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  v5[4] = sub_21DA912D8;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_21D114B20;
  v5[3] = &block_descriptor_33_2;
  v3 = _Block_copy(v5);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  [a1 setBackgroundColor_];
}

uint64_t sub_21DA91C20(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  sub_21D7F6D2C(v2);

  return sub_21DBF8B4C();
}

uint64_t sub_21DA91C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  sub_21DBFA84C();
  v5[21] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x2822009F8](sub_21DA91D10, v7, v6);
}

uint64_t sub_21DA91D10()
{
  v1 = sub_21DBF870C();
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(*(v0 + 160) + 16);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21DA91E9C;
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659E0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21DA92024;
    *(v0 + 104) = &block_descriptor_24_3;
    *(v0 + 112) = v4;
    [v2 updateTextChunkVisibilityForAnimation:v3 visible:0 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    **(v0 + 144) = *(v0 + 192) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_21DA91E9C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_21DA91FA4, v2, v1);
}

uint64_t sub_21DA91FA4()
{

  swift_unknownObjectRelease();
  **(v0 + 144) = *(v0 + 192) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DA92024(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

void sub_21DA92058(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_trackedTargetedPreview);
  if (v8)
  {
    v9 = sub_21DBFA89C();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    sub_21DBFA84C();
    v10 = v8;

    v11 = v2;
    v12 = sub_21DBFA83C();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v10;
    v13[5] = a1;
    v13[6] = a2;
    v13[7] = v11;
    sub_21D1B5178(0, 0, v7, &unk_21DC3A178, v13);
  }
}

uint64_t sub_21DA921C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  sub_21DBFA84C();
  v7[11] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  v7[12] = v9;
  v7[13] = v8;

  return MEMORY[0x2822009F8](sub_21DA92260, v9, v8);
}

uint64_t sub_21DA92260()
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
  v13[1] = sub_21DA923C0;
  v14.n128_u64[0] = v5;
  v15.n128_u64[0] = v7;
  v16.n128_u64[0] = v9;
  v17.n128_u64[0] = v11;

  return v19(v0 + 16, v12, v14, v15, v16, v17);
}

uint64_t sub_21DA923C0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21DA924E0, v3, v2);
}

uint64_t sub_21DA924E0()
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

uint64_t sub_21DA9259C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  sub_21DBFA84C();
  v5[28] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v5[29] = v7;
  v5[30] = v6;

  return MEMORY[0x2822009F8](sub_21DA92634, v7, v6);
}

uint64_t sub_21DA92634()
{
  v1 = sub_21DBF870C();
  v0[31] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0[27] + 16);
    v0[2] = v0;
    v0[3] = sub_21DA928B0;
    v4 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659E0);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21DA92024;
    v0[21] = &block_descriptor_139;
    v0[22] = v4;
    [v2 updateTextChunkVisibilityForAnimation:v3 visible:1 completionHandler:v0 + 18];
    v5 = v0 + 2;
LABEL_5:

    return MEMORY[0x282200938](v5);
  }

  v6 = sub_21DBF86FC();
  v0[32] = v6;
  if (v6)
  {
    v7 = v6;
    v8 = *(v0[27] + 16);
    v0[10] = v0;
    v0[11] = sub_21DA92B5C;
    v9 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659E0);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21DA92024;
    v0[21] = &block_descriptor_6_6;
    v0[22] = v9;
    [v7 finishAnimationFor:v8 completionHandler:v0 + 18];
    v5 = v0 + 10;
    goto LABEL_5;
  }

  if (*(v0[27] + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_effectViewHandle))
  {

    sub_21DBF868C();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_21DA928B0()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_21DA929B8, v2, v1);
}

uint64_t sub_21DA929B8()
{
  swift_unknownObjectRelease();
  v1 = sub_21DBF86FC();
  v0[32] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0[27] + 16);
    v0[10] = v0;
    v0[11] = sub_21DA92B5C;
    v4 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659E0);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21DA92024;
    v0[21] = &block_descriptor_6_6;
    v0[22] = v4;
    [v2 finishAnimationFor:v3 completionHandler:v0 + 18];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {

    if (*(v0[27] + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_effectViewHandle))
    {

      sub_21DBF868C();
    }

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_21DA92B5C()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_21DA92C64, v2, v1);
}

uint64_t sub_21DA92C64()
{

  swift_unknownObjectRelease();
  if (*(*(v0 + 216) + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_effectViewHandle))
  {

    sub_21DBF868C();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DA92CF8()
{
  MEMORY[0x223D46650](v0 + 24);
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_id;
  v2 = sub_21DBF86EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIHorizontalPonderingTextEffect()
{
  result = qword_27CE659D0;
  if (!qword_27CE659D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DA92E28()
{
  result = sub_21DBF86EC();
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

uint64_t sub_21DA92EDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_id;
  v5 = sub_21DBF86EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21DA92FD4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v20 = sub_21DBF86EC();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF8B2C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_animateFromColor;
  *(v4 + v15) = [objc_opt_self() labelColor];
  *(v4 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_effectViewHandle) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_trackedTargetedPreview) = 0;
  swift_unknownObjectWeakAssign();
  *(v4 + 16) = a1;
  (*(v12 + 16))(v14, a3, v11);
  sub_21DBF86DC();
  swift_allocObject();
  v16 = a1;
  v17 = a2;
  sub_21DBF86CC();
  sub_21DBF86BC();

  (*(v12 + 8))(a3, v11);
  (*(v8 + 32))(v4 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_id, v10, v20);
  return v4;
}

void sub_21DA93228()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_21DBFA89C();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_21DBFA84C();
    v7 = v5;

    v8 = v0;
    v9 = sub_21DBFA83C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v7;
    v10[5] = v8;
    sub_21D1B5178(0, 0, v3, &unk_21DC3A160, v10);
  }
}

uint64_t sub_21DA93374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21DA9259C(a1, v4, v5, v7, v6);
}

uint64_t sub_21DA93434(uint64_t a1)
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
  v10[1] = sub_21D0F00D0;

  return sub_21DA921C4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21DA9352C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21DA91C74(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_28_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21DA9360C()
{
  result = qword_27CE659F0;
  if (!qword_27CE659F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE659F0);
  }

  return result;
}

uint64_t destroy for TTRIReminderDetailViewConfiguration()
{
}

uint64_t initializeWithCopy for TTRIReminderDetailViewConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIReminderDetailViewConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithTake for TTRIReminderDetailViewConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderDetailViewConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for TTRIReminderDetailViewConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_21DA93958@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = v3 >> 6;
  if (v3 >> 6 <= 1)
  {
    if (!v4)
    {
      if (qword_280D1BAA8 == -1)
      {
LABEL_4:
        v5 = sub_21DBF516C();
        v7 = v6;
        result = sub_21DBF516C();
LABEL_30:
        v11 = 1;
        goto LABEL_31;
      }

LABEL_35:
      swift_once();
      goto LABEL_4;
    }

    if (qword_280D1BAA8 == -1)
    {
LABEL_29:
      v5 = sub_21DBF516C();
      v7 = v17;
      result = 0;
      v9 = 0;
      goto LABEL_30;
    }

LABEL_36:
    swift_once();
    goto LABEL_29;
  }

  if (v4 == 2)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF516C();
    v7 = v10;
    v11 = 0;
    result = 0;
    v9 = 0;
    goto LABEL_31;
  }

  v12 = *a1;
  if (__PAIR128__(-64, 2) >= __PAIR128__(v3, *a1))
  {
    v13 = *(a1 + 8);
    if (v12 | v13 ^ 0xC0)
    {
      if (v13 != 192 || v12 != 1)
      {
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_4;
        }

        goto LABEL_35;
      }

      goto LABEL_20;
    }

LABEL_28:
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if (__PAIR128__(((v12 >= 5) + v3 + 63), v12 - 5) >= 2)
  {
    if (*(a1 + 8) != 192 || v12 != 3)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      result = sub_21DBF516C();
      v5 = 0;
      v7 = 0;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_20:
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF516C();
  v7 = v15;
  result = sub_21DBF516C();
  v11 = 0;
LABEL_31:
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v11;
  *(a2 + 17) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = v9;
  return result;
}

void sub_21DA93F7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (qword_27CE56A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = byte_27CE5E181;
  v6 = v4 >> 6;
  if (v4 >> 6 <= 1)
  {
    if (v6)
    {
      v5 = byte_27CE5E181 & v4;
      v17 = v3;
      v18 = v4;
      sub_21DA93958(&v17, &v20);
      *&v19[7] = v20;
      *&v19[23] = v21;
      *&v19[39] = v22;
      sub_21D257D78(v3, v4);
      LOBYTE(v6) = 0;
      v7 = 0;
      v8 = 0;
      v9 = 1;
      v10 = 540.0;
      v11 = 3;
      v12 = 1;
      goto LABEL_44;
    }

    goto LABEL_7;
  }

  if (v6 == 2)
  {
LABEL_7:
    v17 = v3;
    v18 = v4;
    sub_21DA93958(&v17, &v20);
    *&v19[7] = v20;
    *&v19[23] = v21;
    *&v19[39] = v22;
    if (v6)
    {
      LOBYTE(v6) = 0;
      v9 = 0;
      v12 = 0;
      v7 = 1;
      v10 = 540.0;
      v11 = 3;
      v8 = 4705;
    }

    else
    {
      v10 = 540.0;
      v11 = 2;
      v8 = 17919;
      v7 = 0;
      v9 = 0;
      v12 = 0;
    }

    goto LABEL_44;
  }

  v5 = (__PAIR128__((v4 + 64), v3) < 6) & byte_27CE5E181;
  v17 = v3;
  v18 = v4;
  sub_21DA93958(&v17, &v20);
  *&v19[7] = v20;
  *&v19[23] = v21;
  *&v19[39] = v22;
  if (__PAIR128__(-64, 2) >= __PAIR128__(v4, v3))
  {
    v8 = v3 | v4 ^ 0xC0;
    if (v8)
    {
      v14 = v4 == 192 && v3 == 1;
      v10 = 540.0;
      v8 = 16579;
      if (v14)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v10 = 540.0;
        LOBYTE(v6) = 1;
      }

      v7 = v14;
      if (!v14)
      {
        v8 = 16578;
      }

      v11 = 3;
      v9 = 0;
      v12 = 0;
    }

    else
    {
      LOBYTE(v6) = 0;
      v7 = 0;
      v12 = 0;
      v9 = 1;
      v10 = 540.0;
      v11 = 3;
    }
  }

  else if (__PAIR128__(-64, 4) < __PAIR128__(v4, v3))
  {
    v15 = v4 == 192 && v3 == 5;
    v10 = 540.0;
    v11 = 3;
    v8 = 97;
    v7 = 1;
    if (!v15)
    {
      v8 = 4705;
    }

    v9 = 1;
    if (!v15)
    {
      v10 = 540.0;
      v11 = 3;
    }

    LOBYTE(v6) = 0;
    v12 = 0;
  }

  else
  {
    v10 = 320.0;
    v8 = 30463;
    v13 = v4 == 192 && v3 == 3;
    LOBYTE(v6) = 0;
    v11 = 3;
    if (v13)
    {
      v8 = 16480;
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    if (v13)
    {
      v10 = 540.0;
    }

    else
    {
      v11 = 3;
    }

    v7 = 0;
    v12 = 0;
  }

LABEL_44:
  *a2 = v5;
  v16 = *&v19[16];
  *(a2 + 1) = *v19;
  *(a2 + 17) = v16;
  *(a2 + 32) = *&v19[31];
  *(a2 + 48) = v9;
  *(a2 + 56) = v8;
  *(a2 + 64) = v6;
  *(a2 + 65) = v7;
  *(a2 + 72) = v10;
  *(a2 + 80) = v11;
  *(a2 + 88) = v12;
}

uint64_t initializeWithCopy for TTRIReminderDetailViewConfiguration.NavigationConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIReminderDetailViewConfiguration.NavigationConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRIReminderDetailViewConfiguration.NavigationConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  return a1;
}

unint64_t sub_21DA94428()
{
  result = qword_27CE659F8;
  if (!qword_27CE659F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE659F8);
  }

  return result;
}

unint64_t sub_21DA94480()
{
  result = qword_27CE65A00;
  if (!qword_27CE65A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65A00);
  }

  return result;
}

unint64_t sub_21DA944D8()
{
  result = qword_27CE65A08;
  if (!qword_27CE65A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65A08);
  }

  return result;
}

unint64_t sub_21DA94530()
{
  result = qword_27CE65A10;
  if (!qword_27CE65A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65A10);
  }

  return result;
}

void sub_21DA94594()
{
  if (([v0 _isInPopoverPresentation] & 1) == 0)
  {
    sub_21DA9558C(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_tableView, &unk_282EE5708, sub_21DA97FB0, &block_descriptor_37_4);
    v1 = objc_opt_self();
    v2 = [v1 defaultCenter];
    v3 = *MEMORY[0x277D76C60];
    v4 = objc_opt_self();
    v5 = [v4 mainQueue];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_21DA97E2C;
    v30 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_21D0EE46C;
    ObjectType = &block_descriptor_43_2;
    v7 = _Block_copy(&aBlock);

    v8 = [v2 addObserverForName:v3 object:0 queue:v5 usingBlock:v7];
    _Block_release(v7);

    v9 = [v1 defaultCenter];
    v10 = *MEMORY[0x277D76C50];
    v11 = [v4 mainQueue];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_21DA97E34;
    v30 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_21D0EE46C;
    ObjectType = &block_descriptor_47_1;
    v13 = _Block_copy(&aBlock);

    v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
    _Block_release(v13);

    v15 = [v1 defaultCenter];
    v16 = *MEMORY[0x277D76C48];
    v17 = [v4 mainQueue];
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_21DA97E7C;
    v30 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_21D0EE46C;
    ObjectType = &block_descriptor_51_3;
    v19 = _Block_copy(&aBlock);

    v20 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v19];
    _Block_release(v19);

    v21 = [objc_allocWithZone(type metadata accessor for TTRKeyboardAvoidanceData()) init];
    ObjectType = swift_getObjectType();
    aBlock = v8;
    v22 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willShowNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v21 + v22);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    aBlock = v14;
    v23 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willHideNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v21 + v23);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    aBlock = v20;
    v24 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willChangeFrameNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v21 + v24);
    swift_endAccess();
    if (qword_27CE57068 != -1)
    {
      swift_once();
    }

    objc_setAssociatedObject(v0, qword_27CE65A18, v21, 1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_21DA94AA8()
{
  if (([v0 _isInPopoverPresentation] & 1) == 0)
  {
    sub_21DA9558C(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_tableView, &unk_282EE5938, sub_21DA97FB4, &block_descriptor_85_0);
    v1 = objc_opt_self();
    v2 = [v1 defaultCenter];
    v3 = *MEMORY[0x277D76C60];
    v4 = objc_opt_self();
    v5 = [v4 mainQueue];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_21DA97ED0;
    v30 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_21D0EE46C;
    ObjectType = &block_descriptor_91;
    v7 = _Block_copy(&aBlock);

    v8 = [v2 addObserverForName:v3 object:0 queue:v5 usingBlock:v7];
    _Block_release(v7);

    v9 = [v1 defaultCenter];
    v10 = *MEMORY[0x277D76C50];
    v11 = [v4 mainQueue];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_21DA97ED8;
    v30 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_21D0EE46C;
    ObjectType = &block_descriptor_95_1;
    v13 = _Block_copy(&aBlock);

    v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
    _Block_release(v13);

    v15 = [v1 defaultCenter];
    v16 = *MEMORY[0x277D76C48];
    v17 = [v4 mainQueue];
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_21DA97F20;
    v30 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_21D0EE46C;
    ObjectType = &block_descriptor_99;
    v19 = _Block_copy(&aBlock);

    v20 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v19];
    _Block_release(v19);

    v21 = [objc_allocWithZone(type metadata accessor for TTRKeyboardAvoidanceData()) init];
    ObjectType = swift_getObjectType();
    aBlock = v8;
    v22 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willShowNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v21 + v22);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    aBlock = v14;
    v23 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willHideNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v21 + v23);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    aBlock = v20;
    v24 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willChangeFrameNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v21 + v24);
    swift_endAccess();
    if (qword_27CE57068 != -1)
    {
      swift_once();
    }

    objc_setAssociatedObject(v0, qword_27CE65A18, v21, 1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void TTRKeyboardAvoidance<>.startAvoidingKeyboard()(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16))())
  {
    (*(a2 + 32))(a1, a2);
    v30 = objc_opt_self();
    v5 = [v30 defaultCenter];
    v6 = *MEMORY[0x277D76C60];
    v7 = objc_opt_self();
    v8 = [v7 mainQueue];
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = v9;
    v36 = sub_21DA96DE4;
    v37 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_21D0EE46C;
    ObjectType = &block_descriptor_140;
    v11 = _Block_copy(&aBlock);

    v31 = [v5 addObserverForName:v6 object:0 queue:v8 usingBlock:v11];
    _Block_release(v11);

    v12 = [v30 defaultCenter];
    v13 = *MEMORY[0x277D76C50];
    v14 = [v7 mainQueue];
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = v15;
    v36 = sub_21DA972D8;
    v37 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_21D0EE46C;
    ObjectType = &block_descriptor_10_5;
    v17 = _Block_copy(&aBlock);

    v18 = [v12 addObserverForName:v13 object:0 queue:v14 usingBlock:v17];
    _Block_release(v17);

    v19 = [v30 defaultCenter];
    v20 = *MEMORY[0x277D76C48];
    v21 = [v7 mainQueue];
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = a1;
    v23[3] = a2;
    v23[4] = v22;
    v36 = sub_21DA97AA0;
    v37 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_21D0EE46C;
    ObjectType = &block_descriptor_17_7;
    v24 = _Block_copy(&aBlock);

    v25 = [v19 addObserverForName:v20 object:0 queue:v21 usingBlock:v24];
    _Block_release(v24);

    v26 = [objc_allocWithZone(type metadata accessor for TTRKeyboardAvoidanceData()) init];
    ObjectType = swift_getObjectType();
    aBlock = v31;
    v27 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willShowNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v26 + v27);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    aBlock = v18;
    v28 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willHideNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v26 + v28);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    aBlock = v25;
    v29 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willChangeFrameNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v26 + v29);
    swift_endAccess();
    if (qword_27CE57068 != -1)
    {
      swift_once();
    }

    objc_setAssociatedObject(v2, qword_27CE65A18, v26, 1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_21DA9558C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27CE57068 != -1)
  {
    swift_once();
  }

  v7 = qword_27CE65A18;
  if (objc_getAssociatedObject(v4, qword_27CE65A18))
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  aBlock = v32;
  v28 = v33;
  if (*(&v33 + 1))
  {
    type metadata accessor for TTRKeyboardAvoidanceData();
    if (swift_dynamicCast())
    {
      v8 = v31;
      v9 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willShowNotificationToken;
      swift_beginAccess();
      sub_21D0DB414(v31 + v9, &v32);
      if (*(&v33 + 1))
      {
        sub_21D0CF2E8(&v32, &aBlock);
        v10 = [objc_opt_self() defaultCenter];
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v28 + 1));
        [v10 removeObserver_];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
      }

      else
      {
        sub_21D1A8418(&v32);
      }

      v11 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willHideNotificationToken;
      swift_beginAccess();
      sub_21D0DB414(v8 + v11, &v32);
      if (*(&v33 + 1))
      {
        sub_21D0CF2E8(&v32, &aBlock);
        v12 = [objc_opt_self() &selRef__currentHandleDistance + 5];
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v28 + 1));
        [v12 &selRef:sub_21DBFC62C() addOperation:?];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
      }

      else
      {
        sub_21D1A8418(&v32);
      }

      v13 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willChangeFrameNotificationToken;
      swift_beginAccess();
      sub_21D0DB414(v8 + v13, &v32);
      if (*(&v33 + 1))
      {
        sub_21D0CF2E8(&v32, &aBlock);
        v14 = [objc_opt_self() &selRef__currentHandleDistance + 5];
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v28 + 1));
        [v14 &selRef:sub_21DBFC62C() addOperation:?];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
      }

      else
      {
        sub_21D1A8418(&v32);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;
        [Strong contentInset];
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v23 = objc_opt_self();
        v24 = swift_allocObject();
        v24[2] = v4;
        v24[3] = v18;
        v24[4] = v20;
        v24[5] = 0;
        v24[6] = v22;
        v29 = a3;
        v30 = v24;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v28 = sub_21D0D74FC;
        *(&v28 + 1) = a4;
        v25 = _Block_copy(&aBlock);
        v26 = v4;

        [v23 animateWithDuration:v25 animations:0.25];
        _Block_release(v25);
        objc_setAssociatedObject(v26, v7, 0, 1);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_21D1A8418(&aBlock);
  }
}

void TTRKeyboardAvoidance<>.stopAvoidingKeyboard()(uint64_t a1, uint64_t a2)
{
  if (qword_27CE57068 != -1)
  {
    swift_once();
  }

  v5 = qword_27CE65A18;
  if (objc_getAssociatedObject(v2, qword_27CE65A18))
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (*(&v14 + 1))
  {
    type metadata accessor for TTRKeyboardAvoidanceData();
    if (swift_dynamicCast())
    {
      v6 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willShowNotificationToken;
      swift_beginAccess();
      sub_21D0DB414(v12 + v6, &v13);
      if (*(&v14 + 1))
      {
        sub_21D0CF2E8(&v13, &v15);
        v7 = [objc_opt_self() defaultCenter];
        __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
        [v7 removeObserver_];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v15);
      }

      else
      {
        sub_21D1A8418(&v13);
      }

      v8 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willHideNotificationToken;
      swift_beginAccess();
      sub_21D0DB414(v12 + v8, &v13);
      if (*(&v14 + 1))
      {
        sub_21D0CF2E8(&v13, &v15);
        v9 = [objc_opt_self() defaultCenter];
        __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
        [v9 removeObserver_];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v15);
      }

      else
      {
        sub_21D1A8418(&v13);
      }

      v10 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willChangeFrameNotificationToken;
      swift_beginAccess();
      sub_21D0DB414(v12 + v10, &v13);
      if (*(&v14 + 1))
      {
        sub_21D0CF2E8(&v13, &v15);
        v11 = [objc_opt_self() defaultCenter];
        __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
        [v11 removeObserver_];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v15);
      }

      else
      {
        sub_21D1A8418(&v13);
      }

      (*(a2 + 56))(a1, a2, 0.0, 0.25);
      objc_setAssociatedObject(v2, v5, 0, 1);
    }
  }

  else
  {
    sub_21D1A8418(&v15);
  }
}

void sub_21DA95D90(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong contentInset];
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = v6;
    *(v20 + 24) = v14;
    *(v20 + 32) = v16;
    *(v20 + 40) = a1;
    *(v20 + 48) = v18;
    v23[4] = a5;
    v23[5] = v20;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_21D0D74FC;
    v23[3] = a6;
    v21 = _Block_copy(v23);
    v22 = v6;

    [v19 animateWithDuration:v21 animations:a2];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

void TTRKeyboardAvoidance<>.setKeyboardAvoidanceBottomInset(_:duration:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = (*(a2 + 8))();
  [v9 contentInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = v4;
  *(v17 + 40) = v11;
  *(v17 + 48) = v13;
  *(v17 + 56) = a3;
  *(v17 + 64) = v15;
  v20[4] = sub_21DA97C88;
  v20[5] = v17;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_21D0D74FC;
  v20[3] = &block_descriptor_23_5;
  v18 = _Block_copy(v20);
  v19 = v4;

  [v16 animateWithDuration:v18 animations:a4];
  _Block_release(v18);
}

void *sub_21DA960A8()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_27CE65A18 = result;
  return result;
}

void sub_21DA960FC(uint64_t a1)
{
  v2 = sub_21DBF4D5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {
      __break(1u);
      goto LABEL_29;
    }

    v9 = v8;
    v10 = [v8 traitCollection];

    v11 = [v10 _presentationSemanticContext];
    if (v11 != 3)
    {
      v12 = sub_21DBF4D2C();
      v13 = sub_21DBFA16C();
      v15 = v14;
      if (v13 == sub_21DBFA16C() && v15 == v16)
      {
      }

      else
      {
        v18 = sub_21DBFC64C();

        if ((v18 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      (*(v3 + 16))(v5, a1, v2);
      TTRIKeyboardNotification.init(notification:)(v5, &aBlock);
      v19 = aBlock;
      if (aBlock)
      {
        v20 = *&v74;
        v22 = *&v72;
        v21 = v73;
        v23 = *&v71;
        if (v76)
        {
          v24 = 0.25;
        }

        else
        {
          v24 = v75;
        }

        v25 = swift_unknownObjectWeakLoadStrong();
        if (v25)
        {
          v26 = v25;
          v27 = [v25 window];
          if (v27)
          {
            v28 = v27;
            sub_21D1B2ABC();
            v29 = [v28 screen];
            v30 = sub_21DBFB63C();

            if (v30)
            {
              v69 = v24;
              v31 = [v19 coordinateSpace];
              [v26 bounds];
              v33 = v32;
              v35 = v34;
              v37 = v36;
              v39 = v38;
              [v26 safeAreaInsets];
              v41 = v39 - v40;
              [objc_msgSend(v26 coordinateSpace)];
              v43 = v42;
              v45 = v44;
              v47 = v46;
              v49 = v48;
              swift_unknownObjectRelease();
              v77.origin.x = v43;
              v77.origin.y = v45;
              v77.size.width = v47;
              v77.size.height = v49;
              v81.origin.x = v33;
              v81.origin.y = v35;
              v81.size.width = v37;
              v81.size.height = v41;
              v78 = CGRectIntersection(v77, v81);
              x = v78.origin.x;
              y = v78.origin.y;
              width = v78.size.width;
              height = v78.size.height;
              if (CGRectIsEmpty(v78))
              {

                swift_unknownObjectRelease();
                v54 = 0.0;
              }

              else
              {
                v79.origin.x = v33;
                v79.origin.y = v35;
                v79.size.width = v37;
                v79.size.height = v41;
                MaxY = CGRectGetMaxY(v79);
                v80.origin.x = x;
                v80.origin.y = y;
                v80.size.width = width;
                v80.size.height = height;
                MinY = CGRectGetMinY(v80);

                swift_unknownObjectRelease();
                v54 = MaxY - MinY;
              }

              v24 = v69;
LABEL_24:
              v55 = swift_unknownObjectWeakLoadStrong();
              if (v55)
              {
                v56 = v55;
                [v55 contentInset];
                v58 = v57;
                v60 = v59;
                v62 = v61;

                v63 = objc_opt_self();
                *&v64 = COERCE_DOUBLE(swift_allocObject());
                *(v64 + 16) = v7;
                *(v64 + 24) = v58;
                *(v64 + 32) = v60;
                *(v64 + 40) = v54;
                *(v64 + 48) = v62;
                *&v74 = COERCE_DOUBLE(sub_21DA97FB0);
                v75 = *&v64;
                aBlock = MEMORY[0x277D85DD0];
                v71 = 1107296256;
                *&v72 = COERCE_DOUBLE(sub_21D0D74FC);
                v73 = COERCE_DOUBLE(&block_descriptor_72_1);
                v65 = _Block_copy(&aBlock);
                v66 = v7;

                [v63 animateWithDuration:v65 animations:v24];
                _Block_release(v65);
                sub_21D5D32F8();

                return;
              }

LABEL_30:
              __break(1u);
              return;
            }
          }

          v54 = 0.0;
          goto LABEL_24;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

LABEL_21:
  }
}

void sub_21DA96600(uint64_t a1)
{
  v2 = sub_21DBF4D5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {
      __break(1u);
      goto LABEL_29;
    }

    v9 = v8;
    v10 = [v8 traitCollection];

    v11 = [v10 _presentationSemanticContext];
    if (v11 != 3)
    {
      v12 = sub_21DBF4D2C();
      v13 = sub_21DBFA16C();
      v15 = v14;
      if (v13 == sub_21DBFA16C() && v15 == v16)
      {
      }

      else
      {
        v18 = sub_21DBFC64C();

        if ((v18 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      (*(v3 + 16))(v5, a1, v2);
      TTRIKeyboardNotification.init(notification:)(v5, &aBlock);
      v19 = aBlock;
      if (aBlock)
      {
        v20 = *&v74;
        v22 = *&v72;
        v21 = v73;
        v23 = *&v71;
        if (v76)
        {
          v24 = 0.25;
        }

        else
        {
          v24 = v75;
        }

        v25 = swift_unknownObjectWeakLoadStrong();
        if (v25)
        {
          v26 = v25;
          v27 = [v25 window];
          if (v27)
          {
            v28 = v27;
            sub_21D1B2ABC();
            v29 = [v28 screen];
            v30 = sub_21DBFB63C();

            if (v30)
            {
              v69 = v24;
              v31 = [v19 coordinateSpace];
              [v26 bounds];
              v33 = v32;
              v35 = v34;
              v37 = v36;
              v39 = v38;
              [v26 safeAreaInsets];
              v41 = v39 - v40;
              [objc_msgSend(v26 coordinateSpace)];
              v43 = v42;
              v45 = v44;
              v47 = v46;
              v49 = v48;
              swift_unknownObjectRelease();
              v77.origin.x = v43;
              v77.origin.y = v45;
              v77.size.width = v47;
              v77.size.height = v49;
              v81.origin.x = v33;
              v81.origin.y = v35;
              v81.size.width = v37;
              v81.size.height = v41;
              v78 = CGRectIntersection(v77, v81);
              x = v78.origin.x;
              y = v78.origin.y;
              width = v78.size.width;
              height = v78.size.height;
              if (CGRectIsEmpty(v78))
              {

                swift_unknownObjectRelease();
                v54 = 0.0;
              }

              else
              {
                v79.origin.x = v33;
                v79.origin.y = v35;
                v79.size.width = v37;
                v79.size.height = v41;
                MaxY = CGRectGetMaxY(v79);
                v80.origin.x = x;
                v80.origin.y = y;
                v80.size.width = width;
                v80.size.height = height;
                MinY = CGRectGetMinY(v80);

                swift_unknownObjectRelease();
                v54 = MaxY - MinY;
              }

              v24 = v69;
LABEL_24:
              v55 = swift_unknownObjectWeakLoadStrong();
              if (v55)
              {
                v56 = v55;
                [v55 contentInset];
                v58 = v57;
                v60 = v59;
                v62 = v61;

                v63 = objc_opt_self();
                *&v64 = COERCE_DOUBLE(swift_allocObject());
                *(v64 + 16) = v7;
                *(v64 + 24) = v58;
                *(v64 + 32) = v60;
                *(v64 + 40) = v54;
                *(v64 + 48) = v62;
                *&v74 = COERCE_DOUBLE(sub_21DA97FB4);
                v75 = *&v64;
                aBlock = MEMORY[0x277D85DD0];
                v71 = 1107296256;
                *&v72 = COERCE_DOUBLE(sub_21D0D74FC);
                v73 = COERCE_DOUBLE(&block_descriptor_120_0);
                v65 = _Block_copy(&aBlock);
                v66 = v7;

                [v63 animateWithDuration:v65 animations:v24];
                _Block_release(v65);
                sub_21D819408();

                return;
              }

LABEL_30:
              __break(1u);
              return;
            }
          }

          v54 = 0.0;
          goto LABEL_24;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

LABEL_21:
  }
}

void sub_21DA96B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21DBF4D5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v33 = *(a4 + 8);
    v13 = v33(a3, a4);
    v14 = [v13 traitCollection];

    v15 = [v14 _presentationSemanticContext];
    if (v15 == 3)
    {
      goto LABEL_15;
    }

    v31 = a3;
    *&v32 = a1;
    v16 = sub_21DBF4D2C();
    v17 = sub_21DBFA16C();
    v19 = v18;
    if (v17 == sub_21DBFA16C() && v19 == v20)
    {
    }

    else
    {
      v22 = sub_21DBFC64C();

      if ((v22 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    (*(v8 + 16))(v10, v32, v7);
    TTRIKeyboardNotification.init(notification:)(v10, &v34);
    v23 = v34;
    if (!v34)
    {
LABEL_15:

      return;
    }

    v24 = v37;
    v25 = v38 & 1;
    if (v38)
    {
      v26 = 0.25;
    }

    else
    {
      v26 = v37;
    }

    v32 = v35;
    v30 = v36;
    v27 = v31;
    v28 = v33(v31, a4);
    v34 = v23;
    v35 = v32;
    v36 = v30;
    v37 = v24;
    v38 = v25;
    v29 = UIScrollView.bottomContentInset(forAvoidingKeyboardWith:)(&v34);

    (*(a4 + 56))(v27, a4, v29, v26);
    (*(a4 + 40))(v27, a4, v26);
  }
}

void sub_21DA96DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_21DBF4D2C();
    v11 = sub_21DBFA16C();
    v13 = v12;
    if (v11 == sub_21DBFA16C() && v13 == v14)
    {

      v17 = sub_21DBF4D4C();
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = sub_21DBFC64C();

      if ((v16 & 1) == 0)
      {
LABEL_21:

        return;
      }

      v17 = sub_21DBF4D4C();
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    v18 = v17;
    *&v36 = sub_21DBFA16C();
    *(&v36 + 1) = v19;
    sub_21DBFBE2C();
    if (*(v18 + 16))
    {
      v20 = sub_21D17EA0C(v35);
      if (v21)
      {
        sub_21D0CEB98(*(v18 + 56) + 32 * v20, &v36);
        sub_21D181D3C(v35);

        if (*(&v37 + 1))
        {
          if (swift_dynamicCast())
          {
            v22 = *v35;
LABEL_19:
            v23 = swift_unknownObjectWeakLoadStrong();
            if (!v23)
            {
              __break(1u);
              return;
            }

            v24 = v23;
            [v23 contentInset];
            v26 = v25;
            v28 = v27;
            v30 = v29;

            v31 = objc_opt_self();
            v32 = swift_allocObject();
            v32[2] = v9;
            v32[3] = v26;
            v32[4] = v28;
            v32[5] = 0;
            v32[6] = v30;
            v35[4] = a5;
            v35[5] = v32;
            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 1107296256;
            v35[2] = sub_21D0D74FC;
            v35[3] = a6;
            v33 = _Block_copy(v35);
            v34 = v9;

            [v31 animateWithDuration:v33 animations:v22];
            _Block_release(v33);
            goto LABEL_21;
          }

LABEL_18:
          v22 = 0.25;
          goto LABEL_19;
        }

LABEL_17:
        sub_21D1A8418(&v36);
        goto LABEL_18;
      }
    }

    sub_21D181D3C(v35);
LABEL_16:
    v36 = 0u;
    v37 = 0u;
    goto LABEL_17;
  }
}

void sub_21DA970BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_21DBF4D2C();
    v9 = sub_21DBFA16C();
    v11 = v10;
    if (v9 == sub_21DBFA16C() && v11 == v12)
    {

      v15 = sub_21DBF4D4C();
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v14 = sub_21DBFC64C();

      if ((v14 & 1) == 0)
      {
LABEL_20:

        return;
      }

      v15 = sub_21DBF4D4C();
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    v16 = v15;
    *&v22 = sub_21DBFA16C();
    *(&v22 + 1) = v17;
    sub_21DBFBE2C();
    if (*(v16 + 16))
    {
      v18 = sub_21D17EA0C(v21);
      if (v19)
      {
        sub_21D0CEB98(*(v16 + 56) + 32 * v18, &v22);
        sub_21D181D3C(v21);

        if (*(&v23 + 1))
        {
          if (swift_dynamicCast())
          {
            v20 = *v21;
LABEL_19:
            (*(a4 + 56))(a3, a4, 0.0, v20);
            (*(a4 + 48))(a3, a4, v20);
            goto LABEL_20;
          }

LABEL_18:
          v20 = 0.25;
          goto LABEL_19;
        }

LABEL_17:
        sub_21D1A8418(&v22);
        goto LABEL_18;
      }
    }

    sub_21D181D3C(v21);
LABEL_16:
    v22 = 0u;
    v23 = 0u;
    goto LABEL_17;
  }
}

void sub_21DA972E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_21DBF4D5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v83 = a4;
    v16 = swift_unknownObjectWeakLoadStrong();
    if (!v16)
    {
      __break(1u);
      goto LABEL_29;
    }

    v17 = v16;
    v18 = [v16 traitCollection];

    v19 = [v18 _presentationSemanticContext];
    if (v19 != 3)
    {
      v81 = *&a5;
      v82 = *&a6;
      v20 = sub_21DBF4D2C();
      v21 = sub_21DBFA16C();
      v23 = v22;
      if (v21 == sub_21DBFA16C() && v23 == v24)
      {
      }

      else
      {
        v26 = sub_21DBFC64C();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      (*(v11 + 16))(v13, a1, v10);
      TTRIKeyboardNotification.init(notification:)(v13, &aBlock);
      v27 = aBlock;
      if (aBlock)
      {
        v28 = v88;
        v30 = *&v86;
        v29 = v87;
        v31 = *&v85;
        if (v90)
        {
          v32 = 0.25;
        }

        else
        {
          v32 = v89;
        }

        v33 = swift_unknownObjectWeakLoadStrong();
        if (v33)
        {
          v34 = v33;
          v35 = [v33 window];
          v37 = v81;
          v36 = v82;
          if (v35)
          {
            v38 = v35;
            sub_21D1B2ABC();
            v39 = [v38 screen];
            v40 = sub_21DBFB63C();

            if (v40)
            {
              v80 = v32;
              v41 = [v27 coordinateSpace];
              [v34 bounds];
              v43 = v42;
              v45 = v44;
              v47 = v46;
              v49 = v48;
              [v34 safeAreaInsets];
              v51 = v49 - v50;
              [objc_msgSend(v34 coordinateSpace)];
              v53 = v52;
              v55 = v54;
              v57 = v56;
              v59 = v58;
              swift_unknownObjectRelease();
              v91.origin.x = v53;
              v91.origin.y = v55;
              v91.size.width = v57;
              v91.size.height = v59;
              v95.origin.x = v43;
              v95.origin.y = v45;
              v95.size.width = v47;
              v95.size.height = v51;
              v92 = CGRectIntersection(v91, v95);
              x = v92.origin.x;
              y = v92.origin.y;
              width = v92.size.width;
              height = v92.size.height;
              if (CGRectIsEmpty(v92))
              {

                swift_unknownObjectRelease();
                v64 = 0.0;
              }

              else
              {
                v93.origin.x = v43;
                v93.origin.y = v45;
                v93.size.width = v47;
                v93.size.height = v51;
                MaxY = CGRectGetMaxY(v93);
                v94.origin.x = x;
                v94.origin.y = y;
                v94.size.width = width;
                v94.size.height = height;
                MinY = CGRectGetMinY(v94);

                swift_unknownObjectRelease();
                v64 = MaxY - MinY;
              }

              v32 = v80;
LABEL_25:
              v67 = swift_unknownObjectWeakLoadStrong();
              if (v67)
              {
                v68 = v67;
                [v67 contentInset];
                v70 = v69;
                v72 = v71;
                v74 = v73;

                v75 = objc_opt_self();
                *&v76 = COERCE_DOUBLE(swift_allocObject());
                *(v76 + 16) = v15;
                *(v76 + 24) = v70;
                *(v76 + 32) = v72;
                *(v76 + 40) = v64;
                *(v76 + 48) = v74;
                v88 = v37;
                v89 = *&v76;
                aBlock = MEMORY[0x277D85DD0];
                v85 = 1107296256;
                *&v86 = COERCE_DOUBLE(sub_21D0D74FC);
                v87 = v36;
                v77 = _Block_copy(&aBlock);
                v78 = v15;

                [v75 animateWithDuration:v77 animations:v32];
                _Block_release(v77);

                return;
              }

LABEL_30:
              __break(1u);
              return;
            }
          }

          v64 = 0.0;
          goto LABEL_25;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

LABEL_20:
  }
}

void sub_21DA977E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21DBF4D5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v33 = *(a4 + 8);
    v13 = v33(a3, a4);
    v14 = [v13 traitCollection];

    v15 = [v14 _presentationSemanticContext];
    if (v15 == 3)
    {
      goto LABEL_15;
    }

    v31 = a3;
    *&v32 = a1;
    v16 = sub_21DBF4D2C();
    v17 = sub_21DBFA16C();
    v19 = v18;
    if (v17 == sub_21DBFA16C() && v19 == v20)
    {
    }

    else
    {
      v22 = sub_21DBFC64C();

      if ((v22 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    (*(v8 + 16))(v10, v32, v7);
    TTRIKeyboardNotification.init(notification:)(v10, &v34);
    v23 = v34;
    if (!v34)
    {
LABEL_15:

      return;
    }

    v24 = v37;
    v25 = v38 & 1;
    if (v38)
    {
      v26 = 0.25;
    }

    else
    {
      v26 = v37;
    }

    v32 = v35;
    v30 = v36;
    v27 = v31;
    v28 = v33(v31, a4);
    v34 = v23;
    v35 = v32;
    v36 = v30;
    v37 = v24;
    v38 = v25;
    v29 = UIScrollView.bottomContentInset(forAvoidingKeyboardWith:)(&v34);

    (*(a4 + 56))(v27, a4, v29, v26);
  }
}

void sub_21DA97AD4(double a1, double a2, double a3, double a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = Strong;
  [Strong setScrollIndicatorInsets_];

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 setContentInset_];
}

void sub_21DA97BA0(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a7 + 8);
  v14 = v13(a6, a7);
  [v14 setScrollIndicatorInsets_];

  v15 = v13(a6, a7);
  [v15 setContentInset_];
}

uint64_t sub_21DA98000()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65A38);
  v1 = __swift_project_value_buffer(v0, qword_27CE65A38);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTREditSectionsListEditor.remList.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void *TTREditSectionsListEditor.__allocating_init(list:undoManager:committer:userDefaults:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[4] = MEMORY[0x277D84F90];
  v8[2] = a1;
  sub_21D0D32E4(a4, (v8 + 5));
  v9 = a1;
  v10 = [v9 store];
  v11 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v12 = type metadata accessor for TTRBasicUndoContext();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v26[3] = v12;
  v26[4] = &protocol witness table for TTRBasicUndoContext;
  v26[0] = v13;
  sub_21D1826C4(v26, v25);
  v14 = [v11 updateList_];
  sub_21D1826C4(v25, v23);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v15 = qword_280D1AA18;
  sub_21D311700(v25);
  type metadata accessor for TTRListEditor();
  v16 = swift_allocObject();
  v21 = type metadata accessor for TTRUserDefaults();
  v22 = &protocol witness table for TTRUserDefaults;
  *&v20 = v15;
  v17 = v15;
  sub_21D311700(v26);
  *(v16 + 64) = 0;
  *(v16 + 16) = v14;
  v18 = v23[1];
  *(v16 + 24) = v23[0];
  *(v16 + 40) = v18;
  *(v16 + 56) = v24;
  swift_beginAccess();
  *(v16 + 64) = 0;
  sub_21D0D15E0(&v20, v16 + 72);

  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  v8[3] = v16;
  return v8;
}

void *TTREditSectionsListEditor.init(list:undoManager:committer:userDefaults:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x277D84F90];
  v4[2] = a1;
  v4[4] = v9;
  sub_21D0D32E4(a4, (v4 + 5));
  v10 = a1;
  v11 = [v10 store];
  v12 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  swift_beginAccess();
  v13 = v4[2];
  v14 = type metadata accessor for TTRBasicUndoContext();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v29[3] = v14;
  v29[4] = &protocol witness table for TTRBasicUndoContext;
  v29[0] = v15;
  sub_21D1826C4(v29, v28);
  v16 = v13;
  v17 = [v12 updateList_];
  sub_21D1826C4(v28, v26);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v18 = qword_280D1AA18;
  sub_21D311700(v28);
  type metadata accessor for TTRListEditor();
  v19 = swift_allocObject();
  v24 = type metadata accessor for TTRUserDefaults();
  v25 = &protocol witness table for TTRUserDefaults;
  *&v23 = v18;
  v20 = v18;
  sub_21D311700(v29);
  *(v19 + 64) = 0;
  *(v19 + 16) = v17;
  v21 = v26[1];
  *(v19 + 24) = v26[0];
  *(v19 + 40) = v21;
  *(v19 + 56) = v27;
  swift_beginAccess();
  *(v19 + 64) = 0;
  sub_21D0D15E0(&v23, v19 + 72);

  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  v4[3] = v19;
  return v4;
}

Swift::Void __swiftcall TTREditSectionsListEditor.saveSectionNames(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  v28 = v1;
  v2 = *(v1 + 32);
  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  sub_21DBF8E0C();
  if (v3)
  {
    v4 = 0;
    v26 = v2 & 0xFFFFFFFFFFFFFF8;
    v27 = v2 & 0xC000000000000001;
    v24 = &v32;
    v5 = (a1._rawValue + 40);
    v25 = v3;
    do
    {
      if (v27)
      {
        v14 = MEMORY[0x223D44740](v4, v2);
      }

      else
      {
        if (v4 >= *(v26 + 16))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v3 = sub_21DBFBD7C();
          goto LABEL_3;
        }

        v14 = *(v2 + 8 * v4 + 32);
      }

      v15 = v14;
      v16 = *(a1._rawValue + 2);
      if (v4 == v16)
      {

        break;
      }

      if (v4 >= v16)
      {
        goto LABEL_21;
      }

      v17 = *(v5 - 1);
      v18 = *v5;
      sub_21D1826C4(*(v28 + 24) + 24, aBlock);
      v19 = v33;
      if (v33)
      {
        v30 = v17;
        v20 = v2;
        v21 = v34;
        __swift_project_boxed_opaque_existential_1(aBlock, v33);
        v22 = *(v21 + 1);
        sub_21DBF8E0C();
        v23 = v22(v19, v21);
        __swift_destroy_boxed_opaque_existential_0(aBlock);
        if (v23)
        {
          v6 = type metadata accessor for TTRBasicUndoContext();
          v19 = swift_allocObject();
          v19[2] = v23;
          v7 = &protocol witness table for TTRBasicUndoContext;
        }

        else
        {
          v6 = 0;
          v7 = 0;
          v19 = 0;
        }

        v2 = v20;
        v17 = v30;
      }

      else
      {
        sub_21DBF8E0C();
        sub_21D311700(aBlock);
        v6 = 0;
        v7 = 0;
      }

      ++v4;
      type metadata accessor for TTRListSectionEditor();
      v8 = swift_allocObject();
      *(v8 + 16) = v15;
      *(v8 + 24) = v19;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = v6;
      *(v8 + 56) = v7;
      *(v8 + 64) = 0;
      v9 = v15;
      v10._countAndFlagsBits = v17;
      v10._object = v18;
      TTRListSectionEditor.edit(displayName:)(v10);

      v11 = [v9 saveRequest];
      sub_21D0D8CF0(0, &qword_280D1B900);
      v12 = sub_21DBFB12C();
      v34 = sub_21DA9A390;
      v35 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v32 = sub_21D11E5E4;
      v33 = &block_descriptor_141;
      v13 = _Block_copy(aBlock);
      [v11 saveWithQueue:v12 completion:v13];
      _Block_release(v13);

      v5 += 2;
    }

    while (v25 != v4);
  }
}

void TTREditSectionsListEditor.saveHideEmptySectionsToggle(for:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(a1 + 56);
  swift_beginAccess();
  sub_21D0D32E4(v3 + 72, v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v7 = [*(v3 + 16) objectID];
  (*(v6 + 6))(v4, v7, v5, v6);

  __swift_destroy_boxed_opaque_existential_0(v12);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  sub_21D182B38(sub_21D1CD9EC, v8);

  v9 = [*(v3 + 16) saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900);
  v10 = sub_21DBFB12C();
  v14 = sub_21DA98A70;
  v15 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21D11E5E4;
  v13 = &block_descriptor_3_1;
  v11 = _Block_copy(v12);
  [v9 saveWithQueue:v10 completion:v11];
  _Block_release(v11);
}

void sub_21DA98A84(void *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    if (qword_27CE57070 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE65A38);
    v6 = a1;
    oslog = sub_21DBF84AC();
    v7 = sub_21DBFAEBC();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_21DBFC74C();
      v12 = sub_21D0CDFB4(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, oslog, v7, a3, v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223D46520](v9, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27CE57070 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_27CE65A38);
    oslog = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v15, a2, v16, 2u);
      MEMORY[0x223D46520](v16, -1, -1);
    }
  }
}

uint64_t TTREditSectionsListEditor.fetchSections(_:)()
{
  v1 = sub_21DBF719C();
  v20 = *(v1 - 8);
  v21 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF6DBC();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A70);
  v18 = *(v7 - 8);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v17 - v9;
  v11 = [*(*(v0 + 24) + 16) saveRequest];
  v12 = [v11 store];

  swift_beginAccess();
  v13 = *(v0 + 16);
  v14 = v22;
  sub_21DBF6D0C();

  if (!v14)
  {
    v15 = sub_21DBF76DC();
    MEMORY[0x223D3F550](v15);
    (*(v19 + 8))(v6, v4);
    v0 = sub_21DBF718C();
    (*(v20 + 8))(v3, v21);
    (*(v18 + 8))(v10, v7);
  }

  return v0;
}

uint64_t TTREditSectionsListEditor.sectionForUserAction(with:)(void *a1)
{

  return sub_21DA99E7C(a1, &selRef_fetchListSectionsWithObjectIDs_error_, &qword_27CE584F8, 0x277D44698, sub_21D1AA2A4);
}

void *TTREditSectionsSmartListEditor.__allocating_init(list:undoManager:committer:userDefaults:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[4] = MEMORY[0x277D84F90];
  v8[2] = a1;
  sub_21D0D32E4(a4, (v8 + 5));
  v9 = a1;
  v10 = [v9 store];
  v11 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v12 = type metadata accessor for TTRBasicUndoContext();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v20[3] = v12;
  v20[4] = &protocol witness table for TTRBasicUndoContext;
  v20[0] = v13;
  sub_21D1826C4(v20, v18);
  v14 = [v11 updateSmartList_];

  sub_21D311700(v20);
  type metadata accessor for TTRSmartListEditor();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = v18[1];
  *(v15 + 24) = v18[0];
  *(v15 + 40) = v16;
  *(v15 + 56) = v19;
  *(v15 + 64) = 0;
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  v8[3] = v15;
  return v8;
}

void *TTREditSectionsSmartListEditor.init(list:undoManager:committer:userDefaults:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[4] = MEMORY[0x277D84F90];
  sub_21D0D32E4(a4, (v4 + 5));
  v9 = a1;
  v10 = [v9 store];
  v11 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v12 = type metadata accessor for TTRBasicUndoContext();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v20[3] = v12;
  v20[4] = &protocol witness table for TTRBasicUndoContext;
  v20[0] = v13;
  sub_21D1826C4(v20, v18);
  v14 = [v11 updateSmartList_];

  sub_21D311700(v20);
  type metadata accessor for TTRSmartListEditor();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = v18[1];
  *(v15 + 24) = v18[0];
  *(v15 + 40) = v16;
  *(v15 + 56) = v19;
  *(v15 + 64) = 0;
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  v4[3] = v15;
  return v4;
}

id _s15RemindersUICore25TTREditSectionsListEditorC12listObjectIDSo09REMObjectI0Cvg_0()
{
  swift_beginAccess();
  v1 = [*(v0 + 16) objectID];

  return v1;
}

uint64_t sub_21DA9947C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), v5);
  swift_beginAccess();
  v11 = [*(v2 + 16) objectID];
  v12 = a1;
  v7 = (*(v6 + 8))(&v11, v5, v6);
  sub_21D157478(v11, v12);
  v8 = sub_21DBF71BC();
  v9 = MEMORY[0x277D45468];
  if ((v7 & 1) == 0)
  {
    v9 = MEMORY[0x277D45470];
  }

  return (*(*(v8 - 8) + 104))(a2, *v9, v8);
}

void sub_21DA99594(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v6 = [*(*(v4 + 24) + 16) saveRequest];
  v7 = [v6 store];

  v8 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v9 = [v8 *a2];
  swift_beginAccess();
  v10 = v9;
  MEMORY[0x223D42D80]();
  if (*((*(v4 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();
  swift_endAccess();
}

Swift::Void __swiftcall TTREditSectionsSmartListEditor.saveSectionNames(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  v28 = v1;
  v2 = *(v1 + 32);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  sub_21DBF8E0C();
  if (v3)
  {
    v4 = 0;
    v26 = v2 & 0xFFFFFFFFFFFFFF8;
    v27 = v2 & 0xC000000000000001;
    v23 = &v31;
    v5 = (a1._rawValue + 40);
    v24 = v3;
    v25 = v2;
    do
    {
      if (v27)
      {
        v14 = MEMORY[0x223D44740](v4, v2);
      }

      else
      {
        if (v4 >= *(v26 + 16))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v3 = sub_21DBFBD7C();
          goto LABEL_3;
        }

        v14 = *(v2 + 8 * v4 + 32);
      }

      v15 = v14;
      v16 = *(a1._rawValue + 2);
      if (v4 == v16)
      {

        break;
      }

      if (v4 >= v16)
      {
        goto LABEL_20;
      }

      v17 = *(v5 - 1);
      v18 = *v5;
      sub_21D1826C4(*(v28 + 24) + 24, aBlock);
      v19 = v32;
      if (v32)
      {
        v20 = v33;
        __swift_project_boxed_opaque_existential_1(aBlock, v32);
        v21 = *(v20 + 1);
        sub_21DBF8E0C();
        v22 = v21(v19, v20);
        __swift_destroy_boxed_opaque_existential_0(aBlock);
        if (v22)
        {
          v6 = type metadata accessor for TTRBasicUndoContext();
          v19 = swift_allocObject();
          v19[2] = v22;
          v7 = &protocol witness table for TTRBasicUndoContext;
        }

        else
        {
          v6 = 0;
          v7 = 0;
          v19 = 0;
        }
      }

      else
      {
        sub_21DBF8E0C();
        sub_21D311700(aBlock);
        v6 = 0;
        v7 = 0;
      }

      ++v4;
      type metadata accessor for TTRSmartListSectionEditor();
      v8 = swift_allocObject();
      *(v8 + 64) = 0;
      *(v8 + 16) = v15;
      *(v8 + 24) = v19;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = v6;
      *(v8 + 56) = v7;
      swift_beginAccess();
      *(v8 + 64) = 0;
      v9 = v15;
      v10._countAndFlagsBits = v17;
      v10._object = v18;
      TTRSmartListSectionEditor.edit(displayName:)(v10);

      v11 = [v9 saveRequest];
      sub_21D0D8CF0(0, &qword_280D1B900);
      v12 = sub_21DBFB12C();
      v33 = sub_21DA9A390;
      v34 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v31 = sub_21D11E5E4;
      v32 = &block_descriptor_9_4;
      v13 = _Block_copy(aBlock);
      [v11 saveWithQueue:v12 completion:v13];
      _Block_release(v13);

      v5 += 2;
      v2 = v25;
    }

    while (v24 != v4);
  }
}

void sub_21DA99A3C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 24);
  a3();
  v9 = [*(v8 + 16) saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900);
  v10 = sub_21DBFB12C();
  v12[4] = a4;
  v12[5] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21D11E5E4;
  v12[3] = a5;
  v11 = _Block_copy(v12);
  [v9 saveWithQueue:v10 completion:v11];
  _Block_release(v11);
}

uint64_t TTREditSectionsSmartListEditor.fetchSections(_:)()
{
  v1 = sub_21DBF719C();
  v20 = *(v1 - 8);
  v21 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF6C5C();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE637A0);
  v18 = *(v7 - 8);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v17 - v9;
  v11 = [*(*(v0 + 24) + 16) saveRequest];
  v12 = [v11 store];

  swift_beginAccess();
  v13 = *(v0 + 16);
  v14 = v22;
  sub_21DBF6CBC();

  if (!v14)
  {
    v15 = sub_21DBF76DC();
    MEMORY[0x223D3F400](v15);
    (*(v19 + 8))(v6, v4);
    v0 = sub_21DBF718C();
    (*(v20 + 8))(v3, v21);
    (*(v18 + 8))(v10, v7);
  }

  return v0;
}

uint64_t TTREditSectionsSmartListEditor.sectionForUserAction(with:)(void *a1)
{

  return sub_21DA99E7C(a1, &selRef_fetchSmartListSectionsWithObjectIDs_error_, &qword_27CE584A8, 0x277D44818, sub_21D1AA2B8);
}

uint64_t sub_21DA99E7C(void *a1, SEL *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(id, uint64_t))
{
  v23[1] = *MEMORY[0x277D85DE8];
  v10 = [*(*(v5 + 24) + 16) saveRequest];
  v11 = [v10 store];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC09CF0;
  *(v12 + 32) = a1;
  sub_21D0D8CF0(0, &qword_280D17880);
  v13 = a1;
  v14 = sub_21DBFA5DC();

  v23[0] = 0;
  v15 = [v11 *a2];

  v16 = v23[0];
  if (v15)
  {
    sub_21D0D8CF0(0, a3);
    sub_21D183A0C();
    v17 = sub_21DBF9E6C();
    v18 = v16;

    v19 = a5(v13, v17);

    result = v19;
    if (v19)
    {
      return result;
    }
  }

  else
  {
    v21 = v23[0];
    v22 = sub_21DBF52DC();

    swift_willThrow();
  }

  return 0;
}

uint64_t _s15RemindersUICore25TTREditSectionsListEditorCfd_0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  return v0;
}

uint64_t _s15RemindersUICore25TTREditSectionsListEditorCfD_0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  return swift_deallocClassInstance();
}

id sub_21DA9A0F4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = [*(v1 + 16) objectID];

  return v2;
}

uint64_t sub_21DA9A3B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t TTRICollectionViewDragAndDropActivityTracker.changePublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  sub_21D0D0F1C(&qword_280D0C450, &unk_27CE5C9E0);
  return sub_21DBF920C();
}

void *TTRICollectionViewDragAndDropActivityTracker.__allocating_init()()
{
  v0 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v0);
  v1 = swift_allocObject();
  v1[2] = [objc_opt_self() hashTableWithOptions_];
  v1[3] = [objc_opt_self() hashTableWithOptions_];
  v1[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  swift_allocObject();
  v1[5] = sub_21DBF907C();
  sub_21D0CE468();
  v2 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v3 = swift_allocObject();
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v3[5] = sub_21DBF5EEC();
  v3[6] = v4;
  v3[4] = v2;
  v1[6] = v3;
  swift_beginAccess();
  v3[3] = &protocol witness table for TTRICollectionViewDragAndDropActivityTracker;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t sub_21DA9A72C(void *a1, char *a2, uint64_t a3, void (*a4)(void, void, void, void))
{
  v8 = v4;
  if (qword_27CE57078 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE65A50);
  swift_unknownObjectRetain();
  v11 = sub_21DBF84AC();
  v12 = sub_21DBFAEAC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 136315138;
    v14 = [a1 description];
    format = a2;
    v15 = sub_21DBFA16C();
    v16 = a4;
    v18 = v17;

    v19 = sub_21D0CDFB4(v15, v18, &v24);
    a4 = v16;

    *(v13 + 4) = v19;
    _os_log_impl(&dword_21D0C9000, v11, v12, format, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x223D46520](v23, -1, -1);
    MEMORY[0x223D46520](v13, -1, -1);
  }

  swift_unknownObjectRetain();

  a4(v20, v8, a1, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_21DA9A960()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65A50);
  v1 = __swift_project_value_buffer(v0, qword_27CE65A50);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *TTRICollectionViewDragAndDropActivityTracker.init()()
{
  v1 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v1);
  v0[2] = [objc_opt_self() hashTableWithOptions_];
  v0[3] = [objc_opt_self() hashTableWithOptions_];
  v0[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  swift_allocObject();
  v0[5] = sub_21DBF907C();
  sub_21D0CE468();
  v2 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v3 = swift_allocObject();
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v3[5] = sub_21DBF5EEC();
  v3[6] = v4;
  v3[4] = v2;
  v0[6] = v3;
  swift_beginAccess();
  v3[3] = &protocol witness table for TTRICollectionViewDragAndDropActivityTracker;
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t sub_21DA9AC44(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
  v2 = swift_allocObject();
  v3 = vmovn_s64(vceqzq_s64(vandq_s8(vdupq_n_s64(a1), xmmword_21DC3A4F0)));
  v4 = vdup_lane_s32(v3, 1);
  v5.i64[0] = v4.i32[0];
  v5.i64[1] = v4.i32[1];
  *(v2 + 16) = xmmword_21DC08D20;
  *(v2 + 32) = vbicq_s8(xmmword_21DC3A500, v5);
  v6 = vdup_lane_s32(v3, 0);
  v5.i64[0] = v6.i32[0];
  v5.i64[1] = v6.i32[1];
  *(v2 + 48) = vbicq_s8(xmmword_21DC3A510, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
  sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
  sub_21DBFA41C();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v7 = sub_21DBFA07C();
  v9 = v8;

  MEMORY[0x223D42AA0](v7, v9);

  MEMORY[0x223D42AA0](93, 0xE100000000000000);
  return 91;
}

uint64_t TTRICollectionViewDragAndDropActivityTracker.deinit()
{

  return v0;
}

uint64_t TTRICollectionViewDragAndDropActivityTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21DA9AEF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  sub_21D0D0F1C(&qword_280D0C450, &unk_27CE5C9E0);
  return sub_21DBF920C();
}

void sub_21DA9AF80(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *(a1 + 32);
  [*(a2 + 16) *a4];
  v6 = [*(a1 + 16) count];
  v7 = [*(a1 + 24) count];
  v8 = v6 > 0;
  v9 = 2;
  if (v6 > 0)
  {
    v9 = 3;
  }

  if (v7 >= 1)
  {
    v8 = v9;
  }

  *(a1 + 32) = v8;
  if (v8 != v5)
  {
    if (qword_27CE57078 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE65A50);

    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315394;
      v15 = sub_21DA9AC44(v5);
      v17 = sub_21D0CDFB4(v15, v16, &v22);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = sub_21DA9AC44(*(a1 + 32));
      v20 = sub_21D0CDFB4(v18, v19, &v22);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_21D0C9000, v11, v12, "TTRICollectionViewDragAndDropActivityTracker: state change {from: %s, to: %s}", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    v21._object = 0x800000021DC75FB0;
    v21._countAndFlagsBits = 0xD000000000000014;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v21);
  }
}

void sub_21DA9B18C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *(a1 + 32);
  [*(a2 + 24) *a4];
  v6 = [*(a1 + 16) count];
  v7 = [*(a1 + 24) count];
  v8 = v6 > 0;
  v9 = 2;
  if (v6 > 0)
  {
    v9 = 3;
  }

  if (v7 >= 1)
  {
    v8 = v9;
  }

  *(a1 + 32) = v8;
  if (v8 != v5)
  {
    if (qword_27CE57078 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE65A50);

    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315394;
      v15 = sub_21DA9AC44(v5);
      v17 = sub_21D0CDFB4(v15, v16, &v22);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = sub_21DA9AC44(*(a1 + 32));
      v20 = sub_21D0CDFB4(v18, v19, &v22);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_21D0C9000, v11, v12, "TTRICollectionViewDragAndDropActivityTracker: state change {from: %s, to: %s}", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    v21._object = 0x800000021DC75FB0;
    v21._countAndFlagsBits = 0xD000000000000014;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v21);
  }
}

unint64_t sub_21DA9B414()
{
  result = qword_27CE65A68;
  if (!qword_27CE65A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65A68);
  }

  return result;
}

unint64_t sub_21DA9B46C()
{
  result = qword_27CE65A70;
  if (!qword_27CE65A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65A70);
  }

  return result;
}

unint64_t sub_21DA9B4C4()
{
  result = qword_27CE65A78;
  if (!qword_27CE65A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65A78);
  }

  return result;
}

unint64_t sub_21DA9B51C()
{
  result = qword_27CE65A80;
  if (!qword_27CE65A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65A80);
  }

  return result;
}

id sub_21DA9B5A4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_21DA9B5E8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void sub_21DA9B680(char *a1@<X8>)
{
  v10[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v3 = [objc_allocWithZone(MEMORY[0x277D448E0]) initWithStore_];
  v10[0] = 0;
  v4 = [v3 fetchUncompletedRemindersCountWithError_];
  if (v4)
  {
    v5 = v4;
    v6 = v10[0];
    v7 = [v5 longLongValue];

    if (v7 <= 5)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    *a1 = v8;
  }

  else
  {
    v9 = v10[0];
    sub_21DBF52DC();

    swift_willThrow();
  }
}

void sub_21DA9B7A4(char *a1@<X8>)
{
  v10[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v3 = [objc_allocWithZone(MEMORY[0x277D448E0]) initWithStore_];
  v10[0] = 0;
  v4 = [v3 fetchListsCountWithError_];
  if (v4)
  {
    v5 = v4;
    v6 = v10[0];
    v7 = [v5 longLongValue];

    if (v7 <= 3)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    *a1 = v8;
  }

  else
  {
    v9 = v10[0];
    sub_21DBF52DC();

    swift_willThrow();
  }
}

uint64_t TTRTipKitDataModelSourceBase.__allocating_init(store:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_21DA9B8FC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

uint64_t TTRTipKitDataModelSourceBase.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_21DA9B98C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t TTRTipKitDataModelSourceFetchError.hashValue.getter()
{
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](0);
  return sub_21DBFC82C();
}

uint64_t TTRTipKitDataModelSourceContextKeyCondition.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21DA9BB68()
{
  result = qword_27CE65A98;
  if (!qword_27CE65A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65A98);
  }

  return result;
}

unint64_t sub_21DA9BBC0()
{
  result = qword_27CE65AA0;
  if (!qword_27CE65AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65AA0);
  }

  return result;
}

void UITableViewCell.setSeparatorInsetType(_:)(id *a1)
{
  v2 = *a1;
  v3 = 0.0;
  if (!*a1)
  {
    v4 = 1.79769313e308;
    v5 = 0.0;
    v6 = 0.0;
LABEL_19:
    [v1 setSeparatorInset_];
    return;
  }

  if (v2 == 1)
  {
    if (qword_280D17218 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_280D17220 == 1)
    {
      v4 = *MEMORY[0x277D76F30];
      v5 = 0.0;
      v6 = *MEMORY[0x277D76F30];
      v3 = 0.0;
    }

    else
    {
      v3 = *MEMORY[0x277D768C8];
      v4 = *(MEMORY[0x277D768C8] + 8);
      v5 = *(MEMORY[0x277D768C8] + 16);
      v6 = *(MEMORY[0x277D768C8] + 24);
    }

    goto LABEL_19;
  }

  [*a1 bounds];
  [v1 convertRect:v2 fromCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v2 effectiveAlignmentRectInsets];
  v17 = UIEdgeInsetsInsetRect(v8, v10, v12, v14, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v1 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [v1 effectiveUserInterfaceLayoutDirection];
  v40.origin.x = v17;
  v40.origin.y = v19;
  v40.size.width = v21;
  v40.size.height = v23;
  CGRectGetMinY(v40);
  v41.origin.x = v25;
  v41.origin.y = v27;
  v41.size.width = v29;
  v41.size.height = v31;
  CGRectGetMinY(v41);
  v42.origin.x = v25;
  v42.origin.y = v27;
  v42.size.width = v29;
  v42.size.height = v31;
  CGRectGetMaxY(v42);
  v43.origin.x = v17;
  v43.origin.y = v19;
  v43.size.width = v21;
  v43.size.height = v23;
  CGRectGetMaxY(v43);
  v44.origin.x = v17;
  v44.origin.y = v19;
  v44.size.width = v21;
  v44.size.height = v23;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = v25;
  v45.origin.y = v27;
  v45.size.width = v29;
  v45.size.height = v31;
  v38 = CGRectGetMinX(v45);
  v46.origin.x = v25;
  v46.origin.y = v27;
  v46.size.width = v29;
  v46.size.height = v31;
  MaxX = CGRectGetMaxX(v46);
  v47.origin.x = v17;
  v47.origin.y = v19;
  v47.size.width = v21;
  v47.size.height = v23;
  v34 = CGRectGetMaxX(v47);
  if (!v32)
  {
    v35 = MinX - v38;
LABEL_13:
    if (qword_280D17218 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = 0.0;
    if (byte_280D17220)
    {
      v6 = *MEMORY[0x277D76F30];
    }

    else
    {
      v6 = 0.0;
    }

    v5 = 0.0;
    v4 = v35;
    goto LABEL_19;
  }

  if (v32 == 1)
  {
    v35 = MaxX - v34;
    goto LABEL_13;
  }

  if (qword_27CE56650 != -1)
  {
    swift_once();
  }

  v36 = sub_21DBF84BC();
  __swift_project_value_buffer(v36, qword_27CE5B1E8);
  v37 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v37);
  sub_21DAEAB00("unknown layout direction", 24, 2);
  __break(1u);
}

uint64_t sub_21DA9C190()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65AA8);
  v1 = __swift_project_value_buffer(v0, qword_27CE65AA8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t UITableViewCell.defaultBackgroundConfiguration()()
{
  v1 = [v0 _tableView];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 style];

  if ((v3 - 1) >= 2)
  {
    if (v3)
    {
      if (qword_27CE57080 != -1)
      {
        swift_once();
      }

      v4 = sub_21DBF84BC();
      __swift_project_value_buffer(v4, qword_27CE65AA8);
      v5 = MEMORY[0x277D84F90];
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21D17716C(v5);
      sub_21DAEAB00("unknown UITableViewStyle", 24, 2);
      __break(1u);
      return MEMORY[0x2821DD148]();
    }

LABEL_7:

    return MEMORY[0x2821DD148]();
  }

  return MEMORY[0x2821DD160]();
}

id UIAlertController.init(actionSheetOrAlertWithTitle:message:popoverAnchor:canCancel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = *(a5 + 16);
  v25[0] = *a5;
  v25[1] = v8;
  v26[0] = *(a5 + 32);
  *(v26 + 9) = *(a5 + 41);
  if ((a6 & 1) == 0)
  {
    sub_21DA9C900(v25);
    goto LABEL_8;
  }

  if ((BYTE8(v26[0]) & 0xFE) == 0xFELL)
  {
    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (v11 == 1)
    {
LABEL_8:
      if (a2)
      {
        v14 = sub_21DBFA12C();

        if (a4)
        {
LABEL_10:
          v15 = sub_21DBFA12C();

LABEL_13:
          v16 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

          return v16;
        }
      }

      else
      {
        v14 = 0;
        if (a4)
        {
          goto LABEL_10;
        }
      }

      v15 = 0;
      goto LABEL_13;
    }
  }

  if (!a2)
  {
    v12 = 0;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v12 = sub_21DBFA12C();

  if (!a4)
  {
    goto LABEL_15;
  }

LABEL_6:
  v13 = sub_21DBFA12C();

LABEL_16:
  v18 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v12 message:v13 preferredStyle:0];

  if ((BYTE8(v26[0]) & 0xFE) != 0xFELL)
  {
    v19 = *(a5 + 16);
    v20[0] = *a5;
    v20[1] = v19;
    v21 = *(a5 + 32);
    v22 = *(&v26[0] + 1);
    v23 = *(a5 + 48);
    v24 = *(a5 + 56);
    v18 = v18;
    UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)(v20);
    sub_21DA9C900(v25);
  }

  return v18;
}

id _sSo17UIAlertControllerC15RemindersUICoreE36notesFieldCharacterLimitReachedAlertABvgZ_0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21DBF516C();
  v0 = sub_21DBFA12C();

  v1 = sub_21DBFA12C();

  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:{1, 0x800000021DC4D450}];

  sub_21DBF516C();
  v3 = sub_21DBFA12C();

  v4 = [objc_opt_self() actionWithTitle:v3 style:0 handler:{0, 0x800000021DC4BBD0}];

  [v2 addAction_];
  return v2;
}

uint64_t sub_21DA9C900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Strideable<>.clamped(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFC6BC();
  sub_21DBFA0FC();
  sub_21DBFC6DC();
  return (*(v3 + 8))(v5, a2);
}

uint64_t Comparable.clamped(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFC6BC();
  sub_21DBFA0FC();
  sub_21DBFC6DC();
  return (*(v3 + 8))(v5, a2);
}

uint64_t Int.clamped(to:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result == a2)
  {
    return 0;
  }

  v3 = a2 - 1;
  if (!__OFSUB__(a2, 1))
  {
    if (result <= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = result;
    }

    if (v3 >= v4)
    {
      return v4;
    }

    return v3;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall TTRListBadgeView.enableCursorInteraction()()
{
  v1 = [v0 interactions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65B80);
  v2 = sub_21DBFA5EC();

  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_21DBFBD7C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:

    v6 = [objc_allocWithZone(MEMORY[0x277D75870]) initWithDelegate_];
    [v0 addInteraction_];

    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = 0;
  while ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223D44740](v4, v2);
    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
    ++v4;
    if (v5 == v3)
    {
      goto LABEL_18;
    }
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  v5 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  swift_unknownObjectRelease();
}

UIPointerRegion_optional __swiftcall TTRListBadgeView.pointerInteraction(_:regionFor:defaultRegion:)(UIPointerInteraction _, UIPointerRegionRequest regionFor, UIPointerRegion defaultRegion)
{
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v3 hitTestInsets];
  v15 = UIEdgeInsetsInsetRect(v6, v8, v10, v12, v13, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(objc_class *)regionFor.super.isa location];
  v27.x = v22;
  v27.y = v23;
  v28.origin.x = v15;
  v28.origin.y = v17;
  v28.size.width = v19;
  v28.size.height = v21;
  if (CGRectContainsPoint(v28, v27))
  {
    sub_21D0D8CF0(0, &qword_27CE65B88);
    v25 = sub_21DBFAFEC();
  }

  else
  {
    v25 = 0;
  }

  result.value.super.isa = v25;
  result.is_nil = v24;
  return result;
}

double sub_21DA9D064()
{
  result = 8.0;
  xmmword_27CE65AC0 = xmmword_21DC3AA40;
  *algn_27CE65AD0 = xmmword_21DC3AA50;
  qword_27CE65AE0 = 0x4026000000000000;
  byte_27CE65AE8 = 1;
  return result;
}

double static TTRListBadgeView.Shape.customSmartListInListRowView.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27CE57088 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CE65AE0;
  v2 = byte_27CE65AE8;
  result = *&xmmword_27CE65AC0;
  v4 = *algn_27CE65AD0;
  *a1 = xmmword_27CE65AC0;
  *(a1 + 16) = v4;
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  return result;
}

double sub_21DA9D10C()
{
  result = 8.0;
  __asm { FMOV            V1.2D, #24.0 }

  xmmword_27CE65AF0 = _Q1;
  unk_27CE65B00 = xmmword_21DC3AA60;
  qword_27CE65B10 = 0x4032000000000000;
  byte_27CE65B18 = 1;
  return result;
}

double static TTRListBadgeView.Shape.customSmartListInListDetailView.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27CE57090 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CE65B10;
  v2 = byte_27CE65B18;
  result = *&xmmword_27CE65AF0;
  v4 = unk_27CE65B00;
  *a1 = xmmword_27CE65AF0;
  *(a1 + 16) = v4;
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  return result;
}

uint64_t _s15RemindersUICore16TTRListBadgeViewC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0jG0C_So0J6RegionCtF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65BF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_21DBF862C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = (&v17 - v11);
  v13 = [v1 layer];
  [v1 frame];
  [v13 setCornerRadius_];

  *v12 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView_];
  (*(v6 + 104))(v12, *MEMORY[0x277D74B00], v5);
  sub_21D0D8CF0(0, &qword_27CE63C18);
  (*(v6 + 16))(v8, v12, v5);
  v14 = sub_21DBF851C();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = sub_21DBFAF6C();
  (*(v6 + 8))(v12, v5);
  return v15;
}

id TTRIHashtagButton.isExcluded.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    return [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

id TTRIHashtagButton.currentVisiblePath.getter()
{
  v1 = sub_21DBF88CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  sub_21DBFB97C();
  v8 = sub_21DBFB95C();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_21D0CF7E0(v7, &unk_27CE5F2F0);
    return 0;
  }

  else
  {
    sub_21DBFB7AC();
    sub_21DBF87FC();
    v11 = v10;
    (*(v2 + 8))(v4, v1);
    sub_21D0CF7E0(v7, &unk_27CE5F2F0);
    [v0 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [v0 alignmentRectInsets];
    v22 = UIEdgeInsetsInsetRect(v13, v15, v17, v19, v20, v21);
    return [objc_opt_self() bezierPathWithRoundedRect:v22 cornerRadius:{v23, v24, v25, v11}];
  }
}

uint64_t TTRIHashtagButton.focusDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIHashtagButton.focusDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t TTRIHashtagButton.isExcluded.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21DA9D880(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  result = swift_beginAccess();
  v6 = v3[v4];
  v3[v4] = v2;
  if (v2 != v6)
  {
    return [v3 setNeedsUpdateConfiguration];
  }

  return result;
}

void (*TTRIHashtagButton.isExcluded.modify(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21DA9D984;
}

void sub_21DA9D984(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setNeedsUpdateConfiguration];
  }

  free(v1);
}

id sub_21DA9D9E0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isAddTagButton] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setTtrFocusGroupIdentifier_];
  [v10 setFocusEffect_];

  return v10;
}

id sub_21DA9DAF8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isAddTagButton] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setTtrFocusGroupIdentifier_];
    [v6 setFocusEffect_];
  }

  return v5;
}

uint64_t TTRIHashtagButton.canBecomeFocused.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 8))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

Swift::Void __swiftcall TTRIHashtagButton.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v5 = [(objc_class *)in.super.isa nextFocusedView];
  if (v5)
  {
    v6 = v5;
    sub_21D0D8CF0(0, &qword_280D176A0);
    v7 = v2;
    v8 = sub_21DBFB63C();

    if (v8)
    {
      v9 = &v7[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        (*(v10 + 16))(v7, ObjectType, v10);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_21DA9DEF0()
{
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v0 = sub_21D900614(8);
  v1 = [objc_opt_self() configurationWithFont:v0 scale:-1];

  v2 = v1;
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  qword_27CE65BF8 = v4;
}

id TTRIHashtagButton.accessibilityLabel.getter()
{
  v1 = sub_21DBF4CAC();
  v2 = *(v1 - 8);
  *&v4 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isAddTagButton])
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v37 = 0x800000021DC76090;
    return sub_21DBF516C();
  }

  v38[0] = v3;
  result = [v0 titleLabel];
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = [result text];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_21DBFA16C();
  v12 = v11;

  sub_21DBFA23C();
  v13 = v10;
  v14 = v12;
  LOBYTE(v10) = sub_21DBFA39C();

  if ((v10 & 1) == 0)
  {
    return v13;
  }

  v15 = [objc_opt_self() currentRequest];
  if (!v15)
  {
    return v13;
  }

  v16 = v15;
  v17 = [v15 technology];

  v18 = sub_21DBFA16C();
  v20 = v19;
  if (v18 != sub_21DBFA16C() || v20 != v21)
  {
    v22 = sub_21DBFC64C();

    if (v22)
    {
      goto LABEL_15;
    }

    return v13;
  }

LABEL_15:
  if (qword_27CE57550 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21DC08D00;
  v24 = sub_21DBF4C1C();
  MEMORY[0x28223BE20](v24);
  v37 = v6;
  v25 = sub_21D3F7414(sub_21D24B3BC, &v38[-4], v13, v14);
  if (v26)
  {

    v27 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    v29 = sub_21D3F7BA8(v25, v13, v14);
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v27 = MEMORY[0x223D429B0](v29, v31, v33, v35);
    v28 = v36;
  }

  (*(v2 + 8))(v6, v38[0]);
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_21D17A884();
  *(v23 + 32) = v27;
  *(v23 + 40) = v28;
  return sub_21DBFA17C();
}

uint64_t (*TTRIHashtagButton.accessibilityLabel.modify(id *a1))()
{
  *a1 = TTRIHashtagButton.accessibilityLabel.getter();
  a1[1] = v2;
  return destroy for TTRRemindersListViewModel.ListNameData;
}

uint64_t TTRIHashtagButton.accessibilityValue.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  v2 = 0;
  if (*(v0 + v1) == 1)
  {
    if (qword_27CE57560 != -1)
    {
      swift_once();
    }

    v2 = qword_27CE671B0;
    sub_21DBF8E0C();
  }

  return v2;
}

void (*TTRIHashtagButton.accessibilityValue.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  v6 = 0;
  v7 = 0;
  if (*(v1 + v5) == 1)
  {
    if (qword_27CE57560 != -1)
    {
      swift_once();
    }

    v6 = qword_27CE671B0;
    v7 = sub_21DBF8E0C();
  }

  *(v4 + 24) = v6;
  *(v4 + 32) = v7;
  return sub_21DA9E728;
}

void sub_21DA9E728(void **a1)
{
  v1 = *a1;

  free(v1);
}

uint64_t TTRIHashtagButton.accessibilityHint.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(v0, &protocol witness table for TTRIHashtagButton, ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t (*TTRIHashtagButton.accessibilityHint.modify(uint64_t *a1))()
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(v1, &protocol witness table for TTRIHashtagButton, ObjectType, v4);
    v8 = v7;
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return destroy for TTRRemindersBoardCellInfoButtonStates;
}

char *TTRIHashtagButton.accessibilityUserInputLabels.getter()
{
  ObjectType = swift_getObjectType();
  v2 = sub_21DBF4CAC();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isAddTagButton))
  {
    v44.receiver = v0;
    v44.super_class = ObjectType;
    result = objc_msgSendSuper2(&v44, sel_accessibilityUserInputLabels, v5);
    if (result)
    {
      v9 = result;
      v10 = sub_21DBFA5EC();

      return v10;
    }

    return result;
  }

  v11 = v4;
  v46.receiver = v0;
  v46.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v46, sel_accessibilityUserInputLabels, v5);
  if (v12)
  {
    v13 = v12;
    v14 = sub_21DBFA5EC();
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = [v0 titleLabel];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 text];

    if (v17)
    {
      v18 = sub_21DBFA16C();
      v20 = v19;

      sub_21DBFA23C();
      v21 = sub_21DBFA39C();

      if (v21)
      {
        v22 = sub_21DBF4C1C();
        MEMORY[0x28223BE20](v22);
        *(&v44 - 2) = v7;
        v23 = sub_21D3F7414(sub_21D24BE88, (&v44 - 2), v18, v20);
        if (v24)
        {

          v18 = 0;
          v20 = 0xE000000000000000;
        }

        else
        {
          v28 = sub_21D3F7BA8(v23, v18, v20);
          v30 = v29;
          v32 = v31;
          v34 = v33;

          v18 = MEMORY[0x223D429B0](v28, v30, v32, v34);
          v20 = v35;
        }

        (*(v3 + 8))(v7, v11);
      }

      v25 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
      v37 = *(v25 + 2);
      v36 = *(v25 + 3);
      if (v37 >= v36 >> 1)
      {
        v25 = sub_21D210A84((v36 > 1), v37 + 1, 1, v25);
      }

      *(v25 + 2) = v37 + 1;
      v38 = &v25[16 * v37];
      *(v38 + 4) = v18;
      *(v38 + 5) = v20;
      v26 = TTRIHashtagButton.accessibilityLabel.getter();
      if (!v27)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }
  }

  v25 = MEMORY[0x277D84F90];
  v26 = TTRIHashtagButton.accessibilityLabel.getter();
  if (v27)
  {
LABEL_19:
    v39 = v26;
    v40 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_21D210A84(0, *(v25 + 2) + 1, 1, v25);
    }

    v42 = *(v25 + 2);
    v41 = *(v25 + 3);
    if (v42 >= v41 >> 1)
    {
      v25 = sub_21D210A84((v41 > 1), v42 + 1, 1, v25);
    }

    *(v25 + 2) = v42 + 1;
    v43 = &v25[16 * v42];
    *(v43 + 4) = v39;
    *(v43 + 5) = v40;
  }

LABEL_24:
  v45 = v25;
  sub_21D5623AC(v14);
  result = v45;
  if (!*(v45 + 2))
  {

    return 0;
  }

  return result;
}

void TTRIHashtagButton.accessibilityUserInputLabels.setter(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v4 = sub_21DBFA5DC();
  }

  else
  {
    v4 = 0;
  }

  v5.receiver = v1;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, sel_setAccessibilityUserInputLabels_, v4);
}

void (*TTRIHashtagButton.accessibilityUserInputLabels.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getObjectType();
  *(v4 + 32) = TTRIHashtagButton.accessibilityUserInputLabels.getter();
  return sub_21DA9EF54;
}

void sub_21DA9EF54(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    if (v3)
    {
      sub_21DBF8E0C();
      v4 = sub_21DBFA5DC();
    }

    else
    {
      v4 = 0;
    }

    *v2 = *(v2 + 40);
    objc_msgSendSuper2(v2, sel_setAccessibilityUserInputLabels_, v4);
  }

  else
  {
    if (v3)
    {
      v5 = sub_21DBFA5DC();
    }

    else
    {
      v5 = 0;
    }

    *(v2 + 16) = *(v2 + 40);
    objc_msgSendSuper2((v2 + 16), sel_setAccessibilityUserInputLabels_, v5);
  }

  free(v2);
}

uint64_t TTRIHashtagButton.accessibilityCustomActions.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(v0, &protocol witness table for TTRIHashtagButton, ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

uint64_t (*TTRIHashtagButton.accessibilityCustomActions.modify(uint64_t *a1))()
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 16))(v1, &protocol witness table for TTRIHashtagButton, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return destroy for TTRProcessEnvironment;
}

id TTRIHashtagButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DA9F2F4()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21DA9F338(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A658);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_21DBFB95C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRIHashtagButton();
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = result;
    v20 = a1;
    sub_21DBFB97C();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      return sub_21D0CF7E0(v13, &unk_27CE5F2F0);
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
      *(swift_allocObject() + 16) = v19;
      v21 = v20;
      sub_21DBF8D6C();
      v22 = sub_21DBF8D5C();
      (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
      sub_21DBFB8CC();
      *(swift_allocObject() + 16) = v19;
      v30 = v21;
      sub_21DBF8BAC();
      v23 = sub_21DBF8B9C();
      v24 = *(v23 - 8);
      v31 = v10;
      v25 = *(v24 + 56);
      v25(v4, 0, 1, v23);
      v26 = sub_21DBFB79C();
      sub_21DBF887C();
      v26(v32, 0);
      *(swift_allocObject() + 16) = v19;
      v27 = v30;
      sub_21DBF8BAC();
      v25(v4, 0, 1, v23);
      v28 = sub_21DBFB79C();
      sub_21DBF888C();
      v28(v32, 0);
      v29 = v31;
      (*(v15 + 16))(v31, v17, v14);
      (*(v15 + 56))(v29, 0, 1, v14);
      sub_21DBFB98C();

      return (*(v15 + 8))(v17, v14);
    }
  }

  return result;
}

uint64_t sub_21DA9F7F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21DBF50FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF51AC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(a3, a1, v10, v12);
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v60 = sub_21D900614(8);
  sub_21D1BB110();
  sub_21DBF51CC();
  v15 = [a2 state];
  v16 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  result = swift_beginAccess();
  if (*(a2 + v16))
  {
    v18 = v15 | 0x10000;
  }

  else
  {
    v18 = v15;
  }

  if (v18 <= 4)
  {
    if (v18 == 1)
    {
      sub_21DAA0B50();
      sub_21DBF51BC();
      if (v59)
      {
        v55 = sub_21DBF9A6C();
      }

      else
      {
        v55 = 0;
      }

      v59 = v55;
      return sub_21DBF51CC();
    }

    if (v18 != 4)
    {
      return result;
    }

    v31 = [objc_opt_self() tintColor];
    v32 = sub_21D5FDD58(v31);

    v59 = v32;
LABEL_17:
    sub_21DAA0AA8();
    return sub_21DBF51CC();
  }

  switch(v18)
  {
    case 5:
      v33 = [objc_opt_self() tintColor];
      v34 = sub_21D5FDD58(v33);

      v35 = [objc_opt_self() currentTraitCollection];
      if ([v35 accessibilityContrast] == 1)
      {
        v36 = sub_21DBFB24C();

        v35 = v36;
      }

      v37 = [v34 resolvedColorWithTraitCollection_];

      [v37 alphaComponent];
      v39 = [v37 colorWithAlphaComponent_];

      v59 = v39;
      goto LABEL_17;
    case 65540:
      v40 = objc_opt_self();
      v41 = [v40 tintColor];
      v42 = objc_opt_self();
      v43 = [v42 currentTraitCollection];
      v58 = v6;
      v44 = v43;
      v45 = [v41 resolvedColorWithTraitCollection_];
      v57 = v7;
      v46 = v45;

      v59 = v46;
      sub_21DAA0AA8();
      sub_21DBF51CC();
      v47 = [v40 tintColor];
      v48 = [v42 currentTraitCollection];
      v49 = [v47 resolvedColorWithTraitCollection_];

      v59 = v49;
      sub_21DAA0AFC();
      sub_21DBF51CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
      break;
    case 65541:
      v19 = objc_opt_self();
      v20 = [v19 tintColor];
      v21 = objc_opt_self();
      v22 = [v21 currentTraitCollection];
      v58 = v6;
      v23 = v22;
      v24 = [v20 resolvedColorWithTraitCollection_];
      v57 = v7;
      v25 = v24;

      [v25 alphaComponent];
      v27 = [v25 colorWithAlphaComponent_];

      v59 = v27;
      sub_21DAA0AA8();
      sub_21DBF51CC();
      v28 = [v19 tintColor];
      v29 = [v21 currentTraitCollection];
      v30 = [v28 resolvedColorWithTraitCollection_];

      v59 = v30;
      sub_21DAA0AFC();
      sub_21DBF51CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
      break;
    default:
      return result;
  }

  inited = swift_initStackObject();
  v51 = *MEMORY[0x277D74150];
  *(inited + 32) = *MEMORY[0x277D74150];
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 40) = 1;
  v52 = v51;
  sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0);
  sub_21DBF51DC();
  v53 = v57;
  v54 = v58;
  (*(v57 + 104))(v9, *MEMORY[0x277CC8B80], v58);
  sub_21DBF519C();
  (*(v53 + 8))(v9, v54);
  return (*(v11 + 8))(v14, v10);
}

id sub_21DA9FFCC(void *a1, id a2)
{
  v4 = [a2 state];
  v5 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  if (*(a2 + v5))
  {
    v6 = v4 | 0x10000;
  }

  else
  {
    v6 = v4;
  }

  if (v6 == 65541)
  {
    v10 = [objc_opt_self() currentTraitCollection];
    v11 = [a1 resolvedColorWithTraitCollection_];

    [v11 alphaComponent];
    v13 = [v11 colorWithAlphaComponent_];

    return v13;
  }

  else if (v6 == 65540)
  {
    v7 = [objc_opt_self() currentTraitCollection];
    v8 = [a1 resolvedColorWithTraitCollection_];

    return v8;
  }

  else
  {
    v14 = [objc_opt_self() clearColor];

    return v14;
  }
}

id sub_21DAA0178(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() currentTraitCollection];
  if ([v3 accessibilityContrast] == 1)
  {
    v4 = sub_21DBFB24C();

    v3 = v4;
  }

  v5 = [a2 state];
  v6 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  if (*(a2 + v6))
  {
    v7 = v5 | 0x10000;
  }

  else
  {
    v7 = v5;
  }

  if (v7 > 65539)
  {
    if ((v7 - 65540) < 2)
    {
      v11 = [objc_opt_self() clearColor];

      return v11;
    }

    goto LABEL_18;
  }

  switch(v7)
  {
    case 1:
      v13 = [v18 resolvedColorWithTraitCollection_];
      [v13 alphaComponent];
      v15 = [v13 colorWithAlphaComponent_];
LABEL_16:
      v16 = v15;

      return v16;
    case 4:
      v13 = [objc_opt_self() tintColor];
      v15 = [v13 resolvedColorWithTraitCollection_];
      goto LABEL_16;
    case 5:
      v8 = [objc_opt_self() tintColor];
      v9 = [v8 resolvedColorWithTraitCollection_];

      [v9 alphaComponent];
      v11 = [v9 colorWithAlphaComponent_];

      return v11;
  }

LABEL_18:

  return v18;
}

id _s15RemindersUICore17TTRIHashtagButtonC13makeForAddTagACyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_21DBFB95C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  type metadata accessor for TTRIHashtagButton();
  v17 = [swift_getObjCClassFromMetadata() buttonWithType_];
  sub_21DBFB94C();
  v10 = *(v4 + 16);
  v10(v9, v6, v3);
  v11 = sub_21DBFB79C();
  sub_21DBF880C();
  v11(v18, 0);
  sub_21DBFB82C();
  v12 = *(v4 + 8);
  v12(v6, v3);
  if (qword_27CE57098 != -1)
  {
    swift_once();
  }

  v13 = qword_27CE65BF8;
  sub_21DBFB8FC();
  v10(v2, v9, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  v14 = v17;
  sub_21DBFB98C();

  v12(v9, v3);
  *(v14 + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isAddTagButton) = 1;
  return v14;
}

id _s15RemindersUICore17TTRIHashtagButtonC14makeForHashtagACyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_21DBFB95C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  type metadata accessor for TTRIHashtagButton();
  v22 = [swift_getObjCClassFromMetadata() buttonWithType_];
  sub_21DBFB93C();
  v21 = *(v4 + 16);
  v21(v9, v6, v3);
  v10 = sub_21DBFB79C();
  sub_21DBF880C();
  v10(aBlock, 0);
  sub_21DBFB82C();
  v23 = *(v4 + 8);
  v23(v6, v3);
  sub_21DBFB87C();
  v11 = objc_opt_self();
  v12 = [v11 tertiarySystemFillColor];
  sub_21DBFB88C();
  v13 = [v11 labelColor];
  sub_21DBFB89C();
  v14 = [v11 tintColor];
  v15 = sub_21DBFB79C();
  sub_21DBF87DC();
  v15(aBlock, 0);
  v16 = sub_21DBFB79C();
  sub_21DBF87EC();
  v16(aBlock, 0);
  v21(v2, v9, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  v17 = v22;
  sub_21DBFB98C();
  aBlock[4] = sub_21DA9F338;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1B6000;
  aBlock[3] = &block_descriptor_142;
  v18 = _Block_copy(aBlock);
  [v17 setConfigurationUpdateHandler_];
  _Block_release(v18);

  v23(v9, v3);
  return v17;
}

unint64_t sub_21DAA0AA8()
{
  result = qword_27CE65C20;
  if (!qword_27CE65C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65C20);
  }

  return result;
}

unint64_t sub_21DAA0AFC()
{
  result = qword_27CE65C28;
  if (!qword_27CE65C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65C28);
  }

  return result;
}

unint64_t sub_21DAA0B50()
{
  result = qword_27CE65C30;
  if (!qword_27CE65C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65C30);
  }

  return result;
}

uint64_t TTRAutoCompleteReminderStackedImagesView.Configuration.init(thumbnailContainerSize:singleImageCornerRadius:dualImageThumbnailSize:dualImageCornerRadius:dualImageThumbnailCutout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a2;
  *(a4 + 24) = a6;
  *(a4 + 32) = a3;
  return result;
}

id TTRAutoCompleteReminderStackedImagesView.init(configuration:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_images] = 0;
  v7 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_firstImageView;
  *&v1[v7] = sub_21DAA1C64();
  v8 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_secondImageView;
  v9 = sub_21DAA1C64();
  *&v1[v8] = v9;
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView____lazy_storage___maskLayer] = 0;
  v10 = &v1[OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration];
  *v10 = v2;
  *(v10 + 1) = v3;
  *(v10 + 2) = v4;
  *(v10 + 3) = v5;
  *(v10 + 4) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21DC0AA00;
  v12 = *&v1[v7];
  *(v11 + 32) = v12;
  *(v11 + 40) = v9;
  sub_21D114EC8();
  v13 = v12;
  v14 = v9;
  v15 = sub_21DBFA5DC();

  v23.receiver = v1;
  v23.super_class = type metadata accessor for TTRAutoCompleteReminderStackedImagesView();
  v16 = objc_msgSendSuper2(&v23, sel_initWithArrangedSubviews_, v15);

  v17 = v16;
  [v17 setVerticalAlignment_];
  [v17 setHorizontalAlignment_];
  LODWORD(v18) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [v17 setContentHuggingPriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v17 setContentHuggingPriority:1 forAxis:v21];
  [v17 setDebugBoundingBoxesEnabled_];

  return v17;
}

uint64_t sub_21DAA0F00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_images;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v5)
    {
      v6 = sub_21DBF8E0C();
      v7 = sub_21D1D6D70(v6, v5);

      if (v7)
      {
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_21DAA13E4();
}

void (*sub_21DAA0F90(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_images;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21DAA102C;
}

void sub_21DAA102C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = sub_21DBF8E0C();
    sub_21DAA0F00(v4);
  }

  else
  {
    v6 = v2[4];
    v5 = v2[5];
    v7 = *(v6 + v5);
    *(v6 + v5) = v3;
    if (v3)
    {
      if (v7)
      {
        v8 = sub_21DBF8E0C();
        v9 = sub_21D1D6D70(v8, v7);

        if (v9)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v7)
    {
      goto LABEL_10;
    }

    sub_21DAA13E4();
  }

LABEL_9:

LABEL_10:

  free(v2);
}

id sub_21DAA10E0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView____lazy_storage___maskLayer;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView____lazy_storage___maskLayer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView____lazy_storage___maskLayer];
  }

  else
  {
    v4 = sub_21DAA1144(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21DAA1144(char *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v3 = &a1[OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration];
  v4 = *&a1[OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration + 16];
  v5 = v2;
  result = [v5 setFrame_];
  v7 = *(v3 + 4);
  v8 = *(v3 + 3) + v7;
  v9 = v8 * 5.0 * 0.25;
  if (COERCE__INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v4 + 0x4000000000000000 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = 2 * v4 - *v3;
  if (__OFSUB__(2 * v4, *v3))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = v10 + v7;
  if (__OFADD__(v10, v7))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = v9;
  v13 = v11 + v9;
  if (__OFADD__(v11, v9))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = [a1 effectiveUserInterfaceLayoutDirection];
  if (result == 1)
  {
    v14 = v4 - v10;
    if (__OFSUB__(v4, v10))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v15 = v14 - v7;
    if (!__OFSUB__(v14, v7))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  v15 = -v12;
  if (!__OFSUB__(0, v12))
  {
    v14 = v4 - v10;
    if (!__OFSUB__(v4, v10))
    {
LABEL_15:
      v16 = __OFSUB__(v14, v7);
      v17 = v14 - v7;
      if (!v16)
      {
        v18 = v15;
        v19 = v17;
        Mutable = CGPathCreateMutable();
        [v5 bounds];
        sub_21DBFB03C();
        v21 = CGPathCreateMutable();
        TTR_CGPathAddRoundRect(v21, 1, v18, v19, v13, v13, v8);
        sub_21DBFB00C();

        [v5 setPath_];
        [v5 setFillRule_];
        v22 = [objc_opt_self() whiteColor];
        v23 = [v22 CGColor];

        [v5 setFillColor_];
        return v5;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_21DAA13E4()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_images;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (v2 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      if (sub_21DBFBD7C() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }

LABEL_17:
    [*(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_firstImageView) setHidden_];
    [*(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_secondImageView) setHidden_];
    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_17;
  }

  if (v3 == 1)
  {
LABEL_5:
    if ((v2 & 0xC000000000000001) != 0)
    {
      sub_21DBF8E0C();
      v4 = MEMORY[0x223D44740](0, v2);

      goto LABEL_8;
    }

    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v2 + 32);
LABEL_8:
      v5 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_firstImageView);
      [v5 setHidden_];
      [*(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_secondImageView) setHidden_];
      v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration);
      v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration + 8);
      [v5 setImage_];
      v8 = [v5 layer];
      [v8 setCornerRadius_];

      [v5 setCustomAlignmentRectInsets_];
      LODWORD(v9) = 1148846080;
      [v5 setLayoutSize:v7 withContentPriority:{v7, v9}];

      return;
    }

    goto LABEL_24;
  }

LABEL_11:
  v10 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_firstImageView);
  sub_21DBF8E0C();
  [v10 setHidden_];
  v11 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_secondImageView);
  [v11 setHidden_];
  if ((v2 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x223D44740](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v12 = *(v2 + 32);
  }

  v13 = v12;
  v14 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration);
  v15 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration + 16);
  v16 = __OFSUB__(v14, v15);
  v17 = v14 - v15;
  if (v16)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRAutoCompleteReminderStackedImagesView_configuration + 24);
  v19 = -v17;
  [v10 setImage_];
  v20 = [v10 layer];
  [v20 setCornerRadius_];

  [v10 setCustomAlignmentRectInsets_];
  LODWORD(v21) = 1148846080;
  [v10 setLayoutSize:v15 withContentPriority:{v15, v21}];
  if ((v2 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x223D44740](1, v2);
LABEL_20:
    v23 = v22;

    [v11 setImage_];
    v24 = [v11 layer];
    [v24 setCornerRadius_];

    [v11 setCustomAlignmentRectInsets_];
    LODWORD(v25) = 1148846080;
    [v11 setLayoutSize:v15 withContentPriority:{v15, v25}];
    v26 = [v11 layer];
    v27 = sub_21DAA10E0();
    [v26 setMask_];

    return;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v22 = *(v2 + 40);
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
}

id TTRAutoCompleteReminderStackedImagesView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRAutoCompleteReminderStackedImagesView.__allocating_init(arrangedSubviews:)(uint64_t a1)
{
  if (a1)
  {
    sub_21D114EC8();
    v2 = sub_21DBFA5DC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviews_];

  return v3;
}

id sub_21DAA1B70(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_21DAA1C64()
{
  type metadata accessor for TTRAutoCompleteReminderStackedImagesView.TTRFlippedImageView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setClipsToBounds_];
  v1 = [v0 layer];
  [v1 setCornerCurve_];

  v2 = [v0 layer];
  [v2 setMasksToBounds_];

  [v0 setContentMode_];
  return v0;
}

uint64_t sub_21DAA1E60()
{
  v1 = v0;
  v2 = swift_allocObject();
  v3 = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 256;
  if (v0[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden] == 1)
  {
    [v0 bounds];
    v7 = CGRectGetWidth(v25) + 100.0;
  }

  else
  {
    v8 = COERCE_DOUBLE(sub_21DAA2730(v2, v0));
    if (v9)
    {
      v7 = 1.79769313e308;
    }

    else
    {
      v7 = v8;
    }
  }

  v10 = OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingSeparatorInset;
  v4.i64[0] = *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingSeparatorInset];
  v5.n128_u64[0] = 0x3E50000000000000;
  if ((sub_21D110D14(v4, v5, v7, v6) & 1) == 0)
  {
    *&v1[v10] = v7;
    v11 = *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler];
    if (v11)
    {

      v11(v12);
      sub_21D0D0E88(v11);
    }
  }

  v13 = sub_21DAA2730(v3, v1);
  v17 = 0.0;
  if ((v18 & 1) == 0)
  {
    v19 = *&v13;
    [v1 directionalLayoutMargins];
    v17 = v19 - v15.n128_f64[0];
  }

  v20 = OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignment;
  v14.i64[0] = *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignment];
  v15.n128_u64[0] = 0x3E50000000000000;
  if ((sub_21D110D14(v14, v15, v17, v16) & 1) == 0)
  {
    *&v1[v20] = v17;
    v21 = *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
    if (v21)
    {

      v21(v22, v17);
      sub_21D0D0E88(v21);
    }
  }
}

uint64_t sub_21DAA2000()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65C60);
  v1 = __swift_project_value_buffer(v0, qword_27CE65C60);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21DAA20C8()
{
  if ([v0 delegate])
  {
    swift_unknownObjectRelease();
    v1 = [v0 delegate];
    if (!v1 || (v2 = v1, swift_unknownObjectRelease(), v2 != v0))
    {
      if (qword_27CE570A0 != -1)
      {
        swift_once();
      }

      v3 = sub_21DBF84BC();
      __swift_project_value_buffer(v3, qword_27CE65C60);
      oslog = sub_21DBF84AC();
      v4 = sub_21DBFAECC();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRIRemindersListReminderCellContentView: delegate is not set to self, this will cause problems", v5, 2u);
        MEMORY[0x223D46520](v5, -1, -1);
      }
    }
  }

  else
  {

    [v0 setDelegate_];
  }
}

void sub_21DAA2464(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for TTRIRemindersListReminderCellContentView();
  v25.receiver = v4;
  v25.super_class = v9;
  objc_msgSendSuper2(&v25, sel_frame);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v24.receiver = v4;
  v24.super_class = v9;
  objc_msgSendSuper2(&v24, sel_setFrame_, a1, a2, a3, a4);
  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  Width = CGRectGetWidth(v26);
  [v4 frame];
  *v19.i64 = CGRectGetWidth(v27);
  *v21.i64 = fabs(*v19.i64);
  if (fabs(Width) >= 0.0000000149011612 && *v21.i64 >= 0.0000000149011612)
  {
    v23 = *v19.i64;
    v20.n128_u64[0] = 0x3E50000000000000;
    *v19.i64 = Width;
    if ((sub_21D110D14(v19, v20, v23, v21) & 1) == 0)
    {
      if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
      {
        *(v4 + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_allowsAnimationsForNextLayout) = 1;
      }
    }
  }
}

uint64_t sub_21DAA262C()
{
  if (v0[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_allowsAnimationsForNextLayout] == 1)
  {
    v0[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_allowsAnimationsForNextLayout] = 0;
    v1 = OBJC_IVAR____TtC15RemindersUICore31TTRNoAnimationContainerGridView_areImplicitAnimationsEnabled;
    swift_beginAccess();
    v2 = v0[v1];
    v0[v1] = 1;
  }

  else
  {
    v2 = 2;
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for TTRIRemindersListReminderCellContentView();
  result = objc_msgSendSuper2(&v5, sel_layoutSubviews);
  if (v2 != 2)
  {
    v4 = OBJC_IVAR____TtC15RemindersUICore31TTRNoAnimationContainerGridView_areImplicitAnimationsEnabled;
    result = swift_beginAccess();
    v0[v4] = v2;
  }

  return result;
}

uint64_t sub_21DAA2730(uint64_t a1, char *a2)
{
  if ((*(a1 + 25) & 1) == 0)
  {
    return *(a1 + 16);
  }

  sub_21DAA27B0(a2);
  v4 = v3;
  v6 = v5 & 1;
  swift_beginAccess();
  result = v4;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = 0;
  return result;
}

void sub_21DAA27B0(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_referenceViewsForLeadingSeparatorInset];
  if (v2 >> 62)
  {
LABEL_18:
    v3 = sub_21DBFBD7C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_21DBF8E0C();
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223D44740](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (([v5 isHidden] & 1) == 0)
      {
        break;
      }

      ++v4;
      if (v7 == v3)
      {
        goto LABEL_13;
      }
    }

    [v6 bounds];
    [a1 convertRect:v6 fromCoordinateSpace:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v6 effectiveAlignmentRectInsets];
    v18 = UIEdgeInsetsInsetRect(v9, v11, v13, v15, v16, v17);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [a1 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [a1 effectiveUserInterfaceLayoutDirection];
    v36.origin.x = v18;
    v36.origin.y = v20;
    v36.size.width = v22;
    v36.size.height = v24;
    CGRectGetMinY(v36);
    v37.origin.x = v26;
    v37.origin.y = v28;
    v37.size.width = v30;
    v37.size.height = v32;
    CGRectGetMinY(v37);
    v38.origin.x = v26;
    v38.origin.y = v28;
    v38.size.width = v30;
    v38.size.height = v32;
    CGRectGetMaxY(v38);
    v39.origin.x = v18;
    v39.origin.y = v20;
    v39.size.width = v22;
    v39.size.height = v24;
    CGRectGetMaxY(v39);
    v40.origin.x = v18;
    v40.origin.y = v20;
    v40.size.width = v22;
    v40.size.height = v24;
    CGRectGetMinX(v40);
    v41.origin.x = v26;
    v41.origin.y = v28;
    v41.size.width = v30;
    v41.size.height = v32;
    CGRectGetMinX(v41);
    v42.origin.x = v26;
    v42.origin.y = v28;
    v42.size.width = v30;
    v42.size.height = v32;
    CGRectGetMaxX(v42);
    v43.origin.x = v18;
    v43.origin.y = v20;
    v43.size.width = v22;
    v43.size.height = v24;
    CGRectGetMaxX(v43);
    if (v33 > 1)
    {
      if (qword_27CE56650 != -1)
      {
        swift_once();
      }

      v34 = sub_21DBF84BC();
      __swift_project_value_buffer(v34, qword_27CE5B1E8);
      v35 = MEMORY[0x277D84F90];
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21D17716C(v35);
      sub_21DAEAB00("unknown layout direction", 24, 2);
      __break(1u);
    }

    else
    {
    }
  }

  else
  {
LABEL_13:
  }
}

id sub_21DAA2AEC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_referenceViewsForLeadingSeparatorInset] = MEMORY[0x277D84F90];
  v4[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_allowsAnimationsForNextLayout] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignment] = 0;
  v10 = &v4[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
  *v11 = 0;
  v11[1] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingSeparatorInset] = 0x7FEFFFFFFFFFFFFFLL;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for TTRIRemindersListReminderCellContentView();
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_21DAA2BEC(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate];
  *v2 = 0;
  v2[1] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_referenceViewsForLeadingSeparatorInset] = MEMORY[0x277D84F90];
  v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_allowsAnimationsForNextLayout] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignment] = 0;
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingSeparatorInset] = 0x7FEFFFFFFFFFFFFFLL;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    v5 = sub_21DBFA5DC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for TTRIRemindersListReminderCellContentView();
  v6 = objc_msgSendSuper2(&v8, sel_initWithArrangedSubviewRows_, v5);

  return v6;
}

id sub_21DAA2D48(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_referenceViewsForLeadingSeparatorInset] = MEMORY[0x277D84F90];
  v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_allowsAnimationsForNextLayout] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignment] = 0;
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingSeparatorInset] = 0x7FEFFFFFFFFFFFFFLL;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TTRIRemindersListReminderCellContentView();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_21DAA2E48()
{
  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate));

  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler));
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange);

  return sub_21D0D0E88(v1);
}

id sub_21DAA2EB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRemindersListReminderCellContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id UIView.applyLayoutMargins(from:)()
{
  v1 = sub_21DBF89AC();
  sub_21DBF897C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = 15;
  if ((v1 & 1) == 0)
  {
    v10 = 5;
  }

  if ((v1 & 2) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = (v1 << 63 >> 63) & 0xA;
  }

  [v0 setEdgesPreservingSuperviewLayoutMargins_];

  return [v0 setDirectionalLayoutMargins_];
}

uint64_t UIListContentConfiguration.usingRoundedSystemFont()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF893C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21DBF8A0C();
  (*(*(v7 - 8) + 16))(a1, v1, v7);
  sub_21DBF896C();
  v8 = sub_21DBF891C();
  (*(v4 + 8))(v6, v3);
  v9 = [v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithDesign_];

  if (v10)
  {
    [objc_opt_self() fontWithDescriptor:v10 size:0.0];
  }

  v11 = sub_21DBF895C();
  sub_21DBF892C();
  return v11(v13, 0);
}

uint64_t *sub_21DAA327C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
  v7 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v15 = sub_21DBF509C();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(v8 + 64));
    }

    else
    {
      v13 = sub_21DBF509C();
      (*(*(v13 - 8) + 16))(a1, a2, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
      *(a1 + *(v14 + 48)) = *(a2 + *(v14 + 48));
      swift_storeEnumTagMultiPayload();
    }

    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_21DAA34E0(uint64_t a1)
{
  v2 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    result = swift_getEnumCaseMultiPayload();
    if (result <= 1)
    {
      v4 = sub_21DBF509C();
      v5 = *(*(v4 - 8) + 8);

      return v5(a1, v4);
    }
  }

  return result;
}

void *sub_21DAA35A8(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v11 = sub_21DBF509C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(v5 + 64));
    }

    else
    {
      v9 = sub_21DBF509C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
      *(a1 + *(v10 + 48)) = *(a2 + *(v10 + 48));
      swift_storeEnumTagMultiPayload();
    }

    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *sub_21DAA37A0(void *a1, void *a2)
{
  v4 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v17 = sub_21DBF509C();
        (*(*(v17 - 8) + 16))(a1, a2, v17);
        swift_storeEnumTagMultiPayload();
      }

      else if (EnumCaseMultiPayload)
      {
        memcpy(a1, a2, *(v5 + 64));
      }

      else
      {
        v10 = sub_21DBF509C();
        (*(*(v10 - 8) + 16))(a1, a2, v10);
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
        *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
        swift_storeEnumTagMultiPayload();
      }

      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      if (a1 != a2)
      {
        sub_21DAA3AC8(a1);
        v14 = swift_getEnumCaseMultiPayload();
        if (v14 == 1)
        {
          v18 = sub_21DBF509C();
          (*(*(v18 - 8) + 16))(a1, a2, v18);
        }

        else
        {
          if (v14)
          {
            v12 = *(v5 + 64);
            goto LABEL_9;
          }

          v15 = sub_21DBF509C();
          (*(*(v15 - 8) + 16))(a1, a2, v15);
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
          *(a1 + *(v16 + 48)) = *(a2 + *(v16 + 48));
        }

        swift_storeEnumTagMultiPayload();
      }

      return a1;
    }

    sub_21DAA3AC8(a1);
  }

  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0) - 8) + 64);
LABEL_9:

  return memcpy(a1, a2, v12);
}

uint64_t sub_21DAA3AC8(uint64_t a1)
{
  v2 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_21DAA3B24(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v11 = sub_21DBF509C();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(v5 + 64));
    }

    else
    {
      v9 = sub_21DBF509C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
      *(a1 + *(v10 + 48)) = *(a2 + *(v10 + 48));
      swift_storeEnumTagMultiPayload();
    }

    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *sub_21DAA3D1C(void *a1, void *a2)
{
  v4 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v17 = sub_21DBF509C();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        swift_storeEnumTagMultiPayload();
      }

      else if (EnumCaseMultiPayload)
      {
        memcpy(a1, a2, *(v5 + 64));
      }

      else
      {
        v10 = sub_21DBF509C();
        (*(*(v10 - 8) + 32))(a1, a2, v10);
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
        *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
        swift_storeEnumTagMultiPayload();
      }

      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      if (a1 != a2)
      {
        sub_21DAA3AC8(a1);
        v14 = swift_getEnumCaseMultiPayload();
        if (v14 == 1)
        {
          v18 = sub_21DBF509C();
          (*(*(v18 - 8) + 32))(a1, a2, v18);
        }

        else
        {
          if (v14)
          {
            v12 = *(v5 + 64);
            goto LABEL_9;
          }

          v15 = sub_21DBF509C();
          (*(*(v15 - 8) + 32))(a1, a2, v15);
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
          *(a1 + *(v16 + 48)) = *(a2 + *(v16 + 48));
        }

        swift_storeEnumTagMultiPayload();
      }

      return a1;
    }

    sub_21DAA3AC8(a1);
  }

  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0) - 8) + 64);
LABEL_9:

  return memcpy(a1, a2, v12);
}

void sub_21DAA408C()
{
  sub_21DAA4118();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21DAA4118()
{
  if (!qword_27CE65D38)
  {
    type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(255);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE65D38);
    }
  }
}

void *sub_21DAA4170(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_21DBF509C();
    (*(*(v11 - 8) + 16))(a1, a2, v11);
    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = sub_21DBF509C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
    *(a1 + *(v9 + 48)) = *(a2 + *(v9 + 48));
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

_BYTE *sub_21DAA42F0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF509C();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *sub_21DAA4430(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21DAA3AC8(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF509C();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *sub_21DAA4580(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF509C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *sub_21DAA46C0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21DAA3AC8(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF509C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_21DAA4810()
{
  result = sub_21DBF509C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v3[4] = v3;
    v3[5] = v2;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21DAA48BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF563C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_21DBF509C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v29 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  v17 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a1, v9, &qword_27CE58D60);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(a1, &qword_27CE58D60);
    sub_21D0CF7E0(v9, &qword_27CE58D60);
    v20 = 1;
    v21 = v29;
  }

  else
  {
    v28 = a2;
    v22 = v9;
    v23 = *(v11 + 32);
    v23(v16, v22, v10);
    (*(v11 + 16))(v13, v16, v10);
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    TTRReminderEditor.AllDayColloquialDateType.init(dueDateComponents:now:)(v13, v6, &v30);
    sub_21D0CF7E0(a1, &qword_27CE58D60);
    v24 = v30;
    if (v30 == 2 || v30 == 3)
    {
      (*(v11 + 8))(v16, v10);
    }

    else if (v30 == 4)
    {
      v23(v19, v16, v10);
    }

    else
    {
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50) + 48);
      v23(v19, v16, v10);
      v19[v25] = v24 & 1;
    }

    v21 = v29;
    swift_storeEnumTagMultiPayload();
    a2 = v28;
    sub_21DAA57BC(v19, v28);
    v20 = 0;
  }

  return (*(v17 + 56))(a2, v20, 1, v21);
}

uint64_t sub_21DAA4C98()
{
  v1 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF509C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DAA5060(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = sub_21DAA50C4();
    (*(v5 + 8))(v7, v4);
    return v9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_8;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_8:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21DAA4F48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EBC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_21D0D3954(v1, &v8 - v3, &qword_27CE5EBC0);
  v5 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE5EBC0);
    return 0;
  }

  else
  {
    v7 = sub_21DAA4C98();
    sub_21DAA3AC8(v4);
    return v7;
  }
}

uint64_t sub_21DAA5060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAA50C4()
{
  v0 = sub_21DBF5A2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_21DBF563C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() currentCalendar];
  sub_21DBF596C();

  sub_21DBF597C();
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE58D68);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    if (qword_27CE570A8 != -1)
    {
      swift_once();
    }

    v13 = qword_27CE65D20;
    v14 = sub_21DBF55BC();
    v15 = [v13 stringFromDate_];

    v16 = sub_21DBFA16C();
    (*(v8 + 8))(v10, v7);
    return v16;
  }
}

id sub_21DAA53B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_27CE65D20 = v0;
  return result;
}

uint64_t sub_21DAA5414(uint64_t a1, uint64_t a2)
{
  v34 = sub_21DBF509C();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65D50);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v33 - v17;
  v20 = &v33 + *(v19 + 56) - v17;
  sub_21DAA5060(a1, &v33 - v17);
  sub_21DAA5060(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_13;
    }

    sub_21DAA3AC8(v18);
    v25 = 1;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_21DAA5060(v18, v15);
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50) + 48);
      v23 = v15[v22];
      if (!swift_getEnumCaseMultiPayload())
      {
        v28 = v20[v22];
        v29 = v20;
        v30 = v34;
        (*(v4 + 32))(v9, v29, v34);
        v31 = MEMORY[0x223D3D6A0](v15, v9);
        v32 = *(v4 + 8);
        v32(v9, v30);
        v32(v15, v30);
        if (v31)
        {
          sub_21DAA3AC8(v18);
          v25 = v23 ^ v28 ^ 1;
          return v25 & 1;
        }

        sub_21DAA3AC8(v18);
        goto LABEL_14;
      }

      v12 = v15;
      goto LABEL_10;
    }

    sub_21DAA5060(v18, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
LABEL_10:
      (*(v4 + 8))(v12, v34);
LABEL_13:
      sub_21D0CF7E0(v18, &qword_27CE65D50);
LABEL_14:
      v25 = 0;
      return v25 & 1;
    }

    v24 = v34;
    (*(v4 + 32))(v6, v20, v34);
    v25 = MEMORY[0x223D3D6A0](v12, v6);
    v26 = *(v4 + 8);
    v26(v6, v24);
    v26(v12, v24);
    sub_21DAA3AC8(v18);
  }

  return v25 & 1;
}

uint64_t sub_21DAA57BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIReminderCellQuickBarDateViewModel.SuggestedDay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void UITextDraggable<>.disableDragInteraction_rdar93793341()()
{
  v1 = [v0 textDragInteraction];
  if (v1)
  {
    v2 = v1;
    [v1 setEnabled_];
    [v0 removeInteraction_];
  }
}

uint64_t sub_21DAA58A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v33 = MEMORY[0x277D84F90];
  result = sub_21D18F81C(0, v6, 0);
  v29 = v5;
  v30 = v4;
  v27 = a1;
  v28 = v6;
  v26 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v10 = *v9;
      v11 = *v8;
      v13 = *(v33 + 16);
      v12 = *(v33 + 24);
      v31 = *(v9 - 1);
      v32 = v13 + 1;
      sub_21DBF8E0C();
      result = sub_21DBF8E0C();
      if (v13 >= v12 >> 1)
      {
        result = sub_21D18F81C((v12 > 1), v32, 1);
      }

      *(v33 + 16) = v32;
      v14 = (v33 + 24 * v13);
      --v5;
      v14[4] = v11;
      v14[5] = v31;
      v14[6] = v10;
      --v4;
      ++v8;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v29;
    v15 = v30;
    if (v30 <= v29)
    {
      return v33;
    }

    v17 = v28;
    v18 = (v27 + 16 * v28 + 40);
    while (v17 < v15)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_24;
      }

      if (v16 != v17)
      {
        if (v17 >= v16)
        {
          goto LABEL_25;
        }

        v21 = *(v18 - 1);
        v20 = *v18;
        v22 = *(v26 + 32 + 8 * v17);
        v23 = *(v33 + 16);
        v24 = *(v33 + 24);
        sub_21DBF8E0C();
        result = sub_21DBF8E0C();
        if (v23 >= v24 >> 1)
        {
          result = sub_21D18F81C((v24 > 1), v23 + 1, 1);
        }

        *(v33 + 16) = v23 + 1;
        v25 = (v33 + 24 * v23);
        v25[4] = v22;
        v25[5] = v21;
        v25[6] = v20;
        ++v17;
        v18 += 2;
        v16 = v29;
        v15 = v30;
        if (v19 != v30)
        {
          continue;
        }
      }

      return v33;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t TTRParticipantAvatarRenderConfiguration.init(width:height:scales:rightToLeft:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  return result;
}

uint64_t TTRParticipantAvatarProvider.__allocating_init(contactsProvider:contactStoreCreator:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = sub_21DAA9024(v11, a2, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

void TTRParticipantAvatarProvider.fillInAvatarImages(for:configuration:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD50);
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v41 - v8;
  v10 = *a2;
  v11 = a2[1];
  v44 = a2[2];
  v43 = *(a2 + 24);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  v46 = a1;
  if (v12)
  {
    v42 = a4;
    v57 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v14 = (a1 + 32);
    v48 = (v7 + 8);
    v15 = v12 - 1;
    v16 = &qword_27CE60910;
    v47 = xmmword_21DC09CF0;
    v51 = xmmword_21DC08D00;
    while (1)
    {
      v17 = v14[5];
      v54 = v14[4];
      v55 = v17;
      v56 = v14[6];
      v18 = v14[1];
      v53[0] = *v14;
      v53[1] = v18;
      v19 = v14[3];
      v53[2] = v14[2];
      v53[3] = v19;
      v20 = *(&v53[0] + 1);
      if (*(&v53[0] + 1))
      {
        v52[0] = *(&v53[0] + 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(v16);
        swift_allocObject();
        v21 = v20;
        sub_21DBF824C();
        goto LABEL_16;
      }

      v22 = v16;
      v23 = v54;
      v24 = *(&v55 + 1);
      if (*(&v55 + 1))
      {
        v25 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
        v26 = swift_allocObject();
        *(v26 + 16) = v51;
        *(v26 + 32) = v25;
        *(v26 + 40) = v24;
        if (!*(&v23 + 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v26 = MEMORY[0x277D84F90];
        if (!*(&v54 + 1))
        {
LABEL_10:
          v27 = MEMORY[0x277D84F90];
          if (*(v26 + 16))
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
      v27 = swift_allocObject();
      *(v27 + 16) = v51;
      *(v27 + 32) = v23;
      if (*(v26 + 16))
      {
        goto LABEL_12;
      }

LABEL_11:
      if (!*(v27 + 16))
      {
        sub_21D1D9C94(v53, v52);
        sub_21DBF8E0C();
        sub_21DBF8E0C();

        goto LABEL_15;
      }

LABEL_12:
      v28 = objc_allocWithZone(MEMORY[0x277D445D8]);
      sub_21D1D9C94(v53, v52);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v29 = sub_21DBFA5DC();

      v30 = sub_21DBFA5DC();

      v31 = [v28 initWithPhones:v29 emails:v30];

      if (v31)
      {
        __swift_project_boxed_opaque_existential_1((v50 + 16), *(v50 + 40));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
        v32 = swift_allocObject();
        *(v32 + 16) = v47;
        *(v32 + 32) = [objc_opt_self() descriptorForRequiredKeys];
        sub_21DBF6A7C();

        v33 = v49;
        sub_21DBF662C();
        (*v48)(v9, v33);
        sub_21DBF817C();

        sub_21D30DA04(v53);
        v16 = v22;
        goto LABEL_16;
      }

LABEL_15:
      v52[0] = 0;
      v16 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(v22);
      swift_allocObject();
      sub_21DBF824C();
      sub_21D30DA04(v53);
LABEL_16:
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      if (!v15)
      {
        v13 = v57;
        a4 = v42;
        break;
      }

      --v15;
      v14 += 7;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60910);
  *&v53[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65D70);
  sub_21D0D0F1C(&qword_27CE65D78, &qword_27CE65D70);
  sub_21DBF819C();

  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v36 = v46;
  *(v35 + 16) = v34;
  *(v35 + 24) = v36;
  *(v35 + 32) = v10;
  *(v35 + 40) = v11;
  *(v35 + 48) = v44;
  *(v35 + 56) = v43;
  v37 = v45;
  *(v35 + 64) = v45;
  *(v35 + 72) = a4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  v38 = sub_21DBF816C();
  sub_21DBF820C();

  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = a4;
  v39[4] = v36;
  sub_21DBF8E0C();

  v40 = sub_21DBF816C();
  sub_21DBF822C();
}

uint64_t sub_21DAA61A4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65D58);
  v1 = __swift_project_value_buffer(v0, qword_27CE65D58);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRParticipantAvatarResult.Image.image.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRParticipantAvatarResult.name.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRParticipantAvatarRenderConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (*v1 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x223D44FD0](*&v3);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x223D44FD0](*&v6);
  sub_21DAA8700(a1, v5);
  return sub_21DBFC7FC();
}

uint64_t TTRParticipantAvatarRenderConfiguration.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_21DBFC7DC();
  TTRParticipantAvatarRenderConfiguration.hash(into:)(v4);
  return sub_21DBFC82C();
}

uint64_t sub_21DAA63CC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_21DBFC7DC();
  TTRParticipantAvatarRenderConfiguration.hash(into:)(v4);
  return sub_21DBFC82C();
}

uint64_t sub_21DAA642C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_21DBFC7DC();
  TTRParticipantAvatarRenderConfiguration.hash(into:)(v4);
  return sub_21DBFC82C();
}

uint64_t TTRParticipantAvatarNameStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRParticipantAvatarProvider.init(contactsProvider:contactStoreCreator:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_21DAA8768(v14, a2, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v16;
}

void TTRParticipantAvatarProvider.avatars(for:configuration:nameStyle:completion:)(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v55 = v6;
  v49 = *v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD50);
  v12 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v44 - v13;
  v14 = *a2;
  v15 = a2[1];
  v48 = a2[2];
  LODWORD(v13) = *a3;
  v46 = *(a2 + 24);
  v47 = v13;
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  v50 = a4;
  if (v16)
  {
    v45 = a5;
    v61 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v52 = (v12 + 8);
    v44 = a1;
    v18 = (a1 + 104);
    v51 = xmmword_21DC09CF0;
    v57 = xmmword_21DC08D00;
    while (1)
    {
      v59 = v16;
      v19 = *(v18 - 6);
      v21 = *(v18 - 4);
      v20 = *(v18 - 3);
      v22 = *(v18 - 2);
      v23 = *v18;
      if (*v18)
      {
        v24 = *(v18 - 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
        v25 = swift_allocObject();
        *(v25 + 16) = v57;
        *(v25 + 32) = v24;
        *(v25 + 40) = v23;
        if (!v22)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
        if (!v22)
        {
LABEL_10:
          v26 = MEMORY[0x277D84F90];
          goto LABEL_11;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
      v26 = swift_allocObject();
      *(v26 + 16) = v57;
      *(v26 + 32) = v20;
      *(v26 + 40) = v22;
LABEL_11:
      v27 = *(v25 + 16);
      v58 = v19;
      if (v27 || *(v26 + 16))
      {
        v28 = objc_allocWithZone(MEMORY[0x277D445D8]);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v29 = sub_21DBFA5DC();

        v30 = sub_21DBFA5DC();

        v31 = [v28 initWithPhones:v29 emails:v30];

        if (v31)
        {
          __swift_project_boxed_opaque_existential_1(v55 + 2, v55[5]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
          v32 = swift_allocObject();
          v56 = v21;
          *(v32 + 16) = v51;
          *(v32 + 32) = [objc_opt_self() descriptorForRequiredKeys];
          v33 = v53;
          sub_21DBF6A7C();

          v34 = v54;
          sub_21DBF662C();
          (*v52)(v33, v34);
          sub_21DBF817C();

          goto LABEL_5;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
      }

      v60 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60910);
      swift_allocObject();
      sub_21DBF824C();

LABEL_5:

      v18 += 10;
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v16 = v59 - 1;
      if (v59 == 1)
      {
        v17 = v61;
        a5 = v45;
        a1 = v44;
        a4 = v50;
        break;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60910);
  v61 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65D70);
  sub_21D0D0F1C(&qword_27CE65D78, &qword_27CE65D70);
  sub_21DBF819C();

  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = a1;
  v37 = v46;
  v38 = v47;
  *(v36 + 32) = v47;
  *(v36 + 40) = v14;
  *(v36 + 48) = v15;
  v39 = v48;
  *(v36 + 56) = v48;
  *(v36 + 64) = v37;
  *(v36 + 72) = a4;
  *(v36 + 80) = a5;
  v40 = v49;
  *(v36 + 88) = v49;
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  v41 = sub_21DBF816C();
  sub_21DBF820C();

  v42 = swift_allocObject();
  *(v42 + 16) = v55;
  *(v42 + 24) = v14;
  *(v42 + 32) = v15;
  *(v42 + 40) = v39;
  *(v42 + 48) = v37;
  *(v42 + 56) = a1;
  *(v42 + 64) = v38;
  *(v42 + 72) = v50;
  *(v42 + 80) = a5;
  *(v42 + 88) = v40;
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  v43 = sub_21DBF816C();
  sub_21DBF822C();
}