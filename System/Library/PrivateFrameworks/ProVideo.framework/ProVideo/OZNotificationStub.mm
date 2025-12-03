@interface OZNotificationStub
- (OZNotificationStub)initWithOZDocument:(void *)document useTimer:(BOOL)timer;
- (void)dealloc;
- (void)fire;
- (void)processNotifications:(id)notifications;
- (void)releaseTimer;
@end

@implementation OZNotificationStub

- (OZNotificationStub)initWithOZDocument:(void *)document useTimer:(BOOL)timer
{
  timerCopy = timer;
  v9.receiver = self;
  v9.super_class = OZNotificationStub;
  v6 = [(OZNotificationStub *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_pDocument = document;
    if (timerCopy)
    {
      [(OZNotificationStub *)v6 createTimer];
    }
  }

  return v7;
}

- (void)dealloc
{
  [(OZNotificationStub *)self releaseTimer];
  v3.receiver = self;
  v3.super_class = OZNotificationStub;
  [(OZNotificationStub *)&v3 dealloc];
}

- (void)releaseTimer
{
  pTimer = self->_pTimer;
  if (pTimer)
  {
    [(NSTimer *)pTimer invalidate];
  }

  self->_pTimer = 0;
}

- (void)processNotifications:(id)notifications
{
  v3 = *(self->_pDocument + 21);
  if (v3)
  {
    OZNotificationManager::processNotifications(v3);
  }
}

- (void)fire
{
  pTimer = self->_pTimer;
  date = [MEMORY[0x277CBEAA8] date];

  [(NSTimer *)pTimer setFireDate:date];
}

@end