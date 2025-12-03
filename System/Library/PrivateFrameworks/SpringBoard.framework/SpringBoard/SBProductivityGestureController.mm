@interface SBProductivityGestureController
- (BOOL)_enabledForCurrentAppScenes;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (SBProductivityGestureController)initWithSystemGestureManager:(id)manager focusController:(id)controller gestureDefaults:(id)defaults gestureEducationController:(id)educationController;
- (id)_focusedSceneForAction;
- (int64_t)_educationTypeForGesture:(id)gesture direction:(int64_t)direction;
- (int64_t)_orientationOfFocusedSceneForGesture:(id)gesture;
- (int64_t)slideDirectionWithGesture:(id)gesture;
- (void)_evaluateEnablement;
- (void)_setupGestureRecognizers;
- (void)_tearDownGestureRecognizers;
- (void)handleProductivityGesture:(id)gesture;
@end

@implementation SBProductivityGestureController

- (SBProductivityGestureController)initWithSystemGestureManager:(id)manager focusController:(id)controller gestureDefaults:(id)defaults gestureEducationController:(id)educationController
{
  managerCopy = manager;
  controllerCopy = controller;
  defaultsCopy = defaults;
  educationControllerCopy = educationController;
  v31.receiver = self;
  v31.super_class = SBProductivityGestureController;
  v15 = [(SBProductivityGestureController *)&v31 init];
  if (v15)
  {
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    sceneManager = v15->_sceneManager;
    v15->_sceneManager = mEMORY[0x277D0AAD8];

    objc_storeStrong(&v15->_systemGestureManager, manager);
    objc_storeStrong(&v15->_focusController, controller);
    objc_storeStrong(&v15->_gestureDefaults, defaults);
    objc_storeStrong(&v15->_educationController, educationController);
    if (_os_feature_enabled_impl())
    {
      objc_initWeak(&location, v15);
      gestureDefaults = v15->_gestureDefaults;
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"productivityGesturesAllowed"];
      v20 = MEMORY[0x277D85CD0];
      v21 = MEMORY[0x277D85CD0];
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __123__SBProductivityGestureController_initWithSystemGestureManager_focusController_gestureDefaults_gestureEducationController___block_invoke;
      v28 = &unk_2783A8C68;
      objc_copyWeak(&v29, &location);
      v22 = [(SBGestureDefaults *)gestureDefaults observeDefault:v19 onQueue:v20 withBlock:&v25];
      gestureDefaultsObserver = v15->_gestureDefaultsObserver;
      v15->_gestureDefaultsObserver = v22;

      [(SBProductivityGestureController *)v15 _evaluateEnablement:v25];
      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }

  return v15;
}

void __123__SBProductivityGestureController_initWithSystemGestureManager_focusController_gestureDefaults_gestureEducationController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _evaluateEnablement];
    WeakRetained = v2;
  }
}

- (void)_evaluateEnablement
{
  if ([(SBGestureDefaults *)self->_gestureDefaults productivityGesturesAllowed])
  {

    [(SBProductivityGestureController *)self _setupGestureRecognizers];
  }

  else
  {

    [(SBProductivityGestureController *)self _tearDownGestureRecognizers];
  }
}

- (void)_setupGestureRecognizers
{
  v3 = _os_feature_enabled_impl();
  v4 = _os_feature_enabled_impl();
  if (!self->_threeFingerSingleTap)
  {
    v5 = [MEMORY[0x277D76080] productivitySingleTapGestureRecognizerWithTarget:self action:sel_handleProductivityGesture_ delegate:self];
    if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 setContinuousTapRecognition:1];
    }

    threeFingerSingleTap = self->_threeFingerSingleTap;
    self->_threeFingerSingleTap = v5;
    v7 = v5;

    [(SBSystemGestureManager *)self->_systemGestureManager addGestureRecognizer:v7 withType:130];
  }

  if (!((self->_threeFingerDoubleTap != 0) | v4 & 1))
  {
    v8 = [MEMORY[0x277D76060] productivityDoubleTapGestureRecognizerWithTarget:self action:sel_handleProductivityGesture_ delegate:self];
    threeFingerDoubleTap = self->_threeFingerDoubleTap;
    self->_threeFingerDoubleTap = v8;
    v10 = v8;

    [(SBSystemGestureManager *)self->_systemGestureManager addGestureRecognizer:v10 withType:132];
  }

  if (!self->_threeFingerSlide)
  {
    v11 = [MEMORY[0x277D76070] productivityPanGestureRecognizerWithTarget:self action:sel_handleProductivityGesture_ delegate:self];
    threeFingerSlide = self->_threeFingerSlide;
    self->_threeFingerSlide = v11;
    v13 = v11;

    [(SBSystemGestureManager *)self->_systemGestureManager addGestureRecognizer:v13 withType:133];
  }

  if (!self->_threeFingerLongPress)
  {
    v14 = [MEMORY[0x277D76068] productivityLongPressGestureRecognizerWithTarget:self action:sel_handleProductivityGesture_ delegate:self];
    threeFingerLongPress = self->_threeFingerLongPress;
    self->_threeFingerLongPress = v14;
    v16 = v14;

    [(SBSystemGestureManager *)self->_systemGestureManager addGestureRecognizer:v16 withType:131];
  }

  if (self->_threeFingerPinch)
  {
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = [MEMORY[0x277D76078] productivityPinchGestureRecognizerWithTarget:self action:sel_handleProductivityGesture_ delegate:self];
    threeFingerPinch = self->_threeFingerPinch;
    self->_threeFingerPinch = v19;
    v21 = v19;

    [(SBSystemGestureManager *)self->_systemGestureManager addGestureRecognizer:v21 withType:134];
    if (!v3)
    {
LABEL_14:
      if (v4)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  [(_UIKBProductivitySingleTapGesture *)self->_threeFingerSingleTap setCancelsTouchesInView:1];
  [(_UIKBProductivityDoubleTapGesture *)self->_threeFingerDoubleTap setCancelsTouchesInView:1];
  [(_UIKBProductivityPanGestureRecognizer *)self->_threeFingerSlide setCancelsTouchesInView:1];
  [(_UIKBProductivityLongPressGestureRecognizer *)self->_threeFingerLongPress setCancelsTouchesInView:1];
  [(_UIKBProductivityPinchGestureRecognizer *)self->_threeFingerPinch setCancelsTouchesInView:1];
  if ((v4 & 1) == 0)
  {
LABEL_15:
    [(SBSystemGestureManager *)self->_systemGestureManager gestureRecognizerOfType:130 shouldRequireFailureOfGestureRecognizer:self->_threeFingerDoubleTap];
  }

LABEL_16:
  [(SBSystemGestureManager *)self->_systemGestureManager gestureRecognizerOfType:130 shouldRequireFailureOfGestureRecognizer:self->_threeFingerSlide];
  [(SBSystemGestureManager *)self->_systemGestureManager gestureRecognizerOfType:130 shouldRequireFailureOfGestureRecognizer:self->_threeFingerLongPress];
  systemGestureManager = self->_systemGestureManager;
  v18 = self->_threeFingerPinch;

  [(SBSystemGestureManager *)systemGestureManager gestureRecognizerOfType:130 shouldRequireFailureOfGestureRecognizer:v18];
}

- (void)_tearDownGestureRecognizers
{
  if (self->_threeFingerSingleTap)
  {
    [(SBSystemGestureManager *)self->_systemGestureManager removeGestureRecognizer:?];
    threeFingerSingleTap = self->_threeFingerSingleTap;
    self->_threeFingerSingleTap = 0;
  }

  if (self->_threeFingerDoubleTap)
  {
    [(SBSystemGestureManager *)self->_systemGestureManager removeGestureRecognizer:?];
    threeFingerDoubleTap = self->_threeFingerDoubleTap;
    self->_threeFingerDoubleTap = 0;
  }

  if (self->_threeFingerSlide)
  {
    [(SBSystemGestureManager *)self->_systemGestureManager removeGestureRecognizer:?];
    threeFingerSlide = self->_threeFingerSlide;
    self->_threeFingerSlide = 0;
  }

  if (self->_threeFingerLongPress)
  {
    [(SBSystemGestureManager *)self->_systemGestureManager removeGestureRecognizer:?];
    threeFingerLongPress = self->_threeFingerLongPress;
    self->_threeFingerLongPress = 0;
  }

  if (self->_threeFingerPinch)
  {
    [(SBSystemGestureManager *)self->_systemGestureManager removeGestureRecognizer:?];
    threeFingerPinch = self->_threeFingerPinch;
    self->_threeFingerPinch = 0;
  }
}

- (int64_t)slideDirectionWithGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [gestureCopy view];
  [gestureCopy translationInView:view];
  v7 = v6;
  v9 = v8;

  v10 = [(SBProductivityGestureController *)self _orientationOfFocusedSceneForGesture:gestureCopy];
  v11 = -v7;
  v12 = -v9;
  if (v10 == 3)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  if (v10 == 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v7;
  }

  if (v10 == 4)
  {
    v13 = -v7;
    v14 = -v9;
  }

  if (v10 != 2)
  {
    v12 = v13;
    v11 = v14;
  }

  v15 = fabs(v11);
  v16 = fmax(fabs(v12), 5.0);
  v17 = 2;
  if (v11 > 0.0)
  {
    v17 = 3;
  }

  if (v16 <= v15)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

- (void)handleProductivityGesture:(id)gesture
{
  v37 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  v5 = gestureCopy;
  if (self->_threeFingerSingleTap == gestureCopy)
  {
    if (_os_feature_enabled_impl() && ([(_UIKBProductivitySingleTapGesture *)v5 state]== 1 || [(_UIKBProductivitySingleTapGesture *)v5 state]== 2))
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && [(_UIKBProductivitySingleTapGesture *)v5 tapCount]> 1)
      {
LABEL_17:
        v7 = 2;
        goto LABEL_27;
      }

LABEL_15:
      v7 = 1;
      goto LABEL_27;
    }

LABEL_14:
    if ([(_UIKBProductivitySingleTapGesture *)v5 state]!= 3)
    {
      goto LABEL_63;
    }

    goto LABEL_15;
  }

  if (self->_threeFingerLongPress == gestureCopy)
  {
    goto LABEL_14;
  }

  if (self->_threeFingerDoubleTap == gestureCopy)
  {
    if ([(_UIKBProductivitySingleTapGesture *)gestureCopy state]!= 3)
    {
      goto LABEL_63;
    }

    goto LABEL_17;
  }

  if (self->_threeFingerSlide == gestureCopy)
  {
    if ([(_UIKBProductivitySingleTapGesture *)gestureCopy state]!= 3)
    {
      goto LABEL_63;
    }

    v7 = [(SBProductivityGestureController *)self slideDirectionWithGesture:v5];
  }

  else
  {
    if (self->_threeFingerPinch != gestureCopy)
    {
      goto LABEL_63;
    }

    v6 = gestureCopy;
    if ([(_UIKBProductivitySingleTapGesture *)v6 state]== 1)
    {
      [(_UIKBProductivitySingleTapGesture *)v6 avgTouchesToCentroidDistance];
      v7 = 0;
      self->_initPinchableDistance = v8;
    }

    else if ([(_UIKBProductivitySingleTapGesture *)v6 state]== 3)
    {
      [(_UIKBProductivitySingleTapGesture *)v6 avgTouchesToCentroidDistance];
      if (v9 <= self->_initPinchableDistance)
      {
        v7 = 8;
      }

      else
      {
        v7 = 10;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  if (!v7)
  {
    goto LABEL_63;
  }

LABEL_27:
  if ([(SBProductivityGestureController *)self _enabledForCurrentAppScenes])
  {
    _focusedSceneForAction = [(SBProductivityGestureController *)self _focusedSceneForAction];
    if (_focusedSceneForAction)
    {
      if (self->_threeFingerLongPress == v5 || self->_threeFingerSingleTap == v5 || ![(SBGestureDefaults *)self->_gestureDefaults productivityGesturesRequireEducation])
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __61__SBProductivityGestureController_handleProductivityGesture___block_invoke;
        v32[3] = &unk_2783C5068;
        v34 = v7;
        _focusedSceneForAction = _focusedSceneForAction;
        v33 = _focusedSceneForAction;
        v13 = MEMORY[0x223D6F7F0](v32);
        v14 = v13;
        if (v7 == 10)
        {
          v15 = objc_opt_class();
          v16 = _focusedSceneForAction;
          if (v15)
          {
            if (objc_opt_isKindOfClass())
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }

          v19 = v17;

          if (v19)
          {
            BSAuditTokenForCurrentProcess();
            v20 = BSVersionedPIDForAuditToken();
          }

          else
          {
            v21 = objc_opt_class();
            v22 = v16;
            if (v21)
            {
              if (objc_opt_isKindOfClass())
              {
                v23 = v22;
              }

              else
              {
                v23 = 0;
              }
            }

            else
            {
              v23 = 0;
            }

            v24 = v23;

            clientHandle = [v24 clientHandle];

            processHandle = [clientHandle processHandle];
            v27 = processHandle;
            if (processHandle)
            {
              [processHandle auditToken];
            }

            else
            {
              *buf = 0u;
              v36 = 0u;
            }

            v20 = BSVersionedPIDForAuditToken();
          }

          v28 = dispatch_get_global_queue(33, 0);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __61__SBProductivityGestureController_handleProductivityGesture___block_invoke_22;
          v29[3] = &unk_2783B2E30;
          v31 = v20;
          v30 = v14;
          dispatch_async(v28, v29);
        }

        else
        {
          (*(v13 + 16))(v13, 0);
        }
      }

      else
      {
        v11 = [(SBProductivityGestureController *)self _educationTypeForGesture:v5 direction:v7];
        if (v11)
        {
          v12 = SBLogProductivityGestures();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v11;
            _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Suggesting education %lu", buf, 0xCu);
          }
        }

        [(SBProductivityGestureEducationController *)self->_educationController gestureActivatedForType:v11];
      }
    }

    else
    {
      v18 = SBLogProductivityGestures();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "Recognized gesture but no focused scene", buf, 2u);
      }
    }
  }

  else
  {
    _focusedSceneForAction = SBLogProductivityGestures();
    if (os_log_type_enabled(_focusedSceneForAction, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, _focusedSceneForAction, OS_LOG_TYPE_INFO, "Recognized gesture but one or more scenes don't want gestures enabled", buf, 2u);
    }
  }

LABEL_63:
}

void __61__SBProductivityGestureController_handleProductivityGesture___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D76188];
  v4 = a2;
  v5 = [[v3 alloc] initWithGestureDirection:*(a1 + 40) authenticationMessage:v4];

  v6 = SBLogProductivityGestures();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Sending action: %{public}@ to %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) handleProductivityGestureAction:v5];
}

void __61__SBProductivityGestureController_handleProductivityGesture___block_invoke_22(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = SBLogProductivityGestures();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    LODWORD(buf) = 134349056;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Requesting secure paste authentication message for client %{public}lld", &buf, 0xCu);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v4 = getPBServerConnectionClass_softClass;
  v16 = getPBServerConnectionClass_softClass;
  if (!getPBServerConnectionClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v18 = __getPBServerConnectionClass_block_invoke;
    v19 = &unk_2783A9718;
    v20 = &v13;
    __getPBServerConnectionClass_block_invoke(&buf);
    v4 = v14[3];
  }

  v5 = v4;
  _Block_object_dispose(&v13, 8);
  v6 = [v4 defaultConnection];
  v7 = [v6 requestSecurePasteAuthenticationMessageWithContext:0x25FC7F58D8DEA672 forClientVersionedPID:*(a1 + 40) error:0];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SBProductivityGestureController_handleProductivityGesture___block_invoke_23;
  v10[3] = &unk_2783A9878;
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

- (BOOL)_enabledForCurrentAppScenes
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 count] != 0;
  v20 = 0u;
  v21 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        displayIdentity = [v9 displayIdentity];
        if ([displayIdentity isMainDisplay])
        {
          sceneIfExists = [v9 sceneIfExists];
          uiClientSettings = [sceneIfExists uiClientSettings];
          editingInteractionConfiguration = [uiClientSettings editingInteractionConfiguration];

          if (!editingInteractionConfiguration)
          {
            v14 = SBLogProductivityGestures();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              sceneIfExists2 = [v9 sceneIfExists];
              *buf = 138543362;
              v23 = sceneIfExists2;
              _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "Gestures disabled for scene: %{public}@", buf, 0xCu);
            }

            v3 = 0;
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v3;
}

- (id)_focusedSceneForAction
{
  sceneWithFocusIncludingSpringBoard = [(SBKeyboardFocusControlling *)self->_focusController sceneWithFocusIncludingSpringBoard];
  displayIdentity = [sceneWithFocusIncludingSpringBoard displayIdentity];
  isMainDisplay = [displayIdentity isMainDisplay];

  if (isMainDisplay)
  {
    v5 = sceneWithFocusIncludingSpringBoard;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_orientationOfFocusedSceneForGesture:(id)gesture
{
  gestureCopy = gesture;
  sceneWithFocusIncludingSpringBoard = [(SBKeyboardFocusControlling *)self->_focusController sceneWithFocusIncludingSpringBoard];
  displayIdentity = [sceneWithFocusIncludingSpringBoard displayIdentity];
  isMainDisplay = [displayIdentity isMainDisplay];

  if (isMainDisplay)
  {
    v8 = objc_opt_class();
    v9 = sceneWithFocusIncludingSpringBoard;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    view = v10;

    if (view)
    {
      _FBSScene = [view _FBSScene];
      clientSettings = [_FBSScene clientSettings];
      v15 = objc_opt_class();
      v16 = clientSettings;
      if (v15)
      {
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      uiClientSettings = v17;
    }

    else
    {
      v18 = objc_opt_class();
      v19 = v9;
      if (v18)
      {
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      uiClientSettings = [v21 uiClientSettings];
    }
  }

  else
  {
    view = [gestureCopy view];
    uiClientSettings = [view window];
  }

  interfaceOrientation = [uiClientSettings interfaceOrientation];

  return interfaceOrientation;
}

- (int64_t)_educationTypeForGesture:(id)gesture direction:(int64_t)direction
{
  gestureCopy = gesture;
  v7 = gestureCopy;
  if (self->_threeFingerSingleTap == gestureCopy)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || [(_UIKBProductivitySingleTapGesture *)v7 tapCount]<= 1)
    {
      v9 = SBLogProductivityGestures();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v10 = "No education necessary for 3 finger single tap";
        v11 = &v15;
LABEL_21:
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, v10, v11, 2u);
      }

LABEL_22:

      goto LABEL_23;
    }

LABEL_11:
    v8 = 1;
    goto LABEL_24;
  }

  if (self->_threeFingerDoubleTap == gestureCopy)
  {
    goto LABEL_11;
  }

  if (self->_threeFingerSlide != gestureCopy)
  {
    if (self->_threeFingerLongPress != gestureCopy)
    {
      if (self->_threeFingerPinch == gestureCopy)
      {
        if (direction == 10)
        {
          v8 = 3;
          goto LABEL_24;
        }

        if (direction == 8)
        {
          v8 = 2;
          goto LABEL_24;
        }

        v13 = SBLogProductivityGestures();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [SBProductivityGestureController _educationTypeForGesture:direction direction:v13];
        }

        goto LABEL_33;
      }

LABEL_23:
      v8 = 0;
      goto LABEL_24;
    }

    v9 = SBLogProductivityGestures();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v10 = "No education necessary for 3 finger long press";
      v11 = &v14;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (direction == 3)
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }
  }

  else
  {
    if (direction != 2)
    {
      v13 = SBLogProductivityGestures();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SBProductivityGestureController _educationTypeForGesture:direction direction:v13];
      }

LABEL_33:

      goto LABEL_23;
    }

    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v8 = 5;
    }

    else
    {
      v8 = 4;
    }
  }

LABEL_24:

  return v8;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (![(SBProductivityGestureController *)self _enabledForCurrentAppScenes])
  {
    return 0;
  }

  _focusedSceneForAction = [(SBProductivityGestureController *)self _focusedSceneForAction];
  v5 = _focusedSceneForAction != 0;

  return v5;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = gestureRecognizerCopy;
  threeFingerSlide = self->_threeFingerSlide;
  threeFingerLongPress = self->_threeFingerLongPress;
  v11 = threeFingerLongPress == recognizerCopy && threeFingerSlide == gestureRecognizerCopy;
  if (v11 || (threeFingerSlide == recognizerCopy || self->_threeFingerSingleTap == recognizerCopy || threeFingerLongPress == recognizerCopy || self->_threeFingerDoubleTap == recognizerCopy) && self->_threeFingerPinch == gestureRecognizerCopy)
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)_educationTypeForGesture:(uint64_t)a1 direction:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Unable to map 3 finger pinch direction %lu to education type", &v2, 0xCu);
}

- (void)_educationTypeForGesture:(uint64_t)a1 direction:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Unable to map 3 finger slide direction %lu to education type", &v2, 0xCu);
}

@end