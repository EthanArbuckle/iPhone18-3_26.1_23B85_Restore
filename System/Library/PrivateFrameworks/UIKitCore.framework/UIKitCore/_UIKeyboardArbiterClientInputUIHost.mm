@interface _UIKeyboardArbiterClientInputUIHost
- (CGRect)keyboardFrameIncludingRemoteIAV;
- (_UIKeyboardArbiterClientInputUIHost)init;
- (id)arbiterProxy;
- (void)_layoutKeyboardViews:(id)views;
- (void)_updateKeyboardUIScenePresentationMode;
- (void)completeKeyboardChange;
- (void)configureArbiterCommunication:(id)communication;
- (void)inputSessionDidEndUnexpectedly;
- (void)keyboardSendNotification:(unint64_t)notification withInfo:(id)info isStart:(BOOL)start;
- (void)keyboardVisibilityDidChangeWithFrame:(CGRect)frame visible:(BOOL)visible tracking:(BOOL)tracking;
- (void)queue_sceneBecameFocused:(id)focused withCompletion:(id)completion;
- (void)resetSnapshotWithWindowCheck:(BOOL)check;
- (void)scenePresentationModeManager:(id)manager didChangeToMode:(unint64_t)mode;
- (void)setCurrentUIState:(id)state;
- (void)signalKeyboardUIDidChange:(id)change onCompletion:(id)completion;
- (void)snapsShotKeyboard;
@end

@implementation _UIKeyboardArbiterClientInputUIHost

- (_UIKeyboardArbiterClientInputUIHost)init
{
  v8.receiver = self;
  v8.super_class = _UIKeyboardArbiterClientInputUIHost;
  v2 = [(_UIKeyboardArbiterClient *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(_UIKeyboardArbiterClient *)v2 setKeyboardUIHost:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_applicationKeyWindowWillChange_ name:@"_UIWindowWillBecomeApplicationKeyNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_inputSessionDidEndUnexpectedly name:@"RTIInputSessionDidEndUnexpectedlyNotification" object:0];
    v5 = objc_alloc_init(UIKeyboardScenePresentationModeManager);
    presentationModeManager = v3->_presentationModeManager;
    v3->_presentationModeManager = v5;

    [(UIKeyboardScenePresentationModeManager *)v3->_presentationModeManager setDelegate:v3];
  }

  return v3;
}

- (id)arbiterProxy
{
  connection = [(_UIKeyboardArbiterClient *)self connection];
  v3 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_417];

  return v3;
}

- (void)inputSessionDidEndUnexpectedly
{
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69___UIKeyboardArbiterClientInputUIHost_inputSessionDidEndUnexpectedly__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [_systemAnimationFenceExemptQueue performAsync:v4];
}

- (void)configureArbiterCommunication:(id)communication
{
  communicationCopy = communication;
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016D590];
  [communicationCopy setRemoteObjectInterface:v3];

  v4 = +[_UIKeyboardArbiterClient mainBundleIdentifier];
  v5 = [v4 isEqualToString:@"com.ios.uikit.TestingHarness"];

  v6 = &protocolRef__UIKBArbiterDelegateInputDestination;
  if (!v5)
  {
    v6 = &protocolRef__UIKBArbiterDelegateProtocol;
  }

  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:*v6];
  [communicationCopy setExportedInterface:v7];
}

- (void)setCurrentUIState:(id)state
{
  stateCopy = state;
  currentUIState = [(_UIKeyboardArbiterClient *)self currentUIState];
  if (currentUIState)
  {
    v6 = currentUIState;
    currentUIState2 = [(_UIKeyboardArbiterClient *)self currentUIState];
    [currentUIState2 keyboardPosition];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [stateCopy keyboardPosition];
    v23.origin.x = v16;
    v23.origin.y = v17;
    v23.size.width = v18;
    v23.size.height = v19;
    v22.origin.x = v9;
    v22.origin.y = v11;
    v22.size.width = v13;
    v22.size.height = v15;
    v20 = CGRectEqualToRect(v22, v23);

    if (v20)
    {
      [(_UIKeyboardArbiterClient *)self setDidSignalKeyboardChangedForCurrentKeyboard:0];
    }
  }

  v21.receiver = self;
  v21.super_class = _UIKeyboardArbiterClientInputUIHost;
  [(_UIKeyboardArbiterClient *)&v21 setCurrentUIState:stateCopy];
}

- (void)signalKeyboardUIDidChange:(id)change onCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  completionCopy = completion;
  v8 = +[UIKeyboard keyboardApplicationIdentifier];
  [changeCopy setApplicationIdentifier:v8];

  v9 = +[UIKeyboard keyboardBundleIdentifier];
  [changeCopy setBundleIdentifier:v9];

  v10 = KeyboardArbiterClientLog_2();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = changeCopy;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputUIHost signalKeyboardUIDidChange:onCompletion:]  Signaling keyboard UI did change: %@", &v12, 0xCu);
  }

  if (([changeCopy hasValidNotification] & 1) == 0)
  {
    [(_UIKeyboardArbiterClientInputUIHost *)self setCurrentUIState:changeCopy];
  }

  [(_UIKeyboardArbiterClient *)self setDidSignalKeyboardChangedForCurrentKeyboard:1];
  [(_UIKeyboardArbiterClient *)self checkConnection];
  arbiterProxy = [(_UIKeyboardArbiterClientInputUIHost *)self arbiterProxy];
  [arbiterProxy signalKeyboardUIDidChange:changeCopy onCompletion:completionCopy];
}

- (void)snapsShotKeyboard
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __56___UIKeyboardArbiterClientInputUIHost_snapsShotKeyboard__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)resetSnapshotWithWindowCheck:(BOOL)check
{
  checkCopy = check;
  keyboardSnapshot = [(_UIKeyboardArbiterClient *)self keyboardSnapshot];

  if (keyboardSnapshot)
  {
    keyboardSnapshot2 = [(_UIKeyboardArbiterClient *)self keyboardSnapshot];
    [keyboardSnapshot2 removeFromSuperview];

    [(_UIKeyboardArbiterClient *)self setKeyboardSnapshot:0];
    if (checkCopy)
    {

      [(_UIKeyboardArbiterClientInputUIHost *)self completeKeyboardChange];
    }
  }
}

- (void)_updateKeyboardUIScenePresentationMode
{
  v10 = *MEMORY[0x1E69E9840];
  presentationModeManager = [(_UIKeyboardArbiterClientInputUIHost *)self presentationModeManager];
  presentationMode = [presentationModeManager presentationMode];
  currentUIState = [(_UIKeyboardArbiterClient *)self currentUIState];
  [currentUIState setKeyboardScenePresentationMode:presentationMode];

  v6 = KeyboardArbiterClientLog_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    currentUIState2 = [(_UIKeyboardArbiterClient *)self currentUIState];
    v8 = 134217984;
    keyboardScenePresentationMode = [currentUIState2 keyboardScenePresentationMode];
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputUIHost _updateKeyboardUIScenePresentationMode]  _updateKeyboardUIScenePresentationMode to: %lu", &v8, 0xCu);
  }
}

- (void)keyboardSendNotification:(unint64_t)notification withInfo:(id)info isStart:(BOOL)start
{
  startCopy = start;
  v21 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (([infoCopy shouldSendInClient] & 1) == 0)
  {
    v9 = [_UIKeyboardUIInformation alloc];
    [infoCopy duration];
    v11 = [(_UIKeyboardUIInformation *)v9 initWithKeyboardFrame:0 onScreen:0 animated:0 tracking:v10 > 0.0 wantsFence:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [infoCopy setType:notification];
    [(_UIKeyboardUIInformation *)v11 addNotificationInfo:infoCopy isStart:startCopy];
    objc_initWeak(&location, self);
    v12 = KeyboardArbiterClientLog_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"end";
      if (startCopy)
      {
        v13 = @"start";
      }

      *buf = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = infoCopy;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputUIHost keyboardSendNotification:withInfo:isStart:]  InputUI sending %@ notification: %@", buf, 0x16u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81___UIKeyboardArbiterClientInputUIHost_keyboardSendNotification_withInfo_isStart___block_invoke;
    v14[3] = &unk_1E70F5A28;
    objc_copyWeak(&v15, &location);
    [(_UIKeyboardArbiterClientInputUIHost *)self signalKeyboardUIDidChange:v11 onCompletion:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)keyboardVisibilityDidChangeWithFrame:(CGRect)frame visible:(BOOL)visible tracking:(BOOL)tracking
{
  trackingCopy = tracking;
  visibleCopy = visible;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v50 = *MEMORY[0x1E69E9840];
  inputWindowRootViewController = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  v13 = ([inputWindowRootViewController isRotating] & 1) != 0 || -[_UIKeyboardArbiterClient snapshotting](self, "snapshotting");

  kbUIStateDelegate = [(_UIKeyboardArbiterClient *)self kbUIStateDelegate];
  layoutIsResizing = [kbUIStateDelegate layoutIsResizing];

  if (layoutIsResizing & 1) != 0 || (-[_UIKeyboardArbiterClient inputWindowRootViewController](self, "inputWindowRootViewController"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isTransitioningBetweenFloatingStates], v16, ((v17 | v13)))
  {
    v18 = 0;
  }

  else
  {
    kbUIStateDelegate2 = [(_UIKeyboardArbiterClient *)self kbUIStateDelegate];
    v18 = [kbUIStateDelegate2 shouldSkipKeyboardPresentationFence] ^ 1;
  }

  keyboardVisible = [(_UIKeyboardArbiterClient *)self keyboardVisible];
  currentUIState = [(_UIKeyboardArbiterClient *)self currentUIState];
  v44 = [currentUIState copy];

  if (visibleCopy)
  {
    if (keyboardVisible)
    {
      currentUIState2 = [(_UIKeyboardArbiterClient *)self currentUIState];
      if (currentUIState2)
      {
        currentUIState3 = [(_UIKeyboardArbiterClient *)self currentUIState];
        [currentUIState3 keyboardPosition];
        v52.origin.x = x;
        v52.origin.y = y;
        v52.size.width = width;
        v52.size.height = height;
        if (CGRectEqualToRect(v51, v52))
        {
          didSignalKeyboardChangedForCurrentKeyboard = [(_UIKeyboardArbiterClient *)self didSignalKeyboardChangedForCurrentKeyboard];

          if (didSignalKeyboardChangedForCurrentKeyboard)
          {
            v25 = KeyboardArbiterClientLog_2();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputUIHost keyboardVisibilityDidChangeWithFrame:visible:tracking:]  InputUI not updating currentUIState because nothing changed", buf, 2u);
            }

            goto LABEL_28;
          }
        }

        else
        {
        }
      }
    }

    height = [[_UIKeyboardUIInformation alloc] initWithKeyboardFrame:1 onScreen:+[UIView animated:"_isInAnimationBlock"]tracking:trackingCopy wantsFence:v18, x, y, width, height];

    [(_UIKeyboardArbiterClientInputUIHost *)self resetSnapshotWithWindowCheck:0];
  }

  else
  {
    if (!keyboardVisible)
    {
      goto LABEL_20;
    }

    v26 = [_UIKeyboardUIInformation alloc];
    v27 = +[UIView _isInAnimationBlock];
    height = [(_UIKeyboardUIInformation *)v26 initWithKeyboardFrame:0 onScreen:v27 animated:trackingCopy tracking:1 wantsFence:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v44 = height;
LABEL_20:
  v29 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v29 currentInputMode];
  identifier2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputModeInPreference = [identifier2 currentInputModeInPreference];
  if ([currentInputMode isEqual:currentInputModeInPreference])
  {
    v33 = visibleCopy;

LABEL_24:
    goto LABEL_25;
  }

  v34 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode2 = [v34 currentInputMode];
  identifier = [currentInputMode2 identifier];
  v33 = visibleCopy;
  v37 = [identifier isEqualToString:@"autofillsignup"];

  if ((v37 & 1) == 0)
  {
    v29 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v29 currentInputMode];
    identifier2 = [currentInputMode identifier];
    [(_UIKeyboardUIInformation *)v44 setCurrentInputMode:identifier2];
    goto LABEL_24;
  }

LABEL_25:
  v25 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [(_UIKeyboardUIInformation *)v44 setAssistantBarVisible:[v25 hasVisibleAssistantBar]];
  [(_UIKeyboardUIInformation *)v44 setRequiresHeightForIntegratedAssistantBar:[v25 hasIntegratedAssistantBar]];
  [(_UIKeyboardArbiterClientInputUIHost *)self _updateKeyboardUIScenePresentationMode];
  currentUIState4 = [(_UIKeyboardArbiterClient *)self currentUIState];
  -[_UIKeyboardUIInformation setKeyboardScenePresentationMode:](v44, "setKeyboardScenePresentationMode:", [currentUIState4 keyboardScenePresentationMode]);

  v39 = +[UIKeyboardImpl activeInstance];
  -[_UIKeyboardUIInformation setResizing:](v44, "setResizing:", [v39 layoutIsResizing]);

  eventObserver = [(_UIKeyboardArbiterClient *)self eventObserver];
  [eventObserver setKeyboardIsVisible:v33];

  objc_initWeak(&location, self);
  v41 = KeyboardArbiterClientLog_2();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    animationFence = [(_UIKeyboardUIInformation *)v44 animationFence];
    *buf = 138412290;
    v49 = animationFence;
    _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputUIHost keyboardVisibilityDidChangeWithFrame:visible:tracking:]  InputUI created fence: %@", buf, 0xCu);
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __93___UIKeyboardArbiterClientInputUIHost_keyboardVisibilityDidChangeWithFrame_visible_tracking___block_invoke;
  v45[3] = &unk_1E70F5A28;
  objc_copyWeak(&v46, &location);
  [(_UIKeyboardArbiterClientInputUIHost *)self signalKeyboardUIDidChange:v44 onCompletion:v45];
  [(_UIKeyboardArbiterClient *)self setExpectingInitialState:0];
  currentUIState5 = [(_UIKeyboardArbiterClient *)self currentUIState];
  [currentUIState5 resetAnimationFencing];

  [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_143_1];
  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
LABEL_28:
}

- (void)completeKeyboardChange
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61___UIKeyboardArbiterClientInputUIHost_completeKeyboardChange__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [UIApp _performBlockAfterCATransactionCommits:v5];
  [(_UIKeyboardArbiterClientInputUIHost *)self resetSnapshotWithWindowCheck:1];
  changeInfoDelegate = [(_UIKeyboardArbiterClient *)self changeInfoDelegate];
  [changeInfoDelegate didHandleKeyboardUIChange:self];

  currentUIState = [(_UIKeyboardArbiterClient *)self currentUIState];
  [currentUIState resetAnimationFencing];
}

- (void)_layoutKeyboardViews:(id)views
{
  inputWindowRootViewController = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  inputViewSet = [inputWindowRootViewController inputViewSet];
  normalizePlaceholders = [inputViewSet normalizePlaceholders];

  inputWindowRootViewController2 = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  placementIgnoringRotation = [inputWindowRootViewController2 placementIgnoringRotation];
  [placementIgnoringRotation remoteIntrinsicContentSizeForInputViewInSet:normalizePlaceholders includingIAV:0];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  inputWindowRootViewController3 = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  [inputWindowRootViewController3 _inputViewPadding];
  v18 = v15 + fabs(v17);

  if (!+[UIKeyboardImpl isFloating])
  {
    currentUIState = [(_UIKeyboardArbiterClient *)self currentUIState];
    [currentUIState keyboardPosition];
    v22 = v20;
    v23 = v21;
    if (v13 * v18 == 0.0 && v21 * v20 == 0.0)
    {
    }

    else
    {

      if (v13 != v22 || v18 != v23)
      {
LABEL_10:
        inputView = [normalizePlaceholders inputView];
        window = [inputView window];
        rootViewController = [window rootViewController];

        objc_opt_class();
        if (((objc_opt_isKindOfClass() & 1) == 0 || ([rootViewController isTranslating] & 1) == 0 && (objc_msgSend(rootViewController, "isSplitting") & 1) == 0) && !-[_UIKeyboardArbiterClient handlingKeyboardTransition](self, "handlingKeyboardTransition"))
        {
          [(_UIKeyboardArbiterClientInputUIHost *)self keyboardVisibilityDidChangeWithFrame:[(_UIKeyboardArbiterClientInputUIHost *)self showing] visible:0 tracking:v9, v11, v13, v18];
        }

        goto LABEL_15;
      }
    }
  }

  rootViewController = [(_UIKeyboardArbiterClient *)self currentUIState];
  applicationIdentifier = [rootViewController applicationIdentifier];
  if (applicationIdentifier)
  {
    v26 = applicationIdentifier;
    currentUIState2 = [(_UIKeyboardArbiterClient *)self currentUIState];
    applicationIdentifier2 = [currentUIState2 applicationIdentifier];
    v29 = +[UIKeyboard keyboardApplicationIdentifier];
    v30 = [applicationIdentifier2 isEqualToString:v29];

    if (v30)
    {
      goto LABEL_16;
    }

    [(_UIKeyboardArbiterClient *)self setDidSignalKeyboardChangedForCurrentKeyboard:0];
    goto LABEL_10;
  }

LABEL_15:

LABEL_16:
}

- (void)queue_sceneBecameFocused:(id)focused withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)scenePresentationModeManager:(id)manager didChangeToMode:(unint64_t)mode
{
  v12 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v7 = KeyboardArbiterClientLog_2();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = managerCopy;
    v10 = 2048;
    modeCopy = mode;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputUIHost scenePresentationModeManager:didChangeToMode:]  scenePresentationModeManager: %@ didChangeToMode: %lu", &v8, 0x16u);
  }

  [(_UIKeyboardArbiterClientInputUIHost *)self _updateKeyboardUIScenePresentationMode];
}

- (CGRect)keyboardFrameIncludingRemoteIAV
{
  x = self->_keyboardFrameIncludingRemoteIAV.origin.x;
  y = self->_keyboardFrameIncludingRemoteIAV.origin.y;
  width = self->_keyboardFrameIncludingRemoteIAV.size.width;
  height = self->_keyboardFrameIncludingRemoteIAV.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end