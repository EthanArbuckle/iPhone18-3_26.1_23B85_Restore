@interface DialingAppChangeConfirmationViewController
- (_TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController)initWithCoder:(id)coder;
- (_TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController)initWithRootViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation DialingAppChangeConfirmationViewController

- (_TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController)initWithCoder:(id)coder
{
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&self->confirmationDelegate[OBJC_IVAR____TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController_confirmationDelegate] = 0;
  swift_unknownObjectWeakInit();
  result = sub_19054();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for DialingAppChangeConfirmationViewController();
  selfCopy = self;
  [(DialingAppChangeConfirmationViewController *)&v4 viewDidLoad];
  sub_15758();
  sub_16704();
  sub_16E34();
}

- (_TtC26DefaultCallingAppsSettings42DialingAppChangeConfirmationViewController)initWithRootViewController:(id)controller
{
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end