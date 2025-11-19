@interface DaemonTaskScheduler
- (void)executeAsyncTaskWithIdentifier:(id)a3 priority:(int64_t)a4 handler:(id)a5;
@end

@implementation DaemonTaskScheduler

- (void)executeAsyncTaskWithIdentifier:(id)a3 priority:(int64_t)a4 handler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_231158E58();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;

  DaemonTaskScheduler.executeAsyncTask(withIdentifier:priority:handler:)(v7, v9, a4, sub_23107EB4C, v10);
}

@end