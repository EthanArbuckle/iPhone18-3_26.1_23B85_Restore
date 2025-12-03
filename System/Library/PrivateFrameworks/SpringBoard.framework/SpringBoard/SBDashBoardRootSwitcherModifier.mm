@interface SBDashBoardRootSwitcherModifier
- (BOOL)shouldUseBackgroundWallpaperTreatmentForIndex:(unint64_t)index;
- (Class)_defaultMultitaskingModifierClass;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenScale;
- (id)_newMultitaskingModifier;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event;
- (id)floorModifierForTransitionEvent:(id)event;
- (id)gestureModifierForGestureEvent:(id)event;
- (id)multitaskingModifierForEvent:(id)event;
- (id)transitionModifierForMainTransitionEvent:(id)event;
@end

@implementation SBDashBoardRootSwitcherModifier

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event
{
  eventCopy = event;
  fromAppLayout = [eventCopy fromAppLayout];
  toAppLayout = [eventCopy toAppLayout];
  fromEnvironmentMode = [eventCopy fromEnvironmentMode];
  toEnvironmentMode = [eventCopy toEnvironmentMode];
  v8 = BSEqualObjects();
  v9 = 0;
  v11 = fromEnvironmentMode != 3 && toEnvironmentMode != 3;
  if ((v8 & 1) == 0 && !v11)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    fromDisplayItemsPendingTermination = [eventCopy fromDisplayItemsPendingTermination];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__SBDashBoardRootSwitcherModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke;
    v16[3] = &unk_2783A8C90;
    v13 = fromAppLayout;
    v17 = v13;
    v14 = [fromDisplayItemsPendingTermination bs_containsObjectPassingTest:v16];

    if (v13 && (v14 & 1) == 0)
    {
      [v9 addObject:v13];
    }

    if (toAppLayout)
    {
      [v9 addObject:toAppLayout];
    }
  }

  return v9;
}

- (BOOL)shouldUseBackgroundWallpaperTreatmentForIndex:(unint64_t)index
{
  switcherSettings = [(SBDashBoardRootSwitcherModifier *)self switcherSettings];
  v4 = [switcherSettings effectiveSwitcherStyle] == 1;

  return v4;
}

- (double)homeScreenScale
{
  isEphemeralSwitcher = [(SBDashBoardRootSwitcherModifier *)self isEphemeralSwitcher];
  result = 1.0;
  if ((isEphemeralSwitcher & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = SBDashBoardRootSwitcherModifier;
    [(SBDashBoardRootSwitcherModifier *)&v5 homeScreenScale];
  }

  return result;
}

- (double)homeScreenBackdropBlurProgress
{
  isEphemeralSwitcher = [(SBDashBoardRootSwitcherModifier *)self isEphemeralSwitcher];
  result = 0.0;
  if ((isEphemeralSwitcher & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = SBDashBoardRootSwitcherModifier;
    [(SBDashBoardRootSwitcherModifier *)&v5 homeScreenBackdropBlurProgress];
  }

  return result;
}

- (id)gestureModifierForGestureEvent:(id)event
{
  v4 = [SBHomeGestureRootSwitcherModifier alloc];
  _newMultitaskingModifier = [(SBDashBoardRootSwitcherModifier *)self _newMultitaskingModifier];
  v6 = [(SBHomeGestureRootSwitcherModifier *)v4 initWithStartingEnvironmentMode:3 multitaskingModifier:_newMultitaskingModifier];

  [(SBHomeGestureRootSwitcherModifier *)v6 setResignsTransitionIntoAppSwitcher:1];

  return v6;
}

- (id)transitionModifierForMainTransitionEvent:(id)event
{
  eventCopy = event;
  transitionID = [eventCopy transitionID];
  fromEnvironmentMode = [eventCopy fromEnvironmentMode];
  toEnvironmentMode = [eventCopy toEnvironmentMode];
  fromAppLayout = [eventCopy fromAppLayout];
  toAppLayout = [eventCopy toAppLayout];
  if (fromEnvironmentMode != 3)
  {
    goto LABEL_6;
  }

  if (toEnvironmentMode == 3)
  {
    v15 = [[SBCrossblurDosidoSwitcherModifier alloc] initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:toAppLayout direction:0];
LABEL_11:
    v14 = v15;
    goto LABEL_13;
  }

  if (toEnvironmentMode != 1)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_13;
  }

  if ([eventCopy isIconZoomDisabled])
  {
    v10 = *MEMORY[0x277CBF398];
    v11 = *(MEMORY[0x277CBF398] + 8);
    v12 = *(MEMORY[0x277CBF398] + 16);
    v13 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    [(SBDashBoardRootSwitcherModifier *)self homeScreenIconFrameForAppLayout:fromAppLayout];
  }

  if (CGRectIsNull(*&v10))
  {
    switcherSettings = [(SBDashBoardRootSwitcherModifier *)self switcherSettings];
    [switcherSettings switcherCenterYOffsetPercentOfScreenHeight];
    v18 = v17;

    v15 = [[SBFullScreenToHomeCenterZoomDownSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:fromAppLayout offsetYPercentOfScreenHeight:v18];
    goto LABEL_11;
  }

  v14 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:fromAppLayout direction:1];
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v14 setShouldForceDefaultAnchorPointForTransition:0];
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v14 setShouldDockOrderFrontDuringTransition:0];
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v14 setSupportsGlassHighlight:0];
LABEL_13:

  return v14;
}

- (id)floorModifierForTransitionEvent:(id)event
{
  eventCopy = event;
  v4 = eventCopy;
  if (!eventCopy)
  {
    goto LABEL_5;
  }

  toEnvironmentMode = [eventCopy toEnvironmentMode];
  if (toEnvironmentMode == 1)
  {
    v7 = objc_alloc_init(SBHomeScreenSwitcherModifier);
    if (!v7)
    {
LABEL_5:
      v7 = objc_alloc_init(SBHomeScreenSwitcherModifier);
    }
  }

  else
  {
    if (toEnvironmentMode != 3)
    {
      goto LABEL_5;
    }

    toAppLayout = [v4 toAppLayout];
    v7 = [[SBFullScreenAppLayoutSwitcherModifier alloc] initWithActiveAppLayout:toAppLayout];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  return v7;
}

- (id)multitaskingModifierForEvent:(id)event
{
  _defaultMultitaskingModifierClass = [(SBDashBoardRootSwitcherModifier *)self _defaultMultitaskingModifierClass];
  multitaskingModifier = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  if (([multitaskingModifier isMemberOfClass:_defaultMultitaskingModifierClass] & 1) == 0)
  {
    _newMultitaskingModifier = [(SBDashBoardRootSwitcherModifier *)self _newMultitaskingModifier];

    multitaskingModifier = _newMultitaskingModifier;
  }

  return multitaskingModifier;
}

- (Class)_defaultMultitaskingModifierClass
{
  switcherSettings = [(SBDashBoardRootSwitcherModifier *)self switcherSettings];
  [(SBDashBoardRootSwitcherModifier *)self isReduceMotionEnabled];
  [switcherSettings effectiveSwitcherStyle];
  v4 = objc_opt_class();

  return v4;
}

- (id)_newMultitaskingModifier
{
  _defaultMultitaskingModifierClass = [(SBDashBoardRootSwitcherModifier *)self _defaultMultitaskingModifierClass];

  return objc_alloc_init(_defaultMultitaskingModifierClass);
}

@end