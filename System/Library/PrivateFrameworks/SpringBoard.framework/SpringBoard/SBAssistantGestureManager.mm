@interface SBAssistantGestureManager
+ (BOOL)shouldDismissSiriForGestureTranslation:(CGPoint)translation velocity:(CGPoint)velocity;
- (BOOL)_noNewTransientOverlaysPresented;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)gesturesImplyFullscreenContent;
- (SBAssistantGestureManager)initWithAssistantWindow:(id)window gestureConfiguration:(id)configuration context:(id)context;
- (SBAssistantGestureManagerDelegate)delegate;
- (id)_assistantRootViewController;
- (id)_createPanToDismissSiriGestureRecognizer;
- (id)_createTapToDismissSiriGestureRecognizer;
- (id)viewForSystemGestureRecognizer:(id)recognizer;
- (int64_t)touchInterfaceOrientationForGestureRecognizer:(id)recognizer;
- (void)_commonHandlerForSiriDismissalGesture:(id)gesture;
- (void)_configureHomeGesture;
- (void)_configurePanToDismissGestureDependencies;
- (void)_didUpdateHomeGestureSharing:(BOOL)sharing;
- (void)_didUpdateSiriHomeAffordanceSuppression:(int64_t)suppression;
- (void)_didUpdateStatusBarActionGestureRecognizer:(id)recognizer;
- (void)_didUpdateTouchesPassThroughToSpringBoard:(BOOL)board;
- (void)_handleBottomEdgeDismissGesture:(id)gesture;
- (void)_notifyInteractionWithGestureRecognizer:(id)recognizer;
- (void)_pannedToDismissSiri:(id)siri;
- (void)_prototypeSettingsChanged;
- (void)_removeHomeGesture;
- (void)_removeScreenEdgePanGestureRecognizerIfNecessary;
- (void)_resetDismissalSystemGestures;
- (void)_setupSystemDismissalGestures;
- (void)_tappedToDismissSiri:(id)siri;
- (void)_tearDownDismissalSystemGestures;
- (void)_updateRootViewControllerDimsContentBelow;
- (void)_updateRootViewControllerOwnsHomeGesture;
- (void)_updateRootViewControllerShowsHomeAffordance:(BOOL)affordance;
- (void)_updateZStackParticipantWithReason:(id)reason;
- (void)assistantGestureConfiguration:(id)configuration didUpdateHomeAffordanceSuppression:(int64_t)suppression;
- (void)assistantGestureConfiguration:(id)configuration didUpdateHomeGestureSharing:(BOOL)sharing;
- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldDismissForSwipesOutsideContent:(BOOL)content;
- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldDismissForTapsOutsideContent:(BOOL)content;
- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldPassTouchesThroughToSpringBoard:(BOOL)board;
- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldShowHomeAffordance:(BOOL)affordance;
- (void)assistantGestureConfiguration:(id)configuration didUpdateStatusBarActionGestureRecognizer:(id)recognizer;
- (void)assistantSession:(id)session didChangePresentationInWindowScene:(id)scene;
- (void)dealloc;
- (void)homeGrabberViewDidReceiveClick:(id)click;
- (void)setTapToDismissSiriGestureRecognizer:(id)recognizer;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
- (void)zStackParticipantDidChange:(id)change;
@end

@implementation SBAssistantGestureManager

- (SBAssistantGestureManager)initWithAssistantWindow:(id)window gestureConfiguration:(id)configuration context:(id)context
{
  windowCopy = window;
  configurationCopy = configuration;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = SBAssistantGestureManager;
  v12 = [(SBAssistantGestureManager *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assistantWindow, window);
    objc_storeStrong(&v13->_gestureConfiguration, configuration);
    [(SBAssistantGestureConfiguration *)v13->_gestureConfiguration addObserver:v13];
    objc_storeStrong(&v13->_context, context);
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

+ (BOOL)shouldDismissSiriForGestureTranslation:(CGPoint)translation velocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = hypot(translation.x, translation.y);
  return hypot(x, y) > *&kSBAssistantBottomEdgeDismissVelocityThreshold || v6 > *&kSBAssistantBottomEdgeDismissTranslationThreshold;
}

- (BOOL)gesturesImplyFullscreenContent
{
  gestureConfiguration = [(SBAssistantGestureManager *)self gestureConfiguration];
  if ([gestureConfiguration shouldDismissForTapsOutsideContent])
  {
    shouldDismissForSwipesOutsideContent = 1;
  }

  else
  {
    gestureConfiguration2 = [(SBAssistantGestureManager *)self gestureConfiguration];
    shouldDismissForSwipesOutsideContent = [gestureConfiguration2 shouldDismissForSwipesOutsideContent];
  }

  return shouldDismissForSwipesOutsideContent;
}

- (void)_setupSystemDismissalGestures
{
  if (!self->_tapToDismissSiriGestureRecognizer)
  {
    _createTapToDismissSiriGestureRecognizer = [(SBAssistantGestureManager *)self _createTapToDismissSiriGestureRecognizer];
    [(SBAssistantGestureManager *)self setTapToDismissSiriGestureRecognizer:_createTapToDismissSiriGestureRecognizer];
  }

  if (!self->_panToDismissSiriGestureRecognizer)
  {
    _createPanToDismissSiriGestureRecognizer = [(SBAssistantGestureManager *)self _createPanToDismissSiriGestureRecognizer];
    panToDismissSiriGestureRecognizer = self->_panToDismissSiriGestureRecognizer;
    self->_panToDismissSiriGestureRecognizer = _createPanToDismissSiriGestureRecognizer;

    context = [(SBAssistantGestureManager *)self context];
    systemGestureManager = [context systemGestureManager];
    [systemGestureManager addGestureRecognizer:self->_panToDismissSiriGestureRecognizer withType:119];

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
    context = [(SBAssistantGestureManager *)self context];
    systemGestureManager = [context systemGestureManager];
    [systemGestureManager removeGestureRecognizer:self->_panToDismissSiriGestureRecognizer];

    panToDismissSiriGestureRecognizer = self->_panToDismissSiriGestureRecognizer;
    self->_panToDismissSiriGestureRecognizer = 0;
  }
}

- (void)_resetDismissalSystemGestures
{
  tapToDismissSiriGestureRecognizer = [(SBAssistantGestureManager *)self tapToDismissSiriGestureRecognizer];
  if (tapToDismissSiriGestureRecognizer)
  {
  }

  else
  {
    panToDismissSiriGestureRecognizer = [(SBAssistantGestureManager *)self panToDismissSiriGestureRecognizer];

    if (!panToDismissSiriGestureRecognizer)
    {
      return;
    }
  }

  [(SBAssistantGestureManager *)self _tearDownDismissalSystemGestures];

  [(SBAssistantGestureManager *)self _setupSystemDismissalGestures];
}

- (void)setTapToDismissSiriGestureRecognizer:(id)recognizer
{
  v23 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  tapToDismissSiriGestureRecognizer = self->_tapToDismissSiriGestureRecognizer;
  if (tapToDismissSiriGestureRecognizer != recognizerCopy)
  {
    if (tapToDismissSiriGestureRecognizer)
    {
      context = [(SBAssistantGestureManager *)self context];
      systemGestureManager = [context systemGestureManager];
      [systemGestureManager removeGestureRecognizer:self->_tapToDismissSiriGestureRecognizer];

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

    objc_storeStrong(&self->_tapToDismissSiriGestureRecognizer, recognizer);
    v14 = self->_statusBarActionGestureRecognizer;
    self->_statusBarActionGestureRecognizer = 0;

    if (recognizerCopy)
    {
      context2 = [(SBAssistantGestureManager *)self context];
      systemGestureManager2 = [context2 systemGestureManager];
      [systemGestureManager2 addGestureRecognizer:recognizerCopy withType:117];
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
  context = [(SBAssistantGestureManager *)self context];
  controlCenterController = [context controlCenterController];
  [controlCenterController _requirePresentGestureRecognizerToFailForGestureRecognizer:v3];

  return v3;
}

- (void)_configurePanToDismissGestureDependencies
{
  context = [(SBAssistantGestureManager *)self context];
  systemGestureManager = [context systemGestureManager];

  panToDismissSiriGestureRecognizer = [(SBAssistantGestureManager *)self panToDismissSiriGestureRecognizer];
  [systemGestureManager gestureRecognizerOfType:40 shouldBeRequiredToFailByGestureRecognizer:panToDismissSiriGestureRecognizer];
  gestureConfiguration = [(SBAssistantGestureManager *)self gestureConfiguration];
  shouldShareHomeGesture = [gestureConfiguration shouldShareHomeGesture];

  if (shouldShareHomeGesture)
  {
    [systemGestureManager gestureRecognizerOfType:3 shouldBeRequiredToFailByGestureRecognizer:panToDismissSiriGestureRecognizer];
    [systemGestureManager gestureRecognizerOfType:1 shouldBeRequiredToFailByGestureRecognizer:panToDismissSiriGestureRecognizer];
  }

  [systemGestureManager gestureRecognizerOfType:122 shouldRequireFailureOfGestureRecognizer:panToDismissSiriGestureRecognizer];
  [systemGestureManager gestureRecognizerOfType:123 shouldRequireFailureOfGestureRecognizer:panToDismissSiriGestureRecognizer];
  [systemGestureManager gestureRecognizerOfType:107 shouldRequireFailureOfGestureRecognizer:panToDismissSiriGestureRecognizer];
  [systemGestureManager gestureRecognizerOfType:108 shouldRequireFailureOfGestureRecognizer:panToDismissSiriGestureRecognizer];
  bottomEdgeDismissGestureRecognizer = [(SBAssistantGestureManager *)self bottomEdgeDismissGestureRecognizer];
  [systemGestureManager gestureRecognizerOfType:122 shouldRequireFailureOfGestureRecognizer:bottomEdgeDismissGestureRecognizer];
  [systemGestureManager gestureRecognizerOfType:123 shouldRequireFailureOfGestureRecognizer:bottomEdgeDismissGestureRecognizer];
  [systemGestureManager gestureRecognizerOfType:107 shouldRequireFailureOfGestureRecognizer:bottomEdgeDismissGestureRecognizer];
  [systemGestureManager gestureRecognizerOfType:108 shouldRequireFailureOfGestureRecognizer:bottomEdgeDismissGestureRecognizer];
  context2 = [(SBAssistantGestureManager *)self context];
  switcherController = [context2 switcherController];
  homeGestureBottomEdgeRecognizer = [switcherController homeGestureBottomEdgeRecognizer];
  [panToDismissSiriGestureRecognizer requireGestureRecognizerToFail:homeGestureBottomEdgeRecognizer];

  if (bottomEdgeDismissGestureRecognizer)
  {
    [panToDismissSiriGestureRecognizer requireGestureRecognizerToFail:bottomEdgeDismissGestureRecognizer];
  }
}

- (void)_pannedToDismissSiri:(id)siri
{
  v22 = *MEMORY[0x277D85DE8];
  siriCopy = siri;
  gestureConfiguration = [(SBAssistantGestureManager *)self gestureConfiguration];
  shouldDismissForSwipesOutsideContent = [gestureConfiguration shouldDismissForSwipesOutsideContent];

  v7 = SBLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _SBFLoggingMethodProem();
    v9 = v8;
    v10 = @"SHOULDN'T";
    if (shouldDismissForSwipesOutsideContent)
    {
      v10 = @"SHOULD";
    }

    v18 = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Assistant %{public}@ dismiss for pans outside of content", &v18, 0x16u);
  }

  context = [(SBAssistantGestureManager *)self context];
  controlCenterController = [context controlCenterController];
  isPresented = [controlCenterController isPresented];

  _noNewTransientOverlaysPresented = [(SBAssistantGestureManager *)self _noNewTransientOverlaysPresented];
  if ((isPresented & 1) == 0 && _noNewTransientOverlaysPresented)
  {
    if (shouldDismissForSwipesOutsideContent && [siriCopy state] == 1)
    {
      [(SBAssistantGestureManager *)self _commonHandlerForSiriDismissalGesture:siriCopy];
    }

    else
    {
      _sbWindowScene = [(UIWindow *)self->_assistantWindow _sbWindowScene];
      assistantController = [_sbWindowScene assistantController];
      isSystemAssistantExperienceEnabled = [assistantController isSystemAssistantExperienceEnabled];

      if (isSystemAssistantExperienceEnabled)
      {
        [(SBAssistantGestureManager *)self _notifyInteractionWithGestureRecognizer:siriCopy];
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

- (void)_tappedToDismissSiri:(id)siri
{
  v22 = *MEMORY[0x277D85DE8];
  siriCopy = siri;
  gestureConfiguration = [(SBAssistantGestureManager *)self gestureConfiguration];
  shouldDismissForTapsOutsideContent = [gestureConfiguration shouldDismissForTapsOutsideContent];

  v7 = SBLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _SBFLoggingMethodProem();
    v9 = v8;
    v10 = @"SHOULDN'T";
    if (shouldDismissForTapsOutsideContent)
    {
      v10 = @"SHOULD";
    }

    v18 = 138543618;
    v19 = v8;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Assistant %{public}@ dismiss for taps outside of content", &v18, 0x16u);
  }

  context = [(SBAssistantGestureManager *)self context];
  controlCenterController = [context controlCenterController];
  isPresented = [controlCenterController isPresented];

  _noNewTransientOverlaysPresented = [(SBAssistantGestureManager *)self _noNewTransientOverlaysPresented];
  if ((isPresented & 1) == 0 && _noNewTransientOverlaysPresented)
  {
    if (shouldDismissForTapsOutsideContent)
    {
      [(SBAssistantGestureManager *)self _commonHandlerForSiriDismissalGesture:siriCopy];
    }

    else
    {
      _sbWindowScene = [(UIWindow *)self->_assistantWindow _sbWindowScene];
      assistantController = [_sbWindowScene assistantController];
      isSystemAssistantExperienceEnabled = [assistantController isSystemAssistantExperienceEnabled];

      if (isSystemAssistantExperienceEnabled)
      {
        [(SBAssistantGestureManager *)self _notifyInteractionWithGestureRecognizer:siriCopy];
      }
    }
  }
}

- (void)_configureHomeGesture
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (SBHomeGestureEnabled())
  {
    gestureConfiguration = [(SBAssistantGestureManager *)self gestureConfiguration];
    if ([gestureConfiguration shouldShareHomeGesture])
    {
      bottomEdgeDismissGestureRecognizer = [(SBAssistantGestureManager *)self bottomEdgeDismissGestureRecognizer];

      if (!bottomEdgeDismissGestureRecognizer)
      {
        mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
        homeButtonType = [mEMORY[0x277CF0CA8] homeButtonType];

        if (homeButtonType == 2)
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
        context = [(SBAssistantGestureManager *)self context];
        switcherController = [context switcherController];
        homeGestureBottomEdgeRecognizer = [switcherController homeGestureBottomEdgeRecognizer];
        [(SBHomeGesturePanGestureRecognizer *)v10 requireGestureRecognizerToFail:homeGestureBottomEdgeRecognizer];

        [(UIPanGestureRecognizer *)self->_panToDismissSiriGestureRecognizer requireGestureRecognizerToFail:self->_bottomEdgeDismissGestureRecognizer];
        context2 = [(SBAssistantGestureManager *)self context];
        systemGestureManager = [context2 systemGestureManager];
        [systemGestureManager addGestureRecognizer:self->_bottomEdgeDismissGestureRecognizer withType:118];

        [(SBAssistantGestureManager *)self _configurePanToDismissGestureDependencies];
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  gestureConfiguration2 = [(SBAssistantGestureManager *)self gestureConfiguration];
  if ([gestureConfiguration2 shouldShareHomeGesture])
  {
  }

  else
  {
    bottomEdgeDismissGestureRecognizer2 = [(SBAssistantGestureManager *)self bottomEdgeDismissGestureRecognizer];

    if (bottomEdgeDismissGestureRecognizer2)
    {
      [(SBAssistantGestureManager *)self _removeScreenEdgePanGestureRecognizerIfNecessary];
    }
  }

LABEL_13:
  zStackParticipant = [(SBAssistantGestureManager *)self zStackParticipant];

  if (!zStackParticipant)
  {
    context3 = [(SBAssistantGestureManager *)self context];
    zStackResolver = [context3 zStackResolver];
    v21 = [zStackResolver acquireParticipantWithIdentifier:17 delegate:self];
    [(SBAssistantGestureManager *)self setZStackParticipant:v21];

    v22 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBPhysicalButtonZStackPolicyAssistant alloc] initWithParticipant:self->_zStackParticipant];
    physicalButtonPolicyAssistant = self->_physicalButtonPolicyAssistant;
    self->_physicalButtonPolicyAssistant = v22;

    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    _sbWindowScene = [(UIWindow *)self->_assistantWindow _sbWindowScene];
    _FBSScene = [_sbWindowScene _FBSScene];
    identityToken = [_FBSScene identityToken];
    v28 = [mEMORY[0x277D0AAD8] sceneFromIdentityToken:identityToken];

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

- (void)_handleBottomEdgeDismissGesture:(id)gesture
{
  gestureCopy = gesture;
  _assistantRootViewController = [(SBAssistantGestureManager *)self _assistantRootViewController];
  view = [_assistantRootViewController view];

  [gestureCopy translationInView:view];
  v7 = v6;
  v9 = v8;
  [gestureCopy velocityInView:view];
  v11 = v10;
  v13 = v12;

  if ([SBAssistantGestureManager shouldDismissSiriForGestureTranslation:v7 velocity:v9, v11, v13])
  {
    delegate = [(SBAssistantGestureManager *)self delegate];
    [delegate assistantGestureManagerDidRecognizeDismissGesture:self preferredDismissalOptions:0];
  }
}

- (void)_removeHomeGesture
{
  physicalButtonPolicyAssistant = self->_physicalButtonPolicyAssistant;
  self->_physicalButtonPolicyAssistant = 0;

  zStackParticipant = [(SBAssistantGestureManager *)self zStackParticipant];
  [zStackParticipant invalidate];

  [(SBAssistantGestureManager *)self setZStackParticipant:0];

  [(SBAssistantGestureManager *)self _removeScreenEdgePanGestureRecognizerIfNecessary];
}

- (void)_removeScreenEdgePanGestureRecognizerIfNecessary
{
  bottomEdgeDismissGestureRecognizer = [(SBAssistantGestureManager *)self bottomEdgeDismissGestureRecognizer];
  if (bottomEdgeDismissGestureRecognizer)
  {
    v6 = bottomEdgeDismissGestureRecognizer;
    context = [(SBAssistantGestureManager *)self context];
    systemGestureManager = [context systemGestureManager];
    [systemGestureManager removeGestureRecognizer:v6];

    [(SBAssistantGestureManager *)self setBottomEdgeDismissGestureRecognizer:0];
    bottomEdgeDismissGestureRecognizer = v6;
  }
}

- (void)_commonHandlerForSiriDismissalGesture:(id)gesture
{
  gestureCopy = gesture;
  _assistantRootViewController = [(SBAssistantGestureManager *)self _assistantRootViewController];
  view = [_assistantRootViewController view];
  _UISystemGestureLocationInView();
  v9 = v8;
  v11 = v10;

  objc_initWeak(&location, self);
  delegate = [(SBAssistantGestureManager *)self delegate];
  objc_initWeak(&from, delegate);

  gestureConfiguration = [(SBAssistantGestureManager *)self gestureConfiguration];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__SBAssistantGestureManager__commonHandlerForSiriDismissalGesture___block_invoke;
  v14[3] = &unk_2783BA5B0;
  v14[4] = self;
  v16[1] = a2;
  objc_copyWeak(&v15, &from);
  objc_copyWeak(v16, &location);
  [gestureConfiguration shouldDismissForGestureAtLocation:v14 completion:{v9, v11}];

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

- (void)_notifyInteractionWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  _assistantRootViewController = [(SBAssistantGestureManager *)self _assistantRootViewController];
  view = [_assistantRootViewController view];
  _UISystemGestureLocationInView();
  v7 = v6;
  v9 = v8;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [recognizerCopy state] == 1)
  {
    gestureConfiguration = [(SBAssistantGestureManager *)self gestureConfiguration];
    [gestureConfiguration notifyPanBeganAtPoint:{v7, v9}];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    gestureConfiguration = [(SBAssistantGestureManager *)self gestureConfiguration];
    [gestureConfiguration notifyTapAtPoint:{v7, v9}];
  }

LABEL_7:
}

- (void)_updateRootViewControllerOwnsHomeGesture
{
  zStackParticipant = [(SBAssistantGestureManager *)self zStackParticipant];
  if ([zStackParticipant ownsHomeGesture])
  {
    gestureConfiguration = [(SBAssistantGestureManager *)self gestureConfiguration];
    v5 = [gestureConfiguration shouldShareHomeGesture] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  _assistantRootViewController = [(SBAssistantGestureManager *)self _assistantRootViewController];
  [_assistantRootViewController setOwnsHomeGesture:v5];
}

- (void)_updateRootViewControllerShowsHomeAffordance:(BOOL)affordance
{
  affordanceCopy = affordance;
  zStackParticipant = [(SBAssistantGestureManager *)self zStackParticipant];
  homeAffordanceDrawingSuppressed = [zStackParticipant homeAffordanceDrawingSuppressed];

  _assistantRootViewController = [(SBAssistantGestureManager *)self _assistantRootViewController];
  v8 = _assistantRootViewController;
  v9 = affordanceCopy & ~homeAffordanceDrawingSuppressed;
  if ((affordanceCopy & ~homeAffordanceDrawingSuppressed) != 0)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  [_assistantRootViewController setShowsHomeAffordance:v9];

  _assistantRootViewController2 = [(SBAssistantGestureManager *)self _assistantRootViewController];
  [_assistantRootViewController2 setHomeGrabberPointerClickDelegate:selfCopy];
}

- (void)_updateRootViewControllerDimsContentBelow
{
  _sbWindowScene = [(UIWindow *)self->_assistantWindow _sbWindowScene];
  assistantController = [_sbWindowScene assistantController];

  if ([assistantController isSystemAssistantExperienceEnabled])
  {
    presentationContext = [assistantController presentationContext];
    if ([presentationContext hasTextModality])
    {
      presentationContext2 = [assistantController presentationContext];
      if ([presentationContext2 wantsDeemphasizedBackdrop])
      {
        participantBelowAllowsDimming = [(SBFZStackParticipant *)self->_zStackParticipant participantBelowAllowsDimming];
      }

      else
      {
        participantBelowAllowsDimming = 0;
      }
    }

    else
    {
      participantBelowAllowsDimming = 0;
    }
  }

  else
  {
    participantBelowAllowsDimming = 0;
  }

  _assistantRootViewController = [(SBAssistantGestureManager *)self _assistantRootViewController];
  [_assistantRootViewController setDimsContentBelow:participantBelowAllowsDimming];
}

- (void)_updateZStackParticipantWithReason:(id)reason
{
  reasonCopy = reason;
  zStackParticipant = [(SBAssistantGestureManager *)self zStackParticipant];
  [zStackParticipant setNeedsUpdatePreferencesWithReason:reasonCopy];
}

- (BOOL)_noNewTransientOverlaysPresented
{
  selfCopy = self;
  context = [(SBAssistantGestureManager *)self context];
  transientOverlayPresenter = [context transientOverlayPresenter];
  topmostPresentedViewController = [transientOverlayPresenter topmostPresentedViewController];

  LOBYTE(selfCopy) = topmostPresentedViewController == selfCopy->_topmostTransientViewControllerAtPresentation;
  return selfCopy;
}

- (id)_assistantRootViewController
{
  assistantWindow = [(SBAssistantGestureManager *)self assistantWindow];
  assistantRootViewController = [assistantWindow assistantRootViewController];

  return assistantRootViewController;
}

- (void)zStackParticipantDidChange:(id)change
{
  [(SBAssistantGestureManager *)self _updateRootViewControllerOwnsHomeGesture];
  gestureConfiguration = [(SBAssistantGestureManager *)self gestureConfiguration];
  -[SBAssistantGestureManager _updateRootViewControllerShowsHomeAffordance:](self, "_updateRootViewControllerShowsHomeAffordance:", [gestureConfiguration shouldShowHomeAffordance]);

  [(SBAssistantGestureManager *)self _updateRootViewControllerDimsContentBelow];
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  gestureConfiguration = [(SBAssistantGestureManager *)self gestureConfiguration];
  shouldShareHomeGesture = [gestureConfiguration shouldShareHomeGesture];

  [preferencesCopy setActivationPolicyForParticipantsBelow:shouldShareHomeGesture ^ 1u];
  [preferencesCopy setHomeAffordanceDrawingSuppression:{-[SBAssistantGestureManager homeAffordanceSuppression](self, "homeAffordanceSuppression")}];
  [preferencesCopy setAllowsKeyboardArbiterToDetermineFocusTarget:1];
  physicalButtonSceneTargets = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonPolicyAssistant physicalButtonSceneTargets];
  [preferencesCopy setPhysicalButtonSceneTargets:physicalButtonSceneTargets];

  captureButtonFullFidelityEventRequestingScenes = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonPolicyAssistant captureButtonFullFidelityEventRequestingScenes];
  [preferencesCopy setCaptureButtonFullFidelityEventRequestingScenes:captureButtonFullFidelityEventRequestingScenes];

  foregroundCaptureSceneTargets = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonPolicyAssistant foregroundCaptureSceneTargets];
  [preferencesCopy setForegroundCaptureSceneTargets:foregroundCaptureSceneTargets];
}

- (void)homeGrabberViewDidReceiveClick:(id)click
{
  v14 = *MEMORY[0x277D85DE8];
  clickCopy = click;
  v5 = SBLogSiri();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = clickCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: %@", &v10, 0x16u);
  }

  zStackParticipant = [(SBAssistantGestureManager *)self zStackParticipant];
  ownsHomeGesture = [zStackParticipant ownsHomeGesture];

  if (ownsHomeGesture)
  {
    delegate = [(SBAssistantGestureManager *)self delegate];
    [delegate assistantGestureManagerDidRecognizeDismissGesture:self preferredDismissalOptions:0];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  panToDismissSiriGestureRecognizer = [(SBAssistantGestureManager *)self panToDismissSiriGestureRecognizer];

  if (panToDismissSiriGestureRecognizer == recognizerCopy)
  {
    v12 = 0;
  }

  else
  {
    bottomEdgeDismissGestureRecognizer = [(SBAssistantGestureManager *)self bottomEdgeDismissGestureRecognizer];
    if (bottomEdgeDismissGestureRecognizer == recognizerCopy)
    {
      v12 = 1;
    }

    else
    {
      bottomEdgeDismissGestureRecognizer2 = [(SBAssistantGestureManager *)self bottomEdgeDismissGestureRecognizer];
      if (bottomEdgeDismissGestureRecognizer2 == gestureRecognizerCopy)
      {
        v12 = 1;
      }

      else
      {
        tapToDismissSiriGestureRecognizer = [(SBAssistantGestureManager *)self tapToDismissSiriGestureRecognizer];
        v12 = tapToDismissSiriGestureRecognizer == recognizerCopy;
      }
    }
  }

  return v12;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  bottomEdgeDismissGestureRecognizer = [(SBAssistantGestureManager *)self bottomEdgeDismissGestureRecognizer];

  if (bottomEdgeDismissGestureRecognizer == beginCopy)
  {
    zStackParticipant = [(SBAssistantGestureManager *)self zStackParticipant];
    if ([zStackParticipant ownsHomeGesture])
    {
      gestureConfiguration = [(SBAssistantGestureManager *)self gestureConfiguration];
      shouldShareHomeGesture = [gestureConfiguration shouldShareHomeGesture];
    }

    else
    {
      shouldShareHomeGesture = 0;
    }
  }

  else
  {
    shouldShareHomeGesture = 0;
  }

  panToDismissSiriGestureRecognizer = [(SBAssistantGestureManager *)self panToDismissSiriGestureRecognizer];
  v10 = panToDismissSiriGestureRecognizer;
  if (panToDismissSiriGestureRecognizer == beginCopy)
  {

LABEL_11:
    zStackParticipant2 = [(SBAssistantGestureManager *)self zStackParticipant];
    shouldShareHomeGesture = [zStackParticipant2 ownsHomeGesture];

    goto LABEL_12;
  }

  tapToDismissSiriGestureRecognizer = [(SBAssistantGestureManager *)self tapToDismissSiriGestureRecognizer];

  if (tapToDismissSiriGestureRecognizer == beginCopy)
  {
    goto LABEL_11;
  }

LABEL_12:

  return shouldShareHomeGesture;
}

- (id)viewForSystemGestureRecognizer:(id)recognizer
{
  _assistantRootViewController = [(SBAssistantGestureManager *)self _assistantRootViewController];
  contentView = [_assistantRootViewController contentView];

  return contentView;
}

- (int64_t)touchInterfaceOrientationForGestureRecognizer:(id)recognizer
{
  _assistantRootViewController = [(SBAssistantGestureManager *)self _assistantRootViewController];
  interfaceOrientation = [_assistantRootViewController interfaceOrientation];

  return interfaceOrientation;
}

- (void)assistantGestureConfiguration:(id)configuration didUpdateHomeGestureSharing:(BOOL)sharing
{
  sharingCopy = sharing;
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

  [(SBAssistantGestureManager *)self _didUpdateHomeGestureSharing:sharingCopy];
}

- (void)_didUpdateHomeGestureSharing:(BOOL)sharing
{
  [(SBAssistantGestureManager *)self _updateZStackParticipantWithReason:@"Siri changed shareHomeGesture"];

  [(SBAssistantGestureManager *)self _resetDismissalSystemGestures];
}

- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldDismissForTapsOutsideContent:(BOOL)content
{
  contentCopy = content;
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

  [(SBAssistantGestureManager *)self _didUpdateShouldDismissForTapsOutsideContent:contentCopy];
}

- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldDismissForSwipesOutsideContent:(BOOL)content
{
  contentCopy = content;
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

  [(SBAssistantGestureManager *)self _didUpdateShouldDismissForSwipesOutsideContent:contentCopy];
}

- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldPassTouchesThroughToSpringBoard:(BOOL)board
{
  boardCopy = board;
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

  [(SBAssistantGestureManager *)self _didUpdateTouchesPassThroughToSpringBoard:boardCopy];
}

- (void)_didUpdateTouchesPassThroughToSpringBoard:(BOOL)board
{
  boardCopy = board;
  assistantWindow = [(SBAssistantGestureManager *)self assistantWindow];
  [assistantWindow setAllowsTouchPassThrough:boardCopy];
}

- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldShowHomeAffordance:(BOOL)affordance
{
  affordanceCopy = affordance;
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

  [(SBAssistantGestureManager *)self _didUpdateSiriHomeAffordanceSuppression:affordanceCopy];
}

- (void)assistantGestureConfiguration:(id)configuration didUpdateHomeAffordanceSuppression:(int64_t)suppression
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = [MEMORY[0x277CCACA8] stringWithSiriHomeAffordanceSuppression:suppression];
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "%{public}@: %{public}@", &v9, 0x16u);
  }

  [(SBAssistantGestureManager *)self _didUpdateSiriHomeAffordanceSuppression:suppression];
}

- (void)_didUpdateSiriHomeAffordanceSuppression:(int64_t)suppression
{
  if (suppression <= 2)
  {
    [(SBAssistantGestureManager *)self _didUpdateShouldShowHomeAffordance:(suppression & 1) == 0];
    [(SBAssistantGestureManager *)self setHomeAffordanceSuppression:suppression];
  }

  [(SBAssistantGestureManager *)self _updateRootViewControllerOwnsHomeGesture];

  [(SBAssistantGestureManager *)self _updateZStackParticipantWithReason:@"siri updated home affordance suppression"];
}

- (void)assistantGestureConfiguration:(id)configuration didUpdateStatusBarActionGestureRecognizer:(id)recognizer
{
  v12 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = recognizerCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v8, 0x16u);
  }

  [(SBAssistantGestureManager *)self _didUpdateStatusBarActionGestureRecognizer:recognizerCopy];
}

- (void)_didUpdateStatusBarActionGestureRecognizer:(id)recognizer
{
  v21 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
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

    if (recognizerCopy && tapToDismissSiriGestureRecognizer)
    {
      [(UITapGestureRecognizer *)tapToDismissSiriGestureRecognizer requireGestureRecognizerToFail:recognizerCopy];
      objc_storeStrong(&self->_statusBarActionGestureRecognizer, recognizer);
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
        v20 = recognizerCopy;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Added failure requirement for assistant.dismiss.tap gesture recognizer %{public}@ on %{public}@", &v15, 0x20u);
      }
    }
  }
}

- (void)assistantSession:(id)session didChangePresentationInWindowScene:(id)scene
{
  presentationContext = [session presentationContext];
  isAssistantPresented = [presentationContext isAssistantPresented];

  if (isAssistantPresented)
  {
    [(SBAssistantGestureManager *)self _setupSystemDismissalGestures];
    [(SBAssistantGestureManager *)self _configureHomeGesture];
  }

  else
  {
    [(SBAssistantGestureManager *)self _tearDownDismissalSystemGestures];
    [(SBAssistantGestureManager *)self _removeHomeGesture];
  }

  gestureConfiguration = [(SBAssistantGestureManager *)self gestureConfiguration];
  -[SBAssistantGestureManager _didUpdateTouchesPassThroughToSpringBoard:](self, "_didUpdateTouchesPassThroughToSpringBoard:", [gestureConfiguration shouldPassTouchesThroughToSpringBoard]);

  gestureConfiguration2 = [(SBAssistantGestureManager *)self gestureConfiguration];
  -[SBAssistantGestureManager _didUpdateSiriHomeAffordanceSuppression:](self, "_didUpdateSiriHomeAffordanceSuppression:", [gestureConfiguration2 homeAffordanceSuppression]);

  gestureConfiguration3 = [(SBAssistantGestureManager *)self gestureConfiguration];
  -[SBAssistantGestureManager _didUpdateHomeGestureSharing:](self, "_didUpdateHomeGestureSharing:", [gestureConfiguration3 shouldShareHomeGesture]);

  gestureConfiguration4 = [(SBAssistantGestureManager *)self gestureConfiguration];
  statusBarActionGestureRecognizer = [gestureConfiguration4 statusBarActionGestureRecognizer];
  [(SBAssistantGestureManager *)self _didUpdateStatusBarActionGestureRecognizer:statusBarActionGestureRecognizer];

  [(SBAssistantGestureManager *)self _updateRootViewControllerDimsContentBelow];
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  keyCopy = key;
  if (([keyCopy isEqualToString:@"assistantAnimationDuration"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"assistantDismissAnimationDurationOverApp"))
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