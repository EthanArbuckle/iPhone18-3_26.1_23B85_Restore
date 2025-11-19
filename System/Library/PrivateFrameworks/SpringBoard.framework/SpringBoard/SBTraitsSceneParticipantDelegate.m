@interface SBTraitsSceneParticipantDelegate
- (BOOL)_isAllowedToHavePortraitUpsideDown;
- (BOOL)needsActuationForUpdateReasons:(int64_t)a3;
- (BOOL)scenePrefersOrientationLocked;
- (FBScene)scene;
- (NSString)description;
- (SBSceneHandle)sceneHandle;
- (SBTraitsSceneParticipantDelegate)initWithScene:(id)a3;
- (SBTraitsSceneParticipantDelegate)initWithSceneHandle:(id)a3;
- (TRAArbiter)arbiter;
- (TRAParticipant)participant;
- (double)_angleFromScreenReferenceSpaceForSettings:(id)a3 displayIdentity:(id)a4;
- (id)_application;
- (id)lazyOrientationRequestActionAssistant;
- (id)participantAssociatedSceneIdentityTokens:(id)a3;
- (int64_t)_orientationMode;
- (int64_t)_preferredOrientation;
- (int64_t)sceneCurrentOrientation;
- (unint64_t)_allLegalOrientations;
- (unint64_t)_bestGuessSupportedInterfaceOrientations;
- (unint64_t)_hostReferenceAngleModeForDisplayIdentity:(id)a3;
- (unint64_t)_sanitizedMask:(unint64_t)a3 forApplication:(id)a4;
- (unint64_t)_supportedOrientations;
- (void)_bestGuessSupportedInterfaceOrientations;
- (void)_evaluateOrientationTransitionContext:(id)a3;
- (void)_resetToInitialState;
- (void)actuateOrientationSettingsWithContext:(id)a3;
- (void)actuateUserInterfaceStyleSettingsWithContext:(id)a3;
- (void)actuateZOrderLevelSettings;
- (void)appendDescriptionForParticipant:(id)a3 withBuilder:(id)a4 multilinePrefix:(id)a5;
- (void)dealloc;
- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4;
- (void)invalidate;
- (void)participantWillInvalidate:(id)a3;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneHandle:(id)a3 didCreateScene:(id)a4;
- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4;
- (void)setParticipant:(id)a3;
- (void)setScene:(id)a3;
- (void)setSceneHandle:(id)a3;
- (void)updateOrientationLockGrantedIfNeeded:(BOOL)a3;
- (void)updateOrientationSceneSettingsForParticipant:(id)a3;
- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4;
- (void)updatePreferencesWithUpdater:(id)a3;
@end

@implementation SBTraitsSceneParticipantDelegate

- (SBSceneHandle)sceneHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);

  return WeakRetained;
}

- (TRAParticipant)participant
{
  WeakRetained = objc_loadWeakRetained(&self->_participant);

  return WeakRetained;
}

- (int64_t)_preferredOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  if ([WeakRetained isActive])
  {
    v3 = [WeakRetained clientSettings];
    v4 = [v3 preferredInterfaceOrientation];
    if (!v4)
    {
      v5 = [WeakRetained settings];
      v4 = [v5 interfaceOrientation];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_application
{
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v5 = SBSafeCast(v3, WeakRetained);

  v6 = [v5 application];
  v7 = objc_loadWeakRetained(&self->_scene);
  v8 = v7;
  if (!v6)
  {
    v9 = [v7 clientHandle];
    v10 = [v8 clientHandle];
    v11 = [v10 processHandle];

    if (v11)
    {
      v12 = +[SBApplicationController sharedInstance];
      v13 = [v9 bundleIdentifier];
      v6 = [v12 applicationWithBundleIdentifier:v13];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)_supportedOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v4 = [WeakRetained uiSettings];
  v5 = [v4 interfaceOrientationMode];

  if (v5 == 2)
  {
    v6 = 30;
  }

  else if ([WeakRetained isActive])
  {
    v7 = [WeakRetained clientSettings];
    v8 = [v7 supportedInterfaceOrientations];
    if (!v8)
    {
      v8 = [(SBTraitsSceneParticipantDelegate *)self _allLegalOrientations];
    }

    v9 = [(SBTraitsSceneParticipantDelegate *)self _application];
    v6 = [(SBTraitsSceneParticipantDelegate *)self _sanitizedMask:v8 forApplication:v9];
  }

  else
  {
    v6 = [(SBTraitsSceneParticipantDelegate *)self _bestGuessSupportedInterfaceOrientations];
  }

  return v6;
}

- (unint64_t)_bestGuessSupportedInterfaceOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained isActive])
  {
    [SBTraitsSceneParticipantDelegate _bestGuessSupportedInterfaceOrientations];
  }

  v5 = [(SBTraitsSceneParticipantDelegate *)self _application];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  if ([v5 isMedusaCapable])
  {
    v7 = 30;
  }

  else
  {
    v8 = [v6 info];
    v7 = [v8 supportedInterfaceOrientations];
  }

  v9 = [(SBTraitsSceneParticipantDelegate *)self _sanitizedMask:v7 forApplication:v6];
  if (!v9)
  {
LABEL_9:
    v9 = [(SBTraitsSceneParticipantDelegate *)self initialSupportedOrientationsOverride];
    if (!v9)
    {
      v9 = [(SBTraitsSceneParticipantDelegate *)self _allLegalOrientations];
    }
  }

  v10 = v9;

  return v10;
}

- (unint64_t)_allLegalOrientations
{
  if ([(SBTraitsSceneParticipantDelegate *)self _isAllowedToHavePortraitUpsideDown])
  {
    return 30;
  }

  else
  {
    return 26;
  }
}

- (BOOL)_isAllowedToHavePortraitUpsideDown
{
  if (__sb__runningInSpringBoard())
  {
    v2 = SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1 || SBFEffectiveHomeButtonType() != 2;
  }

  else
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    if ([v3 userInterfaceIdiom])
    {
      v2 = 1;
    }

    else
    {
      v2 = SBFEffectiveHomeButtonType() != 2;
    }
  }

  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  return (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 || v2;
}

- (void)actuateZOrderLevelSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_participant);
  v4 = [WeakRetained currentSettings];
  v11 = [v4 zOrderLevelSettings];

  v5 = objc_loadWeakRetained(&self->_scene);
  if (v5)
  {
    if (v11)
    {
      [v11 zOrderLevel];
      v7 = v6;
      v8 = [v5 settings];
      [v8 level];
      v9 = BSFloatEqualToFloat();

      if ((v9 & 1) == 0)
      {
        [SBSceneSettingsUpdater safeUpdateScene:v5 withSceneLevel:v7];
        actuateZOrderAlongsideBlock = self->_actuateZOrderAlongsideBlock;
        if (actuateZOrderAlongsideBlock)
        {
          actuateZOrderAlongsideBlock[2](v7);
        }
      }
    }
  }
}

- (int64_t)_orientationMode
{
  result = self->_orientationModeOverride;
  if (!result)
  {
    orientationMode = self->_orientationMode;
    if (!orientationMode)
    {
      v5 = [MEMORY[0x277D75418] currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v7 = [(SBTraitsSceneParticipantDelegate *)self _application];
        v8 = v7;
        if (v7)
        {
          v9 = [v7 isMedusaCapable];
          v10 = 1;
          if (v9)
          {
            v10 = 2;
          }

          self->_orientationMode = v10;
        }

        else
        {
          self->_orientationMode = 1;
          WeakRetained = objc_loadWeakRetained(&self->_scene);
          v12 = [WeakRetained clientHandle];
          v13 = [v12 processHandle];

          v14 = [v13 bundle];
          if (v14)
          {
            bundleOrientationProperties = self->_bundleOrientationProperties;
            if (!bundleOrientationProperties)
            {
              v16 = [v14 bundleInfoValuesForKeys:&unk_28336E898];
              v17 = self->_bundleOrientationProperties;
              self->_bundleOrientationProperties = v16;

              bundleOrientationProperties = self->_bundleOrientationProperties;
            }

            v18 = [(NSDictionary *)bundleOrientationProperties bs_BOOLForKey:@"UIRequiresFullScreen"];
            v19 = [(NSDictionary *)self->_bundleOrientationProperties bs_safeArrayForKey:@"UISupportedInterfaceOrientations~ipad"];
            v20 = [v19 count];

            if ((v18 & 1) == 0 && v20 == 4)
            {
              self->_orientationMode = 2;
            }
          }
        }

        orientationMode = self->_orientationMode;
      }

      else
      {
        orientationMode = 1;
        self->_orientationMode = 1;
      }
    }

    if (orientationMode <= 1)
    {
      return 1;
    }

    else
    {
      return orientationMode;
    }
  }

  return result;
}

- (FBScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (SBTraitsSceneParticipantDelegate)initWithScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBTraitsSceneParticipantDelegate;
  v5 = [(SBTraitsSceneParticipantDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
    [v4 addObserver:v6];
    *&v6->_orientationActuationEnabled = 257;
  }

  return v6;
}

- (SBTraitsSceneParticipantDelegate)initWithSceneHandle:(id)a3
{
  v4 = a3;
  v5 = [v4 sceneIfExists];
  v6 = [(SBTraitsSceneParticipantDelegate *)self initWithScene:v5];

  if (v6)
  {
    objc_storeWeak(&v6->_sceneHandle, v4);
    [v4 addObserver:v6];
  }

  return v6;
}

- (void)invalidate
{
  self->_invalidated = 1;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  [WeakRetained removeObserver:self];

  objc_storeWeak(&self->_scene, 0);
  v4 = objc_loadWeakRetained(&self->_sceneHandle);
  [v4 removeObserver:self];

  objc_storeWeak(&self->_sceneHandle, 0);
}

- (void)dealloc
{
  [(SBTraitsSceneParticipantDelegate *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBTraitsSceneParticipantDelegate;
  [(SBTraitsSceneParticipantDelegate *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v9.receiver = self;
  v9.super_class = SBTraitsSceneParticipantDelegate;
  v4 = [(SBTraitsSceneParticipantDelegate *)&v9 description];
  v5 = [v3 stringWithString:v4];

  WeakRetained = objc_loadWeakRetained(&self->_participant);
  v7 = [(SBTraitsSceneParticipantDelegate *)self participantAssociatedSceneIdentityTokens:WeakRetained];
  [v5 appendFormat:@" %@", v7];

  return v5;
}

- (void)setSceneHandle:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  if ((SBEqualObjects(WeakRetained, obj) & 1) == 0)
  {
    if (WeakRetained)
    {
      [(SBTraitsSceneParticipantDelegate *)self _resetToInitialState];
    }

    v5 = [obj sceneIfExists];
    [(SBTraitsSceneParticipantDelegate *)self setScene:v5];

    objc_storeWeak(&self->_sceneHandle, obj);
    v6 = objc_loadWeakRetained(&self->_scene);

    if (!v6)
    {
      [obj addObserver:self];
    }
  }
}

- (void)setScene:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [(SBTraitsSceneParticipantDelegate *)self _resetToInitialState];
    }

    objc_storeWeak(&self->_scene, obj);
    [obj addObserver:self];
  }
}

- (void)setParticipant:(id)a3
{
  obj = a3;
  if (obj)
  {
    v5 = [obj role];
    v6 = SBTraitsArbiterOrientationActuationEnabledForRole(v5);

    if ((v6 & 1) == 0)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [obj role];
      [v7 handleFailureInMethod:a2 object:self file:@"SBTraitsSceneParticipantDelegate.m" lineNumber:167 description:{@"%@ requires its participant{%@} to be active", v9, v10}];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_participant);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_participant, obj);
  }
}

- (void)updatePreferencesWithUpdater:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBTraitsSceneParticipantDelegate updatePreferencesWithUpdater:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__SBTraitsSceneParticipantDelegate_updatePreferencesWithUpdater___block_invoke;
  v8[3] = &unk_2783BCCF0;
  v8[4] = self;
  v9 = WeakRetained;
  v6 = WeakRetained;
  [v4 updateZOrderLevelPreferencesWithBlock:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SBTraitsSceneParticipantDelegate_updatePreferencesWithUpdater___block_invoke_2;
  v7[3] = &unk_2783B0DC0;
  v7[4] = self;
  [v4 updateOrientationPreferencesWithBlock:v7];
}

void __65__SBTraitsSceneParticipantDelegate_updatePreferencesWithUpdater___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 96);
  v9 = v3;
  if (v4)
  {
    [v4 floatValue];
    [v9 setPreferredZOrderLevel:v5];
  }

  else
  {
    v6 = [*(a1 + 40) clientSettings];
    [v6 preferredLevel];
    if (v7 == 0.0)
    {
      v8 = [*(a1 + 40) settings];
      [v8 level];
      [v9 setPreferredZOrderLevel:?];
    }

    else
    {
      [v9 setPreferredZOrderLevel:?];
    }
  }
}

void __65__SBTraitsSceneParticipantDelegate_updatePreferencesWithUpdater___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 56);
  v4 = a2;
  [v4 setCanDetermineActiveOrientation:v3];
  [v4 setSupportedOrientations:{objc_msgSend(*(a1 + 32), "_supportedOrientations")}];
  [v4 setPreferredOrientation:{objc_msgSend(*(a1 + 32), "_preferredOrientation")}];
}

- (unint64_t)_sanitizedMask:(unint64_t)a3 forApplication:(id)a4
{
  v6 = a4;
  if (a3 == 4 && ![(SBTraitsSceneParticipantDelegate *)self _isAllowedToHavePortraitUpsideDown])
  {
    v7 = 2;
  }

  else
  {
    v7 = [(SBTraitsSceneParticipantDelegate *)self _allLegalOrientations]& a3;
  }

  return v7;
}

- (void)actuateUserInterfaceStyleSettingsWithContext:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_participant);
  v6 = objc_loadWeakRetained(&self->_scene);
  if (v6)
  {
    v7 = [WeakRetained currentSettings];

    if (v7)
    {
      v8 = [WeakRetained currentUserInterfaceStyle];
      v9 = [v6 uiSettings];
      v10 = [v9 userInterfaceStyle];

      if (v8 != v10)
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __81__SBTraitsSceneParticipantDelegate_actuateUserInterfaceStyleSettingsWithContext___block_invoke;
        v11[3] = &unk_2783BCD18;
        v13 = v8;
        v12 = v4;
        [SBSceneSettingsUpdater safeUpdateScene:v6 withBlock:v11];
      }
    }
  }
}

void __81__SBTraitsSceneParticipantDelegate_actuateUserInterfaceStyleSettingsWithContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  [a2 setUserInterfaceStyle:v5];
  v7 = [*(a1 + 32) drawingFence];
  [v6 setAnimationFence:v7];

  v8 = [*(a1 + 32) animationSettings];
  [v6 setAnimationSettings:v8];
}

- (void)actuateOrientationSettingsWithContext:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_participant);
  v6 = objc_loadWeakRetained(&self->_scene);
  if (v6)
  {
    v7 = [WeakRetained currentSettings];

    if (v7)
    {
      v24 = 0;
      v25 = 0;
      v23 = 0;
      SBTraitsSceneParticipantDelegateOrientationChangeInspector(v6, WeakRetained, &v25, &v24, &v23);
      [(SBTraitsSceneOrientationRequestsAssistant *)self->_orientationRequestActionAssistant checkValidityAgainstUpdateReasons:v23];
      v8 = v23;
      if ((v23 & 0xE) != 0)
      {
        v9 = [v4 drawingFence];
        if ((v8 & 1) == 0 && self->_orientationActuationAnimatable && [v6 contentState] == 2)
        {
          v10 = [SBAnimationUtilities animationSettingsForRotationFromOrientation:v24 toOrientation:v25 withContext:v4];
        }

        else
        {
          v10 = [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
        }

        v11 = v10;
        v12 = [v6 isActive];
        if ((v8 & 2) != 0)
        {
          if (v12)
          {
            v13 = [v4 animationSettings];

            if (v13)
            {
              if (!v9)
              {
                [(BKSAnimationFenceHandle *)self->_fallbackFence_90210730 invalidate];
                v14 = [*MEMORY[0x277D76620] _systemAnimationFenceCreatingIfNecessary:1];
                fallbackFence_90210730 = self->_fallbackFence_90210730;
                self->_fallbackFence_90210730 = v14;

                v9 = self->_fallbackFence_90210730;
              }
            }
          }
        }

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __74__SBTraitsSceneParticipantDelegate_actuateOrientationSettingsWithContext___block_invoke;
        v20[3] = &unk_2783BCD40;
        v20[4] = self;
        v16 = v9;
        v21 = v16;
        v17 = v11;
        v22 = v17;
        [SBSceneSettingsUpdater safeUpdateScene:v6 withBlock:v20];
        if ((v8 & 2) != 0 && self->_actuateOrientationAlongsideBlock)
        {
          [MEMORY[0x277D75DA0] _synchronizeDrawing];
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __74__SBTraitsSceneParticipantDelegate_actuateOrientationSettingsWithContext___block_invoke_2;
          v19[3] = &unk_2783A8BC8;
          v19[4] = self;
          v19[5] = v23;
          [MEMORY[0x277CF0D38] animateWithSettings:v17 actions:v19 completion:0];
        }

        [(BKSAnimationFenceHandle *)self->_fallbackFence_90210730 invalidate];
        v18 = self->_fallbackFence_90210730;
        self->_fallbackFence_90210730 = 0;
      }
    }
  }
}

void __74__SBTraitsSceneParticipantDelegate_actuateOrientationSettingsWithContext___block_invoke(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a1[4];
  v6 = a3;
  [v5 updateOrientationSceneSettingsForParticipant:v8];
  [v6 setAnimationFence:a1[5]];
  [v6 setAnimationSettings:a1[6]];

  v7 = *(a1[4] + 136);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

- (void)updateOrientationSceneSettingsForParticipant:(id)a3
{
  v13 = a3;
  if (([v13 isUISubclass] & 1) == 0)
  {
    [SBTraitsSceneParticipantDelegate updateOrientationSceneSettingsForParticipant:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_participant);
  v5 = [WeakRetained currentSettings];
  v6 = [v5 orientationSettings];

  if (v6)
  {
    v7 = [v13 displayIdentity];
    v8 = [v6 validatedOrientationInputs];
    v9 = [v8 currentDeviceOrientation];

    [(SBTraitsSceneParticipantDelegate *)self _angleFromScreenReferenceSpaceForSettings:v6 displayIdentity:v7];
    v11 = v10;
    [v13 setHostReferenceAngleMode:{-[SBTraitsSceneParticipantDelegate _hostReferenceAngleModeForDisplayIdentity:](self, "_hostReferenceAngleModeForDisplayIdentity:", v7)}];
    [v13 setAngleFromHostReferenceUprightDirection:v11];
    v12 = [v6 orientationMapResolver];
    [v13 setInterfaceOrientationMapResolver:v12];

    [v13 setInterfaceOrientationMode:{-[SBTraitsSceneParticipantDelegate _orientationMode](self, "_orientationMode")}];
    [v13 setInterfaceOrientation:{objc_msgSend(v6, "orientation")}];
    [v13 setDeviceOrientation:v9];
  }
}

- (unint64_t)_hostReferenceAngleModeForDisplayIdentity:(id)a3
{
  if ([a3 isExternal])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (double)_angleFromScreenReferenceSpaceForSettings:(id)a3 displayIdentity:(id)a4
{
  v6 = SBApp;
  v7 = a4;
  v8 = a3;
  v9 = [v6 windowSceneManager];
  v10 = [v9 windowSceneForDisplayIdentity:v7];

  v11 = [v10 switcherController];
  v12 = [v11 windowManagementContext];
  [v12 isChamoisOrFlexibleWindowing];

  v13 = [(SBTraitsSceneParticipantDelegate *)self _application];
  [v13 classicAppPhoneAppRunningOnPad];

  [v8 orientation];
  v14 = [v8 validatedOrientationInputs];

  [v14 nonFlatDeviceOrientation];
  SBFAngleForRotationFromInterfaceOrientationToInterfaceOrientation();
  BSRadiansToDegrees();
  v16 = v15;

  return v16;
}

- (int64_t)sceneCurrentOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v3 = [WeakRetained sceneIfExists];
  v4 = [v3 settings];
  v5 = [v4 interfaceOrientation];

  return v5;
}

- (BOOL)scenePrefersOrientationLocked
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = [WeakRetained ui_orientationHostSceneComponent];

  LOBYTE(WeakRetained) = [v3 clientPrefersInterfaceOrientationLocked];
  return WeakRetained;
}

- (void)updateOrientationLockGrantedIfNeeded:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v8 = [WeakRetained ui_orientationHostSceneComponent];

  if ([(SBTraitsSceneParticipantDelegate *)self scenePrefersOrientationLocked])
  {
    v6 = v8;
    if (v3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    if (![v8 interfaceOrientationLockState])
    {
      goto LABEL_8;
    }

    v6 = v8;
    v7 = 0;
  }

  [v6 setInterfaceOrientationLockState:v7];
LABEL_8:
}

- (BOOL)needsActuationForUpdateReasons:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v6 = WeakRetained;
  v7 = 0;
  if (a3 && WeakRetained)
  {
    v8 = [WeakRetained settings];
    v9 = [v8 isUISubclass];

    if ((v9 & 1) == 0)
    {
      [SBTraitsSceneParticipantDelegate needsActuationForUpdateReasons:];
    }

    v10 = objc_loadWeakRetained(&self->_participant);
    v11 = [v6 settings];
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v20 = __67__SBTraitsSceneParticipantDelegate_needsActuationForUpdateReasons___block_invoke;
    v21 = &unk_2783BCD68;
    v24 = &v25;
    v12 = v11;
    v22 = v12;
    v13 = v10;
    v23 = v13;
    v14 = v19;
    v15 = 0;
    v29 = 0;
    v16 = vcnt_s8(a3);
    v16.i16[0] = vaddlv_u8(v16);
    v17 = v16.i32[0];
    do
    {
      if (((1 << v15) & a3) != 0)
      {
        v20(v14);
        if (v29)
        {
          break;
        }

        --v17;
      }

      if (v15 > 0x3E)
      {
        break;
      }

      ++v15;
    }

    while (v17 > 0);

    v7 = *(v26 + 24);
    _Block_object_dispose(&v25, 8);
  }

  return v7 & 1;
}

void __67__SBTraitsSceneParticipantDelegate_needsActuationForUpdateReasons___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  switch(a2)
  {
    case 8:
      v8 = [*(a1 + 32) interfaceOrientationMapResolver];
      v9 = [*(a1 + 40) currentSettings];
      v10 = [v9 orientationSettings];
      v11 = [v10 orientationMapResolver];
      *(*(*(a1 + 48) + 8) + 24) = [v8 isEqual:v11] ^ 1;

      break;
    case 4:
      v6 = [*(a1 + 32) deviceOrientation];
      v7 = [*(a1 + 40) currentDeviceOrientation];
      goto LABEL_6;
    case 2:
      v6 = [*(a1 + 32) interfaceOrientation];
      v7 = [*(a1 + 40) currentOrientation];
LABEL_6:
      *(*(*(a1 + 48) + 8) + 24) = v6 != v7;
      break;
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24);
}

- (void)sceneHandle:(id)a3 didCreateScene:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);

  if (WeakRetained != v8)
  {
    [SBTraitsSceneParticipantDelegate sceneHandle:didCreateScene:];
  }

  [(SBTraitsSceneParticipantDelegate *)self setScene:v6];
  if (v6)
  {
    [v8 removeObserver:self];
  }
}

- (void)sceneHandle:(id)a3 didDestroyScene:(id)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);

  if (WeakRetained != v5)
  {
    [SBTraitsSceneParticipantDelegate sceneHandle:didDestroyScene:];
  }

  [(SBTraitsSceneParticipantDelegate *)self setScene:0];
}

- (void)sceneContentStateDidChange:(id)a3
{
  v4 = a3;
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scene);

    if (WeakRetained != v4)
    {
      [SBTraitsSceneParticipantDelegate sceneContentStateDidChange:];
    }

    v6 = objc_loadWeakRetained(&self->_participant);
    if (!v6)
    {
      [SBTraitsSceneParticipantDelegate sceneContentStateDidChange:];
    }

    if ([v4 contentState] == 2)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __63__SBTraitsSceneParticipantDelegate_sceneContentStateDidChange___block_invoke;
      v7[3] = &unk_2783A92D8;
      v8 = v6;
      v9 = self;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }
  }
}

uint64_t __63__SBTraitsSceneParticipantDelegate_sceneContentStateDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsUpdatePreferencesWithReason:@"scene became ready (foreground)" animate:0];
  v2 = *(a1 + 40);
  if (v2[57] == 1)
  {
    [v2 actuateOrientationSettingsWithContext:0];
    v2 = *(a1 + 40);
  }

  return [v2 actuateUserInterfaceStyleSettingsWithContext:0];
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 settingsDiff];
  v9 = [v7 transitionContext];
  if (self->_invalidated)
  {
    goto LABEL_12;
  }

  WeakRetained = objc_loadWeakRetained(&self->_scene);

  if (WeakRetained != v6)
  {
    [SBTraitsSceneParticipantDelegate scene:didUpdateClientSettings:];
  }

  v11 = objc_loadWeakRetained(&self->_participant);

  if (v11)
  {
    if (v8)
    {
LABEL_6:
      sceneClientSettingsDiffInspector = self->_sceneClientSettingsDiffInspector;
      if (!sceneClientSettingsDiffInspector)
      {
        objc_initWeak(&location, self);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __66__SBTraitsSceneParticipantDelegate_scene_didUpdateClientSettings___block_invoke;
        v20[3] = &unk_2783AC8A0;
        objc_copyWeak(&v21, &location);
        v13 = MEMORY[0x223D6F7F0](v20);
        v14 = objc_alloc_init(MEMORY[0x277D75160]);
        v15 = self->_sceneClientSettingsDiffInspector;
        self->_sceneClientSettingsDiffInspector = v14;

        [(UIApplicationSceneClientSettingsDiffInspector *)self->_sceneClientSettingsDiffInspector observeSupportedInterfaceOrientationsWithBlock:v13];
        [(UIApplicationSceneClientSettingsDiffInspector *)self->_sceneClientSettingsDiffInspector observePreferredInterfaceOrientationWithBlock:v13];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
        sceneClientSettingsDiffInspector = self->_sceneClientSettingsDiffInspector;
      }

      [v8 evaluateWithInspector:sceneClientSettingsDiffInspector context:v9];
      v16 = [v7 settingsDiff];
      v17 = [v16 ui_clientSettingsDiffContainsInterfaceOrientationLockPreference];

      if (v17)
      {
        BSDispatchMain();
      }
    }
  }

  else
  {
    [SBTraitsSceneParticipantDelegate scene:didUpdateClientSettings:];
    if (v8)
    {
      goto LABEL_6;
    }
  }

  v18 = [v9 actions];

  if (v18)
  {
    v19 = [(SBTraitsSceneParticipantDelegate *)self lazyOrientationRequestActionAssistant];
    [v19 setUpForTransitionContextIfNeeded:v9];
  }

LABEL_12:
}

void __66__SBTraitsSceneParticipantDelegate_scene_didUpdateClientSettings___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _evaluateOrientationTransitionContext:a2];
}

void __66__SBTraitsSceneParticipantDelegate_scene_didUpdateClientSettings___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) lazyOrientationRequestActionAssistant];
  [v1 coalescedNotifyArbitrationUpdateNeeded:@"SBSceneOrientationLockRequestedNotification" withReason:@"Client settings update"];
}

- (id)lazyOrientationRequestActionAssistant
{
  orientationRequestActionAssistant = self->_orientationRequestActionAssistant;
  if (!orientationRequestActionAssistant)
  {
    v4 = [[SBTraitsSceneOrientationRequestsAssistant alloc] initWithTraitsSceneDelegate:self errorDomain:@"SBTraitsSceneParticipantDelegateErrorDomain"];
    v5 = self->_orientationRequestActionAssistant;
    self->_orientationRequestActionAssistant = v4;

    orientationRequestActionAssistant = self->_orientationRequestActionAssistant;
  }

  return orientationRequestActionAssistant;
}

- (void)_evaluateOrientationTransitionContext:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    v27 = a2;
    v28 = [(SBTraitsSceneParticipantDelegate *)self scene];
    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    v7 = objc_loadWeakRetained(&self->_participant);
    v8 = [v5 animationFence];
    v29 = [v5 animationSettings];
    v9 = objc_opt_class();
    v10 = SBSafeCast(v9, v5);
    v11 = v10;
    if (v10)
    {
      v12 = [v10 disableTouchCancellationOnRotation];
    }

    else
    {
      v12 = 0;
    }

    v13 = MEMORY[0x277CCACA8];
    v14 = [v7 role];
    v15 = [v13 stringWithFormat:@"%@ scene settings update", v14];

    v16 = v29;
    if (v29 || v8 || v12)
    {
      v17 = WeakRetained;
      if (!WeakRetained)
      {
        v18 = SBLogTraitsArbiter();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v26 = [v7 role];
          *buf = 138543874;
          v35 = self;
          v36 = 2114;
          v37 = v28;
          v38 = 2114;
          v39 = v26;
          _os_log_error_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_ERROR, "%{public}@ arbiter is nil for scene %{public}@. Cannot propagate animated client settings changes for delegate of participant with role %{public}@", buf, 0x20u);
        }

        v19 = [MEMORY[0x277CCA890] currentHandler];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        [v19 handleFailureInMethod:v27 object:self file:@"SBTraitsSceneParticipantDelegate.m" lineNumber:577 description:{@"%@ arbiter is nil. Cannot propagate animated client settings changes", v21}];

        v17 = 0;
        v16 = v29;
      }

      v22 = [objc_alloc(MEMORY[0x277D734E8]) initWithAnimationSettings:v16 drawingFence:v8 preventTouchCancellation:v12];
      [MEMORY[0x277D75940] _synchronizeDrawingWithFence:v8];
      v23 = objc_alloc(MEMORY[0x277D73498]);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __74__SBTraitsSceneParticipantDelegate__evaluateOrientationTransitionContext___block_invoke;
      v30[3] = &unk_2783BCD90;
      v31 = v15;
      v32 = v22;
      v33 = v7;
      v24 = v22;
      v25 = [v23 initWithBuilder:v30];
      [v17 setNeedsUpdateArbitrationWithContext:v25];

      v16 = v29;
    }

    else
    {
      [v7 setNeedsUpdatePreferencesWithReason:v15];
      v17 = WeakRetained;
    }
  }
}

void __74__SBTraitsSceneParticipantDelegate__evaluateOrientationTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setReason:v3];
  [v4 setOrientationActuationContext:*(a1 + 40)];
  v5 = [*(a1 + 48) uniqueIdentifier];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v4 setRequestingParticipantsUniqueIdentifiers:v6];
}

- (void)_resetToInitialState
{
  self->_orientationMode = 0;
  [(SBTraitsSceneOrientationRequestsAssistant *)self->_orientationRequestActionAssistant invalidate];
  orientationRequestActionAssistant = self->_orientationRequestActionAssistant;
  self->_orientationRequestActionAssistant = 0;

  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  [WeakRetained removeObserver:self];

  v5 = objc_loadWeakRetained(&self->_scene);
  [v5 removeObserver:self];

  objc_storeWeak(&self->_sceneHandle, 0);

  objc_storeWeak(&self->_scene, 0);
}

- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4
{
  v9 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_participant);

  if (WeakRetained == v6)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBTraitsSceneParticipantDelegate updatePreferencesForParticipant:updater:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [SBTraitsSceneParticipantDelegate updatePreferencesForParticipant:updater:];
LABEL_3:
  v8 = v9;
  if (!v9)
  {
    [SBTraitsSceneParticipantDelegate updatePreferencesForParticipant:updater:];
    v8 = 0;
  }

  [(SBTraitsSceneParticipantDelegate *)self updatePreferencesWithUpdater:v8];
}

- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_participant);

  if (WeakRetained == v6)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_12:
    [SBTraitsSceneParticipantDelegate didChangeSettingsForParticipant:context:];
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  [SBTraitsSceneParticipantDelegate didChangeSettingsForParticipant:context:];
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v7)
  {
    goto LABEL_4;
  }

LABEL_13:
  [SBTraitsSceneParticipantDelegate didChangeSettingsForParticipant:context:];
LABEL_4:
  [(SBTraitsSceneParticipantDelegate *)self actuateZOrderLevelSettings];
  v9 = [v7 userInterfaceStyleActuationContext];
  [(SBTraitsSceneParticipantDelegate *)self actuateUserInterfaceStyleSettingsWithContext:v9];

  if (self->_orientationActuationEnabled)
  {
    v10 = [v7 orientationActuationContext];
    [(SBTraitsSceneParticipantDelegate *)self actuateOrientationSettingsWithContext:v10];
LABEL_9:

    goto LABEL_10;
  }

  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = objc_loadWeakRetained(&self->_scene);
  SBTraitsSceneParticipantDelegateOrientationChangeInspector(v11, v6, &v14, &v13, &v15);

  [(SBTraitsSceneOrientationRequestsAssistant *)self->_orientationRequestActionAssistant checkValidityAgainstUpdateReasons:v15];
  actuateOrientationAlongsideBlock = self->_actuateOrientationAlongsideBlock;
  if (actuateOrientationAlongsideBlock && v15)
  {
    v10 = [v7 orientationActuationContext];
    actuateOrientationAlongsideBlock[2](actuateOrientationAlongsideBlock, v10, v15);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)participantWillInvalidate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_participant);

  if (WeakRetained != v4)
  {
    [SBTraitsSceneParticipantDelegate participantWillInvalidate:];
  }

  [(SBTraitsSceneParticipantDelegate *)self invalidate];
}

- (void)appendDescriptionForParticipant:(id)a3 withBuilder:(id)a4 multilinePrefix:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SBTraitsSceneParticipantDelegate *)self participantAssociatedSceneIdentityTokens:a3];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 bs_map:&__block_literal_global_263];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __96__SBTraitsSceneParticipantDelegate_appendDescriptionForParticipant_withBuilder_multilinePrefix___block_invoke_2;
    v14[3] = &unk_2783A92D8;
    v15 = v8;
    v16 = v12;
    v13 = v12;
    [v15 appendBodySectionWithName:@"Associated Scenes" multilinePrefix:v9 block:v14];
  }
}

- (id)participantAssociatedSceneIdentityTokens:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  if (WeakRetained)
  {
    v5 = WeakRetained;
LABEL_4:
    v7 = [v5 identityToken];
    v10[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

    goto LABEL_5;
  }

  v6 = objc_loadWeakRetained(&self->_sceneHandle);
  v5 = [v6 sceneIfExists];

  if (v5)
  {
    goto LABEL_4;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (TRAArbiter)arbiter
{
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);

  return WeakRetained;
}

- (void)updatePreferencesWithUpdater:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"updater != nil" object:? file:? lineNumber:? description:?];
}

- (void)_bestGuessSupportedInterfaceOrientations
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)updateOrientationSceneSettingsForParticipant:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)needsActuationForUpdateReasons:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)sceneHandle:didCreateScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"handle == _sceneHandle" object:? file:? lineNumber:? description:?];
}

- (void)sceneHandle:didDestroyScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"handle == _sceneHandle" object:? file:? lineNumber:? description:?];
}

- (void)sceneContentStateDidChange:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene == _scene" object:? file:? lineNumber:? description:?];
}

- (void)sceneContentStateDidChange:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [v4 handleFailureInMethod:v0 object:v1 file:@"SBTraitsSceneParticipantDelegate.m" lineNumber:498 description:{@"%@ participant is nil. Cannot propagate client settings changes", v3}];
}

- (void)scene:didUpdateClientSettings:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene == _scene" object:? file:? lineNumber:? description:?];
}

- (void)scene:didUpdateClientSettings:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [v4 handleFailureInMethod:v0 object:v1 file:@"SBTraitsSceneParticipantDelegate.m" lineNumber:524 description:{@"%@ participant is nil. Cannot propagate client settings changes", v3}];
}

- (void)updatePreferencesForParticipant:updater:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant == _participant" object:? file:? lineNumber:? description:?];
}

- (void)updatePreferencesForParticipant:updater:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant != nil" object:? file:? lineNumber:? description:?];
}

- (void)updatePreferencesForParticipant:updater:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"updater != nil" object:? file:? lineNumber:? description:?];
}

- (void)didChangeSettingsForParticipant:context:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant == _participant" object:? file:? lineNumber:? description:?];
}

- (void)didChangeSettingsForParticipant:context:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant != nil" object:? file:? lineNumber:? description:?];
}

- (void)didChangeSettingsForParticipant:context:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"context != nil" object:? file:? lineNumber:? description:?];
}

- (void)participantWillInvalidate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant == _participant" object:? file:? lineNumber:? description:?];
}

@end