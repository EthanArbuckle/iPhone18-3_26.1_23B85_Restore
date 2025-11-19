id sub_21D4AFD98()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTextAlignment_];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  v2 = objc_opt_self();
  v3 = [v2 _preferredFontForTextStyle_variant_maximumContentSizeCategory_];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 fontDescriptor];
    v6 = [v5 fontDescriptorWithDesign_];

    if (v6)
    {
      v7 = [v2 fontWithDescriptor:v6 size:0.0];

      v4 = v7;
    }
  }

  [v0 setFont_];

  [v0 setShowsLargeContentViewer_];
  return v0;
}

id sub_21D4AFF30()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___titleLabelTopToViewTopConstraint;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___titleLabelTopToViewTopConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___titleLabelTopToViewTopConstraint];
  }

  else
  {
    v4 = sub_21D4AFC60();
    v5 = [v4 topAnchor];

    v6 = [v0 topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6 constant:9.0];

    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_21D4AFFFC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___viewTopToQuickPickStackViewTopConstraint;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___viewTopToQuickPickStackViewTopConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___viewTopToQuickPickStackViewTopConstraint];
LABEL_5:
    v9 = v2;
    return v3;
  }

  v4 = [v0 topAnchor];
  result = *&v0[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_stackView];
  if (result)
  {
    v6 = [result topAnchor];
    v7 = [v4 constraintEqualToAnchor:v6 constant:-16.0];

    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_21D4B00D0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___quickPickStackViewTopToTitleLabelLastBaselineConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___quickPickStackViewTopToTitleLabelLastBaselineConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___quickPickStackViewTopToTitleLabelLastBaselineConstraint);
LABEL_5:
    v10 = v2;
    return v3;
  }

  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_stackView);
  if (result)
  {
    v5 = [result topAnchor];
    v6 = sub_21D4AFC60();
    v7 = [v6 bottomAnchor];

    v8 = [v5 constraintEqualToAnchor:v7 constant:12.0];
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_21D4B01B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8E0);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21D4B0CD8;
  *(v5 + 24) = v4;
  *a2 = v5;

  return a1;
}

void sub_21D4B026C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_stackView);
  if (!v4)
  {
    goto LABEL_19;
  }

  v6 = [v4 arrangedSubviews];
  sub_21D0D8CF0(0, &qword_280D176A0);
  v7 = sub_21DBFA5EC();

  swift_beginAccess();
  v8 = *(a2 + 16);
  if (!(v7 >> 62))
  {
    if (v8 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  if (v8 >= sub_21DBFBD7C())
  {
    goto LABEL_13;
  }

LABEL_4:
  swift_beginAccess();
  v9 = *(a2 + 16);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x223D44740](v9, v7);
    goto LABEL_8;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 8 * v9 + 32);
LABEL_8:
    v11 = v10;

    type metadata accessor for TTRIQuickBarQuickPickItemView();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {

      goto LABEL_14;
    }

    swift_beginAccess();
    v13 = *(a2 + 16);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v14)
    {
      *(a2 + 16) = v15;
LABEL_14:
      *a3 = v12;
      return;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_21D4B0400(uint64_t a1)
{
  sub_21D0CEB98(a1, v14);
  sub_21D0D8CF0(0, &qword_280D176A0);
  if (swift_dynamicCast())
  {
    v2 = v11;
    v3 = [v2 superview];

    if (v3)
    {
      type metadata accessor for TTRIQuickBarQuickPickItemView();
      while (1)
      {
        v4 = swift_dynamicCastClass();
        if (v4)
        {
          break;
        }

        v5 = v3;
        v3 = [v5 superview];

        if (!v3)
        {
          goto LABEL_6;
        }
      }

      v6 = v4;

      v7 = OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_itemID;
      swift_beginAccess();
      sub_21D4B0C54(v6 + v7, &v11);
      if (*(&v12 + 1))
      {
        v14[0] = v11;
        v14[1] = v12;
        v15 = v13;
        v8 = v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v8 + 8);
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(v1, v14, ObjectType, v9);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        sub_21D181D3C(v14);
      }

      else
      {

        sub_21D0CF7E0(&v11, &qword_27CE5BE60);
      }
    }

    else
    {
LABEL_6:
    }
  }
}

void *sub_21D4B06AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58680);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21DC08D20;
  v2 = sub_21D4AFC60();
  *(v1 + 56) = sub_21D0D8CF0(0, &qword_27CE5CD30);
  *(v1 + 32) = v2;
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_stackView);
  if (result)
  {
    v4 = [result arrangedSubviews];
    sub_21D0D8CF0(0, &qword_280D176A0);
    v5 = sub_21DBFA5EC();

    *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    *(v1 + 64) = v5;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t destroy for TTRIQuickBarQuickPickView.Item(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t initializeWithCopy for TTRIQuickBarQuickPickView.Item(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  v8 = *(a2 + 88);
  v9 = *(a2 + 96);
  *(a1 + 88) = v8;
  *(a1 + 96) = v9;

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t *assignWithCopy for TTRIQuickBarQuickPickView.Item(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;

  a1[7] = a2[7];
  a1[8] = a2[8];
  sub_21DBF8E0C();

  a1[9] = a2[9];
  a1[10] = a2[10];
  sub_21DBF8E0C();

  a1[11] = a2[11];
  a1[12] = a2[12];
  sub_21DBF8E0C();

  return a1;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for TTRIQuickBarQuickPickView.Item(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;

  v6 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v6;

  v7 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v7;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIQuickBarQuickPickView.Item(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIQuickBarQuickPickView.Item(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_21D4B0B6C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CD28);
  inited = swift_initStackObject();
  *(inited + 16) = sub_21D4B0CD0;
  *(inited + 24) = v1;
  v3 = v0;
  v4 = sub_21D47F99C(inited);

  return v4;
}

uint64_t sub_21D4B0C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_21D4B0CDC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC15RemindersUICore27TTRIQuickBarQuickPickButton_colorsAreDirty] = 1;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 layer];
  [v11 setCornerCurve_];

  v12 = [v10 layer];
  [v12 setShadowRadius_];

  v13 = [v10 layer];
  [v13 setShadowOffset_];

  [v10 setAccessibilityIgnoresInvertColors_];
  *(v10 + OBJC_IVAR____TtC15RemindersUICore27TTRIQuickBarQuickPickButton_colorsAreDirty) = 1;
  [v10 setNeedsLayout];

  return v10;
}

id sub_21D4B0E60(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC15RemindersUICore27TTRIQuickBarQuickPickButton_colorsAreDirty] = 1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = [v6 layer];
    [v7 setCornerCurve_];

    v8 = [v6 layer];
    [v8 setShadowRadius_];

    v9 = [v6 layer];
    [v9 setShadowOffset_];

    [v6 setAccessibilityIgnoresInvertColors_];
    *(v6 + OBJC_IVAR____TtC15RemindersUICore27TTRIQuickBarQuickPickButton_colorsAreDirty) = 1;
    [v6 setNeedsLayout];
  }

  return v5;
}

void sub_21D4B1030(char a1)
{
  ObjectType = swift_getObjectType();
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v20, sel_isHighlighted);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_setHighlighted_, a1 & 1);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  if (v4 != objc_msgSendSuper2(&v18, sel_isHighlighted))
  {
    *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIQuickBarQuickPickButton_colorsAreDirty) = 1;
    [v1 setNeedsLayout];
    v17.receiver = v1;
    v17.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v17, sel_isHighlighted);
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    if (v5)
    {
      v15 = sub_21D4B18CC;
      v16 = v7;
      v11 = MEMORY[0x277D85DD0];
      v12 = 1107296256;
      v13 = sub_21D0D74FC;
      v14 = &block_descriptor_12_0;
      v8 = _Block_copy(&v11);
      v9 = v1;

      [v6 animateWithDuration:v8 animations:0.1];
    }

    else
    {
      v15 = sub_21D4B188C;
      v16 = v7;
      v11 = MEMORY[0x277D85DD0];
      v12 = 1107296256;
      v13 = sub_21D0D74FC;
      v14 = &block_descriptor_37;
      v8 = _Block_copy(&v11);
      v10 = v1;

      [v6 animateWithDuration:0 delay:v8 usingSpringWithDamping:0 initialSpringVelocity:0.52 options:0.0 animations:0.75 completion:2.0];
    }

    _Block_release(v8);
  }
}

id sub_21D4B1280(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_21D4B1340()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  [v0 bounds];
  v1 = CGRectGetHeight(v14) * 0.5;
  v2 = [v0 layer];
  [v2 cornerRadius];
  v4 = v3;

  if (v4 != v1)
  {
    v5 = [v0 layer];
    [v5 setCornerRadius_];

    v6 = [v0 layer];
    [v0 bounds];
    v11 = [objc_opt_self() bezierPathWithRoundedRect:v7 cornerRadius:{v8, v9, v10, v1}];
    v12 = [v11 CGPath];

    [v6 setShadowPath_];
  }

  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIQuickBarQuickPickButton_colorsAreDirty) == 1)
  {
    *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIQuickBarQuickPickButton_colorsAreDirty) = 0;
    sub_21D4B14E0();
  }
}

void sub_21D4B14E0()
{
  ObjectType = swift_getObjectType();
  v21.receiver = v0;
  v21.super_class = ObjectType;
  if ((objc_msgSendSuper2(&v21, sel_isSelected) & 1) != 0 || (v20.receiver = v0, v20.super_class = ObjectType, objc_msgSendSuper2(&v20, sel_isHighlighted)))
  {
    v2 = [v0 tintColor];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 CGColor];

      v5 = [v0 layer];
      v6 = v4;
      [v5 setBackgroundColor_];

      v7 = [v0 layer];
      [v7 setBorderWidth_];

      v8 = [v0 layer];
      [v8 setShadowColor_];

      v9 = [v0 layer];
      LODWORD(v10) = 1045220557;
      [v9 setShadowOpacity_];

LABEL_7:
      return;
    }

    __break(1u);
  }

  else
  {
    v11 = [v0 layer];
    v12 = objc_opt_self();
    v13 = [v12 tableCellGroupedBackgroundColor];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 CGColor];

      [v11 setBackgroundColor_];
      v16 = [v0 layer];
      [v16 setBorderWidth_];

      v17 = [v0 layer];
      v18 = [v12 quaternaryLabelColor];
      v19 = [v18 CGColor];

      [v17 setBorderColor_];
      v9 = [v0 layer];
      [v9 setShadowOpacity_];
      goto LABEL_7;
    }
  }

  __break(1u);
}

id sub_21D4B188C()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

uint64_t sub_21D4B18DC(double a1, double a2, double a3)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x223D44FD0](*&a1);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x223D44FD0](*&v5);
  if (a3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a3;
  }

  MEMORY[0x223D44FD0](*&v6);
  return sub_21DBFC7FC();
}

uint64_t sub_21D4B1954()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_21DBFC7DC();
  sub_21D4B18DC(v1, v2, v3);
  return sub_21DBFC82C();
}

uint64_t sub_21D4B19D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_21DBFC7DC();
  sub_21D4B18DC(v1, v2, v3);
  return sub_21DBFC82C();
}

uint64_t sub_21D4B1A38(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return (*(a2 + 24) ^ *(a1 + 24) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

id sub_21D4B1A78()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = sub_21DBF8E0C();
  v7 = 0;
  while (v4)
  {
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    result = *(*(v1 + 56) + ((v7 << 11) | (32 * v9)) + 24);
    if (result)
    {
      result = [result cancel];
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      sub_21D157444(v0 + 16);
      __swift_destroy_boxed_opaque_existential_0(v0 + 32);

      return v0;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D4B1BB4()
{
  sub_21D4B1A78();

  return swift_deallocClassInstance();
}

uint64_t destroy for TTRIQuickBarParticipantAvatarProvider.RenderState(id *a1)
{

  return swift_unknownObjectRelease();
}

void *initializeWithCopy for TTRIQuickBarParticipantAvatarProvider.RenderState(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = v3;
  sub_21DBF8E0C();
  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for TTRIQuickBarParticipantAvatarProvider.RenderState(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t assignWithTake for TTRIQuickBarParticipantAvatarProvider.RenderState(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectRelease();
  return a1;
}

uint64_t initializeWithCopy for TTRIQuickBarParticipantAvatarProvider.RenderParams(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 80) = *(a2 + 80);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIQuickBarParticipantAvatarProvider.RenderParams(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  sub_21DBF8E0C();

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  sub_21DBF8E0C();

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for TTRIQuickBarParticipantAvatarProvider.RenderParams(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;

  v8 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v8;

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIQuickBarParticipantAvatarProvider.RenderParams(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TTRIQuickBarParticipantAvatarProvider.RenderParams(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21D4B209C(__int128 *a1, char a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD50);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (v33 - v14);
  v16 = a1[3];
  v48 = a1[2];
  v49 = v16;
  v50 = a1[4];
  v17 = a1[1];
  v46 = *a1;
  v47 = v17;
  v42 = v48;
  v43 = v16;
  v44 = v50;
  v40 = v46;
  v41 = v17;
  *v45 = a3;
  *(v45 + 1) = a4;
  *&v45[1] = a5;
  BYTE8(v45[1]) = a2;
  swift_beginAccess();
  v18 = v6[15];
  if (*(v18 + 16))
  {
    sub_21D1D9B34(&v46, &v34);
    v19 = sub_21D17EA50(&v40);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 32 * v19);
      swift_endAccess();
      v22 = v21;
      sub_21DBF8E0C();
LABEL_14:
      sub_21D4B6BA0(&v40);
      return v21;
    }
  }

  else
  {
    sub_21D1D9B34(&v46, &v34);
  }

  swift_endAccess();
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v34 = v46;
  v35 = v47;
  v23 = TTRParticipantModel.contactHandles.getter();
  if (!v23)
  {
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v34 = v46;
    v35 = v47;
    v29 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v34);
LABEL_13:
    v38 = v44;
    v39[0] = v45[0];
    *(v39 + 9) = *(v45 + 9);
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v31 = v29;
    v21 = sub_21D4B272C(v31, &v34);

    goto LABEL_14;
  }

  v24 = v23;
  __swift_project_boxed_opaque_existential_1(v6 + 4, v6[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_21DC09CF0;
  *(v25 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  sub_21DBF6A7C();

  v26 = (*(v13 + 88))(v15, v12);
  if (v26 == *MEMORY[0x277D450E0])
  {
    (*(v13 + 96))(v15, v12);
    v27 = *v15;
    v38 = v44;
    v39[0] = v45[0];
    *(v39 + 9) = *(v45 + 9);
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v33[2] = v48;
    v33[3] = v49;
    v33[4] = v50;
    v33[0] = v46;
    v33[1] = v47;
    v28 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(v33);
    v21 = sub_21D4B24D0(v27, &v34, v28);

    goto LABEL_14;
  }

  if (v26 == *MEMORY[0x277D450E8])
  {

    (*(v13 + 96))(v15, v12);
    v29 = *v15;
    goto LABEL_13;
  }

  if (v26 == *MEMORY[0x277D450D8])
  {
    (*(v13 + 8))(v15, v12);
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v34 = v46;
    v35 = v47;
    v30 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v34);

    v29 = v30;
    goto LABEL_13;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21D4B24D0(uint64_t a1, __int128 *a2, void *a3)
{
  v5 = a2[5];
  v26 = a2[4];
  v27[0] = v5;
  *(v27 + 9) = *(a2 + 89);
  v6 = a2[1];
  v22 = *a2;
  v23 = v6;
  v7 = a2[3];
  v24 = a2[2];
  v25 = v7;
  swift_beginAccess();
  sub_21D22BF24(&v22, v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = *(v3 + 120);
  *(v3 + 120) = 0x8000000000000000;
  sub_21D477EF0(0, 0, 0xE000000000000000, 0, &v22, isUniquelyReferenced_nonNull_native);
  sub_21D4B6BA0(&v22);
  *(v3 + 120) = v21[0];
  swift_endAccess();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v11 = v24;
  *(v10 + 72) = v25;
  v12 = v27[0];
  *(v10 + 88) = v26;
  *(v10 + 104) = v12;
  *(v10 + 113) = *(v27 + 9);
  v13 = v23;
  *(v10 + 24) = v22;
  *(v10 + 40) = v13;
  *(v10 + 16) = v9;
  *(v10 + 56) = v11;
  sub_21D22BF24(&v22, v21);
  sub_21DBF820C();

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a3;
  v16 = v27[0];
  *(v15 + 96) = v26;
  *(v15 + 112) = v16;
  *(v15 + 121) = *(v27 + 9);
  v17 = v23;
  *(v15 + 32) = v22;
  *(v15 + 48) = v17;
  v18 = v25;
  *(v15 + 64) = v24;
  *(v15 + 80) = v18;
  sub_21D22BF24(&v22, v21);

  v19 = a3;
  sub_21DBF822C();

  return 0;
}

uint64_t sub_21D4B272C(void *a1, __int128 *a2)
{
  v3 = v2;
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a2[5];
  v46 = a2[4];
  v47[0] = v10;
  *(v47 + 9) = *(a2 + 89);
  v11 = a2[1];
  v42 = *a2;
  v43 = v11;
  v12 = a2[3];
  v44 = a2[2];
  v45 = v12;
  v13 = *(v3 + 112);
  *v9 = v13;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  result = (*(v7 + 8))(v9, v6);
  if (v13)
  {
    v39 = v44;
    v40 = v45;
    v41 = v46;
    v37 = v42;
    v38 = v43;
    sub_21D22BF24(&v42, v36);
    v16 = sub_21D4B6BFC(a1, &v37);
    v18 = v17;
    v48[2] = v39;
    v48[3] = v40;
    v48[4] = v41;
    v48[0] = v37;
    v48[1] = v38;
    sub_21D1D9B90(v48);
    v19 = v47[0];
    v20 = *&v47[1];
    v21 = BYTE8(v47[1]);
    v22 = objc_opt_self();
    sub_21DBF8E0C();
    v23 = [v22 scopeWithPointSize:v21 & 1 scale:0 rightToLeft:v19 style:v20];
    v24 = sub_21D4B2BC8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_21DC09CF0;
    *(v25 + 32) = a1;
    sub_21D4B6DC0();
    v26 = a1;
    v27 = sub_21DBFA5DC();

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v30 = v44;
    *(v29 + 72) = v45;
    v31 = v47[0];
    *(v29 + 88) = v46;
    *(v29 + 104) = v31;
    *(v29 + 113) = *(v47 + 9);
    v32 = v43;
    *(v29 + 24) = v42;
    *(v29 + 40) = v32;
    *(v29 + 16) = v28;
    *(v29 + 56) = v30;
    *&v39 = sub_21D4B6E6C;
    *(&v39 + 1) = v29;
    *&v37 = MEMORY[0x277D85DD0];
    *(&v37 + 1) = 1107296256;
    *&v38 = sub_21D1B6000;
    *(&v38 + 1) = &block_descriptor_38;
    v33 = _Block_copy(&v37);
    sub_21D22BF24(&v42, v36);

    v34 = [v24 renderAvatarsForContacts:v27 scope:v23 imageHandler:v33];
    _Block_release(v33);

    swift_beginAccess();
    sub_21D22BF24(&v42, v36);
    sub_21DBF8E0C();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36[0] = *(v3 + 120);
    *(v3 + 120) = 0x8000000000000000;
    sub_21D477EF0(0, v16, v18, v34, &v42, isUniquelyReferenced_nonNull_native);
    sub_21D4B6BA0(&v42);
    *(v3 + 120) = v36[0];
    swift_endAccess();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21D4B2B68()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 88);
  }

  else
  {
    v3 = v0;
    v4 = (*(v0 + 72))();
    v5 = *(v0 + 88);
    *(v3 + 88) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_21D4B2BC8()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    v3 = sub_21D4B2B68();
    v4 = [objc_opt_self() settingsWithContactStore:v3 cacheSize:0];

    v5 = [objc_allocWithZone(MEMORY[0x277CBDBD0]) initWithSettings_];
    v6 = *(v0 + 96);
    *(v0 + 96) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_21D4B2C78()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  sub_21DBFC7DC();
  TTRParticipantModel.hash(into:)();
  sub_21D4B18DC(v1, v2, v3);
  return sub_21DBFC82C();
}

uint64_t sub_21D4B2D08()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  TTRParticipantModel.hash(into:)();

  return sub_21D4B18DC(v1, v2, v3);
}

uint64_t sub_21D4B2D98()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  sub_21DBFC7DC();
  TTRParticipantModel.hash(into:)();
  sub_21D4B18DC(v1, v2, v3);
  return sub_21DBFC82C();
}

unint64_t sub_21D4B2E2C()
{
  result = qword_27CE5CD48;
  if (!qword_27CE5CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5CD48);
  }

  return result;
}

void sub_21D4B2E80(void **a1, uint64_t a2, __int128 *a3)
{
  v4 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = a3[5];
    v9[4] = a3[4];
    v10[0] = v5;
    *(v10 + 9) = *(a3 + 89);
    v6 = a3[1];
    v9[0] = *a3;
    v9[1] = v6;
    v7 = a3[3];
    v9[2] = a3[2];
    v9[3] = v7;
    v8 = sub_21D4B272C(v4, v9);
  }
}

void sub_21D4B2F30(uint64_t a1, uint64_t a2, void *a3, __int128 *a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = a4[5];
    v10[4] = a4[4];
    v11[0] = v6;
    *(v11 + 9) = *(a4 + 89);
    v7 = a4[1];
    v10[0] = *a4;
    v10[1] = v7;
    v8 = a4[3];
    v10[2] = a4[2];
    v10[3] = v8;
    v9 = sub_21D4B272C(a3, v10);
  }
}

uint64_t sub_21D4B2FD8(void *a1, uint64_t a2, _OWORD *a3)
{
  v5 = sub_21DBF9D2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF9D5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(result + 112);
    v24 = v6;
    v25 = v9;
    v23 = v14;

    v15 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = a1;
    v17 = a3[5];
    *(v16 + 96) = a3[4];
    *(v16 + 112) = v17;
    *(v16 + 121) = *(a3 + 89);
    v18 = a3[1];
    *(v16 + 32) = *a3;
    *(v16 + 48) = v18;
    v19 = a3[3];
    *(v16 + 64) = a3[2];
    *(v16 + 80) = v19;
    aBlock[4] = sub_21D4B6EE0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_20_0;
    v20 = _Block_copy(aBlock);

    v21 = a1;
    sub_21D22BF24(a3, v26);
    sub_21DBF9D4C();
    v26[0] = MEMORY[0x277D84F90];
    sub_21D0F1C68(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    v22 = v23;
    MEMORY[0x223D438F0](0, v12, v8, v20);
    _Block_release(v20);

    (*(v24 + 8))(v8, v5);
    (*(v10 + 8))(v12, v25);
  }

  return result;
}

uint64_t sub_21D4B3384(uint64_t a1, void *a2, _OWORD *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = a3[5];
    v9[4] = a3[4];
    v10[0] = v6;
    *(v10 + 9) = *(a3 + 89);
    v7 = a3[1];
    v9[0] = *a3;
    v9[1] = v7;
    v8 = a3[3];
    v9[2] = a3[2];
    v9[3] = v8;
    sub_21D4B3418(a2, v9);
  }

  return result;
}

void sub_21D4B3418(void *a1, _OWORD *a2)
{
  v3 = v2;
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a2[4];
  v23[0] = a2[5];
  *(v23 + 9) = *(a2 + 89);
  v11 = a2[1];
  v22[0] = *a2;
  v22[1] = v11;
  v12 = a2[2];
  v22[3] = a2[3];
  v22[4] = v10;
  v22[2] = v12;
  v13 = *(v3 + 112);
  *v9 = v13;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if (v13)
  {
    swift_beginAccess();
    v16 = sub_21D4B35E0(v21, v22);
    if (*(v15 + 16))
    {
      v17 = *v15;
      *v15 = a1;
      v18 = a1;
    }

    (v16)(v21, 0);
    swift_endAccess();
    v19._object = 0x800000021DC5E400;
    v19._countAndFlagsBits = 0xD000000000000013;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v19);
  }

  else
  {
    __break(1u);
  }
}

void (*sub_21D4B35E0(uint64_t **a1, double *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_21D4B6464(v4, a2);
  return sub_21D4B3658;
}

void sub_21D4B3658(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_21D4B36A4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21D49BA08(result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D4B36F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DBFBCDC() + 1) & ~v5;
    do
    {
      sub_21DBFC7DC();
      sub_21DBF8E0C();
      sub_21DBFA27C();
      v9 = sub_21DBFC82C();

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

void sub_21D4B38A4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DBFBCDC() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = sub_21DBFB62C();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 48 * v3);
          v21 = (v19 + 48 * v6);
          if (v3 != v6 || v20 >= v21 + 3)
          {
            v9 = *v21;
            v10 = v21[2];
            v20[1] = v21[1];
            v20[2] = v10;
            *v20 = v9;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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
}

void sub_21D4B3A3C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DBFBCDC() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_21DBFA16C();
      sub_21DBFC7DC();
      v11 = v10;
      sub_21DBFA27C();
      v12 = sub_21DBFC82C();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_21D4B3C04(int64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v4 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v41 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v41 - v7;
  v43 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v43);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v41 - v13;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v49 = (sub_21DBFBCDC() + 1) & ~v15;
    v18 = *(v10 + 72);
    v42 = (v4 + 48);
    v46 = a2 + 64;
    v47 = v17;
    v51 = v18;
    do
    {
      v19 = v18 * v16;
      v20 = v9;
      v21 = v52;
      sub_21D107228(*(a2 + 48) + v18 * v16, v52, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
      sub_21DBFC7DC();
      v22 = v21;
      v9 = v20;
      sub_21D107228(v22, v50, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v26 = v48;
          sub_21D4B6F84(v50, v48, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          MEMORY[0x223D44FA0](2);
          sub_21DBFB64C();
          v27 = v44;
          sub_21D0D3954(v26 + *(v43 + 20), v44, &unk_27CE5CD70);
          if ((*v42)(v27, 1, v45) == 1)
          {
            sub_21DBFC7FC();
          }

          else
          {
            v28 = v41;
            sub_21D4B6F84(v27, v41, type metadata accessor for TTRRemindersListViewModel.SectionID);
            sub_21DBFC7FC();
            TTRRemindersListViewModel.SectionID.hash(into:)();
            sub_21D1072F0(v28, type metadata accessor for TTRRemindersListViewModel.SectionID);
          }

          sub_21D1072F0(v48, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          v9 = v20;
          v14 = v46;
          v17 = v47;
        }

        else
        {
          v25 = *v50;
          MEMORY[0x223D44FA0](1);
          MEMORY[0x223D44FA0](v25);
          v9 = v20;
          v14 = v46;
          v17 = v47;
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        MEMORY[0x223D44FA0](0);
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          v24 = 3;
        }

        else
        {
          v24 = 4;
        }

        MEMORY[0x223D44FA0](v24);
      }

      v29 = sub_21DBFC82C();
      sub_21D1072F0(v52, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
      v30 = v29 & v17;
      if (a1 >= v49)
      {
        v18 = v51;
        if (v30 < v49)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v18 = v51;
        if (v30 >= v49)
        {
          goto LABEL_23;
        }
      }

      if (a1 >= v30)
      {
LABEL_23:
        if (v18 * a1 < v19 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v19 + v18))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v18 * a1 != v19)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v31 = *(a2 + 56);
        v32 = *(*(type metadata accessor for TTRSECreateRemindersViewModel.Item(0) - 8) + 72);
        v33 = v32 * a1;
        v34 = v31 + v32 * a1;
        v35 = v32 * v16;
        v36 = v31 + v32 * v16 + v32;
        if (v33 < v35 || v34 >= v36)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v16;
          v18 = v51;
        }

        else
        {
          a1 = v16;
          v18 = v51;
          if (v33 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
            a1 = v16;
          }
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v17;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v38 = *(a2 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v40;
    ++*(a2 + 36);
  }
}

void sub_21D4B41E4(int64_t a1, uint64_t a2)
{
  v4 = sub_21DBFC1BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_21DBFBCDC();
    v13 = v11;
    v38 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = *(v14 + 56);
    v36 = (v14 - 8);
    v37 = v15;
    do
    {
      v16 = v8;
      v17 = v39 * v10;
      v18 = v13;
      v19 = v14;
      v37(v7, *(a2 + 48) + v39 * v10, v4);
      v20 = sub_21DBF9FFC();
      (*v36)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v38)
      {
        if (v21 >= v38 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v39 * a1;
          v26 = v24 + v17 + v39;
          v27 = v39 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v39 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v10);
          if (a1 != v10 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v38 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_21D4B4498(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DBFBCDC() + 1) & ~v5;
    do
    {
      sub_21DBFC7DC();
      sub_21DBF8E0C();
      sub_21DBFA27C();
      v10 = sub_21DBFC82C();

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

void sub_21D4B4648(int64_t a1, uint64_t a2)
{
  v22 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_21DBFBCDC() + 1) & ~v8;
    v12 = *(v4 + 72);
    do
    {
      v13 = v12 * v9;
      sub_21D107228(*(a2 + 48) + v12 * v9, v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.ItemID.hash(into:)();
      v14 = sub_21DBFC82C();
      sub_21D1072F0(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v15 = v14 & v10;
      if (a1 >= v11)
      {
        if (v15 < v11)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v11)
      {
        goto LABEL_10;
      }

      if (a1 >= v15)
      {
LABEL_10:
        if (v12 * a1 < v13 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v13 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v12 * a1 != v13)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * a1);
        v18 = (v16 + 8 * v9);
        if (a1 != v9 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          a1 = v9;
        }
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

unint64_t sub_21D4B48D4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DBFBCDC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_21DBFC7CC();
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
      v16 = *(*(sub_21DBF5D5C() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
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
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_21D4B4A94(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = (sub_21DBFBCDC() + 1) & ~v10;
    v14 = *(v6 + 72);
    while (1)
    {
      v15 = v14 * v11;
      sub_21D107228(*(a2 + 48) + v14 * v11, v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.ItemID.hash(into:)();
      v16 = sub_21DBFC82C();
      sub_21D1072F0(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v17 = v16 & v12;
      if (a1 >= v13)
      {
        break;
      }

      if (v17 < v13)
      {
        goto LABEL_10;
      }

LABEL_11:
      if (v14 * a1 < v15 || *(a2 + 48) + v14 * a1 >= (*(a2 + 48) + v15 + v14))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v14 * a1 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v29) - 8) + 72);
      v20 = v19 * a1;
      v21 = v18 + v19 * a1;
      v22 = v19 * v11;
      v23 = v18 + v19 * v11 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v11;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      a1 = v11;
LABEL_5:
      v11 = (v11 + 1) & v12;
      if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v17 < v13)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (a1 < v17)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_22:
  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

unint64_t sub_21D4B4D4C(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = a2 + 64;
  v4 = -1 << *(a2 + 32);
  v5 = (result + 1) & ~v4;
  if ((*(a2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v35 = result;
    v30 = (sub_21DBFBCDC() + 1) & ~v4;
    v31 = v6;
    v32 = v3;
    v33 = v2;
    while (1)
    {
      v34 = 112 * v5;
      v7 = (*(v2 + 48) + 112 * v5);
      v9 = v7[1];
      v8 = v7[2];
      v37 = *v7;
      v38 = v9;
      v39 = v8;
      v11 = v7[4];
      v10 = v7[5];
      v12 = v7[3];
      *&v42[9] = *(v7 + 89);
      v41 = v11;
      *v42 = v10;
      v40 = v12;
      sub_21DBFC7DC();
      v13 = *(&v38 + 1);
      v14 = *(&v39 + 1);
      v15 = *(&v40 + 1);
      v16 = *(&v41 + 1);
      if (*(&v37 + 1))
      {
        sub_21DBFC7FC();
        sub_21D22BF24(&v37, v36);
        sub_21DBFA27C();
      }

      else
      {
        sub_21DBFC7FC();
        sub_21D22BF24(&v37, v36);
      }

      v17 = v35;
      if (v13)
      {
        sub_21DBFC7FC();
        sub_21DBFA27C();
        if (v14)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_21DBFC7FC();
        if (v14)
        {
LABEL_8:
          sub_21DBFC7FC();
          sub_21DBFA27C();
          if (v15)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      sub_21DBFC7FC();
      if (v15)
      {
LABEL_9:
        sub_21DBFC7FC();
        sub_21DBFA27C();
        if (v16)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

LABEL_13:
      sub_21DBFC7FC();
      if (v16)
      {
LABEL_10:
        sub_21DBFC7FC();
        sub_21DBFA27C();
        goto LABEL_15;
      }

LABEL_14:
      sub_21DBFC7FC();
LABEL_15:
      sub_21D4B18DC(*v42, *&v42[8], *&v42[16]);
      v18 = sub_21DBFC82C();
      result = sub_21D4B6BA0(&v37);
      v19 = v18 & v31;
      if (v35 >= v30)
      {
        v20 = v32;
        v2 = v33;
        if (v19 < v30)
        {
          goto LABEL_27;
        }

LABEL_19:
        if (v35 < v19)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }

      v20 = v32;
      v2 = v33;
      if (v19 < v30)
      {
        goto LABEL_19;
      }

LABEL_20:
      v21 = *(v2 + 48);
      result = v21 + 112 * v35;
      v22 = (v21 + v34);
      if (112 * v35 < v34 || result >= v22 + 112 || v35 != v5)
      {
        result = memmove(result, v22, 0x70uLL);
      }

      v23 = *(v2 + 56);
      v24 = (v23 + 32 * v35);
      v25 = (v23 + 32 * v5);
      if (v35 != v5 || v24 >= v25 + 2)
      {
        v26 = v25[1];
        *v24 = *v25;
        v24[1] = v26;
        v17 = v5;
      }

LABEL_27:
      v5 = (v5 + 1) & v31;
      if (((*(v20 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v17) - 1;
        goto LABEL_31;
      }

      v35 = v17;
    }
  }

  *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_31:
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

void sub_21D4B5098(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DBFBCDC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_21DBFB62C();

      v11 = v10 & v7;
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

      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0) - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

unint64_t sub_21D4B5260(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DBFBCDC() + 1) & ~v5;
    while (1)
    {
      sub_21DBFC7DC();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBFA27C();
      sub_21DBFA27C();
      v9 = sub_21DBFC82C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 32 * v3);
      v13 = (v11 + 32 * v6);
      if (v3 != v6 || v12 >= v13 + 2)
      {
        v14 = v13[1];
        *v12 = *v13;
        v12[1] = v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_21D4B5480(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DBFBCDC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_21DBFB62C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_21D4B560C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DBFBCDC() + 1) & ~v5;
    do
    {
      sub_21D181CE0(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_21DBFBDFC();
      result = sub_21D181D3C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
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

uint64_t sub_21D4B57B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DBFBCDC() + 1) & ~v5;
    do
    {
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
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

uint64_t sub_21D4B5A2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DBFBCDC() + 1) & ~v5;
    do
    {
      sub_21DBFC7DC();
      sub_21DBF8E0C();
      sub_21DBFA27C();
      v9 = sub_21DBFC82C();

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

void sub_21D4B5BDC(int64_t a1, uint64_t a2)
{
  v22 = type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_21DBFBCDC() + 1) & ~v8;
    v12 = *(v4 + 72);
    do
    {
      v13 = v12 * v9;
      sub_21D107228(*(a2 + 48) + v12 * v9, v6, type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.ItemID.hash(into:)();
      MEMORY[0x223D44FA0](v6[*(v22 + 20)]);
      v14 = sub_21DBFC82C();
      sub_21D1072F0(v6, type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey);
      v15 = v14 & v10;
      if (a1 >= v11)
      {
        if (v15 < v11)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v11)
      {
        goto LABEL_10;
      }

      if (a1 >= v15)
      {
LABEL_10:
        if (v12 * a1 < v13 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v13 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v12 * a1 != v13)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * a1);
        v18 = (v16 + 8 * v9);
        if (a1 != v9 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          a1 = v9;
        }
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

void sub_21D4B5E64(int64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest();
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v46 = v4;
    v16 = ~v14;
    v17 = v11;
    v44 = (sub_21DBFBCDC() + 1) & ~v14;
    v45 = v16;
    v18 = *(v17 + 72);
    v42 = (v5 + 48);
    v43 = v18;
    v38 = (v5 + 8);
    v39 = (v5 + 32);
    v19 = v18;
    v20 = a2 + 64;
    v40 = v13;
    while (1)
    {
      v21 = v19 * v15;
      sub_21D107228(*(a2 + 48) + v19 * v15, v13, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
      sub_21DBFC7DC();
      sub_21DBFB64C();
      sub_21D0D3954(&v13[*(v10 + 20)], v9, &qword_27CE5EA20);
      v22 = v46;
      if ((*v42)(v9, 1, v46) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v23 = a1;
        v24 = a2;
        v25 = v20;
        v26 = v10;
        v27 = v41;
        (*v39)(v41, v9, v22);
        sub_21DBFC7FC();
        sub_21D0F1C68(&qword_280D171E0, MEMORY[0x277CC9260]);
        sub_21DBFA00C();
        v28 = v27;
        v10 = v26;
        v20 = v25;
        a2 = v24;
        a1 = v23;
        v13 = v40;
        (*v38)(v28, v22);
      }

      v29 = sub_21DBFC82C();
      sub_21D1072F0(v13, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
      v30 = v45;
      v31 = v29 & v45;
      if (a1 >= v44)
      {
        v19 = v43;
        if (v31 < v44)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v19 = v43;
        if (v31 >= v44)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v31)
      {
LABEL_13:
        if (v19 * a1 < v21 || *(a2 + 48) + v19 * a1 >= (*(a2 + 48) + v21 + v19))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v19 * a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v32 = *(a2 + 56);
        v33 = (v32 + 8 * a1);
        v34 = (v32 + 8 * v15);
        if (a1 != v15 || v33 >= v34 + 1)
        {
          *v33 = *v34;
          a1 = v15;
        }
      }

LABEL_4:
      v15 = (v15 + 1) & v30;
      if (((*(v20 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  v20 = a2 + 64;
LABEL_22:
  *(v20 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }
}

uint64_t sub_21D4B62F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21DBFBCDC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_21DBFC7CC();
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

void (*sub_21D4B6464(uint64_t *a1, double *a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_21D4B67D4(v5);
  v5[9] = sub_21D4B6568(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_21D4B6508;
}

void sub_21D4B6508(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_21D4B6568(uint64_t *a1, double *a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xA8uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 144) = a2;
  *(v8 + 152) = v3;
  v10 = *v3;
  v11 = sub_21D17EA50(a2);
  *(v9 + 105) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_21D2234B0();
      v11 = v19;
      goto LABEL_11;
    }

    sub_21D21AB30(v16, a3 & 1);
    v11 = sub_21D17EA50(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_21DBFC70C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 160) = v11;
  if (v17)
  {
    v21 = *(*v4 + 56) + 32 * v11;
    v22 = *v21;
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v22 = 0uLL;
  }

  *(v9 + 112) = v22;
  *(v9 + 128) = v23;
  *(v9 + 136) = v24;
  return sub_21D4B66C4;
}

void sub_21D4B66C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 112);
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  v5 = *(*a1 + 136);
  v6 = *(*a1 + 105);
  if (v4)
  {
    v7 = *(v1 + 160);
    v8 = **(v1 + 152);
    if (v6)
    {
      v9 = (v8[7] + 32 * v7);
      *v9 = v2;
      v9[1] = v3;
      v9[2] = v4;
      v9[3] = v5;
    }

    else
    {
      v12 = *(v1 + 144);
      sub_21D333234(v7, v12, v2, v3, v4, v5, v8);
      sub_21D22BF24(v12, v1);
    }
  }

  else if (*(*a1 + 105))
  {
    v10 = *(v1 + 160);
    v11 = **(v1 + 152);
    sub_21D4B6BA0(*(v11 + 48) + 112 * v10);
    sub_21D4B4D4C(v10, v11);
  }

  v13 = *(v1 + 112);
  v14 = *(v1 + 120);
  v15 = *(v1 + 128);
  sub_21D4B6EEC(v2, v3, v4);
  sub_21D4B6F38(v13, v14, v15);

  free(v1);
}

uint64_t (*sub_21D4B67D4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_21D4B67FC;
}

void *sub_21D4B6808(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v14);
  v20[3] = a6;
  v20[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a1, a6);
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[11] = 0;
  a5[12] = 0;
  a5[15] = MEMORY[0x277D84F98];
  sub_21D0D32E4(v20, (a5 + 4));
  a5[9] = a2;
  a5[10] = a3;
  a5[14] = a4;
  type metadata accessor for TTRDeferredAction();
  v16 = swift_allocObject();
  v16[3] = 0;
  swift_unknownObjectWeakInit();
  v17 = MEMORY[0x277D84F90];
  sub_21D0F1C68(&qword_280D0C860, MEMORY[0x277D44D10]);
  v18 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D9418(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v16[5] = sub_21DBF5EEC();
  v16[6] = v17;
  v16[4] = v18;
  __swift_destroy_boxed_opaque_existential_0(v20);
  a5[13] = v16;
  swift_beginAccess();
  v16[3] = &off_282EBFFF0;
  swift_unknownObjectWeakAssign();
  return a5;
}

uint64_t sub_21D4B6A4C(uint64_t a1, double *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v35 = *(a1 + 32);
  v36 = v3;
  v4 = *(a1 + 48);
  v37 = *(a1 + 64);
  v5 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v5;
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 3);
  v38[4] = *(a2 + 4);
  v9 = *(a2 + 3);
  v38[2] = *(a2 + 2);
  v38[3] = v9;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *a2;
  v38[0] = v6;
  v38[1] = v10;
  v14 = *(a1 + 80);
  v13 = *(a1 + 88);
  v31 = v35;
  v32 = v4;
  v33 = *(a1 + 64);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v29 = v34[0];
  v30 = v2;
  v18 = a2[10];
  v17 = a2[11];
  v26 = v11;
  v27 = v8;
  v28 = *(a2 + 4);
  v19 = a2[12];
  v20 = *(a2 + 104);
  v24 = v12;
  v25 = v7;
  v21 = _s15RemindersUICore19TTRParticipantModelV2eeoiySbAC_ACtFZ_0(&v29, &v24);
  v39[2] = v26;
  v39[3] = v27;
  v39[4] = v28;
  v39[0] = v24;
  v39[1] = v25;
  sub_21D1D9B34(v34, v40);
  sub_21D1D9B34(v38, v40);
  sub_21D1D9B90(v39);
  v40[2] = v31;
  v40[3] = v32;
  v40[4] = v33;
  v40[0] = v29;
  v40[1] = v30;
  sub_21D1D9B90(v40);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  v22 = v14 == v18;
  if (v13 != v17)
  {
    v22 = 0;
  }

  if (v15 != v19)
  {
    v22 = 0;
  }

  return v22 & (v16 ^ v20 ^ 1u);
}

uint64_t sub_21D4B6BFC(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v4 = a2[3];
  v24 = a2[2];
  v25 = *a2;
  v5 = a2[6];
  v6 = a2[7];
  v7 = a2[8];
  v8 = a2[9];
  v9 = [a1 givenName];
  v10 = sub_21DBFA16C();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = [a1 givenName];
LABEL_5:
    v15 = v14;
    v16 = sub_21DBFA16C();

    return v16;
  }

  v17 = v6;
  v16 = v25;
  if (v4)
  {
    v16 = v24;
LABEL_10:
    sub_21DBF8E0C();
    return v16;
  }

  if (v3)
  {
    sub_21DBF8E0C();
    goto LABEL_10;
  }

  if (!v8)
  {
    if (v17)
    {
      v16 = v5;
      sub_21DBF8E0C();
      return v16;
    }

    v14 = _REMGetLocalizedString();
    goto LABEL_5;
  }

  v19 = objc_allocWithZone(MEMORY[0x277CBDB70]);
  sub_21DBF8E0C();
  v16 = v7;
  v20 = sub_21DBFA12C();
  v21 = [v19 initWithStringValue_];

  v22 = [v21 formattedStringValue];
  if (v22)
  {
    v23 = v22;
    v16 = sub_21DBFA16C();
  }

  return v16;
}

unint64_t sub_21D4B6DC0()
{
  result = qword_280D0C1A0;
  if (!qword_280D0C1A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D0C1A0);
  }

  return result;
}

uint64_t objectdestroy_4Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21D4B6EEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    swift_unknownObjectRetain();
    v4 = v3;

    return sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D4B6F38(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D4B6F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t assignWithCopy for TTRIQuickBarParticipantAvatarResult(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRIQuickBarParticipantAvatarResult(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIQuickBarParticipantAvatarRenderConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIQuickBarParticipantAvatarRenderConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21D4B7158()
{
  result = qword_27CE5CDA8;
  if (!qword_27CE5CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5CDA8);
  }

  return result;
}

uint64_t sub_21D4B71C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v2 - 8);
  v192 = &v183 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v191 = &v183 - v5;
  v6 = sub_21DBF5C4C();
  v188 = *(v6 - 8);
  v189 = v6;
  MEMORY[0x28223BE20](v6);
  v187 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_21DBF509C();
  v8 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v185 = &v183 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v190 = &v183 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v183 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v183 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v183 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_viewModel;
  swift_beginAccess();
  sub_21D0D3954(&v1[v22], &v231, &unk_27CE5FAE0);
  if (!*(&v232 + 1))
  {
    return sub_21D0CF7E0(&v231, &unk_27CE5FAE0);
  }

  v186 = v21;
  sub_21D0D0FD0(&v231, v258);
  v23 = [v1 arrangedSubviews];
  v194 = v8;
  v184 = v14;
  if (!v23 || ((v24 = v23, sub_21D114EC8(), v25 = sub_21DBFA5EC(), v24, v25 >> 62) ? (v26 = sub_21DBFBD7C(), v8 = v194) : (v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v26))
  {
    v27 = OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_dateItem;
    swift_beginAccess();
    sub_21D0D3954(&v1[v27], &v216, &qword_27CE5CDF0);
    if (*(&v217 + 1))
    {
      v231 = v216;
      v232 = v217;
      v233 = v218;
      *&v234 = v219;
    }

    else
    {
      *(&v233 + 1) = sub_21D4B8E04(&v231, v1);
      *&v234 = v29;
      if (*(&v217 + 1))
      {
        sub_21D0CF7E0(&v216, &qword_27CE5CDF0);
      }
    }

    v30 = *(&v232 + 1);
    v31 = v233;
    __swift_project_boxed_opaque_existential_1(&v231, *(&v232 + 1));
    v32 = (*(*(v31 + 8) + 8))(v30);
    [v1 addArrangedSubview_];

    v33 = OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_timeItem;
    swift_beginAccess();
    sub_21D0D3954(&v1[v33], &v202, &qword_27CE5CDF8);
    if (*(&v203 + 1))
    {
      v216 = v202;
      v217 = v203;
      v218 = v204;
      *&v219 = v205;
    }

    else
    {
      *(&v218 + 1) = sub_21D4B8F00(&v216, v1);
      *&v219 = v34;
      if (*(&v203 + 1))
      {
        sub_21D0CF7E0(&v202, &qword_27CE5CDF8);
      }
    }

    v36 = *(&v217 + 1);
    v35 = v218;
    __swift_project_boxed_opaque_existential_1(&v216, *(&v217 + 1));
    v37 = (*(*(v35 + 8) + 8))(v36);
    [v1 addArrangedSubview_];

    v38 = OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_locationItem;
    swift_beginAccess();
    sub_21D0D3954(&v1[v38], &v195, &qword_27CE5CE00);
    if (*(&v196 + 1))
    {
      v202 = v195;
      v203 = v196;
      v204 = v197;
      *&v205 = v198;
    }

    else
    {
      v39 = sub_21D1DE37C(v1, &off_282EC0260);
      v41 = v40;
      v43 = v42;
      v44 = type metadata accessor for TTRIReminderCellQuickBarLocationViewController();
      *(&v203 + 1) = v44;
      *&v204 = &off_282EAC550;
      *&v202 = v39;
      *(&v204 + 1) = v41;
      *&v205 = v43;
      swift_beginAccess();
      v45 = v39;
      swift_unknownObjectRetain();
      sub_21D0F02F4(&v202, &v1[v38], &qword_27CE5CE00);
      swift_endAccess();
      *(&v203 + 1) = v44;
      *&v202 = v45;
      *&v204 = &off_282EAC550;
      *(&v204 + 1) = v41;
      *&v205 = v43;
      if (*(&v196 + 1))
      {
        sub_21D0CF7E0(&v195, &qword_27CE5CE00);
      }
    }

    v47 = *(&v203 + 1);
    v46 = v204;
    __swift_project_boxed_opaque_existential_1(&v202, *(&v203 + 1));
    v48 = (*(*(v46 + 8) + 8))(v47);
    [v1 addArrangedSubview_];

    v49 = OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_hashtagsItem;
    swift_beginAccess();
    sub_21D0D3954(&v1[v49], &v254, &qword_27CE5CE08);
    if (*(&v255 + 1))
    {
      v195 = v254;
      v196 = v255;
      v197 = v256;
      *&v198 = v257;
    }

    else
    {
      v50 = sub_21DAF5860(v1, &off_282EC0250);
      v52 = v51;
      v183 = v19;
      v54 = v53;
      v55 = type metadata accessor for TTRIReminderCellQuickBarHashtagsViewController();
      *(&v196 + 1) = v55;
      *&v197 = &off_282EE8D98;
      *&v195 = v50;
      *(&v197 + 1) = v52;
      *&v198 = v54;
      swift_beginAccess();
      v56 = v50;
      swift_unknownObjectRetain();
      sub_21D0F02F4(&v195, &v1[v49], &qword_27CE5CE08);
      swift_endAccess();
      *(&v196 + 1) = v55;
      *&v195 = v56;
      *&v197 = &off_282EE8D98;
      *(&v197 + 1) = v52;
      *&v198 = v54;
      v19 = v183;
      if (*(&v255 + 1))
      {
        sub_21D0CF7E0(&v254, &qword_27CE5CE08);
      }
    }

    v58 = *(&v196 + 1);
    v57 = v197;
    __swift_project_boxed_opaque_existential_1(&v195, *(&v196 + 1));
    v59 = (*(*(v57 + 8) + 8))(v58);
    [v1 addArrangedSubview_];

    v60 = OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_assigneeItem;
    swift_beginAccess();
    sub_21D0D3954(&v1[v60], &v250, &qword_27CE5CE10);
    if (*(&v251 + 1))
    {
      v254 = v250;
      v255 = v251;
      v256 = v252;
      v257 = v253;
      v8 = v194;
    }

    else
    {
      v61 = sub_21D5D8BEC(v1, &off_282EC0240);
      v63 = v62;
      v183 = v19;
      v65 = v64;
      v66 = type metadata accessor for TTRIReminderCellQuickBarAssigneeViewController();
      *(&v255 + 1) = v66;
      *&v254 = v61;
      *&v256 = &off_282EC6FB8;
      *(&v256 + 1) = v63;
      v257 = v65;
      swift_beginAccess();
      v67 = v61;
      swift_unknownObjectRetain();
      sub_21D0F02F4(&v254, &v1[v60], &qword_27CE5CE10);
      swift_endAccess();
      *(&v255 + 1) = v66;
      *&v254 = v67;
      *&v256 = &off_282EC6FB8;
      *(&v256 + 1) = v63;
      v257 = v65;
      v19 = v183;
      v8 = v194;
      if (*(&v251 + 1))
      {
        sub_21D0CF7E0(&v250, &qword_27CE5CE10);
      }
    }

    v68 = *(&v255 + 1);
    v69 = v256;
    __swift_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));
    v70 = (*(*(v69 + 8) + 8))(v68);
    [v1 addArrangedSubview_];

    v71 = OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_flagItem;
    swift_beginAccess();
    sub_21D0D3954(&v1[v71], &v246, &qword_27CE5CE18);
    if (*(&v247 + 1))
    {
      v250 = v246;
      v251 = v247;
      v252 = v248;
      v253 = v249;
    }

    else
    {
      *(&v252 + 1) = sub_21D4B8FFC(&v250, v1);
      v253 = v72;
      if (*(&v247 + 1))
      {
        sub_21D0CF7E0(&v246, &qword_27CE5CE18);
      }
    }

    [v1 addArrangedSubview_];
    sub_21D0CF7E0(&v250, &qword_27CE5CE20);
    sub_21D0CF7E0(&v254, &qword_27CE5CE28);
    sub_21D0CF7E0(&v195, &qword_27CE5CE30);
    sub_21D0CF7E0(&v202, &qword_27CE5CE38);
    sub_21D0CF7E0(&v216, &qword_27CE5CE40);
    sub_21D0CF7E0(&v231, &qword_27CE5CE48);
  }

  v73 = v259;
  v74 = v260;
  __swift_project_boxed_opaque_existential_1(v258, v259);
  (*(v74 + 64))(v73, v74);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_21D0CF7E0(v17, &unk_27CE5F2B0);
    v75 = &v1[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_dateItem];
    swift_beginAccess();
    if (*(v75 + 3))
    {
      v76 = v192;
      (*(v8 + 56))(v192, 1, 1, v193);
      swift_unknownObjectRetain();
      sub_21D1A8E2C(v76);
      swift_unknownObjectRelease();
    }

    v77 = &v1[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_timeItem];
    swift_beginAccess();
    v78 = *(v77 + 3);
    if (v78)
    {
      v79 = *(v77 + 4);
      v80 = __swift_project_boxed_opaque_existential_1(v77, *(v77 + 3));
      v81 = *(v78 - 8);
      v82 = MEMORY[0x28223BE20](v80);
      v84 = &v183 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v81 + 16))(v84, v82);
      v85 = (*(*(v79 + 8) + 8))(v78);
      (*(v81 + 8))(v84, v78);
      [v85 setHidden_];
    }
  }

  else
  {
    v86 = v17;
    v87 = v186;
    sub_21D3DA2C4(v86, v186);
    v88 = *(v18 + 28);
    LODWORD(v183) = *(v87 + *(v18 + 32));
    v89 = sub_21DBF55BC();
    v90 = v191;
    sub_21D0D3954(v87 + v88, v191, &unk_27CE60DB0);
    v92 = v188;
    v91 = v189;
    v93 = *(v188 + 48);
    if (v93(v90, 1, v189) == 1)
    {
      v94 = [objc_opt_self() defaultTimeZone];
      v95 = v187;
      sub_21DBF5C2C();

      v96 = v191;
      if (v93(v191, 1, v91) != 1)
      {
        sub_21D0CF7E0(v96, &unk_27CE60DB0);
      }
    }

    else
    {
      v95 = v187;
      (*(v92 + 32))(v187, v90, v91);
    }

    v97 = objc_opt_self();
    v98 = sub_21DBF5C0C();
    (*(v92 + 8))(v95, v91);
    v99 = v183;
    v100 = [v97 rem:v89 dateComponentsWithDate:v98 timeZone:v183 isAllDay:?];

    v101 = v190;
    sub_21DBF4EFC();

    if (v99)
    {
      v102 = sub_21DBF4EDC();
      v103 = [v102 rem_strippingTimeZone];

      v104 = v185;
      sub_21DBF4EFC();

      v106 = v193;
      v105 = v194;
      (*(v194 + 8))(v101, v193);
      v107 = *(v105 + 32);
      v107(v101, v104, v106);
    }

    else
    {
      v106 = v193;
      v105 = v194;
      v107 = *(v194 + 32);
    }

    v108 = v184;
    v107(v184, v101, v106);
    v109 = &v1[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_dateItem];
    swift_beginAccess();
    v110 = v192;
    if (*(v109 + 3))
    {
      (*(v105 + 16))(v192, v108, v106);
      (*(v105 + 56))(v110, 0, 1, v106);
      swift_unknownObjectRetain();
      sub_21D1A8E2C(v110);
      swift_unknownObjectRelease();
    }

    v111 = &v1[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_timeItem];
    swift_beginAccess();
    if (*(v111 + 3))
    {
      (*(v105 + 16))(v110, v108, v106);
      (*(v105 + 56))(v110, 0, 1, v106);
      swift_unknownObjectRetain();
      sub_21D6D30A0(v110);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    v112 = *(v111 + 3);
    if (v112)
    {
      v113 = v108;
      v114 = *(v111 + 4);
      v115 = __swift_project_boxed_opaque_existential_1(v111, *(v111 + 3));
      v116 = *(v112 - 8);
      v117 = MEMORY[0x28223BE20](v115);
      v119 = &v183 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v116 + 16))(v119, v117);
      swift_endAccess();
      v120 = (*(*(v114 + 8) + 8))(v112);
      (*(v116 + 8))(v119, v112);
      [v120 setHidden_];

      (*(v194 + 8))(v113, v106);
      sub_21D4B951C(v186);
    }

    else
    {
      (*(v194 + 8))(v108, v106);
      sub_21D4B951C(v186);
      swift_endAccess();
    }
  }

  v121 = v259;
  v122 = v260;
  __swift_project_boxed_opaque_existential_1(v258, v259);
  (*(v122 + 104))(&v231, v121, v122);
  v123 = *(&v232 + 1);
  v124 = &v1[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_locationItem];
  if (!*(&v232 + 1))
  {
    swift_beginAccess();
    if (!*(v124 + 3))
    {
      goto LABEL_58;
    }

    swift_unknownObjectRetain();
    sub_21D1DE740(0, 0);
    goto LABEL_56;
  }

  v125 = v231;
  v126 = v232;
  v127 = v233;
  swift_beginAccess();
  if (*(v124 + 3))
  {
    swift_unknownObjectRetain();
    sub_21DBF8E0C();
    sub_21D1DE740(v127, *(&v127 + 1));
    sub_21D4B94BC(v125, *(&v125 + 1), v126, v123);
LABEL_56:
    swift_unknownObjectRelease();
    goto LABEL_58;
  }

  sub_21D4B94BC(v125, *(&v125 + 1), v126, v123);
LABEL_58:
  v128 = v259;
  v129 = v260;
  __swift_project_boxed_opaque_existential_1(v258, v259);
  (*(v129 + 272))(&v231, v128, v129);
  LODWORD(v129) = v231;

  v130 = &v1[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_hashtagsItem];
  if (v129 != 1)
  {
    swift_beginAccess();
    v142 = *(v130 + 3);
    if (!v142)
    {
      goto LABEL_65;
    }

    v143 = *(v130 + 4);
    v144 = __swift_project_boxed_opaque_existential_1(v130, *(v130 + 3));
    v145 = *(v142 - 8);
    v146 = MEMORY[0x28223BE20](v144);
    v148 = &v183 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v145 + 16))(v148, v146);
    v141 = (*(*(v143 + 8) + 8))(v142);
    (*(v145 + 8))(v148, v142);
    [v141 setHidden_];
    goto LABEL_64;
  }

  swift_beginAccess();
  if (*(v130 + 3))
  {
    v131 = v259;
    v132 = v260;
    __swift_project_boxed_opaque_existential_1(v258, v259);
    v133 = *(v132 + 272);
    swift_unknownObjectRetain();
    v133(&v231, v131, v132);
    *&v216 = v231;
    *(&v216 + 1) = *(&v231 + 1);
    *&v217 = v232;
    sub_21DAF5D54(&v216);
    swift_unknownObjectRelease();
    v134 = *(v130 + 3);
    if (v134)
    {
      v135 = *(v130 + 4);
      v136 = __swift_project_boxed_opaque_existential_1(v130, *(v130 + 3));
      v137 = *(v134 - 8);
      v138 = MEMORY[0x28223BE20](v136);
      v140 = &v183 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v137 + 16))(v140, v138);
      v141 = (*(*(v135 + 8) + 8))(v134);
      (*(v137 + 8))(v140, v134);
      [v141 setHidden_];
LABEL_64:
    }
  }

LABEL_65:
  v149 = v259;
  v150 = v260;
  __swift_project_boxed_opaque_existential_1(v258, v259);
  v151 = (*(v150 + 256))(v149, v150);
  v152 = &v1[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_assigneeItem];
  if ((v151 & 1) == 0)
  {
    swift_beginAccess();
    v158 = *(v152 + 3);
    if (!v158)
    {
      goto LABEL_76;
    }

    v159 = *(v152 + 4);
    v160 = __swift_project_boxed_opaque_existential_1(v152, *(v152 + 3));
    v161 = *(v158 - 8);
    v162 = MEMORY[0x28223BE20](v160);
    v164 = &v183 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v161 + 16))(v164, v162);
    v165 = (*(*(v159 + 8) + 8))(v158);
    (*(v161 + 8))(v164, v158);
    [v165 setHidden_];
    goto LABEL_75;
  }

  swift_beginAccess();
  if (*(v152 + 3))
  {
    v153 = v259;
    v154 = v260;
    __swift_project_boxed_opaque_existential_1(v258, v259);
    v155 = *(v154 + 264);
    swift_unknownObjectRetain();
    v155(&v216, v153, v154);
    v243 = v228;
    v244 = v229;
    v245 = v230;
    v239 = v224;
    v240 = v225;
    v241 = v226;
    v242 = v227;
    v235 = v220;
    v236 = v221;
    v237 = v222;
    v238 = v223;
    v231 = v216;
    v232 = v217;
    v233 = v218;
    v234 = v219;
    if (sub_21D4B9498(&v231) == 1 || (v212 = v241, v213 = v242, v214 = v243, v215 = v244, v208 = v237, v209 = v238, v210 = v239, v211 = v240, v204 = v233, v205 = v234, v206 = v235, v207 = v236, v202 = v231, v203 = v232, sub_21D157494(&v202) == 1))
    {
      v156 = 0;
      v157 = 0;
    }

    else
    {
      sub_21D1D9C94(&v202, &v195);
      sub_21D0CF7E0(&v216, &unk_27CE5FB50);
      v199 = v206;
      v200 = v207;
      v201 = v208;
      v195 = v202;
      v196 = v203;
      v197 = v204;
      v198 = v205;
      v166 = TTRAssigneeCandidateData.displayDescription.getter();
      v168 = v167;
      sub_21D30DA04(&v202);
      v157 = v168;
      v156 = v166;
    }

    sub_21D1DE740(v156, v157);
    swift_unknownObjectRelease();
    v169 = *(v152 + 3);
    if (v169)
    {
      v170 = *(v152 + 4);
      v171 = __swift_project_boxed_opaque_existential_1(v152, *(v152 + 3));
      v172 = *(v169 - 8);
      v173 = MEMORY[0x28223BE20](v171);
      v175 = &v183 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v172 + 16))(v175, v173);
      v165 = (*(*(v170 + 8) + 8))(v169);
      (*(v172 + 8))(v175, v169);
      [v165 setHidden_];
LABEL_75:
    }
  }

LABEL_76:
  v176 = v259;
  v177 = v260;
  __swift_project_boxed_opaque_existential_1(v258, v259);
  (*(v177 + 136))(&v202, v176, v177);
  v178 = v202;
  v179 = &v1[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_flagItem];
  if (v202 == 2)
  {
    swift_beginAccess();
LABEL_81:
    v182 = *(v179 + 3);
    if (v182)
    {
      [*(*__swift_project_boxed_opaque_existential_1(v179 v182) + OBJC:sel_setHidden_ IVAR:v178 == 2 :? :? :? TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController:?button)];
    }

    return __swift_destroy_boxed_opaque_existential_0(v258);
  }

  swift_beginAccess();
  if (*(v179 + 3))
  {
    v180 = *(v179 + 5);
    *(v180 + 48) = v178 & 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(Strong + OBJC_IVAR____TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController_isFlagged) = *(v180 + 48);
      swift_unknownObjectRetain();
      sub_21D854808();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    goto LABEL_81;
  }

  return __swift_destroy_boxed_opaque_existential_0(v258);
}

id sub_21D4B8C68(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_viewModel];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = &v4[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_quickBarDelegate];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = &v4[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_dateItem];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 6) = 0;
  v13 = &v4[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_timeItem];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 6) = 0;
  v14 = &v4[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_locationItem];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 6) = 0;
  v15 = &v4[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_hashtagsItem];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *(v15 + 6) = 0;
  v16 = &v4[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_assigneeItem];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  *(v16 + 6) = 0;
  v17 = &v4[OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_flagItem];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  *(v17 + 6) = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  [v18 setItemSpacing_];
  return v18;
}

uint64_t sub_21D4B8E04(uint64_t a1, uint64_t a2)
{
  *(&v13 + 1) = sub_21D1A95B4(v12, a2, &off_282EC0288);
  v14 = v4;
  sub_21D0D3954(v12, v9, &qword_27CE5CE60);
  v8 = *&v9[5];
  sub_21D0D0FD0(v9, v10);
  *&v11[8] = v8;
  v5 = OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_dateItem;
  swift_beginAccess();
  sub_21D0F02F4(v10, a2 + v5, &qword_27CE5CDF0);
  swift_endAccess();
  v10[1] = v12[1];
  *v11 = v13;
  v10[0] = v12[0];
  *&v11[16] = v14;
  v6 = *(&v13 + 1);
  sub_21D0D0FD0(v10, a1);
  return v6;
}

uint64_t sub_21D4B8F00(uint64_t a1, uint64_t a2)
{
  *(&v13 + 1) = sub_21D6D163C(v12, a2, &off_282EC0270);
  v14 = v4;
  sub_21D0D3954(v12, v9, &qword_27CE5CE58);
  v8 = *&v9[5];
  sub_21D0D0FD0(v9, v10);
  *&v11[8] = v8;
  v5 = OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_timeItem;
  swift_beginAccess();
  sub_21D0F02F4(v10, a2 + v5, &qword_27CE5CDF8);
  swift_endAccess();
  v10[1] = v12[1];
  *v11 = v13;
  v10[0] = v12[0];
  *&v11[16] = v14;
  v6 = *(&v13 + 1);
  sub_21D0D0FD0(v10, a1);
  return v6;
}

uint64_t sub_21D4B8FFC(uint64_t a1, uint64_t a2)
{
  *(&v13 + 1) = sub_21D85416C(v12, a2, &off_282EC0230);
  v14 = v4;
  sub_21D0D3954(v12, v9, &qword_27CE5CE50);
  v8 = *&v9[5];
  sub_21D0D0FD0(v9, v10);
  *&v11[8] = v8;
  v5 = OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_flagItem;
  swift_beginAccess();
  sub_21D0F02F4(v10, a2 + v5, &qword_27CE5CE18);
  swift_endAccess();
  v10[1] = v12[1];
  *v11 = v13;
  v10[0] = v12[0];
  *&v11[16] = v14;
  v6 = *(&v13 + 1);
  sub_21D0D0FD0(v10, a1);
  return v6;
}

uint64_t sub_21D4B9128()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_viewModel, &unk_27CE5FAE0);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_quickBarDelegate, &unk_27CE5F2D0);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_dateItem, &qword_27CE5CDF0);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_timeItem, &qword_27CE5CDF8);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_locationItem, &qword_27CE5CE00);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_hashtagsItem, &qword_27CE5CE08);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_assigneeItem, &qword_27CE5CE10);
  return sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_flagItem, &qword_27CE5CE18);
}

void sub_21D4B9380()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_viewModel;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_quickBarDelegate;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_dateItem;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  v4 = v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_timeItem;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  v5 = v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_locationItem;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  v6 = v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_hashtagsItem;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  v7 = v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_assigneeItem;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  v8 = v0 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_flagItem;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D4B9498(uint64_t *a1)
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

void sub_21D4B94BC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }
}

uint64_t sub_21D4B951C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D4B9578()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5CE68);
  v1 = __swift_project_value_buffer(v0, qword_27CE5CE68);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_21D4B9640()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 240);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 40);
    swift_unknownObjectRetain();
    v4 = v3(ObjectType, v1);
    v5 = swift_unknownObjectRelease();
    if (*(v0 + 232))
    {
      v6 = *(v0 + 240);
      v7 = swift_getObjectType();
      swift_unknownObjectRetain();
      TTRRemindersListEditingSession.effectiveParentList.getter(v7, v6, &v41);
      v5 = swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
    }

    MEMORY[0x28223BE20](v5);
    v37[2] = v0;
    v37[3] = v4;
    v37[4] = &v41;
    v9 = sub_21D4E5E80(sub_21D4C0C48, v37, &unk_282EA63B8);

    sub_21D0CF7E0(&v41, &qword_27CE59DC0);
    if (*(v0 + 232))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
    *&v41 = MEMORY[0x277D84F90];
    sub_21D18E7C0(0, 4, 0);
    v9 = v41;
    v10 = byte_282EA6400;
    v12 = *(v41 + 16);
    v11 = *(v41 + 24);
    v13 = v11 >> 1;
    v14 = v12 + 1;
    if (v11 >> 1 <= v12)
    {
      sub_21D18E7C0((v11 > 1), v12 + 1, 1);
      v9 = v41;
      v11 = *(v41 + 24);
      v13 = v11 >> 1;
    }

    *(v9 + 2) = v14;
    v15 = &v9[16 * v12];
    v15[32] = v10;
    *(v15 + 33) = 256;
    *(v15 + 5) = v8;
    v16 = byte_282EA6401;
    *&v41 = v9;
    v17 = v12 + 2;
    if (v13 <= v14)
    {
      sub_21D18E7C0((v11 > 1), v17, 1);
      v9 = v41;
    }

    *(v9 + 2) = v17;
    v18 = &v9[16 * v14];
    v18[32] = v16;
    *(v18 + 33) = 256;
    *(v18 + 5) = v8;
    v19 = byte_282EA6402;
    *&v41 = v9;
    v21 = *(v9 + 2);
    v20 = *(v9 + 3);
    v22 = v20 >> 1;
    v23 = v21 + 1;
    if (v20 >> 1 <= v21)
    {
      sub_21D18E7C0((v20 > 1), v21 + 1, 1);
      v9 = v41;
      v20 = *(v41 + 24);
      v22 = v20 >> 1;
    }

    *(v9 + 2) = v23;
    v24 = &v9[16 * v21];
    v24[32] = v19;
    *(v24 + 33) = 256;
    *(v24 + 5) = v8;
    v25 = byte_282EA6403;
    *&v41 = v9;
    v26 = v21 + 2;
    if (v22 <= v23)
    {
      sub_21D18E7C0((v20 > 1), v26, 1);
      v9 = v41;
    }

    *(v9 + 2) = v26;
    v27 = &v9[16 * v23];
    v27[32] = v25;
    *(v27 + 33) = 256;
    *(v27 + 5) = v8;
    if (*(v0 + 232))
    {
LABEL_16:
      v28 = *(v0 + 240);
      v29 = swift_getObjectType();
      swift_unknownObjectRetain();
      TTRRemindersListEditingSession.effectiveParentList.getter(v29, v28, v38);
      swift_unknownObjectRelease();
      v30 = v39;
      if (v39)
      {
        v31 = v40;
        __swift_project_boxed_opaque_existential_1(v38, v39);
        (*(v31 + 112))(&v41, v30, v31);
        v32 = *(&v42 + 1);
        if (*(&v42 + 1))
        {
          v33 = v43;
          __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
          (*(v33 + 16))(v32, v33);
          __swift_destroy_boxed_opaque_existential_0(&v41);
          __swift_destroy_boxed_opaque_existential_0(v38);
          return v9;
        }

        __swift_destroy_boxed_opaque_existential_0(v38);
        v34 = &unk_27CE5A6E8;
        v35 = &v41;
      }

      else
      {
        v34 = &qword_27CE59DC0;
        v35 = v38;
      }

      sub_21D0CF7E0(v35, v34);
    }
  }

  return v9;
}

void sub_21D4B9A04(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = *a1;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      sub_21D4BAD7C(a3, a4, a5);
    }

    else if (v5 == 4)
    {
      sub_21D4BB32C(a5);
    }

    else
    {
      sub_21D4BB420(a5);
    }
  }

  else if (*a1)
  {
    if (v5 == 1)
    {
      sub_21D4BA670(a3, &v27);
      v7 = v30;
      v8 = 256;
      if (!v28)
      {
        v8 = 0;
      }

      v9 = v8 | v27;
      v10 = 0x10000;
      if (!v29)
      {
        v10 = 0;
      }

      *a5 = v9 | v10;
      a5[1] = v7;
    }

    else if (*(a2 + 232) && (v16 = *(a2 + 240), ObjectType = swift_getObjectType(), v19 = *(v16 + 40), swift_unknownObjectRetain(), v20 = v19(ObjectType, v16), v21 = [v20 hashtagContext], v20, swift_unknownObjectRelease(), v21))
    {

      v22 = *(a2 + 240);
      v23 = swift_unknownObjectRetain();
      v24 = sub_21D49B1E4(v23, v22);
      swift_unknownObjectRelease();
      v25 = 65538;
      v26 = MEMORY[0x277D84F90];
      if (v24)
      {
        v25 = 65794;
      }

      *a5 = v25;
      a5[1] = v26;
    }

    else
    {
      *a5 = 0;
      a5[1] = 0;
    }
  }

  else
  {
    sub_21D4B9BE4(a3, &v27);
    v12 = v30;
    v13 = 256;
    if (!v28)
    {
      v13 = 0;
    }

    v14 = v13 | v27;
    v15 = 0x10000;
    if (!v29)
    {
      v15 = 0;
    }

    *a5 = v14 | v15;
    a5[1] = v12;
  }
}

uint64_t sub_21D4B9BE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a1;
  v82 = a2;
  v100 = type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick(0);
  v91 = *(v100 - 8);
  v92 = v100 - 8;
  v93 = v91;
  MEMORY[0x28223BE20](v100 - 8);
  v81 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v80 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v6 - 8);
  v95 = &v80 - v7;
  v103 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  MEMORY[0x28223BE20](v103);
  v90 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF563C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21DBF5C4C();
  v105 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_21DBF5A2C();
  v104 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF509C();
  v106 = *(v17 - 8);
  v107 = v17;
  MEMORY[0x28223BE20](v17);
  v102 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v101 = &v80 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v80 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v80 - v25;
  v96 = &v80 - v25;
  v84 = type metadata accessor for TTRReminderEditor();
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v89 = objc_opt_self();
  v27 = [v89 defaultTimeZone];
  sub_21DBF5C2C();

  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  sub_21DBF58BC();
  v28 = *(v10 + 8);
  v87 = v10 + 8;
  v88 = v28;
  v83 = v9;
  v28(v12, v9);
  v29 = *(v105 + 1);
  v105 += 8;
  v86 = v29;
  v29(v14, v98);
  v30 = *(v104 + 8);
  v104 += 8;
  v85 = v30;
  v30(v16, v97);
  static TTRReminderEditor.todayDueDateComponents(now:)(v26);
  v31 = (v106 + 8);
  v32 = *(v106 + 8);
  v32(v23, v107);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v33 = [v89 defaultTimeZone];
  sub_21DBF5C2C();

  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  sub_21DBF58BC();
  v34 = v9;
  v35 = v88;
  v88(v12, v34);
  v86(v14, v98);
  v85(v16, v97);
  static TTRReminderEditor.tomorrowDueDateComponents(now:)(v101);
  v36 = v23;
  v37 = v107;
  v89 = v31;
  v86 = v32;
  v32(v36, v107);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  static TTRReminderEditor.weekendDueDateComponents(now:)(v102, v108);
  v35(v12, v83);
  LODWORD(v97) = v108[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59908);
  v38 = *(v91 + 72);
  v39 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v93 = 2 * v38;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_21DC08D10;
  v92 = v39;
  v41 = v40 + v39;
  v42 = *(v106 + 16);
  v104 = v106 + 16;
  v105 = v42;
  v43 = v90;
  v44 = v96;
  (v42)(v90, v96, v37);
  swift_storeEnumTagMultiPayload();
  v45 = v99;
  v46 = *(v99 + 232);
  v47 = *(v99 + 240);
  swift_unknownObjectRetain();
  LOBYTE(v47) = sub_21D49A544(v44, v46, v47);
  swift_unknownObjectRelease();
  sub_21D4C1748(v43, v41, type metadata accessor for TTRIQuickBarQuickPickItem);
  v48 = v100;
  *(v41 + *(v100 + 20)) = v47 & 1;
  v98 = v38;
  v49 = v41 + v38;
  v50 = v101;
  (v105)(v43, v101, v107);
  swift_storeEnumTagMultiPayload();
  v51 = v45;
  v52 = *(v45 + 232);
  v53 = *(v51 + 240);
  swift_unknownObjectRetain();
  LOBYTE(v53) = sub_21D49A544(v50, v52, v53);
  swift_unknownObjectRelease();
  sub_21D4C1748(v43, v49, type metadata accessor for TTRIQuickBarQuickPickItem);
  *(v49 + *(v48 + 20)) = v53 & 1;
  v91 = v41;
  v54 = v41 + v93;
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50) + 48);
  v56 = v102;
  v57 = v107;
  (v105)(v43, v102);
  *(v43 + v55) = v97;
  swift_storeEnumTagMultiPayload();
  v58 = *(v99 + 232);
  v59 = *(v99 + 240);
  swift_unknownObjectRetain();
  LOBYTE(v59) = sub_21D49A544(v56, v58, v59);
  swift_unknownObjectRelease();
  sub_21D4C1748(v43, v54, type metadata accessor for TTRIQuickBarQuickPickItem);
  v60 = v100;
  *(v54 + *(v100 + 20)) = v59 & 1;
  v61 = [v94 dueDateComponents];
  if (v61)
  {
    v62 = v95;
    sub_21DBF4EFC();

    (*(v106 + 56))(v62, 0, 1, v57);
    sub_21D0CF7E0(v62, &qword_27CE58D60);
    v64 = -*(v40 + 16);
    v65 = -1;
    v66 = v91;
    v67 = v60;
    v68 = v98;
    do
    {
      v69 = v64 + v65 == -1;
      if (v64 + v65 == -1)
      {
        break;
      }

      v70 = *(v40 + 16);
      if (++v65 >= v70)
      {
        __break(1u);
        goto LABEL_11;
      }

      v71 = v66 + v68;
      sub_21D4C197C(v66, v5, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
      v72 = v5[*(v67 + 20)];
      sub_21D4C16E8(v5, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
      v66 = v71;
    }

    while (v72 != 1);
  }

  else
  {
    v73 = v95;
    (*(v106 + 56))(v95, 1, 1, v57);
    sub_21D0CF7E0(v73, &qword_27CE58D60);
    v69 = 0;
    v67 = v60;
    v68 = v98;
  }

  v5 = v81;
  swift_storeEnumTagMultiPayload();
  v5[*(v67 + 20)] = v69;
  v64 = *(v40 + 16);
  v70 = *(v40 + 24);
  v63 = v64 + 1;
  v106 = v64 + 1;
  if (v64 >= v70 >> 1)
  {
LABEL_11:
    v40 = sub_21D21378C(v70 > 1, v63, 1, v40);
  }

  v74 = v82;
  v75 = v107;
  v76 = v101;
  v77 = v96;
  LODWORD(v105) = v61 != 0;
  v78 = v86;
  v86(v102, v107);
  v78(v76, v75);
  v78(v77, v75);
  *(v40 + 16) = v106;
  result = sub_21D4C1748(v5, v40 + v92 + v64 * v68, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
  *v74 = 0;
  *(v74 + 1) = v105;
  *(v74 + 2) = 1;
  *(v74 + 8) = v40;
  return result;
}

void sub_21D4BA670(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v60 = a1;
  v4 = type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - v8;
  MEMORY[0x28223BE20](v10);
  v57 = &v57 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  v18 = *(v2 + 80);
  v19 = v18[7];
  v20 = v18[8];
  __swift_project_boxed_opaque_existential_1(v18 + 4, v19);
  v21 = (*(v20 + 16))(v19, v20);
  if (v21)
  {

    type metadata accessor for TTRIQuickBarQuickPickItem(0);
    swift_storeEnumTagMultiPayload();
    v22 = *(v2 + 240);
    v23 = swift_unknownObjectRetain();
    LOBYTE(v22) = sub_21D499B50(v23, v22);
    swift_unknownObjectRelease();
    v17[*(v4 + 20)] = v22 & 1;
    v24 = sub_21D21378C(0, 1, 1, MEMORY[0x277D84F90]);
    v26 = v24[2];
    v25 = v24[3];
    if (v26 >= v25 >> 1)
    {
      v24 = sub_21D21378C(v25 > 1, v26 + 1, 1, v24);
    }

    v24[2] = v26 + 1;
    sub_21D4C1748(v17, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v27 = v18[7];
  v28 = v18[8];
  __swift_project_boxed_opaque_existential_1(v18 + 4, v27);
  v29 = (*(v28 + 24))(v27, v28);
  if (v29)
  {

    type metadata accessor for TTRIQuickBarQuickPickItem(0);
    swift_storeEnumTagMultiPayload();
    v30 = *(v3 + 240);
    v31 = swift_unknownObjectRetain();
    LOBYTE(v30) = sub_21D499CE0(v31, v30);
    swift_unknownObjectRelease();
    v14[*(v4 + 20)] = v30 & 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v60;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_21D21378C(0, v24[2] + 1, 1, v24);
    }

    v35 = v24[2];
    v34 = v24[3];
    if (v35 >= v34 >> 1)
    {
      v24 = sub_21D21378C(v34 > 1, v35 + 1, 1, v24);
    }

    v24[2] = v35 + 1;
    sub_21D4C1748(v14, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v35, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
  }

  else
  {
    v33 = v60;
  }

  v36 = v18[7];
  v37 = v18[8];
  __swift_project_boxed_opaque_existential_1(v18 + 4, v36);
  if ((*(v37 + 32))(v36, v37))
  {
    type metadata accessor for TTRIQuickBarQuickPickItem(0);
    v37 = v57;
    swift_storeEnumTagMultiPayload();
    v38 = *(v3 + 240);
    v39 = swift_unknownObjectRetain();
    LOBYTE(v38) = sub_21D499E70(v39, v38);
    swift_unknownObjectRelease();
    *(v37 + *(v4 + 20)) = v38 & 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_21D21378C(0, v24[2] + 1, 1, v24);
    }

    v41 = v24[2];
    v40 = v24[3];
    if (v41 >= v40 >> 1)
    {
      v24 = sub_21D21378C(v40 > 1, v41 + 1, 1, v24);
    }

    v24[2] = v41 + 1;
    sub_21D4C1748(v37, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v41, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
  }

  v42 = sub_21D7A5E9C();
  if (v42 >> 62)
  {
    goto LABEL_24;
  }

  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((v42 & 0xC000000000000001) == 0)
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v43)
      {
        goto LABEL_29;
      }

      __break(1u);
LABEL_24:
      v44 = v42;
      v45 = sub_21DBFBD7C();
      v42 = v44;
      if (!v45)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_40;
  }

LABEL_25:

  v42 = sub_21D7A5EA8();
  if (!(v42 >> 62))
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_42:

    v49 = 0;
    LOBYTE(v48) = 0;
LABEL_34:
    type metadata accessor for TTRIQuickBarQuickPickItem(0);
    v37 = v58;
    swift_storeEnumTagMultiPayload();
    *(v37 + *(v4 + 20)) = v49;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

  v55 = v42;
  v56 = sub_21DBFBD7C();
  v42 = v55;
  if (!v56)
  {
    goto LABEL_42;
  }

LABEL_27:
  if ((v42 & 0xC000000000000001) == 0)
  {
    v46 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v46)
    {
      __break(1u);
      return;
    }

    goto LABEL_29;
  }

LABEL_40:
  MEMORY[0x223D44740](0, v42);
  swift_unknownObjectRelease();

LABEL_29:
  v47 = 0;
  v48 = v24[2];
  while (1)
  {
    v49 = v48 == v47;
    if (v48 == v47)
    {
LABEL_33:
      LOBYTE(v48) = 1;
      goto LABEL_34;
    }

    if (v47 >= v24[2])
    {
      break;
    }

    sub_21D4C197C(v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v47++, v9, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
    v37 = v9[*(v4 + 20)];
    sub_21D4C16E8(v9, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
    if (v37 == 1)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_39:
  v24 = sub_21D21378C(0, v24[2] + 1, 1, v24);
LABEL_35:
  v51 = v24[2];
  v50 = v24[3];
  if (v51 >= v50 >> 1)
  {
    v24 = sub_21D21378C(v50 > 1, v51 + 1, 1, v24);
  }

  v24[2] = v51 + 1;
  sub_21D4C1748(v37, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v51, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
  v52 = [v33 accountCapabilities];
  v53 = [v52 supportsLocation];

  v54 = v59;
  *v59 = 1;
  v54[1] = v48;
  v54[2] = v53;
  *(v54 + 1) = v24;
}

void sub_21D4BAD7C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = v3[30];
  v15 = swift_unknownObjectRetain();
  LOBYTE(v14) = sub_21D49A744(v15, v14);
  swift_unknownObjectRelease();
  if ((v14 & 1) == 0)
  {
    goto LABEL_38;
  }

  sub_21D0FACE0(a2, v53);
  v16 = v54;
  if (!v54)
  {
    sub_21D0CF7E0(v53, &qword_27CE59DC0);
LABEL_38:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v49 = v3;
  v17 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  (*(v17 + 96))(v50, v16, v17);
  v18 = v51;
  if (!v51)
  {
    __swift_destroy_boxed_opaque_existential_0(v53);
    sub_21D0CF7E0(v50, &qword_27CE62630);
    goto LABEL_38;
  }

  v19 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v20 = (*(v19 + 32))(v18, v19);
  __swift_destroy_boxed_opaque_existential_0(v50);
  __swift_destroy_boxed_opaque_existential_0(v53);
  if (v20 >> 62)
  {
LABEL_35:
    v45 = sub_21DBFBD7C();
    v22 = v49;
    if (v45)
    {
      v21 = sub_21DBFBD7C();
      goto LABEL_6;
    }

    goto LABEL_37;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v22 = v49;
  if (!v21)
  {
LABEL_37:

    goto LABEL_38;
  }

LABEL_6:
  v47 = v21;
  v23 = 3;
  if (v21 <= 4)
  {
    v23 = 4;
  }

  v24 = [a1 assignmentContext];
  if (v24 && (v25 = v24, v26 = [v24 currentAssignment], v25, v26))
  {
    v48 = [v26 assigneeID];
  }

  else
  {
    v48 = 0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = v22[7];
    ObjectType = swift_getObjectType();
    v29 = (*(v27 + 24))(ObjectType, v27);
    v22 = v49;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    LOBYTE(v27) = v29;
    swift_unknownObjectRelease();
    v36 = v27 & 1;
  }

  else
  {
    v36 = 2;
    v31 = 0;
    v33 = 0;
    v35 = 0;
  }

  v37 = swift_allocObject();
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = v36;
  a1 = v48;
  *(v37 + 48) = v22;
  *(v37 + 56) = a1;
  v53[0] = v20;
  v53[1] = sub_21D4C167C;
  v53[2] = v37;
  v54 = sub_21D91AE9C;
  v55 = 0;
  v56 = sub_21D91AF00;
  v57 = 0;
  v49 = a1;
  sub_21DBF8E0C();

  sub_21D97C9C0(v46, v50);
  v38 = sub_21D4C0C68(v50);

  sub_21D0CF7E0(v50, &qword_27CE5CE80);
  if (v47 < 5)
  {
    v41 = v49;
  }

  else
  {
    if (a1)
    {
      v39 = 0;
      v40 = v38[2];
      do
      {
        v20 = v40 == v39;
        if (v40 == v39)
        {
          break;
        }

        if (v39 >= v38[2])
        {
          __break(1u);
          goto LABEL_35;
        }

        sub_21D4C197C(v38 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v39++, v13, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
        a1 = v13[*(v7 + 20)];
        sub_21D4C16E8(v13, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
      }

      while (a1 != 1);
    }

    else
    {
      LOBYTE(v20) = 0;
    }

    type metadata accessor for TTRIQuickBarQuickPickItem(0);
    swift_storeEnumTagMultiPayload();
    v10[*(v7 + 20)] = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_21D21378C(0, v38[2] + 1, 1, v38);
    }

    a1 = v48;
    v41 = v49;
    v43 = v38[2];
    v42 = v38[3];
    if (v43 >= v42 >> 1)
    {
      v38 = sub_21D21378C(v42 > 1, v43 + 1, 1, v38);
    }

    v38[2] = v43 + 1;
    sub_21D4C1748(v10, v38 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v43, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
  }

  v44 = 65539;
  if (a1)
  {
    v44 = 65795;
  }

  *a3 = v44;
  a3[1] = v38;
}

uint64_t sub_21D4BB32C@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 232))
  {
    v3 = *(v1 + 240);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 40);
    swift_unknownObjectRetain();
    v6 = v5(ObjectType, v3);
    v7 = [v6 flaggedContext];

    swift_unknownObjectRelease();
    if (v7)
    {

      v7 = 0x10000;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v1 + 240);
  v9 = swift_unknownObjectRetain();
  LOBYTE(v8) = sub_21D49AA78(v9, v8);
  result = swift_unknownObjectRelease();
  v11 = 4;
  if (v8)
  {
    v11 = 260;
  }

  v12 = MEMORY[0x277D84F90];
  *a1 = v7 | v11;
  a1[1] = v12;
  return result;
}

uint64_t sub_21D4BB420@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v58 = type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick(0);
  v4 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - v7;
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - v12;
  if (!*(v1 + 232))
  {
    v19 = 0;
LABEL_11:
    v28 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v57 = v11;
  v55 = v10;
  v14 = *(v1 + 240);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 40);
  swift_unknownObjectRetain();
  v17 = v16(ObjectType, v14);
  v18 = [v17 attachmentContext];

  swift_unknownObjectRelease();
  v19 = v18 != 0;
  if (v18)
  {
  }

  if (!*(v1 + 232))
  {
    goto LABEL_11;
  }

  v56 = v18 != 0;
  v54 = v4;
  v20 = a1;
  v21 = *(v1 + 240);
  v22 = swift_getObjectType();
  v23 = *(v21 + 40);
  swift_unknownObjectRetain();
  v24 = v23(v22, v21);
  v25 = [v24 attachmentContext];

  swift_unknownObjectRelease();
  if (v25)
  {

    v26 = _s15RemindersUICore33TTRIAttachmentImportingControllerC16availableSourcesShyAC6SourceOGvgZ_0();
    a1 = v20;
    if (sub_21D22D5B8(0, v26))
    {
      type metadata accessor for TTRIQuickBarQuickPickItem(0);
      swift_storeEnumTagMultiPayload();
      v27 = v58;
      v13[*(v58 + 20)] = 0;
      v28 = sub_21D21378C(0, 1, 1, MEMORY[0x277D84F90]);
      v30 = v28[2];
      v29 = v28[3];
      v31 = v54;
      if (v30 >= v29 >> 1)
      {
        v28 = sub_21D21378C(v29 > 1, v30 + 1, 1, v28);
      }

      v28[2] = v30 + 1;
      sub_21D4C1748(v13, v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
      v31 = v54;
      v27 = v58;
    }

    if (sub_21D22D5B8(2, v26))
    {
      type metadata accessor for TTRIQuickBarQuickPickItem(0);
      swift_storeEnumTagMultiPayload();
      v8[*(v27 + 20)] = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_21D21378C(0, v28[2] + 1, 1, v28);
      }

      v38 = v28[2];
      v37 = v28[3];
      if (v38 >= v37 >> 1)
      {
        v28 = sub_21D21378C(v37 > 1, v38 + 1, 1, v28);
      }

      v28[2] = v38 + 1;
      sub_21D4C1748(v8, v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v38, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
    }

    v39 = sub_21D22D5B8(1, v26);

    if (v39)
    {
      type metadata accessor for TTRIQuickBarQuickPickItem(0);
      v40 = v57;
      swift_storeEnumTagMultiPayload();
      *(v40 + *(v27 + 20)) = 0;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v56;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_21D21378C(0, v28[2] + 1, 1, v28);
      }

      v43 = v28[2];
      v42 = v28[3];
      if (v43 >= v42 >> 1)
      {
        v28 = sub_21D21378C(v42 > 1, v43 + 1, 1, v28);
      }

      v28[2] = v43 + 1;
      sub_21D4C1748(v57, v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v43, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
    }

    else
    {
      v19 = v56;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v45 = *(Strong + 32);
      if (v45)
      {
        v46 = Strong;
        v47 = v45;
        v48 = [v47 canPerformAction:sel_captureTextFromCamera_ withSender:v46];

        swift_unknownObjectRelease();
        if (v48)
        {
          type metadata accessor for TTRIQuickBarQuickPickItem(0);
          v49 = v55;
          swift_storeEnumTagMultiPayload();
          *(v49 + *(v58 + 20)) = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_21D21378C(0, v28[2] + 1, 1, v28);
          }

          v50 = v54;
          v52 = v28[2];
          v51 = v28[3];
          if (v52 >= v51 >> 1)
          {
            v28 = sub_21D21378C(v51 > 1, v52 + 1, 1, v28);
          }

          v28[2] = v52 + 1;
          sub_21D4C1748(v55, v28 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v52, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
    a1 = v20;
    v19 = v56;
  }

LABEL_12:
  v32 = *(v2 + 240);
  v33 = swift_unknownObjectRetain();
  LOBYTE(v32) = sub_21D49B034(v33, v32);
  result = swift_unknownObjectRelease();
  v35 = 5;
  if (v32)
  {
    v35 = 261;
  }

  v36 = 0x10000;
  if (!v19)
  {
    v36 = 0;
  }

  *a1 = v36 | v35;
  a1[1] = v28;
  return result;
}

uint64_t sub_21D4BBA4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  if (!*(v0 + 232))
  {
    return 0;
  }

  v4 = *(v0 + 240);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 40);
  swift_unknownObjectRetain();
  v7 = v6(ObjectType, v4);
  v8 = [v7 displayDate];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 date];

    sub_21DBF55FC();
    v11 = sub_21DBF563C();
    (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  }

  else
  {
    v13 = sub_21DBF563C();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  }

  TTRRemindersListPostponeType.init(date:)(v3, &v19);
  v14 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = v14;
  *(inited + 40) = 1;
  v16 = sub_21D177548(inited);
  swift_setDeallocating();
  swift_unknownObjectRelease();

  v17 = swift_allocObject();
  swift_weakInit();
  v19 = 256;
  v20 = 1;
  v21 = v16;
  v22 = sub_21D4C1690;
  v23 = v17;
  v12 = _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO018makeDueDateContextF013configurationSo6UIMenuCAC0ijkF13ConfigurationV_tFZ_0(&v19);

  return v12;
}

uint64_t sub_21D4BBCBC()
{
  if (!v0[29])
  {
    return 0;
  }

  v1 = v0[30];
  v2 = v0[10];
  ObjectType = swift_getObjectType();
  v4 = *(v1 + 40);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v1);
  v6 = *(v2 + 80);
  v7 = swift_getObjectType();
  v8 = (*(v6 + 8))(v7, v6);
  v9 = *(v2 + 80);
  v10 = swift_getObjectType();
  v18[3] = sub_21D0D8CF0(0, &qword_280D17770);
  v18[4] = &protocol witness table for REMReminderChangeItem;
  v18[0] = v5;
  v11 = *(v9 + 24);
  v12 = v5;
  v11(v17, v18, v10, v9);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v18);
  v13 = swift_allocObject();
  swift_weakInit();
  v16 = v8;
  v17[1] = sub_21D4C17B0;
  v17[2] = v13;
  v14 = _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO019makeLocationContextF013configurationSo6UIMenuCAC0ijF13ConfigurationV_tFZ_0(&v16);

  return v14;
}

uint64_t sub_21D4BBE6C()
{
  v1 = v0;
  v2 = *(v0 + 240);
  v3 = swift_unknownObjectRetain();
  v4 = sub_21D49AB60(v3, v2);
  v6 = v5;
  swift_unknownObjectRelease();
  if (!v4)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = v6;
  *(inited + 40) = 1;
  v8 = v6;
  v9 = sub_21D17876C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5CEA8);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v1 + 56);
    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 24))(ObjectType, v10);
    v14 = v13;
    LOBYTE(v10) = v12;
    swift_unknownObjectRelease();
    v15 = v10 & 1;
  }

  else
  {
    v15 = 0;
    v14 = 1.0;
  }

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  swift_weakInit();
  *&v21 = v4;
  *(&v21 + 1) = v14;
  LOBYTE(v22) = v15;
  *(&v22 + 1) = 256;
  *(&v22 + 3) = v25;
  BYTE7(v22) = v26;
  *(&v22 + 1) = v9;
  *&v23 = sub_21D4C18B0;
  *(&v23 + 1) = v17;
  *&v24 = sub_21D4C18B8;
  *(&v24 + 1) = v18;
  v20[0] = v21;
  v20[1] = v22;
  v20[2] = v23;
  v20[3] = v24;
  v16 = _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO017makeAssignContextF013configurationSo6UIMenuCAC0ijF13ConfigurationV_tFZ_0(v20);

  sub_21D4C18C0(&v21);
  return v16;
}

uint64_t sub_21D4BC090(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v3 = a2();

  return v3;
}

uint64_t sub_21D4BC100()
{
  if (!*(v0 + 232))
  {
    return 0;
  }

  v1 = *(v0 + 240);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 40);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  v5 = [v4 attachmentContext];

  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + 32);
    if (v8)
    {
      v9 = v8;
      v10 = [v9 canPerformAction:sel_captureTextFromCamera_ withSender:v7];
    }

    else
    {
      v10 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  swift_weakInit();
  LOBYTE(v15) = v10;
  *(&v15 + 1) = sub_21D4C1928;
  v16 = v12;
  v17 = sub_21D4C1958;
  v18 = v13;
  v14 = _s15RemindersUICore39TTRIRemindersListContextualMenuAssemblyO014makeAttachmentF013configurationSo6UIMenuCAC0iF13ConfigurationV_tFZ_0(&v15);

  sub_21D0D0E88(sub_21D4C1958);
  return v14;
}

uint64_t sub_21D4BC2A4()
{
  v1 = objc_opt_self();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v2 = sub_21DBFA12C();

  v3 = swift_allocObject();
  *(v3 + 16) = sub_21D4C1920;
  *(v3 + 24) = v0;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_63_2;
  v4 = _Block_copy(aBlock);

  [v1 withActionName:v2 block:{v4, 0x800000021DC4F950}];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_21D4BC500();
  }

  return result;
}

uint64_t sub_21D4BC4BC(uint64_t a1)
{
  v1 = *(a1 + 240);
  v2 = swift_unknownObjectRetain();
  sub_21D49B848(v2, v1);

  return swift_unknownObjectRelease();
}

void sub_21D4BC500()
{
  v1 = v0[29];
  if (v1)
  {
    v2 = v0[30];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v7[0] = 1;
    (*(v2 + 104))(v7, ObjectType, v2);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v0[9];
      v5 = swift_getObjectType();
      (*(v4 + 8))(v0, &off_282EC02A0, v1, v2, v5, v4);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = v0[7];
      swift_getObjectType();
      sub_21D4B9640();
      (*(v6 + 16))();

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

void sub_21D4BC658()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  if (v0[29])
  {
    v7 = v0[30];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v9(ObjectType, v7);
    swift_unknownObjectRelease();
    sub_21D4C1748(v3, v6, type metadata accessor for TTRRemindersListViewModel.Item);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = v0[3];
      v11 = swift_getObjectType();
      (*(v10 + 32))(v0, &off_282EC0338, v6, v11, v10);
      swift_unknownObjectRelease();
    }

    sub_21D4C16E8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
  }
}

uint64_t sub_21D4BC7E0(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v114 = *(v3 - 8);
  v4 = v114[8];
  MEMORY[0x28223BE20](v3 - 8);
  v110 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v113 = &v109 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v109 - v8;
  MEMORY[0x28223BE20](v10);
  v112 = &v109 - v11;
  MEMORY[0x28223BE20](v12);
  v115 = &v109 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v109 - v15;
  MEMORY[0x28223BE20](v17);
  v111 = &v109 - v18;
  v19 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = sub_21DBF509C();
  v22 = *(v117 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v117);
  v116 = (&v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v26 = &v109 - v25;
  sub_21D4C197C(a1, v21, type metadata accessor for TTRIQuickBarQuickPickItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload > 9)
    {
      if (EnumCaseMultiPayload <= 11)
      {
        if (EnumCaseMultiPayload == 10)
        {
          LOBYTE(aBlock) = 0;
LABEL_50:
          sub_21D4BE19C(&aBlock);
          goto LABEL_51;
        }

        v73 = 2;
LABEL_49:
        LOBYTE(aBlock) = v73;
        goto LABEL_50;
      }

      if (EnumCaseMultiPayload == 12)
      {
        v73 = 1;
        goto LABEL_49;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_52;
      }

      v106 = *(v1 + 56);
      ObjectType = swift_getObjectType();
      v108 = *(v106 + 8);

      v108(sub_21D4C1FB4, v1, ObjectType, v106);

      swift_unknownObjectRelease();
LABEL_51:
      Strong = 0;
LABEL_52:
      v33 = 0;
LABEL_60:
      sub_21D0D0E88(Strong);
      return sub_21D0D0E88(v33);
    }

    if (EnumCaseMultiPayload == 7)
    {
      v74 = *(v1 + 240);
      v75 = swift_unknownObjectRetain();
      v76 = sub_21D499E70(v75, v74);
      swift_unknownObjectRelease();
      if ((v76 & 1) == 0)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v77 = *(v1 + 24);
          v78 = swift_getObjectType();
          (*(v77 + 80))(v1, &off_282EC0338, &unk_282EA6E78, v78, v77);
          swift_unknownObjectRelease();
        }
      }

      isEscapingClosureAtFileLocation = objc_opt_self();
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_38;
      }

      goto LABEL_65;
    }

    if (EnumCaseMultiPayload == 8)
    {
      if (!*(v1 + 232))
      {
        goto LABEL_63;
      }

      v53 = *(v1 + 240);
      v54 = swift_getObjectType();
      v55 = *(v53 + 16);
      swift_unknownObjectRetain();
      v55(v54, v53);
      swift_unknownObjectRelease();
      v56 = v112;
      sub_21D4C1748(v9, v112, type metadata accessor for TTRRemindersListViewModel.Item);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_47;
      }

      v57 = *(v1 + 56);
      v58 = swift_getObjectType();
      v59 = v115;
      sub_21D4C197C(v56, v115, type metadata accessor for TTRRemindersListViewModel.Item);
      v60 = (*(v114 + 80) + 24) & ~*(v114 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v1;
      sub_21D4C1748(v59, v61 + v60, type metadata accessor for TTRRemindersListViewModel.Item);
      v62 = *(v57 + 8);

      v63 = sub_21D4C1FB8;
    }

    else
    {
      if (!*(v1 + 232))
      {
        goto LABEL_51;
      }

      v84 = *(v1 + 240);
      v85 = swift_getObjectType();
      v86 = *(v84 + 16);
      swift_unknownObjectRetain();
      v87 = v110;
      v86(v85, v84);
      swift_unknownObjectRelease();
      v56 = v113;
      sub_21D4C1748(v87, v113, type metadata accessor for TTRRemindersListViewModel.Item);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_47;
      }

      v57 = *(v1 + 56);
      v58 = swift_getObjectType();
      v88 = v115;
      sub_21D4C197C(v56, v115, type metadata accessor for TTRRemindersListViewModel.Item);
      v89 = (*(v114 + 80) + 24) & ~*(v114 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v1;
      sub_21D4C1748(v88, v61 + v89, type metadata accessor for TTRRemindersListViewModel.Item);
      v62 = *(v57 + 8);

      v63 = sub_21D4C19E4;
    }

LABEL_46:
    v62(v63, v61, v58, v57);
    swift_unknownObjectRelease();

    goto LABEL_47;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    v40 = *(v22 + 32);
    v40(v26, v21, v117);
    LODWORD(v115) = *(v1 + 216);
    if (v115 != 1 || (v41 = *(v1 + 232), v42 = *(v1 + 240), swift_unknownObjectRetain(), LOBYTE(v42) = sub_21D49A544(v26, v41, v42), swift_unknownObjectRelease(), (v42 & 1) == 0))
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v43 = *(v1 + 24);
        v44 = swift_getObjectType();
        (*(v43 + 80))(v1, &off_282EC0338, &unk_282EA6E00, v44, v43);
        swift_unknownObjectRelease();
      }
    }

    v114 = objc_opt_self();
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v45 = sub_21DBFA12C();

    v47 = v116;
    v46 = v117;
    v40(v116, v26, v117);
    v48 = (*(v22 + 80) + 24) & ~*(v22 + 80);
    v22 = v48 + v23;
    v49 = swift_allocObject();
    *(v49 + 16) = v1;
    v40((v49 + v48), v47, v46);
    *(v49 + v48 + v23) = v115;
    v50 = swift_allocObject();
    v116 = sub_21D4C1F10;
    *(v50 + 16) = sub_21D4C1F10;
    *(v50 + 24) = v49;
    v122 = sub_21D0E622C;
    v123 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v119 = 1107296256;
    v120 = sub_21D0E6204;
    v121 = &block_descriptor_119;
    v51 = _Block_copy(&aBlock);

    [v114 withActionName:v45 block:v51];

    _Block_release(v51);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v38 = 0;
      v39 = 0;
      v117 = 0;
      v33 = 0;
      v37 = v116;
      goto LABEL_59;
    }

    __break(1u);
LABEL_65:
    swift_once();
LABEL_38:
    sub_21DBF516C();
    v29 = v79;
    v80 = sub_21DBFA12C();

    v81 = swift_allocObject();
    v117 = sub_21D4C1A50;
    *(v81 + 16) = sub_21D4C1A50;
    *(v81 + 24) = v1;
    v122 = sub_21D0E622C;
    v123 = v81;
    aBlock = MEMORY[0x277D85DD0];
    v119 = 1107296256;
    v120 = sub_21D0E6204;
    v121 = &block_descriptor_89;
    v82 = _Block_copy(&aBlock);

    [isEscapingClosureAtFileLocation withActionName:v80 block:v82];

    _Block_release(v82);
    v83 = swift_isEscapingClosureAtFileLocation();

    if ((v83 & 1) == 0)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v33 = 0;
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_67;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v22 = *v21;
      v28 = v21[1];

      v29 = objc_opt_self();
      if (qword_280D1BAA8 == -1)
      {
LABEL_6:
        sub_21DBF516C();
        v30 = sub_21DBFA12C();

        v31 = swift_allocObject();
        *(v31 + 16) = v1;
        *(v31 + 24) = v22;
        v32 = swift_allocObject();
        v33 = sub_21D4C1A48;
        *(v32 + 16) = sub_21D4C1A48;
        *(v32 + 24) = v31;
        v122 = sub_21D0E622C;
        v123 = v32;
        aBlock = MEMORY[0x277D85DD0];
        v119 = 1107296256;
        v120 = sub_21D0E6204;
        v121 = &block_descriptor_78_1;
        v34 = _Block_copy(&aBlock);

        v35 = v22;

        [v29 withActionName:v30 block:v34];

        _Block_release(v34);
        v36 = swift_isEscapingClosureAtFileLocation();

        if ((v36 & 1) == 0)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v117 = 0;
LABEL_59:
          sub_21D4BC500();
          sub_21D0D0E88(v37);
          sub_21D0D0E88(v38);
          sub_21D0D0E88(v39);
          Strong = v117;
          goto LABEL_60;
        }

        __break(1u);
LABEL_69:
        swift_once();
LABEL_30:
        sub_21DBF516C();
        v69 = sub_21DBFA12C();

        v70 = swift_allocObject();
        v38 = sub_21D4C1A60;
        *(v70 + 16) = sub_21D4C1A60;
        *(v70 + 24) = v1;
        v122 = sub_21D0E622C;
        v123 = v70;
        aBlock = MEMORY[0x277D85DD0];
        v119 = 1107296256;
        v120 = sub_21D0E6204;
        v121 = &block_descriptor_105;
        v71 = _Block_copy(&aBlock);

        [v36 withActionName:v69 block:v71];

        _Block_release(v71);
        v72 = swift_isEscapingClosureAtFileLocation();

        if ((v72 & 1) == 0)
        {
          v37 = 0;
          v39 = 0;
          v117 = 0;
          v33 = 0;
          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_71;
      }

LABEL_67:
      swift_once();
      goto LABEL_6;
    }

    if (*(v1 + 232))
    {
      v90 = *(v1 + 240);
      v91 = swift_getObjectType();
      v92 = *(v90 + 16);
      swift_unknownObjectRetain();
      v92(v91, v90);
      swift_unknownObjectRelease();
      v56 = v111;
      sub_21D4C1748(v16, v111, type metadata accessor for TTRRemindersListViewModel.Item);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v57 = *(v1 + 56);
        v58 = swift_getObjectType();
        v93 = v115;
        sub_21D4C197C(v56, v115, type metadata accessor for TTRRemindersListViewModel.Item);
        v94 = (*(v114 + 80) + 24) & ~*(v114 + 80);
        v61 = swift_allocObject();
        *(v61 + 16) = v1;
        sub_21D4C1748(v93, v61 + v94, type metadata accessor for TTRRemindersListViewModel.Item);
        v62 = *(v57 + 8);

        v63 = sub_21D4C1FBC;
        goto LABEL_46;
      }

LABEL_47:
      sub_21D4C16E8(v56, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_51;
    }

LABEL_63:
    Strong = 0;
    v33 = 0;
    goto LABEL_60;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v64 = *(v1 + 240);
    v65 = swift_unknownObjectRetain();
    v66 = sub_21D499B50(v65, v64);
    swift_unknownObjectRelease();
    if ((v66 & 1) == 0)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v67 = *(v1 + 24);
        v68 = swift_getObjectType();
        (*(v67 + 80))(v1, &off_282EC0338, &unk_282EA6E28, v68, v67);
        swift_unknownObjectRelease();
      }
    }

    v36 = objc_opt_self();
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_69;
  }

  v96 = *(v1 + 240);
  v97 = swift_unknownObjectRetain();
  v98 = sub_21D499CE0(v97, v96);
  swift_unknownObjectRelease();
  if ((v98 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v99 = *(v1 + 24);
      v100 = swift_getObjectType();
      (*(v99 + 80))(v1, &off_282EC0338, &unk_282EA6E50, v100, v99);
      swift_unknownObjectRelease();
    }
  }

  v72 = objc_opt_self();
  if (qword_280D1BAA8 != -1)
  {
LABEL_71:
    swift_once();
  }

  sub_21DBF516C();
  v101 = sub_21DBFA12C();

  v102 = swift_allocObject();
  v116 = sub_21D4C1A58;
  *(v102 + 16) = sub_21D4C1A58;
  *(v102 + 24) = v1;
  v122 = sub_21D0E622C;
  v123 = v102;
  aBlock = MEMORY[0x277D85DD0];
  v119 = 1107296256;
  v120 = sub_21D0E6204;
  v121 = &block_descriptor_97_0;
  v103 = _Block_copy(&aBlock);

  [v72 withActionName:v101 block:v103];

  _Block_release(v103);
  v104 = swift_isEscapingClosureAtFileLocation();

  if ((v104 & 1) == 0)
  {
    v37 = 0;
    v38 = 0;
    v117 = 0;
    v33 = 0;
    v39 = v116;
    goto LABEL_59;
  }

  __break(1u);
  return result;
}

void sub_21D4BDD04(void *a1)
{
  v1 = a1[10];
  v2 = a1[29];
  v3 = a1[30];
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
  v6 = *(v5 + 16);
  swift_unknownObjectRetain();
  v7 = v6(v4, v5);
  if (v7)
  {
    if (v2)
    {
      v12 = v7;
      swift_unknownObjectRetain();
      if (sub_21D49A938(v12, v2, v3))
      {
        v8 = 0;
      }

      else
      {
        v8 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v12 proximity:1];
      }

      ObjectType = swift_getObjectType();
      (*(v3 + 72))(v13, ObjectType, v3);
      v10 = v14;
      v11 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      (*(v11 + 136))(v8, v10, v11);
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(v13);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_21D4BDEB0(void *a1)
{
  v1 = a1[10];
  v2 = a1[29];
  v3 = a1[30];
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
  v6 = *(v5 + 24);
  swift_unknownObjectRetain();
  v7 = v6(v4, v5);
  if (v7)
  {
    if (v2)
    {
      v12 = v7;
      swift_unknownObjectRetain();
      if (sub_21D49A938(v12, v2, v3))
      {
        v8 = 0;
      }

      else
      {
        v8 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v12 proximity:1];
      }

      ObjectType = swift_getObjectType();
      (*(v3 + 72))(v13, ObjectType, v3);
      v10 = v14;
      v11 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      (*(v11 + 136))(v8, v10, v11);
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(v13);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_21D4BE05C(uint64_t a1)
{
  v1 = *(a1 + 240);
  v2 = swift_unknownObjectRetain();
  sub_21D499FB0(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_21D4BE0AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 232);
  v4 = *(a1 + 240);
  swift_unknownObjectRetain();
  sub_21D49B500(a2, v3, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_21D4BE104(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 56))(a1, &off_282EC0338, a2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D4BE19C(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v17[-v8];
  if (v2[29])
  {
    v10 = *a1;
    v11 = v2[30];
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 16);
    swift_unknownObjectRetain();
    v13(ObjectType, v11);
    swift_unknownObjectRelease();
    sub_21D4C1748(v6, v9, type metadata accessor for TTRRemindersListViewModel.Item);
    if (qword_27CE56958 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_27CE5CE68);
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC();

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = v2[3];
      v16 = swift_getObjectType();
      v18 = v10;
      (*(v15 + 24))(v2, &off_282EC0338, v9, &v18, v16, v15);
      swift_unknownObjectRelease();
    }

    sub_21D4C16E8(v9, type metadata accessor for TTRRemindersListViewModel.Item);
  }
}

void sub_21D4BE3B8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for TTRDateChangeType();
  MEMORY[0x28223BE20](v6);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 232);
  if (v9)
  {
    v10 = *(a1 + 240);
    swift_unknownObjectRetain_n();
    if ((a3 & 1) == 0 || (sub_21D49A544(a2, v9, v10) & 1) == 0)
    {
      v11 = sub_21DBF4EDC();
      [v11 rem_isAllDayDateComponents];

      v12 = sub_21DBF509C();
      (*(*(v12 - 8) + 16))(v8, a2, v12);
    }

    swift_storeEnumTagMultiPayload();
    ObjectType = swift_getObjectType();
    (*(v10 + 72))(v17, ObjectType, v10);
    v14 = v18;
    v15 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v15 + 8))(v8, v14, v15);
    swift_unknownObjectRelease_n();
    sub_21D4C16E8(v8, type metadata accessor for TTRDateChangeType);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }
}

uint64_t sub_21D4BE578@<X0>(id *a1@<X0>, double a2@<X1>, double a3@<X2>, double a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a7;
  v15 = a5;
  v16 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a1;
  TTRParticipantModel.init(sharee:)(v19, v38);
  if (v15 == 2)
  {
    sub_21D1D9B90(v38);
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((a6 + 136), *(a6 + 160));
    v37[2] = v38[2];
    v37[3] = v38[3];
    v37[4] = v38[4];
    v37[1] = v38[1];
    v37[0] = v38[0];
    v20 = sub_21D4B209C(v37, a5 & 1, a2, a3, a4);
    v21 = v23;
    v22 = v24;
    sub_21D1D9B90(v38);
  }

  if (v22)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  if (!v22)
  {
    v20 = 0;
  }

  *v18 = [v19 objectID];
  v18[1] = v20;
  v18[2] = v25;
  v18[3] = v26;
  swift_storeEnumTagMultiPayload();
  v27 = v20;
  v28 = [v19 objectID];
  if (v28)
  {
    v29 = v28;
    v30 = v36;
    if (v36)
    {
      sub_21D0D8CF0(0, &qword_280D17880);
      v31 = v30;
      v32 = sub_21DBFB63C();
    }

    else
    {

      v32 = 0;
    }
  }

  else
  {

    v32 = v36 == 0;
  }

  sub_21D4C1748(v18, a8, type metadata accessor for TTRIQuickBarQuickPickItem);
  v33 = type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick(0);
  *(a8 + *(v33 + 20)) = v32 & 1;
  return (*(*(v33 - 8) + 56))(a8, 0, 1, v33);
}

void sub_21D4BE830(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v8);
  v10 = aBlock - v9 + 16;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D78);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = aBlock - v12 + 16;
  v14 = v2[29];
  if (!v14)
  {
    return;
  }

  v15 = *a1;
  v16 = v2[30];
  v17 = qword_27CE56958;
  swift_unknownObjectRetain();
  if (v15 <= 4)
  {
    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE5CE68);
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC();

    LOBYTE(aBlock[0]) = v15;
    TTRRemindersListPostponeType.dateChangeType.getter(v13);
    v19 = type metadata accessor for TTRDateChangeType();
    if ((*(*(v19 - 8) + 48))(v13, 1, v19) != 1 && swift_getEnumCaseMultiPayload() <= 1)
    {
      sub_21D4C16E8(v13, type metadata accessor for TTRDateChangeType);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = v2[3];
        ObjectType = swift_getObjectType();
        (*(v20 + 80))(v2, &off_282EC0338, &unk_282EA6EC8, ObjectType, v20);
        swift_unknownObjectRelease();
      }
    }

    v22 = objc_opt_self();
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v7 = sub_21DBFA12C();

    v10 = swift_allocObject();
    *(v10 + 2) = v2;
    v10[24] = v15;
    *(v10 + 4) = v14;
    *(v10 + 5) = v16;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_21D4C16D8;
    *(v16 + 24) = v10;
    aBlock[4] = sub_21D0E6070;
    v34 = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_39;
    v23 = _Block_copy(aBlock);
    v5 = v34;
    swift_unknownObjectRetain();

    [v22 withActionName:v7 block:v23];

    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      sub_21D4BC500();

      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v17 != -1)
  {
LABEL_20:
    swift_once();
  }

  v25 = sub_21DBF84BC();
  __swift_project_value_buffer(v25, qword_27CE5CE68);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v26 = swift_getObjectType();
  (*(v16 + 16))(v26, v16);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = v2[7];
    v28 = swift_getObjectType();
    sub_21D4C197C(v10, v7, type metadata accessor for TTRRemindersListViewModel.Item);
    v29 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v2;
    sub_21D4C1748(v7, v30 + v29, type metadata accessor for TTRRemindersListViewModel.Item);
    v31 = *(v27 + 8);

    v31(sub_21D4C16C0, v30, v28, v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_21D4C16E8(v10, type metadata accessor for TTRRemindersListViewModel.Item);
}

uint64_t sub_21D4BEE98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 40))(a1, &off_282EC0338, a2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D4BEF30(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D78);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-1] - v7;
  v9 = type metadata accessor for TTRDateChangeType();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v18[0]) = a2;
  swift_unknownObjectRetain();
  TTRRemindersListPostponeType.dateChangeType.getter(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    swift_unknownObjectRelease();
    return sub_21D0CF7E0(v8, &qword_27CE58D78);
  }

  else
  {
    sub_21D4C1748(v8, v12, type metadata accessor for TTRDateChangeType);
    ObjectType = swift_getObjectType();
    (*(a4 + 72))(v18, ObjectType, a4);
    v15 = v19;
    v16 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v16 + 8))(v12, v15, v16);
    swift_unknownObjectRelease();
    sub_21D4C16E8(v12, type metadata accessor for TTRDateChangeType);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

uint64_t sub_21D4BF144(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = v1;
    sub_21D4BF1B0(&v3);
  }

  return result;
}

uint64_t sub_21D4BF1B0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = *a1;
  if (v14 >= 5)
  {
    if (v14 == 5)
    {
      if (qword_27CE56958 != -1)
      {
        swift_once();
      }

      v20 = sub_21DBF84BC();
      __swift_project_value_buffer(v20, qword_27CE5CE68);
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21DAEACDC();

      if (v2[29])
      {
        v21 = v2[30];
        ObjectType = swift_getObjectType();
        v30 = *(v21 + 16);
        swift_unknownObjectRetain();
        v30(ObjectType, v21);
        swift_unknownObjectRelease();
        sub_21D4C1748(v10, v13, type metadata accessor for TTRRemindersListViewModel.Item);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v23 = v2[7];
          v24 = swift_getObjectType();
          sub_21D4C197C(v13, v7, type metadata accessor for TTRRemindersListViewModel.Item);
          v25 = (*(v5 + 80) + 24) & ~*(v5 + 80);
          v26 = swift_allocObject();
          *(v26 + 16) = v2;
          sub_21D4C1748(v7, v26 + v25, type metadata accessor for TTRRemindersListViewModel.Item);
          v27 = *(v23 + 8);

          v27(sub_21D4C17B8, v26, v24, v23);
          swift_unknownObjectRelease();
        }

        return sub_21D4C16E8(v13, type metadata accessor for TTRRemindersListViewModel.Item);
      }
    }

    else
    {
      if (qword_27CE56958 != -1)
      {
        swift_once();
      }

      v28 = sub_21DBF84BC();
      __swift_project_value_buffer(v28, qword_27CE5CE68);
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21DAEACDC();

      *&v31 = 0;
      BYTE8(v31) = -1;
      return sub_21D4BF7B4(&v31);
    }
  }

  else
  {
    if (qword_27CE56958 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_27CE5CE68);
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC();

    v16 = *(v2[10] + 80);
    v17 = swift_getObjectType();
    v32 = v14;
    v31 = xmmword_21DC18630;
    result = (*(v16 + 16))(&v32, &v31, v17, v16);
    if (result)
    {
      *&v31 = result;
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CE98);
      sub_21D4C1840();
      v19 = sub_21DBF92AC();

      v2[28] = v19;
    }
  }

  return result;
}

uint64_t sub_21D4BF68C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 48))(a1, &off_282EC0338, a2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D4BF724(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 224) = 0;

    v5 = v1;
    v6 = v2;
    v4 = v1;
    sub_21D4BF7B4(&v5);

    sub_21D157864(v5, v6);
  }
}

uint64_t sub_21D4BF7B4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 != 255)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 80))(v1, &off_282EC0338, &unk_282EA6EF0, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  v6 = objc_opt_self();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v7 = sub_21DBFA12C();

  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v2;
  *(v8 + 32) = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D4C18A4;
  *(v9 + 24) = v8;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_44_0;
  v10 = _Block_copy(aBlock);

  sub_21D1B1ED4(v2, v3);

  [v6 withActionName:v7 block:{v10, 0x800000021DC4FB50}];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_21D4BC500();
  }

  return result;
}

uint64_t sub_21D4BFA88(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a2;
  v7 = a3;
  v3 = *(a1 + 232);
  v4 = *(a1 + 240);
  swift_unknownObjectRetain();
  sub_21D49B338(&v6, v3, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_21D4BFAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return a3(MEMORY[0x277D84F90]);
  }

  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v13 = v10;
  sub_21D4BFBA0(a1, v12, a3, a4);
}

uint64_t sub_21D4BFBA0(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = a2[1];
  v35 = a2[2];
  v34 = *(a2 + 24);
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    v11 = result + 40;
    v12 = MEMORY[0x277D84F90];
    do
    {
      v13 = v11 + 112 * v10;
      v14 = v10;
      while (1)
      {
        if (v14 >= v9)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v10 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_18;
        }

        v15 = *(v13 - 8);
        v16 = *(v13 + 80);
        v49 = *(v13 + 64);
        v50 = v16;
        v51 = *(v13 + 96);
        v17 = *(v13 + 16);
        v45 = *v13;
        v46 = v17;
        v18 = *(v13 + 48);
        v47 = *(v13 + 32);
        v48 = v18;
        if (v15)
        {
          break;
        }

        ++v14;
        v13 += 112;
        if (v10 == v9)
        {
          goto LABEL_16;
        }
      }

      v33 = a3;
      v19 = *(v13 + 32);
      v41 = *(v13 + 48);
      v20 = *(v13 + 80);
      v42 = *(v13 + 64);
      v43 = v20;
      v21 = *(v13 + 16);
      v38 = *v13;
      v39 = v21;
      v37 = v15;
      v44 = *(v13 + 96);
      v40 = v19;
      sub_21D1D9C94(&v37, v36);
      result = swift_isUniquelyReferenced_nonNull_native();
      v22 = a4;
      if ((result & 1) == 0)
      {
        result = sub_21D212760(0, *(v12 + 16) + 1, 1, v12);
        v12 = result;
      }

      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_21D212760((v23 > 1), v24 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 16) = v24 + 1;
      v25 = v12 + 112 * v24;
      *(v25 + 32) = v15;
      v26 = v45;
      v27 = v46;
      *(v25 + 72) = v47;
      *(v25 + 56) = v27;
      *(v25 + 40) = v26;
      v28 = v48;
      v29 = v49;
      v30 = v50;
      *(v25 + 136) = v51;
      *(v25 + 120) = v30;
      *(v25 + 104) = v29;
      *(v25 + 88) = v28;
      a4 = v22;
      a3 = v33;
    }

    while (v10 != v9);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

LABEL_16:
  v31 = v4[25];
  v32 = v4[26];
  __swift_project_boxed_opaque_existential_1(v4 + 22, v31);
  v37 = v7;
  *&v38 = v8;
  *(&v38 + 1) = v35;
  LOBYTE(v39) = v34;
  (*(v32 + 16))(v12, &v37, a3, a4, v31, v32);
}

uint64_t sub_21D4BFDDC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      v3 = v1;
    }

    sub_21D4BFE48(v1);
  }

  return result;
}

uint64_t sub_21D4BFE48(uint64_t result)
{
  v2 = *(v1 + 232);
  if (v2)
  {
    v3 = v1;
    v4 = result;
    v5 = *(v1 + 240);
    v6 = qword_27CE56958;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE5CE68);
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC();

    v8 = objc_opt_self();
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v9 = sub_21DBFA12C();

    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = v4;
    v10[4] = v2;
    v10[5] = v5;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_21D4C1914;
    *(v11 + 24) = v10;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_56_0;
    v12 = _Block_copy(aBlock);
    v13 = v4;

    swift_unknownObjectRetain();

    [v8 withActionName:v9 block:{v12, 0x800000021DC4F850}];

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      sub_21D4BC500();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21D4C013C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v7 = *(a4 + 72);
    swift_unknownObjectRetain();
    v8 = a2;
    v7(v23, ObjectType, a4);
    v9 = v24;
    v10 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    TTRRemindersListEditingSession.effectiveParentList.getter(ObjectType, a4, v20);
    v11 = v21;
    if (v21)
    {
      v12 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v13 = (*(v12 + 80))(v11, v12);
      if (v13)
      {
        v14 = v13;
        v11 = [v13 objectID];

        __swift_destroy_boxed_opaque_existential_0(v20);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v20);
        v11 = 0;
      }
    }

    else
    {
      sub_21D0CF7E0(v20, &qword_27CE59DC0);
    }

    (*(v10 + 64))(v8, v11, v9, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = swift_getObjectType();
    v16 = *(a4 + 72);
    swift_unknownObjectRetain();
    v16(v23, v15, a4);
    v17 = v24;
    v18 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v18 + 56))(v17, v18);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v23);
}

uint64_t sub_21D4C0330(char *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = v5;
    a4(&v7);
  }

  return result;
}

uint64_t sub_21D4C03A4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D4C03FC();
  }

  return result;
}

uint64_t sub_21D4C03FC()
{
  if (qword_27CE56958 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE5CE68);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v0 + 56);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);

    v5(sub_21D4C1960, v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D4C052C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      v3 = v2;
      [v3 captureTextFromCamera_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D4C059C()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D157444(v0 + 48);
  sub_21D157444(v0 + 64);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0(v0 + 176);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_21D4C060C()
{
  sub_21D4C059C();

  return swift_deallocClassInstance();
}

uint64_t sub_21D4C0664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 24))(ObjectType, a2);
  v8 = v7;
  v9 = (v2 + 232);
  if (*(v2 + 232))
  {
    v10 = v6;
    v11 = *(v2 + 240);
    v12 = swift_getObjectType();
    v13 = *(v11 + 24);
    swift_unknownObjectRetain();
    v14 = v13(v12, v11);
    v16 = v15;
    swift_unknownObjectRelease();
    if (v10 == v14 && v8 == v16)
    {
    }

    else
    {
      v18 = sub_21DBFC64C();

      if ((v18 & 1) == 0)
      {
        return result;
      }
    }

    *v9 = 0;
    *(v3 + 240) = 0;
    sub_21D4C14C0();

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_21D4C0810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a5(a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_21D4C0894@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = v3;
    sub_21D47C438(&v5, a2);
    swift_unknownObjectRelease();
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *&result = 254;
    *(a2 + 40) = xmmword_21DC0A830;
    *(a2 + 56) = 0;
  }

  return result;
}

void (*sub_21D4C0910(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t sub_21D4C09E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D4C0A40(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D4C0AD4;
}

void sub_21D4C0AD4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_21D4C0B58(uint64_t a1, uint64_t a2)
{
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  swift_unknownObjectRetain();
  sub_21D4C14C0();

  return swift_unknownObjectRelease();
}

uint64_t sub_21D4C0B98()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 56);
    swift_getObjectType();
    sub_21D4B9640();
    (*(v2 + 16))();

    return swift_unknownObjectRelease();
  }

  return result;
}

size_t sub_21D4C0C68(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CE88);
  MEMORY[0x28223BE20](v2 - 8);
  v78 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = &v63 - v5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CE90);
  v6 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v67 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - v15;
  v74 = type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick(0);
  MEMORY[0x28223BE20](v74);
  v79 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(v18 + 80);
  v81 = MEMORY[0x277D84F90];
  v64 = (v65 + 32) & ~v65;
  v80 = MEMORY[0x277D84F90] + v64;
  v19 = *a1;
  v20 = a1[1];
  v22 = a1[2];
  v21 = a1[3];
  v23 = a1[5];
  v83 = a1[4];
  v84 = v20;
  v24 = a1[7];
  v82 = a1[6];
  v25 = v21 >> 1;
  v26 = a1[8];
  v27 = a1[9];
  v66 = v26;
  v71 = (v6 + 48);
  v72 = (v6 + 56);
  v76 = v18;
  v69 = (v18 + 48);
  v70 = (v18 + 56);
  v63 = v19;
  swift_unknownObjectRetain();
  v86 = v23;

  v85 = v24;

  v68 = v27;

  v29 = 0;
  v30 = v22;
  v77 = v16;
  if (v22 != v25)
  {
    goto LABEL_2;
  }

LABEL_7:
  while (1)
  {
    v34 = 1;
    v22 = v25;
LABEL_9:
    v35 = v73;
    v36 = 1;
    v37 = v75;
    (*v72)(v75, v34, 1, v73);
    v38 = v37;
    v39 = v78;
    sub_21D0D523C(v38, v78, &qword_27CE5CE88);
    if ((*v71)(v39, 1, v35) != 1)
    {
      v40 = v67;
      sub_21D0D523C(v78, v67, &qword_27CE5CE90);
      v66(v40);
      sub_21D0CF7E0(v40, &qword_27CE5CE90);
      v36 = 0;
    }

    v41 = v77;
    v42 = v36;
    v43 = v74;
    (*v70)(v77, v42, 1, v74);
    if ((*v69)(v41, 1, v43) == 1)
    {
      break;
    }

    result = sub_21D4C1748(v41, v79, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
    if (!v29)
    {
      v46 = v81[3];
      if (((v46 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_42;
      }

      v47 = v46 & 0xFFFFFFFFFFFFFFFELL;
      if (v47 <= 1)
      {
        v48 = 1;
      }

      else
      {
        v48 = v47;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59908);
      v49 = *(v76 + 72);
      v50 = v64;
      v44 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v44);
      if (!v49)
      {
        goto LABEL_43;
      }

      v51 = result - v50;
      if (result - v50 == 0x8000000000000000 && v49 == -1)
      {
        goto LABEL_44;
      }

      v53 = v50;
      v54 = v51 / v49;
      v44[2] = v48;
      v44[3] = 2 * (v51 / v49);
      v55 = v44 + v53;
      v56 = v81[3] >> 1;
      v57 = v56 * v49;
      if (v81[2])
      {
        if (v44 < v81 || v55 >= v81 + v53 + v57)
        {
          v80 = v44 + v53;
          swift_arrayInitWithTakeFrontToBack();
LABEL_31:
          v55 = v80;
        }

        else if (v44 != v81)
        {
          v80 = v44 + v53;
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_31;
        }

        v81[2] = 0;
      }

      v80 = v55 + v57;
      v58 = (v54 & 0x7FFFFFFFFFFFFFFFLL) - v56;

      v45 = __OFSUB__(v58, 1);
      v29 = v58 - 1;
      if (v45)
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    }

    v44 = v81;
    v45 = __OFSUB__(v29--, 1);
    if (v45)
    {
      goto LABEL_41;
    }

LABEL_34:
    v59 = v80;
    result = sub_21D4C1748(v79, v80, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
    v80 = v59 + *(v76 + 72);
    v81 = v44;
    if (v22 != v25)
    {
LABEL_2:
      v31 = v22;
      while (v22 >= v30 && v31 < v25)
      {
        v32 = v31 + 1;
        v87[0] = *(v84 + 8 * v31);
        v33 = v87[0];
        v83(v87);

        sub_21D0D523C(v10, v13, &qword_27CE5CE90);
        if (v82(v13))
        {
          sub_21D0D523C(v13, v75, &qword_27CE5CE90);
          v34 = 0;
          v22 = v32;
          goto LABEL_9;
        }

        result = sub_21D0CF7E0(v13, &qword_27CE5CE90);
        v31 = v32;
        if (v25 == v32)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }

  swift_unknownObjectRelease();
  sub_21D0CF7E0(v41, &qword_27CE5CE90);
  result = v81;
  v60 = v81[3];
  if (v60 < 2)
  {
    return result;
  }

  v61 = v60 >> 1;
  v45 = __OFSUB__(v61, v29);
  v62 = v61 - v29;
  if (!v45)
  {
    v81[2] = v62;
    return result;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_21D4C1328(void (*a1)(uint64_t *__return_ptr, uint64_t))
{

  a1(&v22, v2);

  result = sub_21DBFC42C();
  v4 = v22;
  v5 = MEMORY[0x277D84F90];
  v6 = 0;
  if (v22)
  {
    v7 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      if (!v6)
      {
        v8 = v5[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 25;
        }

        v14 = v13 >> 3;
        v11[2] = v10;
        v11[3] = (2 * (v13 >> 3)) | 1;
        v15 = (v11 + 4);
        v16 = v5[3] >> 1;
        if (v5[2])
        {
          v17 = v5 + 4;
          if (v11 != v5 || v15 >= v17 + 8 * v16)
          {
            memmove(v11 + 4, v17, 8 * v16);
          }

          v5[2] = 0;
        }

        v7 = (v15 + 8 * v16);
        v6 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v5 = v11;
      }

      v18 = __OFSUB__(v6--, 1);
      if (v18)
      {
        break;
      }

      *v7++ = v4;
      result = sub_21DBFC42C();
      v4 = v22;
      if (!v22)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:

  v19 = v5[3];
  if (v19 < 2)
  {
    return v5;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v6);
  v21 = v20 - v6;
  if (!v18)
  {
    v5[2] = v21;
    return v5;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_21D4C14C0()
{
  if (v0[29])
  {
    v1 = v0;
    v2 = v0[30];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 40);
    swift_unknownObjectRetain();
    v5 = v4(ObjectType, v2);
    v6 = v0[31];
    v7 = v6;
    v8 = [v5 objectID];
    v9 = v1[31];
    v1[31] = v8;
    v10 = v8;

    if (v6)
    {
      sub_21D0D8CF0(0, &qword_280D17880);
      v11 = v7;
      sub_21DBFB63C();
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = v1[7];
      swift_getObjectType();
      sub_21D4B9640();
      (*(v12 + 16))();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_21D4C16E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D4C1748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21D4C1840()
{
  result = qword_27CE62690;
  if (!qword_27CE62690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5CE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62690);
  }

  return result;
}

uint64_t sub_21D4C197C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D4C19E4()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_21D4BE104(v2, v3);
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_46;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 > 4)
    {
      if (v7 <= 7)
      {
        if (v7 != 5 && v7 != 6)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (v7 != 8 && v7 != 9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v7 > 2)
      {
        goto LABEL_37;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
LABEL_41:
          v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v18 = v3 + *(v17 + 20);
          if (*(v18 + 8))
          {

            sub_21D179EF0(*(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), *(v18 + 48), *(v18 + 56), *(v18 + 64));
            v19 = *(v18 + 120);
            if (v19 != 255)
            {
              sub_21D1078C0(*(v18 + 72), *(v18 + 80), *(v18 + 88), *(v18 + 96), *(v18 + 104), *(v18 + 112), v19 & 1);
            }
          }

          goto LABEL_46;
        }

LABEL_37:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 8))(v0 + v2, v16);
        goto LABEL_41;
      }
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
LABEL_30:

      goto LABEL_46;
    }

LABEL_16:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(v3 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 8))(v3 + v8, v20);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v14 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if (!(*(*(v14 - 8) + 48))(v0 + v2, 1, v14))
      {
        v15 = sub_21DBF563C();
        (*(*(v15 - 8) + 8))(v0 + v2, v15);
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v6 = sub_21DBF8D7C();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
    }

    goto LABEL_46;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v2, 1, v11))
  {

    v12 = *(v11 + 20);
    v13 = sub_21DBF6C1C();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  v3 += *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v3 + 8))
  {

    goto LABEL_30;
  }

LABEL_46:

  return swift_deallocObject();
}

void sub_21D4C1F10()
{
  v1 = *(sub_21DBF509C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  sub_21D4BE3B8(v2, v3, v4);
}

id static UIImage.largeSystemImage(named:)()
{
  v0 = [objc_opt_self() configurationWithScale_];
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  return v2;
}

id static UIImage.onePointImage(color:)(uint64_t a1)
{
  if (qword_27CE56960 != -1)
  {
    swift_once();
  }

  v2 = [qword_27CE5CEB0 imageWithTintColor:a1 renderingMode:1];

  return v2;
}

id static UIImage.imageWithPadIdiomFallback(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21DBFA12C();
  v5 = objc_opt_self();
  v6 = [v5 imageNamed:v4 inBundle:a3];

  if (!v6)
  {
    v7 = [objc_opt_self() traitCollectionWithUserInterfaceIdiom_];
    v8 = sub_21DBFA12C();
    v6 = [v5 imageNamed:v8 inBundle:a3 compatibleWithTraitCollection:v7];
  }

  return v6;
}

void sub_21D4C21F0()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = sub_21D119630(v0, 1.0, 1.0);

  v2 = [v1 imageWithRenderingMode_];
  qword_27CE5CEB0 = v2;
}

uint64_t TTRTreeLocationType.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v10 = sub_21DBFBA8C();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  (*(a5 + 24))(a3, a5, v11);
  v14 = (*(a5 + 48))(a3, a5);
  (*(a4 + 72))(v13, v14, a2, a4);
  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t TTRTreeLocation.init(parent:index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  v7 = sub_21DBFBA8C();
  (*(*(v7 - 8) + 40))(a4, a1, v7);
  result = type metadata accessor for TTRTreeLocation();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_21D4C24B0(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v20 = 40;
  v21 = 0xE100000000000000;
  v11 = *(a2 + 24);
  v19[0] = v2;
  v11(a1, a2, v8);
  v12 = *(AssociatedTypeWitness - 8);
  if ((*(v12 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    v13 = 0xE300000000000000;
    v14 = 7104878;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v13 = v16;
    v7 = v12;
    v6 = AssociatedTypeWitness;
  }

  (*(v7 + 8))(v10, v6);
  MEMORY[0x223D42AA0](v14, v13);

  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  v19[1] = (*(a2 + 48))(a1, a2);
  v17 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v17);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return v20;
}

BOOL static TTRTreeLocationType.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v82 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v63 = &v62 - v9;
  v81 = v10;
  v11 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v71 = &v62 - v12;
  v13 = sub_21DBFBA8C();
  v70 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - v17;
  v72 = v11;
  v78 = *(v11 - 8);
  MEMORY[0x28223BE20](v19);
  v67 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v76 = &v62 - v22;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v62 - v25;
  v27 = *(a4 + 24);
  v64 = a1;
  v74 = a3;
  v75 = a4;
  v69 = v27;
  (v27)(a3, a4, v24);
  v28 = *(AssociatedTypeWitness - 8);
  v29 = *(v28 + 48);
  v30 = 1;
  v31 = v29(v18, 1, AssociatedTypeWitness);
  v65 = v28;
  v66 = v13;
  if (v31 == 1)
  {
    v28 = v70;
    v32 = v13;
  }

  else
  {
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness);
    v30 = 0;
    v32 = AssociatedTypeWitness;
  }

  (*(v28 + 8))(v18, v32);
  v33 = *(v82 + 56);
  v34 = 1;
  v77 = v26;
  v33(v26, v30, 1, v81);
  v69(v74, v75);
  v35 = v29(v15, 1, AssociatedTypeWitness);
  v62 = AssociatedTypeWitness;
  if (v35 == 1)
  {
    v36 = v76;
    v37 = v66;
    v38 = v70;
  }

  else
  {
    v39 = v76;
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness);
    v36 = v39;
    v34 = 0;
    v38 = v65;
    v37 = AssociatedTypeWitness;
  }

  (*(v38 + 8))(v15, v37);
  v40 = v81;
  v33(v36, v34, 1, v81);
  v41 = v78;
  v42 = *(TupleTypeMetadata2 + 48);
  v43 = *(v78 + 16);
  v45 = v71;
  v44 = v72;
  v46 = v77;
  v43(v71, v77, v72);
  v70 = v42;
  v43(&v45[v42], v36, v44);
  v47 = *(v82 + 48);
  if (v47(v45, 1, v40) != 1)
  {
    v49 = v67;
    v43(v67, v45, v44);
    v50 = v70;
    if (v47(&v45[v70], 1, v40) != 1)
    {
      v53 = v82;
      v54 = v63;
      (*(v82 + 32))(v63, &v45[v50], v40);
      swift_getAssociatedConformanceWitness();
      v55 = sub_21DBFA10C();
      v56 = *(v53 + 8);
      v56(v54, v40);
      v57 = *(v78 + 8);
      v57(v76, v44);
      v57(v77, v44);
      v56(v49, v40);
      v57(v45, v44);
      if (v55)
      {
        goto LABEL_15;
      }

      return 0;
    }

    v51 = *(v78 + 8);
    v51(v76, v44);
    v51(v77, v44);
    (*(v82 + 8))(v49, v40);
LABEL_12:
    (*(v68 + 8))(v45, TupleTypeMetadata2);
    return 0;
  }

  v48 = *(v41 + 8);
  v48(v36, v44);
  v48(v46, v44);
  if (v47(&v45[v70], 1, v40) != 1)
  {
    goto LABEL_12;
  }

  v48(v45, v44);
LABEL_15:
  v59 = v74;
  v58 = v75;
  v60 = *(v75 + 48);
  v61 = v60(v74, v75);
  return v61 == v60(v59, v58);
}

uint64_t TTRTreeLocation.parent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBFBA8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRTreeLocation.parent.setter(uint64_t a1)
{
  v3 = sub_21DBFBA8C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void (*sub_21D4C2FB8(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTRTreeLocation.parent.modify();
  return sub_21D4C3D30;
}

void (*sub_21D4C3030(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTRTreeLocation.index.modify();
  return sub_21D4C30A8;
}

uint64_t TTRTreeLocation.description.getter(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21D4C24B0(a1, WitnessTable);
}

uint64_t sub_21D4C3200()
{
  result = sub_21DBFBA8C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21D4C329C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t sub_21D4C3408(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void *sub_21D4C34CC(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_21D4C35F0(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  *((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_21D4C3794(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_21D4C38B8(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  *((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_21D4C3A5C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v6;
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
      if (v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 2)
    {
      v17 = (*(v4 + 48))(a1, v5);
      if (v17 >= 2)
      {
        return v17 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v6 + (v10 | v15) + 1;
}

_DWORD *sub_21D4C3B98(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v11 = a3 - v9;
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = a2 - v9;
    }

    if (v10)
    {
      v15 = ~v9 + a2;
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v10) = v14;
      }

      else
      {
        *(result + v10) = v14;
      }
    }

    else if (v5)
    {
      *(result + v10) = v14;
    }

    return result;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      *(result + v10) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

LABEL_32:
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (v5 == 2)
  {
    *(result + v10) = 0;
    goto LABEL_32;
  }

  *(result + v10) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v17 = *(v6 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_21D4C3D34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = v40 - v4;
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v54 = MEMORY[0x277D84F90];
  sub_21D18E678(0, v5 & ~(v5 >> 63), 0);
  v6 = v54;
  if (v47)
  {
    result = sub_21DBFBD0C();
  }

  else
  {
    result = sub_21DBFBCCC();
    v8 = *(a1 + 36);
  }

  v51 = result;
  v52 = v8;
  v53 = v47 != 0;
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v10 = a1;
    }

    v42 = a1 + 56;
    v43 = v10;
    v40[1] = v1;
    v41 = a1 + 64;
    v44 = v5;
    v45 = a1;
    while (v9 < v5)
    {
      if (__OFADD__(v9++, 1))
      {
        goto LABEL_37;
      }

      v13 = v51;
      v48 = v52;
      v49 = v53;
      sub_21D3656F4(v51, v52, v53, a1);
      v15 = v14;
      v16 = [v14 name];
      v17 = sub_21DBFA16C();
      v19 = v18;

      v50[0] = v17;
      v50[1] = v19;
      v20 = v6;
      v21 = v46;
      sub_21DBF57AC();
      v22 = sub_21DBF582C();
      (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
      sub_21D176F0C();
      v23 = sub_21DBFBBEC();
      v25 = v24;
      v26 = v21;
      v6 = v20;
      sub_21D0CF7E0(v26, &unk_27CE65010);

      v54 = v20;
      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_21D18E678((v27 > 1), v28 + 1, 1);
        v6 = v54;
      }

      *(v6 + 16) = v28 + 1;
      v29 = v6 + 16 * v28;
      *(v29 + 32) = v23;
      *(v29 + 40) = v25;
      if (v47)
      {
        a1 = v45;
        if (!v49)
        {
          goto LABEL_42;
        }

        if (sub_21DBFBD2C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v5 = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE58);
        v11 = sub_21DBFAAEC();
        sub_21DBFBDEC();
        result = v11(v50, 0);
        if (v9 == v5)
        {
LABEL_34:
          sub_21D15746C(v51, v52, v53);
          return v6;
        }
      }

      else
      {
        a1 = v45;
        if (v49)
        {
          goto LABEL_43;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v30 = 1 << *(v45 + 32);
        if (v13 >= v30)
        {
          goto LABEL_38;
        }

        v31 = v13 >> 6;
        v32 = *(v42 + 8 * (v13 >> 6));
        if (((v32 >> v13) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v45 + 36) != v48)
        {
          goto LABEL_40;
        }

        v33 = v32 & (-2 << (v13 & 0x3F));
        if (v33)
        {
          v30 = __clz(__rbit64(v33)) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v34 = v31 << 6;
          v35 = v31 + 1;
          v36 = (v41 + 8 * v31);
          while (v35 < (v30 + 63) >> 6)
          {
            v38 = *v36++;
            v37 = v38;
            v34 += 64;
            ++v35;
            if (v38)
            {
              result = sub_21D15746C(v13, v48, 0);
              v30 = __clz(__rbit64(v37)) + v34;
              goto LABEL_33;
            }
          }

          result = sub_21D15746C(v13, v48, 0);
        }

LABEL_33:
        v39 = *(a1 + 36);
        v51 = v30;
        v52 = v39;
        v53 = 0;
        v5 = v44;
        if (v9 == v44)
        {
          goto LABEL_34;
        }
      }
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
  return result;
}

void *sub_21D4C417C(uint64_t a1, uint64_t *a2)
{
  v38 = a2;
  v3 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CFD8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v33 - v7);
  v9 = type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute(0);
  MEMORY[0x28223BE20](v9);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v14);
  v37 = &v33 - v16;
  v43 = *(a1 + 16);
  if (v43)
  {
    v17 = 0;
    v39 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v42 = a1 + v39;
    v45 = *(v15 + 72);
    v41 = (v15 + 56);
    v44 = MEMORY[0x277D84F90];
    v34 = v5;
    v35 = v3;
    v36 = v8;
    while (1)
    {
      v18 = (v42 + v45 * v17);
      v19 = *(v9 + 20);
      sub_21D4D97E4(v18 + v19, v5, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_21D4D5640(v5, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      if (EnumCaseMultiPayload)
      {
        (*v41)(v8, 1, 1, v9);
        sub_21D0CF7E0(v8, &qword_27CE5CFD8);
      }

      else
      {
        v21 = *v38;
        v22 = *(*v38 + 16);
        result = sub_21DBF8E0C();
        if (v22)
        {
          v24 = 0;
          v25 = v21 + v39;
          while (v24 < *(v21 + 16))
          {
            sub_21D4D97E4(v25, v13, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
            if (_s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0(&v13[*(v9 + 20)], v18 + v19))
            {

              v26 = *v18;
              v27 = v18[1];
              v8 = v36;
              sub_21D4D97E4(v18 + v19, v36 + *(v9 + 20), type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
              sub_21DBF79CC();
              sub_21D4D5640(v13, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
              *v8 = v26;
              v8[1] = v27;
              goto LABEL_13;
            }

            ++v24;
            result = sub_21D4D5640(v13, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
            v25 += v45;
            if (v22 == v24)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          return result;
        }

LABEL_11:

        v8 = v36;
        sub_21D4D97E4(v18, v36, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
LABEL_13:
        (*v41)(v8, 0, 1, v9);
        v28 = v37;
        sub_21D4D984C(v8, v37, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        sub_21D4D984C(v28, v40, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = sub_21D2137C8(0, v44[2] + 1, 1, v44);
        }

        v31 = v44[2];
        v30 = v44[3];
        if (v31 >= v30 >> 1)
        {
          v44 = sub_21D2137C8(v30 > 1, v31 + 1, 1, v44);
        }

        v32 = v44;
        v44[2] = v31 + 1;
        sub_21D4D984C(v40, v32 + v39 + v31 * v45, type metadata accessor for TTRReminderTitleAttributesHarvester.Attribute);
      }

      if (++v17 == v43)
      {
        return v44;
      }
    }
  }

  return MEMORY[0x277D84F90];
}