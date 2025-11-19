@interface RCUnfairLock
- (RCUnfairLock)initWithOptions:(int64_t)a3;
- (void)performWithLockSync:(id)a3;
@end

@implementation RCUnfairLock

- (RCUnfairLock)initWithOptions:(int64_t)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = RCUnfairLock;
  result = [(RCUnfairLock *)&v5 init];
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

- (void)performWithLockSync:(id)a3
{
  v4 = a3;
  [(RCUnfairLock *)self lock];
  v4[2](v4);

  [(RCUnfairLock *)self unlock];
}

@end