@interface UsageReportGenerator
+ (void)initialize;
- (UsageReportGenerator)initWithLaunchEvents:(id)a3 usageReportWriter:(id)a4 messagesUsageReportWriter:(id)a5 phoneUsageReportWriter:(id)a6 chClient:(id)a7 queue:(id)a8 defaults:(id)a9;
- (void)dealloc;
- (void)launchEventRunActivity:(id)a3;
- (void)sensorWriterDidStopMonitoring:(id)a3;
- (void)sensorWriterWillStartMonitoring:(id)a3;
@end

@implementation UsageReportGenerator

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_10002B2E0 = os_log_create("com.apple.SensorKit", "SensorKitUsageReportGenerator");
  }
}

- (UsageReportGenerator)initWithLaunchEvents:(id)a3 usageReportWriter:(id)a4 messagesUsageReportWriter:(id)a5 phoneUsageReportWriter:(id)a6 chClient:(id)a7 queue:(id)a8 defaults:(id)a9
{
  v21.receiver = self;
  v21.super_class = UsageReportGenerator;
  v15 = [(UsageReportGenerator *)&v21 init];
  if (v15)
  {
    v15->_queue = a8;
    v15->_chClient = a7;
    v15->_deviceUsageReportWriter = a4;
    v15->_messagesUsageReportWriter = a5;
    v15->_phoneUsageReportWriter = a6;
    v15->_deviceUsageReports = objc_alloc_init(NSMutableDictionary);
    v15->_notificationBundleIdsByNotificationId = objc_alloc_init(NSMutableDictionary);
    v15->_messagesUsageReports = objc_alloc_init(NSMutableDictionary);
    v15->_phoneUsageReports = objc_alloc_init(NSMutableDictionary);
    v16 = a3;
    v15->_launchEvents = v16;
    if (v16)
    {
      objc_storeWeak(&v16->_delegate, v15);
    }

    [(SRSensorWriter *)v15->_deviceUsageReportWriter setDelegate:v15];
    [(SRSensorWriter *)v15->_messagesUsageReportWriter setDelegate:v15];
    [(SRSensorWriter *)v15->_phoneUsageReportWriter setDelegate:v15];
    v15->_pendingNotificationEvents = objc_alloc_init(NSMutableSet);
    v15->_pendingAppInFocusEventSessions = objc_alloc_init(NSMutableArray);
    v15->_pendingAppWebUsageEventSessions = objc_alloc_init(NSMutableArray);
    v15->_inProgressEvents = objc_alloc_init(NSMutableArray);
    v15->_appsBundleIDsToFetchSupplementalCategories = objc_alloc_init(NSMutableSet);
    v15->_appsBundleIDsToFetchCategories = objc_alloc_init(NSMutableSet);
    v15->_notificationsBundleIDs = objc_alloc_init(NSMutableSet);
    v15->_webDomains = objc_alloc_init(NSMutableSet);
    v15->_textInputSessions = objc_alloc_init(NSMutableArray);
    v15->_categoriesForBundleIDs = objc_alloc_init(NSMutableDictionary);
    v15->_categoriesForWebDomains = objc_alloc_init(NSMutableDictionary);
    v15->_supplementalCategories = objc_alloc_init(NSMutableDictionary);
    v15->_devicePoweredOffIntervals = objc_alloc_init(NSMutableArray);
    v15->_deviceUsageQueryIntervals = objc_alloc_init(NSMutableArray);
    objc_setProperty_nonatomic(v15, v17, 0, 200);
    objc_setProperty_nonatomic(v15, v18, 0, 208);
    objc_setProperty_nonatomic(v15, v19, a9, 216);
  }

  return v15;
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 64);
    objc_setProperty_nonatomic(self, v3, 0, 56);
    objc_setProperty_nonatomic(self, v4, 0, 72);
    objc_setProperty_atomic(self, v5, 0, 24);
    objc_setProperty_atomic(self, v6, 0, 40);
    objc_setProperty_atomic(self, v7, 0, 16);
    objc_setProperty_atomic(self, v8, 0, 32);
    objc_setProperty_atomic(self, v9, 0, 8);
    chClient = self->_chClient;
    if (chClient)
    {
      [(NSXPCConnection *)chClient->_connection invalidate];
    }

    objc_setProperty_nonatomic(self, v10, 0, 80);
    objc_setProperty_atomic(self, v12, 0, 48);
  }

  self->_pendingNotificationEvents = 0;
  self->_pendingAppInFocusEventSessions = 0;

  self->_pendingAppWebUsageEventSessions = 0;
  self->_inProgressEvents = 0;

  self->_appsBundleIDsToFetchSupplementalCategories = 0;
  self->_appsBundleIDsToFetchCategories = 0;

  self->_notificationsBundleIDs = 0;
  self->_webDomains = 0;

  self->_categoriesForBundleIDs = 0;
  self->_categoriesForWebDomains = 0;

  self->_supplementalCategories = 0;
  self->_textInputSessions = 0;

  self->_devicePoweredOffIntervals = 0;
  self->_deviceUsageQueryIntervals = 0;
  objc_setProperty_nonatomic(self, v13, 0, 216);
  objc_setProperty_nonatomic(self, v14, 0, 200);
  objc_setProperty_nonatomic(self, v15, 0, 208);
  v16.receiver = self;
  v16.super_class = UsageReportGenerator;
  [(UsageReportGenerator *)&v16 dealloc];
}

- (void)launchEventRunActivity:(id)a3
{
  if (a3)
  {
    if ([*(a3 + 1) isEqualToString:@"com.apple.sensorkit.launchUsageCollector"])
    {
      goto LABEL_3;
    }

    if ([*(a3 + 1) isEqualToString:@"com.apple.sensorkit.launchPhoneUsageCollector"])
    {
      goto LABEL_9;
    }

    v27 = *(a3 + 1);
  }

  else
  {
    if ([0 isEqualToString:@"com.apple.sensorkit.launchUsageCollector"])
    {
LABEL_3:
      if (self)
      {
        v5 = [(SRDataCollectorsDefaults *)self->_defaults lastDeviceUsageQueryDate];
        [(SRDataCollectorsDefaults *)self->_defaults queryIntervalShift];
        [+[NSDate dateWithSRAbsoluteTime:](NSDate timeIntervalSinceReferenceDate:fmax(SRAbsoluteTimeGetCurrent() - v6];
        v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:floor(v7 / 900.0) * 900.0];
        [(NSDate *)v8 timeIntervalSinceDate:v5];
        if (v9 >= 900.0)
        {
          deviceUsageQueryIntervals = self->_deviceUsageQueryIntervals;
          [(SRDataCollectorsDefaults *)self->_defaults deviceUsageQueryIntervalDuration];
          v18 = v17;
          v19 = +[NSMutableArray array];
          v20 = -v18;
          v21 = v8;
          do
          {
            v22 = [NSDate dateWithTimeInterval:v21 sinceDate:v20];
            v23 = [[NSDateInterval alloc] initWithStartDate:-[NSDate laterDate:](v22 endDate:{"laterDate:", v5), v21}];
            [v19 addObject:v23];

            v21 = v22;
          }

          while ([(NSDate *)v5 compare:v22]== NSOrderedAscending);
          [(NSMutableArray *)deviceUsageQueryIntervals addObjectsFromArray:[NSArray arrayWithArray:v19]];
          v24 = qword_10002B2E0;
          if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
          {
            v25 = self->_deviceUsageQueryIntervals;
            *buf = 138412802;
            *&buf[4] = v25;
            *&buf[12] = 2112;
            *&buf[14] = v5;
            *&buf[22] = 2112;
            v56 = v8;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Intervals to query:%@ from %@ till %@", buf, 0x20u);
          }

          v26 = self->_deviceUsageQueryIntervals;
          if (v26)
          {
            sub_10000E96C(&self->super.isa, [(NSMutableArray *)v26 lastObject], a3);
            return;
          }

          v42 = qword_10002B2E0;
          if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v5;
            *&buf[12] = 2112;
            *&buf[14] = v8;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "No intervals to query. Start date: %@, end date:%@", buf, 0x16u);
          }
        }

        else
        {
          v10 = qword_10002B2E0;
          if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138544130;
            *&buf[4] = +[NSDate now];
            *&buf[12] = 2114;
            *&buf[14] = v5;
            *&buf[22] = 2114;
            v56 = v8;
            LOWORD(v57) = 2050;
            *(&v57 + 2) = 0x408C200000000000;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Time before now (%{public}@). Time interval (%{public}@ - %{public}@) is less than our report interval (%{public}f). Waiting until next time", buf, 0x2Au);
          }
        }

        goto LABEL_46;
      }

      return;
    }

    v52 = [0 isEqualToString:@"com.apple.sensorkit.launchPhoneUsageCollector"];
    v27 = 0;
    if (v52)
    {
LABEL_9:
      if (!self)
      {
        return;
      }

      v11 = [(SRDataCollectorsDefaults *)self->_defaults lastPhoneUsageQueryDate];
      v12 = +[NSDate date];
      [(SRDataCollectorsDefaults *)self->_defaults phoneUsageReportInterval];
      v14 = v13;
      if ([(SRDataCollectorsDefaults *)self->_defaults bypassQueryFromMidnightToMidnight])
      {
        if (v14 == 86400.0 && ![(SRDataCollectorsDefaults *)self->_defaults lastPhoneUsageQueryDateRawValue])
        {
          goto LABEL_29;
        }

        [(NSDate *)v12 timeIntervalSinceReferenceDate];
        v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:v14 * floor(v15 / v14)];
      }

      else
      {
        v16 = [(NSDate *)v12 sr_localMidnightPriorToDate];
      }

      v12 = v16;
LABEL_29:
      [(SRDataCollectorsDefaults *)self->_defaults phoneUsageReportInterval];
      v35 = v34;
      v36 = [(SRDataCollectorsDefaults *)self->_defaults bypassQueryFromMidnightToMidnight];
      [(NSDate *)v12 timeIntervalSinceDate:v11];
      if (v37 >= v35)
      {
        v40 = [[NSDateInterval alloc] initWithStartDate:v11 endDate:v12];
        [(NSMutableDictionary *)self->_phoneUsageReports removeAllObjects];
        objc_initWeak(&location, self);
        v41 = os_transaction_create();
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_10000DE50;
        v56 = &unk_100024DD8;
        objc_copyWeak(v59, &location);
        *&v57 = a3;
        *(&v57 + 1) = v41;
        v58 = v12;
        sub_10000D220(self, v40, &off_100027170, buf);

        objc_destroyWeak(v59);
        objc_destroyWeak(&location);
        return;
      }

      v38 = qword_10002B2E0;
      if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *&v35;
        *buf = 138543874;
        if (!v36)
        {
          v39 = 0x40F5180000000000;
        }

        *&buf[4] = v12;
        *&buf[12] = 2114;
        *&buf[14] = v11;
        *&buf[22] = 2050;
        v56 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Phone Usage. Time before now (%{public}@) and the last run (%{public}@) is less than our report interval (%{public}f). Waiting until next time", buf, 0x20u);
      }

      goto LABEL_46;
    }
  }

  if (![v27 isEqualToString:@"com.apple.sensorkit.launchMessagesUsageCollector"] || !self)
  {
    return;
  }

  v28 = [(SRDataCollectorsDefaults *)self->_defaults lastMessagesUsageQueryDate];
  v29 = +[NSDate date];
  [(SRDataCollectorsDefaults *)self->_defaults messagesUsageReportInterval];
  v31 = v30;
  if ([(SRDataCollectorsDefaults *)self->_defaults bypassQueryFromMidnightToMidnight])
  {
    if (v31 == 86400.0 && ![(SRDataCollectorsDefaults *)self->_defaults lastMessagesUsageQueryDateRawValue])
    {
      goto LABEL_41;
    }

    [(NSDate *)v29 timeIntervalSinceReferenceDate];
    v33 = [NSDate dateWithTimeIntervalSinceReferenceDate:v31 * floor(v32 / v31)];
  }

  else
  {
    v33 = [(NSDate *)v29 sr_localMidnightPriorToDate];
  }

  v29 = v33;
LABEL_41:
  [(SRDataCollectorsDefaults *)self->_defaults messagesUsageReportInterval];
  v44 = v43;
  v45 = [(SRDataCollectorsDefaults *)self->_defaults bypassQueryFromMidnightToMidnight];
  [(NSDate *)v29 timeIntervalSinceDate:v28];
  if (v46 < v44)
  {
    v47 = qword_10002B2E0;
    if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_DEFAULT))
    {
      v48 = +[NSDate now];
      v49 = *&v44;
      *buf = 138543874;
      *&buf[4] = v48;
      if (!v45)
      {
        v49 = 0x40F5180000000000;
      }

      *&buf[12] = 2114;
      *&buf[14] = v28;
      *&buf[22] = 2050;
      v56 = v49;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Messages usage. Time before now (%{public}@) and the last run (%{public}@) is less than our report interval (%{public}f). Waiting until next time", buf, 0x20u);
    }

LABEL_46:
    [a3 markCompleted];
    return;
  }

  v50 = [[NSDateInterval alloc] initWithStartDate:v28 endDate:v29];
  [(NSMutableDictionary *)self->_messagesUsageReports removeAllObjects];
  objc_initWeak(&location, self);
  v51 = os_transaction_create();
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_10000E07C;
  v56 = &unk_100024DD8;
  objc_copyWeak(v59, &location);
  *&v57 = a3;
  *(&v57 + 1) = v51;
  v58 = v29;
  sub_10000D220(self, v50, &off_100027188, buf);

  objc_destroyWeak(v59);
  objc_destroyWeak(&location);
}

- (void)sensorWriterWillStartMonitoring:(id)a3
{
  if (self->_deviceUsageReportWriter != a3)
  {
    if (self->_phoneUsageReportWriter == a3)
    {
      launchEvents = self->_launchEvents;
      v14 = @"com.apple.sensorkit.launchPhoneUsageCollector";
      v9 = &v14;
    }

    else
    {
      if (self->_messagesUsageReportWriter != a3)
      {
        v5 = qword_10002B2E0;
        if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v12 = a3;
          _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Unknown writer: %@", buf, 0xCu);
        }

        return;
      }

      launchEvents = self->_launchEvents;
      v13 = @"com.apple.sensorkit.launchMessagesUsageCollector";
      v9 = &v13;
    }

    [(RDLaunchEvents *)launchEvents registerForXPCActivities:[NSArray arrayWithObjects:v9 count:1]];
    return;
  }

  v6 = qword_10002B2E0;
  if (os_log_type_enabled(qword_10002B2E0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Downloading supplemental categories database if necessary", buf, 2u);
  }

  chClient = self->_chClient;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100014D40;
  v10[3] = &unk_100025258;
  v10[4] = self;
  [(SRCHClient *)chClient downloadDatabaseAssetIfNeeded:v10];
}

- (void)sensorWriterDidStopMonitoring:(id)a3
{
  if (self->_deviceUsageReportWriter == a3)
  {
    launchEvents = self->_launchEvents;
    v7 = @"com.apple.sensorkit.launchUsageCollector";
    v4 = &v7;
  }

  else if (self->_phoneUsageReportWriter == a3)
  {
    launchEvents = self->_launchEvents;
    v6 = @"com.apple.sensorkit.launchPhoneUsageCollector";
    v4 = &v6;
  }

  else
  {
    if (self->_messagesUsageReportWriter != a3)
    {
      return;
    }

    launchEvents = self->_launchEvents;
    v5 = @"com.apple.sensorkit.launchMessagesUsageCollector";
    v4 = &v5;
  }

  [(RDLaunchEvents *)launchEvents unregisterForXPCActivities:[NSArray arrayWithObjects:v4 count:1, v5, v6, v7]];
}

@end