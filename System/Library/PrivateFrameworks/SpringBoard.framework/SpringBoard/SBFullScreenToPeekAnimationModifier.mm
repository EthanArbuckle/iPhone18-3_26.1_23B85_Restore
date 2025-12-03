@interface SBFullScreenToPeekAnimationModifier
- (BOOL)shouldInterruptForActivity:(id)activity;
- (SBFullScreenToPeekAnimationModifier)initWithDirection:(unint64_t)direction;
- (double)fadeInDelayForSplitViewHandles;
- (id)animationAttributesForItem:(id)item;
- (void)transitionWillBegin:(id)begin;
@end

@implementation SBFullScreenToPeekAnimationModifier

- (SBFullScreenToPeekAnimationModifier)initWithDirection:(unint64_t)direction
{
  v5.receiver = self;
  v5.super_class = SBFullScreenToPeekAnimationModifier;
  result = [(SBWindowingModifier *)&v5 init];
  if (result)
  {
    result->_direction = direction;
  }

  return result;
}

- (BOOL)shouldInterruptForActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (self->_transitionID && [activityCopy isTransitionEvent])
  {
    transitionID = [v5 transitionID];
    if (BSEqualObjects())
    {
      isGestureEvent = [v5 isGestureEvent];
    }

    else
    {
      isGestureEvent = 1;
    }
  }

  else
  {
    isGestureEvent = [v5 isGestureEvent];
  }

  return isGestureEvent;
}

- (void)transitionWillBegin:(id)begin
{
  transitionID = [begin transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = transitionID;
}

- (double)fadeInDelayForSplitViewHandles
{
  switcherSettings = [(SBFullScreenToPeekAnimationModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  [windowingSettings percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  animationSettings = [switcherSettings animationSettings];
  layoutSettings = [animationSettings layoutSettings];
  [layoutSettings settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (id)animationAttributesForItem:(id)item
{
  v4 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v4 setUpdateMode:3];
  switcherSettings = [(SBFullScreenToPeekAnimationModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  appToPeekLayoutSettings = [windowingSettings appToPeekLayoutSettings];
  [(SBSwitcherAnimationAttributes *)v4 setLayoutSettings:appToPeekLayoutSettings];

  return v4;
}

@end