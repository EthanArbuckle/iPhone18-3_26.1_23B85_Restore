@interface SBIndirectPanGestureSwitcherModifierEvent
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBIndirectPanGestureSwitcherModifierEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = SBIndirectPanGestureSwitcherModifierEvent;
  result = [(SBGestureSwitcherModifierEvent *)&v5 copyWithZone:a3];
  *(result + 21) = self->_indirectPanEndReason;
  return result;
}

@end