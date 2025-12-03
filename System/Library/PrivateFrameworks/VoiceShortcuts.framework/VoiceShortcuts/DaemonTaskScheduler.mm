@interface DaemonTaskScheduler
- (void)executeAsyncTaskWithIdentifier:(id)identifier priority:(int64_t)priority handler:(id)handler;
@end

@implementation DaemonTaskScheduler

- (void)executeAsyncTaskWithIdentifier:(id)identifier priority:(int64_t)priority handler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_231158E58();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;

  DaemonTaskScheduler.executeAsyncTask(withIdentifier:priority:handler:)(v7, v9, priority, sub_23107EB4C, v10);
}

@end