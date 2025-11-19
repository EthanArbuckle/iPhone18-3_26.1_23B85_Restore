@interface BKDirectTouchUpdateEvents
- (void)invalidate;
@end

@implementation BKDirectTouchUpdateEvents

- (void)invalidate
{
  directTouchState = self->_directTouchState;
  self->_directTouchState = 0;
}

@end