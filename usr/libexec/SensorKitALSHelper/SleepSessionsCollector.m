@interface SleepSessionsCollector
+ (void)initialize;
- (SleepSessionsCollector)initWithLaunchEvents:(id)a3 sensorWriter:(id)a4 defaults:(id)a5 q:(id)a6;
- (void)dealloc;
- (void)launchEventRunActivity:(id)a3;
- (void)querySleepSessionsWithStartDate:(id)a3 endDate:(id)a4 completionHandler:(id)a5;
- (void)sensorWriterDidStopMonitoring:(id)a3;
- (void)sensorWriterWillStartMonitoring:(id)a3;
@end

@implementation SleepSessionsCollector

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_10002B2A0 = os_log_create("com.apple.SensorKit", "SRLogSleepSessionsCollector");
  }
}

- (SleepSessionsCollector)initWithLaunchEvents:(id)a3 sensorWriter:(id)a4 defaults:(id)a5 q:(id)a6
{
  v15.receiver = self;
  v15.super_class = SleepSessionsCollector;
  v10 = [(SleepSessionsCollector *)&v15 init];
  v12 = v10;
  if (v10)
  {
    objc_setProperty_nonatomic(v10, v11, a5, 32);
    v12->_sensorWriter = a4;
    v12->_queue = a6;
    v13 = a3;
    v12->_launchEvents = v13;
    if (v13)
    {
      objc_storeWeak(&v13->_delegate, v12);
    }

    [(SRSensorWriter *)v12->_sensorWriter setDelegate:v12];
  }

  return v12;
}

- (void)dealloc
{
  self->_sensorWriter = 0;

  self->_queue = 0;
  self->_launchEvents = 0;
  objc_setProperty_nonatomic(self, v3, 0, 32);

  v4.receiver = self;
  v4.super_class = SleepSessionsCollector;
  [(SleepSessionsCollector *)&v4 dealloc];
}

- (void)querySleepSessionsWithStartDate:(id)a3 endDate:(id)a4 completionHandler:(id)a5
{
  v7 = [[BMPublisherOptions alloc] initWithStartDate:a3 endDate:a4 maxEvents:0 lastN:0 reversed:0];
  v8 = +[BMPairedEventSession sessionPublisherWithStreamPublisher:startingBlock:sessionKeyBlock:options:](BMPairedEventSession, "sessionPublisherWithStreamPublisher:startingBlock:sessionKeyBlock:options:", [objc_msgSend(objc_msgSend(BiomeLibrary() "Sleep")], &stru_100024BB8, 0, 4);

  if (self)
  {
    v9 = [(SRDataCollectorsDefaults *)self->_defaults sleepSessionsBookmark];
    objc_setProperty_nonatomic(self, v10, v9, 48);
    objc_initWeak(&location, self);
    self = self->_sleepSessionsBookmark;
  }

  else
  {
    [0 sleepSessionsBookmark];
    location = 0;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000091CC;
  v13[3] = &unk_100024BE0;
  objc_copyWeak(&v14, &location);
  v13[4] = a5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009330;
  v11[3] = &unk_100024C08;
  objc_copyWeak(&v12, &location);
  [v8 sinkWithBookmark:self completion:v13 receiveInput:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)sensorWriterWillStartMonitoring:(id)a3
{
  v4 = qword_10002B2A0;
  if (os_log_type_enabled(qword_10002B2A0, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Start sleep sessions collection", v6, 2u);
  }

  launchEvents = self->_launchEvents;
  v7 = @"com.apple.sensorkit.launchSleepSessionsCollector";
  [(RDLaunchEvents *)launchEvents registerForXPCActivities:[NSArray arrayWithObjects:&v7 count:1]];
}

- (void)sensorWriterDidStopMonitoring:(id)a3
{
  v4 = qword_10002B2A0;
  if (os_log_type_enabled(qword_10002B2A0, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Stop sleep sessions collection", v6, 2u);
  }

  launchEvents = self->_launchEvents;
  v7 = @"com.apple.sensorkit.launchSleepSessionsCollector";
  [(RDLaunchEvents *)launchEvents unregisterForXPCActivities:[NSArray arrayWithObjects:&v7 count:1]];
}

- (void)launchEventRunActivity:(id)a3
{
  v4 = self;
  if (self)
  {
    self = self->_queue;
  }

  dispatch_assert_queue_V2(&self->super);
  if (a3)
  {
    v5 = *(a3 + 1);
  }

  else
  {
    v5 = 0;
  }

  if ([v5 isEqualToString:@"com.apple.sensorkit.launchSleepSessionsCollector"])
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100009A98;
    v13 = &unk_100024A10;
    v14 = a3;
    if (v4)
    {
      v6 = [(SRDataCollectorsDefaults *)v4->_defaults lastSleepSessionsQueryDate:v10];
      v7 = [NSDate dateWithSRAbsoluteTime:fmax(SRAbsoluteTimeGetCurrent(), 0.0)];
      objc_initWeak(&location, v4);
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v17 = sub_100009614;
      v18 = &unk_100024C30;
      objc_copyWeak(&v21, &location);
      v19 = v7;
      v20 = &v10;
      [(SleepSessionsCollector *)v4 querySleepSessionsWithStartDate:v6 endDate:v7 completionHandler:&buf];
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v8 = qword_10002B2A0;
    if (os_log_type_enabled(qword_10002B2A0, OS_LOG_TYPE_FAULT))
    {
      if (a3)
      {
        v9 = *(a3 + 1);
      }

      else
      {
        v9 = 0;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Told to run unsupported XPC activity %@", &buf, 0xCu);
    }

    [a3 markCompleted];
  }
}

@end