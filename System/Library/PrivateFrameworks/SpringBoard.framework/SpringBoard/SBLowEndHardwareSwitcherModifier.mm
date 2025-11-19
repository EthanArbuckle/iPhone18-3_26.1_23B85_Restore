@interface SBLowEndHardwareSwitcherModifier
- (BOOL)_shouldSimplifyForOpenFolder;
- (BOOL)_shouldSimplifyForWidgetCenterAndLibrary;
- (SBLowEndHardwareSwitcherModifier)initWithSimplificationOptions:(unint64_t)a3;
- (double)homeScreenAlpha;
- (double)homeScreenScale;
- (double)wallpaperScale;
- (id)appLayoutsToResignActive;
- (id)handleTransitionEvent:(id)a3;
- (id)keyboardSuppressionMode;
@end

@implementation SBLowEndHardwareSwitcherModifier

- (id)appLayoutsToResignActive
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = SBLowEndHardwareSwitcherModifier;
  v3 = [(SBLowEndHardwareSwitcherModifier *)&v10 appLayoutsToResignActive];
  if ([(SBLowEndHardwareSwitcherModifier *)self _shouldResignActiveAppsUnderFloatingApp])
  {
    v11 = &unk_283372410;
    v4 = MEMORY[0x277CBEB98];
    v5 = [(SBLowEndHardwareSwitcherModifier *)self appLayouts];
    v6 = [v4 setWithArray:v5];
    v12[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    v8 = [v7 bs_dictionaryByAddingEntriesFromDictionary:v3];

    v3 = v8;
  }

  return v3;
}

- (double)wallpaperScale
{
  if ([(SBLowEndHardwareSwitcherModifier *)self _shouldSimplifyForOpenFolder]|| [(SBLowEndHardwareSwitcherModifier *)self _shouldSimplifyForWidgetCenterAndLibrary])
  {
    v3 = [(SBLowEndHardwareSwitcherModifier *)self switcherSettings];
    v4 = [v3 animationSettings];
    [v4 wallpaperScaleForMode:1];
    v6 = v5;

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBLowEndHardwareSwitcherModifier;
    [(SBLowEndHardwareSwitcherModifier *)&v8 wallpaperScale];
  }

  return result;
}

- (BOOL)_shouldSimplifyForOpenFolder
{
  if ((self->_options & 2) != 0)
  {
    return [(SBLowEndHardwareSwitcherModifier *)self homeScreenHasOpenFolder];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldSimplifyForWidgetCenterAndLibrary
{
  if (self->_options)
  {
    return [(SBLowEndHardwareSwitcherModifier *)self homeScreenHasWidgetCenterOrLibraryOpen];
  }

  else
  {
    return 0;
  }
}

- (double)homeScreenScale
{
  if ([(SBLowEndHardwareSwitcherModifier *)self _shouldSimplifyForOpenFolder]|| [(SBLowEndHardwareSwitcherModifier *)self _shouldSimplifyForWidgetCenterAndLibrary])
  {
    v3 = [(SBLowEndHardwareSwitcherModifier *)self switcherSettings];
    v4 = [v3 animationSettings];
    [v4 homeScreenScaleForMode:1];
    v6 = v5;

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBLowEndHardwareSwitcherModifier;
    [(SBLowEndHardwareSwitcherModifier *)&v8 homeScreenScale];
  }

  return result;
}

- (double)homeScreenAlpha
{
  if ([(SBLowEndHardwareSwitcherModifier *)self _shouldSimplifyForOpenFolder]|| [(SBLowEndHardwareSwitcherModifier *)self _shouldSimplifyForWidgetCenterAndLibrary])
  {
    v3 = [(SBLowEndHardwareSwitcherModifier *)self switcherSettings];
    v4 = [v3 animationSettings];
    [v4 homeScreenAlphaForMode:1];
    v6 = v5;

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBLowEndHardwareSwitcherModifier;
    [(SBLowEndHardwareSwitcherModifier *)&v8 homeScreenAlpha];
  }

  return result;
}

- (id)keyboardSuppressionMode
{
  v9.receiver = self;
  v9.super_class = SBLowEndHardwareSwitcherModifier;
  v3 = [(SBLowEndHardwareSwitcherModifier *)&v9 keyboardSuppressionMode];
  if (([v3 suppressesAllScenes] & 1) != 0 || !-[SBLowEndHardwareSwitcherModifier _shouldResignActiveAppsUnderFloatingApp](self, "_shouldResignActiveAppsUnderFloatingApp"))
  {
    v7 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = [(SBLowEndHardwareSwitcherModifier *)self appLayouts];
    v6 = [v4 setWithArray:v5];
    v7 = [SBSwitcherKeyboardSuppressionMode newSuppressionModeForSwitcherScenesFromAppLayouts:v6];
  }

  return v7;
}

- (SBLowEndHardwareSwitcherModifier)initWithSimplificationOptions:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBLowEndHardwareSwitcherModifier;
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
  v9 = v8;
  if (v7 == 3 && (v5 != 0) | v6 & 1)
  {
    v10 = [v8 allItems];
    self->_floatingAppVisibleOverSplitView = [v10 count] > 1;

    v11 = [v4 toAppLayoutWantsExclusiveForeground];
  }

  else
  {
    v11 = 0;
    self->_floatingAppVisibleOverSplitView = 0;
  }

  self->_floatingAppVisibleOverExclusiveForegroundApp = v11;
  v14.receiver = self;
  v14.super_class = SBLowEndHardwareSwitcherModifier;
  v12 = [(SBSwitcherModifier *)&v14 handleTransitionEvent:v4];

  return v12;
}

@end