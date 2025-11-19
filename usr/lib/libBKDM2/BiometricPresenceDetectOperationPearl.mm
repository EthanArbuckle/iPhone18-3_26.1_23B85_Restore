@interface BiometricPresenceDetectOperationPearl
- (unsigned)cancelledMessage;
- (void)dealloc;
@end

@implementation BiometricPresenceDetectOperationPearl

- (unsigned)cancelledMessage
{
  if (!self->_checked)
  {
    return 99;
  }

  if (self->_finished)
  {
    return 1050;
  }

  if (self->_timeouted)
  {
    return 1051;
  }

  return 99;
}

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = BiometricPresenceDetectOperationPearl;
  [(BiometricPresenceDetectOperationPearl *)&v3 dealloc];
}

@end