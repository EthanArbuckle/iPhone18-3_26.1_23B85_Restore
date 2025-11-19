@interface STUsageManager
+ (id)usageGenesisDate;
+ (int64_t)_notificationDelayForDateComponentForDSID:(id)a3 maximumDelay:(unsigned int)a4;
- (BOOL)_updateContext:(id)a3 lastWeekScreenTime:(double)a4 weekBeforeLastScreenTime:(double)a5;
- (STUsageManager)initWithPersistenceController:(id)a3;
- (STUsageManager)initWithPersistenceController:(id)a3 usageReporter:(id)a4;
- (id)_dateComponentsForNextWeeklyNotification;
- (void)_addDuetNotificationObservers;
- (void)_duetKnowledgeStorageDidTombstoneEventsNotification:(id)a3;
- (void)_postNotification:(id)a3 rollupError:(id)a4 calendar:(id)a5 startOfLastWeek:(id)a6 completionHandler:(id)a7;
- (void)_purgeUsageOperation:(id)a3 cancelledDidChange:(BOOL)a4;
- (void)_purgeUsageOperation:(id)a3 executingDidChange:(BOOL)a4;
- (void)_purgeUsageOperation:(id)a3 finishedDidChange:(BOOL)a4;
- (void)_removeDuetNotificationObservers;
- (void)_resetUsageAndRollupWithCompletionHandler:(id)a3;
- (void)_rollupIfNeeded;
- (void)_rollupOperation:(id)a3 cancelledDidChange:(BOOL)a4;
- (void)_rollupOperation:(id)a3 executingDidChange:(BOOL)a4;
- (void)_rollupOperation:(id)a3 finishedDidChange:(BOOL)a4;
- (void)_rollupUsageWithOperation:(id)a3 completionHandler:(id)a4;
- (void)_scheduleNextWeeklyReportNotificationAfterRollup:(BOOL)a3;
- (void)_unscheduleNextWeeklyReportNotification;
- (void)_usageOperationDidFinish:(id)a3 completion:(id)a4;
- (void)controllerDidChangeContent:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performWeeklyRollupWithCompletionHandler:(id)a3;
- (void)resume;
- (void)setScreenTimeEnabled:(BOOL)a3;
- (void)setUsageGenesisDate:(id)a3;
@end

@implementation STUsageManager

- (STUsageManager)initWithPersistenceController:(id)a3 usageReporter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = STUsageManager;
  v9 = [(STUsageManager *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_usageReporter, a4);
    objc_storeStrong(&v10->_persistenceController, a3);
    v11 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.ScreenTimeAgent.activity.hourly-usage-rollup"];
    hourlyUsageRollupActivity = v10->_hourlyUsageRollupActivity;
    v10->_hourlyUsageRollupActivity = v11;

    v13 = dispatch_queue_create("com.apple.ScreenTimeAgent.usage-rollup", 0);
    rollupQueue = v10->_rollupQueue;
    v10->_rollupQueue = v13;

    v15 = objc_opt_new();
    rollupOperationQueue = v10->_rollupOperationQueue;
    v10->_rollupOperationQueue = v15;

    [(NSOperationQueue *)v10->_rollupOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v10->_rollupOperationQueue setName:@"com.apple.ScreenTimeAgent.usage-rollup"];
    v17 = objc_opt_new();
    queuedRollupOperations = v10->_queuedRollupOperations;
    v10->_queuedRollupOperations = v17;

    v19 = objc_opt_new();
    queuedPurgeUsageOperations = v10->_queuedPurgeUsageOperations;
    v10->_queuedPurgeUsageOperations = v19;

    v21 = +[STXPCEventDispatcher alarmEventDispatcher];
    v22 = [v21 registerObserverWithIdentifier:@"Weekly Usage Report"];
    weeklyAlarmObserver = v10->_weeklyAlarmObserver;
    v10->_weeklyAlarmObserver = v22;

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100098350;
    v25[3] = &unk_1001A2AF8;
    v26 = v10;
    [(STXPCEventObserver *)v10->_weeklyAlarmObserver setHandler:v25];
  }

  return v10;
}

- (STUsageManager)initWithPersistenceController:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(STUsageManager *)self initWithPersistenceController:v4 usageReporter:v5];

  return v6;
}

+ (id)usageGenesisDate
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"UsageGenesisDate"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUsageGenesisDate:(id)a3
{
  v5 = a3;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = v3;
  if (v5)
  {
    [v3 setObject:v5 forKey:@"UsageGenesisDate"];
  }

  else
  {
    [v3 removeObjectForKey:@"UsageGenesisDate"];
  }
}

- (void)setScreenTimeEnabled:(BOOL)a3
{
  if (self->_screenTimeEnabled != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_screenTimeEnabled = a3;
    v7 = [(STUsageManager *)self rollupQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100098630;
    v8[3] = &unk_1001A6230;
    v8[4] = self;
    v9 = a3;
    dispatch_async(v7, v8);
  }
}

- (void)resume
{
  v3 = [(STUsageManager *)self persistenceController];
  v4 = [v3 viewContext];

  if (_os_feature_enabled_impl())
  {
    v24 = 0;
    v5 = [_TtC15ScreenTimeAgent28LegacyUsageShutdownScheduler isLegacyUsageDisabledWithContext:v4 error:&v24];
    v6 = v24;
    if (v5)
    {
      if ([v5 BOOLValue])
      {
        v7 = +[STLog usage];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resume :: Legacy usage is disabled skipping usage rollup", buf, 2u);
        }

        +[_TtC15ScreenTimeAgent28LegacyUsageShutdownScheduler deregisterSystemTask];
        goto LABEL_19;
      }
    }

    else
    {
      v8 = +[STLog usage];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100120BF8();
      }
    }
  }

  v9 = [(STUsageManager *)self usageRequestsFetchedResultsController];

  if (!v9)
  {
    v10 = +[STUsageRequest fetchRequestForLocalUsageRequests];
    v11 = [NSPredicate predicateWithFormat:@"%K != %K", @"requestedDate", @"acknowledgedDate"];
    v12 = [v10 predicate];
    v26[0] = v12;
    v26[1] = v11;
    v13 = [NSArray arrayWithObjects:v26 count:2];
    v14 = [NSCompoundPredicate andPredicateWithSubpredicates:v13];
    [v10 setPredicate:v14];

    v15 = [NSSortDescriptor sortDescriptorWithKey:@"requestedDate" ascending:1];
    v25 = v15;
    v16 = [NSArray arrayWithObjects:&v25 count:1];
    [v10 setSortDescriptors:v16];

    v17 = [[NSFetchedResultsController alloc] initWithFetchRequest:v10 managedObjectContext:v4 sectionNameKeyPath:0 cacheName:0];
    [(STUsageManager *)self setUsageRequestsFetchedResultsController:v17];
    [v17 setDelegate:self];
    v18 = [(STUsageManager *)self usageRequestsFetchedResultsController];
    v22 = 0;
    LODWORD(v13) = [v18 performFetch:&v22];
    v19 = v22;

    if (v13)
    {
      [(STUsageManager *)self _rollupIfNeeded];
    }

    else
    {
      v20 = +[STLog usage];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100120C60();
      }
    }
  }

  v6 = [(STUsageManager *)self hourlyUsageRollupActivity];
  [v6 setRepeats:1];
  [v6 setInterval:XPC_ACTIVITY_INTERVAL_1_HOUR];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100098C84;
  v21[3] = &unk_1001A6258;
  v21[4] = self;
  [v6 scheduleWithBlock:v21];
LABEL_19:
}

- (void)_rollupUsageWithOperation:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = [(STUsageManager *)self persistenceController];
    v9 = [v8 newBackgroundContext];

    v22 = 0;
    v10 = [_TtC15ScreenTimeAgent28LegacyUsageShutdownScheduler isLegacyUsageDisabledWithContext:v9 error:&v22];
    v11 = v22;
    if (v10)
    {
      if ([v10 BOOLValue])
      {
        v12 = +[STLog usage];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "_rollupUsageWithOperation :: Legacy usage is disabled skipping usage rollup", buf, 2u);
        }

        if (v7)
        {
          v7[2](v7, 0);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = +[STLog usage];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100120E00();
      }
    }

    v20 = v11;
    v14 = [_TtC15ScreenTimeAgent28LegacyUsageShutdownScheduler scheduleSystemTaskAndReturnError:&v20];
    v15 = v20;

    v16 = +[STLog usage];
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Successfully scheduled legacy usage shutdown task", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100120D98();
    }
  }

  [v6 addObserver:self forKeyPath:@"cancelled" options:1 context:"KVOContextSTUsageManager"];
  [v6 addObserver:self forKeyPath:@"executing" options:1 context:"KVOContextSTUsageManager"];
  [v6 addObserver:self forKeyPath:@"finished" options:1 context:"KVOContextSTUsageManager"];
  if (v7)
  {
    v18 = objc_retainBlock(v7);
    v19 = [(STUsageManager *)self rollupQueue];
    [v6 addTarget:self selector:"_usageOperationDidFinish:completion:" forOperationEvents:6 userInfo:v18 delegateQueue:v19];
  }

  v11 = [(STUsageManager *)self rollupOperationQueue];
  [v11 addOperation:v6];
LABEL_21:
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == "KVOContextSTUsageManager")
  {
    if ([v10 isEqualToString:@"cancelled"])
    {
      v13 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v14 = +[NSNull null];

      if (v13 == v14)
      {

        v13 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[STUsageManager _rollupOperation:cancelledDidChange:](self, "_rollupOperation:cancelledDidChange:", v11, [v13 BOOLValue]);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_100120F58();
        }

        -[STUsageManager _purgeUsageOperation:cancelledDidChange:](self, "_purgeUsageOperation:cancelledDidChange:", v11, [v13 BOOLValue]);
      }
    }

    else if ([v10 isEqualToString:@"executing"])
    {
      v13 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v15 = +[NSNull null];

      if (v13 == v15)
      {

        v13 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[STUsageManager _rollupOperation:executingDidChange:](self, "_rollupOperation:executingDidChange:", v11, [v13 BOOLValue]);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_100120EE0();
        }

        -[STUsageManager _purgeUsageOperation:executingDidChange:](self, "_purgeUsageOperation:executingDidChange:", v11, [v13 BOOLValue]);
      }
    }

    else
    {
      if (![v10 isEqualToString:@"finished"])
      {
        goto LABEL_28;
      }

      v13 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
      v16 = +[NSNull null];

      if (v13 == v16)
      {

        v13 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[STUsageManager _rollupOperation:finishedDidChange:](self, "_rollupOperation:finishedDidChange:", v11, [v13 BOOLValue]);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_100120E68();
        }

        -[STUsageManager _purgeUsageOperation:finishedDidChange:](self, "_purgeUsageOperation:finishedDidChange:", v11, [v13 BOOLValue]);
      }
    }

    goto LABEL_28;
  }

  v17.receiver = self;
  v17.super_class = STUsageManager;
  [(STUsageManager *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_28:
}

- (void)_rollupOperation:(id)a3 cancelledDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v8 = v6;
    v7 = self->_queuedRollupOperations;
    objc_sync_enter(v7);
    [(NSMutableArray *)self->_queuedRollupOperations removeObject:v8];
    objc_sync_exit(v7);

    v6 = v8;
  }
}

- (void)_rollupOperation:(id)a3 executingDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v8 = v6;
    v7 = self->_queuedRollupOperations;
    objc_sync_enter(v7);
    [(NSMutableArray *)self->_queuedRollupOperations removeObject:v8];
    objc_sync_exit(v7);

    v6 = v8;
  }
}

- (void)_rollupOperation:(id)a3 finishedDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = self->_queuedRollupOperations;
    objc_sync_enter(v7);
    [(NSMutableArray *)self->_queuedRollupOperations removeObject:v6];
    objc_sync_exit(v7);

    [v6 removeObserver:self forKeyPath:@"cancelled" context:"KVOContextSTUsageManager"];
    [v6 removeObserver:self forKeyPath:@"executing" context:"KVOContextSTUsageManager"];
    [v6 removeObserver:self forKeyPath:@"finished" context:"KVOContextSTUsageManager"];
    if ([(STUsageManager *)self resetTimelinesOnNextRollup])
    {
      [(STUsageManager *)self setResetTimelinesOnNextRollup:0];
      v8 = +[STLog usage];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reloading Widget Timelines - Usage Rollup Occurred", v12, 2u);
      }

      v9 = [[CHSTimelineController alloc] initWithExtensionBundleIdentifier:@"com.apple.ScreenTimeWidgetApplication" kind:@"com.apple.ScreenTimeWidgetApplication.ScreenTimeWidgetExtension"];
      v10 = [v9 reloadTimelineWithReason:@"Usage Rollup Occurred"];
      if (v10)
      {
        v11 = +[STLog usage];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100120AE4();
        }
      }
    }
  }
}

- (void)_purgeUsageOperation:(id)a3 cancelledDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v8 = v6;
    v7 = self->_queuedPurgeUsageOperations;
    objc_sync_enter(v7);
    [(NSMutableArray *)self->_queuedPurgeUsageOperations removeObject:v8];
    objc_sync_exit(v7);

    v6 = v8;
  }
}

- (void)_purgeUsageOperation:(id)a3 executingDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v8 = v6;
    v7 = self->_queuedPurgeUsageOperations;
    objc_sync_enter(v7);
    [(NSMutableArray *)self->_queuedPurgeUsageOperations removeObject:v8];
    objc_sync_exit(v7);

    v6 = v8;
  }
}

- (void)_purgeUsageOperation:(id)a3 finishedDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v8 = v6;
    v7 = self->_queuedPurgeUsageOperations;
    objc_sync_enter(v7);
    [(NSMutableArray *)self->_queuedPurgeUsageOperations removeObject:v8];
    objc_sync_exit(v7);

    [v8 removeObserver:self forKeyPath:@"cancelled" context:"KVOContextSTUsageManager"];
    [v8 removeObserver:self forKeyPath:@"executing" context:"KVOContextSTUsageManager"];
    [v8 removeObserver:self forKeyPath:@"finished" context:"KVOContextSTUsageManager"];
    v6 = v8;
  }
}

- (void)_usageOperationDidFinish:(id)a3 completion:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = [v12 error];
  v7 = [v6 domain];
  if ([v7 isEqualToString:CATErrorDomain])
  {
    v8 = [v12 error];
    v9 = [v8 code];

    if (v9 == 404)
    {
      v10 = [NSError errorWithDomain:STErrorDomain code:7 userInfo:0];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = [v12 error];
LABEL_6:
  v11 = v10;
  v5[2](v5, v10);
}

- (void)_addDuetNotificationObservers
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  v4 = _DKKnowledgeStorageDidTombstoneEventsNotification;
  v5 = +[_DKSystemEventStreams appUsageStream];
  v6 = [v5 name];
  [v3 addObserver:self selector:"_duetKnowledgeStorageDidTombstoneEventsNotification:" name:v4 object:v6];

  v7 = +[NSDistributedNotificationCenter defaultCenter];
  v8 = +[_DKSystemEventStreams appWebUsageStream];
  v9 = [v8 name];
  [v7 addObserver:self selector:"_duetKnowledgeStorageDidTombstoneEventsNotification:" name:v4 object:v9];

  v12 = +[NSDistributedNotificationCenter defaultCenter];
  v10 = +[_DKSystemEventStreams notificationUsageStream];
  v11 = [v10 name];
  [v12 addObserver:self selector:"_duetKnowledgeStorageDidTombstoneEventsNotification:" name:v4 object:v11];
}

- (void)_removeDuetNotificationObservers
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  v4 = _DKKnowledgeStorageDidTombstoneEventsNotification;
  v5 = +[_DKSystemEventStreams appUsageStream];
  v6 = [v5 name];
  [v3 removeObserver:self name:v4 object:v6];

  v7 = +[NSDistributedNotificationCenter defaultCenter];
  v8 = +[_DKSystemEventStreams appWebUsageStream];
  v9 = [v8 name];
  [v7 removeObserver:self name:v4 object:v9];

  v12 = +[NSDistributedNotificationCenter defaultCenter];
  v10 = +[_DKSystemEventStreams notificationUsageStream];
  v11 = [v10 name];
  [v12 removeObserver:self name:v4 object:v11];
}

- (void)_duetKnowledgeStorageDidTombstoneEventsNotification:(id)a3
{
  v4 = a3;
  v5 = +[STLog usage];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100120FD0(v4);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009A540;
  v7[3] = &unk_1001A4048;
  v8 = v4;
  v6 = v4;
  [(STUsageManager *)self _resetUsageAndRollupWithCompletionHandler:v7];
}

- (void)_resetUsageAndRollupWithCompletionHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009A62C;
  v4[3] = &unk_1001A62A0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(STUsageManager *)v5 _purgeAllUsage:0 completionHandler:v4];
}

- (void)performWeeklyRollupWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STUsageManager *)self usageGenesisDate];
  if (v5)
  {
    v6 = [NSUserDefaults alloc];
    v7 = [v6 initWithSuiteName:STScreenTimeAppGroupName];
    if ([v7 BOOLForKey:STUserDefaultsKeyIsWeeklyReportNotificationDisabled])
    {
      v8 = +[STLog userNotifications];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Weekly report notification is disabled", buf, 2u);
      }

      v4[2](v4, 0);
    }

    else
    {
      v24 = v7;
      v9 = +[NSCalendar currentCalendar];
      v22 = objc_opt_new();
      v23 = [v9 startOfDayForDate:?];
      v10 = [v9 nextDateAfterDate:v23 matchingUnit:512 value:objc_msgSend(v9 options:{"firstWeekday"), 260}];
      v11 = v5;
      if ([v11 compare:v10] == -1)
      {
        v12 = v10;

        v11 = v12;
      }

      v13 = os_transaction_create();
      v14 = [STRollupUsageOperation alloc];
      v15 = [(STUsageManager *)self persistenceController];
      v16 = [(STRollupUsageOperation *)v14 initWithPersistenceController:v15 genesisDate:v11 duration:60 isBackgroundTask:0 isRecomputingUsage:0];

      v17 = self->_queuedRollupOperations;
      objc_sync_enter(v17);
      [(NSMutableArray *)self->_queuedRollupOperations addObject:v16];
      objc_sync_exit(v17);

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10009A9E0;
      v25[3] = &unk_1001A62C8;
      v25[4] = self;
      v26 = v9;
      v27 = v22;
      v28 = v10;
      v29 = v13;
      v30 = v4;
      v18 = v13;
      v19 = v10;
      v20 = v22;
      v21 = v9;
      [(STUsageManager *)self _rollupUsageWithOperation:v16 completionHandler:v25];

      v7 = v24;
    }
  }

  else
  {
    v7 = [NSError errorWithDomain:STErrorDomain code:7 userInfo:0];
    (v4)[2](v4, v7);
  }
}

- (void)_scheduleNextWeeklyReportNotificationAfterRollup:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSCalendar currentCalendar];
  v6 = objc_opt_new();
  if (v3)
  {
    v7 = [v5 dateByAddingUnit:16 value:1 toDate:v6 options:0];

    v6 = v7;
  }

  v8 = [(STUsageManager *)self _dateComponentsForNextWeeklyNotification];
  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 objectForKey:@"TestForceRescheduleWeeklyReport"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 nextDateAfterDate:v6 matchingComponents:v8 options:1024];
  v13 = [NSDate dateWithTimeInterval:v12 sinceDate:(-300 - arc4random_uniform(0x6F54u))];

  v14 = [(STUsageManager *)self weeklyAlarmObserver];
  v15 = [v14 configuration];

  v16 = [v15 objectForKeyedSubscript:@"Date"];
  if (v16)
  {
    if ([v5 isDate:v16 inSameDayAsDate:v13])
    {
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    else if (!(([v16 compare:v13] == -1) | v11 & 1))
    {
LABEL_9:
      v17 = +[STLog usage];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_10012111C();
      }

      goto LABEL_14;
    }
  }

  v27 = @"Date";
  v28 = v13;
  v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v19 = [(STUsageManager *)self weeklyAlarmObserver];
  [v19 setConfiguration:v18];

  v17 = +[STLog usage];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    [v13 timeIntervalSince1970];
    v21 = v20;
    [v6 timeIntervalSince1970];
    v23 = 134218242;
    v24 = (v21 - v22);
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Scheduled next weekly report rollup in %lld seconds, at %{public}@", &v23, 0x16u);
  }

LABEL_14:
}

+ (int64_t)_notificationDelayForDateComponentForDSID:(id)a3 maximumDelay:(unsigned int)a4
{
  v5 = [a3 unsignedIntegerValue];
  if (v5)
  {
    return v5 % a4;
  }

  else
  {
    return arc4random_uniform(a4);
  }
}

- (id)_dateComponentsForNextWeeklyNotification
{
  v2 = objc_opt_new();
  v3 = +[NSCalendar currentCalendar];
  [v2 setWeekday:{objc_msgSend(v3, "firstWeekday")}];

  [v2 setHour:9];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"TestWeeklyReportDay"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 setWeekday:{objc_msgSend(v5, "integerValue")}];
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:@"TestWeeklyReportHour"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 setHour:{objc_msgSend(v7, "integerValue")}];
  }

  return v2;
}

- (void)_unscheduleNextWeeklyReportNotification
{
  v2 = [(STUsageManager *)self weeklyAlarmObserver];
  [v2 setConfiguration:0];

  v3 = +[STLog usage];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Unscheduled next weekly report rollup", v4, 2u);
  }
}

- (void)_postNotification:(id)a3 rollupError:(id)a4 calendar:(id)a5 startOfLastWeek:(id)a6 completionHandler:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v13 = [STUsageDetailsViewModelCoordinator alloc];
  v14 = [(STUsageManager *)self persistenceController];
  v15 = [v13 initForLocalDeviceWithPersistenceController:v14 selectedUsageReportType:0 usageContext:2];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009B320;
  v20[3] = &unk_1001A62F0;
  v21 = v15;
  v22 = v11;
  v23 = v10;
  v24 = v12;
  v16 = v10;
  v17 = v11;
  v18 = v15;
  v19 = v12;
  [v18 loadViewModelWithCompletionHandler:v20];
}

- (BOOL)_updateContext:(id)a3 lastWeekScreenTime:(double)a4 weekBeforeLastScreenTime:(double)a5
{
  v7 = a3;
  if (a4 <= 1.0)
  {
    v9 = +[STLog userNotifications];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "There wasn't enough screen time to show a weekly report notification", v11, 2u);
    }
  }

  else
  {
    if (a4 - a5 == 0.0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = (a4 - a5) / a5;
    }

    v9 = [NSNumber numberWithDouble:a4];
    [v7 setDeltaScreenTimeUsage:v9 totalUsage:v8];
  }

  return a4 > 1.0;
}

- (void)controllerDidChangeContent:(id)a3
{
  v4 = a3;
  v5 = [(STUsageManager *)self usageRequestsFetchedResultsController];

  if (v5 == v4)
  {

    [(STUsageManager *)self _rollupIfNeeded];
  }
}

- (void)_rollupIfNeeded
{
  v3 = [(STUsageManager *)self usageRequestsFetchedResultsController];
  v4 = [v3 fetchedObjects];
  v5 = [v4 firstObject];
  v6 = [v5 objectID];

  if (v6)
  {
    v7 = [(STUsageManager *)self persistenceController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10009B7E4;
    v8[3] = &unk_1001A3DE0;
    v9 = v6;
    v10 = self;
    [v7 performBackgroundTaskAndWait:v8];
  }
}

@end