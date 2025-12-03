@interface SBReduceMotionSwitcherModifier
- (id)handleReduceMotionChangedEvent:(id)event;
@end

@implementation SBReduceMotionSwitcherModifier

- (id)handleReduceMotionChangedEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = SBReduceMotionSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v6 handleReduceMotionChangedEvent:event];
  if (([(SBReduceMotionSwitcherModifier *)self isReduceMotionEnabled]& 1) == 0)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v4;
}

@end