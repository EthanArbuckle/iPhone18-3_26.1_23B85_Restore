@interface WFParameterHostingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)attachToParentViewController:(id)a3;
- (void)configureConfigurationUIViewWithParameter:(id)a3 state:(id)a4 processing:(BOOL)a5 shouldFocus:(BOOL)a6 variableProvider:(id)a7 widgetFamily:(int64_t)a8 fillProvider:(id)a9 overridingCellBackgroundColor:(id)a10 overridingTintColor:(id)a11 updateBlock:(id)a12;
- (void)configureViewForRuntimeUIWithParameter:(id)a3 state:(id)a4 processing:(BOOL)a5 shouldFocus:(BOOL)a6 variableProvider:(id)a7 updateBlock:(id)a8;
- (void)detachFromParentViewController;
- (void)layoutSubviews;
@end

@implementation WFParameterHostingView

- (void)layoutSubviews
{
  v2 = self;
  sub_274601CFC();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_274601EA8();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)configureViewForRuntimeUIWithParameter:(id)a3 state:(id)a4 processing:(BOOL)a5 shouldFocus:(BOOL)a6 variableProvider:(id)a7 updateBlock:(id)a8
{
  v9 = a6;
  v10 = a5;
  v14 = _Block_copy(a8);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v17 = self;
  sub_274601F28(v16, a4, v10, v9, a7, sub_274603918, v15);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)configureConfigurationUIViewWithParameter:(id)a3 state:(id)a4 processing:(BOOL)a5 shouldFocus:(BOOL)a6 variableProvider:(id)a7 widgetFamily:(int64_t)a8 fillProvider:(id)a9 overridingCellBackgroundColor:(id)a10 overridingTintColor:(id)a11 updateBlock:(id)a12
{
  v18 = _Block_copy(a12);
  if (a9)
  {
    v19 = a3;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v20 = a10;
    v21 = a11;
    v22 = self;
    swift_unknownObjectRetain();
    sub_27463C13C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v29, 0, sizeof(v29));
    v23 = a3;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v24 = a10;
    v25 = a11;
    v26 = self;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v18;
  sub_274602070(a3, a4, a5, a6, a7, a8, v29, a10, a11, sub_27460333C, v27);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_27440CB1C(v29, &unk_28094A230);
}

- (void)attachToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_274602F84(a3);
}

- (void)detachFromParentViewController
{
  v2 = self;
  sub_274602FF4();
}

@end