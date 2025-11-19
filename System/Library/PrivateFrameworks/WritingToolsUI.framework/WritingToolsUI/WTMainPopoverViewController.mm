@interface WTMainPopoverViewController
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (CGRect)_offScreenFrame;
- (CGRect)_onScreenFrame;
- (CGRect)_startFrameForAnimation;
- (CGRect)keyboardFrameInWindow:(id)a3;
- (CGRect)onScreenFrameLastReportedToKeyboardTrackingCoordinator;
- (CGRect)pendingWritingToolsKeyboardFrame;
- (CGRect)writingToolsKeyboardFrame;
- (UISheetPresentationController)sheetController;
- (UIWTInputViewSetPlacementController_Staging)ivsPlacementController;
- (WTMainPopoverViewController)initWithWritingToolsController:(id)a3 startupOptions:(id)a4;
- (WTWritingToolsController)writingToolsController;
- (double)_currentDetentHeight;
- (double)_smallDetentHeight;
- (id)_screenForWindow:(id)a3;
- (id)_sourceResponderWindow;
- (void)_dismissalTransitionDidEnd:(id)a3;
- (void)_dismissalTransitionWillBegin:(id)a3;
- (void)_movePopoverBackToDefaultPosition;
- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4;
- (void)_sendKeyboardTrackingNotificationsForReason:(id)a3;
- (void)_setupSceneHosting;
- (void)applicationDidResume;
- (void)beginTextPlaceholder;
- (void)compositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)copyText:(id)a3;
- (void)didBeginWritingToolsSession:(id)a3 contexts:(id)a4;
- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)didStartMontaraRefinementForSessionWithUUID:(id)a3;
- (void)dismissShareSheet;
- (void)enableIntelligentEntryFieldView:(BOOL)a3;
- (void)enableSmallDetent:(BOOL)a3;
- (void)endTextPlaceholderAndWillInsertText:(BOOL)a3 completion:(id)a4;
- (void)endWritingTools;
- (void)endWritingToolsWithError:(id)a3;
- (void)enrollmentBegan;
- (void)enrollmentDismissedWithCompletion:(id)a3;
- (void)handoffFromUCBFromTool:(int64_t)a3 withPrompt:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)proofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6;
- (void)proofreadingSessionWithUUID:(id)a3 updateState:(int64_t)a4 forSuggestionWithUUID:(id)a5;
- (void)redo;
- (void)replaceSelectionWithText:(id)a3;
- (void)repositionWithKeyboardChangedInformation:(id)a3;
- (void)resetPresentationSelectedDetent;
- (void)setFeedbackHiddenDetentEnabled:(BOOL)a3;
- (void)setRemainingRedoCount:(unint64_t)a3;
- (void)setRemainingUndoCount:(unint64_t)a3;
- (void)showContentWarningWithTitle:(id)a3 message:(id)a4;
- (void)sourceResponderHorizontalSizeClassChanged:(int64_t)a3;
- (void)triggerShareSheetWithText:(id)a3;
- (void)undo;
- (void)updatePromptEntryState:(int64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4;
- (void)windowingModeEnabledChanged:(BOOL)a3;
- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)a3 preferredContentSizeChanging:(BOOL)a4;
- (void)writingToolsSession:(id)a3 didReceiveAction:(int64_t)a4;
@end

@implementation WTMainPopoverViewController

- (WTMainPopoverViewController)initWithWritingToolsController:(id)a3 startupOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = WTMainPopoverViewController;
  v8 = [(WTMainPopoverViewController *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_writingToolsController, v6);
    objc_storeStrong(&v9->_startupOptions, a4);
    v10 = [v7 sessionUUID];
    sessionUUID = v9->_sessionUUID;
    v9->_sessionUUID = v10;

    [(WTMainPopoverViewController *)v9 setModalPresentationStyle:7];
    v12 = [(WTMainPopoverViewController *)v9 presentationController];
    [v12 setDelegate:v9];

    v13 = NSClassFromString(&cfstr_Uiwtinputviews.isa);
    if (v13)
    {
      v14 = objc_alloc_init(v13);
      ivsPlacementController = v9->_ivsPlacementController;
      v9->_ivsPlacementController = v14;
    }

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v9 selector:sel__dismissalTransitionWillBegin_ name:*MEMORY[0x1E69DE2D0] object:v9];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v9 selector:sel__dismissalTransitionDidEnd_ name:*MEMORY[0x1E69DE2C8] object:v9];

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

- (void)repositionWithKeyboardChangedInformation:(id)a3
{
  v33 = a3;
  if ([v33 isFloating] || -[WTMainPopoverViewController presentedAsSheet](self, "presentedAsSheet") || (objc_msgSend(v33, "keyboardOnScreen") & 1) == 0)
  {
    [(WTMainPopoverViewController *)self _movePopoverBackToDefaultPosition];
  }

  else
  {
    v4 = [(WTMainPopoverViewController *)self presentationController];
    v5 = [v4 containerView];

    [v33 keyboardPosition];
    v7 = v6;
    v9 = v8;
    v10 = [v5 window];
    v11 = [v10 screen];
    [v11 bounds];
    v13 = v12;

    v14 = [v5 window];
    v15 = [v14 screen];
    v16 = [v15 coordinateSpace];
    [v5 convertRect:v16 fromCoordinateSpace:{0.0, v13 - v9, v7, v9}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v5 bounds];
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
      [v5 bounds];
      v39.origin.x = v29;
      v39.origin.y = v30;
      v39.size.width = v31;
      v39.size.height = v32;
      v36.origin.x = v18;
      v36.origin.y = v20;
      v36.size.width = v22;
      v36.size.height = v24;
      v37 = CGRectIntersection(v36, v39);
      [v5 frame];
      [v5 setFrame:?];
      [v5 setNeedsLayout];
      [v5 layoutIfNeeded];
      [(WTMainPopoverViewController *)self setAdjustedPopoverContainerViewFrame:1];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WTMainPopoverViewController;
  [(WTMainPopoverViewController *)&v4 viewDidAppear:a3];
  [(WTMainPopoverViewController *)self setIsViewApparent:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(WTMainPopoverViewController *)self setIsViewApparent:0];
  v5.receiver = self;
  v5.super_class = WTMainPopoverViewController;
  [(WTMainPopoverViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = WTMainPopoverViewController;
  [(WTMainPopoverViewController *)&v10 viewDidDisappear:a3];
  v4 = _WTVCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(WTMainPopoverViewController *)self writingToolsController];
    v7 = [v5 numberWithBool:{objc_msgSend(v6, "isPopoverTemporarilyDismissed")}];
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1D451D000, v4, OS_LOG_TYPE_DEFAULT, "viewDidDisappear isPopoverTemporarilyDismissed: %@", buf, 0xCu);
  }

  v8 = [(WTMainPopoverViewController *)self writingToolsController];
  v9 = [v8 isPopoverTemporarilyDismissed];

  if ((v9 & 1) == 0)
  {
    [(WTMainPopoverViewController *)self endWritingTools];
  }
}

- (void)applicationDidResume
{
  v4.receiver = self;
  v4.super_class = WTMainPopoverViewController;
  [(WTMainPopoverViewController *)&v4 applicationDidResume];
  v3 = [(WTMainPopoverViewController *)self writingToolsController];
  [v3 updateKBSuppression];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v17.receiver = self;
  v17.super_class = WTMainPopoverViewController;
  [(WTMainPopoverViewController *)&v17 didRotateFromInterfaceOrientation:a3];
  [(WTMainPopoverViewController *)self onScreenFrameLastReportedToKeyboardTrackingCoordinator];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(WTMainPopoverViewController *)self _onScreenFrame];
  [(WTMainPopoverViewController *)self setOnScreenFrameLastReportedToKeyboardTrackingCoordinator:?];
  v12 = [(WTMainPopoverViewController *)self ivsPlacementController];
  [(WTMainPopoverViewController *)self onScreenFrameLastReportedToKeyboardTrackingCoordinator];
  [v12 animateTrackingElementsFromStart:1 toEnd:v5 forShow:{v7, v9, v11, v13, v14, v15, v16}];
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = (a4 == 2) ^ [(WTMainPopoverViewController *)self presentedAsSheet];
  if (v7 == 1)
  {
    [(WTMainPopoverViewController *)self setPresentedAsSheet:a4 == 2];
  }

  v8 = _WTVCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[WTMainPopoverViewController presentedAsSheet](self, "presentedAsSheet")}];
    v22 = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_DEFAULT, "presentationController:willPresentWithAdaptiveStyle: %@, presentingAsSheet: %@", &v22, 0x16u);
  }

  v11 = [MEMORY[0x1E69DC938] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 1)
  {
    v13 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
    [v13 setHideSystemInputAssistantViewForWritingTools:{-[WTMainPopoverViewController presentedAsSheet](self, "presentedAsSheet")}];
  }

  v14 = [(WTMainPopoverViewController *)self writingToolsController];
  [v14 updateKBSuppression];

  v15 = [(WTMainPopoverViewController *)self writingToolsController];
  [v15 updateInputDashboardViewController];

  v16 = [(WTMainPopoverViewController *)self writingToolsController];
  [v16 updateSourceView];

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
    v19 = [(WTMainPopoverViewController *)self hostingController];
    [v19 sendAction:v18];
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

- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4
{
  v28[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(WTMainPopoverViewController *)self setSheetController:v7];
    v8 = [(WTMainPopoverViewController *)self sheetController];
    [v8 setPrefersEdgeAttachedInCompactHeight:1];

    v9 = [(WTMainPopoverViewController *)self sheetController];
    [v9 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];

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
    v17 = [(WTMainPopoverViewController *)self sheetController];
    [v17 setDetents:v16];

    v18 = [(WTMainPopoverViewController *)self sheetController];
    [v18 setLargestUndimmedDetentIdentifier:@"WTFullSizedDetentIdentifier"];

    v19 = [(WTMainPopoverViewController *)self sheetController];
    [v19 setPrefersGrabberVisible:1];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v7;
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

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v3 = [(WTMainPopoverViewController *)self writingToolsController];
  v4 = [v3 _sessionSupportsPopoverAdjustment];

  return v4 ^ 1;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(WTMainPopoverViewController *)self preferredContentSize];
  v6 = v5;
  v8 = v7;
  [v4 preferredContentSize];
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

  v32 = [(WTMainPopoverViewController *)self sheetPresentationController];
  v33 = [v32 selectedDetentIdentifier];
  v34 = [v33 isEqualToString:@"WTKeyboardSizedDetentIdentifier"];

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
    v14 = "[WTMainPopoverViewController willBeginWritingToolsSession:requestContexts:]";
    v15 = 2112;
    v16 = self;
    v17 = 2112;
    v18 = v9;
    v19 = 2048;
    v20 = [v6 type];
    _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_INFO, "%s (%@, sessUUIS: %@, sessType: %lu)", &v13, 0x2Au);
  }

  v10 = [(WTMainPopoverViewController *)self sessionUUID];

  if (!v10)
  {
    v11 = [v6 uuid];
    [(WTMainPopoverViewController *)self setSessionUUID:v11];
  }

  v12 = [(WTMainPopoverViewController *)self writingToolsController];
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
    v12 = "[WTMainPopoverViewController didBeginWritingToolsSession:contexts:]";
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

  v10 = [(WTMainPopoverViewController *)self writingToolsController];
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
    v11 = "[WTMainPopoverViewController writingToolsSession:didReceiveAction:]";
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

  v9 = [(WTMainPopoverViewController *)self writingToolsController];
  [v9 writingToolsSession:v6 didReceiveAction:a4];
}

- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _WTVCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 uuid];
    v9 = [v6 type];
    v12 = 136316162;
    v13 = "[WTMainPopoverViewController didEndWritingToolsSession:accepted:]";
    v10 = "no";
    if (v4)
    {
      v10 = "yes";
    }

    v14 = 2112;
    v15 = self;
    v16 = 2112;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    v20 = 2080;
    v21 = v10;
    _os_log_impl(&dword_1D451D000, v7, OS_LOG_TYPE_INFO, "%s (%@, sessUUIS: %@, sessType: %lu, accepted: %s)", &v12, 0x34u);
  }

  v11 = [(WTMainPopoverViewController *)self writingToolsController];
  [v11 didEndWritingToolsSession:v6 accepted:v4];
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
    v23 = "[WTMainPopoverViewController compositionSession:didReceiveText:replacementRange:inContext:finished:]";
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

  v21 = [(WTMainPopoverViewController *)self writingToolsController];
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
  v16 = [(WTMainPopoverViewController *)self writingToolsController];
  [v16 proofreadingSession:v15 didReceiveSuggestions:v14 processedRange:location inContext:length finished:{v13, v7}];
}

- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(WTMainPopoverViewController *)self writingToolsController];
  [v13 proofreadingSession:v12 didUpdateState:a4 forSuggestionWithUUID:v11 inContext:v10];
}

- (void)endWritingToolsWithError:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[WTMainPopoverViewController endWritingToolsWithError:]";
    v16 = 2112;
    v17 = self;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, error: %@)", &v14, 0x20u);
  }

  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  [(WTMainPopoverViewController *)self setPendingWritingToolsKeyboardFrame:*MEMORY[0x1E695F050], v7, v8, v9];
  [(WTMainPopoverViewController *)self setWritingToolsKeyboardFrame:v6, v7, v8, v9];
  v10 = [(WTMainPopoverViewController *)self writingToolsController];
  [v10 endWritingToolsWithError:v4];

  [(WTMainPopoverViewController *)self setPresentedAsSheet:0];
  v11 = [MEMORY[0x1E69DC938] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 1)
  {
    v13 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
    [v13 setHideSystemInputAssistantViewForWritingTools:0];
  }
}

- (void)showContentWarningWithTitle:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WTMainPopoverViewController *)self writingToolsController];
  [v8 showContentWarningWithTitle:v7 message:v6];
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
    v7 = self;
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
    v8 = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  v4 = [(WTMainPopoverViewController *)self writingToolsController];
  [v4 undo];
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
    v8 = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  v4 = [(WTMainPopoverViewController *)self writingToolsController];
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
    v8 = "[WTMainPopoverViewController replaceSelectionWithText:]";
    v9 = 2112;
    v10 = self;
    v11 = 2048;
    v12 = [v4 length];
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, textLen=%lu)", &v7, 0x20u);
  }

  v6 = [(WTMainPopoverViewController *)self writingToolsController];
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
    v8 = "[WTMainPopoverViewController copyText:]";
    v9 = 2112;
    v10 = self;
    v11 = 2048;
    v12 = [v4 length];
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, textLen: %lu)", &v7, 0x20u);
  }

  v6 = [(WTMainPopoverViewController *)self writingToolsController];
  [v6 copyText:v4];
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
    v8 = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  v4 = [(WTMainPopoverViewController *)self writingToolsController];
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
    v11 = "[WTMainPopoverViewController endTextPlaceholderAndWillInsertText:completion:]";
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

  v9 = [(WTMainPopoverViewController *)self writingToolsController];
  [v9 endTextPlaceholderAndWillInsertText:v4 completion:v6];
}

- (void)enableSmallDetent:(BOOL)a3
{
  v3 = a3;
  v5 = [(WTMainPopoverViewController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 1)
  {
    v7 = [(WTMainPopoverViewController *)self enableSmallDetent];
    [(WTMainPopoverViewController *)self setEnableSmallDetent:v3];
    if (v7 != v3 && [(WTMainPopoverViewController *)self presentedAsSheet]&& v3)
    {

      [(WTMainPopoverViewController *)self _sendKeyboardTrackingNotificationsForReason:@"enableSmallDetent"];
    }
  }
}

- (void)setFeedbackHiddenDetentEnabled:(BOOL)a3
{
  if ([(WTMainPopoverViewController *)self isFeedbackHiddenDetentEnabled]!= a3)
  {
    self->_isFeedbackHiddenDetentEnabled = a3;
    v5 = [(WTMainPopoverViewController *)self sheetController];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__WTMainPopoverViewController_setFeedbackHiddenDetentEnabled___block_invoke;
    v6[3] = &unk_1E8480BD0;
    v7 = a3;
    v6[4] = self;
    [v5 animateChanges:v6];
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

- (void)enableIntelligentEntryFieldView:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "EnableIntelligentEntryFieldView: %@", &v8, 0xCu);
  }

  [(WTMainPopoverViewController *)self setIntelligentEntryFieldViewIsEnabled:v3];
  [(WTMainPopoverViewController *)self setEnableSmallDetent:v3 ^ 1];
  v7 = [(WTMainPopoverViewController *)self sheetController];
  [v7 setPrefersGrabberVisible:v3 ^ 1];
}

- (void)updatePromptEntryState:(int64_t)a3
{
  v4 = [(WTMainPopoverViewController *)self writingToolsController];
  [v4 updatePromptEntryState:a3];
}

- (void)didStartMontaraRefinementForSessionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(WTMainPopoverViewController *)self writingToolsController];
  [v5 didStartMontaraRefinementForSessionWithUUID:v4];
}

- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)a3 preferredContentSizeChanging:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    if (v4)
    {
      v13 = "Y";
    }

    v14 = 138412546;
    v15 = v11;
    v16 = 2080;
    v17 = v13;
    _os_log_impl(&dword_1D451D000, v10, OS_LOG_TYPE_DEFAULT, "-writingToolsDidUpdateKeyboardPosition:%@ preferredContentSizeChanging:%s", &v14, 0x16u);
  }

  if (v4)
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

- (void)proofreadingSessionWithUUID:(id)a3 updateState:(int64_t)a4 forSuggestionWithUUID:(id)a5
{
  v7 = [WTUIActionHostToClient actionForProofreadingSessionWithUUID:a3 updateState:a4 forSuggestionWithUUID:a5];
  v6 = [(WTMainPopoverViewController *)self hostingController];
  [v6 sendAction:v7];
}

- (void)setRemainingUndoCount:(unint64_t)a3
{
  v5 = [WTUIActionHostToClient actionForSetRemainingUndoCount:a3];
  v4 = [(WTMainPopoverViewController *)self hostingController];
  [v4 sendAction:v5];
}

- (void)setRemainingRedoCount:(unint64_t)a3
{
  v5 = [WTUIActionHostToClient actionForSetRemainingRedoCount:a3];
  v4 = [(WTMainPopoverViewController *)self hostingController];
  [v4 sendAction:v5];
}

- (void)sourceResponderHorizontalSizeClassChanged:(int64_t)a3
{
  v5 = [WTUIActionHostToClient actionForSourceResponderHorizontalSizeClassChanged:a3];
  v4 = [(WTMainPopoverViewController *)self hostingController];
  [v4 sendAction:v5];
}

- (void)windowingModeEnabledChanged:(BOOL)a3
{
  v5 = [WTUIActionHostToClient actionForWindowingModeEnabledChanged:a3];
  v4 = [(WTMainPopoverViewController *)self hostingController];
  [v4 sendAction:v5];
}

- (void)_setupSceneHosting
{
  v37[4] = *MEMORY[0x1E69E9840];
  v3 = [(WTMainPopoverViewController *)self hostingController];

  if (!v3)
  {
    [(WTMainPopoverViewController *)self _beginDelayingPresentation:&__block_literal_global_3 cancellationHandler:3.0];
    v32 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.WritingToolsUIService"];
    v4 = objc_alloc(MEMORY[0x1E69DD688]);
    v5 = objc_alloc_init(MEMORY[0x1E69DD6A0]);
    v6 = [v4 initWithProcessIdentity:v32 sceneSpecification:v5];
    [(WTMainPopoverViewController *)self setHostingController:v6];

    v7 = [(WTMainPopoverViewController *)self hostingController];
    v8 = [v7 _eventDeferringComponent];
    [v8 setMaintainHostFirstResponderWhenClientWantsKeyboard:1];

    v9 = [(WTMainPopoverViewController *)self startupOptions];
    v31 = [v9 asBSActionAndReturnError:0];

    objc_initWeak(&location, self);
    v10 = [WTUISceneHostingActivationController alloc];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __49__WTMainPopoverViewController__setupSceneHosting__block_invoke_2;
    v34[3] = &unk_1E8480B20;
    objc_copyWeak(&v35, &location);
    v11 = [(WTUISceneHostingActivationController *)v10 initWithStartupAction:v31 invalidationHandler:v34];
    v12 = [(WTMainPopoverViewController *)self hostingController];
    [v12 setActivationController:v11];

    v13 = [(WTMainPopoverViewController *)self hostingController];
    [v13 setDelegate:self];

    v14 = [(WTMainPopoverViewController *)self hostingController];
    v33 = [v14 sceneViewController];

    [(WTMainPopoverViewController *)self addChildViewController:v33];
    v15 = [v33 view];
    v16 = [(WTMainPopoverViewController *)self view];
    [v16 addSubview:v15];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = MEMORY[0x1E696ACD8];
    v30 = [v15 leadingAnchor];
    v29 = [v16 leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v37[0] = v28;
    v27 = [v15 trailingAnchor];
    v26 = [v16 trailingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v37[1] = v25;
    v17 = [v15 topAnchor];
    v18 = [v16 topAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v37[2] = v19;
    v20 = [v15 bottomAnchor];
    v21 = [v16 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v37[3] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    [v24 activateConstraints:v23];

    [v33 didMoveToParentViewController:self];
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

- (void)_dismissalTransitionWillBegin:(id)a3
{
  if ([(WTMainPopoverViewController *)self presentedAsSheet])
  {
    v4 = [(WTMainPopoverViewController *)self writingToolsController];
    v5 = [v4 suppressingSheetForRemoteKeyboardOnScreen];

    if ((v5 & 1) == 0)
    {
      if ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode])
      {
        [(WTMainPopoverViewController *)self _offScreenFrame];
        [(WTMainPopoverViewController *)self setOnScreenFrameLastReportedToKeyboardTrackingCoordinator:?];
        v18 = [(WTMainPopoverViewController *)self ivsPlacementController];
        [(WTMainPopoverViewController *)self _onScreenFrame];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;
        [(WTMainPopoverViewController *)self onScreenFrameLastReportedToKeyboardTrackingCoordinator];
        [v18 animateTrackingElementsFromStart:0 toEnd:v7 forShow:{v9, v11, v13, v14, v15, v16, v17}];
      }
    }
  }
}

- (void)_dismissalTransitionDidEnd:(id)a3
{
  v20 = a3;
  if ([(WTMainPopoverViewController *)self presentedAsSheet])
  {
    v4 = [v20 userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DE2C0]];
    v6 = [v5 BOOLValue];

    if ((v6 & 1) == 0)
    {
      if ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode])
      {
        [(WTMainPopoverViewController *)self _onScreenFrame];
        [(WTMainPopoverViewController *)self setOnScreenFrameLastReportedToKeyboardTrackingCoordinator:?];
        v7 = [(WTMainPopoverViewController *)self ivsPlacementController];
        [(WTMainPopoverViewController *)self _offScreenFrame];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;
        [(WTMainPopoverViewController *)self onScreenFrameLastReportedToKeyboardTrackingCoordinator];
        [v7 animateTrackingElementsFromStart:1 toEnd:v9 forShow:{v11, v13, v15, v16, v17, v18, v19}];
      }
    }
  }
}

- (UIWTInputViewSetPlacementController_Staging)ivsPlacementController
{
  v3 = [(WTMainPopoverViewController *)self startupOptions];
  v4 = [v3 editable];

  if (v4)
  {
    v5 = self->_ivsPlacementController;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_sendKeyboardTrackingNotificationsForReason:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WTMainPopoverViewController *)self sheetController];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __75__WTMainPopoverViewController__sendKeyboardTrackingNotificationsForReason___block_invoke;
  v30[3] = &unk_1E8480BF8;
  v30[4] = self;
  [v5 animateChanges:v30];

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
        v36 = v4;
        _os_log_impl(&dword_1D451D000, v22, OS_LOG_TYPE_DEFAULT, "Send keyboard tracking notification now (start:%@, end:%@, reason:%@)", buf, 0x20u);
      }

      v25 = [(WTMainPopoverViewController *)self ivsPlacementController];
      [(WTMainPopoverViewController *)self onScreenFrameLastReportedToKeyboardTrackingCoordinator];
      [v25 animateTrackingElementsFromStart:1 toEnd:v7 forShow:{v9, v11, v13, v26, v27, v28, v29}];
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
  v2 = [(WTMainPopoverViewController *)self writingToolsController];
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
      v14 = [(WTMainPopoverViewController *)self _screenForWindow:v4];
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
      v19 = [v4 windowScene];
      v20 = [v19 coordinateSpace];

      if (!v20)
      {
        v20 = [v4 coordinateSpace];
      }

      v21 = [v14 coordinateSpace];
      [v21 convertRect:v20 toCoordinateSpace:{MinX, v17, v18, v15}];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      [v4 bounds];
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
  v3 = [(WTMainPopoverViewController *)self _sourceResponderWindow];
  v4 = 0.0;
  if (+[WTWritingToolsController _isWritingToolsHandlingKeyboardTracking])
  {
    [(WTMainPopoverViewController *)self keyboardFrameInWindow:v3];
    v4 = v5;
  }

  if ([(WTMainPopoverViewController *)self presentedAsSheet])
  {
    [(WTMainPopoverViewController *)self _currentDetentHeight];
    v4 = v4 + v6;
  }

  [v3 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(WTMainPopoverViewController *)self _screenForWindow:v3];
  v16 = [v3 windowScene];
  v17 = [v16 coordinateSpace];

  if (!v17)
  {
    v17 = [v3 coordinateSpace];
  }

  v18 = [v15 coordinateSpace];
  [v17 convertRect:v18 toCoordinateSpace:{v8, v10 + v14 - v4, v12, v4}];
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
  v5 = [(WTMainPopoverViewController *)self enableSmallDetent];
  result = *MEMORY[0x1E69DE3C0];
  if (v5)
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
  v3 = [(WTMainPopoverViewController *)self sheetController];
  v4 = [v3 selectedDetentIdentifier];

  if (v4)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = [(WTMainPopoverViewController *)self sheetController];
    v6 = [v5 detents];

    v7 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        v12 = [v11 identifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
  v17 = [(WTMainPopoverViewController *)self sheetController];
  v18 = [v17 detents];

  v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
          objc_enumerationMutation(v18);
        }

        [*(*(&v30 + 1) + 8 * i) resolvedValueInContext:0];
        if (v24 != v22)
        {
          v15 = v24;
          goto LABEL_22;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

LABEL_23:
  v25 = [(WTMainPopoverViewController *)self presentingViewController];
  v26 = [v25 view];
  [v26 safeAreaInsets];
  v28 = v27;

  return v15 + v28;
}

- (void)_movePopoverBackToDefaultPosition
{
  if ([(WTMainPopoverViewController *)self adjustedPopoverContainerViewFrame])
  {
    [(WTMainPopoverViewController *)self setAdjustedPopoverContainerViewFrame:0];
    v3 = [(WTMainPopoverViewController *)self presentationController];
    v6 = [v3 containerView];

    v4 = [(WTMainPopoverViewController *)self presentationController];
    v5 = [v6 superview];
    [v4 _frameForTransitionViewInPresentationSuperview:v5];
    [v6 setFrame:?];

    [v6 setNeedsLayout];
    [v6 layoutIfNeeded];
  }
}

- (void)handoffFromUCBFromTool:(int64_t)a3 withPrompt:(id)a4
{
  v6 = a4;
  v7 = [(WTMainPopoverViewController *)self writingToolsController];
  [v7 handoffFromUCBFromTool:a3 withPrompt:v6];
}

- (void)enrollmentBegan
{
  v2 = [(WTMainPopoverViewController *)self writingToolsController];
  [v2 enrollmentBegan];
}

- (void)enrollmentDismissedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WTMainPopoverViewController *)self writingToolsController];
  [v5 enrollmentDismissedWithCompletion:v4];
}

- (void)triggerShareSheetWithText:(id)a3
{
  v4 = a3;
  v5 = [(WTMainPopoverViewController *)self writingToolsController];
  [v5 triggerShareSheetWithText:v4];
}

- (void)dismissShareSheet
{
  v2 = [(WTMainPopoverViewController *)self writingToolsController];
  [v2 dismissShareSheet];
}

- (void)resetPresentationSelectedDetent
{
  v2 = [(WTMainPopoverViewController *)self sheetController];
  [v2 setSelectedDetentIdentifier:0];
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