@interface _TFTypographySettingsContentViewController
- (TypographyPanelDelegate)delegate;
- (_TFTypographySettingsContentViewController)initWithCoder:(id)a3;
- (_TFTypographySettingsContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (__TFTypographySettingsContentViewControllerDelegate)_delegate;
- (id)_setSelectedFont:(uint64_t)a1;
- (void)loadView;
- (void)setDelegate:(id)a3;
- (void)set_delegate:(id)a3;
- (void)typographyPanelDidUpdateWithFont:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _TFTypographySettingsContentViewController

- (_TFTypographySettingsContentViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TFTypographySettingsContentViewController__typographyPanel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TFTypographySettingsContentViewController_delegate) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TFTypographySettingsContentViewController__delegate) = 0;
  result = sub_26D3A1468();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  _TFTypographySettingsContentViewController.loadView()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  _TFTypographySettingsContentViewController.viewWillAppear(_:)(a3);
}

- (TypographyPanelDelegate)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TFTypographySettingsContentViewController_delegate) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (id)_setSelectedFont:(uint64_t)a1
{
  result = *(a1 + OBJC_IVAR____TFTypographySettingsContentViewController__typographyPanel);
  if (result)
  {
    return [result setSelectedFont_];
  }

  return result;
}

- (void)typographyPanelDidUpdateWithFont:(id)a3
{
  v5 = OBJC_IVAR____TFTypographySettingsContentViewController__delegate;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  if (v6)
  {
    [v6 _typographySettingsViewControllerDidUpdateFont_];
  }
}

- (__TFTypographySettingsContentViewControllerDelegate)_delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)set_delegate:(id)a3
{
  v5 = OBJC_IVAR____TFTypographySettingsContentViewController__delegate;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (_TFTypographySettingsContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end