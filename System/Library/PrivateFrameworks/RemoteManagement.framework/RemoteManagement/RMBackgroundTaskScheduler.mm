@interface RMBackgroundTaskScheduler
+ (id)sharedInstance;
- (void)_initBackgroundTasks;
@end

@implementation RMBackgroundTaskScheduler

+ (id)sharedInstance
{
  if (qword_1000E66F0 != -1)
  {
    sub_10000B960();
  }

  v3 = qword_1000E66E8;

  return v3;
}

- (void)_initBackgroundTasks
{
  v3 = [[RMBackgroundTask alloc] initWithIdentifier:@"com.apple.remotemanagement.periodic-sync" queue:0 callback:&stru_1000D0FF8];
  [(RMBackgroundTaskScheduler *)self setPeriodicSyncTask:v3];

  objc_initWeak(&location, self);
  v4 = [RMBackgroundTask alloc];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10000B834;
  v9 = &unk_1000D1048;
  objc_copyWeak(&v10, &location);
  v5 = [(RMBackgroundTask *)v4 initWithIdentifier:@"com.apple.remotemanagement.on-reboot" queue:0 callback:&v6];
  [(RMBackgroundTaskScheduler *)self setOnRebootTask:v5, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

@end