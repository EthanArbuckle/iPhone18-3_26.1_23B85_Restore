void sub_1C19C067C()
{
  v1 = *&v0[OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_textLabel];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageView];
  [v0 addSubview_];
  v21 = objc_opt_self();
  sub_1C19A9E58(&qword_1EBF03E88);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1A744F0;
  v4 = [v1 leadingAnchor];
  v5 = [v0 leadingAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v3 + 32) = v6;
  v7 = [v1 centerYAnchor];
  v8 = [v0 centerYAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v9;
  v10 = [v2 leadingAnchor];
  v11 = [v1 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:4.0];

  *(v3 + 48) = v12;
  v13 = [v2 centerYAnchor];
  v14 = [v0 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  v16 = *&v0[OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageViewWidthConstraint];
  *(v3 + 56) = v15;
  *(v3 + 64) = v16;
  v17 = *&v0[OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageViewHeightConstraint];
  *(v3 + 72) = v17;
  sub_1C19C2864();
  v18 = v16;
  v19 = v17;
  v20 = sub_1C1A6F50C();

  [v21 activateConstraints_];

  v22 = sub_1C1A6F39C();
  [v1 setText_];
}

uint64_t sub_1C19C0954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1C1A6F58C();
  v6[3] = sub_1C1A6F57C();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1C19C0A18;

  return sub_1C19C0BB4(a5, a6);
}

uint64_t sub_1C19C0A18()
{

  v1 = sub_1C1A6F56C();

  return MEMORY[0x1EEE6DFA0](sub_1C19C0B54, v1, v0);
}

uint64_t sub_1C19C0B54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C19C0BB4(uint64_t a1, uint64_t a2)
{
  v3[191] = v2;
  v3[185] = a2;
  v3[179] = a1;
  v4 = sub_1C1A6D48C();
  v3[197] = v4;
  v5 = *(v4 - 8);
  v3[198] = v5;
  v3[199] = *(v5 + 64);
  v3[200] = swift_task_alloc();
  v3[201] = swift_task_alloc();
  sub_1C1A6F58C();
  v3[202] = sub_1C1A6F57C();
  v7 = sub_1C1A6F56C();
  v3[203] = v7;
  v3[204] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C19C0CC8, v7, v6);
}

uint64_t sub_1C19C0CC8()
{
  v1 = v0[201];
  v2 = v0[198];
  v3 = v0[197];
  v13 = v0[185];
  v14 = v0[200];
  v4 = v0[179];
  v0[205] = [objc_allocWithZone(MEMORY[0x1E69DCAC0]) init];
  v12 = *(v2 + 16);
  v12(v1, v4, v3);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = *(v2 + 32);
  v7(v6 + v5, v1, v3);
  v8 = swift_allocObject();
  v0[206] = v8;
  *(v8 + 16) = &unk_1C1A74558;
  *(v8 + 24) = v6;
  sub_1C19A9E58(&qword_1EBF03E80);
  swift_asyncLet_begin();
  v12(v14, v13, v3);
  v9 = swift_allocObject();
  v7(v9 + v5, v14, v3);
  v10 = swift_allocObject();
  v0[207] = v10;
  *(v10 + 16) = &unk_1C1A74580;
  *(v10 + 24) = v9;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB8](v0 + 2, v0 + 167, sub_1C19C0F0C, v0 + 162);
}

uint64_t sub_1C19C0F28()
{
  v1 = *(v0 + 1336);
  *(v0 + 1664) = v1;
  v2 = v1;

  return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 1384, sub_1C19C0FA0, v0 + 1344);
}

uint64_t sub_1C19C0FBC()
{
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1384);
  *(v0 + 1672) = v2;
  if (v1)
  {
    v3 = *(v0 + 1640);
    v4 = objc_opt_self();
    v5 = v2;
    v6 = [v4 traitCollectionWithUserInterfaceStyle_];
    [v3 registerImage:v1 withTraitCollection:v6];

    if (!v2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = v2;
  if (v2)
  {
    v5 = v7;
LABEL_6:
    v8 = *(v0 + 1640);
    v9 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    [v8 registerImage:v5 withTraitCollection:v9];

    if (!v1)
    {
LABEL_8:
      *(v0 + 1680) = v5;
      v10 = *(v0 + 1640);
      v11 = [objc_opt_self() currentTraitCollection];
      v12 = [v10 imageWithTraitCollection_];

      sub_1C19C2068(v12);
      v13 = sub_1C19C1354;
      v14 = v0 + 656;
      v15 = v0 + 1384;
      v16 = v0 + 1488;
      goto LABEL_9;
    }

LABEL_7:

    goto LABEL_8;
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v17 = sub_1C1A6F1BC();
  sub_1C1994600(v17, qword_1EDE665F0);
  v18 = sub_1C1A6F19C();
  v19 = sub_1C1A6F66C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1C198D000, v18, v19, "Light and dark images failed to download.", v20, 2u);
    MEMORY[0x1C6906260](v20, -1, -1);
  }

  v13 = sub_1C19C123C;
  v14 = v0 + 656;
  v15 = v0 + 1384;
  v16 = v0 + 1392;
LABEL_9:

  return MEMORY[0x1EEE6DEB0](v14, v15, v13, v16);
}

uint64_t sub_1C19C1294()
{
  v1 = v0[209];
  v2 = v0[208];
  v3 = v0[205];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C19C13AC()
{
  v1 = v0[210];
  v2 = v0[208];
  v3 = v0[205];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C19C1494(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C19C28B0;

  return sub_1C19C1528(a1);
}

uint64_t sub_1C19C1548()
{
  sub_1C1A6DFEC();
  v0[3] = sub_1C1A6DFDC();
  v4 = (*MEMORY[0x1E69C5F48] + MEMORY[0x1E69C5F48]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1C19C1608;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_1C19C1608(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C19C1760, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1C19C1760()
{

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1C1A6F1BC();
  sub_1C1994600(v2, qword_1EDE665F0);
  v3 = v1;
  v4 = sub_1C1A6F19C();
  v5 = sub_1C1A6F66C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C198D000, v4, v5, "Error downloading light image: %@", v8, 0xCu);
    sub_1C19C27FC(v9);
    MEMORY[0x1C6906260](v9, -1, -1);
    MEMORY[0x1C6906260](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_1C19C1900(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1C19C19EC;

  return v5();
}

uint64_t sub_1C19C19EC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1C19C1B00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C19C1B94;

  return sub_1C19C1C90(a1);
}

uint64_t sub_1C19C1B94(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1C19C1CB0()
{
  sub_1C1A6DFEC();
  v0[3] = sub_1C1A6DFDC();
  v4 = (*MEMORY[0x1E69C5F48] + MEMORY[0x1E69C5F48]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1C19C1D70;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_1C19C1D70(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C19C1EC8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1C19C1EC8()
{

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1C1A6F1BC();
  sub_1C1994600(v2, qword_1EDE665F0);
  v3 = v1;
  v4 = sub_1C1A6F19C();
  v5 = sub_1C1A6F66C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C198D000, v4, v5, "Error downloading dark image: %@", v8, 0xCu);
    sub_1C19C27FC(v9);
    MEMORY[0x1C6906260](v9, -1, -1);
    MEMORY[0x1C6906260](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

id sub_1C19C2068(void *a1)
{
  [a1 size];
  v4 = v3;
  [a1 size];
  v6 = v4 / v5;
  if (v4 / v5 <= 1.6)
  {
    v7 = 24.0;
  }

  else
  {
    v7 = 14.0;
  }

  v8 = v6 * v7;
  if (v8 > 120.0)
  {
    v8 = 120.0;
  }

  [*&v1[OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageViewWidthConstraint] setConstant_];
  [*&v1[OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageViewHeightConstraint] setConstant_];
  [*&v1[OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageView] setImage_];
  [*&v1[OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_textLabel] setHidden_];
  [v1 invalidateIntrinsicContentSize];

  return [v1 setNeedsLayout];
}

id sub_1C19C224C(double a1, double a2, double a3, double a4)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = [objc_opt_self() systemFontOfSize:14.0 weight:*MEMORY[0x1E69DB970]];
  [v4 setFont_];

  v6 = [objc_opt_self() secondaryLabelColor];
  [v4 setTextColor_];

  [v4 setNumberOfLines_];
  [v4 setLineBreakMode_];
  [v4 setAdjustsFontForContentSizeCategory_];
  return v4;
}

void sub_1C19C237C()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_textLabel;
  v2 = sub_1C19C224C(0.0, 0.0, 0.0, 0.0);
  [v2 setHidden_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageView;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v4 setContentMode_];
  [v4 setOpaque_];
  [v4 setAccessibilityIgnoresInvertColors_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v3) = v4;
  sub_1C1A6FB8C();
  __break(1u);
}

uint64_t sub_1C19C24B0(uint64_t a1)
{
  v4 = *(sub_1C1A6D48C() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C19909C4;

  return sub_1C19C0954(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

uint64_t sub_1C19C25DC()
{
  v2 = *(sub_1C1A6D48C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C19C28B0;

  return sub_1C19C1494(v0 + v3);
}

uint64_t sub_1C19C26A8()
{
  v1 = sub_1C1A6D48C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C19C2730()
{
  v2 = *(sub_1C1A6D48C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C19C1B94;

  return sub_1C19C1B00(v0 + v3);
}

uint64_t sub_1C19C27FC(uint64_t a1)
{
  v2 = sub_1C19A9E58(&unk_1EBF04B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C19C2864()
{
  result = qword_1EDE626F0;
  if (!qword_1EDE626F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE626F0);
  }

  return result;
}

id sub_1C19C28BC(char a1)
{
  v21.receiver = v1;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewWillAppear_, a1 & 1);
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  v5 = *MEMORY[0x1E69DDAC8];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1C19C38AC;
  v20 = v6;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1C1A40D40;
  v18 = &unk_1F413FE10;
  v7 = _Block_copy(&v15);

  v8 = [v4 addObserverForName:v5 object:0 queue:0 usingBlock:v7];
  _Block_release(v7);

  *&v1[OBJC_IVAR____TtC17PromotedContentUI20SafariViewController_notificationCloseObserver] = v8;
  swift_unknownObjectRelease();
  v9 = [v3 defaultCenter];
  v10 = *MEMORY[0x1E69DDBC0];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1C19C38B4;
  v20 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1C1A40D40;
  v18 = &unk_1F413FE38;
  v12 = _Block_copy(&v15);

  v13 = [v9 addObserverForName:v10 object:0 queue:0 usingBlock:v12];
  _Block_release(v12);

  *&v1[OBJC_IVAR____TtC17PromotedContentUI20SafariViewController_notificationOpenObserver] = v13;
  swift_unknownObjectRelease();
  return [v1 setModalPresentationCapturesStatusBarAppearance_];
}

void sub_1C19C2B3C()
{
  v0 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9[-v1];
  sub_1C1A6F64C();
  sub_1C199E4CC();
  v3 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1C1A6F64C();
    v6 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    sub_1C1A6D5CC();
    v7 = sub_1C1A6D5DC();
    (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
    v8 = OBJC_IVAR____TtC17PromotedContentUI20SafariViewController_backgroundedTime;
    swift_beginAccess();
    sub_1C19B40BC(v2, v5 + v8);
    swift_endAccess();
  }
}

void sub_1C19C2D3C()
{
  sub_1C1A6F64C();
  sub_1C199E4CC();
  v0 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1C19C2E18();
  }
}

id sub_1C19C2E18()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_1C1A6D5DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  sub_1C1A6F64C();
  sub_1C199E4CC();
  v12 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  sub_1C1A6D5CC();
  v13 = OBJC_IVAR____TtC17PromotedContentUI20SafariViewController_backgroundedTime;
  swift_beginAccess();
  sub_1C19AF080(v1 + v13, v4);
  v14 = *(v6 + 48);
  if (v14(v4, 1, v5) == 1)
  {
    sub_1C1A6D5CC();
    if (v14(v4, 1, v5) != 1)
    {
      sub_1C1991140(v4, &qword_1EBF038A8);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  sub_1C1A6D50C();
  v16 = v15;
  v17 = v15;
  v18 = *(v6 + 8);
  v18(v8, v5);
  result = (v18)(v11, v5);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v16 >= 301)
  {
    return [v1 dismissViewControllerAnimated:!UIAccessibilityIsReduceMotionEnabled() completion:0];
  }

  return result;
}

void sub_1C19C317C(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewWillDisappear_, a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC17PromotedContentUI20SafariViewController_notificationObserver];
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver_];
    swift_unknownObjectRelease();
  }

  v7 = *&v2[OBJC_IVAR____TtC17PromotedContentUI20SafariViewController_notificationCloseObserver];
  if (v7)
  {
    v8 = objc_opt_self();
    swift_unknownObjectRetain();
    v9 = [v8 defaultCenter];
    [v9 removeObserver_];
    swift_unknownObjectRelease();
  }

  v10 = *&v2[OBJC_IVAR____TtC17PromotedContentUI20SafariViewController_notificationOpenObserver];
  if (v10)
  {
    v11 = objc_opt_self();
    swift_unknownObjectRetain();
    v12 = [v11 defaultCenter];
    [v12 removeObserver_];
    swift_unknownObjectRelease();
  }

  sub_1C1A6F64C();
  sub_1C199E4CC();
  v13 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  sub_1C19C3368();
}

void sub_1C19C3368()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF03AD8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = &v0[OBJC_IVAR____TtC17PromotedContentUI20SafariViewController_actionDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *MEMORY[0x1E69C5F20];
    v9 = sub_1C1A6DDCC();
    v10 = *(v9 - 8);
    (*(v10 + 104))(v4, v8, v9);
    (*(v10 + 56))(v4, 0, 1, v9);
    (*(v6 + 8))(v4, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1C1991140(v4, &qword_1EBF03AD8);
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C199E4CC();
    v11 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    v12 = [v1 presentingViewController];
    if (v12)
    {
      v15 = v12;
      [v12 dismissViewControllerAnimated:!UIAccessibilityIsReduceMotionEnabled() completion:0];
      v13 = v15;
    }
  }
}

uint64_t type metadata accessor for SafariViewController()
{
  result = qword_1EBF03EB8;
  if (!qword_1EBF03EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19C3804()
{
  sub_1C199B708();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C19C38C0()
{
  v1 = type metadata accessor for MetricsViewImpressionInfo();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1A6D5DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v29 - v10;
  v12 = OBJC_IVAR___APPCMetricsView_promotedContent;
  v13 = [objc_msgSend(*&v0[OBJC_IVAR___APPCMetricsView_promotedContent] metricsHelper];
  swift_unknownObjectRelease();
  if (v13 && (*(*&v0[OBJC_IVAR___APPCMetricsView_impressionSent] + OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadyRecorded) & 1) == 0)
  {
    v30 = OBJC_IVAR___APPCMetricsView_impressionSent;
    if (qword_1EDE63E78 != -1)
    {
      swift_once();
    }

    v14 = *&v0[OBJC_IVAR___APPCMetricsView_adContentPosition];
    v15 = *&v0[OBJC_IVAR___APPCMetricsView_adContentPosition + 8];
    v16 = swift_unknownObjectRetain();
    v31 = v0;
    sub_1C1A15574(v16, v14, v15);
    v17 = v31;
    swift_unknownObjectRelease();
    v18 = [objc_msgSend(*&v17[v12] metricsHelper)];
    swift_unknownObjectRelease();
    if (v18)
    {
      sub_1C1A6D59C();

      (*(v5 + 32))(v11, v7, v4);
      (*(v5 + 16))(v3, v11, v4);
      [objc_msgSend(*&v17[v12] metricsHelper)];
      v20 = v19;
      swift_unknownObjectRelease();
      v21 = [objc_msgSend(*&v17[v12] metricsHelper)];
      swift_unknownObjectRelease();
      *&v3[*(v1 + 20)] = v20;
      v3[*(v1 + 24)] = v21;
      v22 = &v17[OBJC_IVAR___APPCMetricsView_impressionDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = *(v22 + 1);
        ObjectType = swift_getObjectType();
        (*(v23 + 8))(v3, ObjectType, v23);
        v17 = v31;
        swift_unknownObjectRelease();
      }

      sub_1C19C4094(v3);
      (*(v5 + 8))(v11, v4);
    }

    v25 = v30;
    v26 = *&v17[v30];
    if ((*(v26 + OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadyRecorded) & 1) == 0)
    {
      *(v26 + OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadyRecorded) = 1;
    }

    if ([objc_opt_self() isAppleInternalInstall])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        if ((*(*&v17[v25] + OBJC_IVAR____TtC17PromotedContentUI14ImpressionSent_alreadySent) & 1) == 0)
        {
          sub_1C198FB8C(0, &qword_1EDE63F38);
          *(swift_allocObject() + 16) = v17;
          v28 = v17;
          sub_1C1A6F6BC();
        }
      }
    }
  }
}

void sub_1C19C3D38(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong addSubview_];
  }

  v4 = *(a1 + OBJC_IVAR___APPCMetricsView_impressionSent);
  sub_1C1A100D0();
}

uint64_t sub_1C19C3DD0(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [*(a2 + OBJC_IVAR___APPCMetricsView_promotedContent) metricsHelper];
    if ([objc_opt_self() isMainThread])
    {
      v4 = sub_1C19A2A40();
    }

    else
    {
      v4 = *(a2 + OBJC_IVAR___APPCMetricsView_viewCollapsedState) != 2;
    }

    [v3 interstitialOnScreenWithCollapsed_];

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1C198FB8C(0, &qword_1EDE63F38);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1C1A6F6BC();
  }
}

uint64_t sub_1C19C3F0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setReady_];
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 collapse];
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = [*(result + OBJC_IVAR___APPCMetricsView_promotedContent) metricsHelper];

    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      if ([objc_opt_self() isMainThread])
      {
        v9 = sub_1C19A2A40();
      }

      else
      {
        v10 = v8[OBJC_IVAR___APPCMetricsView_viewCollapsedState];

        v9 = v10 != 2;
      }
    }

    else
    {
      v9 = 1;
    }

    [v6 interstitialOnScreenWithCollapsed_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C19C4094(uint64_t a1)
{
  v2 = type metadata accessor for MetricsViewImpressionInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C19C4108()
{
  result = qword_1EDE63F68;
  if (!qword_1EDE63F68)
  {
    sub_1C1A6F1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE63F68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapActionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapActionError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C19C42C8()
{
  result = qword_1EBF03EC8;
  if (!qword_1EBF03EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03EC8);
  }

  return result;
}

uint64_t sub_1C19C431C()
{
  v1 = *v0;
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](v1);
  return sub_1C1A6FDDC();
}

uint64_t sub_1C19C4364()
{
  v1 = *v0;
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](v1);
  return sub_1C1A6FDDC();
}

void sub_1C19C4444()
{
  v1 = [v0 contentView];
  v2 = sub_1C19AF868();
  [v1 addSubview_];

  v3 = [v0 contentView];
  v4 = sub_1C19AF980();
  [v3 addSubview_];

  v5 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView;
  v6 = *&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView];
  v7 = sub_1C19AF9EC();
  [v6 addSubview_];

  v8 = *&v0[v5];
  v9 = sub_1C19AFAB0();
  [v8 addSubview_];

  v10 = *&v0[v5];
  v11 = sub_1C19AF98C();
  [v10 addSubview_];
}

void sub_1C19C458C()
{
  v81 = objc_opt_self();
  sub_1C19A9E58(&qword_1EBF03E88);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C1A74700;
  v2 = sub_1C19AF868();
  v3 = [v2 leadingAnchor];

  v4 = [v0 contentView];
  v5 = [v4 &off_1E8148528 + 1];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView;
  v8 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView] topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 &selRef_heightAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v1 + 40) = v11;
  v12 = [*&v0[v7] trailingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 &selRef_didImpress + 4];

  v15 = [v12 constraintEqualToAnchor_];
  *(v1 + 48) = v15;
  v16 = [*&v0[v7] bottomAnchor];
  v17 = sub_1C19AF980();
  v18 = [v17 &selRef_heightAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v1 + 56) = v19;
  v20 = [*&v0[v7] heightAnchor];
  v21 = [*&v0[v7] widthAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v1 + 64) = v22;
  v23 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView;
  v24 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView] leadingAnchor];
  v25 = [v0 contentView];
  v26 = [v25 leadingAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v1 + 72) = v27;
  v28 = [*&v0[v23] &selRef_heightAnchor];
  v29 = [*&v0[v7] bottomAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v1 + 80) = v30;
  v31 = [*&v0[v23] trailingAnchor];
  v32 = [v0 contentView];
  v33 = [v32 trailingAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v1 + 88) = v34;
  v35 = [*&v0[v23] bottomAnchor];
  v36 = [v0 contentView];
  v37 = [v36 bottomAnchor];

  v38 = [v35 constraintEqualToAnchor_];
  *(v1 + 96) = v38;
  v39 = sub_1C19AF98C();
  v40 = [v39 leadingAnchor];

  v41 = [*&v0[v23] leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:12.0];

  *(v1 + 104) = v42;
  v43 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel;
  v44 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel] topAnchor];
  v45 = [*&v0[v23] topAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:12.0];

  *(v1 + 112) = v46;
  v47 = [*&v0[v43] trailingAnchor];
  v48 = [*&v0[v23] trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:-12.0];

  *(v1 + 120) = v49;
  v50 = [*&v0[v43] &selRef_addUnfilledReason_ + 5];
  v51 = [*&v0[v23] &selRef_addUnfilledReason_ + 5];
  v52 = [v50 constraintEqualToAnchor:v51 constant:-12.0];

  *(v1 + 128) = v52;
  v53 = sub_1C19AF9EC();
  v54 = [v53 leadingAnchor];

  v55 = [*&v0[v23] leadingAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(v1 + 136) = v56;
  v57 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView;
  v58 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView] topAnchor];
  v59 = [*&v0[v23] topAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v1 + 144) = v60;
  v61 = [*&v0[v57] trailingAnchor];
  v62 = [*&v0[v23] trailingAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  *(v1 + 152) = v63;
  v64 = [*&v0[v57] bottomAnchor];
  v65 = [*&v0[v23] bottomAnchor];
  v66 = [v64 constraintEqualToAnchor_];

  *(v1 + 160) = v66;
  v67 = sub_1C19AFAB0();
  v68 = [v67 leadingAnchor];

  v69 = [*&v0[v23] leadingAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v1 + 168) = v70;
  v71 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView;
  v72 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView] topAnchor];
  v73 = [*&v0[v23] topAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  *(v1 + 176) = v74;
  v75 = [*&v0[v71] trailingAnchor];
  v76 = [*&v0[v23] trailingAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  *(v1 + 184) = v77;
  v78 = [*&v0[v71] bottomAnchor];
  v79 = [*&v0[v23] bottomAnchor];
  v80 = [v78 constraintEqualToAnchor_];

  *(v1 + 192) = v80;
  sub_1C19C2864();
  v82 = sub_1C1A6F50C();

  [v81 activateConstraints_];
}

id sub_1C19C4EE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LargeCarouselCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AdInteractionType.hashValue.getter()
{
  v1 = *v0;
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](v1);
  return sub_1C1A6FDDC();
}

double InteractedAdEvent.init(adInstanceId:type:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  *(a4 + 56) = sub_1C19B6BD8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for InteractedAdEvent();
  sub_1C1A6D61C();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v7;
  result = 0.0;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  return result;
}

uint64_t InteractedAdEvent.init(adInstanceId:type:bundleId:adamId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a3;
  *(a8 + 56) = sub_1C19B6BD8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for InteractedAdEvent();
  result = sub_1C1A6D61C();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v15;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

double InteractedAdEvent.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 56);
  if (*(v5 + 16) && (v6 = sub_1C1991010(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_1C19A1A5C(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C19C5120(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_1C19C5408(a1, v7);
  sub_1C19C5408(v7, v6);

  sub_1C19B561C(v6, v3, v4);
  return sub_1C19C5478(v7);
}

uint64_t InteractedAdEvent.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C19C5408(a1, v7);
  sub_1C19B561C(v7, a2, a3);
  return sub_1C19C5478(a1);
}

void (*InteractedAdEvent.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v9 = *(v3 + 56);
  if (*(v9 + 16) && (v10 = sub_1C1991010(a2, a3), (v11 & 1) != 0))
  {
    sub_1C19A1A5C(*(v9 + 56) + 32 * v10, v8);
  }

  else
  {
    *v8 = 0u;
    v8[1] = 0u;
  }

  return sub_1C19C52A4;
}

void sub_1C19C52A4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 96);
  if (a2)
  {
    sub_1C19C5408(*a1, v2 + 32);
    sub_1C19C5408(v2 + 32, v2 + 64);

    sub_1C19B561C(v2 + 64, v4, v3);
    sub_1C19C5478(v2 + 32);
  }

  else
  {
    sub_1C19C5408(*a1, v2 + 32);

    sub_1C19B561C(v2 + 32, v4, v3);
  }

  sub_1C19C5478(v2);

  free(v2);
}

uint64_t static InteractedAdEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for InteractedAdEvent() + 36);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

uint64_t type metadata accessor for InteractedAdEvent()
{
  result = qword_1EBF03EE0;
  if (!qword_1EBF03EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C19C5408(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF03BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C19C5478(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C19C54E4()
{
  result = qword_1EBF03ED8;
  if (!qword_1EBF03ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03ED8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdInteractionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdInteractionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1C19C56B0()
{
  sub_1C19C5764();
  if (v0 <= 0x3F)
  {
    sub_1C19B6E10();
    if (v1 <= 0x3F)
    {
      sub_1C1A6D62C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C19C5764()
{
  if (!qword_1EDE62740)
  {
    v0 = sub_1C1A6F91C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE62740);
    }
  }
}

uint64_t sub_1C19C57B4()
{
  v1 = [v0 superlayer];
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    sub_1C19A9E58(&qword_1EBF03E88);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C1A74830;
    *(v4 + 32) = v0;
    v5 = sub_1C19C59A0(v3, v0, v4);

    if (v5)
    {
      v13 = v2;
      if (v5 >> 62)
      {
        goto LABEL_19;
      }

      for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C1A6F9EC())
      {
        v12 = v3;
        v7 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1C69055B0](v7, v5);
          }

          else
          {
            if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v8 = *(v5 + 8 * v7 + 32);
          }

          v9 = v8;
          v3 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
            break;
          }

          sub_1C19C7364();
          if (sub_1C1A6F7BC())
          {
          }

          else
          {
            sub_1C1A6FB2C();
            sub_1C1A6FB5C();
            sub_1C1A6FB6C();
            sub_1C1A6FB3C();
          }

          ++v7;
          if (v3 == i)
          {
            v3 = v12;
            v10 = v13;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        ;
      }

      v10 = MEMORY[0x1E69E7CC0];
LABEL_21:

      v2 = sub_1C1A3C814(v10);
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

int64_t sub_1C19C59A0(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;

  v5 = [a1 sublayers];
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v5;
    sub_1C19C7364();
    v8 = sub_1C1A6F51C();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v55 = v6;
  if (v8 >> 62)
  {
    goto LABEL_87;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v10 = MEMORY[0x1E69E7CC0];
  v11 = &unk_1E8148000;
  if (v9)
  {
    v50 = v3;
    v52 = a1;
    v12 = 0;
    a1 = (v8 & 0xC000000000000001);
    v3 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a1)
      {
        v13 = MEMORY[0x1C69055B0](v12, v8);
      }

      else
      {
        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_86;
        }

        v13 = *(v8 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        v9 = sub_1C1A6F9EC();
        goto LABEL_6;
      }

      if (![v13 isHidden])
      {
        [v14 v11[333]];
        if (v16 > 0.0)
        {
          if (![v14 delegate])
          {
            if (sub_1C19A2D34())
            {
LABEL_22:

              v11 = &unk_1E8148000;
              goto LABEL_10;
            }

            goto LABEL_20;
          }

          swift_getObjectType();
          if ((sub_1C19E4D30() & 1) == 0)
          {
            v17 = sub_1C19A2D34();
            swift_unknownObjectRelease();
            if (v17)
            {
              goto LABEL_22;
            }

LABEL_20:
            sub_1C1A6FB2C();
            sub_1C1A6FB5C();
            sub_1C1A6FB6C();
            sub_1C1A6FB3C();
            v11 = &unk_1E8148000;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
        }
      }

LABEL_10:
      ++v12;
      if (v15 == v9)
      {
        v18 = v55;
        v3 = v50;
        a1 = v52;
        v10 = MEMORY[0x1E69E7CC0];
        goto LABEL_26;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_26:

  if (([a1 isHidden] & 1) != 0 || (objc_msgSend(a1, v11[333]), v19 <= 0.001))
  {

    return 0;
  }

  result = sub_1C19C6D90(a2, v18);
  if (v21)
  {
    goto LABEL_90;
  }

  v22 = result;
  if (result < 0)
  {
    goto LABEL_90;
  }

  LODWORD(v23) = v18 < 0 || (v18 & 0x4000000000000000) != 0;
  if (v23 == 1)
  {
    goto LABEL_89;
  }

  v24 = *(v18 + 16);
  if (result >= v24)
  {
LABEL_90:

    return v3;
  }

  while (1)
  {
    if (!v22)
    {
      goto LABEL_60;
    }

    if (v23)
    {
      result = sub_1C1A6F9EC();
      if (result < 0)
      {
        goto LABEL_96;
      }

      result = sub_1C1A6F9EC();
    }

    else
    {
      result = *(v18 + 16);
    }

    if (result < v22)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      sub_1C19C7364();

      v25 = 0;
      do
      {
        v26 = v25 + 1;
        sub_1C1A6FAEC();
        v25 = v26;
      }

      while (v22 != v26);
    }

    else
    {
    }

    v27 = v10;
    v53 = a1;
    v51 = v23;
    if (v23)
    {

      sub_1C1A6FBBC();
      v29 = v28;
      v3 = v30;
      a1 = (v31 >> 1);
    }

    else
    {
      v3 = 0;
      v29 = v18 + 32;
      a1 = v22;
    }

    v56 = v10;
    swift_unknownObjectRetain();
    if (v3 == a1)
    {
      break;
    }

    v10 = &unk_1E8148000;
    while (v3 < a1)
    {
      v23 = *(v29 + 8 * v3);
      [v23 zPosition];
      v33 = v32;
      [a2 zPosition];
      if (v34 >= v33)
      {
      }

      else
      {
        sub_1C1A6FB2C();
        sub_1C1A6FB5C();
        sub_1C1A6FB6C();
        sub_1C1A6FB3C();
      }

      if (a1 == ++v3)
      {
        v27 = v56;
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_89:
    result = sub_1C1A6F9EC();
    v24 = result;
    if (v22 >= result)
    {
      goto LABEL_90;
    }
  }

LABEL_59:
  swift_unknownObjectRelease_n();
  sub_1C19C6E80(0, 0, v27);

  a1 = v53;
  LODWORD(v23) = v51;
LABEL_60:
  if (v22 == (v24 - 1))
  {

    goto LABEL_83;
  }

  v35 = (v22 + 1);
  if (v24 < (v22 + 1))
  {
    goto LABEL_92;
  }

  if (v23)
  {
    result = sub_1C1A6F9EC();
  }

  else
  {
    result = *(v18 + 16);
  }

  if (result < v35)
  {
    goto LABEL_93;
  }

  if (v35 < 0)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v23)
  {
    v36 = sub_1C1A6F9EC();
  }

  else
  {
    v36 = *(v18 + 16);
  }

  if (v36 < v24)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if ((v18 & 0xC000000000000001) == 0 || v35 == v24)
  {

    goto LABEL_79;
  }

  if (v35 >= v24)
  {
LABEL_97:
    __break(1u);
    return result;
  }

  sub_1C19C7364();

  v37 = v22 + 1;
  do
  {
    v38 = v37 + 1;
    sub_1C1A6FAEC();
    v37 = v38;
  }

  while (v24 != v38);
LABEL_79:

  if (v23)
  {
    v39 = sub_1C1A6FBBC();
    v41 = v40;
    v35 = v42;
    v44 = v43;

    v45 = v44;
    v46 = v41;
    v18 = v39;
  }

  else
  {
    v46 = v18 + 32;
    v45 = (2 * v24) | 1;
  }

  sub_1C1A60200(v18, v46, v35, v45);
  swift_unknownObjectRelease();
LABEL_83:
  v47 = [a1 superlayer];
  v3 = a3;
  if (!v47)
  {
    return v3;
  }

  v48 = v47;
  v49 = sub_1C19C59A0(v47, a1, a3);

  return v49;
}

uint64_t sub_1C19C5FAC()
{
  if (([v0 masksToBounds] & 1) == 0)
  {
    v2 = [v0 sublayers];
    v1 = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return v1;
    }

    v3 = v2;
    sub_1C19C7364();
    v4 = sub_1C1A6F51C();

    if (v4 >> 62)
    {
      goto LABEL_41;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
LABEL_45:

      return v1;
    }

LABEL_6:
    v6 = 0;
    v43 = v1;
    v7 = &unk_1E8148000;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1C69055B0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v1 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        v5 = sub_1C1A6F9EC();
        if (!v5)
        {
          goto LABEL_45;
        }

        goto LABEL_6;
      }

      if (![v8 isHidden])
      {
        [v9 v7[333]];
        if (v10 > 0.0)
        {
          if (![v9 delegate])
          {
            if (sub_1C19A2D34())
            {
LABEL_21:

              v7 = &unk_1E8148000;
              goto LABEL_9;
            }

            goto LABEL_19;
          }

          swift_getObjectType();
          if ((sub_1C19E4D30() & 1) == 0)
          {
            v11 = sub_1C19A2D34();
            swift_unknownObjectRelease();
            if (v11)
            {
              goto LABEL_21;
            }

LABEL_19:
            sub_1C1A6FB2C();
            sub_1C1A6FB5C();
            sub_1C1A6FB6C();
            sub_1C1A6FB3C();
            v7 = &unk_1E8148000;
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
        }
      }

LABEL_9:
      ++v6;
      if (v1 == v5)
      {

        v13 = sub_1C19C63AC(v12);

        sub_1C1A5166C(v13);
        v4 = v43;
        v42 = MEMORY[0x1E69E7CC0];
        if (v43 >> 62)
        {
          v1 = sub_1C1A6F9EC();
          if (v1)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v1 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v1)
          {
LABEL_25:
            v14 = 0;
            while (1)
            {
              if ((v43 & 0xC000000000000001) != 0)
              {
                v15 = MEMORY[0x1C69055B0](v14, v43);
              }

              else
              {
                if (v14 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_40;
                }

                v15 = *(v43 + 8 * v14 + 32);
              }

              v16 = v15;
              v17 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_39;
              }

              v18 = [v15 superlayer];
              if (!v18 || (v19 = v18, [v16 frame], v21 = v20, v23 = v22, v25 = v24, v27 = v26, objc_msgSend(v19, sel_bounds), v47.origin.x = v28, v47.origin.y = v29, v47.size.width = v30, v47.size.height = v31, v44.origin.x = v21, v44.origin.y = v23, v44.size.width = v25, v44.size.height = v27, v45 = CGRectUnion(v44, v47), x = v45.origin.x, y = v45.origin.y, width = v45.size.width, height = v45.size.height, objc_msgSend(v19, sel_bounds), v48.origin.x = v36, v48.origin.y = v37, v48.size.width = v38, v48.size.height = v39, v46.origin.x = x, v46.origin.y = y, v46.size.width = width, v46.size.height = height, v40 = CGRectEqualToRect(v46, v48), v19, v40))
              {
              }

              else
              {
                sub_1C1A6FB2C();
                sub_1C1A6FB5C();
                sub_1C1A6FB6C();
                sub_1C1A6FB3C();
              }

              ++v14;
              if (v17 == v1)
              {
                v1 = v42;
                goto LABEL_45;
              }
            }
          }
        }

        v1 = MEMORY[0x1E69E7CC0];
        goto LABEL_45;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1C19C63AC(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x1E69E7CC0];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1C69055B0](v2, v25);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = sub_1C19C5FAC();

      v7 = v6 >> 62;
      if (v6 >> 62)
      {
        v8 = sub_1C1A6F9EC();
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1C1A6F9EC();
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_1C1A6F9EC();
        goto LABEL_20;
      }

      if (v9)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1C1A6FB0C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1C1A6F9EC();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v13 >> 1) - v12) < v33)
          {
            goto LABEL_42;
          }

          v31 = v3;
          v16 = v11 + 8 * v12 + 32;
          v27 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_44;
            }

            sub_1C19C73B0();
            for (i = 0; i != v14; ++i)
            {
              sub_1C19A9E58(&qword_1EBF03EF0);
              v18 = sub_1C1A5F054(v32, i, v6);
              v20 = *v19;
              (v18)(v32, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            sub_1C19C7364();
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v31;
          if (v33 >= 1)
          {
            v21 = *(v27 + 16);
            v5 = __OFADD__(v21, v33);
            v22 = v21 + v33;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v27 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_25;
        }
      }

      if (v33 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1C1A6F9EC();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C19C66E0(uint64_t a1, uint64_t (*a2)(__n128), CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v82 = CGRectIntersection(*&a3, *&a7);
  y = v82.origin.y;
  x = v82.origin.x;
  height = v82.size.height;
  width = v82.size.width;
  v82.origin.x = a3;
  v82.origin.y = a4;
  v82.size.width = a5;
  v82.size.height = a6;
  MinY = CGRectGetMinY(v82);
  v83.origin.x = a7;
  v83.origin.y = a8;
  v83.size.width = a9;
  v83.size.height = a10;
  v20 = MinY < CGRectGetMinY(v83);
  *&v79[24] = a6;
  rect = a10;
  v21 = a9;
  v77 = a9;
  *&v79[8] = a4;
  *&v79[16] = a5;
  *v79 = a3;
  if (v20)
  {
    v84.origin.x = a3;
    v84.origin.y = a4;
    v84.size.width = a5;
    v84.size.height = a6;
    MinX = CGRectGetMinX(v84);
    v85.origin.x = a3;
    v85.origin.y = a4;
    v85.size.width = a5;
    v85.size.height = a6;
    v67 = CGRectGetMinY(v85);
    v86.origin.x = a3;
    v86.origin.y = a4;
    v86.size.width = a5;
    v86.size.height = a6;
    v65 = CGRectGetWidth(v86);
    v87.origin.x = a7;
    v87.origin.y = a8;
    v87.size.width = a9;
    v87.size.height = rect;
    v22 = CGRectGetMinY(v87);
    v88.origin.x = a3;
    v88.origin.y = a4;
    v88.size.width = a5;
    v88.size.height = a6;
    v23 = CGRectGetMinY(v88);
    swift_beginAccess();
    v24 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 16) = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1C19CAF00(0, *(v24 + 2) + 1, 1, v24);
      *(a1 + 16) = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_1C19CAF00((v26 > 1), v27 + 1, 1, v24);
    }

    *(v24 + 2) = v27 + 1;
    v28 = &v24[32 * v27];
    v28[4] = MinX;
    v28[5] = v67;
    v28[6] = v65;
    v28[7] = v22 - v23;
    *(a1 + 16) = v24;
    v21 = a9;
    a6 = *&v79[24];
  }

  v89.origin.x = a3;
  v89.origin.y = a4;
  v89.size.width = a5;
  v89.size.height = a6;
  MaxY = CGRectGetMaxY(v89);
  v90.origin.x = a7;
  v90.origin.y = a8;
  v90.size.width = v21;
  v90.size.height = rect;
  if (CGRectGetMaxY(v90) < MaxY)
  {
    v91.origin.x = a3;
    v91.origin.y = a4;
    v91.size.width = a5;
    v91.size.height = a6;
    v71 = CGRectGetMinX(v91);
    v92.origin.x = a7;
    v92.origin.y = a8;
    v92.size.width = v21;
    v92.size.height = rect;
    v68 = CGRectGetMaxY(v92);
    v93.origin.x = a3;
    v93.origin.y = a4;
    v93.size.width = a5;
    v93.size.height = a6;
    v66 = CGRectGetWidth(v93);
    v94.origin.x = a3;
    v94.origin.y = a4;
    v94.size.width = a5;
    v94.size.height = a6;
    v30 = CGRectGetMaxY(v94);
    v95.origin.x = a7;
    v95.origin.y = a8;
    v95.size.width = v21;
    v95.size.height = rect;
    v31 = CGRectGetMaxY(v95);
    swift_beginAccess();
    v32 = *(a1 + 16);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 16) = v32;
    if ((v33 & 1) == 0)
    {
      v32 = sub_1C19CAF00(0, *(v32 + 2) + 1, 1, v32);
      *(a1 + 16) = v32;
    }

    v35 = *(v32 + 2);
    v34 = *(v32 + 3);
    if (v35 >= v34 >> 1)
    {
      v32 = sub_1C19CAF00((v34 > 1), v35 + 1, 1, v32);
    }

    *(v32 + 2) = v35 + 1;
    v36 = &v32[32 * v35];
    v36[4] = v71;
    v36[5] = v68;
    v36[6] = v66;
    v36[7] = v30 - v31;
    *(a1 + 16) = v32;
    v21 = v77;
    a6 = *&v79[24];
  }

  v96.origin.x = a3;
  v96.origin.y = a4;
  v96.size.width = a5;
  v96.size.height = a6;
  v37 = CGRectGetMinX(v96);
  v97.origin.x = a7;
  v97.origin.y = a8;
  v97.size.width = v21;
  v97.size.height = rect;
  if (v37 < CGRectGetMinX(v97))
  {
    v98.origin.x = a3;
    v98.origin.y = a4;
    v98.size.width = a5;
    v98.size.height = a6;
    v72 = CGRectGetMinX(v98);
    v99.origin.x = a7;
    v99.origin.y = a8;
    v99.size.width = v21;
    v99.size.height = rect;
    v69 = CGRectGetMinY(v99);
    v100.origin.x = a7;
    v100.origin.y = a8;
    v100.size.width = v21;
    v100.size.height = rect;
    v38 = CGRectGetMinX(v100);
    v101.origin.x = a3;
    v101.origin.y = a4;
    v101.size.width = a5;
    v101.size.height = a6;
    v39 = CGRectGetMinX(v101);
    v102.origin.y = y;
    v102.origin.x = x;
    v102.size.height = height;
    v102.size.width = width;
    v40 = CGRectGetHeight(v102);
    swift_beginAccess();
    v41 = *(a1 + 16);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 16) = v41;
    if ((v42 & 1) == 0)
    {
      v41 = sub_1C19CAF00(0, *(v41 + 2) + 1, 1, v41);
      *(a1 + 16) = v41;
    }

    v43 = v38 - v39;
    v45 = *(v41 + 2);
    v44 = *(v41 + 3);
    if (v45 >= v44 >> 1)
    {
      v41 = sub_1C19CAF00((v44 > 1), v45 + 1, 1, v41);
    }

    *(v41 + 2) = v45 + 1;
    v46 = &v41[32 * v45];
    v46[4] = v72;
    v46[5] = v69;
    v46[6] = v43;
    v46[7] = v40;
    *(a1 + 16) = v41;
    v21 = v77;
    a6 = *&v79[24];
  }

  v103.origin.x = a3;
  v103.origin.y = a4;
  v103.size.width = a5;
  v103.size.height = a6;
  MaxX = CGRectGetMaxX(v103);
  v104.origin.x = a7;
  v104.origin.y = a8;
  v104.size.width = v21;
  v104.size.height = rect;
  if (CGRectGetMaxX(v104) < MaxX)
  {
    v105.origin.x = a7;
    v105.origin.y = a8;
    v105.size.width = v21;
    v105.size.height = rect;
    v48 = CGRectGetMaxX(v105);
    v106.origin.x = a7;
    v106.origin.y = a8;
    v106.size.width = v21;
    v106.size.height = rect;
    v49 = CGRectGetMinY(v106);
    v107.origin.x = a3;
    v107.origin.y = *&v79[8];
    v107.size.width = *&v79[16];
    v107.size.height = *&v79[24];
    v78 = CGRectGetMaxX(v107);
    v108.origin.x = a7;
    v108.origin.y = a8;
    v108.size.width = v21;
    v108.size.height = rect;
    v50 = CGRectGetMaxX(v108);
    v109.origin.y = y;
    v109.origin.x = x;
    v109.size.height = height;
    v109.size.width = width;
    v51 = CGRectGetHeight(v109);
    swift_beginAccess();
    v52 = *(a1 + 16);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 16) = v52;
    if ((v53 & 1) == 0)
    {
      v52 = sub_1C19CAF00(0, *(v52 + 2) + 1, 1, v52);
      *(a1 + 16) = v52;
    }

    v54 = v78 - v50;
    v56 = *(v52 + 2);
    v55 = *(v52 + 3);
    if (v56 >= v55 >> 1)
    {
      v52 = sub_1C19CAF00((v55 > 1), v56 + 1, 1, v52);
    }

    *(v52 + 2) = v56 + 1;
    v57 = &v52[32 * v56];
    v57[4] = v48;
    v57[5] = v49;
    v57[6] = v54;
    v57[7] = v51;
    *(a1 + 16) = v52;
  }

  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {

    v60 = sub_1C19FAD3C(v59);

    v61 = CGRectGetWidth(*v79);
    v62 = v61 * CGRectGetHeight(*v79) - v60;
    v63 = CGRectGetWidth(*v79);
    v58.n128_f64[0] = v62 / (v63 * CGRectGetHeight(*v79));
    if (v58.n128_f64[0] <= 0.0)
    {
      v58.n128_f64[0] = 0.0;
    }
  }

  else
  {
    v58.n128_u64[0] = 1.0;
  }

  return a2(v58);
}

unint64_t sub_1C19C6D90(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1C1A6F9EC();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C69055B0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1C19C7364();
    v8 = sub_1C1A6F7BC();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_1C19C6E80(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (sub_1C1A6F9EC() < v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v3 >> 62))
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFSUB__(v10, v9);
    v12 = v10 - v9;
    if (!v11)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v10 = sub_1C1A6F9EC();
  v11 = __OFSUB__(v10, v9);
  v12 = v10 - v9;
  if (v11)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v8)
  {
    v13 = sub_1C1A6F9EC();
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  sub_1C1A5CA14(v14, 1);

  sub_1C19E7A04(v6, v5, v10, v3);
}

char *sub_1C19C6F94(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9)
{
  *&v53[16] = a8;
  *&v53[24] = a9;
  *v53 = a6;
  *&v53[8] = a7;
  v63 = *MEMORY[0x1E69E9840];
  v14 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_29:
    v15 = sub_1C1A6F9EC();
    if (v15)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v16 = 0;
  result = MEMORY[0x1E69E7CC0];
  rect_8 = a5;
  rect_16 = a2;
  v54 = a4;
  do
  {
    v52 = result;
    for (i = v16; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1C69055B0](i, a1);
      }

      else
      {
        if (i >= *(v14 + 16))
        {
          goto LABEL_28;
        }

        v19 = *(a1 + 8 * i + 32);
      }

      v20 = v19;
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      [v19 bounds];
      [v20 convertRect:0 toLayer:?];
      v75.origin.x = v21;
      v75.origin.y = v22;
      v75.size.width = v23;
      v25 = v24;
      v64.origin.x = a2;
      v64.origin.y = a3;
      v64.size.width = a4;
      v64.size.height = a5;
      y = v75.origin.y;
      x = v75.origin.x;
      rect_24 = v75.size.width;
      v75.size.height = v25;
      v26 = a2;
      v27 = a4;
      v28 = a3;
      if (!CGRectContainsRect(v64, v75) || (v65.origin.x = v26, v65.origin.y = a3, v65.size.width = a4, v65.size.height = a5, v29 = CGRectGetWidth(v65) * 0.5, memset(&slice, 0, sizeof(slice)), memset(&remainder, 0, sizeof(remainder)), v66.origin.x = v26, v66.origin.y = a3, v66.size.width = a4, v66.size.height = a5, CGRectDivide(v66, &slice, &remainder, v29, CGRectMinXEdge), v30 = remainder.origin.x, v31 = remainder.origin.y, width = remainder.size.width, height = remainder.size.height, v34 = CGRectGetHeight(remainder) * 0.5, memset(&slice, 0, sizeof(slice)), memset(&remainder, 0, sizeof(remainder)), v67.origin.x = v30, v67.origin.y = v31, v67.size.width = width, v67.size.height = height, CGRectDivide(v67, &slice, &remainder, v34, CGRectMinYEdge), v36 = remainder.origin.x, v35 = remainder.origin.y, v37 = remainder.size.width, v38 = remainder.size.height, v68.origin.y = y, v68.origin.x = x, v68.size.width = rect_24, v68.size.height = v25, MinX = CGRectGetMinX(v68), rect = v36, v69.origin.x = v36, v40 = v35, v27 = v54, v69.origin.y = v40, v69.size.width = v37, v69.size.height = v38, v41 = CGRectGetMinX(v69) < MinX, a5 = rect_8, !v41) || (v70.origin.y = y, v70.origin.x = x, v70.size.width = rect_24, v70.size.height = v25, MinY = CGRectGetMinY(v70), v71.origin.x = rect, v71.origin.y = v40, v71.size.width = v37, v71.size.height = v38, a3 = v28, v41 = CGRectGetMinY(v71) < MinY, a5 = rect_8, !v41))
      {
        v72.origin.x = v26;
        v72.origin.y = v28;
        v72.size.width = v27;
        v72.size.height = a5;
        v76.origin.y = y;
        v76.origin.x = x;
        v76.size.width = rect_24;
        v76.size.height = v25;
        a3 = v28;
        if (CGRectIntersectsRect(v72, v76))
        {
          break;
        }
      }

      a4 = v27;
LABEL_6:
      a2 = rect_16;
      if (v16 == v15)
      {
        return v52;
      }
    }

    v73.origin.x = v26;
    v73.origin.y = v28;
    v73.size.width = v27;
    v73.size.height = a5;
    v77.origin.y = y;
    v77.origin.x = x;
    v77.size.width = rect_24;
    v77.size.height = v25;
    v74 = CGRectIntersection(v73, v77);
    v43 = v74.origin.x;
    v44 = v74.origin.y;
    v45 = v74.size.width;
    v46 = v74.size.height;
    v47 = CGRectIntersectsRect(v74, *v53);

    a4 = v27;
    if (!v47)
    {
      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2 = rect_16;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v52;
    }

    else
    {
      result = sub_1C19CAF00(0, *(v52 + 2) + 1, 1, v52);
    }

    v50 = *(result + 2);
    v49 = *(result + 3);
    if (v50 >= v49 >> 1)
    {
      result = sub_1C19CAF00((v49 > 1), v50 + 1, 1, result);
    }

    *(result + 2) = v50 + 1;
    v51 = &result[32 * v50];
    v51[4] = v43;
    v51[5] = v44;
    v51[6] = v45;
    v51[7] = v46;
  }

  while (v16 != v15);
  return result;
}

unint64_t sub_1C19C7364()
{
  result = qword_1EDE626A0;
  if (!qword_1EDE626A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE626A0);
  }

  return result;
}

unint64_t sub_1C19C73B0()
{
  result = qword_1EBF03EF8;
  if (!qword_1EBF03EF8)
  {
    sub_1C19A9F04(&qword_1EBF03EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03EF8);
  }

  return result;
}

uint64_t sub_1C19C7414()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC17PromotedContentUI27AppStoreDataProviderSession_lastFetch;
  v2 = sub_1C1A6D5DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppStoreDataProviderSession()
{
  result = qword_1EDE61038;
  if (!qword_1EDE61038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C19C751C()
{
  result = sub_1C1A6D5DC();
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

void sub_1C19C7654()
{
  v1 = [v0 contentView];
  v2 = sub_1C19AF868();
  [v1 addSubview_];

  v3 = [v0 contentView];
  v4 = sub_1C19AF980();
  [v3 addSubview_];

  v5 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView;
  v6 = *&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView];
  v7 = sub_1C19AF9EC();
  [v6 addSubview_];

  v8 = *&v0[v5];
  v9 = sub_1C19AFAB0();
  [v8 addSubview_];

  v10 = *&v0[v5];
  v11 = sub_1C19AF98C();
  [v10 addSubview_];

  v12 = *&v0[v5];
  v13 = sub_1C19B139C();
  [v12 addSubview_];
}

id sub_1C19C77C8()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if ((v2 - 1) >= 2)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 159.1875;
  }

  v97 = objc_opt_self();
  sub_1C19A9E58(&qword_1EBF03E88);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1A748A0;
  v5 = sub_1C19AF868();
  v6 = [v5 leadingAnchor];

  v7 = [v0 contentView];
  v8 = [v7 &off_1E8148528 + 1];

  v9 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView;
  v11 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView] topAnchor];
  v12 = [v0 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 &selRef:v13 preferredFontForTextStyle:? + 5];
  *(v4 + 40) = v14;
  v15 = [*&v0[v10] trailingAnchor];
  v16 = [v0 contentView];
  v17 = [v16 &selRef_didImpress + 4];

  v18 = [v15 &selRef:v17 preferredFontForTextStyle:? + 5];
  *(v4 + 48) = v18;
  v19 = [*&v0[v10] heightAnchor];
  v20 = [v19 constraintEqualToConstant_];

  *(v4 + 56) = v20;
  v21 = sub_1C19AF980();
  v22 = [v21 &off_1E8148528 + 1];

  v23 = [v0 contentView];
  v24 = [v23 &off_1E8148528 + 1];

  v25 = [v22 &selRef:v24 preferredFontForTextStyle:? + 5];
  *(v4 + 64) = v25;
  v26 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView;
  v27 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView] topAnchor];
  v28 = [*&v0[v10] bottomAnchor];
  v29 = [v27 &selRef:v28 preferredFontForTextStyle:? + 5];

  *(v4 + 72) = v29;
  v30 = [*&v0[v26] trailingAnchor];
  v31 = [v0 contentView];
  v32 = [v31 trailingAnchor];

  v33 = [v30 &selRef:v32 preferredFontForTextStyle:? + 5];
  *(v4 + 80) = v33;
  v34 = [*&v0[v26] &selRef_addUnfilledReason_ + 5];
  v35 = [v0 contentView];
  v36 = [v35 &selRef_addUnfilledReason_ + 5];

  v37 = [v34 &selRef:v36 preferredFontForTextStyle:? + 5];
  *(v4 + 88) = v37;
  v38 = sub_1C19AF98C();
  v39 = [v38 leadingAnchor];

  v40 = [*&v0[v26] leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:12.0];

  *(v4 + 96) = v41;
  v42 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel;
  v43 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel] topAnchor];
  v44 = [*&v0[v26] topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:12.0];

  *(v4 + 104) = v45;
  v46 = [*&v0[v42] trailingAnchor];
  v47 = sub_1C19B139C();
  v48 = [v47 &off_1E8148528 + 1];

  v49 = [v46 constraintEqualToAnchor:v48 constant:-12.0];
  *(v4 + 112) = v49;
  v50 = [*&v0[v42] bottomAnchor];
  v51 = [*&v0[v26] bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:-12.0];

  *(v4 + 120) = v52;
  v53 = OBJC_IVAR____TtC17PromotedContentUI29CTACarouselCollectionViewCell____lazy_storage___button;
  v54 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI29CTACarouselCollectionViewCell____lazy_storage___button] trailingAnchor];
  v55 = [*&v0[v26] trailingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:-12.0];

  *(v4 + 128) = v56;
  v57 = [*&v0[v53] centerYAnchor];
  v58 = [*&v0[v26] centerYAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v4 + 136) = v59;
  v60 = [*&v0[v53] heightAnchor];
  v61 = [v60 constraintEqualToConstant_];

  *(v4 + 144) = v61;
  v62 = sub_1C19AF9EC();
  v63 = [v62 leadingAnchor];

  v64 = [*&v0[v26] leadingAnchor];
  v65 = [v63 constraintEqualToAnchor_];

  *(v4 + 152) = v65;
  v66 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView;
  v67 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView] topAnchor];
  v68 = [*&v0[v26] topAnchor];
  v69 = [v67 constraintEqualToAnchor_];

  *(v4 + 160) = v69;
  v70 = [*&v0[v66] trailingAnchor];
  v71 = [*&v0[v26] trailingAnchor];
  v72 = [v70 constraintEqualToAnchor_];

  *(v4 + 168) = v72;
  v73 = [*&v0[v66] bottomAnchor];
  v74 = [*&v0[v26] bottomAnchor];
  v75 = [v73 constraintEqualToAnchor_];

  *(v4 + 176) = v75;
  v76 = sub_1C19AFAB0();
  v77 = [v76 leadingAnchor];

  v78 = [*&v0[v26] leadingAnchor];
  v79 = [v77 constraintEqualToAnchor_];

  *(v4 + 184) = v79;
  v80 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView;
  v81 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView] topAnchor];
  v82 = [*&v0[v26] topAnchor];
  v83 = [v81 constraintEqualToAnchor_];

  *(v4 + 192) = v83;
  v84 = [*&v0[v80] trailingAnchor];
  v85 = [*&v0[v26] trailingAnchor];
  v86 = [v84 constraintEqualToAnchor_];

  *(v4 + 200) = v86;
  v87 = [*&v0[v80] bottomAnchor];
  v88 = [*&v0[v26] bottomAnchor];
  v89 = [v87 constraintEqualToAnchor_];

  *(v4 + 208) = v89;
  sub_1C19C2864();
  v90 = sub_1C1A6F50C();

  [v97 activateConstraints_];

  LODWORD(v91) = 1144750080;
  [*&v0[v53] setContentHuggingPriority:0 forAxis:v91];
  LODWORD(v92) = 1132068864;
  [*&v0[v42] setContentHuggingPriority:0 forAxis:v92];
  LODWORD(v93) = 1144750080;
  [*&v0[v53] setContentCompressionResistancePriority:0 forAxis:v93];
  v94 = *&v0[v42];
  LODWORD(v95) = 1132068864;

  return [v94 setContentCompressionResistancePriority:0 forAxis:v95];
}

id sub_1C19C8278()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumCTACarouselCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CompletedAdEvent.init(adInstanceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = sub_1C19B6BD8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for CompletedAdEvent();
  result = sub_1C1A6D61C();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

double CompletedAdEvent.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_1C1991010(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_1C19A1A5C(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C19C838C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_1C19C5408(a1, v7);
  sub_1C19C5408(v7, v6);

  sub_1C19B561C(v6, v3, v4);
  return sub_1C19C5478(v7);
}

uint64_t CompletedAdEvent.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C19C5408(a1, v7);
  sub_1C19B561C(v7, a2, a3);
  return sub_1C19C5478(a1);
}

void (*CompletedAdEvent.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v9 = *(v3 + 16);
  if (*(v9 + 16) && (v10 = sub_1C1991010(a2, a3), (v11 & 1) != 0))
  {
    sub_1C19A1A5C(*(v9 + 56) + 32 * v10, v8);
  }

  else
  {
    *v8 = 0u;
    v8[1] = 0u;
  }

  return sub_1C19C8510;
}

void sub_1C19C8510(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 96);
  if (a2)
  {
    sub_1C19C5408(*a1, v2 + 32);
    sub_1C19C5408(v2 + 32, v2 + 64);

    sub_1C19B561C(v2 + 64, v4, v3);
    sub_1C19C5478(v2 + 32);
  }

  else
  {
    sub_1C19C5408(*a1, v2 + 32);

    sub_1C19B561C(v2 + 32, v4, v3);
  }

  sub_1C19C5478(v2);

  free(v2);
}

uint64_t static CompletedAdEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CompletedAdEvent() + 24);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

uint64_t type metadata accessor for CompletedAdEvent()
{
  result = qword_1EDE61D68;
  if (!qword_1EDE61D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1C19C868C()
{
  sub_1C1A6D4EC();
  if (*(v0 + OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_mostRecentTapTimestamp + 8))
  {
    sub_1C1A6F67C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v2 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    return 0;
  }

  else
  {
    v4 = v1 - *(v0 + OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_mostRecentTapTimestamp);
    sub_1C1A6F67C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v5 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v6 = swift_allocObject();
    v7 = MEMORY[0x1E69E63B0];
    *(v6 + 16) = xmmword_1C1A73A30;
    v8 = MEMORY[0x1E69E6438];
    *(v6 + 56) = v7;
    *(v6 + 64) = v8;
    *(v6 + 32) = v4;
    sub_1C1A6F18C();

    return v4 <= 0.2;
  }
}

uint64_t sub_1C19C8854()
{
  result = sub_1C19C89FC();
  if (result)
  {
    v1 = result;
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v2 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C1A74920;
    v4 = [v1 isDragging];
    v5 = MEMORY[0x1E69E6370];
    v6 = MEMORY[0x1E69E63A8];
    *(v3 + 56) = MEMORY[0x1E69E6370];
    *(v3 + 64) = v6;
    *(v3 + 32) = v4;
    v7 = [v1 isDecelerating];
    *(v3 + 96) = v5;
    *(v3 + 104) = v6;
    *(v3 + 72) = v7;
    v8 = [v1 isTracking];
    *(v3 + 136) = v5;
    *(v3 + 144) = v6;
    *(v3 + 112) = v8;
    sub_1C1A6F18C();

    if ([v1 isDragging] || objc_msgSend(v1, sel_isDecelerating))
    {

      return 1;
    }

    else
    {
      v9 = [v1 isTracking];

      return v9 ^ 1;
    }
  }

  return result;
}

id sub_1C19C89FC()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer____lazy_storage___scrollableAncestor;
  v2 = *&v0[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer____lazy_storage___scrollableAncestor];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1C19C8A6C(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_1C19C9C6C(v4);
  }

  sub_1C19C9C7C(v2);
  return v3;
}

id sub_1C19C8A6C(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    v3 = v2;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v4 = [v3 superview];

      v3 = v4;
      if (!v4)
      {

        return 0;
      }
    }

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();

    if (!v5)
    {

      return 0;
    }

    v6 = v5;
    v7 = [v5 superview];
    if (v7)
    {
      v8 = v7;
      v9 = v8;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v10 = [v9 superview];

        v9 = v10;
        if (!v10)
        {

          return v6;
        }
      }

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;

        return v12;
      }
    }

    return v6;
  }

  return result;
}

void sub_1C19C8BE4(uint64_t a1, uint64_t a2)
{
  sub_1C198FB8C(0, &qword_1EDE60C78);
  sub_1C19CA538(&qword_1EDE60C70, &qword_1EDE60C78);
  v5 = sub_1C1A6F5EC();
  v21.receiver = v2;
  v21.super_class = type metadata accessor for TapGestureRecognizer();
  objc_msgSendSuper2(&v21, sel_touchesBegan_withEvent_, v5, a2);

  v6 = *&v2[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchDownHandler];
  if (v6)
  {

    v8 = sub_1C19C9C8C(v7, a1);
    if (!v8)
    {
LABEL_12:
      sub_1C19A504C(v6);
      return;
    }

    v9 = v8;
    if ((a1 & 0xC000000000000001) != 0)
    {
      if (sub_1C1A6F9EC() < 2)
      {
        goto LABEL_11;
      }
    }

    else if (*(a1 + 16) < 2)
    {
LABEL_11:
      v15 = [v2 view];
      [v9 locationInView_];
      v17 = v16;
      v19 = v18;

      v20 = [v9 phase];
      *&v2[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_lastTrackedTouch] = v20;
      v6(v2, 1, v17, v19);

      goto LABEL_12;
    }

    v10 = v2;
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v11 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C1A73A30;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = sub_1C1A6F9EC();
    }

    else
    {
      v13 = *(a1 + 16);
    }

    v14 = MEMORY[0x1E69E65A8];
    *(v12 + 56) = MEMORY[0x1E69E6530];
    *(v12 + 64) = v14;
    *(v12 + 32) = v13;
    sub_1C1A6F18C();

    v2 = v10;
    goto LABEL_11;
  }
}

void sub_1C19C8EA4(uint64_t a1, uint64_t a2)
{
  sub_1C198FB8C(0, &qword_1EDE60C78);
  sub_1C19CA538(&qword_1EDE60C70, &qword_1EDE60C78);
  v5 = sub_1C1A6F5EC();
  v27.receiver = v2;
  v27.super_class = type metadata accessor for TapGestureRecognizer();
  objc_msgSendSuper2(&v27, sel_touchesMoved_withEvent_, v5, a2);

  v6 = *&v2[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchMovedHandler];
  if (v6)
  {

    v8 = sub_1C19C9C8C(v7, a1);
    if (!v8)
    {
LABEL_20:
      sub_1C19A504C(v6);
      return;
    }

    v9 = v8;
    v10 = [v2 view];
    if (!v10)
    {
      v11 = v9;
LABEL_19:

      goto LABEL_20;
    }

    v11 = v10;
    [v9 locationInView_];
    v13 = v12;
    v15 = v14;
    [v9 previousLocationInView_];
    v17 = v16;
    v19 = v18;

    if (v13 != v17 || v15 != v19)
    {
      v21 = [v9 phase];
      *&v2[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_lastTrackedTouch] = v21;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      if (sub_1C1A6F9EC() < 2)
      {
        goto LABEL_18;
      }
    }

    else if (*(a1 + 16) < 2)
    {
LABEL_18:
      v6(v2, [v11 pointInside:a2 withEvent:{*&v2[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_location], *&v2[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_location + 8]}], v13, v15);

      goto LABEL_19;
    }

    v26 = v2;
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v22 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C1A73A30;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = sub_1C1A6F9EC();
    }

    else
    {
      v24 = *(a1 + 16);
    }

    v25 = MEMORY[0x1E69E65A8];
    *(v23 + 56) = MEMORY[0x1E69E6530];
    *(v23 + 64) = v25;
    *(v23 + 32) = v24;
    sub_1C1A6F18C();

    v2 = v26;
    goto LABEL_18;
  }
}

id sub_1C19C91CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C198FB8C(0, &qword_1EDE60C78);
  sub_1C19CA538(&qword_1EDE60C70, &qword_1EDE60C78);
  v6 = sub_1C1A6F5EC();
  v22.receiver = v3;
  v22.super_class = type metadata accessor for TapGestureRecognizer();
  objc_msgSendSuper2(&v22, sel_touchesCancelled_withEvent_, v6, a2);

  result = [v3 setState_];
  v8 = &v3[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchUpHandler];
  v9 = *&v3[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchUpHandler];
  if (v9)
  {

    v11 = sub_1C19C9C8C(v10, a1);
    if (v11)
    {
      v12 = v11;
      v13 = [v3 view];
      if (v13)
      {
        v14 = v13;
        v15 = [v12 phase];
        *&v3[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_lastTrackedTouch] = v15;
        if ((a1 & 0xC000000000000001) != 0)
        {
          if (sub_1C1A6F9EC() < 2)
          {
            goto LABEL_16;
          }
        }

        else if (*(a1 + 16) < 2)
        {
LABEL_16:
          [v12 locationInView_];
          v9(v3, 0);

          v17 = v9;
          return sub_1C19A504C(v17);
        }

        sub_1C1A6F64C();
        sub_1C198FB8C(0, &qword_1EDE63F30);
        v18 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1C1A73A30;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v20 = sub_1C1A6F9EC();
        }

        else
        {
          v20 = *(a1 + 16);
        }

        v21 = MEMORY[0x1E69E65A8];
        *(v19 + 56) = MEMORY[0x1E69E6530];
        *(v19 + 64) = v21;
        *(v19 + 32) = v20;
        sub_1C1A6F18C();

        goto LABEL_16;
      }
    }

    result = sub_1C19A504C(v9);
  }

  v3[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_shouldBlockNavigation] = 0;
  v16 = *v8;
  if (!*v8)
  {
    return result;
  }

  v16(v3, 0, 0.0, 0.0);
  v17 = v16;
  return sub_1C19A504C(v17);
}

void sub_1C19C94DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C198FB8C(0, &qword_1EDE60C78);
  sub_1C19CA538(&qword_1EDE60C70, &qword_1EDE60C78);
  v6 = sub_1C1A6F5EC();
  v29.receiver = v3;
  v29.super_class = type metadata accessor for TapGestureRecognizer();
  objc_msgSendSuper2(&v29, sel_touchesEnded_withEvent_, v6, a2);

  v8 = sub_1C19C9C8C(v7, a1);
  if (v8)
  {
    v9 = v8;
    v10 = [v3 view];
    if (v10)
    {
      v11 = v10;
      if ((a1 & 0xC000000000000001) != 0)
      {
        if (sub_1C1A6F9EC() < 2)
        {
          goto LABEL_14;
        }
      }

      else if (*(a1 + 16) < 2)
      {
LABEL_14:
        [v9 locationInView_];
        v19 = v18;
        v21 = v20;
        v22 = [v11 pointInside:a2 withEvent:?];
        if (v22)
        {
          v23 = 3;
        }

        else
        {
          v23 = 4;
        }

        [v3 setState_];
        v24 = OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_lastTrackedTouch;
        if (*&v3[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_lastTrackedTouch] != 1 && (sub_1C19C8854() & 1) == 0)
        {
          v25 = &v3[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_mostRecentTapLocation];
          *v25 = v19;
          v25[1] = v21;
          sub_1C1A6D4EC();
          v26 = &v3[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_mostRecentTapTimestamp];
          *v26 = v27;
          v26[8] = 0;
        }

        *&v3[v24] = [v9 phase];
        v28 = *&v3[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchUpHandler];
        if (!v28)
        {

          return;
        }

        v28(v3, v22, v19, v21);

        v13 = v28;
        goto LABEL_22;
      }

      sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v14 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1C1A73A30;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = sub_1C1A6F9EC();
      }

      else
      {
        v16 = *(a1 + 16);
      }

      v17 = MEMORY[0x1E69E65A8];
      *(v15 + 56) = MEMORY[0x1E69E6530];
      *(v15 + 64) = v17;
      *(v15 + 32) = v16;
      sub_1C1A6F18C();

      goto LABEL_14;
    }
  }

  v3[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_shouldBlockNavigation] = 0;
  [v3 setState_];
  v12 = *&v3[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchUpHandler];
  if (!v12)
  {
    return;
  }

  v12(v3, 0, 0.0, 0.0);
  v13 = v12;
LABEL_22:
  sub_1C19A504C(v13);
}

uint64_t sub_1C19C987C(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  sub_1C198FB8C(0, &qword_1EDE60C78);
  sub_1C19CA538(&qword_1EDE60C70, &qword_1EDE60C78);
  v8 = sub_1C1A6F5FC();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
}

id sub_1C19C9B00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_1C19C9BBC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C19C9BD0(uint64_t *a1, int a2)
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

uint64_t sub_1C19C9C18(uint64_t result, int a2, int a3)
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

void sub_1C19C9C6C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1C19C9C7C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_1C19C9C8C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) == 0)
  {
    v9 = *(a2 + 16);
    if (v9)
    {
      v5 = sub_1C19C9DB4(v9);
      v6 = sub_1C1A6F95C();
      v8 = *(a2 + 36);
      goto LABEL_8;
    }

    return 0;
  }

  if (!sub_1C1A6F9EC())
  {
    return 0;
  }

  result = sub_1C1A6F9EC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v5 = sub_1C19C9DB4(result);
    v6 = sub_1C1A6F98C();
    v8 = v7;
LABEL_8:
    v10 = v3 != 0;
    v11 = v6;
    v12 = sub_1C19C9E40(v6, v8, v10, v5, a2);
    v14 = v13;
    v16 = v15;
    sub_1C19B07E4(v11, v8, v10);
    sub_1C19CA078(v12, v14, v16 & 1, a2);
    v18 = v17;
    sub_1C19B07E4(v12, v14, v16 & 1);
    return v18;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C19C9DB4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1C6906280](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1C6906280](&v3, 8);
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

uint64_t sub_1C19C9E40(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
    goto LABEL_28;
  }

  v24 = result;
  v25 = a2;
  v26 = a3 & 1;
  if (!a4)
  {
    v22 = result;
    sub_1C19CA588(result, a2, a3 & 1);
    return v22;
  }

  v7 = a5 & 0xC000000000000001;
  result = sub_1C19CA588(result, a2, a3 & 1);
  v8 = 0;
  v9 = a4 - 1;
  while (1)
  {
    if (v7)
    {
      if (v26 != 1)
      {
        goto LABEL_29;
      }

      if (sub_1C1A6F9AC())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1C19A9E58(qword_1EBF03FE8);
      v10 = sub_1C1A6F61C();
      sub_1C1A6FA3C();
      result = v10(v23, 0);
      goto LABEL_5;
    }

    if (v26)
    {
      goto LABEL_30;
    }

    result = v24;
    if ((v24 & 0x8000000000000000) != 0)
    {
      break;
    }

    v12 = 1 << *(a5 + 32);
    if (v24 >= v12)
    {
      break;
    }

    v13 = v24 >> 6;
    v14 = *(a5 + 56 + 8 * (v24 >> 6));
    if (((v14 >> v24) & 1) == 0)
    {
      goto LABEL_26;
    }

    if (*(a5 + 36) != v25)
    {
      goto LABEL_27;
    }

    v15 = v14 & (-2 << (v24 & 0x3F));
    if (v15)
    {
      v12 = __clz(__rbit64(v15)) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v13 << 6;
      v17 = v13 + 1;
      v18 = (a5 + 64 + 8 * v13);
      while (v17 < (v12 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1C19B07E4(v24, v25, 0);
          v12 = __clz(__rbit64(v19)) + v16;
          goto LABEL_22;
        }
      }

      result = sub_1C19B07E4(v24, v25, 0);
    }

LABEL_22:
    v21 = *(a5 + 36);
    v24 = v12;
    v25 = v21;
    v26 = 0;
LABEL_5:
    if (v8++ == v9)
    {
      return v24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_1C19CA078(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1C69054C0](a1, a2, v7);
      sub_1C198FB8C(0, &qword_1EDE60C78);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C198FB8C(0, &qword_1EDE60C78);
    if (sub_1C1A6F9CC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1C1A6F9DC();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1C1A6F7AC();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1C1A6F7BC();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

void sub_1C19CA29C(void *a1)
{
  v2 = OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_preventedTouches;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1C1A6F99C();
    sub_1C198FB8C(0, &qword_1EDE626B8);
    sub_1C19CA538(&qword_1EBF03FE0, &qword_1EDE626B8);
    sub_1C1A6F62C();
    v5 = v21;
    v4 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    v5 = v3;
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  while (v5 < 0)
  {
    if (!sub_1C1A6FA1C() || (sub_1C198FB8C(0, &qword_1EDE626B8), swift_dynamicCast(), (v14 = v20) == 0))
    {
LABEL_19:
      sub_1C19A93FC();

      return;
    }

LABEL_17:
    v15 = v14;
    v16 = [a1 view];
    if (v16)
    {
      v17 = v16;
      sub_1C198FB8C(0, &qword_1EDE626B8);
      v18 = sub_1C1A6F7BC();

      if (v18)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  v12 = v7;
  v13 = v8;
  if (v8)
  {
LABEL_13:
    v8 = (v13 - 1) & v13;
    v14 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v7 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v7 >= ((v6 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v13 = *(v4 + 8 * v7);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1C19CA538(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C198FB8C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C19CA588(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t PageExitAdEvent.init(pageIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = sub_1C19B6BD8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for PageExitAdEvent();
  result = sub_1C1A6D61C();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

double PageExitAdEvent.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_1C1991010(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_1C19A1A5C(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t PageExitAdEvent.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C19C5408(a1, v7);
  sub_1C19B561C(v7, a2, a3);
  return sub_1C19C5478(a1);
}

void (*PageExitAdEvent.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v9 = *(v3 + 16);
  if (*(v9 + 16) && (v10 = sub_1C1991010(a2, a3), (v11 & 1) != 0))
  {
    sub_1C19A1A5C(*(v9 + 56) + 32 * v10, v8);
  }

  else
  {
    *v8 = 0u;
    v8[1] = 0u;
  }

  return sub_1C19C8510;
}

uint64_t static PageExitAdEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PageExitAdEvent() + 24);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

uint64_t type metadata accessor for PageExitAdEvent()
{
  result = qword_1EDE61E10;
  if (!qword_1EDE61E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19CA824(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = objc_opt_self();
  sub_1C19A9E58(&qword_1EBF03E88);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C1A74A20;
  v14 = [v6 leadingAnchor];
  v15 = [a1 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:a3];

  *(v13 + 32) = v16;
  v17 = [v6 topAnchor];
  v18 = [a1 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:a2];

  *(v13 + 40) = v19;
  v20 = [v6 trailingAnchor];
  v21 = [a1 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:a5];

  *(v13 + 48) = v22;
  v23 = [v6 bottomAnchor];
  v24 = [a1 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:a4];

  *(v13 + 56) = v25;
  sub_1C19C2864();
  v26 = sub_1C1A6F50C();

  [v12 activateConstraints_];
}

id _s17PromotedContentUI9AppAdViewC010presentingF10Controller3forSo06UIViewH0CSgSo011ASCAdLockupF0C_tF_0()
{
  v1 = [v0 nextResponder];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  result = [v0 nextResponder];
  if (result)
  {
    v4 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = _s17PromotedContentUI9AppAdViewC010presentingF10Controller3forSo06UIViewH0CSgSo011ASCAdLockupF0C_tF_0();

      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

Swift::String __swiftcall UIView.dumpParentDescription()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  do
  {
    v3 = v1;
    v4 = [v3 description];
    v5 = sub_1C1A6F3CC();
    v7 = v6;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1C19CADF4(0, *(v2 + 2) + 1, 1, v2);
    }

    v9 = *(v2 + 2);
    v8 = *(v2 + 3);
    if (v9 >= v8 >> 1)
    {
      v2 = sub_1C19CADF4((v8 > 1), v9 + 1, 1, v2);
    }

    *(v2 + 2) = v9 + 1;
    v10 = &v2[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v7;
    v1 = [v3 superview];
  }

  while (v1);
  v17 = 0;
  v18 = 0xE000000000000000;
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1C19CB5BC(v2, &v17, v16, 2573, 0xE200000000000000);

  v11 = v17;
  v12 = v18;

  v13 = v11;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

char *sub_1C19CACF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF03778);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C19CADF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF037C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C19CAF00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF03780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1C19CB004(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF04088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C19CB108(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF043D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1C19CB25C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C19A9E58(&qword_1EBF037A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C19A9E58(&qword_1EBF037B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1C19CB3E0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1C19A9E58(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1C19CB5BC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  if (v5)
  {
    v9 = (result + 16 * v5 + 24);
    do
    {
      --v5;
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = *a3;
      v13 = a3[1];

      MEMORY[0x1C6904F50](v10, v11);

      MEMORY[0x1C6904F50](a4, a5);

      MEMORY[0x1C6904F50](v12, v13);

      MEMORY[0x1C6904F50](8224, 0xE200000000000000);

      v9 -= 2;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1C19CB6B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C19CB710()
{
  v1 = OBJC_IVAR___APPCMetricsView_currentlyViewable;
  if (*(v0 + OBJC_IVAR___APPCMetricsView_currentlyViewable) == 1)
  {
    v2 = v0;
    *(v0 + OBJC_IVAR___APPCMetricsView_isBackgrounded) = 1;
    sub_1C19A3828(0);
    if (*(v0 + v1) == 1)
    {
      *(v0 + v1) = 0;
      sub_1C19DF3D8();
      sub_1C1A6F64C();
      sub_1C199E4CC();
      v3 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1C1A73A30;
      v6 = *(v2 + OBJC_IVAR___APPCMetricsView_identifier);
      v5 = *(v2 + OBJC_IVAR___APPCMetricsView_identifier + 8);
      *(v4 + 56) = MEMORY[0x1E69E6158];
      *(v4 + 64) = sub_1C199E518();
      *(v4 + 32) = v6;
      *(v4 + 40) = v5;

      sub_1C1A6F18C();
    }

    sub_1C19C38C0();
  }
}

id sub_1C19CB898(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VisibilityTiming();
  v84 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v73 - v7;
  v8 = sub_1C19A9E58(&qword_1EBF03C58);
  *&v9 = MEMORY[0x1EEE9AC00](v8 - 8).n128_u64[0];
  v81 = &v73 - v10;
  v11 = OBJC_IVAR___APPCMetricsView_visibleThresholdsLock;
  [*(v1 + OBJC_IVAR___APPCMetricsView_visibleThresholdsLock) lock];
  sub_1C19A445C(a1);
  v12 = OBJC_IVAR___APPCMetricsView_visibleThresholds;
  v13 = *(v1 + OBJC_IVAR___APPCMetricsView_visibleThresholds);
  v14 = *(v13 + 16);
  if (!v14)
  {
    v21 = *(v1 + v11);
LABEL_12:

    return [v21 unlock];
  }

  v75 = v11;
  v83 = v4;
  for (i = 0; i != v14; ++i)
  {
    v16 = a1 > 0;
    v17 = *(v13 + 8 * i + 32);
    if (v17)
    {
      v16 = v17 <= a1;
    }

    if (v16)
    {

      if (i)
      {
        v23 = 0;
        do
        {
          v24 = v23 + 1;
          sub_1C19CCA34(*(v13 + 32 + 8 * v23));
          v23 = v24;
        }

        while (i != v24);
      }

      v25 = *(v1 + v12);
      v26 = *(v25 + 16);
      if (v26 < i)
      {
        goto LABEL_56;
      }

      v27 = OBJC_IVAR___APPCMetricsView_timingTracking;

      v76 = v27;
      swift_beginAccess();
      *&v77 = v25;
      if (v26 == i)
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v79 = (v84 + 56);
        v80 = (v25 + 32);
        v28 = MEMORY[0x1E69E7CC0];
        v74 = v26 - 1;
        v29 = i;
        do
        {
          v78 = v28;
          v30 = v29;
          while (1)
          {
            if (v29 < i || v30 >= v26)
            {
              goto LABEL_54;
            }

            v31 = *&v80[8 * v30];
            v87 = v31;
            v32 = sub_1C1A6FCCC();
            v34 = v33;
            v35 = *(v2 + v76);
            if (!*(v35 + 16))
            {
              break;
            }

            v36 = v32;

            v37 = sub_1C1991010(v36, v34);
            v39 = v38;

            if ((v39 & 1) == 0)
            {
              break;
            }

            ++v30;
            v40 = v84;
            v41 = *(v35 + 56) + *(v84 + 72) * v37;
            v42 = v81;
            sub_1C19CD4A0(v41, v81);

            (*(v40 + 56))(v42, 0, 1, v83);
            sub_1C1991140(v42, &qword_1EBF03C58);
            if (v26 == v30)
            {
              v28 = v78;
              goto LABEL_34;
            }
          }

          v43 = v81;
          (*v79)(v81, 1, 1, v83);
          sub_1C1991140(v43, &qword_1EBF03C58);
          v28 = v78;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C19AA268(0, *(v28 + 2) + 1, 1);
            v28 = v86;
          }

          v46 = *(v28 + 2);
          v45 = *(v28 + 3);
          if (v46 >= v45 >> 1)
          {
            sub_1C19AA268((v45 > 1), v46 + 1, 1);
            v28 = v86;
          }

          v29 = v30 + 1;
          *(v28 + 2) = v46 + 1;
          *&v28[8 * v46 + 32] = v31;
        }

        while (v74 != v30);
      }

LABEL_34:

      v81 = *(v28 + 2);
      v47 = v76;
      if (!v81)
      {
LABEL_50:

        return [*(v2 + v75) unlock];
      }

      v48 = 0;
      v79 = "n>16@0:8";
      v80 = v28 + 32;
      v78 = " from a non-main thread.";
      v77 = xmmword_1C1A73A30;
      while (1)
      {
        if (v48 >= *(v28 + 2))
        {
          goto LABEL_52;
        }

        v49 = v28;
        v86 = *&v80[8 * v48];
        v50 = sub_1C1A6FCCC();
        v52 = v51;
        sub_1C1A6F65C();
        sub_1C199E4CC();
        v53 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0);
        v54 = swift_allocObject();
        *(v54 + 16) = v77;
        *(v54 + 56) = MEMORY[0x1E69E6158];
        *(v54 + 64) = sub_1C199E518();
        *(v54 + 32) = v50;
        *(v54 + 40) = v52;

        sub_1C1A6F18C();

        v55 = v82;
        sub_1C1A6D5CC();
        v56 = *(v83 + 20);
        v57 = sub_1C1A6D5DC();
        (*(*(v57 - 8) + 56))(v55 + v56, 1, 1, v57);
        swift_beginAccess();
        sub_1C19CD504(v55, v85);
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v87 = *(v2 + v47);
        v59 = v87;
        *(v2 + v47) = 0x8000000000000000;
        v61 = sub_1C1991010(v50, v52);
        v62 = v59[2];
        v63 = (v60 & 1) == 0;
        v64 = v62 + v63;
        if (__OFADD__(v62, v63))
        {
          goto LABEL_53;
        }

        v65 = v60;
        if (v59[3] >= v64)
        {
          if (v58)
          {
            v68 = v87;
            if (v60)
            {
              goto LABEL_36;
            }
          }

          else
          {
            sub_1C1A4A1C8();
            v68 = v87;
            if (v65)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          sub_1C1A484CC(v64, v58);
          v66 = sub_1C1991010(v50, v52);
          if ((v65 & 1) != (v67 & 1))
          {
            goto LABEL_57;
          }

          v61 = v66;
          v68 = v87;
          if (v65)
          {
LABEL_36:
            sub_1C19CD568(v85, v68[7] + *(v84 + 72) * v61);

            goto LABEL_37;
          }
        }

        v68[(v61 >> 6) + 8] |= 1 << v61;
        v69 = (v68[6] + 16 * v61);
        *v69 = v50;
        v69[1] = v52;
        sub_1C19CD504(v85, v68[7] + *(v84 + 72) * v61);
        v70 = v68[2];
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (v71)
        {
          goto LABEL_55;
        }

        v68[2] = v72;
LABEL_37:
        ++v48;
        *(v2 + v47) = v68;
        swift_endAccess();
        v28 = v49;
        if (v81 == v48)
        {
          goto LABEL_50;
        }
      }
    }
  }

  v18 = 0;
  v19 = v75;
  while (v18 < *(v13 + 16))
  {
    v20 = v18 + 1;
    sub_1C19CCA34(*(v13 + 8 * v18 + 32));
    v18 = v20;
    if (v14 == v20)
    {

      v21 = *(v1 + v19);
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_1C1A6FD3C();
  __break(1u);
  return result;
}

uint64_t sub_1C19CC080()
{
  v1 = v0;
  sub_1C1A6F64C();
  sub_1C199E4CC();
  v2 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1A73A30;
  v4 = OBJC_IVAR___APPCMetricsView_promotedContent;
  v5 = [*&v1[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
  v6 = sub_1C1A6F3CC();
  v8 = v7;

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1C199E518();
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  sub_1C1A6F18C();

  [v1 setReady_];
  [v1 collapse];
  v9 = [v1 promotedContentInfo];
  if (v9)
  {
    v10 = v9;
    [v9 setUnfilledReason_];
  }

  [objc_msgSend(*&v1[v4] metricsHelper)];

  return swift_unknownObjectRelease();
}

void sub_1C19CC250()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = [objc_opt_self() mainScreen];
    v5 = sub_1C199C748();

    if (v5 != *(v1 + OBJC_IVAR___APPCMetricsView_currentOrientation))
    {
      if (*(v1 + OBJC_IVAR___APPCMetricsView_currentOrientation) = v5, v6 = MEMORY[0x1E69E7D40], v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x420), (v8 = v7()) != 0) && (v9 = v8[OBJC_IVAR___APPCPromotedContentView_shouldCollapseOnRotation], v8, (v9) || (sub_1C19A2A40() & 1) == 0 && ([*(v1 + OBJC_IVAR___APPCMetricsView_promotedContent) serverUnfilledReason], v10 = sub_1C1A6DF6C(), v10 == sub_1C1A6DF6C()) && (v11 = v7()) != 0 && (v12 = v11, *&v13 = COERCE_DOUBLE((*((*v6 & *v11) + 0x2A8))()), v15 = v14, v17 = v16, v12, (v17 & 1) == 0) && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && ((v19 = *&v13, v20 = Strong, objc_msgSend(Strong, sel_bounds), v22 = v21, v24 = v23, v26 = v25, v28 = v27, v20, v30.origin.x = v22, v30.origin.y = v24, v30.size.width = v26, v30.size.height = v28, ceil(CGRectGetWidth(v30)) < floor(v19)) || (v31.origin.x = v22, v31.origin.y = v24, v31.size.width = v26, v31.size.height = v28, ceil(CGRectGetHeight(v31)) < floor(v15))))
      {

        sub_1C19CC080();
      }
    }
  }
}

void sub_1C19CC52C()
{
  sub_1C19DACB8(0, 0, 0);
  if (*(v0 + OBJC_IVAR___APPCMetricsView_wasTapped) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = [Strong viewControllerToPresentFrom];
      v3 = swift_unknownObjectRelease();
    }

    else
    {
      v3 = _s17PromotedContentUI9AppAdViewC010presentingF10Controller3forSo06UIViewH0CSgSo011ASCAdLockupF0C_tF_0();
      if (!v3)
      {
        return;
      }

      v2 = v3;
    }

    v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x420))(v3);
    if (v4 && (v5 = v4 + OBJC_IVAR___APPCPromotedContentView_interactionDelegate, v6 = v4, v7 = swift_unknownObjectWeakLoadStrong(), v8 = *(v5 + 8), v6, v7))
    {
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(v2, ObjectType, v8);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1C19CC6D0()
{
  v1 = v0;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x420))();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for WebAdView();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      *(v4 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_isAppActive) = 0;
    }
  }

  v5 = OBJC_IVAR___APPCMetricsView_currentlyViewable;
  if (*(v1 + OBJC_IVAR___APPCMetricsView_currentlyViewable) == 1)
  {
    *(v1 + OBJC_IVAR___APPCMetricsView_isBackgrounded) = 1;
    sub_1C19A3828(0);
    if (*(v1 + v5) == 1)
    {
      *(v1 + v5) = 0;
      sub_1C19DF3D8();
      sub_1C1A6F64C();
      sub_1C199E4CC();
      v6 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1C1A73A30;
      v9 = *(v1 + OBJC_IVAR___APPCMetricsView_identifier);
      v8 = *(v1 + OBJC_IVAR___APPCMetricsView_identifier + 8);
      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 64) = sub_1C199E518();
      *(v7 + 32) = v9;
      *(v7 + 40) = v8;

      sub_1C1A6F18C();
    }

    sub_1C19C38C0();
  }
}

uint64_t sub_1C19CC8E4()
{
  sub_1C19CB710();
  v1 = OBJC_IVAR___APPCMetricsView_promotedContent;
  if (![*(v0 + OBJC_IVAR___APPCMetricsView_promotedContent) mediaMetricHelper] || (sub_1C19A9E58(&qword_1EBF040A0), sub_1C19A9E58(qword_1EBF040A8), (swift_dynamicCast() & 1) == 0))
  {
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
    goto LABEL_6;
  }

  if (!*(&v4 + 1))
  {
LABEL_6:
    sub_1C1991140(&v3, &qword_1EBF04098);
    goto LABEL_7;
  }

  sub_1C1994048(&v3, *(&v4 + 1));
  sub_1C1A6E46C();
  sub_1C199935C(&v3);
LABEL_7:
  [objc_msgSend(*(v0 + v1) metricsHelper)];
  return swift_unknownObjectRelease();
}

uint64_t sub_1C19CCA34(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&qword_1EBF03C58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v108 = &v100 - v5;
  v109 = sub_1C1A6D5DC();
  v114 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v104 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v100 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v100 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v100 - v12;
  v14 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v106 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v105 = &v100 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v100 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v100 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v100 - v25;
  v27 = type metadata accessor for VisibilityTiming();
  v112 = *(v27 - 8);
  v113 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v110 = &v100 - v31;
  v111 = a1;
  v116 = a1;
  v32 = sub_1C1A6FCCC();
  v34 = v33;
  v35 = OBJC_IVAR___APPCMetricsView_timingTracking;
  swift_beginAccess();
  v107 = v35;
  v36 = *(v2 + v35);
  if (!*(v36 + 16))
  {
  }

  v37 = v2;

  v38 = sub_1C1991010(v32, v34);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
  }

  sub_1C19CD4A0(*(v36 + 56) + *(v112 + 72) * v38, v29);

  v41 = v110;
  sub_1C19CD504(v29, v110);
  sub_1C1A6D5CC();
  v42 = v114;
  v43 = v109;
  (*(v114 + 56))(v26, 0, 1, v109);
  v44 = *(v113 + 20);
  sub_1C19B40BC(v26, v41 + v44);
  sub_1C19AF080(v41 + v44, v23);
  v101 = *(v42 + 48);
  if (v101(v23, 1, v43) == 1)
  {
    sub_1C1991140(v23, &qword_1EBF038A8);
    goto LABEL_8;
  }

  (*(v42 + 32))(v13, v23, v43);
  sub_1C1A6D57C();
  v47 = v46;
  sub_1C1A6D57C();
  v49 = v48;
  (*(v42 + 8))(v13, v43);
  if (v47 - v49 != 0.0)
  {
LABEL_8:
    if ([objc_opt_self() isMainThread])
    {
      v52 = v37;
      if ((sub_1C1A36814() & 1) == 0)
      {
LABEL_10:
        Height = CGRectGetHeight(*(v52 + OBJC_IVAR___APPCMetricsView_lastTimeVisibilityCheckFrame));
        v54 = 0;
        v55 = v114;
LABEL_18:
        sub_1C19AF080(v41 + v44, v20);
        if (v101(v20, 1, v43) == 1)
        {
          sub_1C1991140(v20, &qword_1EBF038A8);
          v63 = -1.0;
        }

        else
        {
          v64 = v102;
          (*(v55 + 32))(v102, v20, v43);
          sub_1C1A6D57C();
          v66 = v65;
          sub_1C1A6D57C();
          v68 = v67;
          (*(v55 + 8))(v64, v43);
          v63 = v66 - v68;
        }

        v69 = v105;
        v70 = Height;
        v71 = v70 / v63;
        sub_1C19AF080(v41 + v44, v105);
        if (v101(v69, 1, v43) == 1)
        {
          sub_1C1991140(v69, &qword_1EBF038A8);
          v72 = -1.0;
        }

        else
        {
          v73 = v103;
          (*(v55 + 32))(v103, v69, v43);
          sub_1C1A6D57C();
          v75 = v74;
          sub_1C1A6D57C();
          v77 = v76;
          (*(v55 + 8))(v73, v43);
          v72 = v75 - v77;
        }

        v78 = v43;
        v110 = v52;
        v79 = [*(v52 + OBJC_IVAR___APPCMetricsView_promotedContent) metricsHelper];
        v80 = sub_1C1A6D52C();
        v81 = v111;
        *&v82 = v71;
        [v79 visibleWithPercent:v111 starting:v80 duration:v54 scrollVelocity:v72 collapsed:v82];
        swift_unknownObjectRelease();

        sub_1C1A6F65C();
        v83 = v41;
        sub_1C199E4CC();
        v84 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_1C1A73CD0;
        v86 = MEMORY[0x1E69E65A8];
        *(v85 + 56) = MEMORY[0x1E69E6530];
        *(v85 + 64) = v86;
        *(v85 + 32) = v81;
        v87 = v106;
        sub_1C19AF080(v41 + v44, v106);
        if (v101(v87, 1, v78) == 1)
        {
          sub_1C1991140(v87, &qword_1EBF038A8);
          v88 = -1.0;
        }

        else
        {
          v89 = v114;
          v90 = v104;
          (*(v114 + 32))(v104, v87, v78);
          sub_1C1A6D57C();
          v92 = v91;
          sub_1C1A6D57C();
          v94 = v93;
          (*(v89 + 8))(v90, v78);
          v88 = v92 - v94;
        }

        v95 = MEMORY[0x1E69E6438];
        *(v85 + 96) = MEMORY[0x1E69E63B0];
        *(v85 + 104) = v95;
        *(v85 + 72) = v88;
        sub_1C1A6F18C();

        v115 = v111;
        v96 = sub_1C1A6FCCC();
        v98 = v97;
        v99 = v108;
        (*(v112 + 56))(v108, 1, 1, v113);
        swift_beginAccess();
        sub_1C19B5448(v99, v96, v98);
        swift_endAccess();
        v51 = v83;
        return sub_1C19CD5CC(v51);
      }
    }

    else
    {
      v52 = v37;
      if (*(v37 + OBJC_IVAR___APPCMetricsView_viewCollapsedState) == 2)
      {
        goto LABEL_10;
      }
    }

    v56 = *(v52 + OBJC_IVAR___APPCMetricsView_contentView);
    v55 = v114;
    if (v56)
    {
      v57 = *((*MEMORY[0x1E69E7D40] & *v56) + 0x2A8);
      v58 = v56;
      v57();
      v60 = v59;
      v62 = v61;

      if (v62)
      {
        v54 = 1;
        Height = 50.0;
      }

      else
      {
        Height = v60;
        v54 = 1;
      }

      v43 = v109;
      v41 = v110;
    }

    else
    {
      v54 = 1;
      Height = 50.0;
    }

    goto LABEL_18;
  }

  sub_1C1A6F65C();
  sub_1C199E4CC();
  v50 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  v51 = v41;
  return sub_1C19CD5CC(v51);
}

uint64_t sub_1C19CD4A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisibilityTiming();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C19CD504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisibilityTiming();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C19CD568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisibilityTiming();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C19CD5CC(uint64_t a1)
{
  v2 = type metadata accessor for VisibilityTiming();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppStoreRequestTask.clientRequestId.getter()
{
  v1 = sub_1C1A6D62C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 64))
  {

    sub_1C1A6D9FC();

    v5 = sub_1C1A6D5EC();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v5 = *(v0 + 48);
  }

  return v5;
}

uint64_t AppStoreRequestTask.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppStoreRequestTask.toroId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AppStoreRequestTask.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*AppStoreRequestTask.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(v1 + 96);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1C19CE744;
}

uint64_t sub_1C19CD8C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  v5 = *(v3 + 112);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C19CE6DC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C19A2D24(v4);
}

uint64_t sub_1C19CD958(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C19CE6A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 104);
  *(v7 + 104) = v6;
  *(v7 + 112) = v5;
  sub_1C19A2D24(v3);
  return sub_1C19A504C(v8);
}

uint64_t AppStoreRequestTask.completion.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  sub_1C19A2D24(v1);
  return v1;
}

uint64_t AppStoreRequestTask.completion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 104);
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return sub_1C19A504C(v5);
}

uint64_t static AppStoreRequestTask.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1C1A6FCEC();
  }
}

uint64_t AppStoreRequestTask.cancel(_:)()
{
  v1 = v0;
  v2 = sub_1C1A6D62C();
  v39 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1A6D5DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1A6D99C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 64))
  {
    (*(v10 + 104))(v13, *MEMORY[0x1E69C5E98], v9, v11);

    sub_1C1A6DA1C();

    v14 = v9;
    v15 = v10;
    return (*(v15 + 8))(v13, v14);
  }

  v35 = v10;
  v36 = v4;
  v37 = v9;
  v38 = v2;
  *(v1 + 120) = 1;
  v16 = *(v1 + 72);
  *(v1 + 72) = 0;

  sub_1C1A6D5CC();
  sub_1C1A6D50C();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  sub_1C1A6F65C();
  sub_1C199E4CC();
  v19 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C1A74AF0;
  v21 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = MEMORY[0x1E69E6158];
  *(v20 + 56) = MEMORY[0x1E69E6158];
  v24 = sub_1C199E518();
  *(v20 + 64) = v24;
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  if (*(v1 + 64))
  {

    v25 = v23;
    v26 = v36;
    sub_1C1A6D9FC();

    v27 = sub_1C1A6D5EC();
    v29 = v28;
    v30 = v26;
    v23 = v25;
    (*(v39 + 8))(v30, v38);
  }

  else
  {
    v27 = *(v1 + 48);
    v29 = *(v1 + 56);
  }

  *(v20 + 96) = v23;
  *(v20 + 104) = v24;
  v31 = MEMORY[0x1E69E63B0];
  *(v20 + 72) = v27;
  *(v20 + 80) = v29;
  v32 = MEMORY[0x1E69E6438];
  *(v20 + 136) = v31;
  *(v20 + 144) = v32;
  *(v20 + 112) = v18;
  *(v20 + 176) = v23;
  *(v20 + 184) = v24;
  *(v20 + 152) = 0x7373696D20414C53;
  *(v20 + 160) = 0xE800000000000000;
  sub_1C1A6F18C();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v15 = v35;
    v34 = v37;
    (*(v35 + 104))(v13, *MEMORY[0x1E69C5E98], v37);
    sub_1C1A6E43C();
    swift_unknownObjectRelease();
    v14 = v34;
    return (*(v15 + 8))(v13, v14);
  }

  return result;
}

uint64_t AppStoreRequestTask.deinit()
{

  sub_1C19A9384(v0 + 88);
  sub_1C19A504C(*(v0 + 104));
  v1 = OBJC_IVAR____TtC17PromotedContentUI19AppStoreRequestTask_start;
  v2 = sub_1C1A6D5DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AppStoreRequestTask.__deallocating_deinit()
{
  AppStoreRequestTask.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C19CE0A0(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1C1A6FCEC();
  }
}

uint64_t sub_1C19CE0CC()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C19CE138(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1C19CE198(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(v1 + 96);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1C19CE22C;
}

void sub_1C19CE230(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 96) = *(*a1 + 32);
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

uint64_t (*sub_1C19CE2B4())(void *)
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C19CE748;
  }

  else
  {
    v4 = 0;
  }

  sub_1C19A2D24(v1);
  return v4;
}

uint64_t sub_1C19CE34C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_1C19CE740;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  swift_beginAccess();
  v7 = *(v2 + 104);
  *(v2 + 104) = v6;
  *(v2 + 112) = v5;
  return sub_1C19A504C(v7);
}

void (*sub_1C19CE3E0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  v5 = *(v1 + 104);
  if (v5)
  {
    v6 = *(v1 + 112);
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1C19CE6DC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *(v4 + 24) = v8;
  *(v4 + 32) = v7;
  return sub_1C19CE4A8;
}

void sub_1C19CE4A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_1C19CE708;
    }

    else
    {
      v4 = sub_1C19CE740;
    }

    v5 = v2[4];
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = v2[5];
  *(v7 + 104) = v4;
  *(v7 + 112) = v6;
  swift_endAccess();

  free(v2);
}

uint64_t type metadata accessor for AppStoreRequestTask()
{
  result = qword_1EDE62D88;
  if (!qword_1EDE62D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C19CE5B4()
{
  result = sub_1C1A6D5DC();
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

uint64_t sub_1C19CE6A4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1C19CE708(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1C19CE7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C19CE7C8, 0, 0);
}

uint64_t sub_1C19CE7C8()
{
  v1 = [*(v0[5] + 64) locationEnabled];
  v2 = v0[5];
  if (v1 && (*(v2 + 80) & 1) == 0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 56);
    [v4 willAccessLocation];
    [v4 willTransmitLocationFor_];
    v2 = v0[5];
  }

  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  sub_1C1994048((v2 + 16), v5);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1C19CE8DC;
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return MEMORY[0x1EEE2F2F8](v10, v8, v9, v5, v6);
}

uint64_t sub_1C19CE8DC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1C19CEA7C()
{
  sub_1C199935C(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C19CEAAC()
{
  sub_1C19CEA7C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C19CEB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C19CEBB0;

  return sub_1C19CE7A4(a1, a2, a3);
}

uint64_t sub_1C19CEBB0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1C19CECF8()
{
  if (qword_1EDE63978 != -1)
  {
    swift_once();
  }

  if (byte_1EDE63980 != 1)
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1A6F39C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [swift_getObjCClassFromMetadata() standardUserDefaults];
  }

  v3 = sub_1C1A6F39C();
  v4 = [v2 objectForKey_];

  if (!v4)
  {
    return 0;
  }

  sub_1C1A6F92C();
  swift_unknownObjectRelease();
  sub_1C19916E4(v7, v8);
  sub_1C19916E4(v8, v7);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

id sub_1C19CEE94()
{
  if (qword_1EDE63978 != -1)
  {
    swift_once();
  }

  if (byte_1EDE63980 != 1)
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1A6F39C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [swift_getObjCClassFromMetadata() standardUserDefaults];
  }

  v3 = sub_1C1A6F39C();
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t sub_1C19CEFB8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1A6F39C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [swift_getObjCClassFromMetadata() standardUserDefaults];
  }

  v3 = sub_1C1A6F39C();
  v4 = [v2 dataForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1C1A6D4CC();
  v7 = v6;

  sub_1C1A6D20C();
  swift_allocObject();
  sub_1C1A6D1FC();
  type metadata accessor for AppStoreSession();
  sub_1C19CFF58(&qword_1EDE61F70, type metadata accessor for AppStoreSession);
  sub_1C1A6D1EC();
  sub_1C19CFDE0(v5, v7);

  return v9;
}

void sub_1C19CF178(void *a1)
{
  if (a1)
  {
    sub_1C1A6D23C();
    swift_allocObject();
    v2 = a1;
    sub_1C1A6D22C();
    type metadata accessor for AppStoreSession();
    sub_1C19CFF58(&qword_1EDE61F78, type metadata accessor for AppStoreSession);
    v6 = sub_1C1A6D21C();
    v8 = v7;

    v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v10 = sub_1C1A6F39C();
    v11 = [v9 initWithSuiteName_];

    if (!v11)
    {
      v11 = [swift_getObjCClassFromMetadata() standardUserDefaults];
    }

    v12 = sub_1C1A6D4AC();
    v13 = sub_1C1A6F39C();
    [v11 setValue:v12 forKey:v13];

    sub_1C19CFDE0(v6, v8);
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v4 = sub_1C1A6F39C();
    v5 = [v3 initWithSuiteName_];

    if (!v5)
    {
      v5 = [swift_getObjCClassFromMetadata() standardUserDefaults];
    }

    v14 = sub_1C1A6F39C();
    [v5 setValue:0 forKey:v14];
  }
}

uint64_t sub_1C19CF498()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1A6F39C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [swift_getObjCClassFromMetadata() standardUserDefaults];
  }

  v3 = sub_1C1A6F39C();
  v4 = [v2 BOOLForKey_];

  if (qword_1EDE63978 != -1)
  {
    swift_once();
  }

  return byte_1EDE63980 & v4 & 1;
}

uint64_t sub_1C19CF5B0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1A6F39C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [swift_getObjCClassFromMetadata() standardUserDefaults];
  }

  v3 = sub_1C1A6F39C();
  v4 = [v2 BOOLForKey_];

  if (qword_1EDE63978 != -1)
  {
    swift_once();
  }

  return byte_1EDE63980 & v4 & 1;
}

id sub_1C19CF6C8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1A6F39C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [swift_getObjCClassFromMetadata() standardUserDefaults];
  }

  v3 = sub_1C1A6F39C();
  v4 = [v2 integerForKey_];

  return v4;
}

id sub_1C19CF7A4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1A6F39C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [swift_getObjCClassFromMetadata() standardUserDefaults];
  }

  v3 = sub_1C1A6F39C();
  v4 = [v2 integerForKey_];

  return v4;
}

unint64_t sub_1C19CF884()
{
  v0 = sub_1C1A6FCCC();
  MEMORY[0x1C6904F50](v0);

  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1C1A6F39C();
  v3 = [v1 initWithSuiteName_];

  if (!v3)
  {
    v3 = [swift_getObjCClassFromMetadata() standardUserDefaults];
  }

  v4 = sub_1C1A6F39C();

  v5 = [v3 dataForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1C1A6D4CC();
  v8 = v7;

  sub_1C1A6D20C();
  swift_allocObject();
  sub_1C1A6D1FC();
  type metadata accessor for AppRequestMetaFieldsSource();
  sub_1C19CFF58(&qword_1EBF04138, type metadata accessor for AppRequestMetaFieldsSource);
  sub_1C1A6D1EC();
  sub_1C19CFDE0(v6, v8);

  return 0xD000000000000013;
}

void sub_1C19CFA90(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1A6FCCC();
  MEMORY[0x1C6904F50](v3);

  if (a2)
  {
    sub_1C1A6D23C();
    swift_allocObject();

    sub_1C1A6D22C();
    type metadata accessor for AppRequestMetaFieldsSource();
    sub_1C19CFF58(&qword_1EBF04130, type metadata accessor for AppRequestMetaFieldsSource);
    v8 = sub_1C1A6D21C();
    v10 = v9;

    v11 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v12 = sub_1C1A6F39C();
    v13 = [v11 initWithSuiteName_];

    if (!v13)
    {
      v13 = [swift_getObjCClassFromMetadata() standardUserDefaults];
    }

    v14 = sub_1C1A6D4AC();
    v15 = sub_1C1A6F39C();

    [v13 setValue:v14 forKey:v15];

    sub_1C19CFDE0(v8, v10);
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v5 = sub_1C1A6F39C();
    v6 = [v4 initWithSuiteName_];

    if (!v6)
    {
      v6 = [swift_getObjCClassFromMetadata() standardUserDefaults];
    }

    v7 = sub_1C1A6F39C();

    [v6 setValue:0 forKey:v7];
  }
}

uint64_t sub_1C19CFDE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_1C19CFE34()
{
  if (qword_1EDE63978 != -1)
  {
    swift_once();
  }

  if (byte_1EDE63980 != 1)
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1A6F39C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [swift_getObjCClassFromMetadata() standardUserDefaults];
  }

  v3 = sub_1C1A6F39C();
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t sub_1C19CFF58(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C19D00B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v55 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_1C1A6D48C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v50 - v11;
  v12 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v50 - v13;
  v15 = OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_textLabel;
  v16 = 0.0;
  v17 = sub_1C19D16B4(0.0, 0.0, 0.0, 0.0);
  [v17 setHidden_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v4[v15] = v17;
  v18 = OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_imageView;
  v19 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v19 setContentMode_];
  [v19 setOpaque_];
  [v19 setAccessibilityIgnoresInvertColors_];
  LODWORD(v20) = 1132068864;
  [v19 setContentCompressionResistancePriority:0 forAxis:v20];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v4[v18] = v19;
  v21 = &v4[OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_text];
  *v21 = a1;
  *(v21 + 1) = a2;

  v22 = sub_1C19D16B4(0.0, 0.0, 1.79769313e308, 1.79769313e308);
  v23 = sub_1C1A6F39C();
  [v22 setText_];

  v24 = v22;
  [v24 sizeToFit];
  [v24 frame];
  v26 = v25;

  v27 = 56.0 - v26 + -4.0;
  if (v27 < 0.0)
  {
    v27 = 0.0;
  }

  v28 = 0.0;
  if (v27 > 0.0)
  {
    v29 = 120.0 / v27;
    if (120.0 / v27 < 1.6)
    {
      v30 = 32.0;
LABEL_8:
      v28 = fmin(v27, v30);
      v31 = v29 * v28;
      if (v31 <= 120.0)
      {
        v16 = v31;
      }

      else
      {
        v16 = 120.0;
      }

      if (v16 <= 0.0)
      {
        v16 = 120.0;
      }

      goto LABEL_18;
    }

    if (v29 < 4.0)
    {
      v30 = 24.0;
      goto LABEL_8;
    }

    v16 = 120.0;
    v32 = 120.0 / v29;
    if (v27 < v32)
    {
      v32 = v27;
    }

    if (v32 <= 0.0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v32;
    }
  }

LABEL_18:
  v33 = [*&v4[v18] widthAnchor];
  v34 = [v33 constraintEqualToConstant_];

  *&v4[OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_imageViewWidthConstraint] = v34;
  v35 = [*&v4[v18] heightAnchor];
  v36 = [v35 constraintEqualToConstant_];

  *&v4[OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_imageViewHeightConstraint] = v36;
  v56.receiver = v4;
  v56.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v56, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1C19D0664();
  v38 = sub_1C1A6F5AC();
  (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
  v39 = *(v8 + 16);
  v40 = v52;
  v39(v52, v55, v7);
  v39(v53, v54, v7);
  sub_1C1A6F58C();
  v41 = sub_1C1A6F57C();
  v42 = *(v8 + 80);
  v43 = (v42 + 40) & ~v42;
  v44 = (v9 + v42 + v43) & ~v42;
  v45 = swift_allocObject();
  v46 = MEMORY[0x1E69E85E0];
  *(v45 + 2) = v41;
  *(v45 + 3) = v46;
  *(v45 + 4) = v37;
  v47 = *(v8 + 32);
  v47(&v45[v43], v40, v7);
  v47(&v45[v44], v53, v7);
  sub_1C1A40E34(0, 0, v14, &unk_1C1A74E70, v45);

  v48 = *(v8 + 8);
  v48(v54, v7);
  v48(v55, v7);
  return v37;
}

void sub_1C19D0664()
{
  v1 = *&v0[OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_textLabel];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_imageView];
  [v0 addSubview_];
  v24 = objc_opt_self();
  sub_1C19A9E58(&qword_1EBF03E88);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1A74E30;
  v4 = [v1 leadingAnchor];
  v5 = [v0 leadingAnchor];
  v6 = [v4 constraintGreaterThanOrEqualToAnchor_];

  *(v3 + 32) = v6;
  v7 = [v1 trailingAnchor];
  v8 = [v0 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v9;
  v10 = [v2 topAnchor];
  v11 = [v1 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:4.0];

  *(v3 + 48) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v3 + 56) = v15;
  v16 = [v2 bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  v19 = *&v0[OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_imageViewWidthConstraint];
  *(v3 + 64) = v18;
  *(v3 + 72) = v19;
  v20 = *&v0[OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_imageViewHeightConstraint];
  *(v3 + 80) = v20;
  sub_1C19C2864();
  v21 = v19;
  v22 = v20;
  v23 = sub_1C1A6F50C();

  [v24 activateConstraints_];

  v25 = sub_1C1A6F39C();
  [v1 setText_];
}

uint64_t sub_1C19D099C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1C1A6F58C();
  v6[3] = sub_1C1A6F57C();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1C19C0A18;

  return sub_1C19D0A60(a5, a6);
}

uint64_t sub_1C19D0A60(uint64_t a1, uint64_t a2)
{
  v3[191] = v2;
  v3[185] = a2;
  v3[179] = a1;
  v4 = sub_1C1A6D48C();
  v3[197] = v4;
  v5 = *(v4 - 8);
  v3[198] = v5;
  v3[199] = *(v5 + 64);
  v3[200] = swift_task_alloc();
  v3[201] = swift_task_alloc();
  sub_1C1A6F58C();
  v3[202] = sub_1C1A6F57C();
  v7 = sub_1C1A6F56C();
  v3[203] = v7;
  v3[204] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C19D0B74, v7, v6);
}

uint64_t sub_1C19D0B74()
{
  v1 = v0[201];
  v2 = v0[198];
  v3 = v0[197];
  v13 = v0[185];
  v14 = v0[200];
  v4 = v0[179];
  v0[205] = [objc_allocWithZone(MEMORY[0x1E69DCAC0]) init];
  v12 = *(v2 + 16);
  v12(v1, v4, v3);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = *(v2 + 32);
  v7(v6 + v5, v1, v3);
  v8 = swift_allocObject();
  v0[206] = v8;
  *(v8 + 16) = &unk_1C1A74E88;
  *(v8 + 24) = v6;
  sub_1C19A9E58(&qword_1EBF03E80);
  swift_asyncLet_begin();
  v12(v14, v13, v3);
  v9 = swift_allocObject();
  v7(v9 + v5, v14, v3);
  v10 = swift_allocObject();
  v0[207] = v10;
  *(v10 + 16) = &unk_1C1A74EA8;
  *(v10 + 24) = v9;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB8](v0 + 2, v0 + 167, sub_1C19D0DB8, v0 + 162);
}

uint64_t sub_1C19D0DD4()
{
  v1 = *(v0 + 1336);
  *(v0 + 1664) = v1;
  v2 = v1;

  return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 1384, sub_1C19D0E4C, v0 + 1344);
}

uint64_t sub_1C19D0E68()
{
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1384);
  *(v0 + 1672) = v2;
  if (v1)
  {
    v3 = *(v0 + 1640);
    v4 = objc_opt_self();
    v5 = v2;
    v6 = [v4 traitCollectionWithUserInterfaceStyle_];
    [v3 registerImage:v1 withTraitCollection:v6];

    if (!v2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = v2;
  if (v2)
  {
    v5 = v7;
LABEL_6:
    v8 = *(v0 + 1640);
    v9 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    [v8 registerImage:v5 withTraitCollection:v9];

    if (!v1)
    {
LABEL_8:
      *(v0 + 1680) = v5;
      v10 = *(v0 + 1640);
      v11 = [objc_opt_self() currentTraitCollection];
      v12 = [v10 imageWithTraitCollection_];

      sub_1C19D1238(v12);
      v13 = sub_1C19C1354;
      v14 = v0 + 656;
      v15 = v0 + 1384;
      v16 = v0 + 1488;
      goto LABEL_9;
    }

LABEL_7:

    goto LABEL_8;
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v17 = sub_1C1A6F1BC();
  sub_1C1994600(v17, qword_1EDE665F0);
  v18 = sub_1C1A6F19C();
  v19 = sub_1C1A6F66C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1C198D000, v18, v19, "Light and dark images failed to download.", v20, 2u);
    MEMORY[0x1C6906260](v20, -1, -1);
  }

  v13 = sub_1C19C123C;
  v14 = v0 + 656;
  v15 = v0 + 1384;
  v16 = v0 + 1392;
LABEL_9:

  return MEMORY[0x1EEE6DEB0](v14, v15, v13, v16);
}

uint64_t sub_1C19D1110(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C19C28B0;

  return sub_1C19C1528(a1);
}

uint64_t sub_1C19D11A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C19C1B94;

  return sub_1C19C1C90(a1);
}

void sub_1C19D1238(void *a1)
{
  [a1 size];
  if (v3 <= 0.0 || ([a1 size], v4 <= 0.0))
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v16 = sub_1C1A6F1BC();
    sub_1C1994600(v16, qword_1EDE665F0);
    oslog = sub_1C1A6F19C();
    v17 = sub_1C1A6F66C();
    if (!os_log_type_enabled(oslog, v17))
    {
      goto LABEL_13;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Invalid image size.";
    goto LABEL_12;
  }

  v5 = 0.0;
  v6 = sub_1C19D16B4(0.0, 0.0, 1.79769313e308, 1.79769313e308);
  v7 = sub_1C1A6F39C();
  [v6 setText_];

  v8 = v6;
  [v8 sizeToFit];
  [v8 frame];
  v10 = v9;

  if (56.0 - v10 + -4.0 >= 0.0)
  {
    v5 = 56.0 - v10 + -4.0;
  }

  if (v5 > 0.0)
  {
    [a1 size];
    v12 = v11;
    [a1 size];
    v14 = v12 / v13;
    if (v14 >= 1.6)
    {
      if (v14 >= 4.0)
      {
        v22 = 120.0;
        v23 = 120.0 / v14;
        if (v5 < v23)
        {
          v23 = v5;
        }

        if (v23 <= 0.0)
        {
          v21 = v5;
        }

        else
        {
          v21 = v23;
        }

        goto LABEL_31;
      }

      v15 = 24.0;
    }

    else
    {
      v15 = 32.0;
    }

    v21 = fmin(v5, v15);
    v22 = v21 * v14;
    if (v21 * v14 > 120.0)
    {
      v22 = 120.0;
    }

    if (v22 <= 0.0)
    {
      v22 = 120.0;
    }

LABEL_31:
    [*&v1[OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_imageViewWidthConstraint] setConstant_];
    [*&v1[OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_imageViewHeightConstraint] setConstant_];
    [*&v1[OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_imageView] setImage_];
    [*&v1[OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_textLabel] setHidden_];
    [v1 invalidateIntrinsicContentSize];

    [v1 setNeedsLayout];
    return;
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v20 = sub_1C1A6F1BC();
  sub_1C1994600(v20, qword_1EDE665F0);
  oslog = sub_1C1A6F19C();
  v17 = sub_1C1A6F66C();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Invalid available height for image.";
LABEL_12:
    _os_log_impl(&dword_1C198D000, oslog, v17, v19, v18, 2u);
    MEMORY[0x1C6906260](v18, -1, -1);
  }

LABEL_13:
}

id sub_1C19D16B4(double a1, double a2, double a3, double a4)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = [objc_opt_self() systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB978]];
  [v4 setFont_];

  v6 = [objc_opt_self() secondaryLabelColor];
  [v4 setTextColor_];

  [v4 setNumberOfLines_];
  [v4 setLineBreakMode_];
  [v4 setAdjustsFontForContentSizeCategory_];
  return v4;
}

void sub_1C19D17E4()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_textLabel;
  v2 = sub_1C19D16B4(0.0, 0.0, 0.0, 0.0);
  [v2 setHidden_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_imageView;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v4 setContentMode_];
  [v4 setOpaque_];
  [v4 setAccessibilityIgnoresInvertColors_];
  LODWORD(v5) = 1132068864;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v3) = v4;
  sub_1C1A6FB8C();
  __break(1u);
}

uint64_t sub_1C19D1934(uint64_t a1)
{
  v4 = *(sub_1C1A6D48C() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C19909C4;

  return sub_1C19D099C(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

uint64_t sub_1C19D1A60()
{
  v2 = *(sub_1C1A6D48C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C19C28B0;

  return sub_1C19D1110(v0 + v3);
}

uint64_t sub_1C19D1B2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1990BB0;

  return sub_1C19C1900(a1, v4);
}

uint64_t sub_1C19D1BE4()
{
  v2 = *(sub_1C1A6D48C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C19C1B94;

  return sub_1C19D11A4(v0 + v3);
}

uint64_t sub_1C19D1CB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C19909C4;

  return sub_1C19C1900(a1, v4);
}

void sub_1C19D1D68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1A6DDCC();
  v193 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v184 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v183 = &v181 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v181 - v9;
  v11 = sub_1C19A9E58(&qword_1EBF03AD8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v188 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v186 = &v181 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v181 - v16;
  v18 = sub_1C19A9E58(&qword_1EBF03E18);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x1EEE9AC00](v21).n128_u64[0];
  v24 = &v181 - v23;
  v192 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v25 = [*&v2[OBJC_IVAR___APPCPromotedContentView_promotedContent] contextIdentifier];
  if (v25)
  {
    v26 = v25;
    sub_1C1A6D60C();

    v27 = sub_1C1A6D62C();
    (*(*(v27 - 8) + 56))(v20, 0, 1, v27);
  }

  else
  {
    v27 = sub_1C1A6D62C();
    (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
  }

  sub_1C19D3670(v20, v24);
  sub_1C1A6D62C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v24, 1, v27) == 1)
  {
    v191 = 0xD000000000000012;
    sub_1C1991140(v24, &qword_1EBF03E18);
    v29 = 0x80000001C1A7CA00;
  }

  else
  {
    v191 = sub_1C1A6D5EC();
    v31 = v30;
    v32 = v27;
    v29 = v31;
    (*(v28 + 8))(v24, v32);
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v33 = sub_1C1A6F1BC();
  v34 = sub_1C1994600(v33, qword_1EDE665F0);
  v189 = a1;
  sub_1C19D36E0(a1, v17);

  v35 = v2;
  v190 = v34;
  v36 = sub_1C1A6F19C();
  v37 = sub_1C1A6F64C();

  v38 = os_log_type_enabled(v36, v37);
  v187 = v2;
  if (v38)
  {
    v181 = v35;
    v185 = v10;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v29;
    v42 = v40;
    aBlock = v40;
    *v39 = 67110146;
    *(v39 + 4) = 36;
    *(v39 + 8) = 2080;
    v182 = v41;
    *(v39 + 10) = sub_1C19A1884(v191, v41, &aBlock);
    *(v39 + 18) = 1024;
    *(v39 + 20) = 36;
    *(v39 + 24) = 2080;
    v43 = [*&v2[v192] identifier];
    v44 = sub_1C1A6F3CC();
    v46 = v45;

    v47 = sub_1C19A1884(v44, v46, &aBlock);

    *(v39 + 26) = v47;
    *(v39 + 34) = 2080;
    v48 = v193;
    v49 = v186;
    sub_1C19D36E0(v17, v186);
    if ((*(v48 + 48))(v49, 1, v4) == 1)
    {
      sub_1C1991140(v49, &qword_1EBF03AD8);
      v50 = 0x80000001C1A7CA20;
      v51 = 0xD000000000000014;
    }

    else
    {
      v51 = sub_1C1A6DDBC();
      v50 = v52;
      (*(v193 + 8))(v49, v4);
    }

    sub_1C1991140(v17, &qword_1EBF03AD8);
    v53 = sub_1C19A1884(v51, v50, &aBlock);

    *(v39 + 36) = v53;
    _os_log_impl(&dword_1C198D000, v36, v37, "Context ID: %-*s Content ID: %-*s Action finished with status %s.", v39, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v42, -1, -1);
    MEMORY[0x1C6906260](v39, -1, -1);

    v10 = v185;
    v35 = v181;
    v29 = v182;
  }

  else
  {

    sub_1C1991140(v17, &qword_1EBF03AD8);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = [Strong viewControllerToPresentFrom];
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = _s17PromotedContentUI9AppAdViewC010presentingF10Controller3forSo06UIViewH0CSgSo011ASCAdLockupF0C_tF_0();
    if (!v56)
    {
      goto LABEL_24;
    }

    v55 = v56;
  }

  v57 = [v55 presentedViewController];
  if (v57)
  {
    v58 = v57;
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    v60 = v35;
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    *(v62 + 24) = v58;
    v200 = sub_1C19D3750;
    v201 = v62;
    aBlock = MEMORY[0x1E69E9820];
    v197 = 1107296256;
    v198 = sub_1C198FEA4;
    v199 = &unk_1F4140420;
    v63 = _Block_copy(&aBlock);
    v64 = v58;

    [v64 dismissViewControllerAnimated:!IsReduceMotionEnabled completion:v63];
    _Block_release(v63);
    v65 = v188;
    sub_1C19D36E0(v189, v188);
    if ((*(v193 + 48))(v65, 1, v4) == 1)
    {
      sub_1C1991140(v65, &qword_1EBF03AD8);

      v66 = v60;
      v67 = sub_1C1A6F19C();
      v68 = sub_1C1A6F64C();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        aBlock = v70;
        *v69 = 67109890;
        *(v69 + 4) = 36;
        *(v69 + 8) = 2080;
        v71 = sub_1C19A1884(v191, v29, &aBlock);

        *(v69 + 10) = v71;
        *(v69 + 18) = 1024;
        *(v69 + 20) = 36;
        *(v69 + 24) = 2080;
        v72 = [*&v187[v192] identifier];
        v73 = sub_1C1A6F3CC();
        v75 = v74;

        v76 = sub_1C19A1884(v73, v75, &aBlock);

        *(v69 + 26) = v76;
        _os_log_impl(&dword_1C198D000, v67, v68, "Context ID: %-*s Content ID: %-*s Unable to determine action result.", v69, 0x22u);
        swift_arrayDestroy();
        MEMORY[0x1C6906260](v70, -1, -1);
        MEMORY[0x1C6906260](v69, -1, -1);
      }

      else
      {
      }

      return;
    }

    v88 = *(v193 + 32);
    v189 = v4;
    v88(v10, v65, v4);
    v89 = *&v60[OBJC_IVAR___APPCPromotedContentView_lastPerformedAction];
    if (!v89)
    {

      v104 = v60;
      v105 = sub_1C1A6F19C();
      v106 = sub_1C1A6F64C();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        aBlock = v108;
        *v107 = 67109890;
        *(v107 + 4) = 36;
        v185 = v10;
        *(v107 + 8) = 2080;
        v109 = sub_1C19A1884(v191, v29, &aBlock);

        *(v107 + 10) = v109;
        *(v107 + 18) = 1024;
        *(v107 + 20) = 36;
        *(v107 + 24) = 2080;
        v110 = [*&v187[v192] identifier];
        v111 = sub_1C1A6F3CC();
        v113 = v112;

        v114 = sub_1C19A1884(v111, v113, &aBlock);

        *(v107 + 26) = v114;
        _os_log_impl(&dword_1C198D000, v105, v106, "Context ID: %-*s Content ID: %-*s Unable to determine last performed action.", v107, 0x22u);
        swift_arrayDestroy();
        MEMORY[0x1C6906260](v108, -1, -1);
        MEMORY[0x1C6906260](v107, -1, -1);

        goto LABEL_37;
      }

LABEL_41:

      (*(v193 + 8))(v10, v189);
      return;
    }

    v90 = v89;
    v91 = sub_1C1A6EA1C();
    if (v91 > 6)
    {
      sub_1C1A6EA1C();
      aBlock = sub_1C1A6DECC();
      v184 = sub_1C1A6FCCC();
      v123 = v122;

      v124 = v60;
      v125 = sub_1C1A6F19C();
      v126 = sub_1C1A6F64C();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        aBlock = v183;
        *v127 = 67110146;
        v190 = v55;
        v128 = v193;
        *(v127 + 4) = 36;
        v188 = v90;
        *(v127 + 8) = 2080;
        v129 = sub_1C19A1884(v191, v29, &aBlock);
        v185 = v10;
        v130 = v129;

        *(v127 + 10) = v130;
        *(v127 + 18) = 1024;
        *(v127 + 20) = 36;
        *(v127 + 24) = 2080;
        v131 = [*&v187[v192] identifier];
        v132 = sub_1C1A6F3CC();
        v133 = v64;
        v135 = v134;

        v136 = sub_1C19A1884(v132, v135, &aBlock);

        *(v127 + 26) = v136;
        *(v127 + 34) = 2080;
        v137 = sub_1C19A1884(v184, v123, &aBlock);

        *(v127 + 36) = v137;
        _os_log_impl(&dword_1C198D000, v125, v126, "Context ID: %-*s Content ID: %-*s Unhandled action of type %s.", v127, 0x2Cu);
        v138 = v183;
        swift_arrayDestroy();
        MEMORY[0x1C6906260](v138, -1, -1);
        MEMORY[0x1C6906260](v127, -1, -1);

        (*(v128 + 8))(v185, v189);
        return;
      }

LABEL_39:

      goto LABEL_41;
    }

    if (((1 << v91) & 0x5B) != 0)
    {

      v92 = v60;
      v93 = sub_1C1A6F19C();
      v94 = sub_1C1A6F64C();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v188 = v90;
        v97 = v96;
        aBlock = v96;
        *v95 = 67109890;
        *(v95 + 4) = 36;
        v185 = v10;
        *(v95 + 8) = 2080;
        v98 = sub_1C19A1884(v191, v29, &aBlock);

        *(v95 + 10) = v98;
        *(v95 + 18) = 1024;
        *(v95 + 20) = 36;
        *(v95 + 24) = 2080;
        v99 = [*&v187[v192] identifier];
        v100 = sub_1C1A6F3CC();
        v102 = v101;

        v103 = sub_1C19A1884(v100, v102, &aBlock);

        *(v95 + 26) = v103;
        _os_log_impl(&dword_1C198D000, v93, v94, "Context ID: %-*s Content ID: %-*s No metric needed to report.", v95, 0x22u);
        swift_arrayDestroy();
        MEMORY[0x1C6906260](v97, -1, -1);
        MEMORY[0x1C6906260](v95, -1, -1);

LABEL_37:
        (*(v193 + 8))(v185, v189);
        return;
      }

      goto LABEL_39;
    }

    v115 = v60;
    v186 = v64;
    v188 = v90;
    v116 = *MEMORY[0x1E69C5F20];
    if (v91 == 2)
    {
      v117 = v183;
      v118 = v189;
      (*(v193 + 104))(v183, v116, v189);
      sub_1C19D3758();
      sub_1C1A6F4EC();
      sub_1C1A6F4EC();
      if (aBlock == v194 && v197 == v195)
      {
        v119 = 1;
      }

      else
      {
        v119 = sub_1C1A6FCEC();
      }

      v193 = *(v193 + 8);
      (v193)(v117, v118);

      v139 = v115;
      v140 = sub_1C1A6F19C();
      v141 = sub_1C1A6F64C();

      v142 = os_log_type_enabled(v140, v141);
      if (v119)
      {
        if (v142)
        {
          v143 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          aBlock = v144;
          *v143 = 67109890;
          v185 = v10;
          *(v143 + 4) = 36;
          *(v143 + 8) = 2080;
          v145 = sub_1C19A1884(v191, v29, &aBlock);

          *(v143 + 10) = v145;
          *(v143 + 18) = 1024;
          *(v143 + 20) = 36;
          *(v143 + 24) = 2080;
          v146 = [*&v187[v192] identifier];
          v147 = sub_1C1A6F3CC();
          v149 = v148;

          v150 = sub_1C19A1884(v147, v149, &aBlock);

          *(v143 + 26) = v150;
          v151 = "Context ID: %-*s Content ID: %-*s Purchase succeeded.";
LABEL_61:
          _os_log_impl(&dword_1C198D000, v140, v141, v151, v143, 0x22u);
          swift_arrayDestroy();
          MEMORY[0x1C6906260](v144, -1, -1);
          MEMORY[0x1C6906260](v143, -1, -1);

          v173 = v185;
LABEL_66:
          (v193)(v173, v189);
          v180 = *&v139[OBJC_IVAR___APPCPromotedContentView_storeProductRequester];
          *&v139[OBJC_IVAR___APPCPromotedContentView_storeProductRequester] = 0;

          return;
        }
      }

      else if (v142)
      {
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        aBlock = v144;
        *v143 = 67109890;
        v185 = v10;
        *(v143 + 4) = 36;
        *(v143 + 8) = 2080;
        v167 = sub_1C19A1884(v191, v29, &aBlock);

        *(v143 + 10) = v167;
        *(v143 + 18) = 1024;
        *(v143 + 20) = 36;
        *(v143 + 24) = 2080;
        v168 = [*&v187[v192] identifier];
        v169 = sub_1C1A6F3CC();
        v171 = v170;

        v172 = sub_1C19A1884(v169, v171, &aBlock);

        *(v143 + 26) = v172;
        v151 = "Context ID: %-*s Content ID: %-*s Purchase did not succeed.";
        goto LABEL_61;
      }

      v173 = v10;
      goto LABEL_66;
    }

    v120 = v189;
    (*(v193 + 104))(v184, v116, v189);
    sub_1C19D3758();
    sub_1C1A6F4EC();
    sub_1C1A6F4EC();
    if (aBlock == v194 && v197 == v195)
    {
      v121 = 1;
    }

    else
    {
      v121 = sub_1C1A6FCEC();
    }

    v152 = *(v193 + 8);
    v193 += 8;
    v152(v184, v120);

    v153 = v115;
    v154 = sub_1C1A6F19C();
    v155 = sub_1C1A6F64C();

    v156 = os_log_type_enabled(v154, v155);
    if (v121)
    {
      if (v156)
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        aBlock = v158;
        *v157 = 67109890;
        v159 = v152;
        *(v157 + 4) = 36;
        v185 = v10;
        *(v157 + 8) = 2080;
        v160 = sub_1C19A1884(v191, v29, &aBlock);

        *(v157 + 10) = v160;
        *(v157 + 18) = 1024;
        *(v157 + 20) = 36;
        *(v157 + 24) = 2080;
        v161 = [*&v187[v192] identifier];
        v162 = sub_1C1A6F3CC();
        v164 = v163;

        v165 = sub_1C19A1884(v162, v164, &aBlock);

        *(v157 + 26) = v165;
        v166 = "Context ID: %-*s Content ID: %-*s Calendar event was successfully saved.";
LABEL_64:
        _os_log_impl(&dword_1C198D000, v154, v155, v166, v157, 0x22u);
        swift_arrayDestroy();
        MEMORY[0x1C6906260](v158, -1, -1);
        MEMORY[0x1C6906260](v157, -1, -1);

        v159(v185, v189);
        return;
      }
    }

    else if (v156)
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      aBlock = v158;
      *v157 = 67109890;
      v159 = v152;
      *(v157 + 4) = 36;
      v185 = v10;
      *(v157 + 8) = 2080;
      v174 = sub_1C19A1884(v191, v29, &aBlock);

      *(v157 + 10) = v174;
      *(v157 + 18) = 1024;
      *(v157 + 20) = 36;
      *(v157 + 24) = 2080;
      v175 = [*&v187[v192] identifier];
      v176 = sub_1C1A6F3CC();
      v178 = v177;

      v179 = sub_1C19A1884(v176, v178, &aBlock);

      *(v157 + 26) = v179;
      v166 = "Context ID: %-*s Content ID: %-*s Calendar event was not successfully saved.";
      goto LABEL_64;
    }

    v152(v10, v189);
    return;
  }

LABEL_24:

  v77 = v35;
  v78 = sub_1C1A6F19C();
  v79 = sub_1C1A6F64C();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    aBlock = v81;
    *v80 = 67109890;
    *(v80 + 4) = 36;
    *(v80 + 8) = 2080;
    v82 = sub_1C19A1884(v191, v29, &aBlock);

    *(v80 + 10) = v82;
    *(v80 + 18) = 1024;
    *(v80 + 20) = 36;
    *(v80 + 24) = 2080;
    v83 = [*&v187[v192] identifier];
    v84 = sub_1C1A6F3CC();
    v86 = v85;

    v87 = sub_1C19A1884(v84, v86, &aBlock);

    *(v80 + 26) = v87;
    _os_log_impl(&dword_1C198D000, v78, v79, "Context ID: %-*s Content ID: %-*s Unable to determine view controller to dismiss modal from.", v80, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v81, -1, -1);
    MEMORY[0x1C6906260](v80, -1, -1);
  }

  else
  {
  }
}

void sub_1C19D3528(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong + OBJC_IVAR___APPCPromotedContentView_interactionDelegate;
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    v7 = *(v4 + 8);

    if (v6)
    {
      ObjectType = swift_getObjectType();
      (*(v7 + 32))(a2, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1C19D35DC(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = *(v5 + OBJC_IVAR___APPCPromotedContentView_expandedAdTapGestureRecognizer);
  *(v5 + OBJC_IVAR___APPCPromotedContentView_expandedAdTapGestureRecognizer) = a1;
  v11 = a1;

  v12 = v5 + OBJC_IVAR___APPCPromotedContentView_expandedAdFrame;
  *v12 = a2;
  *(v12 + 8) = a3;
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = 0;

  sub_1C1A4142C(v11);
}

uint64_t sub_1C19D3670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF03E18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C19D36E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF03AD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C19D3758()
{
  result = qword_1EBF04168;
  if (!qword_1EBF04168)
  {
    sub_1C1A6DDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04168);
  }

  return result;
}

uint64_t sub_1C19D37B0()
{
  if (!*(v0 + OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newsAdView))
  {
    return 0;
  }

  [*(v0 + OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newsAdView) frame];
  return v1;
}

id sub_1C19D3808(void *a1)
{
  v3 = OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newsAdView;
  [*&v1[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newsAdView] removeFromSuperview];
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = [v5 privacyMarkerPosition];
  v7 = &v1[OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition];
  v8 = v1[OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition + 8];
  *v7 = v6;
  v7[8] = 0;
  if ((v8 & 1) != 0 || (v9 = sub_1C1A6E45C(), v9 != sub_1C1A6E45C()))
  {
    sub_1C1999C50();
  }

  [v1 insertSubview:v5 belowSubview:*&v1[OBJC_IVAR___APPCPromotedContentView_dimmerView]];

  return [v1 setReadiness_];
}

unint64_t sub_1C19D3904(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1A6F25C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = sub_1C19A9E58(&qword_1EBF04170);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v47 = *(v2 + OBJC_IVAR___APPCPromotedContentView_visiblePercentage);
  v48 = OBJC_IVAR___APPCPromotedContentView_visiblePercentage;
  *(v2 + OBJC_IVAR___APPCPromotedContentView_visiblePercentage) = a1;
  v19 = OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newPercentageTimestamp;
  swift_beginAccess();
  sub_1C19D4158(v2 + v19, v18);
  v20 = OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_oldPercentageTimestamp;
  swift_beginAccess();
  sub_1C19D41C8(v18, v2 + v20);
  swift_endAccess();
  sub_1C1A6F24C();
  (*(v5 + 56))(v18, 0, 1, v4);
  swift_beginAccess();
  sub_1C19D41C8(v18, v2 + v19);
  swift_endAccess();
  sub_1C19D4158(v2 + v20, v15);
  v21 = *(v5 + 48);
  if (v21(v15, 1, v4) == 1)
  {
    return sub_1C19D40F0(v15);
  }

  v46 = v7;
  v22 = v5;
  v23 = *(v5 + 32);
  v23(v10, v15, v4);
  v15 = v49;
  sub_1C19D4158(v2 + v19, v49);
  if (v21(v15, 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    return sub_1C19D40F0(v15);
  }

  v49 = v4;
  (v23)(v46, v15);
  v25 = sub_1C1A6F23C();
  v26 = v10;
  result = sub_1C1A6F23C();
  v27 = v25 >= result;
  v28 = v25 - result;
  if (!v27)
  {
    __break(1u);
    return result;
  }

  v29 = OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_nativeArticleOnDisplay;
  v30 = v46;
  if (*(v2 + OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_nativeArticleOnDisplay) == 1)
  {
    v45 = sub_1C1A6F64C();
    sub_1C199E4CC();
    v44 = &unk_1C1A74EE0;
    v31 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C1A74920;
    v33 = *(v2 + v48);
    v34 = MEMORY[0x1E69E6530];
    v35 = MEMORY[0x1E69E65A8];
    *(v32 + 56) = MEMORY[0x1E69E6530];
    *(v32 + 64) = v35;
    *(v32 + 32) = v33;
    *(v32 + 96) = v34;
    *(v32 + 104) = v35;
    *(v32 + 72) = v47;
    v36 = MEMORY[0x1E69E6438];
    *(v32 + 136) = MEMORY[0x1E69E63B0];
    *(v32 + 144) = v36;
    *(v32 + 112) = v28 / 1000000000.0;
    sub_1C1A6F18C();

    if (*(v2 + v29) == 1 && *(v2 + v48) >= 1)
    {
      if (!v47 && v28 >= 0xBEBC201)
      {
        [objc_msgSend(*(v2 + OBJC_IVAR___APPCPromotedContentView_promotedContent) metricsHelper)];
        swift_unknownObjectRelease();
LABEL_16:
        v38 = *(v22 + 8);
        v39 = v30;
        v40 = v49;
        v38(v39, v49);
        result = (v38)(v26, v40);
        *(v2 + v29) = 0;
        return result;
      }

      if (v47 >= 1 && v28 >= 0xBEBC201)
      {
        sub_1C1A6F66C();
        v37 = sub_1C1A6F8EC();
        sub_1C1A6F18C();

        goto LABEL_16;
      }
    }
  }

  v41 = *(v22 + 8);
  v42 = v30;
  v43 = v49;
  v41(v42, v49);
  return (v41)(v26, v43);
}

uint64_t sub_1C19D3EC0()
{
  sub_1C19D40F0(v0 + OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_oldPercentageTimestamp);
  v1 = v0 + OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newPercentageTimestamp;

  return sub_1C19D40F0(v1);
}

id NewsAdView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewsAdView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NewsAdView()
{
  result = qword_1EDE63560;
  if (!qword_1EDE63560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19D3FF8()
{
  sub_1C1995F88();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C19D40F0(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF04170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C19D4158(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF04170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C19D41C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF04170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t VisibilityAdEvent.init(adInstanceId:threshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[3] = sub_1C19B6BD8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for VisibilityAdEvent();
  result = sub_1C1A6D61C();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

double VisibilityAdEvent.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 24);
  if (*(v5 + 16) && (v6 = sub_1C1991010(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_1C19A1A5C(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C19D42FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_1C19C5408(a1, v7);
  sub_1C19C5408(v7, v6);

  sub_1C19B561C(v6, v3, v4);
  return sub_1C19C5478(v7);
}

uint64_t VisibilityAdEvent.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C19C5408(a1, v7);
  sub_1C19B561C(v7, a2, a3);
  return sub_1C19C5478(a1);
}

void (*VisibilityAdEvent.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v9 = *(v3 + 24);
  if (*(v9 + 16) && (v10 = sub_1C1991010(a2, a3), (v11 & 1) != 0))
  {
    sub_1C19A1A5C(*(v9 + 56) + 32 * v10, v8);
  }

  else
  {
    *v8 = 0u;
    v8[1] = 0u;
  }

  return sub_1C19D4480;
}

void sub_1C19D4480(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 96);
  if (a2)
  {
    sub_1C19C5408(*a1, v2 + 32);
    sub_1C19C5408(v2 + 32, v2 + 64);

    sub_1C19B561C(v2 + 64, v4, v3);
    sub_1C19C5478(v2 + 32);
  }

  else
  {
    sub_1C19C5408(*a1, v2 + 32);

    sub_1C19B561C(v2 + 32, v4, v3);
  }

  sub_1C19C5478(v2);

  free(v2);
}

uint64_t static VisibilityAdEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for VisibilityAdEvent() + 28);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

uint64_t type metadata accessor for VisibilityAdEvent()
{
  result = qword_1EDE619B8;
  if (!qword_1EDE619B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19D460C()
{
  sub_1C19B6E10();
  if (v0 <= 0x3F)
  {
    sub_1C1A6D62C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C19D46A8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C19D4778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v104 = sub_1C19A9E58(&qword_1EBF03888);
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v100 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v96 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v101 = (&v96 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v96 - v14;
  v15 = sub_1C1A6D94C();
  v103 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v107 = (&v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v96 - v18;
  v20 = sub_1C19A9E58(&qword_1EBF03E18);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v96 - v21;
  v23 = sub_1C1A6D62C();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v27;
  if (a3)
  {
    sub_1C1A6DD2C();
    (*(v24 + 56))(v22, 0, 1, v23);
    (*(v24 + 32))(v27, v22, v23);
  }

  else
  {
    (*(v24 + 56))(v22, 1, 1, v23, v25);
    sub_1C1A6D61C();
    if ((*(v24 + 48))(v22, 1, v23) != 1)
    {
      sub_1C1991140(v22, &qword_1EBF03E18);
    }
  }

  v28 = v4 + *(*v4 + 144);
  if (swift_unknownObjectWeakLoadStrong() && (v106 = v15, v29 = *(v28 + 1), v30 = swift_getObjectType(), v31 = v106, v32 = (*(v29 + 16))(a1, a2, v108, v30, v29), swift_unknownObjectRelease(), v32))
  {
    sub_1C1A6D5CC();
    v33 = sub_1C1A6D5DC();
    (*(*(v33 - 8) + 56))(v19, 0, 1, v33);
    sub_1C1A6E9AC();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v34 = *(v28 + 1);
      ObjectType = swift_getObjectType();
      (*(v34 + 24))(ObjectType, v34);
      swift_unknownObjectRelease();
    }

    v38 = v107;
    v39 = v105;
    sub_1C1A6DA7C();
    swift_allocObject();
    v40 = v32;
    v41 = sub_1C1A6DA2C();
    sub_1C19A9E58(&qword_1EBF03E88);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1C1A74830;
    *(v42 + 32) = v41;
    *v38 = v42;
    v43 = v103;
    (*(v103 + 104))(v38, *MEMORY[0x1E69C5E60], v31);
    v44 = *(v4 + *(*v4 + 128));

    [v44 lock];
    v45 = v4[2];
    if (sub_1C1A6D97C())
    {
      v97 = v40;
      v98 = v41;
      sub_1C1A6D98C();
      v46 = v102;
      v47 = v39;
      v48 = v39;
      v49 = v104;
      v50 = (*(v102 + 88))(v47, v104);
      if (v50 == *MEMORY[0x1E69C5EC0])
      {
        v99 = v45;
        v51 = v101;
        (*(v46 + 16))(v101, v48, v49);
        (*(v46 + 96))(v51, v49);
        v52 = sub_1C1A6D88C();
        v53 = *(v52 - 8);
        v54 = (*(v53 + 88))(v51, v52);
        if (v54 == *MEMORY[0x1E69C5E08])
        {
          (*(v53 + 8))(v51, v52);
          v55 = v104;
          v56 = v105;
          v57 = v107;
LABEL_24:
          (*(v102 + 8))(v56, v55);
          sub_1C1A6F64C();
          sub_1C199E4CC();
          v78 = sub_1C1A6F8EC();
          sub_1C1A6F18C();

          sub_1C1A6D95C();
          v37 = v108;
          v79 = v106;
LABEL_35:
          [*(v4 + *(*v4 + 128)) unlock];

          (*(v43 + 8))(v57, v79);
          return (*(v24 + 8))(v37, v23);
        }

        v57 = v107;
        if (v54 == *MEMORY[0x1E69C5E10])
        {
          (*(v53 + 8))(v101, v52);
          v55 = v104;
          v56 = v105;
          goto LABEL_24;
        }

        v56 = v105;
        if (v54 != *MEMORY[0x1E69C5E00])
        {
          (*(v53 + 8))(v101, v52);
LABEL_30:
          v46 = v102;
          goto LABEL_31;
        }
      }

      else
      {
        if (v50 != *MEMORY[0x1E69C5ED8])
        {
LABEL_31:
          v80 = sub_1C1A6F66C();
          sub_1C199E4CC();
          v81 = sub_1C1A6F8EC();
          if (os_log_type_enabled(v81, v80))
          {
            v82 = swift_slowAlloc();
            v101 = v82;
            v102 = swift_slowAlloc();
            v109 = v102;
            *v82 = 136380675;
            v83 = v100;
            sub_1C1A6D98C();
            v84 = v104;
            v85 = sub_1C1A6D9CC();
            LODWORD(v99) = v80;
            v87 = v86;
            v88 = *(v46 + 8);
            v89 = v84;
            v88(v83, v84);
            v90 = sub_1C19A1884(v85, v87, &v109);
            v57 = v107;

            v91 = v101;
            *(v101 + 1) = v90;
            v92 = v91;
            _os_log_impl(&dword_1C198D000, v81, v99, "[PCUI] Found unsupported state while attempting to fetch an ad (%{private}s)", v91, 0xCu);
            v93 = v102;
            sub_1C199935C(v102);
            v94 = v93;
            v43 = v103;
            MEMORY[0x1C6906260](v94, -1, -1);
            MEMORY[0x1C6906260](v92, -1, -1);
          }

          else
          {

            v88 = *(v46 + 8);
            v89 = v104;
            v57 = v107;
          }

          v37 = v108;
          v88(v105, v89);
          v79 = v106;
          goto LABEL_35;
        }

        v71 = v99;
        v56 = v48;
        v72 = v104;
        (*(v46 + 16))(v99, v48, v104);
        (*(v46 + 96))(v71, v72);

        v73 = *(sub_1C19A9E58(&qword_1EBF038A0) + 48);
        v74 = sub_1C1A6D88C();
        v75 = *(v74 - 8);
        v76 = (*(v75 + 88))(&v71[v73], v74);
        if (v76 == *MEMORY[0x1E69C5E08])
        {
          (*(v75 + 8))(&v71[v73], v74);
          v55 = v104;
          v57 = v107;
          goto LABEL_24;
        }

        v77 = v73;
        v57 = v107;
        if (v76 == *MEMORY[0x1E69C5E10])
        {
          (*(v75 + 8))(&v99[v77], v74);
          v55 = v104;
          goto LABEL_24;
        }

        if (v76 != *MEMORY[0x1E69C5E00])
        {
          (*(v75 + 8))(&v99[v77], v74);
          goto LABEL_30;
        }
      }

      (*(v102 + 8))(v56, v104);
      sub_1C19D5520(v98);
      sub_1C1A6D95C();
      v37 = v108;
      v79 = v106;
      goto LABEL_35;
    }

    v99 = v45;
    v58 = sub_1C1A6F66C();
    sub_1C199E4CC();
    v59 = sub_1C1A6F8EC();
    LODWORD(v105) = v58;
    if (os_log_type_enabled(v59, v58))
    {
      v60 = swift_slowAlloc();
      v98 = v41;
      v61 = v60;
      v101 = swift_slowAlloc();
      v109 = v101;
      *v61 = 136380675;
      v62 = v40;
      v63 = v100;
      sub_1C1A6D98C();
      v64 = v104;
      v65 = sub_1C1A6D9CC();
      v67 = v66;
      v68 = v63;
      v40 = v62;
      (*(v102 + 8))(v68, v64);
      v69 = sub_1C19A1884(v65, v67, &v109);
      v38 = v107;

      *(v61 + 4) = v69;
      _os_log_impl(&dword_1C198D000, v59, v105, "[PCUI] Trying to get an ad from invalid state (%{private}s)", v61, 0xCu);
      v70 = v101;
      sub_1C199935C(v101);
      v43 = v103;
      MEMORY[0x1C6906260](v70, -1, -1);
      MEMORY[0x1C6906260](v61, -1, -1);
    }

    v37 = v108;
    [*(v4 + *(*v4 + 128)) unlock];

    (*(v43 + 8))(v38, v106);
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C199E4CC();
    v36 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    v37 = v108;
  }

  return (*(v24 + 8))(v37, v23);
}

uint64_t sub_1C19D5520(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_1C1A6D94C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v30 = &v29 - v8;
  v9 = sub_1C1A6D62C();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + *(*v1 + 136));
  v13 = sub_1C1A6F67C();
  sub_1C199E4CC();
  v14 = sub_1C1A6F8EC();
  v15 = v14;
  if (v12)
  {
    sub_1C1A6F18C();

    (*(v4 + 104))(v6, *MEMORY[0x1E69C5E70], v3);
    sub_1C1A6D95C();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (os_log_type_enabled(v14, v13))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136380675;
      v19 = v31;
      v20 = sub_1C1A6DA3C();
      sub_1C1A6DD2C();

      v21 = sub_1C1A6D5EC();
      v23 = v22;
      (*(v29 + 8))(v11, v9);
      v24 = sub_1C19A1884(v21, v23, &v32);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_1C198D000, v15, v13, "[PCUI] Fetching ad for context: %{private}s", v17, 0xCu);
      sub_1C199935C(v18);
      MEMORY[0x1C6906260](v18, -1, -1);
      MEMORY[0x1C6906260](v17, -1, -1);
    }

    else
    {

      v19 = v31;
    }

    if ([*(v2 + *(*v2 + 120)) locationEnabled])
    {
      v25 = *(v2 + *(*v2 + 112));
      [v25 willAccessLocation];
      [v25 willTransmitLocationFor_];
    }

    v26 = sub_1C1A6F5AC();
    v27 = v30;
    (*(*(v26 - 8) + 56))(v30, 1, 1, v26);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v2;
    v28[5] = v19;

    sub_1C1A40E34(0, 0, v27, &unk_1C1A75090, v28);
  }
}

void (*sub_1C19D59A0(uint64_t a1))(char *, char *, uint64_t)
{
  v136 = sub_1C1A6D94C();
  v138 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v120 = (&v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v135 = (&v119 - v5);
  v131 = sub_1C19A9E58(&qword_1EBF03890);
  MEMORY[0x1EEE9AC00](v131);
  v7 = &v119 - v6;
  v8 = sub_1C19A9E58(&qword_1EBF03888);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v129 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v122 = (&v119 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v124 = (&v119 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v119 - v16;
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v119 - v19;
  [*(v1 + *(*v1 + 128)) lock];
  v134 = v1;
  v137 = v1[2];
  sub_1C1A6D98C();
  v21 = *(v9 + 88);
  v22 = v21(v20, v8);
  v23 = *MEMORY[0x1E69C5ED0];
  v132 = *(v9 + 8);
  v132(v20, v8);
  if (v22 == v23)
  {
    v24 = *MEMORY[0x1E69C5EA8];
    v25 = sub_1C1A6D9BC();
    (*(*(v25 - 8) + 104))(v7, v24, v25);
    swift_storeEnumTagMultiPayload();
    sub_1C1A6DA4C();
    sub_1C1991140(v7, &qword_1EBF03890);
  }

  v123 = v7;
  v27 = v135;
  v26 = v136;
  *v135 = a1;
  v28 = v138;
  v29 = *(v138 + 104);
  v125 = *MEMORY[0x1E69C5E50];
  v126 = v29;
  v127 = v138 + 104;
  (v29)(v27);
  v130 = a1;

  v30 = sub_1C1A6D97C();
  v31 = *(v28 + 8);
  v138 = v28 + 8;
  v128 = v31;
  v31(v27, v26);
  if (v30)
  {
    v121 = v9 + 8;
    v32 = v133;
    sub_1C1A6D98C();
    v33 = v8;
    v34 = v21(v32, v8);
    if (v34 == *MEMORY[0x1E69C5EC0])
    {
      v35 = v124;
      (*(v9 + 16))(v124, v32, v8);
      (*(v9 + 96))(v35, v8);
      v36 = sub_1C1A6D88C();
      v37 = *(v36 - 8);
      v38 = (*(v37 + 88))(v35, v36);
      v39 = v32;
      if (v38 == *MEMORY[0x1E69C5E08])
      {
        (*(v37 + 96))(v35, v36);
        v40 = v130;
        v41 = *v35;
        sub_1C1A6F67C();
        sub_1C199E4CC();
        v42 = sub_1C1A6F8EC();
        sub_1C1A6F18C();

        v43 = sub_1C19D87B0(v41, v40);

        v45 = v135;
        v44 = v136;
        *v135 = v43;
        v126(v45, v125, v44);

        sub_1C1A6D95C();
        v128(v45, v44);
        sub_1C1A6DA5C();
        v132(v32, v8);
        [*(v134 + *(*v134 + 128)) unlock];
        return v43;
      }

      if (v38 == *MEMORY[0x1E69C5E10])
      {
        (*(v37 + 8))(v35, v36);
        sub_1C1A6F64C();
        sub_1C199E4CC();
        v71 = sub_1C1A6F8EC();
        v72 = v130;
        sub_1C1A6F18C();

        v74 = v135;
        v73 = v136;
        *v135 = v72;
        v126(v74, v125, v73);

        sub_1C1A6D95C();
        v128(v74, v73);
        v132(v32, v33);
        v46 = v72;
        [*(v134 + *(*v134 + 128)) unlock];
LABEL_52:

        return v46;
      }

      if (v38 == *MEMORY[0x1E69C5E00])
      {
        v83 = v130;
        v84 = v134;
        sub_1C19D5520(v130);
        v86 = v135;
        v85 = v136;
        *v135 = v83;
        v126(v86, v125, v85);

        sub_1C1A6D95C();
        v128(v86, v85);
        v132(v39, v8);
        v46 = v83;
        [*(v84 + *(*v84 + 128)) unlock];
        goto LABEL_52;
      }

      (*(v37 + 8))(v35, v36);
      goto LABEL_38;
    }

    if (v34 == *MEMORY[0x1E69C5ED8])
    {
      v57 = v130;
      v58 = v122;
      (*(v9 + 16))(v122, v133, v8);
      (*(v9 + 96))(v58, v8);
      v59 = *v58;
      v60 = *(sub_1C19A9E58(&qword_1EBF038A0) + 48);
      v61 = sub_1C1A6D88C();
      v62 = *(v61 - 8);
      v63 = (*(v62 + 88))(v58 + v60, v61);
      if (v63 == *MEMORY[0x1E69C5E08])
      {
        v64 = *(v62 + 96);
        v62 += 96;
        v64(v58 + v60, v61);
        v58 = *(v58 + v60);
        v65 = v57;
        v66 = v134;
        sub_1C19D6BF4(v59, v57);
        v61 = v67;

        if (v61)
        {

          sub_1C19A9E58(&qword_1EBF03E88);
          v68 = swift_allocObject();
          *(v68 + 16) = xmmword_1C1A74830;
          *(v68 + 32) = v57;
          v70 = v135;
          v69 = v136;
          *v135 = v68;
          v126(v70, *MEMORY[0x1E69C5E60], v69);

          sub_1C1A6D95C();
          v128(v70, v69);
LABEL_50:
          v46 = v65;
          v132(v133, v33);
LABEL_51:
          [*(v66 + *(*v66 + 128)) unlock];
          goto LABEL_52;
        }

        v119 = v8;
        if (v58 >> 62)
        {
          goto LABEL_48;
        }

        v93 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v93)
        {
LABEL_49:

          v66 = v134;
          sub_1C19D5520(v65);
          v117 = v135;
          v116 = v136;
          *v135 = v65;
          v126(v117, v125, v116);

          sub_1C1A6D95C();
          v128(v117, v116);
          v33 = v119;
          goto LABEL_50;
        }

LABEL_27:
        v94 = 0;
        v60 = v58 & 0xC000000000000001;
        v33 = v58 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v60)
          {
            v95 = MEMORY[0x1C69055B0](v94, v58);
            v96 = v94 + 1;
            if (__OFADD__(v94, 1))
            {
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }
          }

          else
          {
            if (v94 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_48:
              v93 = sub_1C1A6F9EC();
              if (!v93)
              {
                goto LABEL_49;
              }

              goto LABEL_27;
            }

            v95 = v58[v94 + 4];

            v96 = v94 + 1;
            if (__OFADD__(v94, 1))
            {
              goto LABEL_36;
            }
          }

          sub_1C1A6DA6C();
          v61 = sub_1C1A6DA6C();
          v62 = sub_1C1A6DEAC();
          if (v62 == sub_1C1A6DEAC())
          {

            v113 = v135;
            v112 = v136;
            *v135 = v95;
            v126(v113, v125, v112);

            sub_1C1A6D95C();
            v128(v113, v112);
            v132(v133, v119);
            [*(v134 + *(*v134 + 128)) unlock];
            return v95;
          }

          ++v94;
          v65 = v57;
          if (v96 == v93)
          {
            goto LABEL_49;
          }
        }
      }

      if (v63 == *MEMORY[0x1E69C5E10])
      {
        (*(v62 + 8))(v58 + v60, v61);
        v75 = v134;
        sub_1C19D6BF4(v59, v57);
        v77 = v76;

        if (v77)
        {

          sub_1C19A9E58(&qword_1EBF03E88);
          v78 = swift_allocObject();
          *(v78 + 16) = xmmword_1C1A74830;
          *(v78 + 32) = v57;
          v79 = v120;
          *v120 = v78;
          v80 = *MEMORY[0x1E69C5E60];
          v81 = v132;
          v82 = v133;
        }

        else
        {
          v79 = v120;
          *v120 = v57;
          v81 = v132;
          v82 = v133;
          v80 = v125;
        }

        v111 = v136;
        v126(v79, v80, v136);

        sub_1C1A6D95C();
        v128(v79, v111);
        v81(v82, v33);
        [*(v75 + *(*v75 + 128)) unlock];

        return v57;
      }

      if (v63 == *MEMORY[0x1E69C5E00])
      {
        v87 = v57;
        v88 = v134;
        v89 = sub_1C19D6BF4(v59, v57);
        v91 = v90;

        if (v91)
        {
          v92 = sub_1C1A6DA3C();
          sub_1C19D4778(v89, v91, v92);

          v87 = v57;
        }

        else
        {
          sub_1C19D5520(v57);
          v115 = v135;
          v114 = v136;
          *v135 = v57;
          v126(v115, v125, v114);

          sub_1C1A6D95C();
          v128(v115, v114);
        }

        v132(v133, v33);
        [*(v88 + *(*v88 + 128)) unlock];

        return v87;
      }

LABEL_37:
      (*(v62 + 8))(v58 + v60, v61);
    }

LABEL_38:
    v97 = sub_1C1A6F66C();
    sub_1C199E4CC();
    v98 = sub_1C1A6F8EC();
    if (os_log_type_enabled(v98, v97))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v139[0] = v100;
      *v99 = 136380675;
      v101 = v129;
      sub_1C1A6D98C();
      v102 = sub_1C1A6D9CC();
      v104 = v103;
      v105 = v132;
      v132(v101, v33);
      v106 = sub_1C19A1884(v102, v104, v139);

      *(v99 + 4) = v106;
      _os_log_impl(&dword_1C198D000, v98, v97, "[PCUI] Found unsupported state while attempting to fetch an ad (%{private}s)", v99, 0xCu);
      sub_1C199935C(v100);
      v107 = v100;
      v46 = v130;
      MEMORY[0x1C6906260](v107, -1, -1);
      MEMORY[0x1C6906260](v99, -1, -1);

      v66 = v134;
    }

    else
    {

      v66 = v134;
      v105 = v132;
      v46 = v130;
    }

    v108 = v123;
    *v123 = 11;
    v109 = *MEMORY[0x1E69C5EB0];
    v110 = sub_1C1A6D9BC();
    (*(*(v110 - 8) + 104))(v108, v109, v110);
    swift_storeEnumTagMultiPayload();
    sub_1C1A6DA4C();
    sub_1C1991140(v108, &qword_1EBF03890);
    v105(v133, v33);
    goto LABEL_51;
  }

  v47 = sub_1C1A6F66C();
  sub_1C199E4CC();
  v48 = sub_1C1A6F8EC();
  if (os_log_type_enabled(v48, v47))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v139[0] = v50;
    *v49 = 136380675;
    v51 = v129;
    sub_1C1A6D98C();
    v52 = sub_1C1A6D9CC();
    v53 = v8;
    v55 = v54;
    v132(v51, v53);
    v56 = sub_1C19A1884(v52, v55, v139);

    *(v49 + 4) = v56;
    _os_log_impl(&dword_1C198D000, v48, v47, "[PCUI] Trying to get an ad from invalid state (%{private}s)", v49, 0xCu);
    sub_1C199935C(v50);
    MEMORY[0x1C6906260](v50, -1, -1);
    MEMORY[0x1C6906260](v49, -1, -1);
  }

  [*(v134 + *(*v134 + 128)) unlock];
  return 0;
}

uint64_t sub_1C19D6BF4(void (**a1)(char *, char *, uint64_t), void (*a2)(char *, char *, uint64_t))
{
  v186 = a2;
  v169 = *v2;
  v158 = sub_1C1A6D94C();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v156 = (&v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v172 = v2;
  v170 = *(v169 + 80);
  v161 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v160 = &v154 - v6;
  v155 = sub_1C19A9E58(&qword_1EBF03890);
  MEMORY[0x1EEE9AC00](v155);
  v8 = &v154 - v7;
  v167 = sub_1C1A6D62C();
  v9 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1A6D5DC();
  v185 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v171 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v173 = &v154 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v154 - v16;
  v18 = sub_1C1A6D93C();
  v159 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v189 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v154 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v181 = &v154 - v24;
  v25 = [objc_opt_self() isAppleInternalInstall];
  v183 = v18;
  if (v25)
  {
    v184 = v9;
    v26 = sub_1C1A6F67C();
    sub_1C199E4CC();
    v27 = sub_1C1A6F8EC();
    LODWORD(v182) = v26;
    if (os_log_type_enabled(v27, v26))
    {
      v178 = v27;
      v28 = a1;
      v29 = v11;
      v168 = v22;
      v30 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v191[0] = v176;
      *v30 = 136315138;
      v31 = v28[2];
      v32 = MEMORY[0x1E69E7CC0];
      v177 = v28;
      if (v31)
      {
        v175 = v30;
        v179 = v17;
        v154 = v8;
        v180 = v29;
        v190 = MEMORY[0x1E69E7CC0];
        sub_1C19A9E18(0, v31, 0);
        v32 = v190;
        v33 = *(v159 + 16);
        v34 = v28 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
        v187 = *(v159 + 72);
        v188 = v33;
        v35 = (v159 + 8);
        do
        {
          v36 = v181;
          v37 = v183;
          v188(v181, v34, v183);
          v38 = sub_1C1A6D8EC();
          v40 = v39;
          (*v35)(v36, v37);
          v190 = v32;
          v42 = *(v32 + 16);
          v41 = *(v32 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_1C19A9E18((v41 > 1), v42 + 1, 1);
            v32 = v190;
          }

          *(v32 + 16) = v42 + 1;
          v43 = v32 + 16 * v42;
          *(v43 + 32) = v38;
          *(v43 + 40) = v40;
          v34 += v187;
          --v31;
        }

        while (v31);
        v18 = v183;
        v17 = v179;
        v29 = v180;
        v8 = v154;
        v30 = v175;
      }

      v44 = MEMORY[0x1C6904FE0](v32, MEMORY[0x1E69E6158]);
      v46 = v45;

      v47 = sub_1C19A1884(v44, v46, v191);

      *(v30 + 4) = v47;
      v48 = v178;
      _os_log_impl(&dword_1C198D000, v178, v182, "consuming available contents. content order: %s", v30, 0xCu);
      v49 = v176;
      sub_1C199935C(v176);
      MEMORY[0x1C6906260](v49, -1, -1);
      MEMORY[0x1C6906260](v30, -1, -1);

      v22 = v168;
      v11 = v29;
      a1 = v177;
    }

    else
    {
    }

    v9 = v184;
  }

  v50 = a1[2];
  v51 = MEMORY[0x1E69E7CC0];
  if (!v50)
  {
LABEL_39:
    v102 = 0;
    if (!*(v51 + 2))
    {
      goto LABEL_63;
    }

    goto LABEL_40;
  }

  v154 = v8;
  v52 = a1;
  v53 = &v172[*(*v172 + 144)];
  v165 = *(*v172 + 104);
  v179 = *(v159 + 16);
  v178 = ((*(v159 + 80) + 32) & ~*(v159 + 80));
  v54 = v178 + v52;
  v187 = *(v159 + 72);
  v184 = (v185 + 8);
  v174 = "n>16@0:8";
  v175 = "t";
  v180 = v159 + 16;
  v176 = (v159 + 8);
  v177 = (v159 + 32);
  v163 = v9 + 1;
  *(&v55 + 1) = 2;
  v164 = xmmword_1C1A73A30;
  *&v55 = 136446210;
  v162 = v55;
  v56 = v186;
  v182 = v53;
  v168 = v22;
  while (1)
  {
    v185 = v54;
    v57 = v179;
    (v179)(v22);
    (v57)(v189, v22, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v186 = v50;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v51 = sub_1C19CACC8(0, *(v51 + 2) + 1, 1, v51);
    }

    v60 = *(v51 + 2);
    v59 = *(v51 + 3);
    if (v60 >= v59 >> 1)
    {
      v51 = sub_1C19CACC8(v59 > 1, v60 + 1, 1, v51);
    }

    v188 = v51;
    *(v51 + 2) = v60 + 1;
    (*v177)(v178 + v51 + v60 * v187, v189, v18);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v62 = *(v53 + 1), v63 = Strong, ObjectType = swift_getObjectType(), v191[0] = v63, v65 = (*(*(v62 + 8) + 8))(ObjectType), swift_unknownObjectRelease(), v66 = v173, sub_1C1A6D8FC(), v67 = v171, sub_1C1A6D90C(), sub_1C1A6D50C(), v69 = v68, v70 = *v184, v71 = v67, v53 = v182, (*v184)(v71, v11), v70(v66, v11), v69 < v65))
    {
      v72 = v173;
      sub_1C1A6D90C();
      sub_1C1A6D51C();
      v73 = v72;
      v53 = v182;
      v70(v73, v11);
    }

    else
    {
      sub_1C1A6D8FC();
    }

    sub_1C1A6D92C();
    sub_1C1A6DA6C();
    v74 = sub_1C1A6DEAC();
    if (v74 != sub_1C1A6DEAC())
    {
      goto LABEL_34;
    }

    sub_1C19A9E58(&qword_1EBF037C8);
    v75 = swift_allocObject();
    *(v75 + 16) = v164;
    *(v75 + 32) = sub_1C1A6D8EC();
    *(v75 + 40) = v76;
    v77 = sub_1C1A6DC5C();

    if (v77 >> 62)
    {
      result = sub_1C1A6F9EC();
      if (!result)
      {
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      result = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_33;
      }
    }

    if ((v77 & 0xC000000000000001) != 0)
    {
      v79 = MEMORY[0x1C69055B0](0, v77);
    }

    else
    {
      if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v79 = *(v77 + 32);
    }

    v80 = v79;

    v81 = swift_unknownObjectWeakLoadStrong();
    if (v81)
    {
      v82 = *(v53 + 1);
      v83 = v81;
      v84 = swift_getObjectType();
      v191[0] = v83;
      LODWORD(v82) = (*(*(v82 + 8) + 16))(v80, v84);
      swift_unknownObjectRelease();
      if (!v82)
      {
        break;
      }
    }

LABEL_34:
    v85 = swift_unknownObjectWeakLoadStrong();
    if (v85)
    {
      v86 = *(v53 + 1);
      v87 = v85;
      v88 = swift_getObjectType();
      v191[0] = v87;
      (*(*(v86 + 8) + 24))(v22, 1, v88);
      swift_unknownObjectRelease();
    }

    v89 = sub_1C1A6F67C();
    sub_1C199E4CC();
    v90 = sub_1C1A6F8EC();
    if (os_log_type_enabled(v90, v89))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v191[0] = v92;
      *v91 = v162;
      v93 = v11;
      v94 = v17;
      v95 = v56;
      v96 = v166;
      sub_1C1A6D9FC();
      v97 = sub_1C1A6D5EC();
      v99 = v98;
      (*v163)(v96, v167);
      v100 = sub_1C19A1884(v97, v99, v191);
      v56 = v95;
      v17 = v94;
      v11 = v93;
      v53 = v182;
      v22 = v168;

      *(v91 + 4) = v100;
      _os_log_impl(&dword_1C198D000, v90, v89, "[PCUI] Found invalid content while trying to resolve request with id: %{public}s.", v91, 0xCu);
      sub_1C199935C(v92);
      v101 = v92;
      v18 = v183;
      MEMORY[0x1C6906260](v101, -1, -1);
      MEMORY[0x1C6906260](v91, -1, -1);
    }

    (*v184)(v17, v11);
    (*v176)(v22, v18);
    v51 = v188;
    v54 = &v185[v187];
    v50 = (v186 - 1);
    if (v186 == 1)
    {
      goto LABEL_39;
    }
  }

  v179 = v17;
  v180 = v11;
  v127 = sub_1C1A6F67C();
  sub_1C199E4CC();
  v128 = sub_1C1A6F8EC();
  if (os_log_type_enabled(v128, v127))
  {
    v129 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v191[0] = v189;
    *v129 = 136446723;
    v130 = sub_1C1A6EA5C();
    v132 = sub_1C19A1884(v130, v131, v191);

    *(v129 + 4) = v132;
    *(v129 + 12) = 2081;
    v133 = sub_1C19E93F8();
    if (v133)
    {
      v134 = v133;
      v135 = sub_1C1A6E7EC();
      v137 = v136;
    }

    else
    {
      v137 = 0xE700000000000000;
      v135 = 0x6E776F6E6B6E75;
    }

    v138 = sub_1C19A1884(v135, v137, v191);

    *(v129 + 14) = v138;
    *(v129 + 22) = 2082;
    v139 = v166;
    sub_1C1A6D9FC();
    v140 = sub_1C1A6D5EC();
    v142 = v141;
    (*v163)(v139, v167);
    v143 = sub_1C19A1884(v140, v142, v191);

    *(v129 + 24) = v143;
    _os_log_impl(&dword_1C198D000, v128, v127, "[PCUI] Found cached content with id: %{public}s and adam id: %{private}s, to resolve request %{public}s", v129, 0x20u);
    v144 = v189;
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v144, -1, -1);
    MEMORY[0x1C6906260](v129, -1, -1);

    v18 = v183;
  }

  else
  {
  }

  v145 = v154;
  *v154 = v80;
  swift_storeEnumTagMultiPayload();
  v102 = v80;
  sub_1C1A6DA4C();
  sub_1C1991140(v145, &qword_1EBF03890);
  v146 = swift_unknownObjectWeakLoadStrong();
  v147 = v179;
  if (v146)
  {
    v148 = *(v53 + 1);
    v149 = v146;
    v150 = swift_getObjectType();
    v191[0] = v149;
    (*(*(v148 + 8) + 24))(v22, 0, v150);
    swift_unknownObjectRelease();
  }

  (*v184)(v147, v180);
  (*v176)(v22, v18);
  v51 = v188;
  if (!*(v188 + 2))
  {
LABEL_63:

    if (v102)
    {
      goto LABEL_64;
    }

    return 0;
  }

LABEL_40:
  (*(v161 + 16))(v160, &v172[*(*v172 + 104)], v170);
  v103 = *(v51 + 2);
  if (v103)
  {
    v186 = v102;
    v191[0] = MEMORY[0x1E69E7CC0];

    sub_1C19A9E18(0, v103, 0);
    v104 = v191[0];
    v105 = *(v159 + 16);
    v188 = v51;
    v189 = v105;
    v106 = v51 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
    v187 = *(v159 + 72);
    v107 = (v159 + 8);
    do
    {
      v108 = v181;
      (v189)(v181, v106, v18);
      v109 = sub_1C1A6D8EC();
      v111 = v110;
      (*v107)(v108, v18);
      v191[0] = v104;
      v113 = *(v104 + 16);
      v112 = *(v104 + 24);
      if (v113 >= v112 >> 1)
      {
        sub_1C19A9E18((v112 > 1), v113 + 1, 1);
        v104 = v191[0];
      }

      *(v104 + 16) = v113 + 1;
      v114 = v104 + 16 * v113;
      *(v114 + 32) = v109;
      *(v114 + 40) = v111;
      v106 += v187;
      --v103;
      v18 = v183;
    }

    while (v103);
    v51 = v188;
    v102 = v186;
  }

  else
  {
  }

  v115 = v160;
  v116 = v170;
  sub_1C1A6DC2C();

  (*(v161 + 8))(v115, v116);
  v117 = sub_1C1A6F65C();
  sub_1C199E4CC();
  v118 = sub_1C1A6F8EC();
  if (os_log_type_enabled(v118, v117))
  {

    v119 = swift_slowAlloc();
    *v119 = 134217984;
    v120 = *(v51 + 2);

    *(v119 + 4) = v120;

    _os_log_impl(&dword_1C198D000, v118, v117, "[PCUI] Removing %ld ads from cache.", v119, 0xCu);
    MEMORY[0x1C6906260](v119, -1, -1);
  }

  else
  {
  }

  v121 = &v172[*(*v172 + 144)];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v122 = *(v121 + 1);
    v123 = swift_getObjectType();
    (*(v122 + 48))(v51, v123, v122);
    swift_unknownObjectRelease();
  }

  v124 = v156;
  *v156 = v51;
  v125 = v157;
  v126 = v158;
  (*(v157 + 104))(v124, *MEMORY[0x1E69C5E58], v158);
  sub_1C1A6D95C();
  (*(v125 + 8))(v124, v126);
  if (!v102)
  {
    return 0;
  }

LABEL_64:
  v151 = sub_1C19E93F8();
  if (!v151)
  {

    return 0;
  }

  v152 = v151;
  v153 = sub_1C1A6E7EC();

  return v153;
}