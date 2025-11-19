@interface APOdmlUnfairLock
- (APOdmlUnfairLock)initWithOptions:(int64_t)a3;
@end

@implementation APOdmlUnfairLock

- (APOdmlUnfairLock)initWithOptions:(int64_t)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = APOdmlUnfairLock;
  result = [(APOdmlUnfairLock *)&v5 init];
  if (result)
  {
    result->_unfairLock._os_unfair_lock_opaque = 0;
    if (v3)
    {
      result->_unfairLockOptions |= 0x10000u;
    }
  }

  return result;
}

@end