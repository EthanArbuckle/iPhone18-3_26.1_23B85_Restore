@interface SBRevealContinuousExposeStripOverflowRootSwitcherModifier
- (SBRevealContinuousExposeStripOverflowRootSwitcherModifier)initWithInitialAppLayout:(id)layout;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier;
@end

@implementation SBRevealContinuousExposeStripOverflowRootSwitcherModifier

- (SBRevealContinuousExposeStripOverflowRootSwitcherModifier)initWithInitialAppLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = SBRevealContinuousExposeStripOverflowRootSwitcherModifier;
  v6 = [(SBGestureRootSwitcherModifier *)&v9 initWithStartingEnvironmentMode:3];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initialAppLayout, layout);
  }

  return v7;
}

- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier
{
  eventCopy = event;
  v6 = [SBRevealContinuousExposeStripOverflowGestureModifier alloc];
  gestureID = [eventCopy gestureID];

  v8 = [(SBRevealContinuousExposeStripOverflowGestureModifier *)v6 initWithGestureID:gestureID initialAppLayout:self->_initialAppLayout];

  return v8;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier
{
  eventCopy = event;
  v5 = [SBContinuousExposeSwitcherToAppModifier alloc];
  transitionID = [eventCopy transitionID];

  v7 = objc_alloc_init(SBAppSwitcherContinuousExposeSwitcherModifier);
  v8 = [(SBContinuousExposeSwitcherToAppModifier *)v5 initWithTransitionID:transitionID direction:1 multitaskingModifier:v7];

  return v8;
}

@end