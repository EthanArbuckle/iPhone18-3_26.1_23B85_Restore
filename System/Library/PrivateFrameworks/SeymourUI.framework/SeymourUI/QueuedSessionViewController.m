@interface QueuedSessionViewController
- (_TtC9SeymourUI27QueuedSessionViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI27QueuedSessionViewController)initWithNibName:(id)a3 bundle:(id)a4;
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

- (_TtC9SeymourUI27QueuedSessionViewController)initWithCoder:(id)a3
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

- (_TtC9SeymourUI27QueuedSessionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end