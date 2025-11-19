@interface SBDashBoardRootSwitcherModifier
- (BOOL)shouldUseBackgroundWallpaperTreatmentForIndex:(unint64_t)a3;
- (Class)_defaultMultitaskingModifierClass;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenScale;
- (id)_newMultitaskingModifier;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3;
- (id)floorModifierForTransitionEvent:(id)a3;
- (id)gestureModifierForGestureEvent:(id)a3;
- (id)multitaskingModifierForEvent:(id)a3;
- (id)transitionModifierForMainTransitionEvent:(id)a3;
@end

@implementation SBDashBoardRootSwitcherModifier

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 fromAppLayout];
  v5 = [v3 toAppLayout];
  v6 = [v3 fromEnvironmentMode];
  v7 = [v3 toEnvironmentMode];
  v8 = BSEqualObjects();
  v9 = 0;
  v11 = v6 != 3 && v7 != 3;
  if ((v8 & 1) == 0 && !v11)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = [v3 fromDisplayItemsPendingTermination];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__SBDashBoardRootSwitcherModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke;
    v16[3] = &unk_2783A8C90;
    v13 = v4;
    v17 = v13;
    v14 = [v12 bs_containsObjectPassingTest:v16];

    if (v13 && (v14 & 1) == 0)
    {
      [v9 addObject:v13];
    }

    if (v5)
    {
      [v9 addObject:v5];
    }
  }

  return v9;
}

- (BOOL)shouldUseBackgroundWallpaperTreatmentForIndex:(unint64_t)a3
{
  v3 = [(SBDashBoardRootSwitcherModifier *)self switcherSettings];
  v4 = [v3 effectiveSwitcherStyle] == 1;

  return v4;
}

- (double)homeScreenScale
{
  v3 = [(SBDashBoardRootSwitcherModifier *)self isEphemeralSwitcher];
  result = 1.0;
  if ((v3 & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = SBDashBoardRootSwitcherModifier;
    [(SBDashBoardRootSwitcherModifier *)&v5 homeScreenScale];
  }

  return result;
}

- (double)homeScreenBackdropBlurProgress
{
  v3 = [(SBDashBoardRootSwitcherModifier *)self isEphemeralSwitcher];
  result = 0.0;
  if ((v3 & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = SBDashBoardRootSwitcherModifier;
    [(SBDashBoardRootSwitcherModifier *)&v5 homeScreenBackdropBlurProgress];
  }

  return result;
}

- (id)gestureModifierForGestureEvent:(id)a3
{
  v4 = [SBHomeGestureRootSwitcherModifier alloc];
  v5 = [(SBDashBoardRootSwitcherModifier *)self _newMultitaskingModifier];
  v6 = [(SBHomeGestureRootSwitcherModifier *)v4 initWithStartingEnvironmentMode:3 multitaskingModifier:v5];

  [(SBHomeGestureRootSwitcherModifier *)v6 setResignsTransitionIntoAppSwitcher:1];

  return v6;
}

- (id)transitionModifierForMainTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 transitionID];
  v6 = [v4 fromEnvironmentMode];
  v7 = [v4 toEnvironmentMode];
  v8 = [v4 fromAppLayout];
  v9 = [v4 toAppLayout];
  if (v6 != 3)
  {
    goto LABEL_6;
  }

  if (v7 == 3)
  {
    v15 = [[SBCrossblurDosidoSwitcherModifier alloc] initWithTransitionID:v5 fromAppLayout:v8 toAppLayout:v9 direction:0];
LABEL_11:
    v14 = v15;
    goto LABEL_13;
  }

  if (v7 != 1)
  {
LABEL_6:
    v14 = 0;
    goto LABEL_13;
  }

  if ([v4 isIconZoomDisabled])
  {
    v10 = *MEMORY[0x277CBF398];
    v11 = *(MEMORY[0x277CBF398] + 8);
    v12 = *(MEMORY[0x277CBF398] + 16);
    v13 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    [(SBDashBoardRootSwitcherModifier *)self homeScreenIconFrameForAppLayout:v8];
  }

  if (CGRectIsNull(*&v10))
  {
    v16 = [(SBDashBoardRootSwitcherModifier *)self switcherSettings];
    [v16 switcherCenterYOffsetPercentOfScreenHeight];
    v18 = v17;

    v15 = [[SBFullScreenToHomeCenterZoomDownSwitcherModifier alloc] initWithTransitionID:v5 appLayout:v8 offsetYPercentOfScreenHeight:v18];
    goto LABEL_11;
  }

  v14 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:v5 appLayout:v8 direction:1];
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v14 setShouldForceDefaultAnchorPointForTransition:0];
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v14 setShouldDockOrderFrontDuringTransition:0];
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v14 setSupportsGlassHighlight:0];
LABEL_13:

  return v14;
}

- (id)floorModifierForTransitionEvent:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = [v3 toEnvironmentMode];
  if (v5 == 1)
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
    if (v5 != 3)
    {
      goto LABEL_5;
    }

    v6 = [v4 toAppLayout];
    v7 = [[SBFullScreenAppLayoutSwitcherModifier alloc] initWithActiveAppLayout:v6];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  return v7;
}

- (id)multitaskingModifierForEvent:(id)a3
{
  v4 = [(SBDashBoardRootSwitcherModifier *)self _defaultMultitaskingModifierClass];
  v5 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  if (([v5 isMemberOfClass:v4] & 1) == 0)
  {
    v6 = [(SBDashBoardRootSwitcherModifier *)self _newMultitaskingModifier];

    v5 = v6;
  }

  return v5;
}

- (Class)_defaultMultitaskingModifierClass
{
  v3 = [(SBDashBoardRootSwitcherModifier *)self switcherSettings];
  [(SBDashBoardRootSwitcherModifier *)self isReduceMotionEnabled];
  [v3 effectiveSwitcherStyle];
  v4 = objc_opt_class();

  return v4;
}

- (id)_newMultitaskingModifier
{
  v2 = [(SBDashBoardRootSwitcherModifier *)self _defaultMultitaskingModifierClass];

  return objc_alloc_init(v2);
}

@end