@interface BKAccelerometerClientBKSAccelerometer
- (void)_queue_invalidate;
- (void)handleAccelerometerEventWithTimestamp:(double)timestamp x:(float)x y:(float)y z:(float)z samplingInterval:(double)interval;
@end

@implementation BKAccelerometerClientBKSAccelerometer

- (void)_queue_invalidate
{
  v2.receiver = self;
  v2.super_class = BKAccelerometerClientBKSAccelerometer;
  [(BKAccelerometerClient *)&v2 _queue_invalidate];
}

- (void)handleAccelerometerEventWithTimestamp:(double)timestamp x:(float)x y:(float)y z:(float)z samplingInterval:(double)interval
{
  if ([(BKAccelerometerClient *)self wantsAccelerometerEvents])
  {
    sendRight = [(BKHIDEventClient *)self sendRight];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003FE84;
    v14[3] = &unk_1000FAFB0;
    v14[4] = self;
    xCopy = x;
    yCopy = y;
    zCopy = z;
    *&v14[5] = timestamp;
    *&v14[6] = interval;
    [sendRight accessPort:v14];
  }
}

@end