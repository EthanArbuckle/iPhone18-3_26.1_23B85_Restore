@interface RCUnfairLock
- (RCUnfairLock)initWithOptions:(int64_t)options;
- (void)performWithLockSync:(id)sync;
@end

@implementation RCUnfairLock

- (RCUnfairLock)initWithOptions:(int64_t)options
{
  optionsCopy = options;
  v5.receiver = self;
  v5.super_class = RCUnfairLock;
  result = [(RCUnfairLock *)&v5 init];
  if (result)
  {
    result->_unfairLock._os_unfair_lock_opaque = 0;
    if (optionsCopy)
    {
      result->_unfairLockOptions |= 0x10000u;
    }
  }

  return result;
}

- (void)performWithLockSync:(id)sync
{
  syncCopy = sync;
  [(RCUnfairLock *)self lock];
  syncCopy[2](syncCopy);

  [(RCUnfairLock *)self unlock];
}

@end