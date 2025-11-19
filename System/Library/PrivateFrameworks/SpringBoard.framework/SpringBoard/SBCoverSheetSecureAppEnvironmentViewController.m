@interface SBCoverSheetSecureAppEnvironmentViewController
- (SBCoverSheetSecureAppEnvironmentViewController)initWithSecureAppViewController:(id)a3;
- (SBCoverSheetSecureAppEnvironmentViewControllerDelegate)delegate;
- (id)_createTraitsSceneParticipantDelegate;
- (id)_currentSecureAppAction;
- (id)_hostableEntityPresenter;
- (id)_traitsArbiter;
- (id)participantAssociatedWindows:(id)a3;
- (id)traitsParticipantForSceneHandle:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_acquireSecureAppTraitsParticipantIfNeeded;
- (void)_actuateTraitsParticipantResolution;
- (void)_invalidateTraitsParticipantAndDelegateHelper;
- (void)_updateIdleWarnModeForAlwaysOnEnabled:(BOOL)a3;
- (void)_updateSupportedOrientationsMaskForSecureAppAction;
- (void)_updateZStackPolicyAssistants;
- (void)appendDescriptionForParticipant:(id)a3 withBuilder:(id)a4 multilinePrefix:(id)a5;
- (void)dealloc;
- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4;
- (void)homeGrabberViewDidReceiveClick:(id)a3;
- (void)relinquishHiddenAssertionForHomeGrabber:(id)a3 animated:(BOOL)a4;
- (void)relinquishHomeGesture;
- (void)requestHomeGestureOwnership;
- (void)secureAppOfTypeDidTakeNewAssertion:(unint64_t)a3;
- (void)takeHiddenAssertionForHomeGrabber:(id)a3 animated:(BOOL)a4;
- (void)updateHomeGrabberHiddenAssertion:(BOOL)a3;
- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
@end

@implementation SBCoverSheetSecureAppEnvironmentViewController

- (SBCoverSheetSecureAppEnvironmentViewController)initWithSecureAppViewController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBCoverSheetSecureAppEnvironmentViewController;
  v6 = [(SBCoverSheetSecureAppEnvironmentViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_secureAppViewController, a3);
    v7->_currentOrientationMask = 30;
    if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleSecureApp"))
    {
      [(SBCoverSheetSecureAppEnvironmentViewController *)v7 _acquireSecureAppTraitsParticipantIfNeeded];
    }

    else
    {
      v8 = +[SBSecureAppManager sharedInstance];
      [v8 addObserver:v7];
    }
  }

  return v7;
}

- (void)dealloc
{
  [(SBCoverSheetSecureAppEnvironmentViewController *)self _invalidateTraitsParticipantAndDelegateHelper];
  v3.receiver = self;
  v3.super_class = SBCoverSheetSecureAppEnvironmentViewController;
  [(SBCoverSheetSecureAppEnvironmentViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = SBCoverSheetSecureAppEnvironmentViewController;
  [(SBCoverSheetSecureAppEnvironmentViewController *)&v14 viewDidLoad];
  if (CSFeatureEnabled())
  {
    v3 = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
    v4 = [MEMORY[0x277D75348] blackColor];
    [v3 setBackgroundColor:v4];

    v5 = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
    v6 = [v5 layer];
    [v6 setCornerCurve:*MEMORY[0x277CDA138]];

    v7 = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
    v8 = [v7 layer];
    v9 = [MEMORY[0x277D759A0] mainScreen];
    v10 = [v9 traitCollection];
    [v10 displayCornerRadius];
    [v8 setCornerRadius:?];

    v11 = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
    [v11 setClipsToBounds:1];
  }

  secureAppViewController = self->_secureAppViewController;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__SBCoverSheetSecureAppEnvironmentViewController_viewDidLoad__block_invoke;
  v13[3] = &unk_2783AA930;
  v13[4] = self;
  [(SBCoverSheetSecureAppEnvironmentViewController *)self bs_addChildViewController:secureAppViewController animated:0 transitionBlock:v13];
  [(SBCoverSheetSecureAppEnvironmentViewController *)self _updateZStackPolicyAssistants];
}

void __61__SBCoverSheetSecureAppEnvironmentViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1048);
  v4 = a2;
  v6 = [v3 view];
  v5 = [*(a1 + 32) viewIfLoaded];
  [v5 bounds];
  [v6 setFrame:?];

  [v6 setAutoresizingMask:18];
  v4[2](v4);
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SBCoverSheetSecureAppEnvironmentViewController;
  [(SBCoverSheetSecureAppEnvironmentViewController *)&v8 viewWillAppear:a3];
  v4 = [MEMORY[0x277D67C98] sharedInstance];
  if (([v4 hasPearlSupport] & 1) == 0)
  {
    v5 = [v4 acquireMatchingAssertionWithMode:2 reason:@"SBCoverSheetSecureAppEnvironmentViewController"];
    biometricMatchingAssertion = self->_biometricMatchingAssertion;
    self->_biometricMatchingAssertion = v5;

    v7 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SBCoverSheetSecureAppEnvironmentViewController viewWillAppear:];
    }
  }

  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleSecureApp") & 1) == 0)
  {
    [(SBCoverSheetSecureAppEnvironmentViewController *)self _updateSupportedOrientationsMaskForSecureAppAction];
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  if (a3)
  {
    [(SBCoverSheetSecureAppEnvironmentViewController *)self _acquireSecureAppTraitsParticipantIfNeeded:a3];

    [(SBCoverSheetSecureAppEnvironmentViewController *)self _actuateTraitsParticipantResolution];
  }

  else
  {

    [(SBCoverSheetSecureAppEnvironmentViewController *)self _invalidateTraitsParticipantAndDelegateHelper];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBCoverSheetSecureAppEnvironmentViewController;
  [(SBCoverSheetSecureAppEnvironmentViewController *)&v5 viewDidAppear:a3];
  [(SBCoverSheetSecureAppEnvironmentViewController *)self updateHomeGrabberHiddenAssertion:0];
  v4 = [MEMORY[0x277CF0880] sharedBacklight];
  [v4 addObserver:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SBCoverSheetSecureAppEnvironmentViewController;
  [(SBCoverSheetSecureAppEnvironmentViewController *)&v7 viewWillDisappear:a3];
  if (self->_biometricMatchingAssertion)
  {
    v4 = SBLogLockScreenBiometricCoordinator();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SBCoverSheetSecureAppEnvironmentViewController viewWillDisappear:];
    }

    [(BSInvalidatable *)self->_biometricMatchingAssertion invalidate];
    biometricMatchingAssertion = self->_biometricMatchingAssertion;
    self->_biometricMatchingAssertion = 0;
  }

  v6 = [MEMORY[0x277CF0880] sharedBacklight];
  [v6 removeObserver:self];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleSecureApp"))
  {
    return 30;
  }

  v3 = [(SBCoverSheetSecureAppEnvironmentViewController *)self _currentSecureAppAction];
  v4 = [v3 specifiesSupportedInterfaceOrientations];

  v5 = [(SBCoverSheetSecureAppEnvironmentViewController *)self hostedAppSceneHandle];
  v6 = [v5 sceneIfExists];
  v7 = [v6 uiSettings];
  v8 = [v7 deviceOrientationEventsEnabled];

  if ((v4 & 1) == 0 && !v8)
  {
    return 30;
  }

  [*MEMORY[0x277D76620] activeInterfaceOrientation];

  return XBInterfaceOrientationMaskForInterfaceOrientation();
}

- (id)_createTraitsSceneParticipantDelegate
{
  v3 = [(SBCoverSheetSecureAppEnvironmentViewController *)self _hostableEntityPresenter];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 sceneHandleForTraitsParticipant];
    if (v4)
    {
      v5 = [[SBTraitsSceneParticipantDelegate alloc] initWithSceneHandle:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  if (!self->_secureAppTraitsParticipantDelegateHelper)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [v3 sceneForTraitsParticipant];
      if (v6)
      {
        v7 = [[SBTraitsSceneParticipantDelegate alloc] initWithScene:v6];

        v5 = v7;
      }
    }

    if (!self->_secureAppTraitsParticipantDelegateHelper)
    {
      v8 = [SBTraitsSceneParticipantDelegate alloc];
      v9 = [(BSInvalidatable *)self->_secureAppViewController applicationSceneHandle];
      v10 = [(SBTraitsSceneParticipantDelegate *)v8 initWithSceneHandle:v9];

      v5 = v10;
    }
  }

  return v5;
}

- (void)_acquireSecureAppTraitsParticipantIfNeeded
{
  if (!self->_secureAppTraitsParticipant)
  {
    if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleSecureApp"))
    {
      v3 = [(SBCoverSheetSecureAppEnvironmentViewController *)self _traitsArbiter];
      v4 = [v3 acquireParticipantWithRole:@"SBTraitsParticipantRoleSecureApp" delegate:self];
      secureAppTraitsParticipant = self->_secureAppTraitsParticipant;
      self->_secureAppTraitsParticipant = v4;

      v6 = [(SBCoverSheetSecureAppEnvironmentViewController *)self _createTraitsSceneParticipantDelegate];
      secureAppTraitsParticipantDelegateHelper = self->_secureAppTraitsParticipantDelegateHelper;
      self->_secureAppTraitsParticipantDelegateHelper = v6;

      [(SBTraitsSceneParticipantDelegate *)self->_secureAppTraitsParticipantDelegateHelper setArbiter:v3];
      [(SBTraitsSceneParticipantDelegate *)self->_secureAppTraitsParticipantDelegateHelper setParticipant:self->_secureAppTraitsParticipant];
      [(SBTraitsSceneParticipantDelegate *)self->_secureAppTraitsParticipantDelegateHelper setCanDetermineActiveOrientation:1];
      v8 = self->_secureAppTraitsParticipantDelegateHelper;
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76EE8] + -5.0];
      [(SBTraitsSceneParticipantDelegate *)v8 setPreferredSceneLevel:v9];

      [(SBTraitsSceneParticipantDelegate *)self->_secureAppTraitsParticipantDelegateHelper setOrientationModeOverride:2];
      objc_initWeak(&location, self);
      v10 = self->_secureAppTraitsParticipantDelegateHelper;
      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __92__SBCoverSheetSecureAppEnvironmentViewController__acquireSecureAppTraitsParticipantIfNeeded__block_invoke;
      v14 = &unk_2783AD848;
      objc_copyWeak(&v15, &location);
      [(SBTraitsSceneParticipantDelegate *)v10 setActuateOrientationAlongsideBlock:&v11];
      [(TRAParticipant *)self->_secureAppTraitsParticipant setNeedsUpdatePreferencesWithReason:@"setup", v11, v12, v13, v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __92__SBCoverSheetSecureAppEnvironmentViewController__acquireSecureAppTraitsParticipantIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _actuateTraitsParticipantResolution];
}

- (void)_invalidateTraitsParticipantAndDelegateHelper
{
  [(TRAParticipant *)self->_secureAppTraitsParticipant invalidate];
  [(SBTraitsSceneParticipantDelegate *)self->_secureAppTraitsParticipantDelegateHelper invalidate];
  secureAppTraitsParticipantDelegateHelper = self->_secureAppTraitsParticipantDelegateHelper;
  self->_secureAppTraitsParticipantDelegateHelper = 0;

  secureAppTraitsParticipant = self->_secureAppTraitsParticipant;
  self->_secureAppTraitsParticipant = 0;
}

- (void)_actuateTraitsParticipantResolution
{
  v3 = [(TRAParticipant *)self->_secureAppTraitsParticipant sbf_currentOrientation];
  v4 = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
  v5 = [v4 window];
  [v5 _legacySetRotatableViewOrientation:v3 updateStatusBar:1 duration:0 force:0.0];

  secureAppViewController = self->_secureAppViewController;
  v10 = [MEMORY[0x277D759A0] mainScreen];
  v7 = [v10 fixedCoordinateSpace];
  [v7 bounds];
  [(BSInvalidatable *)secureAppViewController setHostedAppReferenceSize:v3 withInterfaceOrientation:v8, v9];
}

- (id)_traitsArbiter
{
  v4 = [(BSInvalidatable *)self->_secureAppViewController applicationSceneHandle];
  v5 = [v4 displayIdentity];

  v6 = [SBApp windowSceneManager];
  v7 = [v6 windowSceneForDisplayIdentity:v5];

  if (v7)
  {
    v8 = [v7 traitsArbiter];
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"SBCoverSheetSecureAppEnvironmentViewController.m" lineNumber:237 description:@"Unexpected nil window scene"];

    v8 = 0;
  }

  return v8;
}

- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4
{
  secureAppTraitsParticipantDelegateHelper = self->_secureAppTraitsParticipantDelegateHelper;
  v5 = a4;
  [(SBTraitsSceneParticipantDelegate *)secureAppTraitsParticipantDelegateHelper updatePreferencesWithUpdater:v5];
  [v5 updateOrientationPreferencesWithBlock:&__block_literal_global_232];
}

void __90__SBCoverSheetSecureAppEnvironmentViewController_updatePreferencesForParticipant_updater___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = __sb__runningInSpringBoard();
  v4 = v3;
  if (v3)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      [v5 setSupportedOrientations:2];
      goto LABEL_9;
    }
  }

  else
  {
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom] != 1)
    {
      [v5 setSupportedOrientations:2];
      goto LABEL_8;
    }
  }

  [v5 setSupportedOrientations:{objc_msgSend(v5, "supportedOrientations")}];
  if ((v4 & 1) == 0)
  {
LABEL_8:
  }

LABEL_9:
}

- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4
{
  secureAppTraitsParticipantDelegateHelper = self->_secureAppTraitsParticipantDelegateHelper;
  v5 = [a4 orientationActuationContext];
  [(SBTraitsSceneParticipantDelegate *)secureAppTraitsParticipantDelegateHelper actuateOrientationSettingsWithContext:v5];
}

- (id)participantAssociatedWindows:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
  v5 = [v4 window];
  if (v5)
  {
    v6 = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
    v7 = [v6 window];
    v10[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)appendDescriptionForParticipant:(id)a3 withBuilder:(id)a4 multilinePrefix:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SBCoverSheetSecureAppEnvironmentViewController *)self participantAssociatedSceneIdentityTokens:a3];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 bs_map:&__block_literal_global_38_1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __110__SBCoverSheetSecureAppEnvironmentViewController_appendDescriptionForParticipant_withBuilder_multilinePrefix___block_invoke_2;
    v14[3] = &unk_2783A92D8;
    v15 = v8;
    v16 = v12;
    v13 = v12;
    [v15 appendBodySectionWithName:@"Associated Scenes" multilinePrefix:v9 block:v14];
  }
}

- (id)traitsParticipantForSceneHandle:(id)a3
{
  secureAppViewController = self->_secureAppViewController;
  v5 = a3;
  v6 = [(BSInvalidatable *)secureAppViewController applicationSceneHandle];

  if (v6 == v5)
  {
    v7 = self->_secureAppTraitsParticipant;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)secureAppOfTypeDidTakeNewAssertion:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = SBLogCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SecureApp of type: %lu took new assertion", &v6, 0xCu);
  }

  [(SBCoverSheetSecureAppEnvironmentViewController *)self _updateSupportedOrientationsMaskForSecureAppAction];
}

- (void)requestHomeGestureOwnership
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(SBCoverSheetSecureAppEnvironmentViewController *)self zStackParticipant];

  if (!v3)
  {
    v4 = [(SBCoverSheetSecureAppEnvironmentViewController *)self view];
    v5 = [v4 window];

    v6 = [v5 _sbWindowScene];
    v7 = [v6 zStackResolver];
    v8 = [v7 acquireParticipantWithIdentifier:7 delegate:self];
    if (v8)
    {
      [(SBCoverSheetSecureAppEnvironmentViewController *)self setZStackParticipant:v8];
      v9 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBAudioCategoryZStackPolicyAssistant alloc] initWithParticipant:self->_zStackParticipant];
      audioCategoryZStackPolicyAssistant = self->_audioCategoryZStackPolicyAssistant;
      self->_audioCategoryZStackPolicyAssistant = v9;

      v11 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBPhysicalButtonZStackPolicyAssistant alloc] initWithParticipant:self->_zStackParticipant];
      physicalButtonZStackPolicyAssistant = self->_physicalButtonZStackPolicyAssistant;
      self->_physicalButtonZStackPolicyAssistant = v11;

      v13 = [[SBSystemApertureZStackPolicyAssistant alloc] initWithParticipant:?];
      systemApertureZStackPolicyAssistant = self->_systemApertureZStackPolicyAssistant;
      self->_systemApertureZStackPolicyAssistant = v13;

      [(SBCoverSheetSecureAppEnvironmentViewController *)self _updateZStackPolicyAssistants];
    }

    else
    {
      v15 = SBLogCoverSheet();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = 134218496;
        v17 = v5;
        v18 = 2048;
        v19 = v6;
        v20 = 2048;
        v21 = v7;
        _os_log_error_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_ERROR, "participant should not be nil here -- all of these should be non-nil: window:%p SBWindowScene:%p resolver:%p", &v16, 0x20u);
      }
    }
  }
}

- (void)relinquishHomeGesture
{
  v3 = [(SBCoverSheetSecureAppEnvironmentViewController *)self zStackParticipant];

  if (v3)
  {
    v4 = [(SBCoverSheetSecureAppEnvironmentViewController *)self zStackParticipant];
    [v4 invalidate];

    [(SBCoverSheetSecureAppEnvironmentViewController *)self setZStackParticipant:0];
  }
}

- (id)_currentSecureAppAction
{
  v2 = +[SBSecureAppManager sharedInstance];
  v3 = [v2 secureAppAction];

  return v3;
}

- (void)_updateSupportedOrientationsMaskForSecureAppAction
{
  v33[6] = *MEMORY[0x277D85DE8];
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleSecureApp") & 1) == 0)
  {
    v3 = [(SBCoverSheetSecureAppEnvironmentViewController *)self _currentSecureAppAction];
    v4 = v3;
    if (v3 && [v3 specifiesSupportedInterfaceOrientations])
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __100__SBCoverSheetSecureAppEnvironmentViewController__updateSupportedOrientationsMaskForSecureAppAction__block_invoke;
      v31[3] = &unk_2783AFDC0;
      v31[4] = self;
      v5 = MEMORY[0x223D6F7F0](v31);
      v6 = [v4 supportedInterfaceOrientations];
      currentOrientationMask = self->_currentOrientationMask;
      v8 = [SBApp activeInterfaceOrientation];
      v9 = [MEMORY[0x277D75418] currentDevice];
      v10 = [v9 orientation];

      v11 = v5[2](v5, v8);
      v12 = v5[2](v5, v10);
      v13 = v6 != currentOrientationMask || v11 == 0;
      if (v13 || (v12 & 1) == 0)
      {
        self->_currentOrientationMask = v6;
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
        v33[0] = v14;
        v15 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
        v33[1] = v15;
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:3];
        v33[2] = v16;
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:4];
        v33[3] = v17;
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:1];
        v33[4] = v18;
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:2];
        v33[5] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:6];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v28;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v28 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [*(*(&v27 + 1) + 8 * i) integerValue];
              if (v5[2](v5, v26))
              {
                [SBApp _setDeviceOrientation:v26 animated:0 logMessage:@"[SBCSSecureAppEnvironmentVC] rotating device to match full screen secure app supported orientations."];
                [SBApp updateNativeOrientationWithOrientation:v26 logMessage:@"[SBCSSecureAppEnvironmentVC] rotating native orientation to match full screen secure app supported orientations."];
                goto LABEL_19;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v27 objects:v32 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:
      }
    }
  }
}

- (void)_updateIdleWarnModeForAlwaysOnEnabled:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained secureAppEnvironmentViewControllerShouldEnableIdleWarning:self alwaysOnEnabled:v3];

  if (objc_opt_respondsToSelector())
  {
    secureAppViewController = self->_secureAppViewController;

    [(BSInvalidatable *)secureAppViewController setOverrideIdleWarnMode:v6 ^ 1u];
  }
}

- (id)_hostableEntityPresenter
{
  if (objc_opt_respondsToSelector())
  {
    v3 = self->_secureAppViewController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v11 = a4;
  [v11 setActivationPolicyForParticipantsBelow:2];
  [v11 setSuppressSystemApertureForSystemChromeSuppression:-[SBSystemApertureZStackPolicyAssistant suppressSystemApertureForSystemChromeSuppression](self->_systemApertureZStackPolicyAssistant)];
  v5 = [(SBCameraHardwareButton *)self->_systemApertureZStackPolicyAssistant allCameraShutterButtonPIDs];
  [v11 setAssociatedBundleIdentifiersToSuppressInSystemAperture:v5];

  v6 = [(SBCameraHardwareButton *)self->_systemApertureZStackPolicyAssistant foregroundCameraShutterButtonPIDs];
  [v11 setAssociatedSceneIdentifiersToSuppressInSystemAperture:v6];

  v7 = [(SBAudioCategoryZStackPolicyAssistant *)self->_audioCategoryZStackPolicyAssistant audioCategoriesDisablingVolumeHUD];
  [v11 setAudioCategoriesDisablingVolumeHUD:v7];

  v8 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant physicalButtonSceneTargets];
  [v11 setPhysicalButtonSceneTargets:v8];

  v9 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant captureButtonFullFidelityEventRequestingScenes];
  [v11 setCaptureButtonFullFidelityEventRequestingScenes:v9];

  v10 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant foregroundCaptureSceneTargets];
  [v11 setForegroundCaptureSceneTargets:v10];

  [v11 setAllowsKeyboardArbiterToDetermineFocusTarget:1];
  [v11 setAllowCameraButtonDeferringWhileFocusLocked:1];
}

- (void)_updateZStackPolicyAssistants
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = [(SBCoverSheetSecureAppEnvironmentViewController *)self _hostableEntityPresenter];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 sceneHandleForTraitsParticipant];
    if (v5)
    {
      v6 = objc_opt_class();
      v7 = v5;
      if (v6)
      {
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      if (v9)
      {
        v17 = [v4 homeGrabberViewForTraitsParticipant];
        [(SBSystemApertureZStackPolicyAssistant *)self->_systemApertureZStackPolicyAssistant setForegroundExclusiveSceneHandle:v9 homeGrabberView:v17];
      }

      v21[0] = v7;
      v15 = v21;
    }

    else
    {
      v14 = [v4 sceneForTraitsParticipant];
      v9 = v14;
      if (!v14)
      {
        v16 = 0;
        goto LABEL_29;
      }

      v20 = v14;
      v15 = &v20;
    }

    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
LABEL_29:

    goto LABEL_30;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(BSInvalidatable *)self->_secureAppViewController appView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v5 homeGrabberView];
      v10 = [(BSInvalidatable *)self->_secureAppViewController applicationSceneHandle];
      v11 = objc_opt_class();
      v12 = v10;
      if (v11)
      {
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v18 = v13;
    }

    else
    {
      v18 = 0;
      v9 = 0;
    }

    [(SBSystemApertureZStackPolicyAssistant *)self->_systemApertureZStackPolicyAssistant setForegroundExclusiveSceneHandle:v18 homeGrabberView:v9];
    if (v18)
    {
      v19 = v18;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_29;
  }

  v16 = 0;
LABEL_30:
  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_audioCategoryZStackPolicyAssistant setForegroundScenes:v16];
  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant setForegroundScenes:v16];
}

- (void)updateHomeGrabberHiddenAssertion:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v9 = [(BSInvalidatable *)self->_secureAppViewController appView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = v9;
    if (isKindOfClass)
    {
      v7 = [v9 homeGrabberView];
      [v7 setDelegate:self];
      [v7 setPointerClickDelegate:self];
      if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture])
      {
        [(SBCoverSheetSecureAppEnvironmentViewController *)self relinquishHiddenAssertionForHomeGrabber:v7 animated:v3];
      }

      else
      {
        [(SBCoverSheetSecureAppEnvironmentViewController *)self takeHiddenAssertionForHomeGrabber:v7 animated:v3];
      }

      v8 = [(SBCoverSheetSecureAppEnvironmentViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v8 secureAppEnvironmentViewControllerOwnsHomeGestureDidChange];
      }

      v6 = v9;
    }
  }
}

- (void)takeHiddenAssertionForHomeGrabber:(id)a3 animated:(BOOL)a4
{
  if (a4)
  {
    v4 = MEMORY[0x277D65E80];
    v5 = a3;
    v6 = [v4 rootSettings];
    v7 = [v6 hideForHomeGestureOwnershipAnimationSettings];
    v8 = [v7 BSAnimationSettings];

    [v5 setHidden:1 forReason:@"SBCoverSheetSecureAppEnvironmentViewController" withAnimationSettings:v8];
  }

  else
  {
    [a3 setHidden:1 forReason:@"SBCoverSheetSecureAppEnvironmentViewController" withAnimationSettings:0];
  }

  [a3 setHomeAffordanceInteractionEnabled:0];
}

- (void)relinquishHiddenAssertionForHomeGrabber:(id)a3 animated:(BOOL)a4
{
  if (a4)
  {
    v4 = MEMORY[0x277D65E80];
    v5 = a3;
    v6 = [v4 rootSettings];
    v7 = [v6 unhideForHomeGestureOwnershipAnimationSettings];
    v8 = [v7 BSAnimationSettings];

    [v5 setHidden:0 forReason:@"SBCoverSheetSecureAppEnvironmentViewController" withAnimationSettings:v8];
  }

  else
  {
    [a3 setHidden:0 forReason:@"SBCoverSheetSecureAppEnvironmentViewController" withAnimationSettings:0];
  }

  [a3 setHomeAffordanceInteractionEnabled:1];
}

- (void)homeGrabberViewDidReceiveClick:(id)a3
{
  if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture])
  {
    v3 = +[SBLockScreenManager sharedInstance];
    [v3 unlockUIFromSource:15 withOptions:MEMORY[0x277CBEC10]];
  }
}

- (SBCoverSheetSecureAppEnvironmentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end