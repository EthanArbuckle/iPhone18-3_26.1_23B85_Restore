@interface SBReduceMotionSwitcherModifier
- (id)handleReduceMotionChangedEvent:(id)a3;
@end

@implementation SBReduceMotionSwitcherModifier

- (id)handleReduceMotionChangedEvent:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBReduceMotionSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v6 handleReduceMotionChangedEvent:a3];
  if (([(SBReduceMotionSwitcherModifier *)self isReduceMotionEnabled]& 1) == 0)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v4;
}

@end