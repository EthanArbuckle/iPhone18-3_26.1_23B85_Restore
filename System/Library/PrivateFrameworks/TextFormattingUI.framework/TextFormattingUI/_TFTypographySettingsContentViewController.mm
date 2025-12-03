@interface _TFTypographySettingsContentViewController
- (TypographyPanelDelegate)delegate;
- (_TFTypographySettingsContentViewController)initWithCoder:(id)coder;
- (_TFTypographySettingsContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (__TFTypographySettingsContentViewControllerDelegate)_delegate;
- (id)_setSelectedFont:(uint64_t)font;
- (void)loadView;
- (void)setDelegate:(id)delegate;
- (void)set_delegate:(id)set_delegate;
- (void)typographyPanelDidUpdateWithFont:(id)font;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _TFTypographySettingsContentViewController

- (_TFTypographySettingsContentViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  _TFTypographySettingsContentViewController.loadView()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  _TFTypographySettingsContentViewController.viewWillAppear(_:)(appear);
}

- (TypographyPanelDelegate)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  *(&self->super.super.super.isa + OBJC_IVAR____TFTypographySettingsContentViewController_delegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (id)_setSelectedFont:(uint64_t)font
{
  result = *(font + OBJC_IVAR____TFTypographySettingsContentViewController__typographyPanel);
  if (result)
  {
    return [result setSelectedFont_];
  }

  return result;
}

- (void)typographyPanelDidUpdateWithFont:(id)font
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

- (void)set_delegate:(id)set_delegate
{
  v5 = OBJC_IVAR____TFTypographySettingsContentViewController__delegate;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = set_delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (_TFTypographySettingsContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end