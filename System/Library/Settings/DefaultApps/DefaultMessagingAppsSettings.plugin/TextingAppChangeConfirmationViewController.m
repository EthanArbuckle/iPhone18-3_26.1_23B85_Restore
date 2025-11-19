@interface TextingAppChangeConfirmationViewController
- (_TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController)initWithCoder:(id)a3;
- (_TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController)initWithRootViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation TextingAppChangeConfirmationViewController

- (_TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController)initWithCoder:(id)a3
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&self->confirmationDelegate[OBJC_IVAR____TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController_confirmationDelegate] = 0;
  swift_unknownObjectWeakInit();
  result = sub_14A3C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for TextingAppChangeConfirmationViewController();
  v3 = self;
  [(TextingAppChangeConfirmationViewController *)&v4 viewDidLoad];
  sub_7110();
  sub_73C4();
  sub_7AD8();
}

- (_TtC28DefaultMessagingAppsSettings42TextingAppChangeConfirmationViewController)initWithRootViewController:(id)a3
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end