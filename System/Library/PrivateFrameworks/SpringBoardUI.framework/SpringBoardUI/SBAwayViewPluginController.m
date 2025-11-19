@interface SBAwayViewPluginController
+ (void)disableBundleNamed:(id)a3 deactivationContext:(id)a4;
+ (void)enableBundleNamed:(id)a3 activationContext:(id)a4;
- (BOOL)pluginAnimatesAppearanceTransition:(BOOL)a3;
- (BOOL)pluginHandleEvent:(int64_t)a3;
- (SBAwayViewPluginController)init;
- (SBLockScreenPluginAction)pluginUnlockAction;
- (SBLockScreenPluginAgent)pluginAgent;
- (SBLockScreenPluginAppearance)pluginAppearance;
- (id)_legibilitySettings;
- (id)pluginAnimateAppearanceTransition:(BOOL)a3 withCompletion:(id)a4;
- (int64_t)notificationBehavior;
- (int64_t)orientation;
- (int64_t)presentationStyle;
- (void)_updateAppearanceAndNotify:(BOOL)a3;
- (void)disable;
- (void)pluginDidDeactivateWithContext:(id)a3;
- (void)pluginWillActivateWithContext:(id)a3;
- (void)purgeView;
- (void)setViewCanBeDisplayed:(BOOL)a3;
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

- (void)_updateAppearanceAndNotify:(BOOL)a3
{
  appearance = self->_appearance;
  if (!appearance)
  {
    return;
  }

  v4 = a3;
  [(SBLockScreenPluginAppearanceContext *)appearance setHidden:[(SBAwayViewPluginController *)self viewCanBeDisplayed]^ 1];
  v18 = [MEMORY[0x277CBEB18] array];
  if (![(SBAwayViewPluginController *)self showStatusBar])
  {
    v6 = [SBLockScreenElementOverride overrideForHiddenElement:1];
    [v18 addObject:v6];
  }

  if (![(SBAwayViewPluginController *)self showDateView])
  {
    v7 = [SBLockScreenElementOverride overrideForHiddenElement:2];
    [v18 addObject:v7];
  }

  if ([(SBAwayViewPluginController *)self hasCustomSubtitle])
  {
    v8 = [SBLockScreenElementOverride overrideForElement:3];
    v9 = [(SBAwayViewPluginController *)self customSubtitleText];
    [v8 setText:v9];

LABEL_11:
    [v18 addObject:v8];

    v11 = v18;
    goto LABEL_12;
  }

  v10 = [(SBAwayViewPluginController *)self showDate];
  v11 = v18;
  if (!v10)
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
  v14 = [(SBAwayViewPluginController *)self overlayStyle];
  if (v14 <= 3)
  {
    [(SBLockScreenPluginAppearanceContext *)self->_appearance setBackgroundStyle:v14];
  }

  [(SBLockScreenPluginAppearanceContext *)self->_appearance setPresentationStyle:[(SBAwayViewPluginController *)self presentationStyle]];
  [(SBLockScreenPluginAppearanceContext *)self->_appearance setNotificationBehavior:[(SBAwayViewPluginController *)self notificationBehavior]];
  v15 = self->_appearance;
  v16 = [(SBAwayViewPluginController *)self _legibilitySettings];
  [(SBLockScreenPluginAppearanceContext *)v15 setLegibilitySettings:v16];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_agent);
    [WeakRetained pluginController:self updateAppearance:self->_appearance];
  }
}

- (id)_legibilitySettings
{
  v3 = [(SBAwayViewPluginController *)self legibilitySettings];
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v6 = [SBLockScreenLegibilitySettings alloc];
      v7 = [(SBLockScreenLegibilitySettings *)v4 style];
      v8 = [(SBLockScreenLegibilitySettings *)v4 primaryColor];
      v9 = [(SBLockScreenLegibilitySettings *)v4 secondaryColor];
      v10 = [(SBLockScreenLegibilitySettings *)v4 shadowColor];
      v5 = [(SBLockScreenLegibilitySettings *)v6 initWithStyle:v7 primaryColor:v8 secondaryColor:v9 shadowColor:v10];

      [(SBLockScreenLegibilitySettings *)v5 setVibrancyDisabled:[(SBAwayViewPluginController *)self legibilitySettingsOverridesVibrancy]];
      if ([(SBAwayViewPluginController *)self isContentViewWhiteUnderSlideToUnlockText])
      {
        v11 = [MEMORY[0x277D75348] whiteColor];
        [(SBLockScreenLegibilitySettings *)v5 setBackgroundColorHint:v11];
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

- (void)pluginWillActivateWithContext:(id)a3
{
  v4 = [a3 userInfo];
  [(SBAwayViewPluginController *)self setActivationContext:v4];
}

- (void)pluginDidDeactivateWithContext:(id)a3
{
  v4 = [a3 userInfo];
  [(SBAwayViewPluginController *)self setDeactivationContext:v4];

  [(SBAwayViewPluginController *)self purgeView];

  [(SBAwayViewPluginController *)self setPluginAgent:0];
}

- (SBLockScreenPluginAction)pluginUnlockAction
{
  v3 = [(SBAwayViewPluginController *)self slideToUnlockText];
  v4 = [(SBAwayViewPluginController *)self bundleIDForUnlock];
  if (v3 | v4)
  {
    v5 = [SBLockScreenPluginApplicationAction actionWithBundleID:v4];
    [v5 setLabel:v3];
    [v5 setTransitionStyle:{-[SBAwayViewPluginController unlockAnimationStyleForDestinationApp:](self, "unlockAnimationStyleForDestinationApp:", v4)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)pluginHandleEvent:(int64_t)a3
{
  v3 = self;
  LOBYTE(self) = 0;
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        v4 = v3;
        v5 = 0;
      }

      else
      {
        if (a3 != 8)
        {
          return self;
        }

        v4 = v3;
        v5 = 1;
      }

      LOBYTE(self) = [(SBAwayViewPluginController *)v4 handleHeadsetButtonPressed:v5];
    }

    else if (a3 == 5)
    {

      LOBYTE(self) = [(SBAwayViewPluginController *)v3 handleVolumeUpButtonPressed];
    }

    else
    {

      LOBYTE(self) = [(SBAwayViewPluginController *)v3 handleVolumeDownButtonPressed];
    }
  }

  else
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        LODWORD(self) = [(SBAwayViewPluginController *)v3 shouldDisableOnUnlock];
        if (!self)
        {
          return self;
        }
      }

      else
      {
        if (a3 != 2)
        {
          return self;
        }

        LODWORD(self) = [(SBAwayViewPluginController *)v3 shouldDisableOnRelock];
        if (!self)
        {
          return self;
        }
      }

      [(SBAwayViewPluginController *)v3 disable];
      LOBYTE(self) = 1;
      return self;
    }

    if (a3 == 3)
    {

      LOBYTE(self) = [(SBAwayViewPluginController *)v3 handleMenuButtonTap];
    }

    else
    {

      LOBYTE(self) = [(SBAwayViewPluginController *)v3 handleLockButtonPressed];
    }
  }

  return self;
}

- (BOOL)pluginAnimatesAppearanceTransition:(BOOL)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [(SBAwayViewPluginController *)self enableTransitionBlock];
  v4 = v3 != 0;

  return v4;
}

- (id)pluginAnimateAppearanceTransition:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (v4)
  {
    v8 = [(SBAwayViewPluginController *)self enableTransitionBlock];
    v9 = v8 == 0;
    if (v8)
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
      if ((v8)[2](v8, v19) <= 0.0)
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
    if (!v6)
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
  v3 = [(SBAwayViewPluginController *)self viewIfLoaded];

  if (v3)
  {
    v4 = [(SBAwayViewPluginController *)self viewIfLoaded];
    [v4 removeFromSuperview];

    [(SBAwayViewPluginController *)self setView:0];
  }
}

- (void)setViewCanBeDisplayed:(BOOL)a3
{
  if (self->_viewCanBeDisplayed != a3)
  {
    self->_viewCanBeDisplayed = a3;
    [(SBAwayViewPluginController *)self _updateAppearanceAndNotify:1];
  }
}

- (int64_t)orientation
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 statusBarOrientation];

  return v3;
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

+ (void)enableBundleNamed:(id)a3 activationContext:(id)a4
{
  v5 = MEMORY[0x277D66B20];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 enableLockScreenBundle:v7 withContext:v6];
}

+ (void)disableBundleNamed:(id)a3 deactivationContext:(id)a4
{
  v5 = MEMORY[0x277D66B20];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 disableLockScreenBundle:v7 withContext:v6];
}

- (SBLockScreenPluginAgent)pluginAgent
{
  WeakRetained = objc_loadWeakRetained(&self->_agent);

  return WeakRetained;
}

@end