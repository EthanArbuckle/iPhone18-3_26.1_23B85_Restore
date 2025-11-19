@interface _UIKeyboardArbiterClientInputUIHost
- (CGRect)keyboardFrameIncludingRemoteIAV;
- (_UIKeyboardArbiterClientInputUIHost)init;
- (id)arbiterProxy;
- (void)_layoutKeyboardViews:(id)a3;
- (void)_updateKeyboardUIScenePresentationMode;
- (void)completeKeyboardChange;
- (void)configureArbiterCommunication:(id)a3;
- (void)inputSessionDidEndUnexpectedly;
- (void)keyboardSendNotification:(unint64_t)a3 withInfo:(id)a4 isStart:(BOOL)a5;
- (void)keyboardVisibilityDidChangeWithFrame:(CGRect)a3 visible:(BOOL)a4 tracking:(BOOL)a5;
- (void)queue_sceneBecameFocused:(id)a3 withCompletion:(id)a4;
- (void)resetSnapshotWithWindowCheck:(BOOL)a3;
- (void)scenePresentationModeManager:(id)a3 didChangeToMode:(unint64_t)a4;
- (void)setCurrentUIState:(id)a3;
- (void)signalKeyboardUIDidChange:(id)a3 onCompletion:(id)a4;
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
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel_applicationKeyWindowWillChange_ name:@"_UIWindowWillBecomeApplicationKeyNotification" object:0];
    [v4 addObserver:v3 selector:sel_inputSessionDidEndUnexpectedly name:@"RTIInputSessionDidEndUnexpectedlyNotification" object:0];
    v5 = objc_alloc_init(UIKeyboardScenePresentationModeManager);
    presentationModeManager = v3->_presentationModeManager;
    v3->_presentationModeManager = v5;

    [(UIKeyboardScenePresentationModeManager *)v3->_presentationModeManager setDelegate:v3];
  }

  return v3;
}

- (id)arbiterProxy
{
  v2 = [(_UIKeyboardArbiterClient *)self connection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_417];

  return v3;
}

- (void)inputSessionDidEndUnexpectedly
{
  v3 = [UIApp _systemAnimationFenceExemptQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69___UIKeyboardArbiterClientInputUIHost_inputSessionDidEndUnexpectedly__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [v3 performAsync:v4];
}

- (void)configureArbiterCommunication:(id)a3
{
  v8 = a3;
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F016D590];
  [v8 setRemoteObjectInterface:v3];

  v4 = +[_UIKeyboardArbiterClient mainBundleIdentifier];
  v5 = [v4 isEqualToString:@"com.ios.uikit.TestingHarness"];

  v6 = &protocolRef__UIKBArbiterDelegateInputDestination;
  if (!v5)
  {
    v6 = &protocolRef__UIKBArbiterDelegateProtocol;
  }

  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:*v6];
  [v8 setExportedInterface:v7];
}

- (void)setCurrentUIState:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardArbiterClient *)self currentUIState];
  if (v5)
  {
    v6 = v5;
    v7 = [(_UIKeyboardArbiterClient *)self currentUIState];
    [v7 keyboardPosition];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v4 keyboardPosition];
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
  [(_UIKeyboardArbiterClient *)&v21 setCurrentUIState:v4];
}

- (void)signalKeyboardUIDidChange:(id)a3 onCompletion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[UIKeyboard keyboardApplicationIdentifier];
  [v6 setApplicationIdentifier:v8];

  v9 = +[UIKeyboard keyboardBundleIdentifier];
  [v6 setBundleIdentifier:v9];

  v10 = KeyboardArbiterClientLog_2();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputUIHost signalKeyboardUIDidChange:onCompletion:]  Signaling keyboard UI did change: %@", &v12, 0xCu);
  }

  if (([v6 hasValidNotification] & 1) == 0)
  {
    [(_UIKeyboardArbiterClientInputUIHost *)self setCurrentUIState:v6];
  }

  [(_UIKeyboardArbiterClient *)self setDidSignalKeyboardChangedForCurrentKeyboard:1];
  [(_UIKeyboardArbiterClient *)self checkConnection];
  v11 = [(_UIKeyboardArbiterClientInputUIHost *)self arbiterProxy];
  [v11 signalKeyboardUIDidChange:v6 onCompletion:v7];
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

- (void)resetSnapshotWithWindowCheck:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIKeyboardArbiterClient *)self keyboardSnapshot];

  if (v5)
  {
    v6 = [(_UIKeyboardArbiterClient *)self keyboardSnapshot];
    [v6 removeFromSuperview];

    [(_UIKeyboardArbiterClient *)self setKeyboardSnapshot:0];
    if (v3)
    {

      [(_UIKeyboardArbiterClientInputUIHost *)self completeKeyboardChange];
    }
  }
}

- (void)_updateKeyboardUIScenePresentationMode
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(_UIKeyboardArbiterClientInputUIHost *)self presentationModeManager];
  v4 = [v3 presentationMode];
  v5 = [(_UIKeyboardArbiterClient *)self currentUIState];
  [v5 setKeyboardScenePresentationMode:v4];

  v6 = KeyboardArbiterClientLog_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(_UIKeyboardArbiterClient *)self currentUIState];
    v8 = 134217984;
    v9 = [v7 keyboardScenePresentationMode];
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputUIHost _updateKeyboardUIScenePresentationMode]  _updateKeyboardUIScenePresentationMode to: %lu", &v8, 0xCu);
  }
}

- (void)keyboardSendNotification:(unint64_t)a3 withInfo:(id)a4 isStart:(BOOL)a5
{
  v5 = a5;
  v21 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (([v8 shouldSendInClient] & 1) == 0)
  {
    v9 = [_UIKeyboardUIInformation alloc];
    [v8 duration];
    v11 = [(_UIKeyboardUIInformation *)v9 initWithKeyboardFrame:0 onScreen:0 animated:0 tracking:v10 > 0.0 wantsFence:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [v8 setType:a3];
    [(_UIKeyboardUIInformation *)v11 addNotificationInfo:v8 isStart:v5];
    objc_initWeak(&location, self);
    v12 = KeyboardArbiterClientLog_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"end";
      if (v5)
      {
        v13 = @"start";
      }

      *buf = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v8;
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

- (void)keyboardVisibilityDidChangeWithFrame:(CGRect)a3 visible:(BOOL)a4 tracking:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v50 = *MEMORY[0x1E69E9840];
  v12 = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  v13 = ([v12 isRotating] & 1) != 0 || -[_UIKeyboardArbiterClient snapshotting](self, "snapshotting");

  v14 = [(_UIKeyboardArbiterClient *)self kbUIStateDelegate];
  v15 = [v14 layoutIsResizing];

  if (v15 & 1) != 0 || (-[_UIKeyboardArbiterClient inputWindowRootViewController](self, "inputWindowRootViewController"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isTransitioningBetweenFloatingStates], v16, ((v17 | v13)))
  {
    v18 = 0;
  }

  else
  {
    v19 = [(_UIKeyboardArbiterClient *)self kbUIStateDelegate];
    v18 = [v19 shouldSkipKeyboardPresentationFence] ^ 1;
  }

  v20 = [(_UIKeyboardArbiterClient *)self keyboardVisible];
  v21 = [(_UIKeyboardArbiterClient *)self currentUIState];
  v44 = [v21 copy];

  if (v6)
  {
    if (v20)
    {
      v22 = [(_UIKeyboardArbiterClient *)self currentUIState];
      if (v22)
      {
        v23 = [(_UIKeyboardArbiterClient *)self currentUIState];
        [v23 keyboardPosition];
        v52.origin.x = x;
        v52.origin.y = y;
        v52.size.width = width;
        v52.size.height = height;
        if (CGRectEqualToRect(v51, v52))
        {
          v24 = [(_UIKeyboardArbiterClient *)self didSignalKeyboardChangedForCurrentKeyboard];

          if (v24)
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

    v28 = [[_UIKeyboardUIInformation alloc] initWithKeyboardFrame:1 onScreen:+[UIView animated:"_isInAnimationBlock"]tracking:v5 wantsFence:v18, x, y, width, height];

    [(_UIKeyboardArbiterClientInputUIHost *)self resetSnapshotWithWindowCheck:0];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_20;
    }

    v26 = [_UIKeyboardUIInformation alloc];
    v27 = +[UIView _isInAnimationBlock];
    v28 = [(_UIKeyboardUIInformation *)v26 initWithKeyboardFrame:0 onScreen:v27 animated:v5 tracking:1 wantsFence:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v44 = v28;
LABEL_20:
  v29 = +[UIKeyboardInputModeController sharedInputModeController];
  v30 = [v29 currentInputMode];
  v31 = +[UIKeyboardInputModeController sharedInputModeController];
  v32 = [v31 currentInputModeInPreference];
  if ([v30 isEqual:v32])
  {
    v33 = v6;

LABEL_24:
    goto LABEL_25;
  }

  v34 = +[UIKeyboardInputModeController sharedInputModeController];
  v35 = [v34 currentInputMode];
  v36 = [v35 identifier];
  v33 = v6;
  v37 = [v36 isEqualToString:@"autofillsignup"];

  if ((v37 & 1) == 0)
  {
    v29 = +[UIKeyboardInputModeController sharedInputModeController];
    v30 = [v29 currentInputMode];
    v31 = [v30 identifier];
    [(_UIKeyboardUIInformation *)v44 setCurrentInputMode:v31];
    goto LABEL_24;
  }

LABEL_25:
  v25 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [(_UIKeyboardUIInformation *)v44 setAssistantBarVisible:[v25 hasVisibleAssistantBar]];
  [(_UIKeyboardUIInformation *)v44 setRequiresHeightForIntegratedAssistantBar:[v25 hasIntegratedAssistantBar]];
  [(_UIKeyboardArbiterClientInputUIHost *)self _updateKeyboardUIScenePresentationMode];
  v38 = [(_UIKeyboardArbiterClient *)self currentUIState];
  -[_UIKeyboardUIInformation setKeyboardScenePresentationMode:](v44, "setKeyboardScenePresentationMode:", [v38 keyboardScenePresentationMode]);

  v39 = +[UIKeyboardImpl activeInstance];
  -[_UIKeyboardUIInformation setResizing:](v44, "setResizing:", [v39 layoutIsResizing]);

  v40 = [(_UIKeyboardArbiterClient *)self eventObserver];
  [v40 setKeyboardIsVisible:v33];

  objc_initWeak(&location, self);
  v41 = KeyboardArbiterClientLog_2();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [(_UIKeyboardUIInformation *)v44 animationFence];
    *buf = 138412290;
    v49 = v42;
    _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputUIHost keyboardVisibilityDidChangeWithFrame:visible:tracking:]  InputUI created fence: %@", buf, 0xCu);
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __93___UIKeyboardArbiterClientInputUIHost_keyboardVisibilityDidChangeWithFrame_visible_tracking___block_invoke;
  v45[3] = &unk_1E70F5A28;
  objc_copyWeak(&v46, &location);
  [(_UIKeyboardArbiterClientInputUIHost *)self signalKeyboardUIDidChange:v44 onCompletion:v45];
  [(_UIKeyboardArbiterClient *)self setExpectingInitialState:0];
  v43 = [(_UIKeyboardArbiterClient *)self currentUIState];
  [v43 resetAnimationFencing];

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
  v3 = [(_UIKeyboardArbiterClient *)self changeInfoDelegate];
  [v3 didHandleKeyboardUIChange:self];

  v4 = [(_UIKeyboardArbiterClient *)self currentUIState];
  [v4 resetAnimationFencing];
}

- (void)_layoutKeyboardViews:(id)a3
{
  v4 = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  v5 = [v4 inputViewSet];
  v33 = [v5 normalizePlaceholders];

  v6 = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  v7 = [v6 placementIgnoringRotation];
  [v7 remoteIntrinsicContentSizeForInputViewInSet:v33 includingIAV:0];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(_UIKeyboardArbiterClient *)self inputWindowRootViewController];
  [v16 _inputViewPadding];
  v18 = v15 + fabs(v17);

  if (!+[UIKeyboardImpl isFloating])
  {
    v19 = [(_UIKeyboardArbiterClient *)self currentUIState];
    [v19 keyboardPosition];
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
        v31 = [v33 inputView];
        v32 = [v31 window];
        v24 = [v32 rootViewController];

        objc_opt_class();
        if (((objc_opt_isKindOfClass() & 1) == 0 || ([v24 isTranslating] & 1) == 0 && (objc_msgSend(v24, "isSplitting") & 1) == 0) && !-[_UIKeyboardArbiterClient handlingKeyboardTransition](self, "handlingKeyboardTransition"))
        {
          [(_UIKeyboardArbiterClientInputUIHost *)self keyboardVisibilityDidChangeWithFrame:[(_UIKeyboardArbiterClientInputUIHost *)self showing] visible:0 tracking:v9, v11, v13, v18];
        }

        goto LABEL_15;
      }
    }
  }

  v24 = [(_UIKeyboardArbiterClient *)self currentUIState];
  v25 = [v24 applicationIdentifier];
  if (v25)
  {
    v26 = v25;
    v27 = [(_UIKeyboardArbiterClient *)self currentUIState];
    v28 = [v27 applicationIdentifier];
    v29 = +[UIKeyboard keyboardApplicationIdentifier];
    v30 = [v28 isEqualToString:v29];

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

- (void)queue_sceneBecameFocused:(id)a3 withCompletion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)scenePresentationModeManager:(id)a3 didChangeToMode:(unint64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = KeyboardArbiterClientLog_2();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 2048;
    v11 = a4;
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