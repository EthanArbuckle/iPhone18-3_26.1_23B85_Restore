@interface SBFloatingLowEndHardwareModifier
- (BOOL)_shouldDimAndBlockTouchesToAppsUnderFloating;
- (BOOL)switcherDimmingViewBlocksTouches;
- (SBFloatingLowEndHardwareModifier)initWithOptions:(unint64_t)a3;
- (double)switcherDimmingAlpha;
- (id)handleTapOutsideToDismissEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (int64_t)_stashedFloatingConfigurationForFloatingConfiguration:(int64_t)a3;
@end

@implementation SBFloatingLowEndHardwareModifier

- (SBFloatingLowEndHardwareModifier)initWithOptions:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBFloatingLowEndHardwareModifier;
  result = [(SBSwitcherModifier *)&v5 init];
  if (result)
  {
    result->_options = a3;
  }

  return result;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 toFloatingAppLayout];
  v6 = [v4 toFloatingSwitcherVisible];
  v7 = [v4 toEnvironmentMode];
  v8 = [v4 toAppLayout];
  self->_floatingSwitcherVisible = v6;
  self->_floatingConfiguration = [v4 toFloatingConfiguration];
  if (v7 == 3 && (v5 != 0) | v6 & 1)
  {
    v9 = [v8 allItems];
    self->_floatingAppVisibleOverSplitView = [v9 count] > 1;

    v10 = [v4 toAppLayoutWantsExclusiveForeground];
  }

  else
  {
    v10 = 0;
    self->_floatingAppVisibleOverSplitView = 0;
  }

  self->_floatingAppVisibleOverExclusiveForegroundApp = v10;
  if ([v4 phase] >= 2)
  {
    self->_shouldDimAndBlockTouches = [(SBFloatingLowEndHardwareModifier *)self _shouldDimAndBlockTouchesToAppsUnderFloating];
  }

  v13.receiver = self;
  v13.super_class = SBFloatingLowEndHardwareModifier;
  v11 = [(SBSwitcherModifier *)&v13 handleTransitionEvent:v4];

  return v11;
}

- (id)handleTapOutsideToDismissEvent:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SBFloatingLowEndHardwareModifier;
  v5 = [(SBSwitcherModifier *)&v16 handleTapOutsideToDismissEvent:v4];
  if (([v4 isHandled] & 1) == 0 && -[SBFloatingLowEndHardwareModifier _shouldDimAndBlockTouchesToAppsUnderFloating](self, "_shouldDimAndBlockTouchesToAppsUnderFloating") && !self->_floatingSwitcherVisible)
  {
    v6 = [(SBFloatingLowEndHardwareModifier *)self _stashedFloatingConfigurationForFloatingConfiguration:self->_floatingConfiguration];
    v7 = [SBPerformTransitionSwitcherEventResponse alloc];
    v8 = [SBSwitcherTransitionRequest requestForStashingFloatingApplicationWithFloatingConfiguration:v6];
    v9 = [(SBPerformTransitionSwitcherEventResponse *)v7 initWithTransitionRequest:v8 gestureInitiated:0];

    v10 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v9 toResponse:v5];

    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"%@ handling tap outside by dismissing floating app.", v13];
    [v4 handleWithReason:v14];

    v5 = v10;
  }

  return v5;
}

- (double)switcherDimmingAlpha
{
  result = 0.5;
  if (!self->_shouldDimAndBlockTouches)
  {
    v3.receiver = self;
    v3.super_class = SBFloatingLowEndHardwareModifier;
    [(SBFloatingLowEndHardwareModifier *)&v3 homeScreenDimmingAlpha];
  }

  return result;
}

- (BOOL)switcherDimmingViewBlocksTouches
{
  if (self->_shouldDimAndBlockTouches)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = SBFloatingLowEndHardwareModifier;
  return [(SBFloatingLowEndHardwareModifier *)&v5 switcherDimmingViewBlocksTouches];
}

- (BOOL)_shouldDimAndBlockTouchesToAppsUnderFloating
{
  if (self->_floatingAppVisibleOverExclusiveForegroundApp)
  {
    v2 = 1;
  }

  else
  {
    v2 = self->_floatingAppVisibleOverSplitView & self->_options;
  }

  return v2 & 1;
}

- (int64_t)_stashedFloatingConfigurationForFloatingConfiguration:(int64_t)a3
{
  if (a3 > 4)
  {
    return 3;
  }

  else
  {
    return qword_21F8A77D8[a3];
  }
}

@end