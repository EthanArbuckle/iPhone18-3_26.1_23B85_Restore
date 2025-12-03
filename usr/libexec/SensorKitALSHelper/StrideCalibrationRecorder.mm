@interface StrideCalibrationRecorder
+ (void)initialize;
- (void)dealloc;
- (void)launchEventRunActivity:(id)activity;
- (void)sensorWriterDidStopMonitoring:(id)monitoring;
- (void)sensorWriterWillStartMonitoring:(id)monitoring;
@end

@implementation StrideCalibrationRecorder

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_10002B288 = os_log_create("com.apple.SensorKit", "SensorKitStrideCalibrationHelper");
  }
}

- (void)dealloc
{
  self->_sensorWriter = 0;

  self->_queue = 0;
  self->_launchEvents = 0;
  v3.receiver = self;
  v3.super_class = StrideCalibrationRecorder;
  [(StrideCalibrationRecorder *)&v3 dealloc];
}

- (void)sensorWriterWillStartMonitoring:(id)monitoring
{
  v4 = qword_10002B288;
  if (os_log_type_enabled(qword_10002B288, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "start stride calibration recording", v6, 2u);
  }

  launchEvents = self->_launchEvents;
  v7 = @"com.apple.sensorkit.fetchStrideCalibration";
  [(RDLaunchEvents *)launchEvents registerForXPCActivities:[NSArray arrayWithObjects:&v7 count:1]];
}

- (void)sensorWriterDidStopMonitoring:(id)monitoring
{
  v4 = qword_10002B288;
  if (os_log_type_enabled(qword_10002B288, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "stop stride calibration recording", v6, 2u);
  }

  launchEvents = self->_launchEvents;
  v7 = @"com.apple.sensorkit.fetchStrideCalibration";
  [(RDLaunchEvents *)launchEvents unregisterForXPCActivities:[NSArray arrayWithObjects:&v7 count:1]];
}

- (void)launchEventRunActivity:(id)activity
{
  selfCopy = self;
  if (self)
  {
    self = self->_queue;
  }

  dispatch_assert_queue_V2(&self->super);
  if (activity)
  {
    v5 = *(activity + 1);
  }

  else
  {
    v5 = 0;
  }

  if ([v5 isEqualToString:@"com.apple.sensorkit.fetchStrideCalibration"])
  {
    if (selfCopy)
    {
      isMonitoring = [(SRSensorWriter *)selfCopy->_sensorWriter isMonitoring];
      v7 = qword_10002B288;
      v8 = os_log_type_enabled(qword_10002B288, OS_LOG_TYPE_INFO);
      if (isMonitoring)
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetching stride calibration history", buf, 2u);
        }

        v9 = objc_alloc_init(CMPedometer);
        strideCalibrationDump = [v9 strideCalibrationDump];
        v10 = [objc_msgSend(strideCalibrationDump "calibrationTracks")];
        v11 = qword_10002B288;
        if (os_log_type_enabled(qword_10002B288, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v32 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Fetched %lu calibration tracks", buf, 0xCu);
        }

        if (v10)
        {
          v28 = v9;
          v30 = 0;
          v13 = v10 + 4999;
          if ((v10 + 4999) >> 3 >= 0x271)
          {
            v16 = 0;
            v17 = 0;
            v18 = v13 / 0x1388;
            v19 = v13 / 0x1388 - 1;
            *&v12 = 138412290;
            v27 = v12;
            do
            {
              v20 = objc_autoreleasePoolPush();
              if (v17 >= v19)
              {
                v21 = v10;
              }

              else
              {
                v21 = 5000;
              }

              v22 = +[NSKeyedArchiver archivedDataWithRootObject:requiringSecureCoding:error:](NSKeyedArchiver, "archivedDataWithRootObject:requiringSecureCoding:error:", [objc_msgSend(strideCalibrationDump calibrationTracks], 1, &v30);
              v23 = v30;
              if (v30)
              {
                v24 = qword_10002B288;
                if (os_log_type_enabled(qword_10002B288, OS_LOG_TYPE_FAULT))
                {
                  *buf = v27;
                  v32 = v23;
                  _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "Sample archive failed with error %@", buf, 0xCu);
                }
              }

              else if (v22)
              {
                [(SRSensorWriter *)selfCopy->_sensorWriter provideSampleData:v22];
              }

              else
              {
                v25 = qword_10002B288;
                if (os_log_type_enabled(qword_10002B288, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Sample is empty", buf, 2u);
                }
              }

              objc_autoreleasePoolPop(v20);
              ++v17;
              v16 += 5000;
              v10 = (v10 - 5000);
            }

            while (v18 != v17);
          }
        }

        else
        {
        }
      }

      else if (v8)
      {
        sensorWriter = selfCopy->_sensorWriter;
        *buf = 138543618;
        v32 = sensorWriter;
        v33 = 2114;
        v34 = SRSensorStrideCalibration;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@ is not monitoring for %{public}@", buf, 0x16u);
      }
    }

    [activity markCompleted];
  }

  else
  {
    v14 = qword_10002B288;
    if (os_log_type_enabled(qword_10002B288, OS_LOG_TYPE_FAULT))
    {
      if (activity)
      {
        v26 = *(activity + 1);
      }

      else
      {
        v26 = 0;
      }

      *buf = 138543362;
      v32 = v26;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Told to run unsupported XPC activity %{public}@", buf, 0xCu);
    }

    [activity markCompleted];
  }
}

@end