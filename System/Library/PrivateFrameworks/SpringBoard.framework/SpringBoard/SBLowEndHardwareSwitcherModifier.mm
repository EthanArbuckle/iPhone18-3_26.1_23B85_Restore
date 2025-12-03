@interface SBLowEndHardwareSwitcherModifier
- (BOOL)_shouldSimplifyForOpenFolder;
- (BOOL)_shouldSimplifyForWidgetCenterAndLibrary;
- (SBLowEndHardwareSwitcherModifier)initWithSimplificationOptions:(unint64_t)options;
- (double)homeScreenAlpha;
- (double)homeScreenScale;
- (double)wallpaperScale;
- (id)appLayoutsToResignActive;
- (id)handleTransitionEvent:(id)event;
- (id)keyboardSuppressionMode;
@end

@implementation SBLowEndHardwareSwitcherModifier

- (id)appLayoutsToResignActive
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = SBLowEndHardwareSwitcherModifier;
  appLayoutsToResignActive = [(SBLowEndHardwareSwitcherModifier *)&v10 appLayoutsToResignActive];
  if ([(SBLowEndHardwareSwitcherModifier *)self _shouldResignActiveAppsUnderFloatingApp])
  {
    v11 = &unk_283372410;
    v4 = MEMORY[0x277CBEB98];
    appLayouts = [(SBLowEndHardwareSwitcherModifier *)self appLayouts];
    v6 = [v4 setWithArray:appLayouts];
    v12[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    v8 = [v7 bs_dictionaryByAddingEntriesFromDictionary:appLayoutsToResignActive];

    appLayoutsToResignActive = v8;
  }

  return appLayoutsToResignActive;
}

- (double)wallpaperScale
{
  if ([(SBLowEndHardwareSwitcherModifier *)self _shouldSimplifyForOpenFolder]|| [(SBLowEndHardwareSwitcherModifier *)self _shouldSimplifyForWidgetCenterAndLibrary])
  {
    switcherSettings = [(SBLowEndHardwareSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings wallpaperScaleForMode:1];
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
    switcherSettings = [(SBLowEndHardwareSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings homeScreenScaleForMode:1];
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
    switcherSettings = [(SBLowEndHardwareSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings homeScreenAlphaForMode:1];
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
  keyboardSuppressionMode = [(SBLowEndHardwareSwitcherModifier *)&v9 keyboardSuppressionMode];
  if (([keyboardSuppressionMode suppressesAllScenes] & 1) != 0 || !-[SBLowEndHardwareSwitcherModifier _shouldResignActiveAppsUnderFloatingApp](self, "_shouldResignActiveAppsUnderFloatingApp"))
  {
    v7 = keyboardSuppressionMode;
  }

  else
  {
    v4 = MEMORY[0x277CBEB98];
    appLayouts = [(SBLowEndHardwareSwitcherModifier *)self appLayouts];
    v6 = [v4 setWithArray:appLayouts];
    v7 = [SBSwitcherKeyboardSuppressionMode newSuppressionModeForSwitcherScenesFromAppLayouts:v6];
  }

  return v7;
}

- (SBLowEndHardwareSwitcherModifier)initWithSimplificationOptions:(unint64_t)options
{
  v5.receiver = self;
  v5.super_class = SBLowEndHardwareSwitcherModifier;
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
  v9 = toAppLayout;
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
  v14.receiver = self;
  v14.super_class = SBLowEndHardwareSwitcherModifier;
  v12 = [(SBSwitcherModifier *)&v14 handleTransitionEvent:eventCopy];

  return v12;
}

@end