@interface SBIndirectPanGestureSwitcherModifierEvent
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBIndirectPanGestureSwitcherModifierEvent

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = SBIndirectPanGestureSwitcherModifierEvent;
  result = [(SBGestureSwitcherModifierEvent *)&v5 copyWithZone:zone];
  *(result + 21) = self->_indirectPanEndReason;
  return result;
}

@end