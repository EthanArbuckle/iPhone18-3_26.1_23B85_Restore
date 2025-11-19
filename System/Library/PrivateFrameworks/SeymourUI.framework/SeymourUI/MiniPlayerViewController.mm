@interface MiniPlayerViewController
- (_TtC9SeymourUI24MiniPlayerViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI24MiniPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation MiniPlayerViewController

- (_TtC9SeymourUI24MiniPlayerViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI24MiniPlayerViewController_contentOverlayView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI24MiniPlayerViewController_isPictureInPictureActive) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI24MiniPlayerViewController_settingsPopoverSourceView) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20BB56338();
}

- (_TtC9SeymourUI24MiniPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end