@interface DefaultCallingAppsModel
- (_TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel)init;
- (void)dealloc;
@end

@implementation DefaultCallingAppsModel

- (_TtC26DefaultCallingAppsSettings23DefaultCallingAppsModel)init
{
  sub_18F54();
  sub_18F44();
  sub_18F04();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_10694();

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
  v7.super_class = type metadata accessor for DefaultCallingAppsModel();
  [(DefaultCallingAppsModel *)&v7 dealloc];
}

@end