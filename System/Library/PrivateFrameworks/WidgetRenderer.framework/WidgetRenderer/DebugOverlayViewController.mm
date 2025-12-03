@interface DebugOverlayViewController
- (_TtC14WidgetRenderer26DebugOverlayViewController)initWithCoder:(id)coder;
- (_TtC14WidgetRenderer26DebugOverlayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_didExitAlwaysOn;
- (void)_willEnterAlwaysOn;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DebugOverlayViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  view = [(DebugOverlayViewController *)selfCopy view];
  if (view)
  {
    v4 = view;
    [view setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC14WidgetRenderer26DebugOverlayViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_validationState) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugText);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_animationsPaused) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_isSnapshotting) = 0;
  result = sub_1DAED273C();
  __break(1u);
  return result;
}

- (void)_willEnterAlwaysOn
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView);
  v2[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplay] = 1;
  [v2 setNeedsLayout];
}

- (void)_didExitAlwaysOn
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView);
  v2[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplay] = 0;
  [v2 setNeedsLayout];
}

- (_TtC14WidgetRenderer26DebugOverlayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end