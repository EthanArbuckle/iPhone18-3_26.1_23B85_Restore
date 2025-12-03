@interface TTRSnoozeTasksIntentHandler
- (_TtC25RemindersIntentsFramework27TTRSnoozeTasksIntentHandler)init;
- (void)handleSnoozeTasks:(id)tasks completion:(id)completion;
- (void)resolveNextTriggerTimeForSnoozeTasks:(id)tasks withCompletion:(id)completion;
- (void)resolveTasksForSnoozeTasks:(id)tasks withCompletion:(id)completion;
@end

@implementation TTRSnoozeTasksIntentHandler

- (void)resolveTasksForSnoozeTasks:(id)tasks withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  tasksCopy = tasks;
  selfCopy = self;
  sub_261D75A28(tasksCopy, sub_261D78B10, v7);
}

- (void)resolveNextTriggerTimeForSnoozeTasks:(id)tasks withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  tasksCopy = tasks;
  selfCopy = self;
  sub_261D77588(tasksCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handleSnoozeTasks:(id)tasks completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  tasksCopy = tasks;
  selfCopy = self;
  sub_261D7802C(tasksCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC25RemindersIntentsFramework27TTRSnoozeTasksIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end