@interface SBSUIInCallWindowScene
- (BOOL)isAmbientPresented;
- (BOOL)isBeingShownAboveCoverSheet;
- (BOOL)isScreenSharingPresentation;
- (BOOL)systemControlsShouldPresentAsEmbedded;
- (CGRect)windowedAccessoryCutoutFrameInScreen;
- (NSUUID)requestedPresentationConfigurationIdentifier;
- (SBSUIInCallWindowScene)initWithSession:(id)session connectionOptions:(id)options;
- (SBUISystemApertureElement)associatedSystemApertureElement;
- (UIEdgeInsets)expanseHUDDodgingInsets;
- (id)systemApertureElementViewControllerProvider;
- (unint64_t)preferredStatusBarStyleOverridesToSuppress;
- (void)_associateWithSourceIfNeeded:(id)needed;
- (void)_handleDeviceLockAction:(id)action;
- (void)_handleFrameChanged;
- (void)_handleHardwareButtonEventSceneActions:(id)actions;
- (void)_handleSourceDidConnect:(id)connect;
- (void)_invalidate;
- (void)_setAttachedToWindowedAccessory:(BOOL)accessory windowedAccessoryCutoutFrameInScreen:(CGRect)screen;
- (void)_startObservingSystemApertureSourceConnectNotifications;
- (void)_updatePresentationMode:(int64_t)mode analyticsSource:(id)source;
- (void)_updateValidationStateIfNeededForPresentationMode:(int64_t)mode;
- (void)requestKeyboardFocusIsUserInitiated:(BOOL)initiated;
- (void)requestTransitionToPresentationMode:(int64_t)mode isUserInitiated:(BOOL)initiated analyticsSource:(id)source;
- (void)setAcceptsKeyboardFocus:(BOOL)focus;
- (void)setCallConnected:(BOOL)connected;
- (void)setExpanseHUDDodgingInsets:(UIEdgeInsets)insets;
- (void)setIdleTimerDisabled:(BOOL)disabled;
- (void)setPreferredBackgroundActivitiesToSuppress:(id)suppress;
- (void)setPreferredHardwareButtonEventTypes:(unint64_t)types;
- (void)setPreferredStatusBarStyleOverridesToSuppress:(unint64_t)suppress;
- (void)setPrefersBannersHiddenFromClonedDisplay:(BOOL)display;
- (void)setPrefersHiddenWhenDismissed:(BOOL)dismissed;
- (void)setPrefersLockedIdleDurationOnCoversheet:(BOOL)coversheet;
- (void)setShouldBecomeVisibleWhenWakingDisplay:(BOOL)display;
- (void)setShouldNeverBeShownWhenLaunchingFaceTime:(BOOL)time;
- (void)setSupportsDeviceLockEvents:(BOOL)events;
@end

@implementation SBSUIInCallWindowScene

- (SBSUIInCallWindowScene)initWithSession:(id)session connectionOptions:(id)options
{
  v13.receiver = self;
  v13.super_class = SBSUIInCallWindowScene;
  v4 = [(SBSUIInCallWindowScene *)&v13 initWithSession:session connectionOptions:options];
  v5 = v4;
  if (v4)
  {
    _FBSScene = [(SBSUIInCallWindowScene *)v4 _FBSScene];
    settings = [_FBSScene settings];
    v5->_presentationMode = [settings inCallPresentationMode];
    v5->_deviceAttachedToWindowedAccessory = [settings isAttachedToWindowedAccessory];
    [settings windowedAccessoryCutoutFrameInScreen];
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

- (void)setPreferredHardwareButtonEventTypes:(unint64_t)types
{
  if (self->_preferredHardwareButtonEventTypes != types)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_preferredHardwareButtonEventTypes = types;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__SBSUIInCallWindowScene_setPreferredHardwareButtonEventTypes___block_invoke;
    v5[3] = &__block_descriptor_40_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v5[4] = types;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)setPreferredBackgroundActivitiesToSuppress:(id)suppress
{
  suppressCopy = suppress;
  v5 = suppressCopy;
  if (self->_preferredBackgroundActivitiesToSuppress != suppressCopy)
  {
    v6 = [(NSSet *)suppressCopy copy];
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
  preferredBackgroundActivitiesToSuppress = [(SBSUIInCallWindowScene *)self preferredBackgroundActivitiesToSuppress];
  v3 = soft_STUIStyleOverridesForBackgroundActivityIdentifiers(preferredBackgroundActivitiesToSuppress);

  return v3;
}

- (void)setPreferredStatusBarStyleOverridesToSuppress:(unint64_t)suppress
{
  v4 = soft_STUIBackgroundActivityIdentifiersForStyleOverrides(suppress);
  [(SBSUIInCallWindowScene *)self setPreferredBackgroundActivitiesToSuppress:v4];
}

- (void)setShouldBecomeVisibleWhenWakingDisplay:(BOOL)display
{
  if (self->_shouldBecomeVisibleWhenWakingDisplay != display)
  {
    v7 = v3;
    v8 = v4;
    self->_shouldBecomeVisibleWhenWakingDisplay = display;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__SBSUIInCallWindowScene_setShouldBecomeVisibleWhenWakingDisplay___block_invoke;
    v5[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    displayCopy = display;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)setSupportsDeviceLockEvents:(BOOL)events
{
  if (self->_supportsDeviceLockEvents != events)
  {
    v7 = v3;
    v8 = v4;
    self->_supportsDeviceLockEvents = events;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__SBSUIInCallWindowScene_setSupportsDeviceLockEvents___block_invoke;
    v5[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    eventsCopy = events;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)setIdleTimerDisabled:(BOOL)disabled
{
  if (self->_idleTimerDisabled != disabled)
  {
    v14 = v3;
    v15 = v4;
    disabledCopy = disabled;
    self->_idleTimerDisabled = disabled;
    v7 = MEMORY[0x1E696AEC0];
    session = [(SBSUIInCallWindowScene *)self session];
    persistentIdentifier = [session persistentIdentifier];
    v10 = [v7 stringWithFormat:@"SBSUIInCallWindowSceneIdleTimerDisabledReason %@", persistentIdentifier];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] _setIdleTimerDisabled:disabledCopy forReason:v10];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__SBSUIInCallWindowScene_setIdleTimerDisabled___block_invoke;
    v12[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v13 = disabledCopy;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v12];
  }
}

- (void)setPrefersLockedIdleDurationOnCoversheet:(BOOL)coversheet
{
  if (self->_prefersLockedIdleDurationOnCoversheet != coversheet)
  {
    v7 = v3;
    v8 = v4;
    self->_prefersLockedIdleDurationOnCoversheet = coversheet;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__SBSUIInCallWindowScene_setPrefersLockedIdleDurationOnCoversheet___block_invoke;
    v5[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    coversheetCopy = coversheet;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)setCallConnected:(BOOL)connected
{
  if (self->_callConnected != connected)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_callConnected = connected;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__SBSUIInCallWindowScene_setCallConnected___block_invoke;
    v5[3] = &unk_1E789E770;
    v5[4] = self;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)setExpanseHUDDodgingInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_expanseHUDDodgingInsets.top, v3), vceqq_f64(*&self->_expanseHUDDodgingInsets.bottom, v4)))) & 1) == 0)
  {
    self->_expanseHUDDodgingInsets = insets;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__SBSUIInCallWindowScene_setExpanseHUDDodgingInsets___block_invoke;
    v5[3] = &__block_descriptor_64_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    insetsCopy = insets;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)setPrefersHiddenWhenDismissed:(BOOL)dismissed
{
  if (self->_prefersHiddenWhenDismissed != dismissed)
  {
    v7 = v3;
    v8 = v4;
    self->_prefersHiddenWhenDismissed = dismissed;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__SBSUIInCallWindowScene_setPrefersHiddenWhenDismissed___block_invoke;
    v5[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    dismissedCopy = dismissed;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)setShouldNeverBeShownWhenLaunchingFaceTime:(BOOL)time
{
  if (self->_shouldNeverBeShownWhenLaunchingFaceTime != time)
  {
    v7 = v3;
    v8 = v4;
    self->_shouldNeverBeShownWhenLaunchingFaceTime = time;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__SBSUIInCallWindowScene_setShouldNeverBeShownWhenLaunchingFaceTime___block_invoke;
    v5[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    timeCopy = time;
    [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v5];
  }
}

- (void)requestTransitionToPresentationMode:(int64_t)mode isUserInitiated:(BOOL)initiated analyticsSource:(id)source
{
  initiatedCopy = initiated;
  sourceCopy = source;
  v11 = [[SBSUIInCallRequestPresentationModeAction alloc] initWithRequestedPresentationMode:mode isUserInitiated:initiatedCopy analyticsSource:sourceCopy responseHandler:&__block_literal_global_11];

  _FBSScene = [(SBSUIInCallWindowScene *)self _FBSScene];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:v11];
  [_FBSScene sendActions:v10];
}

- (void)setPrefersBannersHiddenFromClonedDisplay:(BOOL)display
{
  self->_prefersBannersHiddenFromClonedDisplay = display;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__SBSUIInCallWindowScene_setPrefersBannersHiddenFromClonedDisplay___block_invoke;
  v3[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
  displayCopy = display;
  [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v3];
}

- (void)requestKeyboardFocusIsUserInitiated:(BOOL)initiated
{
  v6 = [[SBSUIInCallRequestKeyboardFocusAction alloc] initWithUserInitiated:initiated responseHandler:&__block_literal_global_17];
  _FBSScene = [(SBSUIInCallWindowScene *)self _FBSScene];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:v6];
  [_FBSScene sendActions:v5];
}

- (void)setAcceptsKeyboardFocus:(BOOL)focus
{
  self->_acceptsKeyboardFocus = focus;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__SBSUIInCallWindowScene_setAcceptsKeyboardFocus___block_invoke;
  v3[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
  focusCopy = focus;
  [(SBSUIInCallWindowScene *)self _updateUIClientSettingsWithBlock:v3];
}

- (BOOL)systemControlsShouldPresentAsEmbedded
{
  _FBSScene = [(SBSUIInCallWindowScene *)self _FBSScene];
  settings = [_FBSScene settings];
  systemControlsShouldPresentAsEmbedded = [settings systemControlsShouldPresentAsEmbedded];

  return systemControlsShouldPresentAsEmbedded;
}

- (BOOL)isBeingShownAboveCoverSheet
{
  _FBSScene = [(SBSUIInCallWindowScene *)self _FBSScene];
  settings = [_FBSScene settings];
  isBeingShownAboveCoverSheet = [settings isBeingShownAboveCoverSheet];

  return isBeingShownAboveCoverSheet;
}

- (NSUUID)requestedPresentationConfigurationIdentifier
{
  requestedPresentationConfigurationIdentifier = self->_requestedPresentationConfigurationIdentifier;
  if (!requestedPresentationConfigurationIdentifier)
  {
    _FBSScene = [(SBSUIInCallWindowScene *)self _FBSScene];
    settings = [_FBSScene settings];
    requestedPresentationConfigurationIdentifier = [settings requestedPresentationConfigurationIdentifier];
    if (requestedPresentationConfigurationIdentifier)
    {
      identifiersForRequestedPresentations = [MEMORY[0x1E69D4250] identifiersForRequestedPresentations];
      v8 = [identifiersForRequestedPresentations containsObject:requestedPresentationConfigurationIdentifier];

      if (v8)
      {
        objc_storeStrong(&self->_requestedPresentationConfigurationIdentifier, requestedPresentationConfigurationIdentifier);
      }
    }

    requestedPresentationConfigurationIdentifier = self->_requestedPresentationConfigurationIdentifier;
  }

  return requestedPresentationConfigurationIdentifier;
}

- (BOOL)isScreenSharingPresentation
{
  _FBSScene = [(SBSUIInCallWindowScene *)self _FBSScene];
  settings = [_FBSScene settings];
  isScreenSharingPresentation = [settings isScreenSharingPresentation];

  return isScreenSharingPresentation;
}

- (BOOL)isAmbientPresented
{
  _FBSScene = [(SBSUIInCallWindowScene *)self _FBSScene];
  settings = [_FBSScene settings];
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
  if ([settings conformsToExtension:objc_opt_class()] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    isAmbientPresented = [settings isAmbientPresented];
  }

  else
  {
    isAmbientPresented = 0;
  }

  return isAmbientPresented;
}

- (SBUISystemApertureElement)associatedSystemApertureElement
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedSource);
  systemApertureElement = [WeakRetained systemApertureElement];

  return systemApertureElement;
}

- (void)_startObservingSystemApertureSourceConnectNotifications
{
  v15 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleSourceDidConnect_ name:@"SBUISystemApertureElementSourceDidConnectNotification" object:0];

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

- (void)_handleSourceDidConnect:(id)connect
{
  object = [connect object];
  v5 = objc_opt_class();
  v6 = object;
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

- (void)_associateWithSourceIfNeeded:(id)needed
{
  obj = needed;
  session = [(SBSUIInCallWindowScene *)self session];
  persistentIdentifier = [session persistentIdentifier];

  if (obj)
  {
    systemApertureElement = [obj systemApertureElement];
    if (!systemApertureElement)
    {
      associatedScenePersistenceIdentifier = [obj associatedScenePersistenceIdentifier];
      v8 = [associatedScenePersistenceIdentifier isEqualToString:persistentIdentifier];

      if (!v8)
      {
        goto LABEL_11;
      }

      WeakRetained = objc_loadWeakRetained(&self->_associatedSource);

      if (!WeakRetained)
      {
        objc_storeWeak(&self->_associatedSource, obj);
        delegate = [(SBSUIInCallWindowScene *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v11 = [delegate inCallWindowSceneSystemApertureElementProvider:self];
        }

        else
        {
          v11 = 0;
        }

        [obj setSystemApertureElementViewControllerProvider:v11];
      }

      systemApertureElement = [MEMORY[0x1E696AD88] defaultCenter];
      [systemApertureElement removeObserver:self name:@"SBUISystemApertureElementSourceDidConnectNotification" object:0];
    }
  }

LABEL_11:
}

- (id)systemApertureElementViewControllerProvider
{
  delegate = [(SBSUIInCallWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate inCallWindowSceneSystemApertureElementProvider:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleDeviceLockAction:(id)action
{
  v17 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  delegate = [(SBSUIInCallWindowScene *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = SBLogInCallPresentation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      session = [(SBSUIInCallWindowScene *)self session];
      persistentIdentifier = [session persistentIdentifier];
      *buf = 138543362;
      v16 = persistentIdentifier;
      _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "Handling handleDeviceLockAction for session %{public}@", buf, 0xCu);
    }

    v9 = -[SBSUIInCallWindowSceneDeviceLockEvent initWithSourceType:]([SBSUIInCallWindowSceneDeviceLockEvent alloc], "initWithSourceType:", [actionCopy sourceType]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__SBSUIInCallWindowScene__handleDeviceLockAction___block_invoke;
    v13[3] = &unk_1E789E7D8;
    v13[4] = self;
    v14 = actionCopy;
    [delegate inCallWindowScene:self didReceiveDeviceLockEvent:v9 withResultHandler:v13];
  }

  else
  {
    v9 = [[SBSUIHandleDeviceLockSceneActionResponse alloc] initWithDeviceLockHandlingResult:0 error:0];
    [actionCopy sendResponse:v9];
    v10 = SBLogInCallPresentation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      session2 = [(SBSUIInCallWindowScene *)self session];
      persistentIdentifier2 = [session2 persistentIdentifier];
      *buf = 138543362;
      v16 = persistentIdentifier2;
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

- (void)_handleHardwareButtonEventSceneActions:(id)actions
{
  v21 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  if ([actionsCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(actionsCopy, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = actionsCopy;
    v6 = actionsCopy;
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

    delegate = [(SBSUIInCallWindowScene *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate inCallWindowScene:self didReceiveHardwareButtonEvents:v5];
    }

    actionsCopy = v15;
  }
}

- (void)_updatePresentationMode:(int64_t)mode analyticsSource:(id)source
{
  sourceCopy = source;
  [(SBSUIInCallWindowScene *)self _updateValidationStateIfNeededForPresentationMode:mode];
  if (self->_presentationMode != mode)
  {
    self->_presentationMode = mode;
    if (self->_validationState == 1)
    {
      delegate = [(SBSUIInCallWindowScene *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate inCallWindowSceneDidChangePresentationMode:self];
      }

      if (objc_opt_respondsToSelector())
      {
        [delegate inCallWindowScene:self didChangePresentationModeWithAnalyticsSource:sourceCopy];
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
    _allWindows = [(SBSUIInCallWindowScene *)self _allWindows];
    v4 = [_allWindows countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(_allWindows);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          [v8 setNeedsLayout];
          [v8 layoutIfNeeded];
        }

        v5 = [_allWindows countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (void)_setAttachedToWindowedAccessory:(BOOL)accessory windowedAccessoryCutoutFrameInScreen:(CGRect)screen
{
  height = screen.size.height;
  width = screen.size.width;
  y = screen.origin.y;
  x = screen.origin.x;
  accessoryCopy = accessory;
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
    v15 = accessoryCopy;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_1A9A79000, v10, OS_LOG_TYPE_DEFAULT, "Updating scene settings to attachedToWindowedAccessory: %{BOOL}u windowedAccessoryCutoutFrameInScreen: %{public}@", buf, 0x12u);
  }

  if (self->_deviceAttachedToWindowedAccessory != accessoryCopy || (v19.origin.x = x, v19.origin.y = y, v19.size.width = width, v19.size.height = height, !CGRectEqualToRect(self->_windowedAccessoryCutoutFrameInScreen, v19)))
  {
    self->_deviceAttachedToWindowedAccessory = accessoryCopy;
    self->_windowedAccessoryCutoutFrameInScreen.origin.x = x;
    self->_windowedAccessoryCutoutFrameInScreen.origin.y = y;
    self->_windowedAccessoryCutoutFrameInScreen.size.width = width;
    self->_windowedAccessoryCutoutFrameInScreen.size.height = height;
    delegate = [(SBSUIInCallWindowScene *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate inCallWindowScene:self didTransitionToAttachedToWindowedAccessory:accessoryCopy windowedAccessoryCutoutFrameInScreen:{x, y, width, height}];
    }
  }
}

- (void)_updateValidationStateIfNeededForPresentationMode:(int64_t)mode
{
  v18 = *MEMORY[0x1E69E9840];
  validationState = self->_validationState;
  if (!validationState)
  {
    activationState = [(SBSUIInCallWindowScene *)self activationState];
    if (mode || activationState != -1)
    {
      _FBSScene = [(SBSUIInCallWindowScene *)self _FBSScene];
      settings = [_FBSScene settings];
      requestedPresentationConfigurationIdentifier = [settings requestedPresentationConfigurationIdentifier];
      identifiersForRequestedPresentations = [MEMORY[0x1E69D4250] identifiersForRequestedPresentations];
      v11 = [identifiersForRequestedPresentations containsObject:requestedPresentationConfigurationIdentifier];

      if (v11)
      {
        objc_storeStrong(&self->_requestedPresentationConfigurationIdentifier, requestedPresentationConfigurationIdentifier);
        self->_validationState = 1;
        v12 = SBLogInCallPresentation();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138543362;
          selfCopy2 = self;
          _os_log_impl(&dword_1A9A79000, v12, OS_LOG_TYPE_DEFAULT, "Validated scene %{public}@", &v16, 0xCu);
        }
      }

      else
      {
        self->_validationState = 2;
        v12 = SBLogInCallPresentation();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(SBSUIInCallWindowScene *)self _updateValidationStateIfNeededForPresentationMode:settings, v12];
        }
      }
    }

    validationState = self->_validationState;
  }

  if (validationState == 2 && !self->_hasRequestedDestructionForInvalidState)
  {
    self->_hasRequestedDestructionForInvalidState = 1;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v14 = SBLogInCallPresentation();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1A9A79000, v14, OS_LOG_TYPE_DEFAULT, "Requesting invalid scene destruction for %{public}@", &v16, 0xCu);
    }

    session = [(SBSUIInCallWindowScene *)self session];
    [mEMORY[0x1E69DC668] SBSUI_requestInCallSceneSessionDestruction:session withReason:3 analyticsSource:@"SBSUIInCallTransitionAnalyticsSourceSceneValidation" completion:&__block_literal_global_46];
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