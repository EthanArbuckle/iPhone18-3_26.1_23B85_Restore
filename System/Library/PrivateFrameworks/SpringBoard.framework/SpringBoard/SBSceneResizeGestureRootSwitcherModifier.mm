@interface SBSceneResizeGestureRootSwitcherModifier
- (SBSceneResizeGestureRootSwitcherModifier)initWithAppLayout:(id)layout spaceConfiguration:(int64_t)configuration;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)handleTransitionEvent:(id)event;
- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier;
@end

@implementation SBSceneResizeGestureRootSwitcherModifier

- (SBSceneResizeGestureRootSwitcherModifier)initWithAppLayout:(id)layout spaceConfiguration:(int64_t)configuration
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBSceneResizeGestureRootSwitcherModifier;
  v8 = [(SBGestureRootSwitcherModifier *)&v11 initWithStartingEnvironmentMode:3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appLayout, layout);
    v9->_startingSpaceConfiguration = configuration;
  }

  return v9;
}

- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier
{
  eventCopy = event;
  v6 = [SBSceneResizeGestureSwitcherModifier alloc];
  gestureID = [eventCopy gestureID];

  v8 = [(SBSceneResizeGestureSwitcherModifier *)v6 initWithGestureID:gestureID appLayout:self->_appLayout spaceConfiguration:self->_startingSpaceConfiguration];

  return v8;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier
{
  modifierCopy = modifier;
  eventCopy = event;
  v7 = objc_opt_class();
  v8 = modifierCopy;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [SBSceneResizeTransitionSwitcherModifier alloc];
  transitionID = [eventCopy transitionID];
  fromAppLayout = [eventCopy fromAppLayout];
  toAppLayout = [eventCopy toAppLayout];

  [v10 _minimumCardWidthForDismissalAction];
  v16 = v15;

  v17 = [(SBSceneResizeTransitionSwitcherModifier *)v11 initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:toAppLayout minimumCardWithForDismissal:v16];

  return v17;
}

- (id)handleTransitionEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBSceneResizeGestureRootSwitcherModifier;
  eventCopy = event;
  v5 = [(SBGestureRootSwitcherModifier *)&v9 handleTransitionEvent:eventCopy];
  toAppLayout = [eventCopy toAppLayout];

  appLayout = self->_appLayout;
  self->_appLayout = toAppLayout;

  return v5;
}

@end