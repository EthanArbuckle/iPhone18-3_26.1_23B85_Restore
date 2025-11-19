uint64_t sub_1B48DC504(id a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for MessageIndicatorView();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x108))(result);
  }

  v5 = sub_1B48E69E4();
  v7 = v6;
  if (v5 == sub_1B48E69E4() && v7 == v8)
  {
  }

  v10 = sub_1B48E6BB4();

  if ((v10 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x108))(result);
  }

  return result;
}

void sub_1B48DC6DC(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
  v3 = a1;
  v2();
  v19 = *(v1 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_location);
  v18 = 0;
  LOBYTE(v2) = static RecentsListItemLocation.== infix(_:_:)(&v19, &v18);
  v4 = objc_opt_self();
  v5 = &selRef_systemGreenColor;
  if ((v2 & 1) == 0)
  {
    v5 = &selRef_systemBlueColor;
  }

  v6 = [v4 *v5];
  v7 = *(v1 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_recordImageView);
  v17 = v6;
  v8 = [v3 indicatorImageWithDefaultTintColor_];
  [v7 setImage_];

  if ([v3 isRead])
  {
    v9 = [objc_opt_self() labelColor];
  }

  else
  {
    v9 = v17;
  }

  v10 = v9;
  [v7 setTintColor_];

  v11 = *(v1 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_titleLabel);
  [v3 isVideo];
  sub_1B48C4C4C();

  v12 = sub_1B48E69D4();

  [v11 setText_];

  [v3 duration];
  v13 = *(v1 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel);
  if (v14 <= 0.0)
  {
    [*(v1 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel) setText_];
  }

  else
  {
    if (qword_1EB8A4290 != -1)
    {
      swift_once();
    }

    v15 = qword_1EB8A4298;
    [v3 duration];
    v16 = [v15 stringFromTimeInterval_];
    [v13 setText_];
  }

  [v1 setNeedsLayout];
}

id sub_1B48DC99C()
{
  v1 = sub_1B48DB73C();
  [v0 addSubview_];

  [v0 addSubview_];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel];

  return [v0 addSubview_];
}

void sub_1B48DCA34()
{
  v1 = objc_opt_self();
  v2 = [v1 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:1];
  if (!v2)
  {
    v2 = [v1 preferredFontDescriptorWithTextStyle_];
  }

  v3 = *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_titleLabel);
  v4 = objc_opt_self();
  v5 = [v4 fontWithDescriptor:v2 size:0.0];
  [v3 setFont_];

  v6 = *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel);
  v7 = [v4 fontWithDescriptor:v2 size:0.0];
  [v6 setFont_];
}

void sub_1B48DCB80()
{
  if ([v0 effectiveUserInterfaceLayoutDirection] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2638, &unk_1B48ECF70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B48ECEF0;
    v2 = *&v0[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_recordImageView];
    *(inited + 32) = v2;
    v3 = *&v0[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_titleLabel];
    *(inited + 40) = v3;
    v4 = *&v0[OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel];
    *(inited + 48) = v4;
    v5 = v2;
    v6 = v3;
    v7 = v4;
    v8 = 0;
    while (1)
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B8C796D0](v8, inited);
      }

      else
      {
        if (v8 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v9 = *(inited + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      [v0 bounds];
      Width = CGRectGetWidth(v16);
      [v10 frame];
      v13 = Width - v12;
      [v10 frame];
      v14 = v13 - CGRectGetMinX(v17);
      [v10 frame];
      [v10 setFrame_];

      if (v8 == 3)
      {
        swift_setDeallocating();
        v15 = *(inited + 16);
        swift_arrayDestroy();
        return;
      }
    }
  }
}

uint64_t sub_1B48DCD24()
{
  v1 = sub_1B48E6524();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - v8;
  v10 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))(v7);
  if (result)
  {
    v12 = result;
    v13 = (*((*v10 & *v0) + 0xB8))();
    v14 = [v13 mediaURL];

    if (v14)
    {
      sub_1B48E6514();

      (*(v2 + 32))(v9, v6, v1);
      v12(v9);
      sub_1B48DBC94(v12);
      return (*(v2 + 8))(v9, v1);
    }

    else
    {

      return sub_1B48DBC94(v12);
    }
  }

  return result;
}

id MessageIndicatorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void sub_1B48DD0D0(void *a1)
{
  sub_1B48DC6DC(a1);
  v2 = *(v1 + OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel);
  sub_1B48C4C4C();
  v3 = sub_1B48E69D4();

  [v2 setText_];
}

id sub_1B48DD168()
{
  v1 = sub_1B48DB73C();
  [v0 addSubview_];

  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel];

  return [v0 addSubview_];
}

void sub_1B48DD218()
{
  v1 = objc_opt_self();
  v2 = [v1 preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000 options:1];
  v3 = *MEMORY[0x1E69DDCF8];
  if (!v2)
  {
    v2 = [v1 preferredFontDescriptorWithTextStyle_];
  }

  v4 = *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_titleLabel);
  v5 = objc_opt_self();
  v6 = [v5 fontWithDescriptor:v2 size:0.0];
  [v4 setFont_];

  v7 = *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel);
  v8 = [v5 fontWithDescriptor:v2 size:0.0];
  [v7 setFont_];

  v9 = [v1 preferredFontDescriptorWithTextStyle:v3 addingSymbolicTraits:0 options:1];
  if (!v9)
  {
    v9 = [v1 preferredFontDescriptorWithTextStyle_];
  }

  v10 = OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel;
  v11 = *(v0 + OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel);
  v12 = [v5 fontWithDescriptor:v9 size:0.0];
  [v11 setFont_];

  v13 = *(v0 + v10);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 secondaryLabelColor];
  [v15 setTextColor_];
}

void sub_1B48DD45C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SensitiveMessageIndicatorView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel;
  [*&v0[OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel] sizeToFit];
  v2 = *&v0[v1];
  [v2 frame];
  [v2 setFrame_];

  v3 = *&v0[v1];
  [v0 frame];
  [*&v0[v1] frame];
  v4 = [*&v0[v1] font];
  if (v4)
  {
    v5 = v4;
    [v4 descender];

    [v3 frame];
    [v3 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1B48DD5CC(double a1, double a2)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for SensitiveMessageIndicatorView();
  objc_msgSendSuper2(&v8, sel_sizeThatFits_, a1, a2);
  v5 = OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel;
  [*&v2[OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel] sizeThatFits_];
  v6 = [*&v2[v5] font];
  if (v6)
  {
    v7 = v6;
    [v6 descender];
  }

  else
  {
    __break(1u);
  }
}

void *sub_1B48DD6F8(_BYTE *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  LOBYTE(a1) = *a1;
  v6 = OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel;
  *&v5[v6] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v8 = a1;
  return sub_1B48DBD48(&v8, a2);
}

void *sub_1B48DD770(char *a1, void *a2)
{
  v4 = *a1;
  v5 = OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel;
  *(v2 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v7 = v4;
  return sub_1B48DBD48(&v7, a2);
}

id sub_1B48DD7D8(void *a1)
{
  v3 = OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SensitiveMessageIndicatorView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1B48DD934(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1B48DD9F4()
{
  *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_textPadding) = 0x402A000000000000;
  v1 = OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_durationLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_recordImageView;
  v4 = [objc_opt_self() videoMessageRecordGlyphImage];
  v5 = [objc_opt_self() secondaryLabelColor];
  v6 = [v4 imageWithTintColor_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v7 setContentMode_];
  *(v0 + v3) = v7;
  *(v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView____lazy_storage___backgroundView) = 0;
  v8 = (v0 + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_tapHandler);
  *v8 = 0;
  v8[1] = 0;
  sub_1B48E6B64();
  __break(1u);
}

uint64_t sub_1B48DDCA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B48DDCC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

Swift::Void __swiftcall UIView.applyGlassBackground()()
{
  v0 = sub_1B48E6604();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B48E65F4();
  v2[3] = sub_1B48E6634();
  v2[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_1B48E6644();
  sub_1B48E6AD4();
}

void sub_1B48DDDA0(void *a1)
{
  v2 = sub_1B48E6604();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = a1;
  sub_1B48E65F4();
  v5[3] = sub_1B48E6634();
  v5[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_1B48E6644();
  sub_1B48E6AD4();
}

Swift::Void __swiftcall UIView.applySmallGlassBackground()()
{
  v0 = sub_1B48E65C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B48E6604();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v12[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B48E65E4();
  (*(v1 + 104))(v4, *MEMORY[0x1E69DC350], v0);
  sub_1B48E65D4();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v10, v5);
  v12[3] = sub_1B48E6634();
  v12[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_1B48E6644();
  sub_1B48E6AD4();
}

Swift::Void __swiftcall UIView.applyClearGlassBackgroundWithTintColor(_:)(UIColor a1)
{
  v1 = sub_1B48E6634();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B48E6604();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16[-1] - v12;
  sub_1B48E65E4();
  sub_1B48E65B4();
  v14 = *(v7 + 8);
  v14(v11, v6);
  (*(v7 + 16))(v11, v13, v6);
  sub_1B48E6644();
  v16[3] = v1;
  v16[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_1B48E6614();
  (*(v2 + 8))(v5, v1);
  sub_1B48E6AD4();
  v14(v13, v6);
}

void sub_1B48DE25C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UIView.applyClearGlassBackgroundWithTintColor(_:)(v4);
}

void sub_1B48DE2DC(void *a1)
{
  v1 = a1;
  UIView.applyFlexibleSmallGlassBackground()();
}

uint64_t sub_1B48DE33C(void (*a1)(uint64_t))
{
  v20 = a1;
  v1 = sub_1B48E65C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B48E6604();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = sub_1B48E6634();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20(v15);
  (*(v2 + 104))(v5, *MEMORY[0x1E69DC350], v1);
  sub_1B48E65D4();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v11, v6);
  sub_1B48E6644();
  v21[3] = v12;
  v21[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_1B48E6624();
  (*(v13 + 8))(v17, v12);
  return sub_1B48E6AD4();
}

void sub_1B48DE5D8(void *a1)
{
  v1 = a1;
  UIView.applyFlexibleSmallRegularGlassBackground()();
}

void sub_1B48DE638(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UIView.applyFlexibleClearGlassBackgroundWithTintColor(_:)(v4);
}

uint64_t sub_1B48DE6B8(uint64_t a1, void (*a2)(uint64_t))
{
  v23[1] = a1;
  v3 = sub_1B48E6634();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - v9;
  v11 = sub_1B48E6604();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v23 - v18;
  a2(v17);
  sub_1B48E65B4();
  v20 = *(v12 + 8);
  v20(v16, v11);
  (*(v12 + 16))(v16, v19, v11);
  sub_1B48E6644();
  sub_1B48E6614();
  v21 = *(v4 + 8);
  v21(v8, v3);
  v24[3] = v3;
  v24[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_1B48E6624();
  v21(v10, v3);
  sub_1B48E6AD4();
  return (v20)(v19, v11);
}

void sub_1B48DE910(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UIView.applyGlassBackgroundWithTintColor(_:)(v4);
}

Swift::Void __swiftcall UIView.applyFlexibleClearGlassWithShadowBackground()()
{
  v0 = sub_1B48E6634();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v20[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B48E65C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B48E6604();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20[-1] - v16;
  sub_1B48E65F4();
  (*(v6 + 104))(v9, *MEMORY[0x1E69DC350], v5);
  sub_1B48E65D4();
  (*(v6 + 8))(v9, v5);
  v18 = *(v11 + 8);
  v18(v15, v10);
  (*(v11 + 16))(v15, v17, v10);
  sub_1B48E6644();
  v20[3] = v0;
  v20[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_1B48E6624();
  (*(v1 + 8))(v4, v0);
  sub_1B48E6AD4();
  v18(v17, v10);
}

void sub_1B48DEC40(void *a1)
{
  v1 = a1;
  UIView.applyFlexibleClearGlassWithShadowBackground()();
}

id sub_1B48DECB0()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v1;
}

uint64_t RecentsListItemLocation.hashValue.getter()
{
  v1 = *v0;
  sub_1B48E6C04();
  MEMORY[0x1B8C797D0](v1);
  return sub_1B48E6C24();
}

id sub_1B48DEDFC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC918]);

  return [v0 initWithFrame_];
}

id sub_1B48DEE6C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);

  return [v0 init];
}

id sub_1B48DEEA4()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

void sub_1B48DEEE8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

void *sub_1B48DEF80()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void sub_1B48DEFC4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

void *sub_1B48DF05C()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void sub_1B48DF0A0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

void *sub_1B48DF138()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_1B48DF17C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_1B48DF214@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B48DF268(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 384);
  v5 = *a1;
  return v4(v2, v3);
}

void *sub_1B48DF2D4()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = v1;
  return v1;
}

void sub_1B48DF31C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_1B48DF3D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result;
  return result;
}

id sub_1B48DF484()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    if (qword_1EB8A2B08 != -1)
    {
      swift_once();
    }

    if ([qword_1EB8A2B10 recentsCallTapTargetsEnabled])
    {
      v3 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
      LODWORD(v4) = 1148846080;
      [v3 tp:v4 setCHCRPriority:?];
    }

    else
    {
      v3 = [objc_opt_self() buttonWithType_];
      [v3 bounds];
      Height = CGRectGetHeight(v11);
      [v3 bounds];
      Width = CGRectGetWidth(v12);
      if (Height <= Width)
      {
        Height = Width;
      }

      v7 = [v3 layer];

      [v7 setCornerRadius_];
    }

    v8 = *(v0 + 136);
    *(v0 + 136) = v3;
    v2 = v3;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t sub_1B48DF5E8(uint64_t a1)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;
  return MEMORY[0x1EEE66BB8]();
}

void (*sub_1B48DF5F4(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1B48DF484();
  return sub_1B48DF63C;
}

void sub_1B48DF63C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 136);
  *(v1 + 136) = v2;
}

uint64_t sub_1B48DF64C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 448))();
  *a2 = result;
  return result;
}

id sub_1B48DF6FC()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 144);
  }

  else
  {
    v3 = [objc_opt_self() buttonWithType_];
    v4 = [objc_opt_self() secondaryLabelColor];
    [v3 setTintColor_];

    v5 = v3;
    [v5 bounds];
    Height = CGRectGetHeight(v12);
    [v5 bounds];
    Width = CGRectGetWidth(v13);
    if (Height <= Width)
    {
      Height = Width;
    }

    v8 = [v5 layer];

    [v8 setCornerRadius_];
    v9 = *(v0 + 144);
    *(v0 + 144) = v5;
    v2 = v5;

    v1 = 0;
  }

  v10 = v1;
  return v2;
}

uint64_t sub_1B48DF828(uint64_t a1)
{
  v2 = *(v1 + 144);
  *(v1 + 144) = a1;
  return MEMORY[0x1EEE66BB8]();
}

void (*sub_1B48DF834(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1B48DF6FC();
  return sub_1B48DF87C;
}

void sub_1B48DF87C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 144);
  *(v1 + 144) = v2;
}

uint64_t sub_1B48DF8AC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 480))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1B48E4AA4;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1B48DF944(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B48E4A84;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 488);
  sub_1B489AAF0(v3);
  return v7(v6, v5);
}

uint64_t sub_1B48DFA04()
{
  swift_beginAccess();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  sub_1B489AAF0(v1);
  return v1;
}

uint64_t sub_1B48DFA54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 184);
  v6 = *(v2 + 192);
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return sub_1B48DBC94(v5);
}

uint64_t sub_1B48DFAF8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 504))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1B48E498C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1B48DFB90(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B48E4964;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 512);
  sub_1B489AAF0(v3);
  return v7(v6, v5);
}

uint64_t sub_1B48DFC50()
{
  swift_beginAccess();
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  sub_1B489AAF0(v1);
  return v1;
}

uint64_t sub_1B48DFCA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 200);
  v6 = *(v2 + 208);
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return sub_1B48DBC94(v5);
}

uint64_t sub_1B48DFD44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 528))();
  *a2 = result;
  return result;
}

uint64_t sub_1B48DFD98(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 536);
  v4 = *a1;
  return v3(v2);
}

void *sub_1B48DFDF8()
{
  swift_beginAccess();
  v1 = *(v0 + 216);
  v2 = v1;
  return v1;
}

void sub_1B48DFE3C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 216);
  *(v1 + 216) = a1;
}

void sub_1B48DFEE0()
{
  v1 = v0;
  v2 = swift_beginAccess();
  if (v0[224] <= 1u)
  {
    if (!v0[224])
    {
      v3 = sub_1B48E2E08();
      v4 = [v3 superview];
      if (v4)
      {
      }

      else
      {
        sub_1B48E2C54(v3);
      }

      v7 = (*(*v0 + 352))();
      sub_1B48E025C(v3, v7);

      goto LABEL_29;
    }

    v10 = (*v0 + 376);
    v11 = *v10;
    v12 = (*v10)(v2);
    if (!v12)
    {
      return;
    }

    v14 = v12;
    v15 = v13;
    ObjectType = swift_getObjectType();
    v17 = (*(v15 + 8))(ObjectType, v15);
    if (v17 >> 62)
    {
      v27 = sub_1B48E6B74();

      if (v27)
      {
LABEL_13:
        v20 = v11(v19);
        if (v20)
        {
          v21 = v20;
          v22 = [v20 view];

          if (v22)
          {
            v23 = [v22 superview];
            if (v23)
            {
              v24 = v23;

              v22 = v24;
            }

            else
            {
              sub_1B48E2C54(v22);
            }
          }
        }

        v25 = [v14 view];
        if (!v25)
        {
          __break(1u);
          return;
        }

        v26 = v25;
        v7 = (*(*v1 + 352))();
        sub_1B48E025C(v26, v7);

        goto LABEL_29;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v18)
      {
        goto LABEL_13;
      }
    }

    v28 = sub_1B48E2E08();
    v29 = [v28 superview];
    if (v29)
    {
    }

    else
    {
      sub_1B48E2C54(v28);
    }

    v7 = (*(*v1 + 352))();
    sub_1B48E025C(v28, v7);

    goto LABEL_29;
  }

  if (v0[224] == 2)
  {
    v5 = (*(*v0 + 376))(v2);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 view];

      if (v7)
      {
        v8 = [v7 superview];
        if (v8)
        {
          v9 = v8;

          v7 = v9;
        }

        else
        {
          sub_1B48E2C54(v7);
        }

LABEL_29:
      }
    }
  }
}

void sub_1B48E025C(void *a1, void *a2)
{
  v3 = *(*v2 + 280);
  if (a2)
  {
    v5 = a2;
    v6 = v3();
    [v6 setImage_];

    v7 = v3();
    v8 = [v7 superview];

    if (!v8 || (sub_1B48E49B4(0, &qword_1EB8A2138, 0x1E69DD250), v9 = a1, v10 = sub_1B48E6AE4(), v8, v9, (v10 & 1) == 0))
    {
      v11 = v3();
      [v11 removeFromSuperview];
    }

    v12 = v3();
    v14 = [v12 superview];

    if (!v14)
    {
      v13 = v3();
      [a1 addSubview_];

      v14 = v3();
      [v14 setFrame_];
    }
  }

  else
  {
    v14 = v3();
    [v14 removeFromSuperview];
  }
}

uint64_t sub_1B48E0460@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 224);
  return result;
}

void sub_1B48E04A4(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 224) = v2;
  sub_1B48DFEE0();
}

uint64_t sub_1B48E0590@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB8A2B00;
  return result;
}

uint64_t sub_1B48E05DC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB8A2B00 = v1;
  return result;
}

id sub_1B48E0624()
{
  result = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  qword_1EB8A2B10 = result;
  return result;
}

char *RecentsListItemViewHelper.__allocating_init(parentView:location:)(void *a1, char *a2)
{
  swift_allocObject();
  v4 = sub_1B48E34B8(a1, a2);

  return v4;
}

char *RecentsListItemViewHelper.init(parentView:location:)(void *a1, char *a2)
{
  v3 = sub_1B48E34B8(a1, a2);

  return v3;
}

void sub_1B48E06E4()
{
  v1 = objc_opt_self();
  v2 = [v1 telephonyUIBodyShortEmphasizedFont];
  v3 = [v2 _fontAdjustedForCurrentContentSizeCategory];

  v4 = [v1 telephonyUISubheadlineShortFont];
  v5 = [v4 _fontAdjustedForCurrentContentSizeCategory];

  [*(v0 + 16) setFont_];
  [*(v0 + 48) setFont_];
  [*(v0 + 24) setFont_];
  [*(v0 + 32) setFont_];
  [*(v0 + 40) setFont_];

  [*(v0 + 152) setSpacing_];
  v6 = *(v0 + 160);
  v7 = *(v0 + 24);
  [v7 effectiveFirstBaselineOffsetFromTop];
  [v6 setCustomFirstBaselineOffsetFromTop_];
  v8 = *(v0 + 168);
  v9 = [v7 font];
  if (v9)
  {
    v10 = v9;
    [v9 _scaledValueForValue_useLanguageAwareScaling_];
    v12 = v11;
  }

  else
  {
    v12 = 19.0;
  }

  [v8 setRowSpacing_];
  v13 = *(v0 + 232);
  v14 = [v13 traitCollection];
  v15 = [v14 isPreferredContentSizeCategoryAccessible];

  v16 = 10.0;
  v17 = 0.0;
  if (v15)
  {
    v16 = 0.0;
  }

  (*(*v0 + 552))(&v45, [v8 setColumnSpacing_]);
  v18 = v45;
  if (v45 == 3)
  {
    v19 = [*(v0 + 24) font];
    if (!v19)
    {
      goto LABEL_15;
    }

    v20 = v19;
LABEL_13:
    [v20 _scaledValueForValue_useLanguageAwareScaling_];
    goto LABEL_14;
  }

  v21 = [*(v0 + 24) font];
  v20 = v21;
  if (v18 > 1)
  {
    if (!v21)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v21)
  {
    [v21 _scaledValueForValue_useLanguageAwareScaling_];
LABEL_14:
    v17 = v22;

    goto LABEL_15;
  }

  v17 = 4.0;
LABEL_15:
  [v6 setSpacing_];
  sub_1B48E300C();
  v23 = *(v0 + 176);
  v24 = [v23 arrangedSubviews];
  if (!v24)
  {
    goto LABEL_25;
  }

  v25 = v24;
  sub_1B48E49B4(0, &qword_1EB8A2138, 0x1E69DD250);
  v26 = sub_1B48E6A14();

  if (v26 >> 62)
  {
    if (sub_1B48E6B74())
    {
      goto LABEL_18;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

LABEL_18:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1B8C796D0](0, v26);
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v27 = *(v26 + 32);
  }

  v28 = v27;

  [v28 setLayoutMargins_];

LABEL_25:
  v29 = [v13 traitCollection];
  v30 = [v29 isPreferredContentSizeCategoryAccessible];

  if (v30)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 16.0;
  }

  [v23 setDirectionalLayoutMargins_];
  v32 = [v13 traitCollection];
  v33 = [v32 isPreferredContentSizeCategoryAccessible];

  v34 = *(v0 + 40);
  if (v33)
  {
    v35 = *(v0 + 40);
    [v34 setTextAlignment_];
    [v23 setAxis_];
    v36 = [v35 font];
    if (v36)
    {
      v37 = v36;
      [v36 _scaledValueForValue_useLanguageAwareScaling_];
      v39 = v38;
    }

    else
    {
      v39 = 20.0;
    }

    [v7 effectiveBaselineOffsetFromContentBottom];
    v42 = v39 - v43;
  }

  else
  {
    [v34 setTextAlignment_];
    [v23 setAxis_];
    v40 = [v13 traitCollection];
    v41 = [v40 isPreferredContentSizeCategoryAccessible];

    v42 = 6.0;
    if (v41)
    {
      v42 = 0.0;
    }
  }

  v44 = (*(*v0 + 448))([v23 setSpacing_]);
  [v44 setNeedsUpdateConfiguration];
}

uint64_t sub_1B48E0C78(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2848, &unk_1B48ECFD0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v126 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v124 = &v123 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v123 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v123 - v13;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 8))(v15, v16);
  (*(*v1 + 360))(v17);
  v18 = v1[2];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v20 + 24))(v19, v20);
  v127 = v14;
  if (v21)
  {
    v22 = sub_1B48E69D4();
  }

  else
  {
    v22 = 0;
  }

  [v18 setText_];

  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = (*(v24 + 56))(v23, v24);
  [v18 setTextColor_];

  v26 = v2[6];
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  (*(v28 + 48))(v27, v28);
  if (v29)
  {
    v30 = sub_1B48E69D4();
  }

  else
  {
    v30 = 0;
  }

  [v26 setText_];

  v31 = [v18 textColor];
  [v26 setTextColor_];

  v32 = v2[3];
  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  (*(v34 + 32))(v33, v34);
  if (v35)
  {
    v36 = sub_1B48E69D4();
  }

  else
  {
    v36 = 0;
  }

  [v32 setText_];

  v37 = v2[7];
  sub_1B48E3DA4(a1);
  v39 = v38;
  [v37 setImage_];

  v40 = [v37 image];
  v41 = v40;
  if (v40)
  {
  }

  v125 = v32;
  [v37 setHidden_];
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  (*(v43 + 16))(v130, v42, v43);
  v44 = v130[0];
  swift_beginAccess();
  *(v2 + 224) = v44;
  sub_1B48DFEE0();
  [v26 setHidden_];
  if (qword_1EB8A2B08 != -1)
  {
    swift_once();
  }

  v45 = qword_1EB8A2B10;
  if ([qword_1EB8A2B10 recentsCallTapTargetsEnabled])
  {
    v46 = objc_opt_self();
    v47 = [v46 configurationWithPointSize:9 weight:33.0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2638, &unk_1B48ECF70);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1B48ECFA0;
    v49 = objc_opt_self();
    *(v48 + 32) = [v49 systemGreenColor];
    *(v48 + 40) = [v49 quaternarySystemFillColor];
    sub_1B48E49B4(0, &qword_1EB8A2850, 0x1E69DC888);
    v50 = sub_1B48E6A04();

    v51 = [v46 configurationWithPaletteColors_];

    v52 = [v47 configurationByApplyingConfiguration_];
    v53 = a1[3];
    v54 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v53);
    v55 = (*(v54 + 72))(v53, v54);
    if ((v56 & 1) != 0 || v55 != 2)
    {
      (*(*v2 + 552))(v130, v55);
      if (LOBYTE(v130[0]) != 3)
      {
        v129 = v130[0];
        v128 = 0;
        sub_1B48C48C8();
        sub_1B48E69C4();
      }
    }

    v57 = (*v2 + 424);
    v58 = *v57;
    v59 = (*v57)();
    v60 = v52;
    v61 = sub_1B48E69D4();

    v62 = [objc_opt_self() systemImageNamed:v61 withConfiguration:v60];

    [v59 setImage:v62 forState:0];
    v63 = v58();
    [v63 sizeToFit];
  }

  v64 = a1[3];
  v65 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v64);
  v66 = (*(v65 + 96))(v64, v65);
  v67 = v127;
  if (v66)
  {
    v68 = a1[3];
    v69 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v68);
    (*(v69 + 104))(v68, v69);
  }

  else
  {
    v70 = sub_1B48E6554();
    (*(*(v70 - 8) + 56))(v67, 1, 1, v70);
  }

  swift_beginAccess();
  v71 = byte_1EB8A2B00;
  v72 = v2[4];
  v74 = a1[3];
  v73 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v74);
  if (v71 == 1)
  {
    (*(v73 + 112))(v74, v73);
    if (v75)
    {
      v76 = sub_1B48E69D4();
    }

    else
    {
      v76 = 0;
    }

    [v72 setText_];

    v79 = v2[5];
    sub_1B48E4240(v67, v12);
    v80 = sub_1B48E6554();
    v81 = *(v80 - 8);
    v82 = 0;
    if ((*(v81 + 48))(v12, 1, v80) != 1)
    {
      v82 = sub_1B48E6534();
      (*(v81 + 8))(v12, v80);
    }

    [v79 setDate_];
    v83 = v126;
  }

  else
  {
    (*(v73 + 120))(v74, v73);
    if (v77)
    {
      v78 = sub_1B48E69D4();
    }

    else
    {
      v78 = 0;
    }

    v83 = v126;
    v84 = v124;
    [v72 setText_];

    v79 = v2[5];
    v85 = [v72 text];
    if (v85)
    {

      v86 = sub_1B48E6554();
      (*(*(v86 - 8) + 56))(v84, 1, 1, v86);
      v82 = 0;
    }

    else
    {
      sub_1B48E4240(v67, v84);
      v87 = sub_1B48E6554();
      v88 = *(v87 - 8);
      v82 = 0;
      if ((*(v88 + 48))(v84, 1, v87) != 1)
      {
        v82 = sub_1B48E6534();
        (*(v88 + 8))(v84, v87);
      }
    }

    [v79 setDate_];
  }

  if (byte_1EB8A2B00 == 1)
  {
    v89 = [v79 date];
    v90 = v89 == 0;
    if (v89)
    {
      sub_1B48E6544();

      v91 = 0;
    }

    else
    {
      v91 = 1;
    }

    v92 = v89 != 0;
    v93 = sub_1B48E6554();
    (*(*(v93 - 8) + 56))(v83, v91, 1, v93);
    sub_1B48E42B0(v83);
  }

  else
  {
    v90 = 0;
    v92 = 0;
  }

  [v79 setHidden_];
  [v125 setHidden_];
  v94 = a1[3];
  v95 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v94);
  v96 = (*(v95 + 88))(v94, v95);
  if ((v97 & 1) != 0 || v96 != 1)
  {
    sub_1B48E1DD8();
  }

  else
  {
    sub_1B48E1B60();
  }

  v98 = a1[3];
  v99 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v98);
  v100 = (*(v99 + 40))(v98, v99);
  if (v101)
  {
    v102 = HIBYTE(v101) & 0xF;
    if ((v101 & 0x2000000000000000) == 0)
    {
      v102 = v100 & 0xFFFFFFFFFFFFLL;
    }

    if (v102)
    {
      sub_1B48E1F4C();

      goto LABEL_55;
    }
  }

  sub_1B48E2208();
LABEL_55:
  if ([v45 videoMessagingEnabled])
  {
    v103 = a1[3];
    v104 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v103);
    v105 = (*(v104 + 128))(v103, v104);
    if (v105)
    {
      v106 = v105;
      v107 = (*(*v2 + 528))();
      if (v107)
      {
        v108 = v107;
        v109 = [v107 superview];
        if (v109)
        {

          (*((*MEMORY[0x1E69E7D40] & *v108) + 0xF0))(v106);
          goto LABEL_68;
        }

        v106 = v108;
      }
    }

    v110 = a1[3];
    v111 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v110);
    v112 = (*(v111 + 128))(v110, v111);
    if (!v112)
    {
      v121 = (*(*v2 + 528))();
      if (!v121)
      {
        goto LABEL_70;
      }

      v108 = v121;
      v122 = [v121 superview];
      if (v122)
      {

        [v108 removeFromSuperview];
        (*(*v2 + 536))(0);
      }

      goto LABEL_69;
    }

    v106 = v112;
    v113 = a1[3];
    v114 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v113);
    v115 = (*(v114 + 128))(v113, v114);
    if (v115 && (v116 = v115, v117 = [v115 isSensitive], v116, v117))
    {
      type metadata accessor for SensitiveMessageIndicatorView();
      v129 = *(v2 + 240);
      v118 = sub_1B48DD6F8(&v129, v106);
    }

    else
    {
      type metadata accessor for MessageIndicatorView();
      v129 = *(v2 + 240);
      v118 = sub_1B48DBD04(&v129, v106);
    }

    v119 = v2[29];
    v108 = v118;
    [v119 addSubview_];
    (*(*v2 + 536))(v108);
LABEL_68:

LABEL_69:
  }

LABEL_70:
  sub_1B48E06E4();
  return sub_1B48E42B0(v67);
}

void sub_1B48E1B60()
{
  v1 = (*(*v0 + 304))();
  if (v1)
  {
    v13 = v1;
  }

  else
  {
    v2 = [objc_opt_self() recentsVerifiedCheckmarkImage];
    v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    v4 = objc_opt_self();
    v13 = v3;
    v5 = [v4 dynamicTertiaryLabelColor];
    [v13 setTintColor_];

    (*(*v0 + 312))(v13);
  }

  v6 = v0[20];
  v7 = [v6 arrangedSubviews];
  if (v7)
  {
    v8 = v7;
    sub_1B48E49B4(0, &qword_1EB8A2138, 0x1E69DD250);
    v9 = sub_1B48E6A14();

    v14 = v13;
    v12[2] = &v14;
    v10 = MEMORY[0x1EEE9AC00](v13);
    LOBYTE(v8) = sub_1B48E3390(sub_1B48E49FC, v12, v9);

    if ((v8 & 1) == 0)
    {
      [v6 insertArrangedSubview:v10 atIndex:{objc_msgSend(v6, sel_indexOfArrangedSubview_, v0[3])}];
      LODWORD(v11) = 1148846080;
      [v10 tp:v11 setCHCRPriority:?];
    }
  }

  else
  {
  }
}

void sub_1B48E1DD8()
{
  v1 = (*(*v0 + 304))();
  if (v1)
  {
    v2 = v1;
    v3 = v0[20];
    v4 = [v3 arrangedSubviews];
    if (v4)
    {
      v5 = v4;
      sub_1B48E49B4(0, &qword_1EB8A2138, 0x1E69DD250);
      v6 = sub_1B48E6A14();

      v9 = v2;
      MEMORY[0x1EEE9AC00](v7);
      v8[2] = &v9;
      LOBYTE(v5) = sub_1B48E3390(sub_1B48E4A88, v8, v6);

      if (v5)
      {
        [v3 removeArrangedSubview_];
      }
    }

    [v2 removeFromSuperview];
    (*(*v0 + 312))(0);
  }
}

void sub_1B48E1F4C()
{
  v1 = (*(*v0 + 328))();
  if (v1)
  {
    v16 = v1;
    v2 = sub_1B48E69D4();
    [v16 setTitle_];
  }

  else
  {
    v3 = objc_allocWithZone(TPBadgeView);
    v4 = sub_1B48E69D4();
    v5 = [v3 initWithTitle_];

    v6 = objc_opt_self();
    v16 = v5;
    v7 = [v6 dynamicTertiaryLabelColor];
    [v16 setTintColor_];

    (*(*v0 + 336))(v16);
  }

  v8 = v0[20];
  v9 = [v8 arrangedSubviews];
  if (v9)
  {
    v10 = v9;
    sub_1B48E49B4(0, &qword_1EB8A2138, 0x1E69DD250);
    v11 = sub_1B48E6A14();

    v17 = v16;
    v15[2] = &v17;
    v12 = MEMORY[0x1EEE9AC00](v16);
    v13 = sub_1B48E3390(sub_1B48E4A88, v15, v11);

    if ((v13 & 1) == 0)
    {
      [v8 insertArrangedSubview:v12 atIndex:1];
      [v8 setAlignment:3 forView:v12 inAxis:0];
      LODWORD(v14) = 1148846080;
      [v12 tp:v14 setCHCRPriority:?];
    }
  }

  else
  {
  }
}

void sub_1B48E2208()
{
  v1 = (*(*v0 + 328))();
  if (v1)
  {
    v2 = v1;
    v3 = v0[20];
    v4 = [v3 arrangedSubviews];
    if (v4)
    {
      v5 = v4;
      sub_1B48E49B4(0, &qword_1EB8A2138, 0x1E69DD250);
      v6 = sub_1B48E6A14();

      v9 = v2;
      MEMORY[0x1EEE9AC00](v7);
      v8[2] = &v9;
      LOBYTE(v5) = sub_1B48E3390(sub_1B48E4A88, v8, v6);

      if (v5)
      {
        [v3 removeArrangedSubview_];
      }
    }

    [v2 removeFromSuperview];
    (*(*v0 + 336))(0);
  }
}

void sub_1B48E237C(char a1, void *a2)
{
  v5 = v2[29];
  [v5 bounds];
  v7 = v6;
  [v5 bounds];
  Width = CGRectGetWidth(v40);
  if ((a1 & 1) == 0)
  {
    [v5 directionalLayoutMargins];
    v10 = Width - v9;
    [a2 bounds];
    Width = v10 - CGRectGetWidth(v41);
  }

  v11 = v2[22];
  [v11 sizeThatFits_];
  [v11 setFrame_];
  [v11 center];
  [a2 center];
  [a2 setCenter_];
  if (qword_1EB8A2B08 != -1)
  {
    swift_once();
  }

  if ([qword_1EB8A2B10 recentsCallTapTargetsEnabled])
  {
    [a2 center];
    [a2 setCenter_];
  }

  [a2 frame];
  [a2 setFrame_];
  v13 = 1.0;
  if (a1)
  {
    v13 = 0.0;
  }

  v14 = (*(*v2 + 528))([a2 setAlpha_]);
  if (v14)
  {
    v15 = v14;
    [v5 bounds];
    [v15 sizeThatFits_];
    v19 = v18;
    v20 = v15;
    [v11 frame];
    v21 = CGRectGetMaxY(v42) + -2.0;
    [v5 bounds];
    [v20 setFrame_];
  }

  if ([v5 effectiveUserInterfaceLayoutDirection] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2638, &unk_1B48ECF70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B48ECFA0;
    *(inited + 32) = a2;
    *(inited + 40) = v11;
    v23 = a2;
    v24 = v11;
    if ((inited & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    for (i = v23; ; i = MEMORY[0x1B8C796D0](0, inited))
    {
      v26 = i;
      [v5 bounds];
      v27 = CGRectGetWidth(v44);
      [v26 frame];
      v29 = v27 - v28;
      [v26 frame];
      v30 = v29 - CGRectGetMinX(v45);
      [v26 frame];
      [v26 setFrame_];

      if ((inited & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
      {
        v31 = *(inited + 40);
        goto LABEL_18;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v31 = MEMORY[0x1B8C796D0](1, inited);
LABEL_18:
    v32 = v31;
    [v5 bounds];
    v33 = CGRectGetWidth(v46);
    [v32 frame];
    v35 = v33 - v34;
    [v32 frame];
    v36 = v35 - CGRectGetMinX(v47);
    [v32 frame];
    [v32 setFrame_];

    swift_setDeallocating();
    v37 = *(inited + 16);
    v38 = swift_arrayDestroy();
    v39 = (*(*v2 + 448))(v38);
    [v39 setNeedsUpdateConfiguration];
  }
}

double sub_1B48E27DC(char a1, void *a2, double a3, double a4)
{
  v8 = *(v4 + 232);
  [v8 bounds];
  Width = CGRectGetWidth(v20);
  if ((a1 & 1) == 0)
  {
    [v8 directionalLayoutMargins];
    v11 = Width - v10;
    [a2 bounds];
    Width = v11 - CGRectGetWidth(v21);
  }

  [v8 bounds];
  if (v12 >= Width)
  {
    v13 = Width;
  }

  else
  {
    v13 = v12;
  }

  v14 = [*(v4 + 176) sizeThatFits_];
  v16 = v15;
  v17 = (*(*v4 + 528))(v14);
  if (v17)
  {
    v18 = v17;
    [v17 sizeThatFits_];
  }

  return v16;
}

uint64_t RecentsListItemViewHelper.deinit()
{
  v1 = *(v0 + 192);
  sub_1B48DBC94(*(v0 + 184));
  v2 = *(v0 + 208);
  sub_1B48DBC94(*(v0 + 200));

  return v0;
}

uint64_t RecentsListItemViewHelper.__deallocating_deinit()
{
  RecentsListItemViewHelper.deinit();

  return swift_deallocClassInstance();
}

id sub_1B48E2A04(void *a1, double a2)
{
  LODWORD(a2) = 1148846080;
  [a1 setContentCompressionResistancePriority:1 forAxis:a2];
  LODWORD(v3) = 1148846080;
  [a1 setContentHuggingPriority:1 forAxis:v3];
  [a1 setNumberOfLines_];

  return [a1 setLineBreakMode_];
}

void sub_1B48E2A94(void *a1, double a2)
{
  LODWORD(a2) = 1148846080;
  [a1 setContentCompressionResistancePriority:1 forAxis:a2];
  LODWORD(v3) = 1148846080;
  [a1 setContentHuggingPriority:1 forAxis:v3];
  [a1 setNumberOfLines_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.6 alpha:1.0];
  [a1 setTextColor_];
}

id sub_1B48E2B60()
{
  v1 = *(v0 + 40);
  if ((*(v0 + 240) & 1) != 0 || UIAccessibilityIsReduceTransparencyEnabled())
  {
    v2 = 0;
  }

  else
  {
    v2 = 3;
  }

  [v1 _setDrawsAsBackdropOverlayWithBlendMode_];
  v3 = *(v0 + 24);
  if ((*(v0 + 240) & 1) != 0 || UIAccessibilityIsReduceTransparencyEnabled())
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  [v3 _setDrawsAsBackdropOverlayWithBlendMode_];
  v5 = *(v0 + 32);
  if ((*(v0 + 240) & 1) != 0 || UIAccessibilityIsReduceTransparencyEnabled())
  {
    v6 = 0;
  }

  else
  {
    v6 = 3;
  }

  return [v5 _setDrawsAsBackdropOverlayWithBlendMode_];
}

void sub_1B48E2C54(void *a1)
{
  v3 = [a1 superview];
  if (v3)
  {
  }

  else
  {
    v4 = *(v1 + 168);
    if ([v4 numberOfColumns] == 2)
    {
      v5 = [v4 arrangedSubviewInColumnAtIndex:0 rowAtIndex:0];
      [v4 replaceArrangedSubview:a1 inColumnAtIndex:0 rowAtIndex:0];
      [v5 removeFromSuperview];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2638, &unk_1B48ECF70);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1B48ECFB0;
      *(v6 + 32) = a1;
      sub_1B48E49B4(0, &qword_1EB8A2138, 0x1E69DD250);
      v7 = a1;
      v5 = sub_1B48E6A04();

      v8 = [v4 insertColumnAtIndex:0 withArrangedSubviews:v5];
      swift_unknownObjectRelease();
    }

    LODWORD(v9) = 1148846080;
    [a1 tp:v9 setCHCRPriority:?];
    [v4 setAlignment:3 forView:a1 inAxis:1];

    sub_1B48E300C();
  }
}

id sub_1B48E2E08()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 128);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    v4 = [v3 layer];
    [v4 setCornerRadius_];

    v5 = objc_opt_self();
    v6 = [v5 lightGrayColor];
    v7 = [v6 colorWithAlphaComponent_];

    [v3 setBackgroundColor_];
    v8 = sub_1B48E69D4();
    v9 = [objc_opt_self() systemImageNamed_];

    v10 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    v11 = v10;
    [v3 center];
    [v11 setCenter_];

    v12 = [v5 whiteColor];
    [v11 setTintColor_];

    [v3 addSubview_];
    v13 = *(v0 + 128);
    *(v0 + 128) = v3;
    v2 = v3;

    v1 = 0;
  }

  v14 = v1;
  return v2;
}

void sub_1B48E300C()
{
  v1 = *(v0 + 168);
  if ([v1 numberOfColumns] < 2)
  {
    return;
  }

  v2 = (*v0 + 376);
  v3 = *v2;
  v4 = (*v2)();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 view];

    if (!v6)
    {
      __break(1u);
      goto LABEL_16;
    }

    [v6 setMinimumLayoutSize_];
  }

  v7 = v3();
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = [v7 view];

  if (!v9)
  {
LABEL_16:
    __break(1u);
    return;
  }

  [v9 setMaximumLayoutSize_];

LABEL_8:
  v10 = *(v0 + 128);
  if (v10)
  {
    [v10 setMinimumLayoutSize_];
    v11 = *(v0 + 128);
    if (v11)
    {
      [v11 setMaximumLayoutSize_];
    }
  }

  v12 = [v1 columnAtIndex_];
  v13 = [*(v0 + 232) traitCollection];
  v14 = [v13 isPreferredContentSizeCategoryAccessible];

  [v12 setHidden_];

  swift_unknownObjectRelease();
}

uint64_t sub_1B48E3390(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1B8C796D0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1B48E6B74();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

char *sub_1B48E34B8(void *a1, char *a2)
{
  v4 = *a2;
  *(v2 + 2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(v2 + 3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(v2 + 4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(v2 + 5) = [objc_allocWithZone(MEMORY[0x1E69DC918]) initWithFrame_];
  *(v2 + 6) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(v2 + 7) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *(v2 + 8) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 13) = 0;
  *(v2 + 7) = vdupq_n_s64(0x4046800000000000uLL);
  *(v2 + 17) = 0;
  *(v2 + 18) = 0;
  *(v2 + 16) = 0;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 27) = 0;
  v2[224] = 3;
  *(v2 + 29) = a1;
  v2[240] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2638, &unk_1B48ECF70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B48ECFA0;
  v6 = *(v2 + 2);
  v7 = *(v2 + 6);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = objc_allocWithZone(MEMORY[0x1E698B730]);
  sub_1B48E49B4(0, &qword_1EB8A2138, 0x1E69DD250);
  v9 = a1;
  v10 = v6;
  v11 = v7;
  v12 = sub_1B48E6A04();

  v13 = [v8 initWithArrangedSubviews_];

  *(v2 + 19) = v13;
  swift_beginAccess();
  if (byte_1EB8A2B00 == 1)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B48ECEF0;
    v15 = *(v2 + 7);
    v16 = *(v2 + 3);
    *(v14 + 32) = v15;
    *(v14 + 40) = v16;
    v17 = *(v2 + 5);
    *(v14 + 48) = v17;
    v18 = objc_allocWithZone(MEMORY[0x1E698B730]);
    v19 = v15;
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1B48ECFA0;
    v16 = *(v2 + 7);
    v17 = *(v2 + 3);
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    v18 = objc_allocWithZone(MEMORY[0x1E698B730]);
  }

  v21 = v16;
  v22 = v17;
  v23 = sub_1B48E6A04();

  v24 = [v18 initWithArrangedSubviews_];

  *(v2 + 20) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2860, "RC");
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B48EBF20;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B48ECFB0;
  v27 = *(v2 + 19);
  *(v26 + 32) = v27;
  *(v25 + 32) = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B48ECFB0;
  v29 = *(v2 + 4);
  *(v28 + 32) = v29;
  *(v25 + 40) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B48ECFB0;
  *(v30 + 32) = v24;
  *(v25 + 48) = v30;
  v31 = objc_allocWithZone(MEMORY[0x1E698B728]);
  v32 = v27;
  v33 = v29;
  v34 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2868, &qword_1B48ED1B0);
  v35 = sub_1B48E6A04();

  v36 = [v31 initWithArrangedSubviewRows_];

  *(v2 + 21) = v36;
  if (byte_1EB8A2B00 == 1)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1B48ECFB0;
    *(v37 + 32) = v36;
    v38 = objc_allocWithZone(MEMORY[0x1E698B730]);
  }

  else
  {
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1B48ECFA0;
    v40 = *(v2 + 5);
    *(v39 + 32) = v36;
    *(v39 + 40) = v40;
    v38 = objc_allocWithZone(MEMORY[0x1E698B730]);
    v41 = v36;
    v36 = v40;
  }

  v42 = v36;
  v43 = sub_1B48E6A04();

  v44 = [v38 initWithArrangedSubviews_];

  *(v2 + 22) = v44;
  v45 = [objc_opt_self() defaultCenter];
  [v45 addObserver:v2 selector:sel_updateForReducedTransparancy name:*MEMORY[0x1E69DD920] object:0];

  v46 = *(v2 + 22);
  [v46 setAutoresizingMask_];
  [*(v2 + 29) addSubview_];
  v47 = *(v2 + 2);
  LODWORD(v48) = 1148846080;
  [v47 setContentCompressionResistancePriority:1 forAxis:v48];
  LODWORD(v49) = 1148846080;
  [v47 setContentHuggingPriority:1 forAxis:v49];
  [v47 setNumberOfLines_];
  [v47 setLineBreakMode_];
  v50 = *(v2 + 6);
  LODWORD(v51) = 1148846080;
  [v50 setContentCompressionResistancePriority:1 forAxis:v51];
  LODWORD(v52) = 1148846080;
  [v50 setContentHuggingPriority:1 forAxis:v52];
  [v50 setNumberOfLines_];
  [v50 setLineBreakMode_];
  LODWORD(v53) = 1148846080;
  [v50 setContentCompressionResistancePriority:0 forAxis:v53];
  LODWORD(v54) = 1148846080;
  [v50 setContentHuggingPriority:0 forAxis:v54];
  v55 = *(v2 + 19);
  [v55 setAlignment_];
  [v55 setAlignment:4 forView:v50 inAxis:0];
  v56 = *(v2 + 3);
  LODWORD(v57) = 1148846080;
  [v56 setContentCompressionResistancePriority:1 forAxis:v57];
  LODWORD(v58) = 1148846080;
  [v56 setContentHuggingPriority:1 forAxis:v58];
  [v56 setNumberOfLines_];
  v59 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.6 alpha:1.0];
  [v56 setTextColor_];

  v60 = *(v2 + 4);
  LODWORD(v61) = 1148846080;
  [v60 setContentCompressionResistancePriority:1 forAxis:v61];
  LODWORD(v62) = 1148846080;
  [v60 setContentHuggingPriority:1 forAxis:v62];
  [v60 setNumberOfLines_];
  v63 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.6 alpha:1.0];
  [v60 setTextColor_];

  v64 = *(v2 + 7);
  v65 = [objc_opt_self() dynamicTertiaryLabelColor];
  [v64 setTintColor_];

  [v64 setUserInteractionEnabled_];
  LODWORD(v66) = 1148846080;
  [v64 tp:v66 setCHCRPriority:?];
  [v64 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  [*(v2 + 20) setAlignment_];
  v67 = *(v2 + 21);
  [v67 setLayoutMarginsRelativeArrangement_];
  [v67 setBaselineRelativeArrangement_];
  v68 = *(v2 + 5);
  v69 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.6 alpha:1.0];
  [v68 setTextColor_];

  LODWORD(v70) = 1148846080;
  v71 = (*(*v2 + 424))([v68 tp:v70 setCHCRPriority:?]);
  [v71 addTarget:v2 action:sel_didTapDetailAccessoryButtonWithSender_ forControlEvents:64];

  [v46 setLayoutMarginsRelativeArrangement_];
  [v46 setBaselineRelativeArrangement_];
  [v46 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];
  sub_1B48E06E4();
  [v2 updateForReducedTransparancy];
  return v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_1B48E3DA4(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  if ((v5 & 1) == 0)
  {
    if (v4 == 2)
    {
      v6 = [objc_opt_self() recentsTTYRelayGlyphImage];
      goto LABEL_34;
    }

    if (v4 == 1)
    {
      v6 = [objc_opt_self() recentsTTYDirectGlyphImage];
LABEL_34:
      v33 = v6;
      return;
    }
  }

  if (qword_1EB8A2B08 != -1)
  {
    swift_once();
  }

  v7 = [qword_1EB8A2B10 recentsCallTapTargetsEnabled];
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  if (v7)
  {
    v10 = (*(v9 + 64))(v8, v9);
    if ((v10 & 0x100000000) == 0)
    {
      v11 = v10;
      v12 = [objc_opt_self() telephonyUISubheadlineShortFont];
      v13 = [v12 _fontAdjustedForCurrentContentSizeCategory];

      if (v13)
      {
        v14 = [objc_opt_self() configurationWithFont:v13 scale:1];
        v15 = *MEMORY[0x1E69935B8];
        v16 = v14;
        if (v15 != v11)
        {
          *MEMORY[0x1E69935A8];
        }

        v26 = sub_1B48E69D4();
        [objc_opt_self() systemImageNamed:v26 withConfiguration:v16];
      }

      else
      {
        __break(1u);
      }
    }

    return;
  }

  v17 = (*(v9 + 72))(v8, v9);
  if ((v18 & 1) == 0)
  {
    v21 = v17;
    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    v24 = (*(v23 + 128))(v22, v23);
    if (v24)
    {

      v25 = objc_opt_self();
      if (v21 == 2)
      {
LABEL_19:
        v6 = [v25 recentsIncomingVideoCallGlyphImage];
        goto LABEL_34;
      }
    }

    else
    {
      v27 = a1[3];
      v28 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v27);
      v29 = (*(v28 + 64))(v27, v28);
      if ((v29 & 0x100000000) != 0)
      {
        v32 = objc_opt_self();
        if (v21 == 2)
        {
          v6 = [v32 favoritesVideoGlyphImage];
        }

        else
        {
          v6 = [v32 favoritesAudioGlyphImage];
        }

        goto LABEL_34;
      }

      v30 = v29;
      v31 = *MEMORY[0x1E69935B8];
      v25 = objc_opt_self();
      if (v31 == v30 || *MEMORY[0x1E69935A8] == v30)
      {
        if (v21 == 2)
        {
          v6 = [v25 recentsOutgoingVideoCallGlyphImage];
        }

        else
        {
          v6 = [v25 recentsOutgoingAudioCallGlyphImage];
        }

        goto LABEL_34;
      }

      if (v21 == 2)
      {
        goto LABEL_19;
      }
    }

    v6 = [v25 recentsIncomingAudioCallGlyphImage];
    goto LABEL_34;
  }

  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v20 + 16))(&v35, v19, v20);
  v34 = 0;
  if (static RecentsCallItemStyle.== infix(_:_:)(&v35, &v34))
  {
    v6 = [objc_opt_self() favoritesVideoGlyphImage];
    goto LABEL_34;
  }
}

uint64_t sub_1B48E4240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2848, &unk_1B48ECFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B48E42B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A2848, &unk_1B48ECFD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B48E431C()
{
  result = qword_1EB8A2858;
  if (!qword_1EB8A2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A2858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecentsListItemLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecentsListItemLocation(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B48E48CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B48E48EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_1EB8A2140)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB8A2140);
    }
  }
}

uint64_t sub_1B48E4964()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B48E498C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B48E49B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B48E4A18(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1B48E49B4(0, &qword_1EB8A2138, 0x1E69DD250);
  return sub_1B48E6AE4() & 1;
}

void getPRUISIncomingCallPosterAttachmentTypeIdentifierNameLabel_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PRUISIncomingCallPosterAttachmentTypeIdentifier getPRUISIncomingCallPosterAttachmentTypeIdentifierNameLabel(void)"];
  [v0 handleFailureInFunction:v1 file:@"TPInComingCallUISnapshotViewController.m" lineNumber:71 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getPRPosterLabelClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRPosterLabelClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TPInComingCallUISnapshotViewController.m" lineNumber:48 description:{@"Unable to find class %s", "PRPosterLabel"}];

  __break(1u);
}

void __getPRPosterLabelClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"TPInComingCallUISnapshotViewController.m" lineNumber:45 description:{@"%s", *a1}];

  __break(1u);
}

void __getCNImageDerivedColorGeneratorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNImageDerivedColorGeneratorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TPInComingCallUISnapshotViewController.m" lineNumber:32 description:{@"Unable to find class %s", "CNImageDerivedColorGenerator"}];

  __break(1u);
}

void __getCNImageDerivedColorGeneratorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"TPInComingCallUISnapshotViewController.m" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}

void PosterBoardUIServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterBoardUIServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"TPInComingCallUISnapshotViewController.m" lineNumber:57 description:{@"%s", *a1}];

  __break(1u);
}

void __getPRUISPosterAppearanceObservingAttachmentProviderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISPosterAppearanceObservingAttachmentProviderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TPInComingCallUISnapshotViewController.m" lineNumber:67 description:{@"Unable to find class %s", "PRUISPosterAppearanceObservingAttachmentProvider"}];

  __break(1u);
}

void __getPRUISIncomingCallPosterContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISIncomingCallPosterContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TPInComingCallUISnapshotViewController.m" lineNumber:58 description:{@"Unable to find class %s", "PRUISIncomingCallPosterContext"}];

  __break(1u);
}

void __getPRUISIncomingCallSnapshotDefinitionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISIncomingCallSnapshotDefinitionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TPInComingCallUISnapshotViewController.m" lineNumber:59 description:{@"Unable to find class %s", "PRUISIncomingCallSnapshotDefinition"}];

  __break(1u);
}

void __getPRUISMutablePosterSnapshotRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISMutablePosterSnapshotRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TPInComingCallUISnapshotViewController.m" lineNumber:62 description:{@"Unable to find class %s", "PRUISMutablePosterSnapshotRequest"}];

  __break(1u);
}

void __getPRUISPosterAttachmentConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISPosterAttachmentConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TPInComingCallUISnapshotViewController.m" lineNumber:66 description:{@"Unable to find class %s", "PRUISPosterAttachmentConfiguration"}];

  __break(1u);
}

void __getPRUISPosterSnapshotControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRUISPosterSnapshotControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TPInComingCallUISnapshotViewController.m" lineNumber:65 description:{@"Unable to find class %s", "PRUISPosterSnapshotController"}];

  __break(1u);
}

void _MKBGetDeviceLockState_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int _MKBGetDeviceLockState(CFDictionaryRef)"];
  [v0 handleFailureInFunction:v1 file:@"TPDialPromptAlert.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getMKBGetDeviceLockStateSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileKeyBagLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"TPDialPromptAlert.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __imageForRoundedRectProperties_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIImage *__imageForRoundedRectProperties(_TPRoundedRectImageProperties *)"];
  [v1 handleFailureInFunction:v0 file:@"TPRevealingRingView.m" lineNumber:78 description:@"Properties cannot be nil"];
}

void __getPRIncomingCallTextViewAdapterWrapperClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRIncomingCallTextViewAdapterWrapperClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TPIncomingCallMetricsProvider.m" lineNumber:39 description:{@"Unable to find class %s", "PRIncomingCallTextViewAdapterWrapper"}];

  __break(1u);
}

void PosterKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"TPIncomingCallMetricsProvider.m" lineNumber:38 description:{@"%s", *a1}];

  __break(1u);
}

void __getPRIncomingCallMetricsProviderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRIncomingCallMetricsProviderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TPIncomingCallMetricsProvider.m" lineNumber:41 description:{@"Unable to find class %s", "PRIncomingCallMetricsProvider"}];

  __break(1u);
}