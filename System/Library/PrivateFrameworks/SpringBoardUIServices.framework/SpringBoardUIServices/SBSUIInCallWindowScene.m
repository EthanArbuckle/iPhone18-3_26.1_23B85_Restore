@interface SBSUIInCallWindowScene
- (BOOL)isAmbientPresented;
- (BOOL)isBeingShownAboveCoverSheet;
- (BOOL)isScreenSharingPresentation;
- (BOOL)systemControlsShouldPresentAsEmbedded;
- (CGRect)windowedAccessoryCutoutFrameInScreen;
- (NSUUID)requestedPresentationConfigurationIdentifier;
- (SBSUIInCallWindowScene)initWithSession:(id)a3 connectionOptions:(id)a4;
- (SBUISystemApertureElement)associatedSystemApertureElement;
- (UIEdgeInsets)expanseHUDDodgingInsets;
- (id)systemApertureElementViewControllerProvider;
- (unint64_t)preferredStatusBarStyleOverridesToSuppress;
- (void)_associateWithSourceIfNeeded:(id)a3;
- (void)_handleDeviceLockAction:(id)a3;
- (void)_handleFrameChanged;
- (void)_handleHardwareButtonEventSceneActions:(id)a3;
- (void)_handleSourceDidConnect:(id)a3;
- (void)_invalidate;
- (void)_setAttachedToWindowedAccessory:(BOOL)a3 windowedAccessoryCutoutFrameInScreen:(CGRect)a4;
- (void)_startObservingSystemApertureSourceConnectNotifications;
- (void)_updatePresentationMode:(int64_t)a3 analyticsSource:(id)a4;
- (void)_updateValidationStateIfNeededForPresentationMode:(int64_t)a3;
- (void)requestKeyboardFocusIsUserInitiated:(BOOL)a3;
- (void)requestTransitionToPresentationMode:(int64_t)a3 isUserInitiated:(BOOL)a4 analyticsSource:(id)a5;
- (void)setAcceptsKeyboardFocus:(BOOL)a3;
- (void)setCallConnected:(BOOL)a3;
- (void)setExpanseHUDDodgingInsets:(UIEdgeInsets)a3;
- (void)setIdleTimerDisabled:(BOOL)a3;
- (void)setPreferredBackgroundActivitiesToSuppress:(id)a3;
- (void)setPreferredHardwareButtonEventTypes:(unint64_t)a3;
- (void)setPreferredStatusBarStyleOverridesToSuppress:(unint64_t)a3;
- (void)setPrefersBannersHiddenFromClonedDisplay:(BOOL)a3;
- (void)setPrefersHiddenWhenDismissed:(BOOL)a3;
- (void)setPrefersLockedIdleDurationOnCoversheet:(BOOL)a3;
- (void)setShouldBecomeVisibleWhenWakingDisplay:(BOOL)a3;
- (void)setShouldNeverBeShownWhenLaunchingFaceTime:(BOOL)a3;
- (void)setSupportsDeviceLockEvents:(BOOL)a3;
@end

@implementation SBSUIInCallWindowScene

- (SBSUIInCallWindowScene)initWithSession:(id)a3 connectionOptions:(id)a4
{
  v13.receiver = self;
  v13.super_class = SBSUIInCallWindowScene;
  v4 = [(SBSUIInCallWindowScene *)&v13 initWithSession:a3 connectionOptions:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SBSUIInCallWindowScene *)v4 _FBSScene];
    v7 = [v6 settings];
    v5->_presentationMode = [v7 inCallPresentationMode];
    v5->_deviceAttachedToWindowedAccessory = [v7 isAttachedToWindowedAccessory];
    [v7 windowedAccessoryCutoutFrameInScreen];
    v5->_windowedAccessoryCutoutFrameInScreen.origin.x = v8;
    v5->_windowedAccessoryCutoutFrameInScreen.origin.y = v9;
    v5->_windowedAccessoryCutoutFrameInScreen.size.width = v10;
    v5->_windowedAccessoryCutoutFrameInScreen.size.height = v11;
    [(SBSUIInCallWindowScene *)v5 _updateValidationStateIfNeededForPresentationMode:v5->_presentationMode];
    if (![(SBSUIInCallWindowScene *)v5 isScreenSharingPresentation])
    {
      [(SBSUIInCallWindowScene *)v5 _startObservingSystemApertureSourceConnectNotifications];
    }
  }

  return v5;
}

- (void)_invalidate
{
  v2.receiver = self;
  v2.super_class = SBSUIInCallWindowScene;
  [(SBSUIInCallWindowScene *)&v2 _invalidate];
  BSDispatchMain();
}

uint64_t __37__SBSUIInCallWindowScene__invalidate__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 520))
  {
    return [MEMORY[0x1E69D4250] notePresentationEndForRequestWithIdentifier:?];
  }

  return result;
}

- (void)setPreferredHardwareButtonEventTypes:(unint64_t)a3
{
  if (self->_preferredHardwareButtonEventTypes != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_preferredHardwareButtonEventTypes = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__SBSUIInCallWindowScene_setPreferredHardwareButtonEventTypes___block_invoke;
    v5[3] = &__block_descriptor_40_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v5[4] = a3;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)setPreferredBackgroundActivitiesToSuppress:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_preferredBackgroundActivitiesToSuppress != v4)
  {
    v6 = [(NSSet *)v4 copy];
    preferredBackgroundActivitiesToSuppress = self->_preferredBackgroundActivitiesToSuppress;
    self->_preferredBackgroundActivitiesToSuppress = v6;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__SBSUIInCallWindowScene_setPreferredBackgroundActivitiesToSuppress___block_invoke;
    v8[3] = &unk_1E789E770;
    v9 = v5;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v8];
  }
}

- (unint64_t)preferredStatusBarStyleOverridesToSuppress
{
  v2 = [(SBSUIInCallWindowScene *)self preferredBackgroundActivitiesToSuppress];
  v3 = soft_STUIStyleOverridesForBackgroundActivityIdentifiers(v2);

  return v3;
}

- (void)setPreferredStatusBarStyleOverridesToSuppress:(unint64_t)a3
{
  v4 = soft_STUIBackgroundActivityIdentifiersForStyleOverrides(a3);
  [(SBSUIInCallWindowScene *)self setPreferredBackgroundActivitiesToSuppress:v4];
}

- (void)setShouldBecomeVisibleWhenWakingDisplay:(BOOL)a3
{
  if (self->_shouldBecomeVisibleWhenWakingDisplay != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_shouldBecomeVisibleWhenWakingDisplay = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__SBSUIInCallWindowScene_setShouldBecomeVisibleWhenWakingDisplay___block_invoke;
    v5[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v6 = a3;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)setSupportsDeviceLockEvents:(BOOL)a3
{
  if (self->_supportsDeviceLockEvents != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_supportsDeviceLockEvents = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__SBSUIInCallWindowScene_setSupportsDeviceLockEvents___block_invoke;
    v5[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v6 = a3;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)setIdleTimerDisabled:(BOOL)a3
{
  if (self->_idleTimerDisabled != a3)
  {
    v14 = v3;
    v15 = v4;
    v5 = a3;
    self->_idleTimerDisabled = a3;
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(SBSUIInCallWindowScene *)self session];
    v9 = [v8 persistentIdentifier];
    v10 = [v7 stringWithFormat:@"SBSUIInCallWindowSceneIdleTimerDisabledReason %@", v9];

    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    [v11 _setIdleTimerDisabled:v5 forReason:v10];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__SBSUIInCallWindowScene_setIdleTimerDisabled___block_invoke;
    v12[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v13 = v5;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v12];
  }
}

- (void)setPrefersLockedIdleDurationOnCoversheet:(BOOL)a3
{
  if (self->_prefersLockedIdleDurationOnCoversheet != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_prefersLockedIdleDurationOnCoversheet = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__SBSUIInCallWindowScene_setPrefersLockedIdleDurationOnCoversheet___block_invoke;
    v5[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v6 = a3;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)setCallConnected:(BOOL)a3
{
  if (self->_callConnected != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_callConnected = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__SBSUIInCallWindowScene_setCallConnected___block_invoke;
    v5[3] = &unk_1E789E770;
    v5[4] = self;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)setExpanseHUDDodgingInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_expanseHUDDodgingInsets.top, v3), vceqq_f64(*&self->_expanseHUDDodgingInsets.bottom, v4)))) & 1) == 0)
  {
    self->_expanseHUDDodgingInsets = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__SBSUIInCallWindowScene_setExpanseHUDDodgingInsets___block_invoke;
    v5[3] = &__block_descriptor_64_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v6 = a3;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)setPrefersHiddenWhenDismissed:(BOOL)a3
{
  if (self->_prefersHiddenWhenDismissed != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_prefersHiddenWhenDismissed = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__SBSUIInCallWindowScene_setPrefersHiddenWhenDismissed___block_invoke;
    v5[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v6 = a3;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)setShouldNeverBeShownWhenLaunchingFaceTime:(BOOL)a3
{
  if (self->_shouldNeverBeShownWhenLaunchingFaceTime != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_shouldNeverBeShownWhenLaunchingFaceTime = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__SBSUIInCallWindowScene_setShouldNeverBeShownWhenLaunchingFaceTime___block_invoke;
    v5[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v6 = a3;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)requestTransitionToPresentationMode:(int64_t)a3 isUserInitiated:(BOOL)a4 analyticsSource:(id)a5
{
  v5 = a4;
  v8 = a5;
  v11 = [[SBSUIInCallRequestPresentationModeAction alloc] initWithRequestedPresentationMode:a3 isUserInitiated:v5 analyticsSource:v8 responseHandler:&__block_literal_global_11];

  v9 = [(SBSUIInCallWindowScene *)self _FBSScene];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:v11];
  [v9 sendActions:v10];
}

- (void)setPrefersBannersHiddenFromClonedDisplay:(BOOL)a3
{
  self->_prefersBannersHiddenFromClonedDisplay = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__SBSUIInCallWindowScene_setPrefersBannersHiddenFromClonedDisplay___block_invoke;
  v3[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
  v4 = a3;
  [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v3];
}

- (void)requestKeyboardFocusIsUserInitiated:(BOOL)a3
{
  v6 = [[SBSUIInCallRequestKeyboardFocusAction alloc] initWithUserInitiated:a3 responseHandler:&__block_literal_global_17];
  v4 = [(SBSUIInCallWindowScene *)self _FBSScene];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:v6];
  [v4 sendActions:v5];
}

- (void)setAcceptsKeyboardFocus:(BOOL)a3
{
  self->_acceptsKeyboardFocus = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__SBSUIInCallWindowScene_setAcceptsKeyboardFocus___block_invoke;
  v3[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
  v4 = a3;
  [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v3];
}

- (BOOL)systemControlsShouldPresentAsEmbedded
{
  v2 = [(SBSUIInCallWindowScene *)self _FBSScene];
  v3 = [v2 settings];
  v4 = [v3 systemControlsShouldPresentAsEmbedded];

  return v4;
}

- (BOOL)isBeingShownAboveCoverSheet
{
  v2 = [(SBSUIInCallWindowScene *)self _FBSScene];
  v3 = [v2 settings];
  v4 = [v3 isBeingShownAboveCoverSheet];

  return v4;
}

- (NSUUID)requestedPresentationConfigurationIdentifier
{
  requestedPresentationConfigurationIdentifier = self->_requestedPresentationConfigurationIdentifier;
  if (!requestedPresentationConfigurationIdentifier)
  {
    v4 = [(SBSUIInCallWindowScene *)self _FBSScene];
    v5 = [v4 settings];
    v6 = [v5 requestedPresentationConfigurationIdentifier];
    if (v6)
    {
      v7 = [MEMORY[0x1E69D4250] identifiersForRequestedPresentations];
      v8 = [v7 containsObject:v6];

      if (v8)
      {
        objc_storeStrong(&self->_requestedPresentationConfigurationIdentifier, v6);
      }
    }

    requestedPresentationConfigurationIdentifier = self->_requestedPresentationConfigurationIdentifier;
  }

  return requestedPresentationConfigurationIdentifier;
}

- (BOOL)isScreenSharingPresentation
{
  v2 = [(SBSUIInCallWindowScene *)self _FBSScene];
  v3 = [v2 settings];
  v4 = [v3 isScreenSharingPresentation];

  return v4;
}

- (BOOL)isAmbientPresented
{
  v2 = [(SBSUIInCallWindowScene *)self _FBSScene];
  v3 = [v2 settings];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getAMUIAmbientPresentationSettingsExtensionClass_softClass;
  v12 = getAMUIAmbientPresentationSettingsExtensionClass_softClass;
  if (!getAMUIAmbientPresentationSettingsExtensionClass_softClass)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getAMUIAmbientPresentationSettingsExtensionClass_block_invoke;
    v8[3] = &unk_1E789DA88;
    v8[4] = &v9;
    __getAMUIAmbientPresentationSettingsExtensionClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  if ([v3 conformsToExtension:objc_opt_class()] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v3 isAmbientPresented];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SBUISystemApertureElement)associatedSystemApertureElement
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedSource);
  v3 = [WeakRetained systemApertureElement];

  return v3;
}

- (void)_startObservingSystemApertureSourceConnectNotifications
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleSourceDidConnect_ name:@"SBUISystemApertureElementSourceDidConnectNotification" object:0];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = +[SBUISystemApertureElementSource openSources];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(v4);
      }

      [(SBSUIInCallWindowScene *)self _associateWithSourceIfNeeded:*(*(&v10 + 1) + 8 * v8)];
      WeakRetained = objc_loadWeakRetained(&self->_associatedSource);

      if (WeakRetained)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_handleSourceDidConnect:(id)a3
{
  v4 = [a3 object];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [(SBSUIInCallWindowScene *)self _associateWithSourceIfNeeded:v8];
}

- (void)_associateWithSourceIfNeeded:(id)a3
{
  obj = a3;
  v4 = [(SBSUIInCallWindowScene *)self session];
  v5 = [v4 persistentIdentifier];

  if (obj)
  {
    v6 = [obj systemApertureElement];
    if (!v6)
    {
      v7 = [obj associatedScenePersistenceIdentifier];
      v8 = [v7 isEqualToString:v5];

      if (!v8)
      {
        goto LABEL_11;
      }

      WeakRetained = objc_loadWeakRetained(&self->_associatedSource);

      if (!WeakRetained)
      {
        objc_storeWeak(&self->_associatedSource, obj);
        v10 = [(SBSUIInCallWindowScene *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 inCallWindowSceneSystemApertureElementProvider:self];
        }

        else
        {
          v11 = 0;
        }

        [obj setSystemApertureElementViewControllerProvider:v11];
      }

      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 removeObserver:self name:@"SBUISystemApertureElementSourceDidConnectNotification" object:0];
    }
  }

LABEL_11:
}

- (id)systemApertureElementViewControllerProvider
{
  v3 = [(SBSUIInCallWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 inCallWindowSceneSystemApertureElementProvider:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleDeviceLockAction:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBSUIInCallWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = SBLogInCallPresentation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SBSUIInCallWindowScene *)self session];
      v8 = [v7 persistentIdentifier];
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "Handling handleDeviceLockAction for session %{public}@", buf, 0xCu);
    }

    v9 = -[SBSUIInCallWindowSceneDeviceLockEvent initWithSourceType:]([SBSUIInCallWindowSceneDeviceLockEvent alloc], "initWithSourceType:", [v4 sourceType]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__SBSUIInCallWindowScene__handleDeviceLockAction___block_invoke;
    v13[3] = &unk_1E789E7D8;
    v13[4] = self;
    v14 = v4;
    [v5 inCallWindowScene:self didReceiveDeviceLockEvent:v9 withResultHandler:v13];
  }

  else
  {
    v9 = [[SBSUIHandleDeviceLockSceneActionResponse alloc] initWithDeviceLockHandlingResult:0 error:0];
    [v4 sendResponse:v9];
    v10 = SBLogInCallPresentation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SBSUIInCallWindowScene *)self session];
      v12 = [v11 persistentIdentifier];
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_1A9A79000, v10, OS_LOG_TYPE_DEFAULT, "Declined handleDeviceLockAction because didReceiveDeviceLockEvent is not implemented %{public}@", buf, 0xCu);
    }
  }
}

void __50__SBSUIInCallWindowScene__handleDeviceLockAction___block_invoke(uint64_t a1, unsigned int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [[SBSUIHandleDeviceLockSceneActionResponse alloc] initWithDeviceLockHandlingResult:a2 error:0];
  v5 = SBLogInCallPresentation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) session];
    v7 = [v6 persistentIdentifier];
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2114;
    v10 = v7;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Send deviceLockAction response (didConsume: %{BOOL}u) for session %{public}@", v8, 0x12u);
  }

  [*(a1 + 40) sendResponse:v4];
}

- (void)_handleHardwareButtonEventSceneActions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = -[SBSUIInCallWindowSceneHardwareButtonEvent initWithButtonEventType:]([SBSUIInCallWindowSceneHardwareButtonEvent alloc], "initWithButtonEventType:", [v11 buttonEventType]);
          [v5 addObject:v12];
          v13 = [[SBSUIHardwareButtonEventSceneActionResponse alloc] initWithButtonEventHandlingResult:0 error:0];
          [v11 sendResponse:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = [(SBSUIInCallWindowScene *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v14 inCallWindowScene:self didReceiveHardwareButtonEvents:v5];
    }

    v4 = v15;
  }
}

- (void)_updatePresentationMode:(int64_t)a3 analyticsSource:(id)a4
{
  v7 = a4;
  [(SBSUIInCallWindowScene *)self _updateValidationStateIfNeededForPresentationMode:a3];
  if (self->_presentationMode != a3)
  {
    self->_presentationMode = a3;
    if (self->_validationState == 1)
    {
      v6 = [(SBSUIInCallWindowScene *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v6 inCallWindowSceneDidChangePresentationMode:self];
      }

      if (objc_opt_respondsToSelector())
      {
        [v6 inCallWindowScene:self didChangePresentationModeWithAnalyticsSource:v7];
      }
    }
  }
}

- (void)_handleFrameChanged
{
  v14 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(SBSUIInCallWindowScene *)self _allWindows];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          [v8 setNeedsLayout];
          [v8 layoutIfNeeded];
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (void)_setAttachedToWindowedAccessory:(BOOL)a3 windowedAccessoryCutoutFrameInScreen:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v10 = SBLogInCallPresentation();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = x;
    *&v13[1] = y;
    *&v13[2] = width;
    *&v13[3] = height;
    v11 = [MEMORY[0x1E696B098] valueWithBytes:v13 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    *buf = 67109378;
    v15 = v8;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_1A9A79000, v10, OS_LOG_TYPE_DEFAULT, "Updating scene settings to attachedToWindowedAccessory: %{BOOL}u windowedAccessoryCutoutFrameInScreen: %{public}@", buf, 0x12u);
  }

  if (self->_deviceAttachedToWindowedAccessory != v8 || (v19.origin.x = x, v19.origin.y = y, v19.size.width = width, v19.size.height = height, !CGRectEqualToRect(self->_windowedAccessoryCutoutFrameInScreen, v19)))
  {
    self->_deviceAttachedToWindowedAccessory = v8;
    self->_windowedAccessoryCutoutFrameInScreen.origin.x = x;
    self->_windowedAccessoryCutoutFrameInScreen.origin.y = y;
    self->_windowedAccessoryCutoutFrameInScreen.size.width = width;
    self->_windowedAccessoryCutoutFrameInScreen.size.height = height;
    v12 = [(SBSUIInCallWindowScene *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v12 inCallWindowScene:self didTransitionToAttachedToWindowedAccessory:v8 windowedAccessoryCutoutFrameInScreen:{x, y, width, height}];
    }
  }
}

- (void)_updateValidationStateIfNeededForPresentationMode:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  validationState = self->_validationState;
  if (!validationState)
  {
    v6 = [(SBSUIInCallWindowScene *)self activationState];
    if (a3 || v6 != -1)
    {
      v7 = [(SBSUIInCallWindowScene *)self _FBSScene];
      v8 = [v7 settings];
      v9 = [v8 requestedPresentationConfigurationIdentifier];
      v10 = [MEMORY[0x1E69D4250] identifiersForRequestedPresentations];
      v11 = [v10 containsObject:v9];

      if (v11)
      {
        objc_storeStrong(&self->_requestedPresentationConfigurationIdentifier, v9);
        self->_validationState = 1;
        v12 = SBLogInCallPresentation();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138543362;
          v17 = self;
          _os_log_impl(&dword_1A9A79000, v12, OS_LOG_TYPE_DEFAULT, "Validated scene %{public}@", &v16, 0xCu);
        }
      }

      else
      {
        self->_validationState = 2;
        v12 = SBLogInCallPresentation();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(SBSUIInCallWindowScene *)self _updateValidationStateIfNeededForPresentationMode:v8, v12];
        }
      }
    }

    validationState = self->_validationState;
  }

  if (validationState == 2 && !self->_hasRequestedDestructionForInvalidState)
  {
    self->_hasRequestedDestructionForInvalidState = 1;
    v13 = [MEMORY[0x1E69DC668] sharedApplication];
    v14 = SBLogInCallPresentation();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = self;
      _os_log_impl(&dword_1A9A79000, v14, OS_LOG_TYPE_DEFAULT, "Requesting invalid scene destruction for %{public}@", &v16, 0xCu);
    }

    v15 = [(SBSUIInCallWindowScene *)self session];
    [v13 SBSUI_requestInCallSceneSessionDestruction:v15 withReason:3 analyticsSource:@"SBSUIInCallTransitionAnalyticsSourceSceneValidation" completion:&__block_literal_global_46];
  }
}

- (UIEdgeInsets)expanseHUDDodgingInsets
{
  top = self->_expanseHUDDodgingInsets.top;
  left = self->_expanseHUDDodgingInsets.left;
  bottom = self->_expanseHUDDodgingInsets.bottom;
  right = self->_expanseHUDDodgingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)windowedAccessoryCutoutFrameInScreen
{
  x = self->_windowedAccessoryCutoutFrameInScreen.origin.x;
  y = self->_windowedAccessoryCutoutFrameInScreen.origin.y;
  width = self->_windowedAccessoryCutoutFrameInScreen.size.width;
  height = self->_windowedAccessoryCutoutFrameInScreen.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_updateValidationStateIfNeededForPresentationMode:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 requestedPresentationConfigurationIdentifier];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_1A9A79000, a3, OS_LOG_TYPE_ERROR, "[ICSZombie] Scene %{public}@ is an ICSZombie and should be ignored. requestedPresentationConfigurationIdentifier: %{public}@", &v6, 0x16u);
}

@end