@interface BKAccelerometerClientUIApp
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (void)_queue_invalidate;
- (void)handleOrientationEvent:(int64_t)a3 orientationLocked:(BOOL)a4;
- (void)setWantsAccelerometerEvents:(BOOL)a3;
@end

@implementation BKAccelerometerClientUIApp

- (void)handleOrientationEvent:(int64_t)a3 orientationLocked:(BOOL)a4
{
  if ([(BKAccelerometerClient *)self wantsOrientationEvents]&& !a4)
  {
    mach_absolute_time();
    DeviceOrientationEventWithUsage = IOHIDEventCreateDeviceOrientationEventWithUsage();
    v8 = BKLogOrientationDevice();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = BSDeviceOrientationDescription();
      *buf = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending orientation: %{public}@ event to %{public}@", buf, 0x16u);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100076C94;
    v11[3] = &unk_1000FC540;
    v11[4] = self;
    v10 = [BKSHIDEventDeferringResolution build:v11];
    BKSendHIDEventToClientWithDestination();
    CFRelease(DeviceOrientationEventWithUsage);
    *(&self->super._lastAccelerometerEventTimestamp + 6) = a3;
  }
}

- (void)_queue_invalidate
{
  v2.receiver = self;
  v2.super_class = BKAccelerometerClientUIApp;
  [(BKAccelerometerClient *)&v2 _queue_invalidate];
}

- (void)setWantsAccelerometerEvents:(BOOL)a3
{
  if (a3)
  {
    v3 = sub_100002C4C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "BKAccelerometerClientUIApp doesn't support accelerometer events", v4, 2u);
    }
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = BKAccelerometerClientUIApp;
  v4 = [(BKAccelerometerClient *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendInt:*(&self->super._lastAccelerometerEventTimestamp + 6) withName:@"lastOrientation"];

  return v4;
}

@end