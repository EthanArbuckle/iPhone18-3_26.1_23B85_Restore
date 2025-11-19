@interface PGUnfairLock
- (PGUnfairLock)init;
@end

@implementation PGUnfairLock

- (PGUnfairLock)init
{
  v3.receiver = self;
  v3.super_class = PGUnfairLock;
  result = [(PGUnfairLock *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end