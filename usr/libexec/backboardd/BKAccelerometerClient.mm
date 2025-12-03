@interface BKAccelerometerClient
- (BOOL)_passesThresholdForX:(float)x y:(float)y z:(float)z;
- (BOOL)_shouldSendSampleEventWithTimestamp:(double)timestamp samplingInterval:(double)interval;
- (double)accelerometerUpdateInterval;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
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

- (BOOL)_shouldSendSampleEventWithTimestamp:(double)timestamp samplingInterval:(double)interval
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

  v5 = timestamp - *(&self->_accelerometerUpdateInterval + 6);
  if (v5 >= v4)
  {
    return 1;
  }

  if (v4 >= interval * 2.5)
  {
    return 0;
  }

  return v5 > v4 * 0.8 || v5 < 0.0;
}

- (BOOL)_passesThresholdForX:(float)x y:(float)y z:(float)z
{
  v5 = *(&self->super._terminating + 1);
  if (v5 > 0.0)
  {
    if (x < 0.0)
    {
      x = -x;
    }

    if (x >= v5)
    {
      return 1;
    }
  }

  v6 = *(&self->_xThreshold + 2);
  if (v6 > 0.0)
  {
    if (y < 0.0)
    {
      y = -y;
    }

    if (y >= v6)
    {
      return 1;
    }
  }

  v7 = *(&self->_yThreshold + 2);
  if (v7 <= 0.0)
  {
    return 0;
  }

  zCopy = -z;
  if (z >= 0.0)
  {
    zCopy = z;
  }

  return zCopy >= v7;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v9.receiver = self;
  v9.super_class = BKAccelerometerClient;
  v4 = [(BKHIDEventClient *)&v9 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendBool:HIBYTE(self->_zThreshold) withName:@"wantsOrientationEvents"];
  v6 = [v4 appendBool:BYTE2(self->_zThreshold) withName:@"passiveEvents"];
  v7 = [v4 appendBool:self->_passiveOrientationEvents withName:@"wantsAccelerometerEvents"];

  return v4;
}

@end