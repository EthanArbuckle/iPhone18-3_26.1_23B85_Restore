@interface SBTapOutsideToDismissSwitcherModifierEvent
- (SBTapOutsideToDismissSwitcherModifierEvent)initWithPointerTouch:(BOOL)a3;
@end

@implementation SBTapOutsideToDismissSwitcherModifierEvent

- (SBTapOutsideToDismissSwitcherModifierEvent)initWithPointerTouch:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBTapOutsideToDismissSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v5 init];
  if (result)
  {
    result->_pointerTouch = a3;
  }

  return result;
}

@end