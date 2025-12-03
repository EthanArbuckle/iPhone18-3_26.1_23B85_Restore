@interface SBMoveGestureRootFloatingSwitcherModifier
- (SBMoveGestureRootFloatingSwitcherModifier)initWithInitialFloatingConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)handleTransitionEvent:(id)event;
- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier;
@end

@implementation SBMoveGestureRootFloatingSwitcherModifier

- (SBMoveGestureRootFloatingSwitcherModifier)initWithInitialFloatingConfiguration:(int64_t)configuration interfaceOrientation:(int64_t)orientation
{
  v10.receiver = self;
  v10.super_class = SBMoveGestureRootFloatingSwitcherModifier;
  v6 = [(SBGestureRootSwitcherModifier *)&v10 initWithStartingEnvironmentMode:3];
  if (v6)
  {
    IsValid = SBFloatingConfigurationIsValid(configuration);
    configurationCopy = 4;
    if (IsValid)
    {
      configurationCopy = configuration;
    }

    v6->_currentFloatingConfiguration = configurationCopy;
    v6->_interfaceOrientation = orientation;
  }

  return v6;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy phase] == 1)
  {
    self->_currentFloatingConfiguration = [eventCopy toFloatingConfiguration];
  }

  v7.receiver = self;
  v7.super_class = SBMoveGestureRootFloatingSwitcherModifier;
  v5 = [(SBGestureRootSwitcherModifier *)&v7 handleTransitionEvent:eventCopy];

  return v5;
}

- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier
{
  eventCopy = event;
  v6 = [SBMoveGestureFloatingSwitcherModifier alloc];
  gestureID = [eventCopy gestureID];

  v8 = [(SBMoveGestureFloatingSwitcherModifier *)v6 initWithGestureID:gestureID initialFloatingConfiguration:self->_currentFloatingConfiguration interfaceOrientation:self->_interfaceOrientation];

  return v8;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier
{
  eventCopy = event;
  transitionID = [eventCopy transitionID];
  v6 = [SBMoveFloatingConfigurationFloatingSwitcherModifier alloc];
  fromFloatingConfiguration = [eventCopy fromFloatingConfiguration];
  toFloatingConfiguration = [eventCopy toFloatingConfiguration];

  v9 = [(SBMoveFloatingConfigurationFloatingSwitcherModifier *)v6 initWithTransitionID:transitionID fromFloatingConfiguration:fromFloatingConfiguration toFloatingConfiguration:toFloatingConfiguration];

  return v9;
}

@end