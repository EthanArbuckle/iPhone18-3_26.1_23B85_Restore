@interface SpringBoardPendingAlert
- (void)cancelTimeoutTimer;
- (void)dealloc;
@end

@implementation SpringBoardPendingAlert

- (void)dealloc
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
  }

  v4.receiver = self;
  v4.super_class = SpringBoardPendingAlert;
  [(SpringBoardPendingAlert *)&v4 dealloc];
}

- (void)cancelTimeoutTimer
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
    v4 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }
}

@end