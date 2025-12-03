@interface TTRAddTasksIntentHandler
- (_TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler)init;
- (void)resolveTaskTitlesForAddTasks:(id)tasks withCompletion:(id)completion;
@end

@implementation TTRAddTasksIntentHandler

- (void)resolveTaskTitlesForAddTasks:(id)tasks withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  tasksCopy = tasks;
  selfCopy = self;
  sub_261D5B910(tasksCopy, sub_261D647EC, v7);
}

- (_TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end