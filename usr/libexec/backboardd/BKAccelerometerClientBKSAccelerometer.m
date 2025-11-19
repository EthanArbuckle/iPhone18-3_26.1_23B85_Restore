@interface BKAccelerometerClientBKSAccelerometer
- (void)_queue_invalidate;
- (void)handleAccelerometerEventWithTimestamp:(double)a3 x:(float)a4 y:(float)a5 z:(float)a6 samplingInterval:(double)a7;
@end

@implementation BKAccelerometerClientBKSAccelerometer

- (void)_queue_invalidate
{
  v2.receiver = self;
  v2.super_class = BKAccelerometerClientBKSAccelerometer;
  [(BKAccelerometerClient *)&v2 _queue_invalidate];
}

- (void)handleAccelerometerEventWithTimestamp:(double)a3 x:(float)a4 y:(float)a5 z:(float)a6 samplingInterval:(double)a7
{
  if ([(BKAccelerometerClient *)self wantsAccelerometerEvents])
  {
    v13 = [(BKHIDEventClient *)self sendRight];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003FE84;
    v14[3] = &unk_1000FAFB0;
    v14[4] = self;
    v15 = a4;
    v16 = a5;
    v17 = a6;
    *&v14[5] = a3;
    *&v14[6] = a7;
    [v13 accessPort:v14];
  }
}

@end