@interface SBReverseCountedSemaphore
- (BOOL)waitWithTimeout:(double)timeout;
- (SBReverseCountedSemaphore)init;
@end

@implementation SBReverseCountedSemaphore

- (SBReverseCountedSemaphore)init
{
  v6.receiver = self;
  v6.super_class = SBReverseCountedSemaphore;
  v2 = [(SBReverseCountedSemaphore *)&v6 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v3;
  }

  return v2;
}

- (BOOL)waitWithTimeout:(double)timeout
{
  if (timeout <= 0.0)
  {
    v4 = -1;
  }

  else
  {
    v4 = dispatch_time(0, (timeout * 1000000000.0));
  }

  return dispatch_group_wait(self->_group, v4) == 0;
}

@end