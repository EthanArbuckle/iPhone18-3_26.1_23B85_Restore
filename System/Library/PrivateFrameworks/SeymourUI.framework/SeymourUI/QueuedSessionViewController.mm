@interface QueuedSessionViewController
- (_TtC9SeymourUI27QueuedSessionViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI27QueuedSessionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
@end

@implementation QueuedSessionViewController

- (unint64_t)supportedInterfaceOrientations
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI27QueuedSessionViewController_platform) == 1)
  {
    return 30;
  }

  else
  {
    return 24;
  }
}

- (_TtC9SeymourUI27QueuedSessionViewController)initWithCoder:(id)coder
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(QueuedSessionViewController *)&v3 viewDidLoad];
  sub_20BC782A8();
}

- (_TtC9SeymourUI27QueuedSessionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end