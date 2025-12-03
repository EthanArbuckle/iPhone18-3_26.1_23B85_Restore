@interface SBPointerCrossedDisplayBoundarySwitcherModifierEvent
- (SBPointerCrossedDisplayBoundarySwitcherModifierEvent)initWithDirection:(unint64_t)direction edge:(unsigned int)edge;
@end

@implementation SBPointerCrossedDisplayBoundarySwitcherModifierEvent

- (SBPointerCrossedDisplayBoundarySwitcherModifierEvent)initWithDirection:(unint64_t)direction edge:(unsigned int)edge
{
  v7.receiver = self;
  v7.super_class = SBPointerCrossedDisplayBoundarySwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v7 init];
  if (result)
  {
    result->_direction = direction;
    result->_edge = edge;
  }

  return result;
}

@end