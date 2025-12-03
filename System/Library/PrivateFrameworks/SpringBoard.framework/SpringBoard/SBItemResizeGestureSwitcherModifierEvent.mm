@interface SBItemResizeGestureSwitcherModifierEvent
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBItemResizeGestureSwitcherModifierEvent

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = SBItemResizeGestureSwitcherModifierEvent;
  result = [(SBGestureSwitcherModifierEvent *)&v5 copyWithZone:zone];
  *(result + 21) = self->_selectedLayoutRole;
  *(result + 22) = self->_selectedEdge;
  return result;
}

@end