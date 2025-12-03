@interface APOdmlUnfairLock
- (APOdmlUnfairLock)initWithOptions:(int64_t)options;
@end

@implementation APOdmlUnfairLock

- (APOdmlUnfairLock)initWithOptions:(int64_t)options
{
  optionsCopy = options;
  v5.receiver = self;
  v5.super_class = APOdmlUnfairLock;
  result = [(APOdmlUnfairLock *)&v5 init];
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

@end