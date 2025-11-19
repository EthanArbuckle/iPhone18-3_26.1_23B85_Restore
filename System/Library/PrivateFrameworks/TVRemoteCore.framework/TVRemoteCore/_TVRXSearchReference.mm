@interface _TVRXSearchReference
- (NSTimer)expirationTimer;
@end

@implementation _TVRXSearchReference

- (NSTimer)expirationTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_expirationTimer);

  return WeakRetained;
}

@end