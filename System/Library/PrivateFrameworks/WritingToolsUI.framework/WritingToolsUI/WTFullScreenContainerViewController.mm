@interface WTFullScreenContainerViewController
- (CGRect)_offScreenFrame;
- (CGRect)_onScreenFrame;
- (CGRect)_startFrameForAnimation;
- (CGRect)keyboardFrameInWindow:(id)window;
- (UIResponder)sourceResponder;
- (WTFullScreenContainerViewController)initWithWritingToolsDelegate:(id)delegate startupOptions:(id)options;
- (WTWritingToolsController)writingToolsController;
- (WTWritingToolsDelegate_Internal)writingToolsDelegate;
- (id)_screenForWindow:(id)window;
- (id)_sourceResponderWindow;
- (void)_sendKeyboardTrackingNotificationsForReason:(id)reason;
- (void)_setShouldEndWritingToolsOnSourceResign:(BOOL)resign;
- (void)_setupSceneHosting;
- (void)_showAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle buttonAction:(id)action;
- (void)beginTextPlaceholder;
- (void)compositionSession:(id)session didReceiveText:(id)text replacementRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished;
- (void)copyText:(id)text;
- (void)didBeginWritingToolsSession:(id)session contexts:(id)contexts;
- (void)didEndWritingToolsSession:(id)session accepted:(BOOL)accepted;
- (void)endTextPlaceholderAndWillInsertText:(BOOL)text completion:(id)completion;
- (void)endWritingTools;
- (void)endWritingToolsWithError:(id)error;
- (void)enrollmentBegan;
- (void)enrollmentDismissedWithCompletion:(id)completion;
- (void)handoffFromUCBFromTool:(int64_t)tool withPrompt:(id)prompt;
- (void)invalidateConnection;
- (void)proofreadingSession:(id)session didReceiveSuggestions:(id)suggestions processedRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished;
- (void)proofreadingSession:(id)session didUpdateState:(int64_t)state forSuggestionWithUUID:(id)d inContext:(id)context;
- (void)proofreadingSessionWithUUID:(id)d updateState:(int64_t)state forSuggestionWithUUID:(id)iD;
- (void)redo;
- (void)replaceSelectionWithText:(id)text;
- (void)showAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle buttonAction:(id)action;
- (void)showContentWarningWithTitle:(id)title message:(id)message;
- (void)sourceResponderHorizontalSizeClassChanged:(int64_t)changed;
- (void)undo;
- (void)updateKeyboardTrackingHeight:(double)height;
- (void)viewDidAppear:(BOOL)appear;
- (void)willBeginWritingToolsSession:(id)session requestContexts:(id)contexts;
- (void)windowingModeEnabledChanged:(BOOL)changed;
- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)position preferredContentSizeChanging:(BOOL)changing;
- (void)writingToolsSession:(id)session didReceiveAction:(int64_t)action;
@end

@implementation WTFullScreenContainerViewController

- (WTFullScreenContainerViewController)initWithWritingToolsDelegate:(id)delegate startupOptions:(id)options
{
  delegateCopy = delegate;
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = WTFullScreenContainerViewController;
  v8 = [(WTFullScreenContainerViewController *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_writingToolsDelegate, delegateCopy);
    objc_storeWeak(&v9->_writingToolsController, delegateCopy);
    sessionUUID = [optionsCopy sessionUUID];
    sessionUUID = v9->_sessionUUID;
    v9->_sessionUUID = sessionUUID;

    objc_storeStrong(&v9->_startupOptions, options);
    [(WTFullScreenContainerViewController *)v9 _setupSceneHosting];
    view = [(WTFullScreenContainerViewController *)v9 view];
    [view setUserInteractionEnabled:0];

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
  hostingController = [(WTFullScreenContainerViewController *)self hostingController];

  if (!hostingController)
  {
    [(WTFullScreenContainerViewController *)self _beginDelayingPresentation:&__block_literal_global_9 cancellationHandler:3.0];
    v33 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.WritingToolsUIService"];
    v4 = objc_alloc(MEMORY[0x1E69DD688]);
    v5 = objc_alloc_init(MEMORY[0x1E69DD6A0]);
    v6 = [v4 initWithProcessIdentity:v33 sceneSpecification:v5];
    [(WTFullScreenContainerViewController *)self setHostingController:v6];

    hostingController2 = [(WTFullScreenContainerViewController *)self hostingController];
    _eventDeferringComponent = [hostingController2 _eventDeferringComponent];
    [_eventDeferringComponent setMaintainHostFirstResponderWhenClientWantsKeyboard:1];

    startupOptions = [(WTFullScreenContainerViewController *)self startupOptions];
    v38 = 0;
    v32 = [startupOptions asBSActionAndReturnError:&v38];
    v24 = v38;

    objc_initWeak(&location, self);
    v10 = [WTUISceneHostingActivationController alloc];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __57__WTFullScreenContainerViewController__setupSceneHosting__block_invoke_2;
    v35[3] = &unk_1E8480B20;
    objc_copyWeak(&v36, &location);
    v11 = [(WTUISceneHostingActivationController *)v10 initWithStartupAction:v32 invalidationHandler:v35];
    hostingController3 = [(WTFullScreenContainerViewController *)self hostingController];
    [hostingController3 setActivationController:v11];

    hostingController4 = [(WTFullScreenContainerViewController *)self hostingController];
    [hostingController4 setDelegate:self];

    hostingController5 = [(WTFullScreenContainerViewController *)self hostingController];
    sceneViewController = [hostingController5 sceneViewController];

    [(WTFullScreenContainerViewController *)self addChildViewController:sceneViewController];
    view = [sceneViewController view];
    view2 = [(WTFullScreenContainerViewController *)self view];
    [view2 addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = MEMORY[0x1E696ACD8];
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v39[0] = v29;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v39[1] = v26;
    topAnchor = [view topAnchor];
    topAnchor2 = [view2 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v39[2] = v19;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [view2 bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v39[3] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
    [v25 activateConstraints:v23];

    [sceneViewController didMoveToParentViewController:self];
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
  hostingController = [(WTFullScreenContainerViewController *)self hostingController];
  [hostingController invalidate];
}

- (void)viewDidAppear:(BOOL)appear
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = WTFullScreenContainerViewController;
  [(WTFullScreenContainerViewController *)&v8 viewDidAppear:appear];
  v4 = _WTVCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    pendingHandoffHandler = [(WTFullScreenContainerViewController *)self pendingHandoffHandler];
    *buf = 67109120;
    v10 = pendingHandoffHandler != 0;
    _os_log_impl(&dword_1D451D000, v4, OS_LOG_TYPE_DEFAULT, "Fullscreen view controller didAppear, with pending handler: %d", buf, 8u);
  }

  pendingHandoffHandler2 = [(WTFullScreenContainerViewController *)self pendingHandoffHandler];

  if (pendingHandoffHandler2)
  {
    pendingHandoffHandler3 = [(WTFullScreenContainerViewController *)self pendingHandoffHandler];
    pendingHandoffHandler3[2]();

    [(WTFullScreenContainerViewController *)self setPendingHandoffHandler:0];
  }
}

- (void)updateKeyboardTrackingHeight:(double)height
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = _WTSizingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    heightCopy = height;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "Client handling updateKeyboardTrackingHeight: %f", &v6, 0xCu);
  }

  [(WTFullScreenContainerViewController *)self setKeyboardTrackingHeight:height];
  [(WTFullScreenContainerViewController *)self _sendKeyboardTrackingNotificationsForReason:@"updateKeyboardTrackingHeight-Fullscreen"];
}

- (void)_sendKeyboardTrackingNotificationsForReason:(id)reason
{
  v31 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
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
      v30 = reasonCopy;
      _os_log_impl(&dword_1D451D000, v21, OS_LOG_TYPE_DEFAULT, "Send keyboard tracking notification now (start:%@, end:%@, reason:%@)", &v25, 0x20u);
    }

    ivsPlacementController = [(WTFullScreenContainerViewController *)self ivsPlacementController];
    [ivsPlacementController animateTrackingElementsFromStart:1 toEnd:v6 forShow:{v8, v10, v12, v14, v16, v18, v20}];
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
  _sourceResponderWindow = [(WTFullScreenContainerViewController *)self _sourceResponderWindow];
  v4 = 0.0;
  if (+[WTWritingToolsController _isWritingToolsHandlingKeyboardTracking])
  {
    [(WTFullScreenContainerViewController *)self keyboardFrameInWindow:_sourceResponderWindow];
    v4 = v5;
  }

  [(WTFullScreenContainerViewController *)self keyboardTrackingHeight];
  if (v6 != 0.0)
  {
    [(WTFullScreenContainerViewController *)self keyboardTrackingHeight];
    v4 = v7;
  }

  [_sourceResponderWindow bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(WTFullScreenContainerViewController *)self _screenForWindow:_sourceResponderWindow];
  windowScene = [_sourceResponderWindow windowScene];
  coordinateSpace = [windowScene coordinateSpace];

  if (!coordinateSpace)
  {
    coordinateSpace = [_sourceResponderWindow coordinateSpace];
  }

  coordinateSpace2 = [v16 coordinateSpace];
  [coordinateSpace convertRect:coordinateSpace2 toCoordinateSpace:{v9, v11 + v15 - v4, v13, v4}];
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
  writingToolsController = [(WTFullScreenContainerViewController *)self writingToolsController];
  sourceResponderViewController = [writingToolsController sourceResponderViewController];
  view = [sourceResponderViewController view];
  window = [view window];

  return window;
}

- (id)_screenForWindow:(id)window
{
  windowCopy = window;
  windowScene = [windowCopy windowScene];
  screen = [windowScene screen];
  v6 = screen;
  if (screen)
  {
    screen2 = screen;
  }

  else
  {
    screen2 = [windowCopy screen];
  }

  v8 = screen2;

  return v8;
}

- (CGRect)keyboardFrameInWindow:(id)window
{
  windowCopy = window;
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
      v9 = [(WTFullScreenContainerViewController *)self _screenForWindow:windowCopy];
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
      windowScene = [windowCopy windowScene];
      coordinateSpace = [windowScene coordinateSpace];

      if (!coordinateSpace)
      {
        coordinateSpace = [windowCopy coordinateSpace];
      }

      coordinateSpace2 = [v9 coordinateSpace];
      [coordinateSpace2 convertRect:coordinateSpace toCoordinateSpace:{MinX, v12, Width, Height}];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      [windowCopy bounds];
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

- (void)willBeginWritingToolsSession:(id)session requestContexts:(id)contexts
{
  v21 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  contextsCopy = contexts;
  v8 = _WTVCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    uuid = [sessionCopy uuid];
    v13 = 136315906;
    v14 = "[WTFullScreenContainerViewController willBeginWritingToolsSession:requestContexts:]";
    v15 = 2112;
    selfCopy = self;
    v17 = 2112;
    v18 = uuid;
    v19 = 2048;
    type = [sessionCopy type];
    _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_INFO, "%s (%@, sessUUIS: %@, sessType: %lu)", &v13, 0x2Au);
  }

  sessionUUID = [(WTFullScreenContainerViewController *)self sessionUUID];

  if (!sessionUUID)
  {
    uuid2 = [sessionCopy uuid];
    [(WTFullScreenContainerViewController *)self setSessionUUID:uuid2];
  }

  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate willBeginWritingToolsSession:sessionCopy requestContexts:contextsCopy];
}

- (void)didBeginWritingToolsSession:(id)session contexts:(id)contexts
{
  v21 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  contextsCopy = contexts;
  v8 = _WTVCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    uuid = [sessionCopy uuid];
    v11 = 136316162;
    v12 = "[WTFullScreenContainerViewController didBeginWritingToolsSession:contexts:]";
    v13 = 2112;
    selfCopy = self;
    v15 = 2112;
    v16 = uuid;
    v17 = 2048;
    type = [sessionCopy type];
    v19 = 2048;
    v20 = [contextsCopy count];
    _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_INFO, "%s (%@, sessUUID: %@, sessType: %lu, #contexts: %lu)", &v11, 0x34u);
  }

  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate didBeginWritingToolsSession:sessionCopy contexts:contextsCopy];
}

- (void)writingToolsSession:(id)session didReceiveAction:(int64_t)action
{
  v20 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v7 = _WTVCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    uuid = [sessionCopy uuid];
    v10 = 136316162;
    v11 = "[WTFullScreenContainerViewController writingToolsSession:didReceiveAction:]";
    v12 = 2112;
    selfCopy = self;
    v14 = 2112;
    v15 = uuid;
    v16 = 2048;
    type = [sessionCopy type];
    v18 = 2048;
    actionCopy = action;
    _os_log_impl(&dword_1D451D000, v7, OS_LOG_TYPE_INFO, "%s (%@, sessUUIS: %@, sessType: %lu, action: %lu)", &v10, 0x34u);
  }

  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate writingToolsSession:sessionCopy didReceiveAction:action];
}

- (void)didEndWritingToolsSession:(id)session accepted:(BOOL)accepted
{
  acceptedCopy = accepted;
  v23 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v7 = _WTVCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    uuid = [sessionCopy uuid];
    type = [sessionCopy type];
    v13 = 136316162;
    v14 = "[WTFullScreenContainerViewController didEndWritingToolsSession:accepted:]";
    v10 = "no";
    if (acceptedCopy)
    {
      v10 = "yes";
    }

    v15 = 2112;
    selfCopy = self;
    v17 = 2112;
    v18 = uuid;
    v19 = 2048;
    v20 = type;
    v21 = 2080;
    v22 = v10;
    _os_log_impl(&dword_1D451D000, v7, OS_LOG_TYPE_INFO, "%s (%@, sessUUIS: %@, sessType: %lu, accepted: %s)", &v13, 0x34u);
  }

  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate didEndWritingToolsSession:sessionCopy accepted:acceptedCopy];

  hostingController = [(WTFullScreenContainerViewController *)self hostingController];
  [hostingController invalidate];
}

- (void)compositionSession:(id)session didReceiveText:(id)text replacementRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished
{
  finishedCopy = finished;
  length = range.length;
  location = range.location;
  v38 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  textCopy = text;
  contextCopy = context;
  v16 = _WTVCLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    uuid = [sessionCopy uuid];
    type = [sessionCopy type];
    v19 = [textCopy length];
    v22 = 136316930;
    v23 = "[WTFullScreenContainerViewController compositionSession:didReceiveText:replacementRange:inContext:finished:]";
    v20 = "no";
    if (finishedCopy)
    {
      v20 = "yes";
    }

    v24 = 2112;
    selfCopy = self;
    v26 = 2112;
    v27 = uuid;
    v28 = 2048;
    v29 = type;
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

  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate compositionSession:sessionCopy didReceiveText:textCopy replacementRange:location inContext:length finished:{contextCopy, finishedCopy}];
}

- (void)proofreadingSession:(id)session didReceiveSuggestions:(id)suggestions processedRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished
{
  finishedCopy = finished;
  length = range.length;
  location = range.location;
  contextCopy = context;
  suggestionsCopy = suggestions;
  sessionCopy = session;
  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate proofreadingSession:sessionCopy didReceiveSuggestions:suggestionsCopy processedRange:location inContext:length finished:{contextCopy, finishedCopy}];
}

- (void)proofreadingSession:(id)session didUpdateState:(int64_t)state forSuggestionWithUUID:(id)d inContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  sessionCopy = session;
  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate proofreadingSession:sessionCopy didUpdateState:state forSuggestionWithUUID:dCopy inContext:contextCopy];
}

- (void)endWritingToolsWithError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[WTFullScreenContainerViewController endWritingToolsWithError:]";
    v9 = 2112;
    selfCopy = self;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, error: %@)", &v7, 0x20u);
  }

  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate endWritingToolsWithError:errorCopy];
}

- (void)showContentWarningWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
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

- (void)showAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle buttonAction:(id)action
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  actionCopy = action;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  presentingViewController = [(WTFullScreenContainerViewController *)self presentingViewController];
  if (presentingViewController && (v15 = presentingViewController, v16 = [(WTFullScreenContainerViewController *)self isBeingPresented], v15, (v16 & 1) == 0))
  {
    v18 = _WTVCLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1D451D000, v18, OS_LOG_TYPE_DEFAULT, "Received show alert request, proceeding...", buf, 2u);
    }

    [(WTFullScreenContainerViewController *)self _showAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy buttonAction:actionCopy];
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
    v20 = titleCopy;
    v21 = messageCopy;
    v22 = buttonTitleCopy;
    v23 = actionCopy;
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

- (void)_showAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle buttonAction:(id)action
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  actionCopy = action;
  v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
  objc_initWeak(location, self);
  v14 = MEMORY[0x1E69DC648];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v16 = [mainBundle localizedStringForKey:@"Cancel" value:&stru_1F4FC5520 table:0];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __92__WTFullScreenContainerViewController__showAlertWithTitle_message_buttonTitle_buttonAction___block_invoke;
  v28[3] = &unk_1E8480A88;
  objc_copyWeak(&v29, location);
  v17 = [v14 actionWithTitle:v16 style:0 handler:v28];
  [v13 addAction:v17];

  v18 = MEMORY[0x1E69DC648];
  mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
  v20 = [mainBundle2 localizedStringForKey:@"Continue" value:&stru_1F4FC5520 table:0];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __92__WTFullScreenContainerViewController__showAlertWithTitle_message_buttonTitle_buttonAction___block_invoke_2;
  v26[3] = &unk_1E8481200;
  v26[4] = self;
  v21 = actionCopy;
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

- (void)handoffFromUCBFromTool:(int64_t)tool withPrompt:(id)prompt
{
  promptCopy = prompt;
  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate handoffFromUCBFromTool:tool withPrompt:promptCopy];
}

- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)position preferredContentSizeChanging:(BOOL)changing
{
  changingCopy = changing;
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate writingToolsDidUpdateKeyboardPosition:changingCopy preferredContentSizeChanging:{x, y, width, height}];
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
    selfCopy = self;
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
    selfCopy = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate undo];
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
    selfCopy = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate redo];
}

- (void)replaceSelectionWithText:(id)text
{
  v13 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[WTFullScreenContainerViewController replaceSelectionWithText:]";
    v9 = 2112;
    selfCopy = self;
    v11 = 2048;
    v12 = [textCopy length];
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, textLen=%lu)", &v7, 0x20u);
  }

  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate replaceSelectionWithText:textCopy];
}

- (void)copyText:(id)text
{
  v13 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[WTFullScreenContainerViewController copyText:]";
    v9 = 2112;
    selfCopy = self;
    v11 = 2048;
    v12 = [textCopy length];
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, textLen: %lu)", &v7, 0x20u);
  }

  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate copyText:textCopy];
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
    selfCopy = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate beginTextPlaceholder];
}

- (void)endTextPlaceholderAndWillInsertText:(BOOL)text completion:(id)completion
{
  textCopy = text;
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = _WTVCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = "no";
    v11 = "[WTFullScreenContainerViewController endTextPlaceholderAndWillInsertText:completion:]";
    v10 = 136315650;
    if (textCopy)
    {
      v8 = "yes";
    }

    v12 = 2112;
    selfCopy = self;
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&dword_1D451D000, v7, OS_LOG_TYPE_INFO, "%s (%@, willInsertText: %s)", &v10, 0x20u);
  }

  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate endTextPlaceholderAndWillInsertText:textCopy completion:completionCopy];
}

- (void)proofreadingSessionWithUUID:(id)d updateState:(int64_t)state forSuggestionWithUUID:(id)iD
{
  v7 = [WTUIActionHostToClient actionForProofreadingSessionWithUUID:d updateState:state forSuggestionWithUUID:iD];
  hostingController = [(WTFullScreenContainerViewController *)self hostingController];
  [hostingController sendAction:v7];
}

- (void)enrollmentBegan
{
  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate enrollmentBegan];
}

- (void)enrollmentDismissedWithCompletion:(id)completion
{
  completionCopy = completion;
  writingToolsDelegate = [(WTFullScreenContainerViewController *)self writingToolsDelegate];
  [writingToolsDelegate enrollmentDismissedWithCompletion:completionCopy];
}

- (void)sourceResponderHorizontalSizeClassChanged:(int64_t)changed
{
  v5 = [WTUIActionHostToClient actionForSourceResponderHorizontalSizeClassChanged:changed];
  hostingController = [(WTFullScreenContainerViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)windowingModeEnabledChanged:(BOOL)changed
{
  v5 = [WTUIActionHostToClient actionForWindowingModeEnabledChanged:changed];
  hostingController = [(WTFullScreenContainerViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)_setShouldEndWritingToolsOnSourceResign:(BOOL)resign
{
  resignCopy = resign;
  v13 = *MEMORY[0x1E69E9840];
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:resignCopy];
    v9 = 136315394;
    v10 = "[WTFullScreenContainerViewController _setShouldEndWritingToolsOnSourceResign:]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s : %@", &v9, 0x16u);
  }

  writingToolsController = [(WTFullScreenContainerViewController *)self writingToolsController];
  sourceResponder = [writingToolsController sourceResponder];

  if (objc_opt_respondsToSelector())
  {
    [sourceResponder _setShouldEndWritingToolsOnResign:resignCopy];
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