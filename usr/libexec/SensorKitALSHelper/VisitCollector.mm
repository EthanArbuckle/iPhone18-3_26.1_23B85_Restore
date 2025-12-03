@interface VisitCollector
+ (void)initialize;
- (VisitCollector)initWithLaunchEvents:(id)events sensorWriter:(id)writer routineManager:(id)manager defaults:(id)defaults q:(id)q;
- (void)dealloc;
- (void)launchEventRunActivity:(id)activity;
- (void)sensorWriterDidStopMonitoring:(id)monitoring;
- (void)sensorWriterWillStartMonitoring:(id)monitoring;
- (void)writeVisitsWithCompletionHandler:(id)handler;
@end

@implementation VisitCollector

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_10002B238 = os_log_create("com.apple.SensorKit", "SensorKitVisitCollector");
  }
}

- (VisitCollector)initWithLaunchEvents:(id)events sensorWriter:(id)writer routineManager:(id)manager defaults:(id)defaults q:(id)q
{
  v15.receiver = self;
  v15.super_class = VisitCollector;
  v12 = [(VisitCollector *)&v15 init];
  if (v12)
  {
    v12->_sensorWriter = writer;
    v12->_queue = q;
    v12->_rtManager = manager;
    eventsCopy = events;
    v12->_launchEvents = eventsCopy;
    if (eventsCopy)
    {
      objc_storeWeak(&eventsCopy->_delegate, v12);
    }

    [(SRSensorWriter *)v12->_sensorWriter setDelegate:v12];
    [(VisitCollector *)v12 setDefaults:defaults];
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

- (void)writeVisitsWithCompletionHandler:(id)handler
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
    v7[4] = handler;
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

    (*(handler + 2))(handler);
  }
}

- (void)sensorWriterWillStartMonitoring:(id)monitoring
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

- (void)sensorWriterDidStopMonitoring:(id)monitoring
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

- (void)launchEventRunActivity:(id)activity
{
  selfCopy = self;
  if (self)
  {
    self = self->_queue;
  }

  dispatch_assert_queue_V2(&self->super);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000031D4;
  v5[3] = &unk_100024A10;
  v5[4] = activity;
  [(VisitCollector *)selfCopy writeVisitsWithCompletionHandler:v5];
}

@end