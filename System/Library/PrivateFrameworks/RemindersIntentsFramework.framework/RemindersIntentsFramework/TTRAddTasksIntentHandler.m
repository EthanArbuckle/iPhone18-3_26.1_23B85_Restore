@interface TTRAddTasksIntentHandler
- (_TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler)init;
- (void)resolveTaskTitlesForAddTasks:(id)a3 withCompletion:(id)a4;
@end

@implementation TTRAddTasksIntentHandler

- (void)resolveTaskTitlesForAddTasks:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_261D5B910(v8, sub_261D647EC, v7);
}

- (_TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end