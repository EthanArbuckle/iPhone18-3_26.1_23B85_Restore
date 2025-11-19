@interface BKSystemAppHeartbeat
- (BKSystemAppHeartbeat)initWithFireCount:(unint64_t)a3 interval:(double)a4;
- (void)_handleTimer:(id)a3;
- (void)dealloc;
- (void)start;
@end

@implementation BKSystemAppHeartbeat

- (void)start
{
  self->_firedCount = 0;
  [(NSTimer *)self->_timer invalidate];
  v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_handleTimer:" selector:0 userInfo:1 repeats:self->_interval];
  timer = self->_timer;
  self->_timer = v3;

  v5 = self->_timer;

  [(BKSystemAppHeartbeat *)self _handleTimer:v5];
}

- (void)_handleTimer:(id)a3
{
  ++self->_firedCount;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.backboard.systemAppHeartbeat", 0, 0, 1u);
  if (self->_firedCount == self->_numberOfTimesToFire)
  {
    [(NSTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;
  }
}

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = BKSystemAppHeartbeat;
  [(BKSystemAppHeartbeat *)&v3 dealloc];
}

- (BKSystemAppHeartbeat)initWithFireCount:(unint64_t)a3 interval:(double)a4
{
  v7.receiver = self;
  v7.super_class = BKSystemAppHeartbeat;
  result = [(BKSystemAppHeartbeat *)&v7 init];
  if (result)
  {
    result->_numberOfTimesToFire = a3;
    result->_interval = a4;
  }

  return result;
}

@end