@interface SBActivityAlert
- (BOOL)_canPresentAlertTypeModalFullScreenInEnvironment:(int64_t)environment;
- (BOOL)_hasPresentationDestination:(int64_t)destination;
- (BOOL)_isCoverSheetVisible;
- (BOOL)_isHostApplicationForeground;
- (BOOL)canPresentAlertTypeBannerOrSystemApertureInEnvironment:(int64_t)environment;
- (BOOL)canPresentAlertTypeNoneInEnvironment:(int64_t)environment;
- (BOOL)canPresentInEnvironment:(int64_t)environment alertType:(int64_t)type;
- (BOOL)shouldAlertInEnvironment:(int64_t)environment;
- (NSString)description;
- (SBActivityAlert)alertWithScreenOn:(BOOL)on playSound:(BOOL)sound;
- (SBActivityAlert)initWithItem:(id)item payloadIdentifier:(id)identifier options:(id)options title:(id)title body:(id)body;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_playSound;
- (void)_stopSoundIfNeeded:(id)needed;
- (void)dealloc;
- (void)stopAlerting;
@end

@implementation SBActivityAlert

- (BOOL)_isCoverSheetVisible
{
  v2 = +[SBCoverSheetPresentationManager sharedInstance];
  isVisible = [v2 isVisible];

  return isVisible;
}

- (BOOL)_isHostApplicationForeground
{
  BSDispatchQueueAssertMain();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  descriptor = [(SBActivityItem *)self->_item descriptor];
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];
  windowSceneManager = [SBApp windowSceneManager];
  activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

  switcherController = [activeDisplayWindowScene switcherController];
  switcherCoordinator = [switcherController switcherCoordinator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SBActivityAlert__isHostApplicationForeground__block_invoke;
  v11[3] = &unk_2783B0A70;
  v9 = platterTargetBundleIdentifier;
  v12 = v9;
  v13 = &v14;
  [switcherCoordinator enumerateSwitcherControllersWithBlock:v11];

  LOBYTE(switcherController) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return switcherController;
}

void __47__SBActivityAlert__isHostApplicationForeground__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a2 layoutStateApplicationSceneHandles];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) application];
        v11 = [v10 bundleIdentifier];
        v12 = [v11 isEqualToString:*(a1 + 32)];

        if (v12)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          *a3 = 1;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)dealloc
{
  [(SBActivityAlert *)self _stopSoundIfNeeded:self->_playingSound];
  playingSound = self->_playingSound;
  self->_playingSound = 0;

  v4.receiver = self;
  v4.super_class = SBActivityAlert;
  [(SBActivityAlert *)&v4 dealloc];
}

- (SBActivityAlert)initWithItem:(id)item payloadIdentifier:(id)identifier options:(id)options title:(id)title body:(id)body
{
  itemCopy = item;
  identifierCopy = identifier;
  optionsCopy = options;
  titleCopy = title;
  bodyCopy = body;
  v21.receiver = self;
  v21.super_class = SBActivityAlert;
  v17 = [(SBActivityAlert *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_item, item);
    objc_storeStrong(&v18->_payloadIdentifier, identifier);
    objc_storeStrong(&v18->_options, options);
    objc_storeStrong(&v18->_title, title);
    objc_storeStrong(&v18->_body, body);
  }

  return v18;
}

- (SBActivityAlert)alertWithScreenOn:(BOOL)on playSound:(BOOL)sound
{
  soundCopy = sound;
  onCopy = on;
  v17 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  identifier = [(SBActivityItem *)self->_item identifier];
  if (soundCopy)
  {
    v8 = SBLogActivity();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = identifier;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] alerting with sound", buf, 0xCu);
    }

    [(SBActivityAlert *)self _playSound];
  }

  if (onCopy)
  {
    v9 = SBLogActivity();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = identifier;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Turn on screen", buf, 0xCu);
    }

    v10 = +[SBLockScreenManager sharedInstance];
    v13 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
    v14 = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v10 unlockUIFromSource:36 withOptions:v11];
  }

  return result;
}

- (void)stopAlerting
{
  BSDispatchQueueAssertMain();
  [(SBActivityAlert *)self _stopSoundIfNeeded:self->_playingSound];
  playingSound = self->_playingSound;
  self->_playingSound = 0;
}

- (BOOL)canPresentInEnvironment:(int64_t)environment alertType:(int64_t)type
{
  BSDispatchQueueAssertMain();
  if (type <= 1)
  {
    if (!type)
    {

      return [(SBActivityAlert *)self canPresentAlertTypeNoneInEnvironment:environment];
    }

    if (type != 1)
    {
      return 0;
    }

LABEL_10:

    return [(SBActivityAlert *)self canPresentAlertTypeBannerOrSystemApertureInEnvironment:environment];
  }

  if (type == 2)
  {
    goto LABEL_10;
  }

  if (type != 3)
  {
    if (type == 4)
    {

      return [(SBActivityAlert *)self _canPresentAlertTypeModalFullScreenInEnvironment:environment];
    }

    return 0;
  }

  return [(SBActivityAlert *)self canPresentAlertTypeAmbientInEnvironment:environment];
}

- (BOOL)canPresentAlertTypeNoneInEnvironment:(int64_t)environment
{
  if (environment || [(SBActivityAlert *)self canPresentAlertTypeBannerOrSystemApertureInEnvironment:?])
  {
    return 1;
  }

  return [(SBActivityAlert *)self _canPresentAlertTypeModalFullScreenInEnvironment:0];
}

- (BOOL)canPresentAlertTypeBannerOrSystemApertureInEnvironment:(int64_t)environment
{
  v45 = *MEMORY[0x277D85DE8];
  if (environment == 1)
  {
    v3 = 0;
  }

  else
  {
    v5 = +[SBLiveActivityDomain rootSettings];
    allowAlertsOnHostApp = [v5 allowAlertsOnHostApp];

    if (allowAlertsOnHostApp)
    {
      v7 = 1;
    }

    else
    {
      item = [(SBActivityAlert *)self item];
      descriptor = [item descriptor];
      presentationOptions = [descriptor presentationOptions];
      v7 = [presentationOptions shouldSuppressAlertContentOnHostApplication] ^ 1;
    }

    item2 = [(SBActivityAlert *)self item];
    descriptor2 = [item2 descriptor];
    presentationOptions2 = [descriptor2 presentationOptions];
    destinations = [presentationOptions2 destinations];
    v15 = [destinations bs_containsObjectPassingTest:&__block_literal_global_176];

    item3 = [(SBActivityAlert *)self item];
    descriptor3 = [item3 descriptor];
    presentationOptions3 = [descriptor3 presentationOptions];
    v19 = [presentationOptions3 shouldSuppressAlertContentOnLockScreen] | v15;

    v20 = +[SBControlCenterCoordinator sharedInstance];
    isVisible = [v20 isVisible];

    v22 = [(SBActivityAlert *)self _isCoverSheetVisible]& (isVisible ^ 1);
    if (v7)
    {
      v23 = 0;
      v24 = v19 & v22;
    }

    else
    {
      _isHostApplicationForeground = [(SBActivityAlert *)self _isHostApplicationForeground];
      v24 = _isHostApplicationForeground | v19 & v22;
      v23 = _isHostApplicationForeground;
    }

    v3 = v24 ^ 1;
    v26 = SBLogActivity();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(SBActivityItem *)self->_item identifier];
      v29 = 138545154;
      v30 = identifier;
      v31 = 1024;
      v32 = v3 & 1;
      v33 = 1024;
      v34 = v23;
      v35 = 1024;
      v36 = v22;
      v37 = 1024;
      v38 = v15 & 1;
      v39 = 1024;
      v40 = (v19 ^ 1) & 1;
      v41 = 1024;
      v42 = v7;
      v43 = 1024;
      v44 = isVisible & 1;
      _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] can present alert: %{BOOL}u,  isHostApplicationForeground: %{BOOL}u, isCoverSheetVisible: %{BOOL}u, hasLockScreenPlatter: %{BOOL}u, allowAlertsOnCoverSheet: %{BOOL}u, allowAlertsOnHostApp: %{BOOL}u, controlCenterVisible: %{BOOL}u", &v29, 0x36u);
    }
  }

  return v3 & 1;
}

- (BOOL)_canPresentAlertTypeModalFullScreenInEnvironment:(int64_t)environment
{
  if (environment == 1)
  {
    return 0;
  }

  v5 = [(SBActivityAlert *)self _hasPresentationDestination:0];
  v6 = [(SBActivityAlert *)self _hasPresentationDestination:7];
  item = [(SBActivityAlert *)self item];
  descriptor = [item descriptor];
  alertSceneTargetBundleIdentifiers = [descriptor alertSceneTargetBundleIdentifiers];

  v10 = [objc_alloc(MEMORY[0x277CB98A8]) initWithDestination:7];
  v11 = [alertSceneTargetBundleIdentifiers objectForKey:v10];

  _isCoverSheetVisible = 0;
  if (v5 && v6 && v11)
  {
    _isCoverSheetVisible = [(SBActivityAlert *)self _isCoverSheetVisible];
  }

  return _isCoverSheetVisible;
}

- (BOOL)shouldAlertInEnvironment:(int64_t)environment
{
  BSDispatchQueueAssertMain();
  v5 = [(SBActivityAlert *)self _hasPresentationDestination:3];
  v6 = [(SBActivityAlert *)self _hasPresentationDestination:1];
  v7 = [(SBActivityAlert *)self _hasPresentationDestination:0];
  v8 = [(SBActivityAlert *)self _hasPresentationDestination:2];
  v9 = (v6 || v7) | v8 | [(SBActivityAlert *)self _hasPresentationDestination:7];
  if (environment)
  {
    LOBYTE(v9) = 0;
  }

  if (environment == 1)
  {
    LOBYTE(v9) = v5;
  }

  return v9 & 1;
}

- (BOOL)_hasPresentationDestination:(int64_t)destination
{
  item = [(SBActivityAlert *)self item];
  descriptor = [item descriptor];

  presentationOptions = [descriptor presentationOptions];
  destinations = [presentationOptions destinations];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SBActivityAlert__hasPresentationDestination___block_invoke;
  v9[3] = &__block_descriptor_40_e43_B16__0__ACActivityPresentationDestination_8l;
  v9[4] = destination;
  LOBYTE(destination) = [destinations bs_containsObjectPassingTest:v9];

  return destination;
}

- (void)_playSound
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_playingSound)
  {
    alertConfiguration = SBLogActivity();
    if (os_log_type_enabled(alertConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(SBUISound *)self->_playingSound description];
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_21ED4E000, alertConfiguration, OS_LOG_TYPE_DEFAULT, "Already playing alert sound: %@", buf, 0xCu);
    }
  }

  else
  {
    alertConfiguration = [(ACUISActivityAlertOptions *)self->_options alertConfiguration];
    if (!alertConfiguration)
    {
      alertConfiguration = [objc_alloc(MEMORY[0x277D71F58]) initWithType:16];
    }

    objc_initWeak(buf, self);
    v5 = objc_alloc(MEMORY[0x277D679C8]);
    v6 = [MEMORY[0x277D71F50] alertWithConfiguration:alertConfiguration];
    v7 = [v5 initWithToneAlert:v6];

    v8 = +[SBSoundController sharedInstance];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __29__SBActivityAlert__playSound__block_invoke;
    v12[3] = &unk_2783A9CE8;
    objc_copyWeak(&v14, buf);
    v9 = v7;
    v13 = v9;
    [v8 playSound:v9 environments:1 completion:v12];

    playingSound = self->_playingSound;
    self->_playingSound = v9;
    v11 = v9;

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __29__SBActivityAlert__playSound__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[7];
    if (v3 == *(a1 + 32))
    {
      WeakRetained[7] = 0;
      v4 = WeakRetained;

      WeakRetained = v4;
    }
  }
}

- (void)_stopSoundIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = +[SBSoundController sharedInstance];
  if (neededCopy && [v4 isPlaying:neededCopy])
  {
    [v4 stopSound:self->_playingSound];
  }
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = SBActivityAlert;
  v3 = [(SBActivityAlert *)&v6 description];
  v4 = [(SBActivityAlert *)self descriptionWithMultilinePrefix:v3];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBActivityAlert *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBActivityAlert *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBActivityAlert *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_item withName:@"item"];
  v6 = [succinctDescriptionBuilder appendObject:self->_payloadIdentifier withName:@"payloadIdentifier"];
  v7 = [succinctDescriptionBuilder appendObject:self->_options withName:@"options"];

  return succinctDescriptionBuilder;
}

@end