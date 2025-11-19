@interface SystemApertureElementViewController
- (NSURL)launchURL;
- (UIColor)keyColor;
- (_TtC14WidgetRenderer35SystemApertureElementViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_timelinesForDateInterval:(id)a3;
- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)setElementIdentifier:(id)a3;
- (void)setLeadingView:(id)a3;
- (void)setMinimalView:(id)a3;
- (void)setPresentationBehaviors:(unint64_t)a3;
- (void)setTrailingView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation SystemApertureElementViewController

- (void)setElementIdentifier:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_elementIdentifier);
  *(self + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_elementIdentifier) = a3;
  v3 = a3;
}

- (void)setLeadingView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView);
  *(self + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView) = a3;
  v3 = a3;
}

- (void)setTrailingView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView);
  *(self + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView) = a3;
  v3 = a3;
}

- (void)setMinimalView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView);
  *(self + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView) = a3;
  v3 = a3;
}

- (void)setPresentationBehaviors:(unint64_t)a3
{
  v4 = *(self + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_presentationBehaviors);
  *(self + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_presentationBehaviors) = a3;
  if (v4 != a3)
  {
    v5 = self;
    [-[SystemApertureElementViewController systemApertureElementContext](v5 systemApertureElementContext)];
    swift_unknownObjectRelease();
  }
}

- (NSURL)launchURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = self;
  sub_1DAE54BBC(v6);

  v8 = sub_1DAECDBFC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1DAECDB8C();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (UIColor)keyColor
{
  v2 = self;
  v3 = sub_1DAE54D9C();

  return v3;
}

- (void)invalidate
{
  v2 = self;
  sub_1DAE55F54();
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  v8[4] = sub_1DAE5D448;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DADB7C8C;
  v8[3] = &block_descriptor_112;
  v6 = _Block_copy(v8);
  v7 = self;
  swift_unknownObjectRetain();

  [a3 animateAlongsideTransition:v6 completion:0];
  swift_unknownObjectRelease();

  _Block_release(v6);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1DAE56AA0(a3);
}

- (id)_timelinesForDateInterval:(id)a3
{
  v4 = sub_1DAECDA2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAECD9EC();
  v9 = self;
  sub_1DAE57210(v8);

  (*(v5 + 8))(v8, v4);
  sub_1DAD674D4(0, &qword_1ECC09EA0, 0x1E698E508);
  v10 = sub_1DAED1E6C();

  return v10;
}

- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1DAE578FC(a3, sub_1DAE1034C, v7);
}

- (_TtC14WidgetRenderer35SystemApertureElementViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end