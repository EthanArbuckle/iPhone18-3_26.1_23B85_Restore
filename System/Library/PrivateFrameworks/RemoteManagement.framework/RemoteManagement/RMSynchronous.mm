@interface RMSynchronous
- (BOOL)waitForCompletionWithTimeout:(double)timeout;
- (RMSynchronous)init;
- (void)complete;
- (void)waitForCompletion;
@end

@implementation RMSynchronous

- (RMSynchronous)init
{
  v6.receiver = self;
  v6.super_class = RMSynchronous;
  v2 = [(RMSynchronous *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:1];
    lock = v2->_lock;
    v2->_lock = v3;
  }

  return v2;
}

- (void)complete
{
  [(NSConditionLock *)self->_lock lock];
  lock = self->_lock;

  [(NSConditionLock *)lock unlockWithCondition:0];
}

- (void)waitForCompletion
{
  [(NSConditionLock *)self->_lock lockWhenCondition:0];
  lock = self->_lock;

  [(NSConditionLock *)lock unlock];
}

- (BOOL)waitForCompletionWithTimeout:(double)timeout
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:timeout];
  v5 = [(NSConditionLock *)self->_lock lockWhenCondition:0 beforeDate:v4];
  if (v5)
  {
    [(NSConditionLock *)self->_lock unlock];
  }

  return v5;
}

@end