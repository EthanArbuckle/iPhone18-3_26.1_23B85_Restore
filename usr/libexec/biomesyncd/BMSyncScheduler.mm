@interface BMSyncScheduler
- (BMSyncScheduler)initWithRapportSyncEngine:(id)a3 cloudKitSyncEngine:(id)a4 peerStatusTracker:(id)a5 database:(id)a6 queue:(id)a7;
- (BOOL)canPerformCloudKitSyncWithReason:(unint64_t)a3;
- (BOOL)canPerformRapportSyncWithReason:(unint64_t)a3;
- (void)syncAllTransportsNowIfPolicyAllowsWithReason:(unint64_t)a3 activity:(id)a4;
- (void)syncCloudKitNowIfPolicyAllowsWithReason:(unint64_t)a3 activity:(id)a4 completionHandler:(id)a5;
- (void)syncNowIfPolicyAllowsWithReason:(unint64_t)a3 transportType:(unint64_t)a4 activity:(id)a5;
- (void)syncRapportNowIfPolicyAllowsWithDevices:(id)a3 reason:(unint64_t)a4 activity:(id)a5 completionHandler:(id)a6;
- (void)syncRapportNowIfPolicyAllowsWithReason:(unint64_t)a3 activity:(id)a4 completionHandler:(id)a5;
@end

@implementation BMSyncScheduler

- (BMSyncScheduler)initWithRapportSyncEngine:(id)a3 cloudKitSyncEngine:(id)a4 peerStatusTracker:(id)a5 database:(id)a6 queue:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = BMSyncScheduler;
  v17 = [(BMSyncScheduler *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_rapportSyncEngine, a3);
    objc_storeStrong(&v18->_cloudKitSyncEngine, a4);
    objc_storeStrong(&v18->_peerStatusTracker, a5);
    objc_storeStrong(&v18->_database, a6);
    objc_storeStrong(&v18->_queue, a7);
  }

  return v18;
}

- (void)syncNowIfPolicyAllowsWithReason:(unint64_t)a3 transportType:(unint64_t)a4 activity:(id)a5
{
  v8 = a5;
  if (a4 == 3)
  {
    [(BMSyncScheduler *)self syncCloudKitNowIfPolicyAllowsWithReason:a3 activity:v8 completionHandler:0];
  }

  else if (a4 == 2)
  {
    [(BMSyncScheduler *)self syncRapportNowIfPolicyAllowsWithReason:a3 activity:v8 completionHandler:0];
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "unrecognized transport type (%lu)", &v10, 0xCu);
    }
  }
}

- (void)syncAllTransportsNowIfPolicyAllowsWithReason:(unint64_t)a3 activity:(id)a4
{
  v6 = a4;
  v7 = dispatch_group_create();
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "syncNowIfPolicyAllowsWithReason: begin rapport sync", buf, 2u);
  }

  dispatch_group_enter(v7);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038F80;
  block[3] = &unk_100079918;
  block[4] = self;
  v23 = a3;
  v10 = v6;
  v21 = v10;
  v11 = v7;
  v22 = v11;
  dispatch_sync(queue, block);
  v12 = __biome_log_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "syncNowIfPolicyAllowsWithReason: begin cloudkit sync", buf, 2u);
  }

  dispatch_group_enter(v11);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100039024;
  v18[3] = &unk_100078CD8;
  v19 = v11;
  v13 = v11;
  [(BMSyncScheduler *)self syncCloudKitNowIfPolicyAllowsWithReason:a3 activity:v10 completionHandler:v18];
  v14 = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003902C;
  v16[3] = &unk_100078B70;
  v17 = v10;
  v15 = v10;
  dispatch_group_notify(v13, v14, v16);
}

- (BOOL)canPerformRapportSyncWithReason:(unint64_t)a3
{
  if (a3 == 5)
  {
    return 1;
  }

  [BMSyncPolicy minimumTimeBetweenSyncsForTransport:2];
  v6 = v5;
  [BMSyncPolicy minimumTimeBetweenSyncsAttemptsForTransport:2];
  v8 = v7;
  v9 = [(BMSyncDevicePeerStatusTracker *)self->_peerStatusTracker lastSyncDateFromAnyDevice];
  v10 = [(BMSyncDatabase *)self->_database lastRapportSyncAttemptDate];
  v11 = +[NSDate now];
  v12 = v11;
  if (!v10)
  {
    v14 = INFINITY;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_7:
    v16 = INFINITY;
    goto LABEL_8;
  }

  [v11 timeIntervalSinceDate:v10];
  v14 = v13;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  [v12 timeIntervalSinceDate:v9];
  v16 = v15;
LABEL_8:
  v17 = __biome_log_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"never";
    v21 = 138544130;
    if (v9)
    {
      v19 = v9;
    }

    else
    {
      v19 = @"never";
    }

    v22 = v19;
    v23 = 2048;
    if (v10)
    {
      v18 = v10;
    }

    v24 = v16;
    v25 = 2114;
    v26 = v18;
    v27 = 2048;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "last sync: %{public}@ (%f ago), last attempt: %{public}@ (%f ago)", &v21, 0x2Au);
  }

  if (v9 && v16 < v6 * 0.9 || (v3 = 1, v10) && v14 < v8 * 0.9)
  {
    v3 = 0;
  }

  return v3;
}

- (void)syncRapportNowIfPolicyAllowsWithReason:(unint64_t)a3 activity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v10 = objc_autoreleasePoolPush();
  if ([(BMSyncDatabase *)self->_database open])
  {
    v11 = os_transaction_create();
    if ([(BMSyncScheduler *)self canPerformRapportSyncWithReason:a3])
    {
      v12 = +[NSDate now];
      [(BMSyncDatabase *)self->_database setLastRapportSyncAttemptDate:v12];

      if (v8)
      {
        xpc_activity_set_state(v8, 4);
      }

      [(BMRapportSyncEngine *)self->_rapportSyncEngine startClient];
      rapportSyncEngine = self->_rapportSyncEngine;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000395EC;
      v24[3] = &unk_100079940;
      v24[4] = self;
      v11 = v11;
      v25 = v11;
      v26 = v9;
      [(BMRapportSyncEngine *)rapportSyncEngine syncNowWithReason:a3 activity:v8 completionHandler:v24];
    }

    else
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "skipping rapport sync", buf, 2u);
      }

      v19 = [(BMRapportSyncEngine *)self->_rapportSyncEngine metricsCollector];
      v20 = [v19 sessionContext];
      v21 = [v20 sessionID];
      [v19 recordSessionStart:v21 transport:2 reason:2 isReciprocal:0];

      v22 = [v20 sessionID];
      v23 = [(BMSyncDatabase *)self->_database lastRapportSyncDate];
      [v19 recordSessionEnd:v22 lastSyncDate:v23];

      [(BMSyncDatabase *)self->_database clearCachedStatements];
      if (v9)
      {
        (*(v9 + 2))(v9, &__NSArray0__struct, 0);
      }
    }

    goto LABEL_18;
  }

  v14 = __biome_log_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unable to perform Rapport sync now, because database is not currently accessible", buf, 2u);
  }

  v15 = [(BMSyncDatabase *)self->_database state];
  if (v9)
  {
    if (v15 == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    v11 = [NSError errorWithDomain:BMSyncErrorDomain code:v16 userInfo:0];
    v28 = v11;
    v17 = [NSArray arrayWithObjects:&v28 count:1];
    (*(v9 + 2))(v9, 0, v17);

LABEL_18:
  }

  objc_autoreleasePoolPop(v10);
}

- (void)syncRapportNowIfPolicyAllowsWithDevices:(id)a3 reason:(unint64_t)a4 activity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v13 = objc_autoreleasePoolPush();
  if ([(BMSyncDatabase *)self->_database open])
  {
    v14 = os_transaction_create();
    if ([(BMSyncScheduler *)self canPerformRapportSyncWithReason:a4])
    {
      v15 = +[NSDate now];
      [(BMSyncDatabase *)self->_database setLastRapportSyncAttemptDate:v15];

      if (v11)
      {
        xpc_activity_set_state(v11, 4);
      }

      [(BMRapportSyncEngine *)self->_rapportSyncEngine startClient];
      rapportSyncEngine = self->_rapportSyncEngine;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100039A74;
      v27[3] = &unk_100079940;
      v27[4] = self;
      v14 = v14;
      v28 = v14;
      v29 = v12;
      [(BMRapportSyncEngine *)rapportSyncEngine syncNowWithDevices:v10 reason:a4 activity:v11 completionHandler:v27];
    }

    else
    {
      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "skipping filtered rapport sync", buf, 2u);
      }

      v22 = [(BMRapportSyncEngine *)self->_rapportSyncEngine metricsCollector];
      v23 = [v22 sessionContext];
      v24 = [v23 sessionID];
      [v22 recordSessionStart:v24 transport:2 reason:2 isReciprocal:0];

      v25 = [v23 sessionID];
      v26 = [(BMSyncDatabase *)self->_database lastRapportSyncDate];
      [v22 recordSessionEnd:v25 lastSyncDate:v26];

      [(BMSyncDatabase *)self->_database clearCachedStatements];
      if (v12)
      {
        (*(v12 + 2))(v12, &__NSArray0__struct, 0);
      }
    }

    goto LABEL_18;
  }

  v17 = __biome_log_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unable to perform filtered Rapport sync now, because database is not currently accessible", buf, 2u);
  }

  v18 = [(BMSyncDatabase *)self->_database state];
  if (v12)
  {
    if (v18 == 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = 3;
    }

    v14 = [NSError errorWithDomain:BMSyncErrorDomain code:v19 userInfo:0];
    v31 = v14;
    v20 = [NSArray arrayWithObjects:&v31 count:1];
    (*(v12 + 2))(v12, 0, v20);

LABEL_18:
  }

  objc_autoreleasePoolPop(v13);
}

- (BOOL)canPerformCloudKitSyncWithReason:(unint64_t)a3
{
  if (a3 == 5)
  {
    return 1;
  }

  [BMSyncPolicy minimumTimeBetweenSyncsForTransport:3];
  v6 = v5;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100039D08;
  v18 = sub_100039D18;
  v19 = 0;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100039D20;
  v13[3] = &unk_100079740;
  v13[4] = self;
  v13[5] = &v14;
  dispatch_sync(queue, v13);
  v8 = +[NSDate now];
  v9 = v8;
  if (v15[5])
  {
    [v8 timeIntervalSinceDate:?];
    v11 = v15[5] == 0;
  }

  else
  {
    v11 = 1;
    v10 = INFINITY;
  }

  v3 = v10 >= v6 * 0.9 || v11;

  _Block_object_dispose(&v14, 8);
  return v3;
}

- (void)syncCloudKitNowIfPolicyAllowsWithReason:(unint64_t)a3 activity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A06C;
  block[3] = &unk_100079968;
  block[4] = self;
  v12 = v9;
  v27 = v12;
  v28 = &v29;
  dispatch_sync(queue, block);
  if ((v30[3] & 1) == 0)
  {
    v13 = os_transaction_create();
    if ([(BMSyncScheduler *)self canPerformCloudKitSyncWithReason:a3])
    {
      v14 = self->_queue;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10003A1CC;
      v25[3] = &unk_100078B70;
      v25[4] = self;
      dispatch_sync(v14, v25);
      if (v8)
      {
        xpc_activity_set_state(v8, 4);
      }

      cloudKitSyncEngine = self->_cloudKitSyncEngine;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10003A238;
      v20[3] = &unk_100079990;
      v20[4] = self;
      v24 = a3;
      v21 = v8;
      v22 = v13;
      v23 = v12;
      [(BMCloudKitSyncEngine *)cloudKitSyncEngine startWithCompletionBlock:v20];
    }

    else
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "skipping cloudkit sync", buf, 2u);
      }

      v17 = self->_queue;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10003A55C;
      v18[3] = &unk_100078B70;
      v18[4] = self;
      dispatch_sync(v17, v18);
      if (v12)
      {
        (*(v12 + 2))(v12, &__NSArray0__struct, 0);
      }
    }
  }

  _Block_object_dispose(&v29, 8);
  objc_autoreleasePoolPop(v10);
}

@end