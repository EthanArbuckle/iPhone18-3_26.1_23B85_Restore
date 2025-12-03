@interface SBFloatingLowEndHardwareModifier
- (BOOL)_shouldDimAndBlockTouchesToAppsUnderFloating;
- (BOOL)switcherDimmingViewBlocksTouches;
- (SBFloatingLowEndHardwareModifier)initWithOptions:(unint64_t)options;
- (double)switcherDimmingAlpha;
- (id)handleTapOutsideToDismissEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (int64_t)_stashedFloatingConfigurationForFloatingConfiguration:(int64_t)configuration;
@end

@implementation SBFloatingLowEndHardwareModifier

- (SBFloatingLowEndHardwareModifier)initWithOptions:(unint64_t)options
{
  v5.receiver = self;
  v5.super_class = SBFloatingLowEndHardwareModifier;
  result = [(SBSwitcherModifier *)&v5 init];
  if (result)
  {
    result->_options = options;
  }

  return result;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  toFloatingAppLayout = [eventCopy toFloatingAppLayout];
  toFloatingSwitcherVisible = [eventCopy toFloatingSwitcherVisible];
  toEnvironmentMode = [eventCopy toEnvironmentMode];
  toAppLayout = [eventCopy toAppLayout];
  self->_floatingSwitcherVisible = toFloatingSwitcherVisible;
  self->_floatingConfiguration = [eventCopy toFloatingConfiguration];
  if (toEnvironmentMode == 3 && (toFloatingAppLayout != 0) | toFloatingSwitcherVisible & 1)
  {
    allItems = [toAppLayout allItems];
    self->_floatingAppVisibleOverSplitView = [allItems count] > 1;

    toAppLayoutWantsExclusiveForeground = [eventCopy toAppLayoutWantsExclusiveForeground];
  }

  else
  {
    toAppLayoutWantsExclusiveForeground = 0;
    self->_floatingAppVisibleOverSplitView = 0;
  }

  self->_floatingAppVisibleOverExclusiveForegroundApp = toAppLayoutWantsExclusiveForeground;
  if ([eventCopy phase] >= 2)
  {
    self->_shouldDimAndBlockTouches = [(SBFloatingLowEndHardwareModifier *)self _shouldDimAndBlockTouchesToAppsUnderFloating];
  }

  v13.receiver = self;
  v13.super_class = SBFloatingLowEndHardwareModifier;
  v11 = [(SBSwitcherModifier *)&v13 handleTransitionEvent:eventCopy];

  return v11;
}

- (id)handleTapOutsideToDismissEvent:(id)event
{
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = SBFloatingLowEndHardwareModifier;
  v5 = [(SBSwitcherModifier *)&v16 handleTapOutsideToDismissEvent:eventCopy];
  if (([eventCopy isHandled] & 1) == 0 && -[SBFloatingLowEndHardwareModifier _shouldDimAndBlockTouchesToAppsUnderFloating](self, "_shouldDimAndBlockTouchesToAppsUnderFloating") && !self->_floatingSwitcherVisible)
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
    [eventCopy handleWithReason:v14];

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

- (int64_t)_stashedFloatingConfigurationForFloatingConfiguration:(int64_t)configuration
{
  if (configuration > 4)
  {
    return 3;
  }

  else
  {
    return qword_21F8A77D8[configuration];
  }
}

@end