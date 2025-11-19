@interface SBPointerCrossedDisplayBoundarySwitcherModifierEvent
- (SBPointerCrossedDisplayBoundarySwitcherModifierEvent)initWithDirection:(unint64_t)a3 edge:(unsigned int)a4;
@end

@implementation SBPointerCrossedDisplayBoundarySwitcherModifierEvent

- (SBPointerCrossedDisplayBoundarySwitcherModifierEvent)initWithDirection:(unint64_t)a3 edge:(unsigned int)a4
{
  v7.receiver = self;
  v7.super_class = SBPointerCrossedDisplayBoundarySwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v7 init];
  if (result)
  {
    result->_direction = a3;
    result->_edge = a4;
  }

  return result;
}

@end