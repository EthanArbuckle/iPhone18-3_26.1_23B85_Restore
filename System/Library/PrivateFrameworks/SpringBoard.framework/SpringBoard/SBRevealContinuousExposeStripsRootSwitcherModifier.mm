@interface SBRevealContinuousExposeStripsRootSwitcherModifier
- (SBRevealContinuousExposeStripsRootSwitcherModifier)initWithInitialAppLayout:(id)layout;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier;
@end

@implementation SBRevealContinuousExposeStripsRootSwitcherModifier

- (SBRevealContinuousExposeStripsRootSwitcherModifier)initWithInitialAppLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = SBRevealContinuousExposeStripsRootSwitcherModifier;
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
  v6 = [SBRevealContinuousExposeStripsGestureModifier alloc];
  gestureID = [eventCopy gestureID];

  v8 = [(SBRevealContinuousExposeStripsGestureModifier *)v6 initWithGestureID:gestureID initialAppLayout:self->_initialAppLayout];

  return v8;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier
{
  eventCopy = event;
  v6 = [SBContinuousExposeAppToAppModifier alloc];
  transitionID = [eventCopy transitionID];
  initialAppLayout = self->_initialAppLayout;
  fromInterfaceOrientation = [eventCopy fromInterfaceOrientation];
  v10 = self->_initialAppLayout;
  toInterfaceOrientation = [eventCopy toInterfaceOrientation];
  fromDisplayItemLayoutAttributesMap = [eventCopy fromDisplayItemLayoutAttributesMap];
  toDisplayItemLayoutAttributesMap = [eventCopy toDisplayItemLayoutAttributesMap];

  v14 = [(SBContinuousExposeAppToAppModifier *)v6 initWithTransitionID:transitionID fromAppLayout:initialAppLayout fromInterfaceOrientation:fromInterfaceOrientation toAppLayout:v10 toInterfaceOrientation:toInterfaceOrientation fromDisplayItemLayoutAttributesMap:fromDisplayItemLayoutAttributesMap toDisplayItemLayoutAttributesMap:toDisplayItemLayoutAttributesMap];

  return v14;
}

@end