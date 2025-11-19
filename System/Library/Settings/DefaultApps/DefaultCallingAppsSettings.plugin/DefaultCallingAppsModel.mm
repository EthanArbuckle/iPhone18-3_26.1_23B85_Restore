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
  v4 = self;
  v5 = [v3 defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    [v5 removeObserver:v4];
  }

  v7.receiver = v4;
  v7.super_class = type metadata accessor for DefaultCallingAppsModel();
  [(DefaultCallingAppsModel *)&v7 dealloc];
}

@end