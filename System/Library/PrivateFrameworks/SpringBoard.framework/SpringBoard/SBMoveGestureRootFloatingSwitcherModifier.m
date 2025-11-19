@interface SBMoveGestureRootFloatingSwitcherModifier
- (SBMoveGestureRootFloatingSwitcherModifier)initWithInitialFloatingConfiguration:(int64_t)a3 interfaceOrientation:(int64_t)a4;
- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4;
- (id)handleTransitionEvent:(id)a3;
- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4;
@end

@implementation SBMoveGestureRootFloatingSwitcherModifier

- (SBMoveGestureRootFloatingSwitcherModifier)initWithInitialFloatingConfiguration:(int64_t)a3 interfaceOrientation:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = SBMoveGestureRootFloatingSwitcherModifier;
  v6 = [(SBGestureRootSwitcherModifier *)&v10 initWithStartingEnvironmentMode:3];
  if (v6)
  {
    IsValid = SBFloatingConfigurationIsValid(a3);
    v8 = 4;
    if (IsValid)
    {
      v8 = a3;
    }

    v6->_currentFloatingConfiguration = v8;
    v6->_interfaceOrientation = a4;
  }

  return v6;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  if ([v4 phase] == 1)
  {
    self->_currentFloatingConfiguration = [v4 toFloatingConfiguration];
  }

  v7.receiver = self;
  v7.super_class = SBMoveGestureRootFloatingSwitcherModifier;
  v5 = [(SBGestureRootSwitcherModifier *)&v7 handleTransitionEvent:v4];

  return v5;
}

- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4
{
  v5 = a3;
  v6 = [SBMoveGestureFloatingSwitcherModifier alloc];
  v7 = [v5 gestureID];

  v8 = [(SBMoveGestureFloatingSwitcherModifier *)v6 initWithGestureID:v7 initialFloatingConfiguration:self->_currentFloatingConfiguration interfaceOrientation:self->_interfaceOrientation];

  return v8;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4
{
  v4 = a3;
  v5 = [v4 transitionID];
  v6 = [SBMoveFloatingConfigurationFloatingSwitcherModifier alloc];
  v7 = [v4 fromFloatingConfiguration];
  v8 = [v4 toFloatingConfiguration];

  v9 = [(SBMoveFloatingConfigurationFloatingSwitcherModifier *)v6 initWithTransitionID:v5 fromFloatingConfiguration:v7 toFloatingConfiguration:v8];

  return v9;
}

@end