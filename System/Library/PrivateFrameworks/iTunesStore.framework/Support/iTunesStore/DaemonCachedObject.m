@interface DaemonCachedObject
- (id)copyExpirationTimer;
- (void)dealloc;
- (void)setExpirationTimer:(id)a3;
@end

@implementation DaemonCachedObject

- (void)dealloc
{
  expirationTimer = self->_expirationTimer;
  if (expirationTimer)
  {
    dispatch_source_cancel(expirationTimer);
    dispatch_release(self->_expirationTimer);
  }

  v4.receiver = self;
  v4.super_class = DaemonCachedObject;
  [(DaemonCachedObject *)&v4 dealloc];
}

- (id)copyExpirationTimer
{
  expirationTimer = self->_expirationTimer;
  if (expirationTimer)
  {
    dispatch_retain(self->_expirationTimer);
  }

  return expirationTimer;
}

- (void)setExpirationTimer:(id)a3
{
  expirationTimer = self->_expirationTimer;
  if (expirationTimer)
  {
    dispatch_source_cancel(expirationTimer);
    dispatch_release(self->_expirationTimer);
  }

  self->_expirationTimer = a3;
  if (a3)
  {

    dispatch_retain(a3);
  }
}

@end