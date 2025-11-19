@interface SBFullScreenToPeekAnimationModifier
- (BOOL)shouldInterruptForActivity:(id)a3;
- (SBFullScreenToPeekAnimationModifier)initWithDirection:(unint64_t)a3;
- (double)fadeInDelayForSplitViewHandles;
- (id)animationAttributesForItem:(id)a3;
- (void)transitionWillBegin:(id)a3;
@end

@implementation SBFullScreenToPeekAnimationModifier

- (SBFullScreenToPeekAnimationModifier)initWithDirection:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBFullScreenToPeekAnimationModifier;
  result = [(SBWindowingModifier *)&v5 init];
  if (result)
  {
    result->_direction = a3;
  }

  return result;
}

- (BOOL)shouldInterruptForActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transitionID && [v4 isTransitionEvent])
  {
    v6 = [v5 transitionID];
    if (BSEqualObjects())
    {
      v7 = [v5 isGestureEvent];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = [v5 isGestureEvent];
  }

  return v7;
}

- (void)transitionWillBegin:(id)a3
{
  v4 = [a3 transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = v4;
}

- (double)fadeInDelayForSplitViewHandles
{
  v2 = [(SBFullScreenToPeekAnimationModifier *)self switcherSettings];
  v3 = [v2 windowingSettings];
  [v3 percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  v6 = [v2 animationSettings];
  v7 = [v6 layoutSettings];
  [v7 settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (id)animationAttributesForItem:(id)a3
{
  v4 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v4 setUpdateMode:3];
  v5 = [(SBFullScreenToPeekAnimationModifier *)self switcherSettings];
  v6 = [v5 windowingSettings];
  v7 = [v6 appToPeekLayoutSettings];
  [(SBSwitcherAnimationAttributes *)v4 setLayoutSettings:v7];

  return v4;
}

@end