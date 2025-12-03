@interface _UIMotionEffectCoreMotionEventProvider
- (_UIMotionEffectCoreMotionEventProvider)init;
- (double)slowUpdateIntervalForLogs;
- (id)currentEvent;
- (void)dealloc;
- (void)setSlowUpdatesEnabled:(BOOL)enabled;
- (void)startGeneratingEvents;
- (void)stopGeneratingEvents;
@end

@implementation _UIMotionEffectCoreMotionEventProvider

- (_UIMotionEffectCoreMotionEventProvider)init
{
  v10.receiver = self;
  v10.super_class = _UIMotionEffectCoreMotionEventProvider;
  v2 = [(_UIMotionEffectCoreMotionEventProvider *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    motionEventQueue = v2->_motionEventQueue;
    v2->_motionEventQueue = v3;

    [(NSOperationQueue *)v2->_motionEventQueue setMaxConcurrentOperationCount:1];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v5 = _MergedGlobals_9_7;
    v15 = _MergedGlobals_9_7;
    if (!_MergedGlobals_9_7)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getCMMotionManagerClass_block_invoke_0;
      v11[3] = &unk_1E70F2F20;
      v11[4] = &v12;
      __getCMMotionManagerClass_block_invoke_0(v11);
      v5 = v13[3];
    }

    v6 = v5;
    _Block_object_dispose(&v12, 8);
    initUsingGyroOnlySensorFusion = [[v5 alloc] initUsingGyroOnlySensorFusion];
    motionManager = v2->_motionManager;
    v2->_motionManager = initUsingGyroOnlySensorFusion;

    [(CMMotionManager *)v2->_motionManager setPowerConservationMode:1];
    [(CMMotionManager *)v2->_motionManager setDeviceMotionUpdateInterval:1.0 / _UIGetUIMotionEffectMotionUpdateFrequency()];
  }

  return v2;
}

- (id)currentEvent
{
  deviceMotion = [(CMMotionManager *)self->_motionManager deviceMotion];
  if (deviceMotion)
  {
    v3 = [_UIMotionEffectAttitudeEvent alloc];
    [deviceMotion timestamp];
    v5 = v4;
    attitude = [deviceMotion attitude];
    [attitude quaternion];
    v11 = [(_UIMotionEffectAttitudeEvent *)v3 initWithTimestamp:v5 attitude:v7, v8, v9, v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)startGeneratingEvents
{
  if ([(CMMotionManager *)self->_motionManager isDeviceMotionAvailable])
  {
    [(CMMotionManager *)self->_motionManager setNotificationCallback:_HandleMotionManagerNotification info:self];
    [(NSOperationQueue *)self->_motionEventQueue cancelAllOperations];
    motionEventQueue = self->_motionEventQueue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __63___UIMotionEffectCoreMotionEventProvider_startGeneratingEvents__block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    [(NSOperationQueue *)motionEventQueue addOperationWithBlock:v4];
  }
}

- (void)stopGeneratingEvents
{
  [(NSOperationQueue *)self->_motionEventQueue cancelAllOperations];
  motionEventQueue = self->_motionEventQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62___UIMotionEffectCoreMotionEventProvider_stopGeneratingEvents__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [(NSOperationQueue *)motionEventQueue addOperationWithBlock:v4];
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_motionEventQueue cancelAllOperations];
  [(NSOperationQueue *)self->_motionEventQueue waitUntilAllOperationsAreFinished];
  v3.receiver = self;
  v3.super_class = _UIMotionEffectCoreMotionEventProvider;
  [(_UIMotionEffectCoreMotionEventProvider *)&v3 dealloc];
}

- (void)setSlowUpdatesEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v4 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_UIMotionEffectMotionUpdateSlowFrequency, @"UIMotionEffectMotionUpdateSlowFrequency");
    updated = *&qword_1EA95E5B0;
    if (v4)
    {
      updated = 5.0;
    }
  }

  else
  {
    updated = _UIGetUIMotionEffectMotionUpdateFrequency();
  }

  motionManager = self->_motionManager;
  v7 = 1.0 / updated;

  [(CMMotionManager *)motionManager setDeviceMotionCallback:_HandleNewDeviceMotion info:self interval:0 fsync:v7];
}

- (double)slowUpdateIntervalForLogs
{
  v2 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_UIMotionEffectMotionUpdateSlowFrequency, @"UIMotionEffectMotionUpdateSlowFrequency");
  result = 1.0 / *&qword_1EA95E5B0;
  if (v2)
  {
    return 0.2;
  }

  return result;
}

@end