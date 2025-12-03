@interface WTMainPopoverViewController
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (CGRect)_offScreenFrame;
- (CGRect)_onScreenFrame;
- (CGRect)_startFrameForAnimation;
- (CGRect)keyboardFrameInWindow:(id)window;
- (CGRect)onScreenFrameLastReportedToKeyboardTrackingCoordinator;
- (CGRect)pendingWritingToolsKeyboardFrame;
- (CGRect)writingToolsKeyboardFrame;
- (UISheetPresentationController)sheetController;
- (UIWTInputViewSetPlacementController_Staging)ivsPlacementController;
- (WTMainPopoverViewController)initWithWritingToolsController:(id)controller startupOptions:(id)options;
- (WTWritingToolsController)writingToolsController;
- (double)_currentDetentHeight;
- (double)_smallDetentHeight;
- (id)_screenForWindow:(id)window;
- (id)_sourceResponderWindow;
- (void)_dismissalTransitionDidEnd:(id)end;
- (void)_dismissalTransitionWillBegin:(id)begin;
- (void)_movePopoverBackToDefaultPosition;
- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)_sendKeyboardTrackingNotificationsForReason:(id)reason;
- (void)_setupSceneHosting;
- (void)applicationDidResume;
- (void)beginTextPlaceholder;
- (void)compositionSession:(id)session didReceiveText:(id)text replacementRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished;
- (void)copyText:(id)text;
- (void)didBeginWritingToolsSession:(id)session contexts:(id)contexts;
- (void)didEndWritingToolsSession:(id)session accepted:(BOOL)accepted;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)didStartMontaraRefinementForSessionWithUUID:(id)d;
- (void)dismissShareSheet;
- (void)enableIntelligentEntryFieldView:(BOOL)view;
- (void)enableSmallDetent:(BOOL)detent;
- (void)endTextPlaceholderAndWillInsertText:(BOOL)text completion:(id)completion;
- (void)endWritingTools;
- (void)endWritingToolsWithError:(id)error;
- (void)enrollmentBegan;
- (void)enrollmentDismissedWithCompletion:(id)completion;
- (void)handoffFromUCBFromTool:(int64_t)tool withPrompt:(id)prompt;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)proofreadingSession:(id)session didReceiveSuggestions:(id)suggestions processedRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished;
- (void)proofreadingSession:(id)session didUpdateState:(int64_t)state forSuggestionWithUUID:(id)d inContext:(id)context;
- (void)proofreadingSessionWithUUID:(id)d updateState:(int64_t)state forSuggestionWithUUID:(id)iD;
- (void)redo;
- (void)replaceSelectionWithText:(id)text;
- (void)repositionWithKeyboardChangedInformation:(id)information;
- (void)resetPresentationSelectedDetent;
- (void)setFeedbackHiddenDetentEnabled:(BOOL)enabled;
- (void)setRemainingRedoCount:(unint64_t)count;
- (void)setRemainingUndoCount:(unint64_t)count;
- (void)showContentWarningWithTitle:(id)title message:(id)message;
- (void)sourceResponderHorizontalSizeClassChanged:(int64_t)changed;
- (void)triggerShareSheetWithText:(id)text;
- (void)undo;
- (void)updatePromptEntryState:(int64_t)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willBeginWritingToolsSession:(id)session requestContexts:(id)contexts;
- (void)windowingModeEnabledChanged:(BOOL)changed;
- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)position preferredContentSizeChanging:(BOOL)changing;
- (void)writingToolsSession:(id)session didReceiveAction:(int64_t)action;
@end

@implementation WTMainPopoverViewController

- (WTMainPopoverViewController)initWithWritingToolsController:(id)controller startupOptions:(id)options
{
  controllerCopy = controller;
  optionsCopy = options;
  v22.receiver = self;
  v22.super_class = WTMainPopoverViewController;
  v8 = [(WTMainPopoverViewController *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_writingToolsController, controllerCopy);
    objc_storeStrong(&v9->_startupOptions, options);
    sessionUUID = [optionsCopy sessionUUID];
    sessionUUID = v9->_sessionUUID;
    v9->_sessionUUID = sessionUUID;

    [(WTMainPopoverViewController *)v9 setModalPresentationStyle:7];
    presentationController = [(WTMainPopoverViewController *)v9 presentationController];
    [presentationController setDelegate:v9];

    v13 = NSClassFromString(&cfstr_Uiwtinputviews.isa);
    if (v13)
    {
      v14 = objc_alloc_init(v13);
      ivsPlacementController = v9->_ivsPlacementController;
      v9->_ivsPlacementController = v14;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__dismissalTransitionWillBegin_ name:*MEMORY[0x1E69DE2D0] object:v9];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel__dismissalTransitionDidEnd_ name:*MEMORY[0x1E69DE2C8] object:v9];

    [MEMORY[0x1E69DCBB8] sizeForInterfaceOrientation:1];
    v9->_smallDetentKeyboardHeight = v18;
    v19 = *MEMORY[0x1E695F050];
    v20 = *(MEMORY[0x1E695F050] + 16);
    v9->_writingToolsKeyboardFrame.origin = *MEMORY[0x1E695F050];
    v9->_writingToolsKeyboardFrame.size = v20;
    v9->_pendingWritingToolsKeyboardFrame.origin = v19;
    v9->_pendingWritingToolsKeyboardFrame.size = v20;
    [(WTMainPopoverViewController *)v9 _setupSceneHosting];
  }

  return v9;
}

- (void)repositionWithKeyboardChangedInformation:(id)information
{
  informationCopy = information;
  if ([informationCopy isFloating] || -[WTMainPopoverViewController presentedAsSheet](self, "presentedAsSheet") || (objc_msgSend(informationCopy, "keyboardOnScreen") & 1) == 0)
  {
    [(WTMainPopoverViewController *)self _movePopoverBackToDefaultPosition];
  }

  else
  {
    presentationController = [(WTMainPopoverViewController *)self presentationController];
    containerView = [presentationController containerView];

    [informationCopy keyboardPosition];
    v7 = v6;
    v9 = v8;
    window = [containerView window];
    screen = [window screen];
    [screen bounds];
    v13 = v12;

    window2 = [containerView window];
    screen2 = [window2 screen];
    coordinateSpace = [screen2 coordinateSpace];
    [containerView convertRect:coordinateSpace fromCoordinateSpace:{0.0, v13 - v9, v7, v9}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [containerView bounds];
    v38.origin.x = v25;
    v38.origin.y = v26;
    v38.size.width = v27;
    v38.size.height = v28;
    v35.origin.x = v18;
    v35.origin.y = v20;
    v35.size.width = v22;
    v35.size.height = v24;
    if (CGRectIntersectsRect(v35, v38))
    {
      [containerView bounds];
      v39.origin.x = v29;
      v39.origin.y = v30;
      v39.size.width = v31;
      v39.size.height = v32;
      v36.origin.x = v18;
      v36.origin.y = v20;
      v36.size.width = v22;
      v36.size.height = v24;
      v37 = CGRectIntersection(v36, v39);
      [containerView frame];
      [containerView setFrame:?];
      [containerView setNeedsLayout];
      [containerView layoutIfNeeded];
      [(WTMainPopoverViewController *)self setAdjustedPopoverContainerViewFrame:1];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WTMainPopoverViewController;
  [(WTMainPopoverViewController *)&v4 viewDidAppear:appear];
  [(WTMainPopoverViewController *)self setIsViewApparent:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(WTMainPopoverViewController *)self setIsViewApparent:0];
  v5.receiver = self;
  v5.super_class = WTMainPopoverViewController;
  [(WTMainPopoverViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = WTMainPopoverViewController;
  [(WTMainPopoverViewController *)&v10 viewDidDisappear:disappear];
  v4 = _WTVCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x1E696AD98];
    writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
    v7 = [v5 numberWithBool:{objc_msgSend(writingToolsController, "isPopoverTemporarilyDismissed")}];
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1D451D000, v4, OS_LOG_TYPE_DEFAULT, "viewDidDisappear isPopoverTemporarilyDismissed: %@", buf, 0xCu);
  }

  writingToolsController2 = [(WTMainPopoverViewController *)self writingToolsController];
  isPopoverTemporarilyDismissed = [writingToolsController2 isPopoverTemporarilyDismissed];

  if ((isPopoverTemporarilyDismissed & 1) == 0)
  {
    [(WTMainPopoverViewController *)self endWritingTools];
  }
}

- (void)applicationDidResume
{
  v4.receiver = self;
  v4.super_class = WTMainPopoverViewController;
  [(WTMainPopoverViewController *)&v4 applicationDidResume];
  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController updateKBSuppression];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  v17.receiver = self;
  v17.super_class = WTMainPopoverViewController;
  [(WTMainPopoverViewController *)&v17 didRotateFromInterfaceOrientation:orientation];
  [(WTMainPopoverViewController *)self onScreenFrameLastReportedToKeyboardTrackingCoordinator];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(WTMainPopoverViewController *)self _onScreenFrame];
  [(WTMainPopoverViewController *)self setOnScreenFrameLastReportedToKeyboardTrackingCoordinator:?];
  ivsPlacementController = [(WTMainPopoverViewController *)self ivsPlacementController];
  [(WTMainPopoverViewController *)self onScreenFrameLastReportedToKeyboardTrackingCoordinator];
  [ivsPlacementController animateTrackingElementsFromStart:1 toEnd:v5 forShow:{v7, v9, v11, v13, v14, v15, v16}];
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = (style == 2) ^ [(WTMainPopoverViewController *)self presentedAsSheet];
  if (v7 == 1)
  {
    [(WTMainPopoverViewController *)self setPresentedAsSheet:style == 2];
  }

  v8 = _WTVCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:style];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[WTMainPopoverViewController presentedAsSheet](self, "presentedAsSheet")}];
    v22 = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_DEFAULT, "presentationController:willPresentWithAdaptiveStyle: %@, presentingAsSheet: %@", &v22, 0x16u);
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
    [activeKeyboardSceneDelegate setHideSystemInputAssistantViewForWritingTools:{-[WTMainPopoverViewController presentedAsSheet](self, "presentedAsSheet")}];
  }

  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController updateKBSuppression];

  writingToolsController2 = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController2 updateInputDashboardViewController];

  writingToolsController3 = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController3 updateSourceView];

  if (v7)
  {
    if ([(WTMainPopoverViewController *)self presentedAsSheet])
    {
      v17 = 2;
    }

    else
    {
      v17 = 7;
    }

    v18 = [WTUIActionHostToClient actionForChangingPresentationStyle:v17];
    hostingController = [(WTMainPopoverViewController *)self hostingController];
    [hostingController sendAction:v18];
  }

  [(WTMainPopoverViewController *)self preferredContentSize];
  if (v21 == *MEMORY[0x1E695F060] && v20 == *(MEMORY[0x1E695F060] + 8) && ![(WTMainPopoverViewController *)self enableSmallDetent])
  {
    if (![(WTMainPopoverViewController *)self presentedAsSheet])
    {
      [(WTMainPopoverViewController *)self setPreferredContentSize:0.0, 322.0];
    }
  }

  else
  {
    [(WTMainPopoverViewController *)self _sendKeyboardTrackingNotificationsForReason:@"initOffScreen"];
  }
}

- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  v28[3] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  presentationControllerCopy = presentationController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(WTMainPopoverViewController *)self setSheetController:presentationControllerCopy];
    sheetController = [(WTMainPopoverViewController *)self sheetController];
    [sheetController setPrefersEdgeAttachedInCompactHeight:1];

    sheetController2 = [(WTMainPopoverViewController *)self sheetController];
    [sheetController2 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];

    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69DCF58];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __93__WTMainPopoverViewController__presentationController_prepareAdaptivePresentationController___block_invoke;
    v25[3] = &unk_1E8480BA8;
    objc_copyWeak(&v26, &location);
    v11 = [v10 customDetentWithIdentifier:@"WTFullSizedDetentIdentifier" resolver:v25];
    v12 = MEMORY[0x1E69DCF58];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __93__WTMainPopoverViewController__presentationController_prepareAdaptivePresentationController___block_invoke_2;
    v23[3] = &unk_1E8480BA8;
    objc_copyWeak(&v24, &location);
    v13 = [v12 customDetentWithIdentifier:@"WTFeedbackHiddenDetentIdentifier" resolver:v23];
    v14 = MEMORY[0x1E69DCF58];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __93__WTMainPopoverViewController__presentationController_prepareAdaptivePresentationController___block_invoke_3;
    v21[3] = &unk_1E8480BA8;
    objc_copyWeak(&v22, &location);
    v15 = [v14 customDetentWithIdentifier:@"WTKeyboardSizedDetentIdentifier" resolver:v21];
    v28[0] = v15;
    v28[1] = v13;
    v28[2] = v11;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    sheetController3 = [(WTMainPopoverViewController *)self sheetController];
    [sheetController3 setDetents:v16];

    sheetController4 = [(WTMainPopoverViewController *)self sheetController];
    [sheetController4 setLargestUndimmedDetentIdentifier:@"WTFullSizedDetentIdentifier"];

    sheetController5 = [(WTMainPopoverViewController *)self sheetController];
    [sheetController5 setPrefersGrabberVisible:1];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = presentationControllerCopy;
    [v20 _setBackgroundBlurDisabled:1];
    [v20 _setOverrideAllowsHitTestingOnBackgroundViews:0];
  }
}

double __93__WTMainPopoverViewController__presentationController_prepareAdaptivePresentationController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _desiredSheetHeight];
  v3 = v2;

  return v3;
}

double __93__WTMainPopoverViewController__presentationController_prepareAdaptivePresentationController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained isFeedbackHiddenDetentEnabled] & 1) == 0)
  {

    return *MEMORY[0x1E69DE3C0];
  }

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _desiredSheetHeight];
  v5 = v4;

  if (v5 == 0.0)
  {
    return *MEMORY[0x1E69DE3C0];
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _desiredSheetHeight];
  v8 = v7;
  +[WTWritingToolsController feedbackViewHeight];
  v10 = v8 - v9;

  return v10;
}

double __93__WTMainPopoverViewController__presentationController_prepareAdaptivePresentationController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _smallDetentHeight];
  v3 = v2;

  return v3;
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  _sessionSupportsPopoverAdjustment = [writingToolsController _sessionSupportsPopoverAdjustment];

  return _sessionSupportsPopoverAdjustment ^ 1;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v48 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  [(WTMainPopoverViewController *)self preferredContentSize];
  v6 = v5;
  v8 = v7;
  [containerCopy preferredContentSize];
  v10 = v9;
  v12 = v11;

  [(WTMainPopoverViewController *)self setPreferredContentSize:v10, v12];
  [(WTMainPopoverViewController *)self preferredContentSize];
  v15 = v8 == v14 && v6 == v13;
  [(WTMainPopoverViewController *)self pendingWritingToolsKeyboardFrame];
  if (CGRectIsNull(v49) || ([(WTMainPopoverViewController *)self pendingWritingToolsKeyboardFrame], v17 = v16, v19 = v18, v21 = v20, v23 = v22, [(WTMainPopoverViewController *)self writingToolsKeyboardFrame], v51.origin.x = v24, v51.origin.y = v25, v51.size.width = v26, v51.size.height = v27, v50.origin.x = v17, v50.origin.y = v19, v50.size.width = v21, v50.size.height = v23, CGRectEqualToRect(v50, v51)))
  {
    v28 = 0;
  }

  else
  {
    [(WTMainPopoverViewController *)self pendingWritingToolsKeyboardFrame];
    [(WTMainPopoverViewController *)self setWritingToolsKeyboardFrame:?];
    v28 = 1;
  }

  [(WTMainPopoverViewController *)self setPendingWritingToolsKeyboardFrame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  v29 = _WTSizingLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    [(WTMainPopoverViewController *)self preferredContentSize];
    v31 = "N";
    *buf = 134218498;
    v43 = v8;
    if (v28)
    {
      v31 = "Y";
    }

    v44 = 2048;
    v45 = v30;
    v46 = 2080;
    v47 = v31;
    _os_log_impl(&dword_1D451D000, v29, OS_LOG_TYPE_DEFAULT, "-preferredContentSizeDidChange (%.0f -> %.0f) keyboardPositionChange=%s", buf, 0x20u);
  }

  sheetPresentationController = [(WTMainPopoverViewController *)self sheetPresentationController];
  selectedDetentIdentifier = [sheetPresentationController selectedDetentIdentifier];
  v34 = [selectedDetentIdentifier isEqualToString:@"WTKeyboardSizedDetentIdentifier"];

  if ((v34 & 1) == 0)
  {
    [(WTMainPopoverViewController *)self preferredContentSize];
    v37 = *MEMORY[0x1E695F060];
    v36 = *(MEMORY[0x1E695F060] + 8);
    if ((*MEMORY[0x1E695F060] != v38 || v36 != v35) && (![(WTMainPopoverViewController *)self presenting]|| v6 == v37 && v8 == v36))
    {
      v39 = &stru_1F4FC5520;
      if (!v15)
      {
        v39 = [&stru_1F4FC5520 stringByAppendingString:@"preferredContentSize changed"];
      }

      if (v28)
      {
        v40 = @", ";
        if (v15)
        {
          v40 = &stru_1F4FC5520;
        }

        v41 = [(__CFString *)v39 stringByAppendingFormat:@"%@keyboardPosition changed", v40];

        v39 = v41;
      }

      [(WTMainPopoverViewController *)self _sendKeyboardTrackingNotificationsForReason:v39];
    }
  }
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
    v14 = "[WTMainPopoverViewController willBeginWritingToolsSession:requestContexts:]";
    v15 = 2112;
    selfCopy = self;
    v17 = 2112;
    v18 = uuid;
    v19 = 2048;
    type = [sessionCopy type];
    _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_INFO, "%s (%@, sessUUIS: %@, sessType: %lu)", &v13, 0x2Au);
  }

  sessionUUID = [(WTMainPopoverViewController *)self sessionUUID];

  if (!sessionUUID)
  {
    uuid2 = [sessionCopy uuid];
    [(WTMainPopoverViewController *)self setSessionUUID:uuid2];
  }

  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController willBeginWritingToolsSession:sessionCopy requestContexts:contextsCopy];
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
    v12 = "[WTMainPopoverViewController didBeginWritingToolsSession:contexts:]";
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

  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController didBeginWritingToolsSession:sessionCopy contexts:contextsCopy];
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
    v11 = "[WTMainPopoverViewController writingToolsSession:didReceiveAction:]";
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

  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController writingToolsSession:sessionCopy didReceiveAction:action];
}

- (void)didEndWritingToolsSession:(id)session accepted:(BOOL)accepted
{
  acceptedCopy = accepted;
  v22 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v7 = _WTVCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    uuid = [sessionCopy uuid];
    type = [sessionCopy type];
    v12 = 136316162;
    v13 = "[WTMainPopoverViewController didEndWritingToolsSession:accepted:]";
    v10 = "no";
    if (acceptedCopy)
    {
      v10 = "yes";
    }

    v14 = 2112;
    selfCopy = self;
    v16 = 2112;
    v17 = uuid;
    v18 = 2048;
    v19 = type;
    v20 = 2080;
    v21 = v10;
    _os_log_impl(&dword_1D451D000, v7, OS_LOG_TYPE_INFO, "%s (%@, sessUUIS: %@, sessType: %lu, accepted: %s)", &v12, 0x34u);
  }

  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController didEndWritingToolsSession:sessionCopy accepted:acceptedCopy];
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
    v23 = "[WTMainPopoverViewController compositionSession:didReceiveText:replacementRange:inContext:finished:]";
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

  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController compositionSession:sessionCopy didReceiveText:textCopy replacementRange:location inContext:length finished:{contextCopy, finishedCopy}];
}

- (void)proofreadingSession:(id)session didReceiveSuggestions:(id)suggestions processedRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished
{
  finishedCopy = finished;
  length = range.length;
  location = range.location;
  contextCopy = context;
  suggestionsCopy = suggestions;
  sessionCopy = session;
  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController proofreadingSession:sessionCopy didReceiveSuggestions:suggestionsCopy processedRange:location inContext:length finished:{contextCopy, finishedCopy}];
}

- (void)proofreadingSession:(id)session didUpdateState:(int64_t)state forSuggestionWithUUID:(id)d inContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  sessionCopy = session;
  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController proofreadingSession:sessionCopy didUpdateState:state forSuggestionWithUUID:dCopy inContext:contextCopy];
}

- (void)endWritingToolsWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[WTMainPopoverViewController endWritingToolsWithError:]";
    v16 = 2112;
    selfCopy = self;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, error: %@)", &v14, 0x20u);
  }

  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  [(WTMainPopoverViewController *)self setPendingWritingToolsKeyboardFrame:*MEMORY[0x1E695F050], v7, v8, v9];
  [(WTMainPopoverViewController *)self setWritingToolsKeyboardFrame:v6, v7, v8, v9];
  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController endWritingToolsWithError:errorCopy];

  [(WTMainPopoverViewController *)self setPresentedAsSheet:0];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
    [activeKeyboardSceneDelegate setHideSystemInputAssistantViewForWritingTools:0];
  }
}

- (void)showContentWarningWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController showContentWarningWithTitle:titleCopy message:messageCopy];
}

- (void)endWritingTools
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[WTMainPopoverViewController endWritingTools]";
    v6 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v4, 0x16u);
  }

  [(WTMainPopoverViewController *)self endWritingToolsWithError:0];
}

- (void)undo
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[WTMainPopoverViewController undo]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController undo];
}

- (void)redo
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[WTMainPopoverViewController redo]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController redo];
}

- (void)replaceSelectionWithText:(id)text
{
  v13 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[WTMainPopoverViewController replaceSelectionWithText:]";
    v9 = 2112;
    selfCopy = self;
    v11 = 2048;
    v12 = [textCopy length];
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, textLen=%lu)", &v7, 0x20u);
  }

  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController replaceSelectionWithText:textCopy];
}

- (void)copyText:(id)text
{
  v13 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[WTMainPopoverViewController copyText:]";
    v9 = 2112;
    selfCopy = self;
    v11 = 2048;
    v12 = [textCopy length];
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, textLen: %lu)", &v7, 0x20u);
  }

  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController copyText:textCopy];
}

- (void)beginTextPlaceholder
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[WTMainPopoverViewController beginTextPlaceholder]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController beginTextPlaceholder];
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
    v11 = "[WTMainPopoverViewController endTextPlaceholderAndWillInsertText:completion:]";
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

  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController endTextPlaceholderAndWillInsertText:textCopy completion:completionCopy];
}

- (void)enableSmallDetent:(BOOL)detent
{
  detentCopy = detent;
  traitCollection = [(WTMainPopoverViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    enableSmallDetent = [(WTMainPopoverViewController *)self enableSmallDetent];
    [(WTMainPopoverViewController *)self setEnableSmallDetent:detentCopy];
    if (enableSmallDetent != detentCopy && [(WTMainPopoverViewController *)self presentedAsSheet]&& detentCopy)
    {

      [(WTMainPopoverViewController *)self _sendKeyboardTrackingNotificationsForReason:@"enableSmallDetent"];
    }
  }
}

- (void)setFeedbackHiddenDetentEnabled:(BOOL)enabled
{
  if ([(WTMainPopoverViewController *)self isFeedbackHiddenDetentEnabled]!= enabled)
  {
    self->_isFeedbackHiddenDetentEnabled = enabled;
    sheetController = [(WTMainPopoverViewController *)self sheetController];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__WTMainPopoverViewController_setFeedbackHiddenDetentEnabled___block_invoke;
    v6[3] = &unk_1E8480BD0;
    enabledCopy = enabled;
    v6[4] = self;
    [sheetController animateChanges:v6];
  }
}

void __62__WTMainPopoverViewController_setFeedbackHiddenDetentEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 sheetController];
    v5 = @"WTFeedbackHiddenDetentIdentifier";
    v7 = v4;
  }

  else
  {
    v6 = [v3 enableSmallDetent];
    v4 = [*(a1 + 32) sheetController];
    v7 = v4;
    if (v6)
    {
      v5 = @"WTKeyboardSizedDetentIdentifier";
    }

    else
    {
      v5 = @"WTFullSizedDetentIdentifier";
    }
  }

  [v4 setSelectedDetentIdentifier:v5];
}

- (void)enableIntelligentEntryFieldView:(BOOL)view
{
  viewCopy = view;
  v10 = *MEMORY[0x1E69E9840];
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:viewCopy];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "EnableIntelligentEntryFieldView: %@", &v8, 0xCu);
  }

  [(WTMainPopoverViewController *)self setIntelligentEntryFieldViewIsEnabled:viewCopy];
  [(WTMainPopoverViewController *)self setEnableSmallDetent:viewCopy ^ 1];
  sheetController = [(WTMainPopoverViewController *)self sheetController];
  [sheetController setPrefersGrabberVisible:viewCopy ^ 1];
}

- (void)updatePromptEntryState:(int64_t)state
{
  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController updatePromptEntryState:state];
}

- (void)didStartMontaraRefinementForSessionWithUUID:(id)d
{
  dCopy = d;
  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController didStartMontaraRefinementForSessionWithUUID:dCopy];
}

- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)position preferredContentSizeChanging:(BOOL)changing
{
  changingCopy = changing;
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  v18 = *MEMORY[0x1E69E9840];
  v10 = _WTVCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v11 = NSStringFromCGRect(v19);
    v12 = v11;
    v13 = "N";
    if (changingCopy)
    {
      v13 = "Y";
    }

    v14 = 138412546;
    v15 = v11;
    v16 = 2080;
    v17 = v13;
    _os_log_impl(&dword_1D451D000, v10, OS_LOG_TYPE_DEFAULT, "-writingToolsDidUpdateKeyboardPosition:%@ preferredContentSizeChanging:%s", &v14, 0x16u);
  }

  if (changingCopy)
  {
    [(WTMainPopoverViewController *)self setPendingWritingToolsKeyboardFrame:x, y, width, height];
  }

  else
  {
    [(WTMainPopoverViewController *)self _startFrameForAnimation];
    [(WTMainPopoverViewController *)self setWritingToolsKeyboardFrame:x, y, width, height];
    [(WTMainPopoverViewController *)self setPendingWritingToolsKeyboardFrame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    if ([(WTMainPopoverViewController *)self isViewApparent])
    {
      [(WTMainPopoverViewController *)self _sendKeyboardTrackingNotificationsForReason:@"updateKeyboardPosition"];
    }
  }
}

- (void)proofreadingSessionWithUUID:(id)d updateState:(int64_t)state forSuggestionWithUUID:(id)iD
{
  v7 = [WTUIActionHostToClient actionForProofreadingSessionWithUUID:d updateState:state forSuggestionWithUUID:iD];
  hostingController = [(WTMainPopoverViewController *)self hostingController];
  [hostingController sendAction:v7];
}

- (void)setRemainingUndoCount:(unint64_t)count
{
  v5 = [WTUIActionHostToClient actionForSetRemainingUndoCount:count];
  hostingController = [(WTMainPopoverViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)setRemainingRedoCount:(unint64_t)count
{
  v5 = [WTUIActionHostToClient actionForSetRemainingRedoCount:count];
  hostingController = [(WTMainPopoverViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)sourceResponderHorizontalSizeClassChanged:(int64_t)changed
{
  v5 = [WTUIActionHostToClient actionForSourceResponderHorizontalSizeClassChanged:changed];
  hostingController = [(WTMainPopoverViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)windowingModeEnabledChanged:(BOOL)changed
{
  v5 = [WTUIActionHostToClient actionForWindowingModeEnabledChanged:changed];
  hostingController = [(WTMainPopoverViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)_setupSceneHosting
{
  v37[4] = *MEMORY[0x1E69E9840];
  hostingController = [(WTMainPopoverViewController *)self hostingController];

  if (!hostingController)
  {
    [(WTMainPopoverViewController *)self _beginDelayingPresentation:&__block_literal_global_3 cancellationHandler:3.0];
    v32 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.WritingToolsUIService"];
    v4 = objc_alloc(MEMORY[0x1E69DD688]);
    v5 = objc_alloc_init(MEMORY[0x1E69DD6A0]);
    v6 = [v4 initWithProcessIdentity:v32 sceneSpecification:v5];
    [(WTMainPopoverViewController *)self setHostingController:v6];

    hostingController2 = [(WTMainPopoverViewController *)self hostingController];
    _eventDeferringComponent = [hostingController2 _eventDeferringComponent];
    [_eventDeferringComponent setMaintainHostFirstResponderWhenClientWantsKeyboard:1];

    startupOptions = [(WTMainPopoverViewController *)self startupOptions];
    v31 = [startupOptions asBSActionAndReturnError:0];

    objc_initWeak(&location, self);
    v10 = [WTUISceneHostingActivationController alloc];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __49__WTMainPopoverViewController__setupSceneHosting__block_invoke_2;
    v34[3] = &unk_1E8480B20;
    objc_copyWeak(&v35, &location);
    v11 = [(WTUISceneHostingActivationController *)v10 initWithStartupAction:v31 invalidationHandler:v34];
    hostingController3 = [(WTMainPopoverViewController *)self hostingController];
    [hostingController3 setActivationController:v11];

    hostingController4 = [(WTMainPopoverViewController *)self hostingController];
    [hostingController4 setDelegate:self];

    hostingController5 = [(WTMainPopoverViewController *)self hostingController];
    sceneViewController = [hostingController5 sceneViewController];

    [(WTMainPopoverViewController *)self addChildViewController:sceneViewController];
    view = [sceneViewController view];
    view2 = [(WTMainPopoverViewController *)self view];
    [view2 addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = MEMORY[0x1E696ACD8];
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[0] = v28;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v37[1] = v25;
    topAnchor = [view topAnchor];
    topAnchor2 = [view2 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v37[2] = v19;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [view2 bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v37[3] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    [v24 activateConstraints:v23];

    [sceneViewController didMoveToParentViewController:self];
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }
}

void __49__WTMainPopoverViewController__setupSceneHosting__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained writingToolsController];
  [v1 endWritingToolsWithError:0];
}

- (void)_dismissalTransitionWillBegin:(id)begin
{
  if ([(WTMainPopoverViewController *)self presentedAsSheet])
  {
    writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
    suppressingSheetForRemoteKeyboardOnScreen = [writingToolsController suppressingSheetForRemoteKeyboardOnScreen];

    if ((suppressingSheetForRemoteKeyboardOnScreen & 1) == 0)
    {
      if ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode])
      {
        [(WTMainPopoverViewController *)self _offScreenFrame];
        [(WTMainPopoverViewController *)self setOnScreenFrameLastReportedToKeyboardTrackingCoordinator:?];
        ivsPlacementController = [(WTMainPopoverViewController *)self ivsPlacementController];
        [(WTMainPopoverViewController *)self _onScreenFrame];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;
        [(WTMainPopoverViewController *)self onScreenFrameLastReportedToKeyboardTrackingCoordinator];
        [ivsPlacementController animateTrackingElementsFromStart:0 toEnd:v7 forShow:{v9, v11, v13, v14, v15, v16, v17}];
      }
    }
  }
}

- (void)_dismissalTransitionDidEnd:(id)end
{
  endCopy = end;
  if ([(WTMainPopoverViewController *)self presentedAsSheet])
  {
    userInfo = [endCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DE2C0]];
    bOOLValue = [v5 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      if ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode])
      {
        [(WTMainPopoverViewController *)self _onScreenFrame];
        [(WTMainPopoverViewController *)self setOnScreenFrameLastReportedToKeyboardTrackingCoordinator:?];
        ivsPlacementController = [(WTMainPopoverViewController *)self ivsPlacementController];
        [(WTMainPopoverViewController *)self _offScreenFrame];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;
        [(WTMainPopoverViewController *)self onScreenFrameLastReportedToKeyboardTrackingCoordinator];
        [ivsPlacementController animateTrackingElementsFromStart:1 toEnd:v9 forShow:{v11, v13, v15, v16, v17, v18, v19}];
      }
    }
  }
}

- (UIWTInputViewSetPlacementController_Staging)ivsPlacementController
{
  startupOptions = [(WTMainPopoverViewController *)self startupOptions];
  editable = [startupOptions editable];

  if (editable)
  {
    v5 = self->_ivsPlacementController;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_sendKeyboardTrackingNotificationsForReason:(id)reason
{
  v37 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  sheetController = [(WTMainPopoverViewController *)self sheetController];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __75__WTMainPopoverViewController__sendKeyboardTrackingNotificationsForReason___block_invoke;
  v30[3] = &unk_1E8480BF8;
  v30[4] = self;
  [sheetController animateChanges:v30];

  if ([(WTMainPopoverViewController *)self presenting]|| [(WTMainPopoverViewController *)self isViewApparent])
  {
    [(WTMainPopoverViewController *)self _startFrameForAnimation];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(WTMainPopoverViewController *)self _onScreenFrame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [(WTMainPopoverViewController *)self setOnScreenFrameLastReportedToKeyboardTrackingCoordinator:?];
    v38.origin.x = v7;
    v38.origin.y = v9;
    v38.size.width = v11;
    v38.size.height = v13;
    v41.origin.x = v15;
    v41.origin.y = v17;
    v41.size.width = v19;
    v41.size.height = v21;
    if (!CGRectEqualToRect(v38, v41))
    {
      v22 = _WTSizingLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v39.origin.x = v7;
        v39.origin.y = v9;
        v39.size.width = v11;
        v39.size.height = v13;
        v23 = NSStringFromCGRect(v39);
        [(WTMainPopoverViewController *)self onScreenFrameLastReportedToKeyboardTrackingCoordinator];
        v24 = NSStringFromCGRect(v40);
        *buf = 138412802;
        v32 = v23;
        v33 = 2112;
        v34 = v24;
        v35 = 2112;
        v36 = reasonCopy;
        _os_log_impl(&dword_1D451D000, v22, OS_LOG_TYPE_DEFAULT, "Send keyboard tracking notification now (start:%@, end:%@, reason:%@)", buf, 0x20u);
      }

      ivsPlacementController = [(WTMainPopoverViewController *)self ivsPlacementController];
      [(WTMainPopoverViewController *)self onScreenFrameLastReportedToKeyboardTrackingCoordinator];
      [ivsPlacementController animateTrackingElementsFromStart:1 toEnd:v7 forShow:{v9, v11, v13, v26, v27, v28, v29}];
    }
  }
}

void __75__WTMainPopoverViewController__sendKeyboardTrackingNotificationsForReason___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sheetController];
  [v1 invalidateDetents];
}

- (id)_sourceResponderWindow
{
  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
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
  [(WTMainPopoverViewController *)self writingToolsKeyboardFrame];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  IsNull = CGRectIsNull(v38);
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  if (!IsNull)
  {
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    if (!CGRectEqualToRect(v39, *MEMORY[0x1E695F058]))
    {
      v14 = [(WTMainPopoverViewController *)self _screenForWindow:windowCopy];
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      v15 = CGRectGetHeight(v40);
      [v14 bounds];
      MinX = CGRectGetMinX(v41);
      [v14 bounds];
      v17 = CGRectGetMaxY(v42) - v15;
      [v14 bounds];
      v18 = CGRectGetWidth(v43);
      windowScene = [windowCopy windowScene];
      coordinateSpace = [windowScene coordinateSpace];

      if (!coordinateSpace)
      {
        coordinateSpace = [windowCopy coordinateSpace];
      }

      coordinateSpace2 = [v14 coordinateSpace];
      [coordinateSpace2 convertRect:coordinateSpace toCoordinateSpace:{MinX, v17, v18, v15}];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      [windowCopy bounds];
      v47.origin.x = v30;
      v47.origin.y = v31;
      v47.size.width = v32;
      v47.size.height = v33;
      v44.origin.x = v23;
      v44.origin.y = v25;
      v44.size.width = v27;
      v44.size.height = v29;
      v45 = CGRectIntersection(v44, v47);
      v10 = v45.origin.x;
      v11 = v45.origin.y;
      v12 = v45.size.width;
      v13 = v45.size.height;
    }
  }

  v34 = v10;
  v35 = v11;
  v36 = v12;
  v37 = v13;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)_onScreenFrame
{
  _sourceResponderWindow = [(WTMainPopoverViewController *)self _sourceResponderWindow];
  v4 = 0.0;
  if (+[WTWritingToolsController _isWritingToolsHandlingKeyboardTracking])
  {
    [(WTMainPopoverViewController *)self keyboardFrameInWindow:_sourceResponderWindow];
    v4 = v5;
  }

  if ([(WTMainPopoverViewController *)self presentedAsSheet])
  {
    [(WTMainPopoverViewController *)self _currentDetentHeight];
    v4 = v4 + v6;
  }

  [_sourceResponderWindow bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(WTMainPopoverViewController *)self _screenForWindow:_sourceResponderWindow];
  windowScene = [_sourceResponderWindow windowScene];
  coordinateSpace = [windowScene coordinateSpace];

  if (!coordinateSpace)
  {
    coordinateSpace = [_sourceResponderWindow coordinateSpace];
  }

  coordinateSpace2 = [v15 coordinateSpace];
  [coordinateSpace convertRect:coordinateSpace2 toCoordinateSpace:{v8, v10 + v14 - v4, v12, v4}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)_offScreenFrame
{
  [(WTMainPopoverViewController *)self _onScreenFrame];
  v6 = v5 + v4;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v6;
  result.origin.x = v2;
  return result;
}

- (double)_smallDetentHeight
{
  [(WTMainPopoverViewController *)self smallDetentKeyboardHeight];
  v4 = v3;
  enableSmallDetent = [(WTMainPopoverViewController *)self enableSmallDetent];
  result = *MEMORY[0x1E69DE3C0];
  if (enableSmallDetent)
  {
    return v4;
  }

  return result;
}

- (CGRect)_startFrameForAnimation
{
  [(WTMainPopoverViewController *)self onScreenFrameLastReportedToKeyboardTrackingCoordinator];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  if (CGRectIsNull(v15) || (v16.origin.x = x, v16.origin.y = y, v16.size.width = width, v16.size.height = height, CGRectEqualToRect(v16, *MEMORY[0x1E695F058])))
  {
    [(WTMainPopoverViewController *)self _offScreenFrame];
    x = v7;
    y = v8;
    width = v9;
    height = v10;
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)_currentDetentHeight
{
  v40 = *MEMORY[0x1E69E9840];
  sheetController = [(WTMainPopoverViewController *)self sheetController];
  selectedDetentIdentifier = [sheetController selectedDetentIdentifier];

  if (selectedDetentIdentifier)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    sheetController2 = [(WTMainPopoverViewController *)self sheetController];
    detents = [sheetController2 detents];

    v7 = [detents countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(detents);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        identifier = [v11 identifier];
        v13 = [identifier isEqualToString:selectedDetentIdentifier];

        if (v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [detents countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      [v11 resolvedValueInContext:0];
      v15 = v14;
      v16 = *MEMORY[0x1E69DE3C0];

      if (v15 != v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_10:
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  sheetController3 = [(WTMainPopoverViewController *)self sheetController];
  detents2 = [sheetController3 detents];

  v19 = [detents2 countByEnumeratingWithState:&v30 objects:v38 count:16];
  v15 = 0.0;
  if (v19)
  {
    v20 = v19;
    v21 = *v31;
    v22 = *MEMORY[0x1E69DE3C0];
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(detents2);
        }

        [*(*(&v30 + 1) + 8 * i) resolvedValueInContext:0];
        if (v24 != v22)
        {
          v15 = v24;
          goto LABEL_22;
        }
      }

      v20 = [detents2 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

LABEL_23:
  presentingViewController = [(WTMainPopoverViewController *)self presentingViewController];
  view = [presentingViewController view];
  [view safeAreaInsets];
  v28 = v27;

  return v15 + v28;
}

- (void)_movePopoverBackToDefaultPosition
{
  if ([(WTMainPopoverViewController *)self adjustedPopoverContainerViewFrame])
  {
    [(WTMainPopoverViewController *)self setAdjustedPopoverContainerViewFrame:0];
    presentationController = [(WTMainPopoverViewController *)self presentationController];
    containerView = [presentationController containerView];

    presentationController2 = [(WTMainPopoverViewController *)self presentationController];
    superview = [containerView superview];
    [presentationController2 _frameForTransitionViewInPresentationSuperview:superview];
    [containerView setFrame:?];

    [containerView setNeedsLayout];
    [containerView layoutIfNeeded];
  }
}

- (void)handoffFromUCBFromTool:(int64_t)tool withPrompt:(id)prompt
{
  promptCopy = prompt;
  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController handoffFromUCBFromTool:tool withPrompt:promptCopy];
}

- (void)enrollmentBegan
{
  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController enrollmentBegan];
}

- (void)enrollmentDismissedWithCompletion:(id)completion
{
  completionCopy = completion;
  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController enrollmentDismissedWithCompletion:completionCopy];
}

- (void)triggerShareSheetWithText:(id)text
{
  textCopy = text;
  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController triggerShareSheetWithText:textCopy];
}

- (void)dismissShareSheet
{
  writingToolsController = [(WTMainPopoverViewController *)self writingToolsController];
  [writingToolsController dismissShareSheet];
}

- (void)resetPresentationSelectedDetent
{
  sheetController = [(WTMainPopoverViewController *)self sheetController];
  [sheetController setSelectedDetentIdentifier:0];
}

- (WTWritingToolsController)writingToolsController
{
  WeakRetained = objc_loadWeakRetained(&self->_writingToolsController);

  return WeakRetained;
}

- (UISheetPresentationController)sheetController
{
  WeakRetained = objc_loadWeakRetained(&self->_sheetController);

  return WeakRetained;
}

- (CGRect)onScreenFrameLastReportedToKeyboardTrackingCoordinator
{
  x = self->_onScreenFrameLastReportedToKeyboardTrackingCoordinator.origin.x;
  y = self->_onScreenFrameLastReportedToKeyboardTrackingCoordinator.origin.y;
  width = self->_onScreenFrameLastReportedToKeyboardTrackingCoordinator.size.width;
  height = self->_onScreenFrameLastReportedToKeyboardTrackingCoordinator.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)writingToolsKeyboardFrame
{
  x = self->_writingToolsKeyboardFrame.origin.x;
  y = self->_writingToolsKeyboardFrame.origin.y;
  width = self->_writingToolsKeyboardFrame.size.width;
  height = self->_writingToolsKeyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)pendingWritingToolsKeyboardFrame
{
  x = self->_pendingWritingToolsKeyboardFrame.origin.x;
  y = self->_pendingWritingToolsKeyboardFrame.origin.y;
  width = self->_pendingWritingToolsKeyboardFrame.size.width;
  height = self->_pendingWritingToolsKeyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end