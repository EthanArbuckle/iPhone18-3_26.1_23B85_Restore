@interface DefaultMessagingAppsModel
- (_TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel)init;
- (void)dealloc;
@end

@implementation DefaultMessagingAppsModel

- (_TtC28DefaultMessagingAppsSettings25DefaultMessagingAppsModel)init
{
  sub_1497C();
  sub_1496C();
  sub_1492C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_B194();

  return v2;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    [v5 removeObserver:v4];
  }

  v7.receiver = v4;
  v7.super_class = type metadata accessor for DefaultMessagingAppsModel();
  [(DefaultMessagingAppsModel *)&v7 dealloc];
}

@end