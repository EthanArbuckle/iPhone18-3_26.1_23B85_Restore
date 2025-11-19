@interface MediaEventsRecorder
+ (void)initialize;
- (void)dealloc;
- (void)launchEventRunActivity:(id)a3;
- (void)sensorWriterDidStopMonitoring:(id)a3;
- (void)sensorWriterWillStartMonitoring:(id)a3;
@end

@implementation MediaEventsRecorder

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_10002B298 = os_log_create("com.apple.SensorKit", "SensorKitMediaEventsRecorder");
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 32);
  }

  self->_sensorWriter = 0;
  self->_queue = 0;

  self->_launchEvents = 0;
  v3.receiver = self;
  v3.super_class = MediaEventsRecorder;
  [(MediaEventsRecorder *)&v3 dealloc];
}

- (void)sensorWriterWillStartMonitoring:(id)a3
{
  v4 = qword_10002B298;
  if (os_log_type_enabled(qword_10002B298, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Start media events recording", v6, 2u);
  }

  launchEvents = self->_launchEvents;
  v7 = @"com.apple.sensorkit.launchMediaEventsRecorder";
  [(RDLaunchEvents *)launchEvents registerForXPCActivities:[NSArray arrayWithObjects:&v7 count:1]];
}

- (void)sensorWriterDidStopMonitoring:(id)a3
{
  v4 = qword_10002B298;
  if (os_log_type_enabled(qword_10002B298, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Stop media events recording", v6, 2u);
  }

  launchEvents = self->_launchEvents;
  v7 = @"com.apple.sensorkit.launchMediaEventsRecorder";
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

  if ([v5 isEqualToString:@"com.apple.sensorkit.launchMediaEventsRecorder"])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v16 = sub_100008C80;
    v17 = &unk_100024A10;
    v18 = a3;
    if (v4)
    {
      v6 = [(SRDataCollectorsDefaults *)v4->_defaults lastMediaEventsQueryDate];
      v7 = +[NSDate now];
      v8 = [objc_msgSend(objc_msgSend(BiomeLibrary() "Messages")];
      v9 = [[BMPublisherOptions alloc] initWithStartDate:v6 endDate:v7 maxEvents:0 lastN:0 reversed:0];
      v10 = [v8 publisherWithOptions:v9];

      if (v10)
      {
        objc_initWeak(&location, v4);
        v11 = qword_10002B298;
        if (os_log_type_enabled(qword_10002B298, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = v6;
          *&buf[12] = 2114;
          *&buf[14] = v7;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Querying media events for interval with start date:%{public}@, end date:%{public}@", buf, 0x16u);
        }

        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100008404;
        v23 = &unk_100024B50;
        objc_copyWeak(&v26, &location);
        v24 = v7;
        v25 = v15;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100008538;
        v19[3] = &unk_100024B78;
        objc_copyWeak(&v20, &location);
        [v10 sinkWithCompletion:buf receiveInput:v19];
        objc_destroyWeak(&v20);
        objc_destroyWeak(&v26);
        objc_destroyWeak(&location);
      }

      else
      {
        v13 = qword_10002B298;
        if (os_log_type_enabled(qword_10002B298, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to create mediaRenderedPublisher publisher", buf, 2u);
        }

        v16(v15);
      }
    }
  }

  else
  {
    v12 = qword_10002B298;
    if (os_log_type_enabled(qword_10002B298, OS_LOG_TYPE_FAULT))
    {
      if (a3)
      {
        v14 = *(a3 + 1);
      }

      else
      {
        v14 = 0;
      }

      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Told to run unsupported XPC activity %{public}@", buf, 0xCu);
    }

    [a3 markCompleted];
  }
}

@end