@interface SBItemResizeGestureSwitcherModifierEvent
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBItemResizeGestureSwitcherModifierEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = SBItemResizeGestureSwitcherModifierEvent;
  result = [(SBGestureSwitcherModifierEvent *)&v5 copyWithZone:a3];
  *(result + 21) = self->_selectedLayoutRole;
  *(result + 22) = self->_selectedEdge;
  return result;
}

@end