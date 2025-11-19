@interface WTFullScreenContainerViewController
- (CGRect)_offScreenFrame;
- (CGRect)_onScreenFrame;
- (CGRect)_startFrameForAnimation;
- (CGRect)keyboardFrameInWindow:(id)a3;
- (UIResponder)sourceResponder;
- (WTFullScreenContainerViewController)initWithWritingToolsDelegate:(id)a3 startupOptions:(id)a4;
- (WTWritingToolsController)writingToolsController;
- (WTWritingToolsDelegate_Internal)writingToolsDelegate;
- (id)_screenForWindow:(id)a3;
- (id)_sourceResponderWindow;
- (void)_sendKeyboardTrackingNotificationsForReason:(id)a3;
- (void)_setShouldEndWritingToolsOnSourceResign:(BOOL)a3;
- (void)_setupSceneHosting;
- (void)_showAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 buttonAction:(id)a6;
- (void)beginTextPlaceholder;
- (void)compositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)copyText:(id)a3;
- (void)didBeginWritingToolsSession:(id)a3 contexts:(id)a4;
- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4;
- (void)endTextPlaceholderAndWillInsertText:(BOOL)a3 completion:(id)a4;
- (void)endWritingTools;
- (void)endWritingToolsWithError:(id)a3;
- (void)enrollmentBegan;
- (void)enrollmentDismissedWithCompletion:(id)a3;
- (void)handoffFromUCBFromTool:(int64_t)a3 withPrompt:(id)a4;
- (void)invalidateConnection;
- (void)proofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6;
- (void)proofreadingSessionWithUUID:(id)a3 updateState:(int64_t)a4 forSuggestionWithUUID:(id)a5;
- (void)redo;
- (void)replaceSelectionWithText:(id)a3;
- (void)showAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 buttonAction:(id)a6;
- (void)showContentWarningWithTitle:(id)a3 message:(id)a4;
- (void)sourceResponderHorizontalSizeClassChanged:(int64_t)a3;
- (void)undo;
- (void)updateKeyboardTrackingHeight:(double)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4;
- (void)windowingModeEnabledChanged:(BOOL)a3;
- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)a3 preferredContentSizeChanging:(BOOL)a4;
- (void)writingToolsSession:(id)a3 didReceiveAction:(int64_t)a4;
@end

@implementation WTFullScreenContainerViewController

- (WTFullScreenContainerViewController)initWithWritingToolsDelegate:(id)a3 startupOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = WTFullScreenContainerViewController;
  v8 = [(WTFullScreenContainerViewController *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_writingToolsDelegate, v6);
    objc_storeWeak(&v9->_writingToolsController, v6);
    v10 = [v7 sessionUUID];
    sessionUUID = v9->_sessionUUID;
    v9->_sessionUUID = v10;

    objc_storeStrong(&v9->_startupOptions, a4);
    [(WTFullScreenContainerViewController *)v9 _setupSceneHosting];
    v12 = [(WTFullScreenContainerViewController *)v9 view];
    [v12 setUserInteractionEnabled:0];

    v13 = NSClassFromString(&cfstr_Uiwtinputviews.isa);
    if (v13)
    {
      v14 = objc_alloc_init(v13);
      ivsPlacementController = v9->_ivsPlacementController;
      v9->_ivsPlacementController = v14;
    }
  }

  return v9;
}

- (void)_setupSceneHosting
{
  v39[4] = *MEMORY[0x1E69E9840];
  v3 = [(WTFullScreenContainerViewController *)self hostingController];

  if (!v3)
  {
    [(WTFullScreenContainerViewController *)self _beginDelayingPresentation:&__block_literal_global_9 cancellationHandler:3.0];
    v33 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.WritingToolsUIService"];
    v4 = objc_alloc(MEMORY[0x1E69DD688]);
    v5 = objc_alloc_init(MEMORY[0x1E69DD6A0]);
    v6 = [v4 initWithProcessIdentity:v33 sceneSpecification:v5];
    [(WTFullScreenContainerViewController *)self setHostingController:v6];

    v7 = [(WTFullScreenContainerViewController *)self hostingController];
    v8 = [v7 _eventDeferringComponent];
    [v8 setMaintainHostFirstResponderWhenClientWantsKeyboard:1];

    v9 = [(WTFullScreenContainerViewController *)self startupOptions];
    v38 = 0;
    v32 = [v9 asBSActionAndReturnError:&v38];
    v24 = v38;

    objc_initWeak(&location, self);
    v10 = [WTUISceneHostingActivationController alloc];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __57__WTFullScreenContainerViewController__setupSceneHosting__block_invoke_2;
    v35[3] = &unk_1E8480B20;
    objc_copyWeak(&v36, &location);
    v11 = [(WTUISceneHostingActivationController *)v10 initWithStartupAction:v32 invalidationHandler:v35];
    v12 = [(WTFullScreenContainerViewController *)self hostingController];
    [v12 setActivationController:v11];

    v13 = [(WTFullScreenContainerViewController *)self hostingController];
    [v13 setDelegate:self];

    v14 = [(WTFullScreenContainerViewController *)self hostingController];
    v34 = [v14 sceneViewController];

    [(WTFullScreenContainerViewController *)self addChildViewController:v34];
    v15 = [v34 view];
    v16 = [(WTFullScreenContainerViewController *)self view];
    [v16 addSubview:v15];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = MEMORY[0x1E696ACD8];
    v31 = [v15 leadingAnchor];
    v30 = [v16 leadingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v39[0] = v29;
    v28 = [v15 trailingAnchor];
    v27 = [v16 trailingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v39[1] = v26;
    v17 = [v15 topAnchor];
    v18 = [v16 topAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v39[2] = v19;
    v20 = [v15 bottomAnchor];
    v21 = [v16 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v39[3] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
    [v25 activateConstraints:v23];

    [v34 didMoveToParentViewController:self];
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }
}

void __57__WTFullScreenContainerViewController__setupSceneHosting__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained writingToolsDelegate];
  [v1 endWritingToolsWithError:0];
}

- (void)invalidateConnection
{
  v2 = [(WTFullScreenContainerViewController *)self hostingController];
  [v2 invalidate];
}

- (void)viewDidAppear:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = WTFullScreenContainerViewController;
  [(WTFullScreenContainerViewController *)&v8 viewDidAppear:a3];
  v4 = _WTVCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(WTFullScreenContainerViewController *)self pendingHandoffHandler];
    *buf = 67109120;
    v10 = v5 != 0;
    _os_log_impl(&dword_1D451D000, v4, OS_LOG_TYPE_DEFAULT, "Fullscreen view controller didAppear, with pending handler: %d", buf, 8u);
  }

  v6 = [(WTFullScreenContainerViewController *)self pendingHandoffHandler];

  if (v6)
  {
    v7 = [(WTFullScreenContainerViewController *)self pendingHandoffHandler];
    v7[2]();

    [(WTFullScreenContainerViewController *)self setPendingHandoffHandler:0];
  }
}

- (void)updateKeyboardTrackingHeight:(double)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = _WTSizingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "Client handling updateKeyboardTrackingHeight: %f", &v6, 0xCu);
  }

  [(WTFullScreenContainerViewController *)self setKeyboardTrackingHeight:a3];
  [(WTFullScreenContainerViewController *)self _sendKeyboardTrackingNotificationsForReason:@"updateKeyboardTrackingHeight-Fullscreen"];
}

- (void)_sendKeyboardTrackingNotificationsForReason:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(WTFullScreenContainerViewController *)self _startFrameForAnimation];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(WTFullScreenContainerViewController *)self _onScreenFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v32.origin.x = v6;
  v32.origin.y = v8;
  v32.size.width = v10;
  v32.size.height = v12;
  v35.origin.x = v14;
  v35.origin.y = v16;
  v35.size.width = v18;
  v35.size.height = v20;
  if (!CGRectEqualToRect(v32, v35))
  {
    v21 = _WTSizingLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v33.origin.x = v6;
      v33.origin.y = v8;
      v33.size.width = v10;
      v33.size.height = v12;
      v22 = NSStringFromCGRect(v33);
      v34.origin.x = v14;
      v34.origin.y = v16;
      v34.size.width = v18;
      v34.size.height = v20;
      v23 = NSStringFromCGRect(v34);
      v25 = 138412802;
      v26 = v22;
      v27 = 2112;
      v28 = v23;
      v29 = 2112;
      v30 = v4;
      _os_log_impl(&dword_1D451D000, v21, OS_LOG_TYPE_DEFAULT, "Send keyboard tracking notification now (start:%@, end:%@, reason:%@)", &v25, 0x20u);
    }

    v24 = [(WTFullScreenContainerViewController *)self ivsPlacementController];
    [v24 animateTrackingElementsFromStart:1 toEnd:v6 forShow:{v8, v10, v12, v14, v16, v18, v20}];
  }
}

- (CGRect)_startFrameForAnimation
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v15.origin.x = *MEMORY[0x1E695F058];
  v15.origin.y = v4;
  v15.size.width = v5;
  v15.size.height = v6;
  if (CGRectIsNull(v15) || (v16.origin.x = v3, v16.origin.y = v4, v16.size.width = v5, v16.size.height = v6, v18.origin.x = v3, v18.origin.y = v4, v18.size.width = v5, v18.size.height = v6, CGRectEqualToRect(v16, v18)))
  {
    [(WTFullScreenContainerViewController *)self _offScreenFrame];
    v3 = v7;
    v4 = v8;
    v5 = v9;
    v6 = v10;
  }

  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_onScreenFrame
{
  v3 = [(WTFullScreenContainerViewController *)self _sourceResponderWindow];
  v4 = 0.0;
  if (+[WTWritingToolsController _isWritingToolsHandlingKeyboardTracking])
  {
    [(WTFullScreenContainerViewController *)self keyboardFrameInWindow:v3];
    v4 = v5;
  }

  [(WTFullScreenContainerViewController *)self keyboardTrackingHeight];
  if (v6 != 0.0)
  {
    [(WTFullScreenContainerViewController *)self keyboardTrackingHeight];
    v4 = v7;
  }

  [v3 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(WTFullScreenContainerViewController *)self _screenForWindow:v3];
  v17 = [v3 windowScene];
  v18 = [v17 coordinateSpace];

  if (!v18)
  {
    v18 = [v3 coordinateSpace];
  }

  v19 = [v16 coordinateSpace];
  [v18 convertRect:v19 toCoordinateSpace:{v9, v11 + v15 - v4, v13, v4}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)_offScreenFrame
{
  [(WTFullScreenContainerViewController *)self _onScreenFrame];
  v6 = v5 + v4;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v6;
  result.origin.x = v2;
  return result;
}

- (id)_sourceResponderWindow
{
  v2 = [(WTFullScreenContainerViewController *)self writingToolsController];
  v3 = [v2 sourceResponderViewController];
  v4 = [v3 view];
  v5 = [v4 window];

  return v5;
}

- (id)_screenForWindow:(id)a3
{
  v3 = a3;
  v4 = [v3 windowScene];
  v5 = [v4 screen];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v3 screen];
  }

  v8 = v7;

  return v8;
}

- (CGRect)keyboardFrameInWindow:(id)a3
{
  v4 = a3;
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v33.origin.x = *MEMORY[0x1E695F058];
  v33.origin.y = y;
  v33.size.width = v7;
  v33.size.height = v8;
  if (!CGRectIsNull(v33))
  {
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = v7;
    v34.size.height = v8;
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = v7;
    v42.size.height = v8;
    if (!CGRectEqualToRect(v34, v42))
    {
      v9 = [(WTFullScreenContainerViewController *)self _screenForWindow:v4];
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = v7;
      v35.size.height = v8;
      Height = CGRectGetHeight(v35);
      [v9 bounds];
      MinX = CGRectGetMinX(v36);
      [v9 bounds];
      v12 = CGRectGetMaxY(v37) - Height;
      [v9 bounds];
      Width = CGRectGetWidth(v38);
      v14 = [v4 windowScene];
      v15 = [v14 coordinateSpace];

      if (!v15)
      {
        v15 = [v4 coordinateSpace];
      }

      v16 = [v9 coordinateSpace];
      [v16 convertRect:v15 toCoordinateSpace:{MinX, v12, Width, Height}];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      [v4 bounds];
      v43.origin.x = v25;
      v43.origin.y = v26;
      v43.size.width = v27;
      v43.size.height = v28;
      v39.origin.x = v18;
      v39.origin.y = v20;
      v39.size.width = v22;
      v39.size.height = v24;
      v40 = CGRectIntersection(v39, v43);
      x = v40.origin.x;
      y = v40.origin.y;
      v7 = v40.size.width;
      v8 = v40.size.height;
    }
  }

  v29 = x;
  v30 = y;
  v31 = v7;
  v32 = v8;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _WTVCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 uuid];
    v13 = 136315906;
    v14 = "[WTFullScreenContainerViewController willBeginWritingToolsSession:requestContexts:]";
    v15 = 2112;
    v16 = self;
    v17 = 2112;
    v18 = v9;
    v19 = 2048;
    v20 = [v6 type];
    _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_INFO, "%s (%@, sessUUIS: %@, sessType: %lu)", &v13, 0x2Au);
  }

  v10 = [(WTFullScreenContainerViewController *)self sessionUUID];

  if (!v10)
  {
    v11 = [v6 uuid];
    [(WTFullScreenContainerViewController *)self setSessionUUID:v11];
  }

  v12 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v12 willBeginWritingToolsSession:v6 requestContexts:v7];
}

- (void)didBeginWritingToolsSession:(id)a3 contexts:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _WTVCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 uuid];
    v11 = 136316162;
    v12 = "[WTFullScreenContainerViewController didBeginWritingToolsSession:contexts:]";
    v13 = 2112;
    v14 = self;
    v15 = 2112;
    v16 = v9;
    v17 = 2048;
    v18 = [v6 type];
    v19 = 2048;
    v20 = [v7 count];
    _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_INFO, "%s (%@, sessUUID: %@, sessType: %lu, #contexts: %lu)", &v11, 0x34u);
  }

  v10 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v10 didBeginWritingToolsSession:v6 contexts:v7];
}

- (void)writingToolsSession:(id)a3 didReceiveAction:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _WTVCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 uuid];
    v10 = 136316162;
    v11 = "[WTFullScreenContainerViewController writingToolsSession:didReceiveAction:]";
    v12 = 2112;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    v16 = 2048;
    v17 = [v6 type];
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&dword_1D451D000, v7, OS_LOG_TYPE_INFO, "%s (%@, sessUUIS: %@, sessType: %lu, action: %lu)", &v10, 0x34u);
  }

  v9 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v9 writingToolsSession:v6 didReceiveAction:a4];
}

- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _WTVCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 uuid];
    v9 = [v6 type];
    v13 = 136316162;
    v14 = "[WTFullScreenContainerViewController didEndWritingToolsSession:accepted:]";
    v10 = "no";
    if (v4)
    {
      v10 = "yes";
    }

    v15 = 2112;
    v16 = self;
    v17 = 2112;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    v21 = 2080;
    v22 = v10;
    _os_log_impl(&dword_1D451D000, v7, OS_LOG_TYPE_INFO, "%s (%@, sessUUIS: %@, sessType: %lu, accepted: %s)", &v13, 0x34u);
  }

  v11 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v11 didEndWritingToolsSession:v6 accepted:v4];

  v12 = [(WTFullScreenContainerViewController *)self hostingController];
  [v12 invalidate];
}

- (void)compositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7
{
  v7 = a7;
  length = a5.length;
  location = a5.location;
  v38 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = _WTVCLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v13 uuid];
    v18 = [v13 type];
    v19 = [v14 length];
    v22 = 136316930;
    v23 = "[WTFullScreenContainerViewController compositionSession:didReceiveText:replacementRange:inContext:finished:]";
    v20 = "no";
    if (v7)
    {
      v20 = "yes";
    }

    v24 = 2112;
    v25 = self;
    v26 = 2112;
    v27 = v17;
    v28 = 2048;
    v29 = v18;
    v30 = 2048;
    v31 = v19;
    v32 = 2048;
    v33 = location;
    v34 = 2048;
    v35 = length;
    v36 = 2080;
    v37 = v20;
    _os_log_impl(&dword_1D451D000, v16, OS_LOG_TYPE_INFO, "%s (%@, sessUUIS: %@, sessType: %lu, textLen: %lu, replaceRange: {%lu,%lu}, finished: %s)", &v22, 0x52u);
  }

  v21 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v21 compositionSession:v13 didReceiveText:v14 replacementRange:location inContext:length finished:{v15, v7}];
}

- (void)proofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7
{
  v7 = a7;
  length = a5.length;
  location = a5.location;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v16 proofreadingSession:v15 didReceiveSuggestions:v14 processedRange:location inContext:length finished:{v13, v7}];
}

- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v13 proofreadingSession:v12 didUpdateState:a4 forSuggestionWithUUID:v11 inContext:v10];
}

- (void)endWritingToolsWithError:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[WTFullScreenContainerViewController endWritingToolsWithError:]";
    v9 = 2112;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, error: %@)", &v7, 0x20u);
  }

  v6 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v6 endWritingToolsWithError:v4];
}

- (void)showContentWarningWithTitle:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69DC648];
  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"Cancel" value:&stru_1F4FC5520 table:@"Localizable"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__WTFullScreenContainerViewController_showContentWarningWithTitle_message___block_invoke;
  v20[3] = &unk_1E8480A88;
  objc_copyWeak(&v21, &location);
  v12 = [v9 actionWithTitle:v11 style:0 handler:v20];
  [v8 addAction:v12];

  v13 = MEMORY[0x1E69DC648];
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"Continue" value:&stru_1F4FC5520 table:@"Localizable"];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__WTFullScreenContainerViewController_showContentWarningWithTitle_message___block_invoke_2;
  v19[3] = &unk_1E8480AB0;
  v19[4] = self;
  v16 = [v13 actionWithTitle:v15 style:0 handler:v19];
  [v8 addAction:v16];

  [(WTFullScreenContainerViewController *)self _setShouldEndWritingToolsOnSourceResign:0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__WTFullScreenContainerViewController_showContentWarningWithTitle_message___block_invoke_3;
  v17[3] = &unk_1E8480B20;
  objc_copyWeak(&v18, &location);
  [(WTFullScreenContainerViewController *)self presentViewController:v8 animated:1 completion:v17];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __75__WTFullScreenContainerViewController_showContentWarningWithTitle_message___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained writingToolsDelegate];
  [v1 endWritingTools];
}

void __75__WTFullScreenContainerViewController_showContentWarningWithTitle_message___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionUUID];
  v4 = [WTUIActionHostToClient actionForDidDismissInputWarningForSessionWithUUID:v2];

  v3 = [*(a1 + 32) hostingController];
  [v3 sendAction:v4];
}

void __75__WTFullScreenContainerViewController_showContentWarningWithTitle_message___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setShouldEndWritingToolsOnSourceResign:1];
}

- (void)showAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 buttonAction:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v14 = [(WTFullScreenContainerViewController *)self presentingViewController];
  if (v14 && (v15 = v14, v16 = [(WTFullScreenContainerViewController *)self isBeingPresented], v15, (v16 & 1) == 0))
  {
    v18 = _WTVCLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1D451D000, v18, OS_LOG_TYPE_DEFAULT, "Received show alert request, proceeding...", buf, 2u);
    }

    [(WTFullScreenContainerViewController *)self _showAlertWithTitle:v10 message:v11 buttonTitle:v12 buttonAction:v13];
  }

  else
  {
    v17 = _WTVCLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1D451D000, v17, OS_LOG_TYPE_DEFAULT, "Received show alert request, pending until viewDidAppear...", buf, 2u);
    }

    objc_initWeak(buf, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __91__WTFullScreenContainerViewController_showAlertWithTitle_message_buttonTitle_buttonAction___block_invoke;
    v19[3] = &unk_1E84811D8;
    objc_copyWeak(&v24, buf);
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    [(WTFullScreenContainerViewController *)self setPendingHandoffHandler:v19];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }
}

void __91__WTFullScreenContainerViewController_showAlertWithTitle_message_buttonTitle_buttonAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _showAlertWithTitle:*(a1 + 32) message:*(a1 + 40) buttonTitle:*(a1 + 48) buttonAction:*(a1 + 56)];
    WeakRetained = v3;
  }
}

- (void)_showAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 buttonAction:(id)a6
{
  v10 = a3;
  v11 = a4;
  v23 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:v11 preferredStyle:1];
  objc_initWeak(location, self);
  v14 = MEMORY[0x1E69DC648];
  v15 = [MEMORY[0x1E696AAE8] mainBundle];
  v16 = [v15 localizedStringForKey:@"Cancel" value:&stru_1F4FC5520 table:0];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __92__WTFullScreenContainerViewController__showAlertWithTitle_message_buttonTitle_buttonAction___block_invoke;
  v28[3] = &unk_1E8480A88;
  objc_copyWeak(&v29, location);
  v17 = [v14 actionWithTitle:v16 style:0 handler:v28];
  [v13 addAction:v17];

  v18 = MEMORY[0x1E69DC648];
  v19 = [MEMORY[0x1E696AAE8] mainBundle];
  v20 = [v19 localizedStringForKey:@"Continue" value:&stru_1F4FC5520 table:0];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __92__WTFullScreenContainerViewController__showAlertWithTitle_message_buttonTitle_buttonAction___block_invoke_2;
  v26[3] = &unk_1E8481200;
  v26[4] = self;
  v21 = v12;
  v27 = v21;
  v22 = [v18 actionWithTitle:v20 style:0 handler:v26];
  [v13 addAction:v22];

  [(WTFullScreenContainerViewController *)self _setShouldEndWritingToolsOnSourceResign:0];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __92__WTFullScreenContainerViewController__showAlertWithTitle_message_buttonTitle_buttonAction___block_invoke_3;
  v24[3] = &unk_1E8480B20;
  objc_copyWeak(&v25, location);
  [(WTFullScreenContainerViewController *)self presentViewController:v13 animated:1 completion:v24];
  objc_destroyWeak(&v25);

  objc_destroyWeak(&v29);
  objc_destroyWeak(location);
}

void __92__WTFullScreenContainerViewController__showAlertWithTitle_message_buttonTitle_buttonAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained writingToolsDelegate];
  [v1 endWritingTools];
}

void __92__WTFullScreenContainerViewController__showAlertWithTitle_message_buttonTitle_buttonAction___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionUUID];
  v4 = [WTUIActionHostToClient actionForDidDismissInputWarningForSessionWithUUID:v2];

  v3 = [*(a1 + 32) hostingController];
  [v3 sendAction:v4];

  (*(*(a1 + 40) + 16))();
}

void __92__WTFullScreenContainerViewController__showAlertWithTitle_message_buttonTitle_buttonAction___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setShouldEndWritingToolsOnSourceResign:1];
}

- (void)handoffFromUCBFromTool:(int64_t)a3 withPrompt:(id)a4
{
  v6 = a4;
  v7 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v7 handoffFromUCBFromTool:a3 withPrompt:v6];
}

- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)a3 preferredContentSizeChanging:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v9 writingToolsDidUpdateKeyboardPosition:v4 preferredContentSizeChanging:{x, y, width, height}];
}

- (void)endWritingTools
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[WTFullScreenContainerViewController endWritingTools]";
    v6 = 2112;
    v7 = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v4, 0x16u);
  }

  [(WTFullScreenContainerViewController *)self endWritingToolsWithError:0];
}

- (void)undo
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[WTFullScreenContainerViewController undo]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  v4 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v4 undo];
}

- (void)redo
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[WTFullScreenContainerViewController redo]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  v4 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v4 redo];
}

- (void)replaceSelectionWithText:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[WTFullScreenContainerViewController replaceSelectionWithText:]";
    v9 = 2112;
    v10 = self;
    v11 = 2048;
    v12 = [v4 length];
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, textLen=%lu)", &v7, 0x20u);
  }

  v6 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v6 replaceSelectionWithText:v4];
}

- (void)copyText:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[WTFullScreenContainerViewController copyText:]";
    v9 = 2112;
    v10 = self;
    v11 = 2048;
    v12 = [v4 length];
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, textLen: %lu)", &v7, 0x20u);
  }

  v6 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v6 copyText:v4];
}

- (void)beginTextPlaceholder
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[WTFullScreenContainerViewController beginTextPlaceholder]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  v4 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v4 beginTextPlaceholder];
}

- (void)endTextPlaceholderAndWillInsertText:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _WTVCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = "no";
    v11 = "[WTFullScreenContainerViewController endTextPlaceholderAndWillInsertText:completion:]";
    v10 = 136315650;
    if (v4)
    {
      v8 = "yes";
    }

    v12 = 2112;
    v13 = self;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&dword_1D451D000, v7, OS_LOG_TYPE_INFO, "%s (%@, willInsertText: %s)", &v10, 0x20u);
  }

  v9 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v9 endTextPlaceholderAndWillInsertText:v4 completion:v6];
}

- (void)proofreadingSessionWithUUID:(id)a3 updateState:(int64_t)a4 forSuggestionWithUUID:(id)a5
{
  v7 = [WTUIActionHostToClient actionForProofreadingSessionWithUUID:a3 updateState:a4 forSuggestionWithUUID:a5];
  v6 = [(WTFullScreenContainerViewController *)self hostingController];
  [v6 sendAction:v7];
}

- (void)enrollmentBegan
{
  v2 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v2 enrollmentBegan];
}

- (void)enrollmentDismissedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [v5 enrollmentDismissedWithCompletion:v4];
}

- (void)sourceResponderHorizontalSizeClassChanged:(int64_t)a3
{
  v5 = [WTUIActionHostToClient actionForSourceResponderHorizontalSizeClassChanged:a3];
  v4 = [(WTFullScreenContainerViewController *)self hostingController];
  [v4 sendAction:v5];
}

- (void)windowingModeEnabledChanged:(BOOL)a3
{
  v5 = [WTUIActionHostToClient actionForWindowingModeEnabledChanged:a3];
  v4 = [(WTFullScreenContainerViewController *)self hostingController];
  [v4 sendAction:v5];
}

- (void)_setShouldEndWritingToolsOnSourceResign:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v9 = 136315394;
    v10 = "[WTFullScreenContainerViewController _setShouldEndWritingToolsOnSourceResign:]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s : %@", &v9, 0x16u);
  }

  v7 = [(WTFullScreenContainerViewController *)self writingToolsController];
  v8 = [v7 sourceResponder];

  if (objc_opt_respondsToSelector())
  {
    [v8 _setShouldEndWritingToolsOnResign:v3];
  }
}

- (WTWritingToolsDelegate_Internal)writingToolsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_writingToolsDelegate);

  return WeakRetained;
}

- (UIResponder)sourceResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceResponder);

  return WeakRetained;
}

- (WTWritingToolsController)writingToolsController
{
  WeakRetained = objc_loadWeakRetained(&self->_writingToolsController);

  return WeakRetained;
}

@end