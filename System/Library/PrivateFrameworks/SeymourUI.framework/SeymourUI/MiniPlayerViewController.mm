@interface MiniPlayerViewController
- (_TtC9SeymourUI24MiniPlayerViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI24MiniPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation MiniPlayerViewController

- (_TtC9SeymourUI24MiniPlayerViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_20BB56338();
}

- (_TtC9SeymourUI24MiniPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end