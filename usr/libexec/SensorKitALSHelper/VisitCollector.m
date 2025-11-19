@interface VisitCollector
+ (void)initialize;
- (VisitCollector)initWithLaunchEvents:(id)a3 sensorWriter:(id)a4 routineManager:(id)a5 defaults:(id)a6 q:(id)a7;
- (void)dealloc;
- (void)launchEventRunActivity:(id)a3;
- (void)sensorWriterDidStopMonitoring:(id)a3;
- (void)sensorWriterWillStartMonitoring:(id)a3;
- (void)writeVisitsWithCompletionHandler:(id)a3;
@end

@implementation VisitCollector

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_10002B238 = os_log_create("com.apple.SensorKit", "SensorKitVisitCollector");
  }
}

- (VisitCollector)initWithLaunchEvents:(id)a3 sensorWriter:(id)a4 routineManager:(id)a5 defaults:(id)a6 q:(id)a7
{
  v15.receiver = self;
  v15.super_class = VisitCollector;
  v12 = [(VisitCollector *)&v15 init];
  if (v12)
  {
    v12->_sensorWriter = a4;
    v12->_queue = a7;
    v12->_rtManager = a5;
    v13 = a3;
    v12->_launchEvents = v13;
    if (v13)
    {
      objc_storeWeak(&v13->_delegate, v12);
    }

    [(SRSensorWriter *)v12->_sensorWriter setDelegate:v12];
    [(VisitCollector *)v12 setDefaults:a6];
  }

  return v12;
}

- (void)dealloc
{
  self->_sensorWriter = 0;

  self->_queue = 0;
  self->_launchEvents = 0;

  self->_rtManager = 0;
  [(VisitCollector *)self setDefaults:0];
  v3.receiver = self;
  v3.super_class = VisitCollector;
  [(VisitCollector *)&v3 dealloc];
}

- (void)writeVisitsWithCompletionHandler:(id)a3
{
  if (([(SRSensorWriter *)self->_sensorWriter isMonitoring]& 1) != 0)
  {
    objc_initWeak(location, self);
    rtManager = self->_rtManager;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100002C24;
    v7[3] = &unk_1000249E8;
    objc_copyWeak(&v8, location);
    v7[4] = a3;
    [(RTRoutineManager *)rtManager fetchLocationsOfInterestOfType:0 withHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = qword_10002B238;
    if (os_log_type_enabled(qword_10002B238, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "VisitCollection running but writer is not monitoring", location, 2u);
    }

    (*(a3 + 2))(a3);
  }
}

- (void)sensorWriterWillStartMonitoring:(id)a3
{
  v4 = qword_10002B238;
  if (os_log_type_enabled(qword_10002B238, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "start visist metrics recording", v6, 2u);
  }

  launchEvents = self->_launchEvents;
  v7 = @"com.apple.sensorkit.fetchVisits";
  [(RDLaunchEvents *)launchEvents registerForXPCActivities:[NSArray arrayWithObjects:&v7 count:1]];
}

- (void)sensorWriterDidStopMonitoring:(id)a3
{
  v4 = qword_10002B238;
  if (os_log_type_enabled(qword_10002B238, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "stop visit metrics recording", v6, 2u);
  }

  launchEvents = self->_launchEvents;
  v7 = @"com.apple.sensorkit.fetchVisits";
  [(RDLaunchEvents *)launchEvents unregisterForXPCActivities:[NSArray arrayWithObjects:&v7 count:1]];
  [(SRDataCollectorsDefaults *)[(VisitCollector *)self defaults] setLastVisitsQueryDate:0];
}

- (void)launchEventRunActivity:(id)a3
{
  v4 = self;
  if (self)
  {
    self = self->_queue;
  }

  dispatch_assert_queue_V2(&self->super);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000031D4;
  v5[3] = &unk_100024A10;
  v5[4] = a3;
  [(VisitCollector *)v4 writeVisitsWithCompletionHandler:v5];
}

@end