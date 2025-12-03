@interface SBAwayViewPluginController
+ (void)disableBundleNamed:(id)named deactivationContext:(id)context;
+ (void)enableBundleNamed:(id)named activationContext:(id)context;
- (BOOL)pluginAnimatesAppearanceTransition:(BOOL)transition;
- (BOOL)pluginHandleEvent:(int64_t)event;
- (SBAwayViewPluginController)init;
- (SBLockScreenPluginAction)pluginUnlockAction;
- (SBLockScreenPluginAgent)pluginAgent;
- (SBLockScreenPluginAppearance)pluginAppearance;
- (id)_legibilitySettings;
- (id)pluginAnimateAppearanceTransition:(BOOL)transition withCompletion:(id)completion;
- (int64_t)notificationBehavior;
- (int64_t)orientation;
- (int64_t)presentationStyle;
- (void)_updateAppearanceAndNotify:(BOOL)notify;
- (void)disable;
- (void)pluginDidDeactivateWithContext:(id)context;
- (void)pluginWillActivateWithContext:(id)context;
- (void)purgeView;
- (void)setViewCanBeDisplayed:(BOOL)displayed;
@end

@implementation SBAwayViewPluginController

- (SBAwayViewPluginController)init
{
  v3.receiver = self;
  v3.super_class = SBAwayViewPluginController;
  result = [(SBAwayViewPluginController *)&v3 init];
  if (result)
  {
    result->_viewCanBeDisplayed = 1;
  }

  return result;
}

- (void)_updateAppearanceAndNotify:(BOOL)notify
{
  appearance = self->_appearance;
  if (!appearance)
  {
    return;
  }

  notifyCopy = notify;
  [(SBLockScreenPluginAppearanceContext *)appearance setHidden:[(SBAwayViewPluginController *)self viewCanBeDisplayed]^ 1];
  array = [MEMORY[0x277CBEB18] array];
  if (![(SBAwayViewPluginController *)self showStatusBar])
  {
    v6 = [SBLockScreenElementOverride overrideForHiddenElement:1];
    [array addObject:v6];
  }

  if (![(SBAwayViewPluginController *)self showDateView])
  {
    v7 = [SBLockScreenElementOverride overrideForHiddenElement:2];
    [array addObject:v7];
  }

  if ([(SBAwayViewPluginController *)self hasCustomSubtitle])
  {
    v8 = [SBLockScreenElementOverride overrideForElement:3];
    customSubtitleText = [(SBAwayViewPluginController *)self customSubtitleText];
    [v8 setText:customSubtitleText];

LABEL_11:
    [array addObject:v8];

    v11 = array;
    goto LABEL_12;
  }

  showDate = [(SBAwayViewPluginController *)self showDate];
  v11 = array;
  if (!showDate)
  {
    v8 = [SBLockScreenElementOverride overrideForHiddenElement:3];
    [v8 setText:&stru_282FD6FB8];
    goto LABEL_11;
  }

LABEL_12:
  [(SBLockScreenPluginAppearanceContext *)self->_appearance setElementOverrides:v11];
  if ([(SBAwayViewPluginController *)self allowsSiri])
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  if (![(SBAwayViewPluginController *)self allowsLockScreenCamera])
  {
    v12 |= 4uLL;
  }

  if (![(SBAwayViewPluginController *)self allowsUnlocking])
  {
    v12 |= 8uLL;
  }

  if (![(SBAwayViewPluginController *)self allowsLogout])
  {
    v12 |= 0x10uLL;
  }

  if (![(SBAwayViewPluginController *)self wantsMesaAutoUnlock])
  {
    v12 |= 0x20uLL;
  }

  if (![(SBAwayViewPluginController *)self allowsLockScreenMediaControls])
  {
    v12 |= 0x40uLL;
  }

  if (![(SBAwayViewPluginController *)self allowsControlCenter])
  {
    v12 |= 0x100uLL;
  }

  if ([(SBAwayViewPluginController *)self allowsScreenshots])
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 | 0x200;
  }

  [(SBLockScreenPluginAppearanceContext *)self->_appearance setRestrictedCapabilities:v13];
  overlayStyle = [(SBAwayViewPluginController *)self overlayStyle];
  if (overlayStyle <= 3)
  {
    [(SBLockScreenPluginAppearanceContext *)self->_appearance setBackgroundStyle:overlayStyle];
  }

  [(SBLockScreenPluginAppearanceContext *)self->_appearance setPresentationStyle:[(SBAwayViewPluginController *)self presentationStyle]];
  [(SBLockScreenPluginAppearanceContext *)self->_appearance setNotificationBehavior:[(SBAwayViewPluginController *)self notificationBehavior]];
  v15 = self->_appearance;
  _legibilitySettings = [(SBAwayViewPluginController *)self _legibilitySettings];
  [(SBLockScreenPluginAppearanceContext *)v15 setLegibilitySettings:_legibilitySettings];

  if (notifyCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_agent);
    [WeakRetained pluginController:self updateAppearance:self->_appearance];
  }
}

- (id)_legibilitySettings
{
  legibilitySettings = [(SBAwayViewPluginController *)self legibilitySettings];
  if (legibilitySettings)
  {
    v4 = legibilitySettings;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v6 = [SBLockScreenLegibilitySettings alloc];
      style = [(SBLockScreenLegibilitySettings *)v4 style];
      primaryColor = [(SBLockScreenLegibilitySettings *)v4 primaryColor];
      secondaryColor = [(SBLockScreenLegibilitySettings *)v4 secondaryColor];
      shadowColor = [(SBLockScreenLegibilitySettings *)v4 shadowColor];
      v5 = [(SBLockScreenLegibilitySettings *)v6 initWithStyle:style primaryColor:primaryColor secondaryColor:secondaryColor shadowColor:shadowColor];

      [(SBLockScreenLegibilitySettings *)v5 setVibrancyDisabled:[(SBAwayViewPluginController *)self legibilitySettingsOverridesVibrancy]];
      if ([(SBAwayViewPluginController *)self isContentViewWhiteUnderSlideToUnlockText])
      {
        whiteColor = [MEMORY[0x277D75348] whiteColor];
        [(SBLockScreenLegibilitySettings *)v5 setBackgroundColorHint:whiteColor];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBLockScreenPluginAppearance)pluginAppearance
{
  appearance = self->_appearance;
  if (!appearance)
  {
    v4 = objc_alloc_init(SBLockScreenPluginMutableAppearanceContext);
    v5 = self->_appearance;
    self->_appearance = v4;

    [(SBAwayViewPluginController *)self _updateAppearanceAndNotify:0];
    appearance = self->_appearance;
  }

  return appearance;
}

- (void)pluginWillActivateWithContext:(id)context
{
  userInfo = [context userInfo];
  [(SBAwayViewPluginController *)self setActivationContext:userInfo];
}

- (void)pluginDidDeactivateWithContext:(id)context
{
  userInfo = [context userInfo];
  [(SBAwayViewPluginController *)self setDeactivationContext:userInfo];

  [(SBAwayViewPluginController *)self purgeView];

  [(SBAwayViewPluginController *)self setPluginAgent:0];
}

- (SBLockScreenPluginAction)pluginUnlockAction
{
  slideToUnlockText = [(SBAwayViewPluginController *)self slideToUnlockText];
  bundleIDForUnlock = [(SBAwayViewPluginController *)self bundleIDForUnlock];
  if (slideToUnlockText | bundleIDForUnlock)
  {
    v5 = [SBLockScreenPluginApplicationAction actionWithBundleID:bundleIDForUnlock];
    [v5 setLabel:slideToUnlockText];
    [v5 setTransitionStyle:{-[SBAwayViewPluginController unlockAnimationStyleForDestinationApp:](self, "unlockAnimationStyleForDestinationApp:", bundleIDForUnlock)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)pluginHandleEvent:(int64_t)event
{
  selfCopy = self;
  LOBYTE(self) = 0;
  if (event > 4)
  {
    if (event > 6)
    {
      if (event == 7)
      {
        v4 = selfCopy;
        v5 = 0;
      }

      else
      {
        if (event != 8)
        {
          return self;
        }

        v4 = selfCopy;
        v5 = 1;
      }

      LOBYTE(self) = [(SBAwayViewPluginController *)v4 handleHeadsetButtonPressed:v5];
    }

    else if (event == 5)
    {

      LOBYTE(self) = [(SBAwayViewPluginController *)selfCopy handleVolumeUpButtonPressed];
    }

    else
    {

      LOBYTE(self) = [(SBAwayViewPluginController *)selfCopy handleVolumeDownButtonPressed];
    }
  }

  else
  {
    if (event <= 2)
    {
      if (event == 1)
      {
        LODWORD(self) = [(SBAwayViewPluginController *)selfCopy shouldDisableOnUnlock];
        if (!self)
        {
          return self;
        }
      }

      else
      {
        if (event != 2)
        {
          return self;
        }

        LODWORD(self) = [(SBAwayViewPluginController *)selfCopy shouldDisableOnRelock];
        if (!self)
        {
          return self;
        }
      }

      [(SBAwayViewPluginController *)selfCopy disable];
      LOBYTE(self) = 1;
      return self;
    }

    if (event == 3)
    {

      LOBYTE(self) = [(SBAwayViewPluginController *)selfCopy handleMenuButtonTap];
    }

    else
    {

      LOBYTE(self) = [(SBAwayViewPluginController *)selfCopy handleLockButtonPressed];
    }
  }

  return self;
}

- (BOOL)pluginAnimatesAppearanceTransition:(BOOL)transition
{
  if (!transition)
  {
    return 0;
  }

  enableTransitionBlock = [(SBAwayViewPluginController *)self enableTransitionBlock];
  v4 = enableTransitionBlock != 0;

  return v4;
}

- (id)pluginAnimateAppearanceTransition:(BOOL)transition withCompletion:(id)completion
{
  transitionCopy = transition;
  completionCopy = completion;
  v7 = completionCopy;
  if (transitionCopy)
  {
    enableTransitionBlock = [(SBAwayViewPluginController *)self enableTransitionBlock];
    v9 = enableTransitionBlock == 0;
    if (enableTransitionBlock)
    {
      v10 = MEMORY[0x277CF0BA0];
      v11 = MEMORY[0x277CCACA8];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v11 stringWithFormat:@"Plugin %@ did not call transition completion block", v13];
      v15 = [v10 sentinelWithExceptionReason:v14];

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __79__SBAwayViewPluginController_pluginAnimateAppearanceTransition_withCompletion___block_invoke;
      v19[3] = &unk_27836B738;
      v16 = v15;
      v20 = v16;
      v21 = v7;
      if ((enableTransitionBlock)[2](enableTransitionBlock, v19) <= 0.0)
      {
        v17 = 0;
      }

      else
      {
        v17 = [MEMORY[0x277CF0B70] settingsWithDuration:?];
      }
    }

    else
    {
      v17 = 0;
    }

    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = 0;
    v9 = 1;
    if (!completionCopy)
    {
      goto LABEL_13;
    }
  }

  if (v9)
  {
    v7[2](v7);
  }

LABEL_13:

  return v17;
}

uint64_t __79__SBAwayViewPluginController_pluginAnimateAppearanceTransition_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) signal];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)purgeView
{
  viewIfLoaded = [(SBAwayViewPluginController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    viewIfLoaded2 = [(SBAwayViewPluginController *)self viewIfLoaded];
    [viewIfLoaded2 removeFromSuperview];

    [(SBAwayViewPluginController *)self setView:0];
  }
}

- (void)setViewCanBeDisplayed:(BOOL)displayed
{
  if (self->_viewCanBeDisplayed != displayed)
  {
    self->_viewCanBeDisplayed = displayed;
    [(SBAwayViewPluginController *)self _updateAppearanceAndNotify:1];
  }
}

- (int64_t)orientation
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  statusBarOrientation = [mEMORY[0x277D75128] statusBarOrientation];

  return statusBarOrientation;
}

- (void)disable
{
  WeakRetained = objc_loadWeakRetained(&self->_agent);
  [WeakRetained deactivatePluginController:self];
}

- (int64_t)presentationStyle
{
  if ([(SBAwayViewPluginController *)self viewWantsOverlayLayout])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)notificationBehavior
{
  if ([(SBAwayViewPluginController *)self disablesAwayItemsCompletely])
  {
    return 1;
  }

  if ([(SBAwayViewPluginController *)self shouldAutoHideNotifications])
  {
    return 2;
  }

  return 0;
}

+ (void)enableBundleNamed:(id)named activationContext:(id)context
{
  v5 = MEMORY[0x277D66B20];
  contextCopy = context;
  namedCopy = named;
  v8 = objc_alloc_init(v5);
  [v8 enableLockScreenBundle:namedCopy withContext:contextCopy];
}

+ (void)disableBundleNamed:(id)named deactivationContext:(id)context
{
  v5 = MEMORY[0x277D66B20];
  contextCopy = context;
  namedCopy = named;
  v8 = objc_alloc_init(v5);
  [v8 disableLockScreenBundle:namedCopy withContext:contextCopy];
}

- (SBLockScreenPluginAgent)pluginAgent
{
  WeakRetained = objc_loadWeakRetained(&self->_agent);

  return WeakRetained;
}

@end