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
  selfCopy = self;
  defaultWorkspace = [v3 defaultWorkspace];
  if (defaultWorkspace)
  {
    v6 = defaultWorkspace;
    [defaultWorkspace removeObserver:selfCopy];
  }

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for DefaultMessagingAppsModel();
  [(DefaultMessagingAppsModel *)&v7 dealloc];
}

@end