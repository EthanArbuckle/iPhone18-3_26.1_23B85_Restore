@interface BKAccelerometerClient
- (BOOL)_passesThresholdForX:(float)a3 y:(float)a4 z:(float)a5;
- (BOOL)_shouldSendSampleEventWithTimestamp:(double)a3 samplingInterval:(double)a4;
- (double)accelerometerUpdateInterval;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (void)_queue_invalidate;
@end

@implementation BKAccelerometerClient

- (double)accelerometerUpdateInterval
{
  result = 0.0;
  if (self->_passiveOrientationEvents)
  {
    return *&self->_wantsAccelerometerEvents;
  }

  return result;
}

- (void)_queue_invalidate
{
  v2.receiver = self;
  v2.super_class = BKAccelerometerClient;
  [(BKHIDEventClient *)&v2 _queue_invalidate];
}

- (BOOL)_shouldSendSampleEventWithTimestamp:(double)a3 samplingInterval:(double)a4
{
  if (!self->_passiveOrientationEvents)
  {
    return 0;
  }

  v4 = *&self->_wantsAccelerometerEvents;
  if (v4 <= 0.0)
  {
    return 0;
  }

  v5 = a3 - *(&self->_accelerometerUpdateInterval + 6);
  if (v5 >= v4)
  {
    return 1;
  }

  if (v4 >= a4 * 2.5)
  {
    return 0;
  }

  return v5 > v4 * 0.8 || v5 < 0.0;
}

- (BOOL)_passesThresholdForX:(float)a3 y:(float)a4 z:(float)a5
{
  v5 = *(&self->super._terminating + 1);
  if (v5 > 0.0)
  {
    if (a3 < 0.0)
    {
      a3 = -a3;
    }

    if (a3 >= v5)
    {
      return 1;
    }
  }

  v6 = *(&self->_xThreshold + 2);
  if (v6 > 0.0)
  {
    if (a4 < 0.0)
    {
      a4 = -a4;
    }

    if (a4 >= v6)
    {
      return 1;
    }
  }

  v7 = *(&self->_yThreshold + 2);
  if (v7 <= 0.0)
  {
    return 0;
  }

  v8 = -a5;
  if (a5 >= 0.0)
  {
    v8 = a5;
  }

  return v8 >= v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v9.receiver = self;
  v9.super_class = BKAccelerometerClient;
  v4 = [(BKHIDEventClient *)&v9 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendBool:HIBYTE(self->_zThreshold) withName:@"wantsOrientationEvents"];
  v6 = [v4 appendBool:BYTE2(self->_zThreshold) withName:@"passiveEvents"];
  v7 = [v4 appendBool:self->_passiveOrientationEvents withName:@"wantsAccelerometerEvents"];

  return v4;
}

@end