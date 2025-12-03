@interface BMSyncBackgroundTasks
+ (BOOL)registerDeferredMergeBGTaskWithCore:(id)core queue:(id)queue;
+ (void)submitBackgroundTaskForDeferredMerge;
@end

@implementation BMSyncBackgroundTasks

+ (BOOL)registerDeferredMergeBGTaskWithCore:(id)core queue:(id)queue
{
  coreCopy = core;
  queueCopy = queue;
  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100021668;
  v12[3] = &unk_100079358;
  v8 = coreCopy;
  v13 = v8;
  v9 = [v7 registerForTaskWithIdentifier:@"com.apple.biomesyncd.deferredMerge" usingQueue:queueCopy launchHandler:v12];

  if ((v9 & 1) == 0)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = @"com.apple.biomesyncd.deferredMerge";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "BGSystemTask already registered %@", buf, 0xCu);
    }
  }

  return v9;
}

+ (void)submitBackgroundTaskForDeferredMerge
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  v3 = [v2 taskRequestForIdentifier:@"com.apple.biomesyncd.deferredMerge"];

  if (!v3)
  {
    v4 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.biomesyncd.deferredMerge"];
    [v4 setScheduleAfter:1.0];
    [v4 setRequiresProtectionClass:2];
    [v4 setPriority:2];
    v5 = +[BGSystemTaskScheduler sharedScheduler];
    v9 = 0;
    v6 = [v5 submitTaskRequest:v4 error:&v9];
    v7 = v9;

    if ((v6 & 1) == 0)
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10004A0F4(v7, v8);
      }
    }
  }
}

@end