@interface SBAssistantGestureManager
+ (BOOL)shouldDismissSiriForGestureTranslation:(CGPoint)a3 velocity:(CGPoint)a4;
- (BOOL)_noNewTransientOverlaysPresented;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)gesturesImplyFullscreenContent;
- (SBAssistantGestureManager)initWithAssistantWindow:(id)a3 gestureConfiguration:(id)a4 context:(id)a5;
- (SBAssistantGestureManagerDelegate)delegate;
- (id)_assistantRootViewController;
- (id)_createPanToDismissSiriGestureRecognizer;
- (id)_createTapToDismissSiriGestureRecognizer;
- (id)viewForSystemGestureRecognizer:(id)a3;
- (int64_t)touchInterfaceOrientationForGestureRecognizer:(id)a3;
- (void)_commonHandlerForSiriDismissalGesture:(id)a3;
- (void)_configureHomeGesture;
- (void)_configurePanToDismissGestureDependencies;
- (void)_didUpdateHomeGestureSharing:(BOOL)a3;
- (void)_didUpdateSiriHomeAffordanceSuppression:(int64_t)a3;
- (void)_didUpdateStatusBarActionGestureRecognizer:(id)a3;
- (void)_didUpdateTouchesPassThroughToSpringBoard:(BOOL)a3;
- (void)_handleBottomEdgeDismissGesture:(id)a3;
- (void)_notifyInteractionWithGestureRecognizer:(id)a3;
- (void)_pannedToDismissSiri:(id)a3;
- (void)_prototypeSettingsChanged;
- (void)_removeHomeGesture;
- (void)_removeScreenEdgePanGestureRecognizerIfNecessary;
- (void)_resetDismissalSystemGestures;
- (void)_setupSystemDismissalGestures;
- (void)_tappedToDismissSiri:(id)a3;
- (void)_tearDownDismissalSystemGestures;
- (void)_updateRootViewControllerDimsContentBelow;
- (void)_updateRootViewControllerOwnsHomeGesture;
- (void)_updateRootViewControllerShowsHomeAffordance:(BOOL)a3;
- (void)_updateZStackParticipantWithReason:(id)a3;
- (void)assistantGestureConfiguration:(id)a3 didUpdateHomeAffordanceSuppression:(int64_t)a4;
- (void)assistantGestureConfiguration:(id)a3 didUpdateHomeGestureSharing:(BOOL)a4;
- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldDismissForSwipesOutsideContent:(BOOL)a4;
- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldDismissForTapsOutsideContent:(BOOL)a4;
- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldPassTouchesThroughToSpringBoard:(BOOL)a4;
- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldShowHomeAffordance:(BOOL)a4;
- (void)assistantGestureConfiguration:(id)a3 didUpdateStatusBarActionGestureRecognizer:(id)a4;
- (void)assistantSession:(id)a3 didChangePresentationInWindowScene:(id)a4;
- (void)dealloc;
- (void)homeGrabberViewDidReceiveClick:(id)a3;
- (void)setTapToDismissSiriGestureRecognizer:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
- (void)zStackParticipantDidChange:(id)a3;
@end

@implementation SBAssistantGestureManager

- (SBAssistantGestureManager)initWithAssistantWindow:(id)a3 gestureConfiguration:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = SBAssistantGestureManager;
  v12 = [(SBAssistantGestureManager *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assistantWindow, a3);
    objc_storeStrong(&v13->_gestureConfiguration, a4);
    [(SBAssistantGestureConfiguration *)v13->_gestureConfiguration addObserver:v13];
    objc_storeStrong(&v13->_context, a5);
    v14 = +[SBSystemAnimationDomain rootSettings];
    settings = v13->_settings;
    v13->_settings = v14;

    [(PTSettings *)v13->_settings addKeyObserver:v13];
    v13->_allowPencilTouches = _os_feature_enabled_impl();
    v13->_homeAffordanceSuppression = 2;
  }

  return v13;
}

- (void)dealloc
{
  [(PTSettings *)self->_settings removeKeyObserver:self];
  [(SBAssistantGestureConfiguration *)self->_gestureConfiguration removeObserver:self];
  [(SBAssistantGestureManager *)self _tearDownDismissalSystemGestures];
  [(SBAssistantGestureManager *)self _removeHomeGesture];
  v3.receiver = self;
  v3.super_class = SBAssistantGestureManager;
  [(SBAssistantGestureManager *)&v3 dealloc];
}

+ (BOOL)shouldDismissSiriForGestureTranslation:(CGPoint)a3 velocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = hypot(a3.x, a3.y);
  return hypot(x, y) > *&kSBAssistantBottomEdgeDismissVelocityThreshold || v6 > *&kSBAssistantBottomEdgeDismissTranslationThreshold;
}

- (BOOL)gesturesImplyFullscreenContent
{
  v3 = [(SBAssistantGestureManager *)self gestureConfiguration];
  if ([v3 shouldDismissForTapsOutsideContent])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SBAssistantGestureManager *)self gestureConfiguration];
    v4 = [v5 shouldDismissForSwipesOutsideContent];
  }

  return v4;
}

- (void)_setupSystemDismissalGestures
{
  if (!self->_tapToDismissSiriGestureRecognizer)
  {
    v3 = [(SBAssistantGestureManager *)self _createTapToDismissSiriGestureRecognizer];
    [(SBAssistantGestureManager *)self setTapToDismissSiriGestureRecognizer:v3];
  }

  if (!self->_panToDismissSiriGestureRecognizer)
  {
    v4 = [(SBAssistantGestureManager *)self _createPanToDismissSiriGestureRecognizer];
    panToDismissSiriGestureRecognizer = self->_panToDismissSiriGestureRecognizer;
    self->_panToDismissSiriGestureRecognizer = v4;

    v6 = [(SBAssistantGestureManager *)self context];
    v7 = [v6 systemGestureManager];
    [v7 addGestureRecognizer:self->_panToDismissSiriGestureRecognizer withType:119];

    [(SBAssistantGestureManager *)self _configurePanToDismissGestureDependencies];
  }
}

- (void)_tearDownDismissalSystemGestures
{
  if (self->_tapToDismissSiriGestureRecognizer)
  {
    [(SBAssistantGestureManager *)self setTapToDismissSiriGestureRecognizer:0];
  }

  if (self->_panToDismissSiriGestureRecognizer)
  {
    v3 = [(SBAssistantGestureManager *)self context];
    v4 = [v3 systemGestureManager];
    [v4 removeGestureRecognizer:self->_panToDismissSiriGestureRecognizer];

    panToDismissSiriGestureRecognizer = self->_panToDismissSiriGestureRecognizer;
    self->_panToDismissSiriGestureRecognizer = 0;
  }
}

- (void)_resetDismissalSystemGestures
{
  v3 = [(SBAssistantGestureManager *)self tapToDismissSiriGestureRecognizer];
  if (v3)
  {
  }

  else
  {
    v4 = [(SBAssistantGestureManager *)self panToDismissSiriGestureRecognizer];

    if (!v4)
    {
      return;
    }
  }

  [(SBAssistantGestureManager *)self _tearDownDismissalSystemGestures];

  [(SBAssistantGestureManager *)self _setupSystemDismissalGestures];
}

- (void)setTapToDismissSiriGestureRecognizer:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  tapToDismissSiriGestureRecognizer = self->_tapToDismissSiriGestureRecognizer;
  if (tapToDismissSiriGestureRecognizer != v5)
  {
    if (tapToDismissSiriGestureRecognizer)
    {
      v7 = [(SBAssistantGestureManager *)self context];
      v8 = [v7 systemGestureManager];
      [v8 removeGestureRecognizer:self->_tapToDismissSiriGestureRecognizer];

      v9 = self->_tapToDismissSiriGestureRecognizer;
      if (v9)
      {
        if (self->_statusBarActionGestureRecognizer)
        {
          [(UITapGestureRecognizer *)v9 removeFailureRequirement:?];
          v10 = SBLogSiri();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = _SBFLoggingMethodProem();
            v12 = self->_tapToDismissSiriGestureRecognizer;
            statusBarActionGestureRecognizer = self->_statusBarActionGestureRecognizer;
            v17 = 138543874;
            v18 = v11;
            v19 = 2114;
            v20 = v12;
            v21 = 2114;
            v22 = statusBarActionGestureRecognizer;
            _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removed failure requirement for assistant.dismiss.tap gesture recognizer %{public}@ on %{public}@", &v17, 0x20u);
          }
        }
      }
    }

    objc_storeStrong(&self->_tapToDismissSiriGestureRecognizer, a3);
    v14 = self->_statusBarActionGestureRecognizer;
    self->_statusBarActionGestureRecognizer = 0;

    if (v5)
    {
      v15 = [(SBAssistantGestureManager *)self context];
      v16 = [v15 systemGestureManager];
      [v16 addGestureRecognizer:v5 withType:117];
    }
  }
}

- (id)_createPanToDismissSiriGestureRecognizer
{
  v3 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__pannedToDismissSiri_];
  [v3 setName:@"assistant.dismiss.pan"];
  [v3 setCancelsTouchesInView:0];
  [v3 setDelaysTouchesBegan:0];
  [v3 setDelaysTouchesEnded:0];
  [v3 setAllowedTouchTypes:&unk_28336E718];
  [v3 sbf_setPencilTouchesAllowed:self->_allowPencilTouches];
  [v3 setDelegate:self];
  v4 = [(SBAssistantGestureManager *)self context];
  v5 = [v4 controlCenterController];
  [v5 _requirePresentGestureRecognizerToFailForGestureRecognizer:v3];

  return v3;
}

- (void)_configurePanToDismissGestureDependencies
{
  v3 = [(SBAssistantGestureManager *)self context];
  v11 = [v3 systemGestureManager];

  v4 = [(SBAssistantGestureManager *)self panToDismissSiriGestureRecognizer];
  [v11 gestureRecognizerOfType:40 shouldBeRequiredToFailByGestureRecognizer:v4];
  v5 = [(SBAssistantGestureManager *)self gestureConfiguration];
  v6 = [v5 shouldShareHomeGesture];

  if (v6)
  {
    [v11 gestureRecognizerOfType:3 shouldBeRequiredToFailByGestureRecognizer:v4];
    [v11 gestureRecognizerOfType:1 shouldBeRequiredToFailByGestureRecognizer:v4];
  }

  [v11 gestureRecognizerOfType:122 shouldRequireFailureOfGestureRecognizer:v4];
  [v11 gestureRecognizerOfType:123 shouldRequireFailureOfGestureRecognizer:v4];
  [v11 gestureRecognizerOfType:107 shouldRequireFailureOfGestureRecognizer:v4];
  [v11 gestureRecognizerOfType:108 shouldRequireFailureOfGestureRecognizer:v4];
  v7 = [(SBAssistantGestureManager *)self bottomEdgeDismissGestureRecognizer];
  [v11 gestureRecognizerOfType:122 shouldRequireFailureOfGestureRecognizer:v7];
  [v11 gestureRecognizerOfType:123 shouldRequireFailureOfGestureRecognizer:v7];
  [v11 gestureRecognizerOfType:107 shouldRequireFailureOfGestureRecognizer:v7];
  [v11 gestureRecognizerOfType:108 shouldRequireFailureOfGestureRecognizer:v7];
  v8 = [(SBAssistantGestureManager *)self context];
  v9 = [v8 switcherController];
  v10 = [v9 homeGestureBottomEdgeRecognizer];
  [v4 requireGestureRecognizerToFail:v10];

  if (v7)
  {
    [v4 requireGestureRecognizerToFail:v7];
  }
}

- (void)_pannedToDismissSiri:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBAssistantGestureManager *)self gestureConfiguration];
  v6 = [v5 shouldDismissForSwipesOutsideContent];

  v7 = SBLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _SBFLoggingMethodProem();
    v9 = v8;
    v10 = @"SHOULDN'T";
    if (v6)
    {
      v10 = @"SHOULD";
    }

    v18 = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Assistant %{public}@ dismiss for pans outside of content", &v18, 0x16u);
  }

  v11 = [(SBAssistantGestureManager *)self context];
  v12 = [v11 controlCenterController];
  v13 = [v12 isPresented];

  v14 = [(SBAssistantGestureManager *)self _noNewTransientOverlaysPresented];
  if ((v13 & 1) == 0 && v14)
  {
    if (v6 && [v4 state] == 1)
    {
      [(SBAssistantGestureManager *)self _commonHandlerForSiriDismissalGesture:v4];
    }

    else
    {
      v15 = [(UIWindow *)self->_assistantWindow _sbWindowScene];
      v16 = [v15 assistantController];
      v17 = [v16 isSystemAssistantExperienceEnabled];

      if (v17)
      {
        [(SBAssistantGestureManager *)self _notifyInteractionWithGestureRecognizer:v4];
      }
    }
  }
}

- (id)_createTapToDismissSiriGestureRecognizer
{
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tappedToDismissSiri_];
  [v3 setName:@"assistant.dismiss.tap"];
  [v3 setCancelsTouchesInView:0];
  [v3 setDelaysTouchesBegan:0];
  [v3 setDelaysTouchesEnded:0];
  [v3 setAllowedTouchTypes:&unk_28336E730];
  [v3 sbf_setPencilTouchesAllowed:self->_allowPencilTouches];
  [v3 setDelegate:self];

  return v3;
}

- (void)_tappedToDismissSiri:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBAssistantGestureManager *)self gestureConfiguration];
  v6 = [v5 shouldDismissForTapsOutsideContent];

  v7 = SBLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _SBFLoggingMethodProem();
    v9 = v8;
    v10 = @"SHOULDN'T";
    if (v6)
    {
      v10 = @"SHOULD";
    }

    v18 = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Assistant %{public}@ dismiss for taps outside of content", &v18, 0x16u);
  }

  v11 = [(SBAssistantGestureManager *)self context];
  v12 = [v11 controlCenterController];
  v13 = [v12 isPresented];

  v14 = [(SBAssistantGestureManager *)self _noNewTransientOverlaysPresented];
  if ((v13 & 1) == 0 && v14)
  {
    if (v6)
    {
      [(SBAssistantGestureManager *)self _commonHandlerForSiriDismissalGesture:v4];
    }

    else
    {
      v15 = [(UIWindow *)self->_assistantWindow _sbWindowScene];
      v16 = [v15 assistantController];
      v17 = [v16 isSystemAssistantExperienceEnabled];

      if (v17)
      {
        [(SBAssistantGestureManager *)self _notifyInteractionWithGestureRecognizer:v4];
      }
    }
  }
}

- (void)_configureHomeGesture
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (SBHomeGestureEnabled())
  {
    v3 = [(SBAssistantGestureManager *)self gestureConfiguration];
    if ([v3 shouldShareHomeGesture])
    {
      v4 = [(SBAssistantGestureManager *)self bottomEdgeDismissGestureRecognizer];

      if (!v4)
      {
        v5 = [MEMORY[0x277CF0CA8] sharedInstance];
        v6 = [v5 homeButtonType];

        if (v6 == 2)
        {
          v7 = 5;
        }

        else
        {
          v7 = 3;
        }

        v8 = [[SBHomeGesturePanGestureRecognizer alloc] initWithTarget:self action:sel__handleBottomEdgeDismissGesture_ type:v7 options:self->_allowPencilTouches];
        bottomEdgeDismissGestureRecognizer = self->_bottomEdgeDismissGestureRecognizer;
        self->_bottomEdgeDismissGestureRecognizer = v8;

        [(SBHomeGesturePanGestureRecognizer *)self->_bottomEdgeDismissGestureRecognizer setDelegate:self];
        [(SBHomeGesturePanGestureRecognizer *)self->_bottomEdgeDismissGestureRecognizer setInterfaceDelegate:self];
        [(SBHomeGesturePanGestureRecognizer *)self->_bottomEdgeDismissGestureRecognizer setCancelsTouchesInView:0];
        [(SBHomeGesturePanGestureRecognizer *)self->_bottomEdgeDismissGestureRecognizer setDelaysTouchesEnded:0];
        [(SBHomeGesturePanGestureRecognizer *)self->_bottomEdgeDismissGestureRecognizer setDelaysTouchesBegan:0];
        [(UIScreenEdgePanGestureRecognizer *)self->_bottomEdgeDismissGestureRecognizer setEdges:4];
        [(UIScreenEdgePanGestureRecognizer *)self->_bottomEdgeDismissGestureRecognizer _setBottomEdgeAngleWindow:*&kSBAssistantBottomEdgeAngleWindow];
        v10 = self->_bottomEdgeDismissGestureRecognizer;
        v11 = [(SBAssistantGestureManager *)self context];
        v12 = [v11 switcherController];
        v13 = [v12 homeGestureBottomEdgeRecognizer];
        [(SBHomeGesturePanGestureRecognizer *)v10 requireGestureRecognizerToFail:v13];

        [(UIPanGestureRecognizer *)self->_panToDismissSiriGestureRecognizer requireGestureRecognizerToFail:self->_bottomEdgeDismissGestureRecognizer];
        v14 = [(SBAssistantGestureManager *)self context];
        v15 = [v14 systemGestureManager];
        [v15 addGestureRecognizer:self->_bottomEdgeDismissGestureRecognizer withType:118];

        [(SBAssistantGestureManager *)self _configurePanToDismissGestureDependencies];
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v16 = [(SBAssistantGestureManager *)self gestureConfiguration];
  if ([v16 shouldShareHomeGesture])
  {
  }

  else
  {
    v17 = [(SBAssistantGestureManager *)self bottomEdgeDismissGestureRecognizer];

    if (v17)
    {
      [(SBAssistantGestureManager *)self _removeScreenEdgePanGestureRecognizerIfNecessary];
    }
  }

LABEL_13:
  v18 = [(SBAssistantGestureManager *)self zStackParticipant];

  if (!v18)
  {
    v19 = [(SBAssistantGestureManager *)self context];
    v20 = [v19 zStackResolver];
    v21 = [v20 acquireParticipantWithIdentifier:17 delegate:self];
    [(SBAssistantGestureManager *)self setZStackParticipant:v21];

    v22 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBPhysicalButtonZStackPolicyAssistant alloc] initWithParticipant:self->_zStackParticipant];
    physicalButtonPolicyAssistant = self->_physicalButtonPolicyAssistant;
    self->_physicalButtonPolicyAssistant = v22;

    v24 = [MEMORY[0x277D0AAD8] sharedInstance];
    v25 = [(UIWindow *)self->_assistantWindow _sbWindowScene];
    v26 = [v25 _FBSScene];
    v27 = [v26 identityToken];
    v28 = [v24 sceneFromIdentityToken:v27];

    if (v28)
    {
      v29 = self->_physicalButtonPolicyAssistant;
      v31[0] = v28;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
      [(SBZStackForegroundSceneOrderedPolicyAssistant *)v29 setForegroundScenes:v30];
    }
  }

  [(SBAssistantGestureManager *)self _updateZStackParticipantWithReason:@"configuring home gesture"];
}

- (void)_handleBottomEdgeDismissGesture:(id)a3
{
  v4 = a3;
  v5 = [(SBAssistantGestureManager *)self _assistantRootViewController];
  v15 = [v5 view];

  [v4 translationInView:v15];
  v7 = v6;
  v9 = v8;
  [v4 velocityInView:v15];
  v11 = v10;
  v13 = v12;

  if ([SBAssistantGestureManager shouldDismissSiriForGestureTranslation:v7 velocity:v9, v11, v13])
  {
    v14 = [(SBAssistantGestureManager *)self delegate];
    [v14 assistantGestureManagerDidRecognizeDismissGesture:self preferredDismissalOptions:0];
  }
}

- (void)_removeHomeGesture
{
  physicalButtonPolicyAssistant = self->_physicalButtonPolicyAssistant;
  self->_physicalButtonPolicyAssistant = 0;

  v4 = [(SBAssistantGestureManager *)self zStackParticipant];
  [v4 invalidate];

  [(SBAssistantGestureManager *)self setZStackParticipant:0];

  [(SBAssistantGestureManager *)self _removeScreenEdgePanGestureRecognizerIfNecessary];
}

- (void)_removeScreenEdgePanGestureRecognizerIfNecessary
{
  v3 = [(SBAssistantGestureManager *)self bottomEdgeDismissGestureRecognizer];
  if (v3)
  {
    v6 = v3;
    v4 = [(SBAssistantGestureManager *)self context];
    v5 = [v4 systemGestureManager];
    [v5 removeGestureRecognizer:v6];

    [(SBAssistantGestureManager *)self setBottomEdgeDismissGestureRecognizer:0];
    v3 = v6;
  }
}

- (void)_commonHandlerForSiriDismissalGesture:(id)a3
{
  v5 = a3;
  v6 = [(SBAssistantGestureManager *)self _assistantRootViewController];
  v7 = [v6 view];
  _UISystemGestureLocationInView();
  v9 = v8;
  v11 = v10;

  objc_initWeak(&location, self);
  v12 = [(SBAssistantGestureManager *)self delegate];
  objc_initWeak(&from, v12);

  v13 = [(SBAssistantGestureManager *)self gestureConfiguration];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__SBAssistantGestureManager__commonHandlerForSiriDismissalGesture___block_invoke;
  v14[3] = &unk_2783BA5B0;
  v14[4] = self;
  v16[1] = a2;
  objc_copyWeak(&v15, &from);
  objc_copyWeak(v16, &location);
  [v13 shouldDismissForGestureAtLocation:v14 completion:{v9, v11}];

  objc_destroyWeak(v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __67__SBAssistantGestureManager__commonHandlerForSiriDismissalGesture___block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = SBLogSiri();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = _SBFLoggingMethodProem();
    v6 = v5;
    v7 = @"SHOULD NOT";
    if (a2)
    {
      v7 = @"SHOULD";
    }

    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ -  %{public}@ dismiss for gesture at location", &v11, 0x16u);
  }

  if (a2)
  {
    v8 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:1 dismissalReason:23];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = objc_loadWeakRetained((a1 + 48));
    [WeakRetained assistantGestureManagerDidRecognizeDismissGesture:v10 preferredDismissalOptions:v8];
  }
}

- (void)_notifyInteractionWithGestureRecognizer:(id)a3
{
  v11 = a3;
  v4 = [(SBAssistantGestureManager *)self _assistantRootViewController];
  v5 = [v4 view];
  _UISystemGestureLocationInView();
  v7 = v6;
  v9 = v8;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 state] == 1)
  {
    v10 = [(SBAssistantGestureManager *)self gestureConfiguration];
    [v10 notifyPanBeganAtPoint:{v7, v9}];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v10 = [(SBAssistantGestureManager *)self gestureConfiguration];
    [v10 notifyTapAtPoint:{v7, v9}];
  }

LABEL_7:
}

- (void)_updateRootViewControllerOwnsHomeGesture
{
  v3 = [(SBAssistantGestureManager *)self zStackParticipant];
  if ([v3 ownsHomeGesture])
  {
    v4 = [(SBAssistantGestureManager *)self gestureConfiguration];
    v5 = [v4 shouldShareHomeGesture] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SBAssistantGestureManager *)self _assistantRootViewController];
  [v6 setOwnsHomeGesture:v5];
}

- (void)_updateRootViewControllerShowsHomeAffordance:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBAssistantGestureManager *)self zStackParticipant];
  v6 = [v5 homeAffordanceDrawingSuppressed];

  v7 = [(SBAssistantGestureManager *)self _assistantRootViewController];
  v8 = v7;
  v9 = v3 & ~v6;
  if ((v3 & ~v6) != 0)
  {
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  [v7 setShowsHomeAffordance:v9];

  v11 = [(SBAssistantGestureManager *)self _assistantRootViewController];
  [v11 setHomeGrabberPointerClickDelegate:v10];
}

- (void)_updateRootViewControllerDimsContentBelow
{
  v3 = [(UIWindow *)self->_assistantWindow _sbWindowScene];
  v8 = [v3 assistantController];

  if ([v8 isSystemAssistantExperienceEnabled])
  {
    v4 = [v8 presentationContext];
    if ([v4 hasTextModality])
    {
      v5 = [v8 presentationContext];
      if ([v5 wantsDeemphasizedBackdrop])
      {
        v6 = [(SBFZStackParticipant *)self->_zStackParticipant participantBelowAllowsDimming];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [(SBAssistantGestureManager *)self _assistantRootViewController];
  [v7 setDimsContentBelow:v6];
}

- (void)_updateZStackParticipantWithReason:(id)a3
{
  v4 = a3;
  v5 = [(SBAssistantGestureManager *)self zStackParticipant];
  [v5 setNeedsUpdatePreferencesWithReason:v4];
}

- (BOOL)_noNewTransientOverlaysPresented
{
  v2 = self;
  v3 = [(SBAssistantGestureManager *)self context];
  v4 = [v3 transientOverlayPresenter];
  v5 = [v4 topmostPresentedViewController];

  LOBYTE(v2) = v5 == v2->_topmostTransientViewControllerAtPresentation;
  return v2;
}

- (id)_assistantRootViewController
{
  v2 = [(SBAssistantGestureManager *)self assistantWindow];
  v3 = [v2 assistantRootViewController];

  return v3;
}

- (void)zStackParticipantDidChange:(id)a3
{
  [(SBAssistantGestureManager *)self _updateRootViewControllerOwnsHomeGesture];
  v4 = [(SBAssistantGestureManager *)self gestureConfiguration];
  -[SBAssistantGestureManager _updateRootViewControllerShowsHomeAffordance:](self, "_updateRootViewControllerShowsHomeAffordance:", [v4 shouldShowHomeAffordance]);

  [(SBAssistantGestureManager *)self _updateRootViewControllerDimsContentBelow];
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v10 = a4;
  v5 = [(SBAssistantGestureManager *)self gestureConfiguration];
  v6 = [v5 shouldShareHomeGesture];

  [v10 setActivationPolicyForParticipantsBelow:v6 ^ 1u];
  [v10 setHomeAffordanceDrawingSuppression:{-[SBAssistantGestureManager homeAffordanceSuppression](self, "homeAffordanceSuppression")}];
  [v10 setAllowsKeyboardArbiterToDetermineFocusTarget:1];
  v7 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonPolicyAssistant physicalButtonSceneTargets];
  [v10 setPhysicalButtonSceneTargets:v7];

  v8 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonPolicyAssistant captureButtonFullFidelityEventRequestingScenes];
  [v10 setCaptureButtonFullFidelityEventRequestingScenes:v8];

  v9 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonPolicyAssistant foregroundCaptureSceneTargets];
  [v10 setForegroundCaptureSceneTargets:v9];
}

- (void)homeGrabberViewDidReceiveClick:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogSiri();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: %@", &v10, 0x16u);
  }

  v7 = [(SBAssistantGestureManager *)self zStackParticipant];
  v8 = [v7 ownsHomeGesture];

  if (v8)
  {
    v9 = [(SBAssistantGestureManager *)self delegate];
    [v9 assistantGestureManagerDidRecognizeDismissGesture:self preferredDismissalOptions:0];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBAssistantGestureManager *)self panToDismissSiriGestureRecognizer];

  if (v8 == v6)
  {
    v12 = 0;
  }

  else
  {
    v9 = [(SBAssistantGestureManager *)self bottomEdgeDismissGestureRecognizer];
    if (v9 == v6)
    {
      v12 = 1;
    }

    else
    {
      v10 = [(SBAssistantGestureManager *)self bottomEdgeDismissGestureRecognizer];
      if (v10 == v7)
      {
        v12 = 1;
      }

      else
      {
        v11 = [(SBAssistantGestureManager *)self tapToDismissSiriGestureRecognizer];
        v12 = v11 == v6;
      }
    }
  }

  return v12;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SBAssistantGestureManager *)self bottomEdgeDismissGestureRecognizer];

  if (v5 == v4)
  {
    v7 = [(SBAssistantGestureManager *)self zStackParticipant];
    if ([v7 ownsHomeGesture])
    {
      v8 = [(SBAssistantGestureManager *)self gestureConfiguration];
      v6 = [v8 shouldShareHomeGesture];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = [(SBAssistantGestureManager *)self panToDismissSiriGestureRecognizer];
  v10 = v9;
  if (v9 == v4)
  {

LABEL_11:
    v12 = [(SBAssistantGestureManager *)self zStackParticipant];
    v6 = [v12 ownsHomeGesture];

    goto LABEL_12;
  }

  v11 = [(SBAssistantGestureManager *)self tapToDismissSiriGestureRecognizer];

  if (v11 == v4)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v6;
}

- (id)viewForSystemGestureRecognizer:(id)a3
{
  v3 = [(SBAssistantGestureManager *)self _assistantRootViewController];
  v4 = [v3 contentView];

  return v4;
}

- (int64_t)touchInterfaceOrientationForGestureRecognizer:(id)a3
{
  v3 = [(SBAssistantGestureManager *)self _assistantRootViewController];
  v4 = [v3 interfaceOrientation];

  return v4;
}

- (void)assistantGestureConfiguration:(id)a3 didUpdateHomeGestureSharing:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = NSStringFromBOOL();
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "%{public}@: %{public}@", &v9, 0x16u);
  }

  [(SBAssistantGestureManager *)self _didUpdateHomeGestureSharing:v4];
}

- (void)_didUpdateHomeGestureSharing:(BOOL)a3
{
  [(SBAssistantGestureManager *)self _updateZStackParticipantWithReason:@"Siri changed shareHomeGesture"];

  [(SBAssistantGestureManager *)self _resetDismissalSystemGestures];
}

- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldDismissForTapsOutsideContent:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = NSStringFromBOOL();
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "%{public}@: %{public}@", &v9, 0x16u);
  }

  [(SBAssistantGestureManager *)self _didUpdateShouldDismissForTapsOutsideContent:v4];
}

- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldDismissForSwipesOutsideContent:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = NSStringFromBOOL();
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "%{public}@: %{public}@", &v9, 0x16u);
  }

  [(SBAssistantGestureManager *)self _didUpdateShouldDismissForSwipesOutsideContent:v4];
}

- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldPassTouchesThroughToSpringBoard:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = NSStringFromBOOL();
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "%{public}@: %{public}@", &v9, 0x16u);
  }

  [(SBAssistantGestureManager *)self _didUpdateTouchesPassThroughToSpringBoard:v4];
}

- (void)_didUpdateTouchesPassThroughToSpringBoard:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBAssistantGestureManager *)self assistantWindow];
  [v4 setAllowsTouchPassThrough:v3];
}

- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldShowHomeAffordance:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = NSStringFromBOOL();
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "%{public}@: %{public}@", &v9, 0x16u);
  }

  [(SBAssistantGestureManager *)self _didUpdateSiriHomeAffordanceSuppression:v4];
}

- (void)assistantGestureConfiguration:(id)a3 didUpdateHomeAffordanceSuppression:(int64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = [MEMORY[0x277CCACA8] stringWithSiriHomeAffordanceSuppression:a4];
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "%{public}@: %{public}@", &v9, 0x16u);
  }

  [(SBAssistantGestureManager *)self _didUpdateSiriHomeAffordanceSuppression:a4];
}

- (void)_didUpdateSiriHomeAffordanceSuppression:(int64_t)a3
{
  if (a3 <= 2)
  {
    [(SBAssistantGestureManager *)self _didUpdateShouldShowHomeAffordance:(a3 & 1) == 0];
    [(SBAssistantGestureManager *)self setHomeAffordanceSuppression:a3];
  }

  [(SBAssistantGestureManager *)self _updateRootViewControllerOwnsHomeGesture];

  [(SBAssistantGestureManager *)self _updateZStackParticipantWithReason:@"siri updated home affordance suppression"];
}

- (void)assistantGestureConfiguration:(id)a3 didUpdateStatusBarActionGestureRecognizer:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v8, 0x16u);
  }

  [(SBAssistantGestureManager *)self _didUpdateStatusBarActionGestureRecognizer:v5];
}

- (void)_didUpdateStatusBarActionGestureRecognizer:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  tapToDismissSiriGestureRecognizer = self->_tapToDismissSiriGestureRecognizer;
  if (tapToDismissSiriGestureRecognizer)
  {
    if (self->_statusBarActionGestureRecognizer)
    {
      [(UITapGestureRecognizer *)tapToDismissSiriGestureRecognizer removeFailureRequirement:?];
      v7 = SBLogSiri();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = _SBFLoggingMethodProem();
        v9 = self->_tapToDismissSiriGestureRecognizer;
        statusBarActionGestureRecognizer = self->_statusBarActionGestureRecognizer;
        v15 = 138543874;
        v16 = v8;
        v17 = 2114;
        v18 = v9;
        v19 = 2114;
        v20 = statusBarActionGestureRecognizer;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removed failure requirement for assistant.dismiss.tap gesture recognizer %{public}@ on %{public}@", &v15, 0x20u);
      }

      v11 = self->_statusBarActionGestureRecognizer;
      self->_statusBarActionGestureRecognizer = 0;

      tapToDismissSiriGestureRecognizer = self->_tapToDismissSiriGestureRecognizer;
    }

    if (v5 && tapToDismissSiriGestureRecognizer)
    {
      [(UITapGestureRecognizer *)tapToDismissSiriGestureRecognizer requireGestureRecognizerToFail:v5];
      objc_storeStrong(&self->_statusBarActionGestureRecognizer, a3);
      v12 = SBLogSiri();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = _SBFLoggingMethodProem();
        v14 = self->_tapToDismissSiriGestureRecognizer;
        v15 = 138543874;
        v16 = v13;
        v17 = 2114;
        v18 = v14;
        v19 = 2114;
        v20 = v5;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Added failure requirement for assistant.dismiss.tap gesture recognizer %{public}@ on %{public}@", &v15, 0x20u);
      }
    }
  }
}

- (void)assistantSession:(id)a3 didChangePresentationInWindowScene:(id)a4
{
  v5 = [a3 presentationContext];
  v6 = [v5 isAssistantPresented];

  if (v6)
  {
    [(SBAssistantGestureManager *)self _setupSystemDismissalGestures];
    [(SBAssistantGestureManager *)self _configureHomeGesture];
  }

  else
  {
    [(SBAssistantGestureManager *)self _tearDownDismissalSystemGestures];
    [(SBAssistantGestureManager *)self _removeHomeGesture];
  }

  v7 = [(SBAssistantGestureManager *)self gestureConfiguration];
  -[SBAssistantGestureManager _didUpdateTouchesPassThroughToSpringBoard:](self, "_didUpdateTouchesPassThroughToSpringBoard:", [v7 shouldPassTouchesThroughToSpringBoard]);

  v8 = [(SBAssistantGestureManager *)self gestureConfiguration];
  -[SBAssistantGestureManager _didUpdateSiriHomeAffordanceSuppression:](self, "_didUpdateSiriHomeAffordanceSuppression:", [v8 homeAffordanceSuppression]);

  v9 = [(SBAssistantGestureManager *)self gestureConfiguration];
  -[SBAssistantGestureManager _didUpdateHomeGestureSharing:](self, "_didUpdateHomeGestureSharing:", [v9 shouldShareHomeGesture]);

  v10 = [(SBAssistantGestureManager *)self gestureConfiguration];
  v11 = [v10 statusBarActionGestureRecognizer];
  [(SBAssistantGestureManager *)self _didUpdateStatusBarActionGestureRecognizer:v11];

  [(SBAssistantGestureManager *)self _updateRootViewControllerDimsContentBelow];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = a4;
  if (([v5 isEqualToString:@"assistantAnimationDuration"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"assistantDismissAnimationDurationOverApp"))
  {
    [(SBAssistantGestureManager *)self _prototypeSettingsChanged];
  }
}

- (void)_prototypeSettingsChanged
{
  [(SBSystemAnimationSettings *)self->_settings assistantBottomEdgeDismissThreshold];
  *&kSBAssistantBottomEdgeDismissTranslationThreshold = v3;
  [(SBSystemAnimationSettings *)self->_settings assistantBottomEdgeDismissVelocity];
  *&kSBAssistantBottomEdgeDismissVelocityThreshold = v4;
  v6 = +[SBHomeGestureDomain rootSettings];
  [v6 edgeAngleWindow];
  kSBAssistantBottomEdgeAngleWindow = v5;
}

- (SBAssistantGestureManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end