@interface SBActivityAlert
- (BOOL)_canPresentAlertTypeModalFullScreenInEnvironment:(int64_t)a3;
- (BOOL)_hasPresentationDestination:(int64_t)a3;
- (BOOL)_isCoverSheetVisible;
- (BOOL)_isHostApplicationForeground;
- (BOOL)canPresentAlertTypeBannerOrSystemApertureInEnvironment:(int64_t)a3;
- (BOOL)canPresentAlertTypeNoneInEnvironment:(int64_t)a3;
- (BOOL)canPresentInEnvironment:(int64_t)a3 alertType:(int64_t)a4;
- (BOOL)shouldAlertInEnvironment:(int64_t)a3;
- (NSString)description;
- (SBActivityAlert)alertWithScreenOn:(BOOL)a3 playSound:(BOOL)a4;
- (SBActivityAlert)initWithItem:(id)a3 payloadIdentifier:(id)a4 options:(id)a5 title:(id)a6 body:(id)a7;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_playSound;
- (void)_stopSoundIfNeeded:(id)a3;
- (void)dealloc;
- (void)stopAlerting;
@end

@implementation SBActivityAlert

- (BOOL)_isCoverSheetVisible
{
  v2 = +[SBCoverSheetPresentationManager sharedInstance];
  v3 = [v2 isVisible];

  return v3;
}

- (BOOL)_isHostApplicationForeground
{
  BSDispatchQueueAssertMain();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = [(SBActivityItem *)self->_item descriptor];
  v4 = [v3 platterTargetBundleIdentifier];
  v5 = [SBApp windowSceneManager];
  v6 = [v5 activeDisplayWindowScene];

  v7 = [v6 switcherController];
  v8 = [v7 switcherCoordinator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SBActivityAlert__isHostApplicationForeground__block_invoke;
  v11[3] = &unk_2783B0A70;
  v9 = v4;
  v12 = v9;
  v13 = &v14;
  [v8 enumerateSwitcherControllersWithBlock:v11];

  LOBYTE(v7) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v7;
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

- (SBActivityAlert)initWithItem:(id)a3 payloadIdentifier:(id)a4 options:(id)a5 title:(id)a6 body:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = SBActivityAlert;
  v17 = [(SBActivityAlert *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_item, a3);
    objc_storeStrong(&v18->_payloadIdentifier, a4);
    objc_storeStrong(&v18->_options, a5);
    objc_storeStrong(&v18->_title, a6);
    objc_storeStrong(&v18->_body, a7);
  }

  return v18;
}

- (SBActivityAlert)alertWithScreenOn:(BOOL)a3 playSound:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v17 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v7 = [(SBActivityItem *)self->_item identifier];
  if (v4)
  {
    v8 = SBLogActivity();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] alerting with sound", buf, 0xCu);
    }

    [(SBActivityAlert *)self _playSound];
  }

  if (v5)
  {
    v9 = SBLogActivity();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v7;
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

- (BOOL)canPresentInEnvironment:(int64_t)a3 alertType:(int64_t)a4
{
  BSDispatchQueueAssertMain();
  if (a4 <= 1)
  {
    if (!a4)
    {

      return [(SBActivityAlert *)self canPresentAlertTypeNoneInEnvironment:a3];
    }

    if (a4 != 1)
    {
      return 0;
    }

LABEL_10:

    return [(SBActivityAlert *)self canPresentAlertTypeBannerOrSystemApertureInEnvironment:a3];
  }

  if (a4 == 2)
  {
    goto LABEL_10;
  }

  if (a4 != 3)
  {
    if (a4 == 4)
    {

      return [(SBActivityAlert *)self _canPresentAlertTypeModalFullScreenInEnvironment:a3];
    }

    return 0;
  }

  return [(SBActivityAlert *)self canPresentAlertTypeAmbientInEnvironment:a3];
}

- (BOOL)canPresentAlertTypeNoneInEnvironment:(int64_t)a3
{
  if (a3 || [(SBActivityAlert *)self canPresentAlertTypeBannerOrSystemApertureInEnvironment:?])
  {
    return 1;
  }

  return [(SBActivityAlert *)self _canPresentAlertTypeModalFullScreenInEnvironment:0];
}

- (BOOL)canPresentAlertTypeBannerOrSystemApertureInEnvironment:(int64_t)a3
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v3 = 0;
  }

  else
  {
    v5 = +[SBLiveActivityDomain rootSettings];
    v6 = [v5 allowAlertsOnHostApp];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v8 = [(SBActivityAlert *)self item];
      v9 = [v8 descriptor];
      v10 = [v9 presentationOptions];
      v7 = [v10 shouldSuppressAlertContentOnHostApplication] ^ 1;
    }

    v11 = [(SBActivityAlert *)self item];
    v12 = [v11 descriptor];
    v13 = [v12 presentationOptions];
    v14 = [v13 destinations];
    v15 = [v14 bs_containsObjectPassingTest:&__block_literal_global_176];

    v16 = [(SBActivityAlert *)self item];
    v17 = [v16 descriptor];
    v18 = [v17 presentationOptions];
    v19 = [v18 shouldSuppressAlertContentOnLockScreen] | v15;

    v20 = +[SBControlCenterCoordinator sharedInstance];
    v21 = [v20 isVisible];

    v22 = [(SBActivityAlert *)self _isCoverSheetVisible]& (v21 ^ 1);
    if (v7)
    {
      v23 = 0;
      v24 = v19 & v22;
    }

    else
    {
      v25 = [(SBActivityAlert *)self _isHostApplicationForeground];
      v24 = v25 | v19 & v22;
      v23 = v25;
    }

    v3 = v24 ^ 1;
    v26 = SBLogActivity();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(SBActivityItem *)self->_item identifier];
      v29 = 138545154;
      v30 = v27;
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
      v44 = v21 & 1;
      _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] can present alert: %{BOOL}u,  isHostApplicationForeground: %{BOOL}u, isCoverSheetVisible: %{BOOL}u, hasLockScreenPlatter: %{BOOL}u, allowAlertsOnCoverSheet: %{BOOL}u, allowAlertsOnHostApp: %{BOOL}u, controlCenterVisible: %{BOOL}u", &v29, 0x36u);
    }
  }

  return v3 & 1;
}

- (BOOL)_canPresentAlertTypeModalFullScreenInEnvironment:(int64_t)a3
{
  if (a3 == 1)
  {
    return 0;
  }

  v5 = [(SBActivityAlert *)self _hasPresentationDestination:0];
  v6 = [(SBActivityAlert *)self _hasPresentationDestination:7];
  v7 = [(SBActivityAlert *)self item];
  v8 = [v7 descriptor];
  v9 = [v8 alertSceneTargetBundleIdentifiers];

  v10 = [objc_alloc(MEMORY[0x277CB98A8]) initWithDestination:7];
  v11 = [v9 objectForKey:v10];

  v3 = 0;
  if (v5 && v6 && v11)
  {
    v3 = [(SBActivityAlert *)self _isCoverSheetVisible];
  }

  return v3;
}

- (BOOL)shouldAlertInEnvironment:(int64_t)a3
{
  BSDispatchQueueAssertMain();
  v5 = [(SBActivityAlert *)self _hasPresentationDestination:3];
  v6 = [(SBActivityAlert *)self _hasPresentationDestination:1];
  v7 = [(SBActivityAlert *)self _hasPresentationDestination:0];
  v8 = [(SBActivityAlert *)self _hasPresentationDestination:2];
  v9 = (v6 || v7) | v8 | [(SBActivityAlert *)self _hasPresentationDestination:7];
  if (a3)
  {
    LOBYTE(v9) = 0;
  }

  if (a3 == 1)
  {
    LOBYTE(v9) = v5;
  }

  return v9 & 1;
}

- (BOOL)_hasPresentationDestination:(int64_t)a3
{
  v4 = [(SBActivityAlert *)self item];
  v5 = [v4 descriptor];

  v6 = [v5 presentationOptions];
  v7 = [v6 destinations];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SBActivityAlert__hasPresentationDestination___block_invoke;
  v9[3] = &__block_descriptor_40_e43_B16__0__ACActivityPresentationDestination_8l;
  v9[4] = a3;
  LOBYTE(a3) = [v7 bs_containsObjectPassingTest:v9];

  return a3;
}

- (void)_playSound
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_playingSound)
  {
    v3 = SBLogActivity();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(SBUISound *)self->_playingSound description];
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Already playing alert sound: %@", buf, 0xCu);
    }
  }

  else
  {
    v3 = [(ACUISActivityAlertOptions *)self->_options alertConfiguration];
    if (!v3)
    {
      v3 = [objc_alloc(MEMORY[0x277D71F58]) initWithType:16];
    }

    objc_initWeak(buf, self);
    v5 = objc_alloc(MEMORY[0x277D679C8]);
    v6 = [MEMORY[0x277D71F50] alertWithConfiguration:v3];
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

- (void)_stopSoundIfNeeded:(id)a3
{
  v5 = a3;
  v4 = +[SBSoundController sharedInstance];
  if (v5 && [v4 isPlaying:v5])
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
  v2 = [(SBActivityAlert *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBActivityAlert *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBActivityAlert *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_item withName:@"item"];
  v6 = [v4 appendObject:self->_payloadIdentifier withName:@"payloadIdentifier"];
  v7 = [v4 appendObject:self->_options withName:@"options"];

  return v4;
}

@end