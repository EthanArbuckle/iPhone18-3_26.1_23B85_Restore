@interface SBTapOutsideToDismissSwitcherModifierEvent
- (SBTapOutsideToDismissSwitcherModifierEvent)initWithPointerTouch:(BOOL)touch;
@end

@implementation SBTapOutsideToDismissSwitcherModifierEvent

- (SBTapOutsideToDismissSwitcherModifierEvent)initWithPointerTouch:(BOOL)touch
{
  v5.receiver = self;
  v5.super_class = SBTapOutsideToDismissSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v5 init];
  if (result)
  {
    result->_pointerTouch = touch;
  }

  return result;
}

@end