@interface ALSRecorder
+ (void)initialize;
- (CFTypeRef)sensorWriterDidStopMonitoring:(CFTypeRef *)result;
- (void)dealloc;
- (void)sensorWriterWillStartMonitoring:(id)a3;
@end

@implementation ALSRecorder

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_10002B248 = os_log_create("com.apple.SensorKit", "SensorKitALSHelper");
  }
}

- (void)dealloc
{
  [ALSRecorder sensorWriterDidStopMonitoring:]_0(&self->super.isa);

  self->_sensorWriter = 0;
  self->_alsSenders = 0;
  objc_setProperty_nonatomic(self, v3, 0, 32);
  objc_setProperty_nonatomic(self, v4, 0, 40);
  v5.receiver = self;
  v5.super_class = ALSRecorder;
  [(ALSRecorder *)&v5 dealloc];
}

- (CFTypeRef)sensorWriterDidStopMonitoring:(CFTypeRef *)result
{
  if (result)
  {
    v1 = result;
    v2 = qword_10002B248;
    if (os_log_type_enabled(qword_10002B248, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 0;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "stop recording", v6, 2u);
    }

    objc_sync_enter(v1);
    if (v1[3])
    {
      IOHIDEventSystemClientUnregisterEventCallback();
      v3 = v1[3];
      v4 = v1[4];
      IOHIDEventSystemClientUnscheduleFromDispatchQueue();
      CFRelease(v1[3]);
      v1[3] = 0;
    }

    objc_sync_exit(v1);
    v5 = v1[5];
    v7 = @"com.apple.sensorkit.launchAlsRecorder";
    return [v5 unregisterForXPCActivities:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v7, 1)}];
  }

  return result;
}

- (void)sensorWriterWillStartMonitoring:(id)a3
{
  if (self)
  {
    v4 = qword_10002B248;
    if (os_log_type_enabled(qword_10002B248, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(keys[0]) = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "start recording", keys, 2u);
    }

    objc_sync_enter(self);
    if (!self->_client)
    {
      v5 = IOHIDEventSystemClientCreateWithType();
      self->_client = v5;
      if (v5)
      {
        v18 = 4;
        valuePtr = 65280;
        v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v18);
        *keys = *&off_100024A58;
        values[0] = v6;
        values[1] = v7;
        v8 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFRelease(v6);
        CFRelease(v7);
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
        CFArrayAppendValue(Mutable, v8);
        CFRelease(v8);
        v16 = Mutable;
        v17 = @"DeviceUsagePairs";
        v10 = CFDictionaryCreate(kCFAllocatorDefault, &v17, &v16, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFRelease(Mutable);
        client = self->_client;
        IOHIDEventSystemClientSetMatching();
        v12 = self->_client;
        queue = self->_queue;
        IOHIDEventSystemClientScheduleWithDispatchQueue();
        v14 = self->_client;
        IOHIDEventSystemClientRegisterEventCallback();
        CFRelease(v10);
      }
    }

    objc_sync_exit(self);
    launchEvents = self->_launchEvents;
    keys[0] = @"com.apple.sensorkit.launchAlsRecorder";
    [(RDLaunchEvents *)launchEvents registerForXPCActivities:[NSArray arrayWithObjects:keys count:1]];
  }
}

@end