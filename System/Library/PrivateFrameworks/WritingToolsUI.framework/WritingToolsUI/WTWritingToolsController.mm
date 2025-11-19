@interface WTWritingToolsController
+ (BOOL)_isArbiterClientReadyForWritingToolsToHandleKeyboardTracking;
+ (BOOL)_isWritingToolsHandlingKeyboardTracking;
+ (BOOL)isAvailable;
- (BOOL)_compositionSessionActive;
- (BOOL)_isEditableResponder;
- (BOOL)_proofreadingSessionActive;
- (BOOL)_proofreadingSessionActiveOrRequested;
- (BOOL)_rewritingSessionActive;
- (BOOL)_rewritingSessionActiveOrRequested;
- (BOOL)_sessionSupportsPopoverAdjustment;
- (BOOL)_smartReplySessionActive;
- (BOOL)_smartReplySessionActiveOrRequested;
- (BOOL)_wantsInlineEditing;
- (BOOL)_wantsUCBUI;
- (BOOL)_wantsUCBUI_ucbSupported;
- (BOOL)_wantsUCBUI_ucbSupportedStageManagerActive;
- (BOOL)isPopoverTemporarilyDismissed;
- (BOOL)isVisualModeWindowed;
- (BOOL)isWindowingModeEnabled;
- (BOOL)popoverWillAdjust;
- (BOOL)shouldAdjustPopoverPresentationController:(id)a3 toRect:(CGRect)a4;
- (BOOL)shouldHostInAppSizedContainerView;
- (BOOL)supportsHostingInAppSizedContainerView;
- (CGRect)_cgRectForSelectionRects:(id)a3;
- (CGRect)_textSelectionRectForSmartReplyPopoverForRange:(id)a3 selectionRects:(id)a4;
- (CGRect)_textSelectionRectForTextInput;
- (CGRect)_visibleApproximationOfTextSelectionRect;
- (CGRect)suggestionPopoverSourceRect;
- (UIResponder)sourceResponder;
- (UITextInput)sourceTextInput;
- (UIView)suggestionPopoverSourceView;
- (WTFormSheetViewController)formSheetViewController;
- (WTFullScreenContainerViewController)currentFullScreenContainerViewController;
- (WTPromptEntryViewController)currentPromptEntryViewController;
- (WTProofreadCandidateBarView)proofreadCandidateBarView;
- (WTSuggestionViewController)currentSuggestionViewController;
- (WTWritingToolsController)initWithRequestedTool:(id)a3 inputContextHistory:(id)a4;
- (WTWritingToolsController)initWithRequestedTool:(id)a3 prompt:(id)a4 smartReplyConfiguration:(id)a5;
- (WTWritingToolsController)initWithTool:(int64_t)a3 prompt:(id)a4 smartReplyConfiguration:(id)a5;
- (WTWritingToolsDelegate)writingToolsDelegate;
- (id)_assistantBarButtonCustomViewWithTitle:(id)a3 handler:(id)a4;
- (id)_assistantProofreadBarButton;
- (id)_createCompositionInputDashboardViewController;
- (id)_createProofreadingInputDashboardViewControllerForAssistant:(BOOL)a3;
- (id)_createSmartReplyInputDashboardViewController;
- (id)_initWithRequestedTool:(id)a3 baseResponse:(id)a4 entryPoint:(id)a5 inputContextHistory:(id)a6;
- (id)_inputDashboardViewController;
- (id)_startupOptionsForSceneHostedViewControllerForRequestedTool:(int64_t)a3 isForInputDashboard:(BOOL)a4 isForAssistant:(BOOL)a5;
- (id)_textViewDelegate;
- (id)assistantBarButtonItemWithStyle:(int64_t)a3;
- (id)itemProviderForAttributedText:(id)a3;
- (id)itemProviderForPlainText:(id)a3;
- (id)sourceResponderViewController;
- (id)trailingPredictiveCandidate;
- (unint64_t)_permittedPopoverArrowDirection;
- (unint64_t)_resultOptions;
- (void)__updateSuggestionPopoverWithCompletion:(id)a3;
- (void)_checkForPendingSuggestion;
- (void)_createSmartReplyInputDashboardViewController;
- (void)_dismissFullScreenViewControllerWithCompletion:(id)a3;
- (void)_dismissPromptEntryViewController;
- (void)_dismissSuggestionViewControllerWithCompletion:(id)a3;
- (void)_presentMainPopoverViewControllerWithCompletion:(id)a3;
- (void)_presentPromptEntryViewController;
- (void)_presentSuggestionViewControllerWithCompletion:(id)a3;
- (void)_refreshSourceResponderHorizontalSizeClassState;
- (void)_refreshWindowingModeEnabled;
- (void)_revertAllSuggestions;
- (void)_sendUpdatedUndoRedoCounts;
- (void)_updatePopoverAnchoring;
- (void)_updatePromptEntryPopover;
- (void)_updateSuggestionPopover;
- (void)beginTextPlaceholder;
- (void)compositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)copyText:(id)a3;
- (void)dealloc;
- (void)didBeginWritingToolsSession:(id)a3 contexts:(id)a4;
- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4;
- (void)didStartMontaraRefinementForSessionWithUUID:(id)a3;
- (void)dismissFormsheetViewControllerWithCompletion:(id)a3;
- (void)dismissShareSheet;
- (void)endTextPlaceholderAndWillInsertText:(BOOL)a3 completion:(id)a4;
- (void)endWritingToolsWithError:(id)a3;
- (void)enrollmentBegan;
- (void)enrollmentDismissedWithCompletion:(id)a3;
- (void)handoffFromUCBFromTool:(int64_t)a3 withPrompt:(id)a4;
- (void)presentError:(id)a3;
- (void)presentFullScreenViewController;
- (void)proofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6;
- (void)proofreadingSessionWithUUID:(id)a3 showDetailsForSuggestionWithUUID:(id)a4 relativeToRect:(CGRect)a5 inView:(id)a6;
- (void)proofreadingSessionWithUUID:(id)a3 updateState:(int64_t)a4 forSuggestionWithUUID:(id)a5;
- (void)redo;
- (void)remoteKeyboardChanged:(id)a3;
- (void)replaceSelectionWithText:(id)a3;
- (void)selectionDidUpdate;
- (void)setInterfaceAutorotationDisabledIfNecessary:(BOOL)a3;
- (void)setMinimizedIntoAssistant:(BOOL)a3;
- (void)setRemainingRedoCount:(unint64_t)a3;
- (void)setRemainingUndoCount:(unint64_t)a3;
- (void)setSession:(id)a3;
- (void)setSourceResponder:(id)a3 sourceTextInput:(id)a4;
- (void)setSuppressSheetForKeyboardEditing:(BOOL)a3;
- (void)setSuppressWritingToolsForRemoteKeyboard:(BOOL)a3;
- (void)showAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 buttonAction:(id)a6;
- (void)showContentWarningWithTitle:(id)a3 message:(id)a4;
- (void)showSmartReplyQuestionnaireWithRect:(CGRect)a3;
- (void)startWritingTools;
- (void)textSystemWillBeginEditingDuringSessionWithUUID:(id)a3;
- (void)triggerShareSheetWithText:(id)a3;
- (void)undo;
- (void)updateInputDashboardViewController;
- (void)updateKBSuppression;
- (void)updatePromptEntryState:(int64_t)a3;
- (void)updateSourceView;
- (void)updateWritingToolsPopoverSuppressionWithCompletion:(id)a3;
- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4;
- (void)writingToolsSession:(id)a3 didReceiveAction:(int64_t)a4;
@end

@implementation WTWritingToolsController

+ (BOOL)isAvailable
{
  v2 = objc_opt_self();

  return [v2 isAvailable];
}

- (WTWritingToolsController)initWithRequestedTool:(id)a3 inputContextHistory:(id)a4
{
  v6 = MEMORY[0x1E69E3160];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithInputContextHistory:v7];

  v10 = [(WTWritingToolsController *)self initWithRequestedTool:v8 prompt:0 smartReplyConfiguration:v9];
  return v10;
}

- (id)_initWithRequestedTool:(id)a3 baseResponse:(id)a4 entryPoint:(id)a5 inputContextHistory:(id)a6
{
  v10 = MEMORY[0x1E69E3160];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[v10 alloc] initWithInputContextHistory:v11];

  [v15 setBaseResponse:v13];
  [v15 setEntryPoint:v12];

  v16 = [(WTWritingToolsController *)self initWithRequestedTool:v14 smartReplyConfiguration:v15];
  return v16;
}

- (WTWritingToolsController)initWithRequestedTool:(id)a3 prompt:(id)a4 smartReplyConfiguration:(id)a5
{
  v18[14] = *MEMORY[0x1E69E9840];
  v17[0] = @"WTUIRequestedToolNone";
  v17[1] = @"WTUIRequestedToolProofreading";
  v18[0] = &unk_1F4FCB500;
  v18[1] = &unk_1F4FCB518;
  v17[2] = @"WTUIRequestedToolRewriting";
  v17[3] = @"WTUIRequestedToolRewriteProofread";
  v18[2] = &unk_1F4FCB530;
  v18[3] = &unk_1F4FCB548;
  v17[4] = @"WTUIRequestedToolSmartReply";
  v17[5] = @"WTUIRequestedToolRewriteFriendly";
  v18[4] = &unk_1F4FCB560;
  v18[5] = &unk_1F4FCB578;
  v17[6] = @"WTUIRequestedToolRewriteProfessional";
  v17[7] = @"WTUIRequestedToolRewriteConcise";
  v18[6] = &unk_1F4FCB590;
  v18[7] = &unk_1F4FCB5A8;
  v17[8] = @"WTUIRequestedToolRewriteOpenEnded";
  v17[9] = @"WTUIRequestedToolSummary";
  v18[8] = &unk_1F4FCB5C0;
  v18[9] = &unk_1F4FCB5D8;
  v17[10] = @"WTUIRequestedToolTransformKeyPoints";
  v17[11] = @"WTUIRequestedToolTransformList";
  v18[10] = &unk_1F4FCB5F0;
  v18[11] = &unk_1F4FCB608;
  v17[12] = @"WTUIRequestedToolTransformTable";
  v17[13] = @"WTUIRequestedToolCompose";
  v18[12] = &unk_1F4FCB620;
  v18[13] = &unk_1F4FCB638;
  v8 = MEMORY[0x1E695DF20];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v18 forKeys:v17 count:14];
  v13 = [v12 objectForKeyedSubscript:v11];

  v14 = [v13 integerValue];
  v15 = [(WTWritingToolsController *)self initWithTool:v14 prompt:v10 smartReplyConfiguration:v9];

  return v15;
}

- (WTWritingToolsController)initWithTool:(int64_t)a3 prompt:(id)a4 smartReplyConfiguration:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = WTWritingToolsController;
  v11 = [(WTWritingToolsController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_requestedTool = a3;
    objc_storeStrong(&v11->_prompt, a4);
    objc_storeStrong(&v12->_smartReplyConfig, a5);
    v13 = dispatch_queue_create("com.apple.WritingToolsUIService.SuggestionQueue", 0);
    suggestionQueue = v12->_suggestionQueue;
    v12->_suggestionQueue = v13;
  }

  return v12;
}

- (void)dealloc
{
  [(WTWritingToolsController *)self setInterfaceAutorotationDisabledIfNecessary:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE2E0] object:self];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE2D8] object:self];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x1E69DE2D0] object:self];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x1E69DE2C8] object:self];

  v7.receiver = self;
  v7.super_class = WTWritingToolsController;
  [(WTWritingToolsController *)&v7 dealloc];
}

+ (BOOL)_isArbiterClientReadyForWritingToolsToHandleKeyboardTracking
{
  v2 = [MEMORY[0x1E69DCC08] automaticKeyboardArbiterClient];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 _isArbiterClientReadyForWritingToolsToHandleKeyboardTracking];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)_isWritingToolsHandlingKeyboardTracking
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WTWritingToolsController__isWritingToolsHandlingKeyboardTracking__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_isWritingToolsHandlingKeyboardTracking_onceToken != -1)
  {
    dispatch_once(&_isWritingToolsHandlingKeyboardTracking_onceToken, block);
  }

  return _isWritingToolsHandlingKeyboardTracking_isWritingToolsHandlingKeyboardTracking;
}

void __67__WTWritingToolsController__isWritingToolsHandlingKeyboardTracking__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _isWritingToolsReadyToHandleKeyboardTracking];
  v3 = [*(a1 + 32) _isArbiterClientReadyForWritingToolsToHandleKeyboardTracking];
  _isWritingToolsHandlingKeyboardTracking_isWritingToolsHandlingKeyboardTracking = v2 & v3;
  v4 = _WTVCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "N";
    if (_isWritingToolsHandlingKeyboardTracking_isWritingToolsHandlingKeyboardTracking)
    {
      v6 = "Y";
    }

    else
    {
      v6 = "N";
    }

    if (v2)
    {
      v7 = "Y";
    }

    else
    {
      v7 = "N";
    }

    v8 = 136315650;
    v9 = v6;
    v10 = 2080;
    v11 = v7;
    if (v3)
    {
      v5 = "Y";
    }

    v12 = 2080;
    v13 = v5;
    _os_log_impl(&dword_1D451D000, v4, OS_LOG_TYPE_DEFAULT, "isWritingToolsHandlingKeyboardTracking:%s (WT ready:%s, Arbiter ready:%s)", &v8, 0x20u);
  }
}

- (void)setSourceResponder:(id)a3 sourceTextInput:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_storeWeak(&self->_sourceResponder, v6);
  objc_storeWeak(&self->_sourceTextInput, v7);
  if ([v7 conformsToProtocol:&unk_1F4FEDF78])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  beTextInput = self->_beTextInput;
  self->_beTextInput = v8;

  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_sourceResponder);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_sourceResponder);
    v13 = objc_opt_self();
    v22[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __63__WTWritingToolsController_setSourceResponder_sourceTextInput___block_invoke;
    v19 = &unk_1E8480C48;
    objc_copyWeak(&v20, &location);
    v15 = [v12 registerForTraitChanges:v14 withHandler:&v16];

    objc_destroyWeak(&v20);
  }

  [(WTWritingToolsController *)self _refreshSourceResponderHorizontalSizeClassState:v16];
  objc_destroyWeak(&location);
}

void __63__WTWritingToolsController_setSourceResponder_sourceTextInput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshSourceResponderHorizontalSizeClassState];
}

- (void)startWritingTools
{
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_DEFAULT, "startWritingTools", v12, 2u);
  }

  v4 = [MEMORY[0x1E69DC940] activeInstance];
  [v4 cancelDictation];

  v5 = [(WTWritingToolsController *)self requestedTool]== 101;
  v6 = [MEMORY[0x1E696AFB0] UUID];
  analyticsUUID = self->_analyticsUUID;
  self->_analyticsUUID = v6;

  v8 = [WTAnalyticsDelegate alloc];
  v9 = [(WTWritingToolsController *)self smartReplyConfig];
  v10 = [(WTWritingToolsController *)self analyticsUUID];
  v11 = [(WTAnalyticsDelegate *)v8 initWithSmartReplyBool:v5 smartReplyConfig:v9 analyticsUUID:v10 requestedTool:[(WTWritingToolsController *)self requestedTool] isEditable:[(WTWritingToolsController *)self _isEditableResponder]];
  [(WTWritingToolsController *)self setAnalyticsDelegate:v11];

  [(WTWritingToolsController *)self setRemainingUndoCount:0];
  [(WTWritingToolsController *)self setRemainingRedoCount:0];
  [(WTWritingToolsController *)self setIsWritingToolsActive:1];
  [(WTWritingToolsController *)self setIsPresentingPopoverFromEditableResponder:[(WTWritingToolsController *)self _isEditableResponder]];
  [(WTWritingToolsController *)self updateSourceView];
  if ([(WTWritingToolsController *)self requestedTool]!= 101)
  {
    [(WTWritingToolsController *)self setRequestedTool:0];
  }
}

- (void)endWritingToolsWithError:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v4;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "endWritingToolsWithError %@", buf, 0xCu);
  }

  if ([(WTWritingToolsController *)self _proofreadingSessionActive])
  {
    goto LABEL_4;
  }

  if ([(WTWritingToolsController *)self _rewritingSessionActive]|| [(WTWritingToolsController *)self _smartReplySessionActive])
  {
    v6 = 0;
    goto LABEL_8;
  }

  if ([(WTWritingToolsController *)self _compositionSessionActive])
  {
LABEL_4:
    v6 = 1;
LABEL_8:
    v7 = [(WTWritingToolsController *)self session];
    [(WTWritingToolsController *)self didEndWritingToolsSession:v7 accepted:v6];
  }

  v8 = [(WTWritingToolsController *)self mainPopoverViewController];

  if (v8)
  {
    v9 = _WTVCLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D451D000, v9, OS_LOG_TYPE_DEFAULT, "dismissViewController (Popover) for endWritingTools", buf, 2u);
    }

    v10 = [(WTWritingToolsController *)self mainPopoverViewController];
    v11 = [v10 presentingViewController];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __53__WTWritingToolsController_endWritingToolsWithError___block_invoke;
    v30[3] = &unk_1E8480C70;
    v31 = v4;
    v32 = self;
    [v11 dismissViewControllerAnimated:1 completion:v30];

    [(WTWritingToolsController *)self setMainPopoverViewController:0];
    v12 = v31;
LABEL_21:

    goto LABEL_22;
  }

  v13 = [(WTWritingToolsController *)self fullScreenContainerViewController];

  if (v13)
  {
    v14 = _WTVCLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D451D000, v14, OS_LOG_TYPE_DEFAULT, "dismissViewController (Fullscreen) for endWritingTools", buf, 2u);
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __53__WTWritingToolsController_endWritingToolsWithError___block_invoke_475;
    v27[3] = &unk_1E8480C98;
    v28 = v4;
    v29 = self;
    [(WTWritingToolsController *)self _dismissFullScreenViewControllerWithCompletion:v27];
    v12 = v28;
    goto LABEL_21;
  }

  v15 = [(WTWritingToolsController *)self formSheetViewController];

  if (v15)
  {
    v16 = _WTVCLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D451D000, v16, OS_LOG_TYPE_DEFAULT, "dismissViewController (Formsheet) for endWritingTools", buf, 2u);
    }

    v17 = [(WTWritingToolsController *)self formSheetViewController];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __53__WTWritingToolsController_endWritingToolsWithError___block_invoke_477;
    v24 = &unk_1E8480C70;
    v25 = v4;
    v26 = self;
    [v17 dismissViewControllerAnimated:1 completion:&v21];

    v12 = v25;
    goto LABEL_21;
  }

  if (v4)
  {
    [(WTWritingToolsController *)self presentError:v4];
  }

LABEL_22:
  v18 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  [v18 removeVisibilityObserver:self];

  [(WTWritingToolsController *)self setIsPresentingPopoverFromEditableResponder:0];
  [(WTWritingToolsController *)self setWantsHostingInAppSizedContainerView:0];
  [(WTWritingToolsController *)self setMinimizedIntoAssistant:0];
  [(WTWritingToolsController *)self updateKBSuppression];
  [(WTWritingToolsController *)self updateInputDashboardViewController];
  v19 = [(WTWritingToolsController *)self sourceResponder];
  if (objc_opt_respondsToSelector())
  {
    [v19 _writingToolsDidEnd];
  }

  v20 = [(WTWritingToolsController *)self analyticsDelegate];
  [v20 endWritingTools];

  [(WTWritingToolsController *)self setAnalyticsDelegate:0];
  [(WTWritingToolsController *)self setWritingToolsDelegate:0];
  [(WTWritingToolsController *)self setInterfaceAutorotationDisabledIfNecessary:0];
}

uint64_t __53__WTWritingToolsController_endWritingToolsWithError___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) presentError:?];
  }

  return result;
}

uint64_t __53__WTWritingToolsController_endWritingToolsWithError___block_invoke_475(uint64_t result, int a2)
{
  if (*(result + 32))
  {
    v2 = result;
    if (a2)
    {
      v3 = *(result + 40);

      return [v3 presentError:?];
    }

    else
    {
      v4 = _WTVCLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __53__WTWritingToolsController_endWritingToolsWithError___block_invoke_475_cold_1();
      }

      return [*(v2 + 40) setPendingError:*(v2 + 32)];
    }
  }

  return result;
}

uint64_t __53__WTWritingToolsController_endWritingToolsWithError___block_invoke_477(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) presentError:?];
  }

  return result;
}

- (void)_refreshSourceResponderHorizontalSizeClassState
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(WTWritingToolsController *)self sourceResponderViewController];
  v4 = [v3 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if ([(WTWritingToolsController *)self sourceResponderHorizontalSizeClass]!= v5)
  {
    v6 = _WTVCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "sourceResponderHorizontalSizeClass changed, new value: %@", &v13, 0xCu);
    }

    [(WTWritingToolsController *)self setSourceResponderHorizontalSizeClass:v5];
    v8 = [(WTWritingToolsController *)self sourceResponderViewController];
    v9 = [v8 presentedViewController];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(WTWritingToolsController *)self sourceResponderViewController];
      v12 = [v11 presentedViewController];

      [v12 sourceResponderHorizontalSizeClassChanged:v5];
    }

    [(WTWritingToolsController *)self updateSourceView];
  }
}

- (void)_refreshWindowingModeEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(WTWritingToolsController *)self isWindowingModeEnabled];
  if (v3 != [(WTWritingToolsController *)self windowingModeEnabled])
  {
    v4 = _WTVCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1D451D000, v4, OS_LOG_TYPE_DEFAULT, "isWindowingModeEnabled changed, new value: %@", &v7, 0xCu);
    }

    v6 = [(WTWritingToolsController *)self mainPopoverViewController];
    [v6 windowingModeEnabledChanged:v3];
  }
}

- (BOOL)isVisualModeWindowed
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 useVisualModeWindowedUI];
  }

  else
  {
    v3 = 0;
  }

  v4 = _WTVCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "NO";
    if (v3)
    {
      v5 = "YES";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&dword_1D451D000, v4, OS_LOG_TYPE_DEFAULT, "useVisualModeWindowedUI: %s", &v7, 0xCu);
  }

  return v3;
}

- (BOOL)isWindowingModeEnabled
{
  v2 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 windowingModeEnabled];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)presentError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69DC650];
  v6 = [v4 localizedDescription];
  v7 = [v4 localizedFailureReason];
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (os_variant_has_internal_diagnostics())
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v4 userInfo];
    v12 = [v11 objectForKeyedSubscript:@"WTInternalDescriptionErrorKey"];
    v13 = [v10 stringWithFormat:@"[INTERNAL DEBUGGING] %@", v12];

    v14 = MEMORY[0x1E696AEC0];
    v15 = [v8 message];
    v16 = v15;
    v17 = &stru_1F4FC5520;
    if (v15)
    {
      v17 = v15;
    }

    v18 = [v14 stringWithFormat:@"%@\n\n%@", v17, v13];
    [v8 setMessage:v18];
  }

  v19 = [v4 userInfo];
  v20 = [v19 objectForKeyedSubscript:@"WTRequireReauthenticationErrorKey"];
  v21 = [v20 BOOLValue];

  v22 = &qword_1D455A000;
  if (v21)
  {
    v23 = MEMORY[0x1E69DC648];
    v24 = [v9 localizedStringForKey:@"Cancel" value:&stru_1F4FC5520 table:@"Localizable"];
    v25 = [v23 actionWithTitle:v24 style:1 handler:0];
    [v8 addAction:v25];

    v26 = MEMORY[0x1E69DC648];
    v27 = [v9 localizedStringForKey:@"Update Account" value:&stru_1F4FC5520 table:@"Localizable"];
    v28 = &__block_literal_global_4;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    v31 = [v4 userInfo];
    v32 = [v31 objectForKeyedSubscript:@"WTUnsupportedLanguageErrorKey"];
    v33 = [v32 BOOLValue];

    if (v33)
    {
      v34 = MEMORY[0x1E69DC648];
      v35 = [v9 localizedStringForKey:@"Learn More" value:&stru_1F4FC5520 table:@"Localizable"];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __41__WTWritingToolsController_presentError___block_invoke_2;
      v55[3] = &unk_1E8480AB0;
      v55[4] = self;
      v36 = [v34 actionWithTitle:v35 style:1 handler:v55];
      [v8 addAction:v36];

      v37 = MEMORY[0x1E69DC648];
      v38 = [v9 localizedStringForKey:@"OK" value:&stru_1F4FC5520 table:@"Localizable"];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __41__WTWritingToolsController_presentError___block_invoke_3;
      v54[3] = &unk_1E8480AB0;
      v22 = &qword_1D455A000;
      v54[4] = self;
      v39 = [v37 actionWithTitle:v38 style:0 handler:v54];

      [v8 addAction:v39];
      [v8 setPreferredAction:v39];

      goto LABEL_13;
    }

    v40 = [v4 userInfo];
    v41 = [v40 objectForKeyedSubscript:@"WTUnsafeInputErrorKey"];
    v42 = [v41 BOOLValue];

    if (v42)
    {
      v43 = [_TtC14WritingToolsUI27WTAlertHeaderViewController alloc];
      v44 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"nosign.badge.shield.half.filled"];
      v45 = [(WTAlertHeaderViewController *)v43 initWithImage:v44];
      [v8 _setHeaderContentViewController:v45];
    }

    v46 = MEMORY[0x1E69DC648];
    v27 = [v9 localizedStringForKey:@"OK" value:&stru_1F4FC5520 table:@"Localizable"];
    v29 = v46;
    v30 = v27;
    v28 = 0;
  }

  v47 = [v29 actionWithTitle:v30 style:0 handler:v28];
  [v8 addAction:v47];

LABEL_13:
  v48 = _WTVCLog();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    [WTWritingToolsController presentError:];
  }

  v49 = [(WTWritingToolsController *)self sourceResponderViewController];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = v22[75];
  v51[2] = __41__WTWritingToolsController_presentError___block_invoke_542;
  v51[3] = &unk_1E8480C70;
  v52 = v4;
  v53 = self;
  v50 = v4;
  [v49 presentViewController:v8 animated:1 completion:v51];
}

void __41__WTWritingToolsController_presentError___block_invoke()
{
  v1 = +[WTSettingsDestination rootURL];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

void __41__WTWritingToolsController_presentError___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) updateKBSuppression];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/121115"];
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v1 openURL:v2 configuration:0 completionHandler:0];
}

void __41__WTWritingToolsController_presentError___block_invoke_542(uint64_t a1)
{
  v2 = _WTVCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __41__WTWritingToolsController_presentError___block_invoke_542_cold_1(a1, v2);
  }

  v3 = [*(a1 + 40) pendingError];
  v4 = [v3 isEqual:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) setPendingError:0];
  }
}

- (void)showContentWarningWithTitle:(id)a3 message:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(WTWritingToolsController *)self _inputDashboardViewController];
  if ([(WTWritingToolsController *)self _wantsUCBUI]&& v7)
  {
    [v7 showContentWarningWithTitle:v8 message:v6];
  }
}

- (void)showAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 buttonAction:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(WTWritingToolsController *)self _inputDashboardViewController];
  if ([(WTWritingToolsController *)self _wantsUCBUI]&& v13)
  {
    [v13 showAlertWithTitle:v14 message:v10 buttonTitle:v11 buttonAction:v12];
  }
}

- (void)handoffFromUCBFromTool:(int64_t)a3 withPrompt:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _WTVCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1D451D000, v7, OS_LOG_TYPE_DEFAULT, "handoffFromUCBFromTool: %@", buf, 0xCu);
  }

  [(WTWritingToolsController *)self setIsFromHandoff:1];
  [(WTWritingToolsController *)self setRequestedTool:201];
  [(WTWritingToolsController *)self setHandoffOriginatorTool:a3];
  [(WTWritingToolsController *)self setPrompt:v6];

  [(WTWritingToolsController *)self setWantsHostingInAppSizedContainerView:1];
  v9 = [(WTWritingToolsController *)self writingToolsDelegate];
  v10 = [(WTWritingToolsController *)self session];
  [v9 didEndWritingToolsSession:v10 accepted:0];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__WTWritingToolsController_handoffFromUCBFromTool_withPrompt___block_invoke;
  v11[3] = &unk_1E8480CE0;
  v11[4] = self;
  [(WTWritingToolsController *)self _dismissFullScreenViewControllerWithCompletion:v11];
}

- (void)didStartMontaraRefinementForSessionWithUUID:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "Received didStartMontaraRefinement for %@", &v10, 0xCu);
  }

  if ([(WTWritingToolsController *)self supportsHostingInAppSizedContainerView])
  {
    v6 = [(WTWritingToolsController *)self session];

    if (!v6)
    {
      [(WTWritingToolsController *)self setNoninlineSessionUUID:v4];
      v7 = _WTVCLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_1D451D000, v7, OS_LOG_TYPE_DEFAULT, "Handling noninlineSessionUUID: %@ for noninline session", &v10, 0xCu);
      }
    }

    v8 = _WTVCLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_DEFAULT, "Handling app sized container transition...", &v10, 2u);
    }

    [(WTWritingToolsController *)self setWantsHostingInAppSizedContainerView:1];
    [(WTWritingToolsController *)self updateSourceView];
  }

  else
  {
    v9 = _WTVCLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1D451D000, v9, OS_LOG_TYPE_DEFAULT, "Skipping app sized container transition...", &v10, 2u);
    }
  }
}

- (BOOL)supportsHostingInAppSizedContainerView
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (BOOL)shouldHostInAppSizedContainerView
{
  if (![(WTWritingToolsController *)self supportsHostingInAppSizedContainerView])
  {
    v3 = _WTVCLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [WTWritingToolsController shouldHostInAppSizedContainerView];
    }

    goto LABEL_7;
  }

  if (![(WTWritingToolsController *)self switchedFromUCBToPopover])
  {
    if ([(WTWritingToolsController *)self wantsHostingInAppSizedContainerView])
    {
      v3 = _WTVCLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        [WTWritingToolsController shouldHostInAppSizedContainerView];
      }
    }

    else
    {
      if ([(WTWritingToolsController *)self sourceResponderHorizontalSizeClass]== 1)
      {
        v3 = _WTVCLog();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          [WTWritingToolsController shouldHostInAppSizedContainerView];
        }

        goto LABEL_7;
      }

      if ([(WTWritingToolsController *)self _rewritingSessionActiveOrRequested])
      {
        v3 = _WTVCLog();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          [WTWritingToolsController shouldHostInAppSizedContainerView];
        }
      }

      else if ([(WTWritingToolsController *)self _proofreadingSessionActiveOrRequested])
      {
        v3 = _WTVCLog();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          [WTWritingToolsController shouldHostInAppSizedContainerView];
        }
      }

      else
      {
        v6 = [(WTWritingToolsController *)self session];
        if (v6 || ([(WTWritingToolsController *)self noninlineSessionUUID], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
        {
        }

        else if (![(WTWritingToolsController *)self isFromHandoff])
        {
          v3 = _WTVCLog();
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
          {
            [WTWritingToolsController shouldHostInAppSizedContainerView];
          }

          goto LABEL_7;
        }

        v7 = [(WTWritingToolsController *)self isFromHandoff];
        v3 = _WTVCLog();
        v8 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
        if (!v7)
        {
          if (v8)
          {
            [WTWritingToolsController shouldHostInAppSizedContainerView];
          }

          goto LABEL_7;
        }

        if (v8)
        {
          [WTWritingToolsController shouldHostInAppSizedContainerView];
        }
      }
    }

    v4 = 1;
    goto LABEL_8;
  }

  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [WTWritingToolsController shouldHostInAppSizedContainerView];
  }

LABEL_7:
  v4 = 0;
LABEL_8:

  return v4;
}

- (id)trailingPredictiveCandidate
{
  if ([(WTWritingToolsController *)self _proofreadingSessionActive]&& [(WTWritingToolsController *)self suppressSheetForKeyboardEditing])
  {
    v3 = [MEMORY[0x1E69D95F0] candidateWithCandidate:&stru_1F4FC5520 forInput:&stru_1F4FC5520 property:8];
    v4 = objc_alloc_init(WTProofreadCandidateBarView);
    v5 = [(WTWritingToolsController *)self proofreadingSuggestions];
    -[WTProofreadCandidateBarView setSuggestionCount:](v4, "setSuggestionCount:", [v5 count]);

    [(WTWritingToolsController *)self setProofreadCandidateBarView:v4];
    [v3 setCustomView:v4];
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__WTWritingToolsController_trailingPredictiveCandidate__block_invoke;
    v7[3] = &unk_1E8480B20;
    objc_copyWeak(&v8, &location);
    [v3 setHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __55__WTWritingToolsController_trailingPredictiveCandidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSuppressSheetForKeyboardEditing:0];
}

- (id)assistantBarButtonItemWithStyle:(int64_t)a3
{
  if (![(WTWritingToolsController *)self suppressSheetForKeyboardEditing]|| ([(WTWritingToolsController *)self session], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v14 = 0;
    goto LABEL_15;
  }

  v6 = objc_alloc_init(MEMORY[0x1E69DC708]);
  [v6 setIsKeyboardItem:1];
  objc_initWeak(&location, self);
  switch(a3)
  {
    case 24:
      if (![(WTWritingToolsController *)self minimizedIntoAssistant])
      {
        v8 = [(WTWritingToolsController *)self _assistantProofreadBarButton];
        [v6 setCustomView:v8];
        goto LABEL_13;
      }

      break;
    case 23:
      v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v8 = [v15 localizedStringForKey:@"Revert" value:&stru_1F4FC5520 table:@"Localizable"];

      v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __60__WTWritingToolsController_assistantBarButtonItemWithStyle___block_invoke_2;
      v20 = &unk_1E8480D08;
      v12 = &v22;
      objc_copyWeak(&v22, &location);
      v21 = self;
      v13 = [(WTWritingToolsController *)self _assistantBarButtonCustomViewWithTitle:v9 handler:&v17];
      [v6 setCustomView:{v13, v17, v18, v19, v20}];
      goto LABEL_9;
    case 22:
      v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"Done" value:&stru_1F4FC5520 table:@"Localizable"];

      v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v8];
      v10 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:15.0];
      v11 = [v8 length];
      [v9 addAttribute:*MEMORY[0x1E69DB648] value:v10 range:{0, v11}];

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __60__WTWritingToolsController_assistantBarButtonItemWithStyle___block_invoke;
      v23[3] = &unk_1E8480B20;
      v12 = &v24;
      objc_copyWeak(&v24, &location);
      v13 = [(WTWritingToolsController *)self _assistantBarButtonCustomViewWithTitle:v9 handler:v23];
      [v6 setCustomView:v13];
LABEL_9:

      objc_destroyWeak(v12);
LABEL_13:

      v14 = v6;
      goto LABEL_14;
  }

  v14 = 0;
LABEL_14:
  objc_destroyWeak(&location);

LABEL_15:

  return v14;
}

void __60__WTWritingToolsController_assistantBarButtonItemWithStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endWritingTools];
}

void __60__WTWritingToolsController_assistantBarButtonItemWithStyle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) session];
  [WeakRetained didEndWritingToolsSession:v3 accepted:0];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 endWritingTools];
}

- (void)updatePromptEntryState:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      v5 = _WTVCLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 0;
        v6 = &v7;
        goto LABEL_11;
      }

LABEL_12:

      [(WTWritingToolsController *)self _dismissPromptEntryViewController];
      return;
    case 2:
      v5 = _WTVCLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 0;
        v6 = &v8;
LABEL_11:
        _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "prompt entry mode dismissed", v6, 2u);
        goto LABEL_12;
      }

      goto LABEL_12;
    case 1:
      v4 = _WTVCLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D451D000, v4, OS_LOG_TYPE_DEFAULT, "prompt entry mode requested", buf, 2u);
      }

      [(WTWritingToolsController *)self _updatePromptEntryPopover];
      break;
  }
}

- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _WTVCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 uuid];
    *buf = 138412290;
    v63 = v9;
    _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_DEFAULT, "willBeginWritingToolsSession: %@", buf, 0xCu);
  }

  [v6 setTextViewDelegate:self];
  objc_initWeak(buf, self);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __73__WTWritingToolsController_willBeginWritingToolsSession_requestContexts___block_invoke;
  v56[3] = &unk_1E8480D58;
  objc_copyWeak(&v59, buf);
  v56[4] = self;
  v10 = v7;
  v58 = v10;
  v11 = v6;
  v57 = v11;
  v55 = MEMORY[0x1DA6D90E0](v56);
  v12 = [(WTWritingToolsController *)self analyticsDelegate];
  [v12 willBeginWritingToolsSession:v11 requestContexts:v10];

  [(WTWritingToolsController *)self setSwitchedFromUCBToPopover:0];
  v13 = [(WTWritingToolsController *)self writingToolsDelegate];

  if (v13)
  {
    v14 = [(WTWritingToolsController *)self writingToolsDelegate];
    [v14 willBeginWritingToolsSession:v11 requestContexts:v55];
  }

  else
  {
    if ([v11 compositionSessionType] == 10)
    {
      v15 = [(WTWritingToolsController *)self sourceTextInput];
      v54 = [v15 beginningOfDocument];

      v16 = [(WTWritingToolsController *)self sourceTextInput];
      v53 = [v16 endOfDocument];

      v17 = [(WTWritingToolsController *)self sourceTextInput];
      v52 = [v17 textRangeFromPosition:v54 toPosition:v53];

      v18 = [(WTWritingToolsController *)self sourceTextInput];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        v20 = [(WTWritingToolsController *)self sourceTextInput];
        v14 = [v20 attributedTextInRange:v52];

        if (!v14)
        {
          v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F4FC5520];
        }
      }

      else
      {
        v33 = [(WTWritingToolsController *)self sourceTextInput];
        v34 = [v33 textInRange:v52];

        v35 = &stru_1F4FC5520;
        if (v34)
        {
          v35 = v34;
        }

        v36 = v35;

        v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v36];
      }

      v37 = [(WTWritingToolsController *)self sourceTextInput];
      v38 = [(WTWritingToolsController *)self sourceTextInput];
      v39 = [v38 selectedTextRange];
      v40 = [v39 start];
      v51 = [v37 offsetFromPosition:v54 toPosition:v40];

      v41 = [(WTWritingToolsController *)self sourceTextInput];
      v42 = [(WTWritingToolsController *)self sourceTextInput];
      v43 = [v42 selectedTextRange];
      v44 = [v43 start];
      v45 = [(WTWritingToolsController *)self sourceTextInput];
      v46 = [v45 selectedTextRange];
      v47 = [v46 end];
      v50 = [v41 offsetFromPosition:v44 toPosition:v47];

      v48 = [objc_alloc(MEMORY[0x1E69E3158]) initWithAttributedText:v14 range:{v51, v50}];
      v61 = v48;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
      (v55)[2](v55, v49);

      v32 = v53;
    }

    else
    {
      v21 = [(WTWritingToolsController *)self sourceTextInput];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        v23 = [(WTWritingToolsController *)self sourceTextInput];
        v24 = [(WTWritingToolsController *)self sourceTextInput];
        v25 = [v24 selectedTextRange];
        v14 = [v23 attributedTextInRange:v25];

        if (!v14)
        {
          v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F4FC5520];
        }
      }

      else
      {
        v26 = [(WTWritingToolsController *)self sourceTextInput];
        v27 = [(WTWritingToolsController *)self sourceTextInput];
        v28 = [v27 selectedTextRange];
        v29 = [v26 textInRange:v28];

        v30 = &stru_1F4FC5520;
        if (v29)
        {
          v30 = v29;
        }

        v31 = v30;

        v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v31];
      }

      v54 = [objc_alloc(MEMORY[0x1E69E3158]) initWithAttributedText:v14 range:{0, objc_msgSend(v14, "length")}];
      v60 = v54;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
      (v55)[2](v55, v32);
    }
  }

  objc_destroyWeak(&v59);
  objc_destroyWeak(buf);
}

void __73__WTWritingToolsController_willBeginWritingToolsSession_requestContexts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WTWritingToolsController_willBeginWritingToolsSession_requestContexts___block_invoke_2;
  block[3] = &unk_1E8480D30;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v10, (a1 + 56));
  v7 = *(a1 + 32);
  v9 = *(a1 + 48);
  v8 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v10);
}

void __73__WTWritingToolsController_willBeginWritingToolsSession_requestContexts___block_invoke_2(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v40;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v39 + 1) + 8 * i) copy];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v5);
  }

  v9 = -[WTUIAttributedStringController initWithContexts:resultOptions:]([WTUIAttributedStringController alloc], "initWithContexts:resultOptions:", v2, [*(a1 + 40) _resultOptions]);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained setAttributedStringController:v9];

  v11 = [MEMORY[0x1E695DF90] dictionary];
  v12 = objc_loadWeakRetained((a1 + 64));
  [v12 setUuidContextMapping:v11];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v2;
  v13 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v35 + 1) + 8 * j);
        v18 = _WTVCLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v17 uuid];
          v20 = [v17 attributedText];
          v21 = [v20 length];
          v52.location = [v17 range];
          v22 = NSStringFromRange(v52);
          *buf = 138412802;
          v44 = v19;
          v45 = 2048;
          v46 = v21;
          v47 = 2112;
          v48 = v22;
          _os_log_impl(&dword_1D451D000, v18, OS_LOG_TYPE_DEFAULT, "context: %@, length = %lu, range = %@", buf, 0x20u);
        }

        v23 = [v17 copy];
        v24 = objc_loadWeakRetained((a1 + 64));
        v25 = [v24 uuidContextMapping];
        v26 = [v17 uuid];
        [v25 setObject:v23 forKeyedSubscript:v26];

        v27 = objc_loadWeakRetained((a1 + 64));
        v28 = [v27 attributedStringController];
        v29 = [v28 digestedAttributedStringForContext:v17];
        [v17 setAttributedText:v29];
      }

      v14 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v14);
  }

  v30 = *(a1 + 56);
  v31 = [obj copy];
  (*(v30 + 16))(v30, v31);

  v32 = *(a1 + 48);
  v33 = objc_loadWeakRetained((a1 + 64));
  [v33 setSession:v32];
}

- (void)didBeginWritingToolsSession:(id)a3 contexts:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = _WTVCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(WTWritingToolsController *)self session];
    v8 = [v7 uuid];
    *buf = 138412290;
    v44 = v8;
    _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "didBeginWritingToolsSession: %@", buf, 0xCu);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v40;
    *&v10 = 138412802;
    v37 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * v13);
        v15 = [(WTWritingToolsController *)self uuidContextMapping];
        v16 = [v14 uuid];
        v17 = [v15 objectForKeyedSubscript:v16];
        v18 = [v17 attributedText];
        [v14 setAttributedText:v18];

        v19 = [v14 range];
        v21 = v20;
        v22 = [(WTWritingToolsController *)self uuidContextMapping];
        v23 = [v14 uuid];
        v24 = [v22 objectForKeyedSubscript:v23];
        [v24 setRange:{v19, v21}];

        v25 = _WTVCLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v14 uuid];
          v27 = [v14 attributedText];
          v28 = [v27 length];
          v51.location = [v14 range];
          v29 = NSStringFromRange(v51);
          *buf = v37;
          v44 = v26;
          v45 = 2048;
          v46 = v28;
          v47 = 2112;
          v48 = v29;
          _os_log_impl(&dword_1D451D000, v25, OS_LOG_TYPE_DEFAULT, "didBegin, context: %@, length = %lu, range = %@", buf, 0x20u);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v11);
  }

  if ([(WTWritingToolsController *)self _proofreadingSessionActive])
  {
    v30 = [MEMORY[0x1E695DF70] array];
    [(WTWritingToolsController *)self setProofreadingSuggestions:v30];

    v31 = [MEMORY[0x1E695DF90] dictionary];
    [(WTWritingToolsController *)self setUuidSuggestionMapping:v31];

    v32 = [MEMORY[0x1E695DF90] dictionary];
    [(WTWritingToolsController *)self setContextForSuggestions:v32];
  }

  v33 = [(WTWritingToolsController *)self analyticsDelegate];
  v34 = [(WTWritingToolsController *)self session];
  [v33 didBeginWritingToolsSession:v34 contexts:obj];

  v35 = [(WTWritingToolsController *)self writingToolsDelegate];
  v36 = [(WTWritingToolsController *)self session];
  [v35 didBeginWritingToolsSession:v36 contexts:obj];
}

- (void)writingToolsSession:(id)a3 didReceiveAction:(int64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = _WTVCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(WTWritingToolsController *)self session];
    v8 = [v7 uuid];
    v13 = 138412546;
    v14 = v8;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "writingToolsSession:didReceiveAction: %@ [action = %ld]", &v13, 0x16u);
  }

  v9 = [(WTWritingToolsController *)self analyticsDelegate];
  v10 = [(WTWritingToolsController *)self session];
  [v9 writingToolsSession:v10 didReceiveAction:a4];

  v11 = [(WTWritingToolsController *)self writingToolsDelegate];
  v12 = [(WTWritingToolsController *)self session];
  [v11 writingToolsSession:v12 didReceiveAction:a4];
}

- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x1E69E9840];
  v6 = _WTVCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(WTWritingToolsController *)self session];
    v8 = [v7 uuid];
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "didEndWritingToolsSession: %@", buf, 0xCu);
  }

  [(WTWritingToolsController *)self _dismissSuggestionViewControllerWithCompletion:0];
  [(WTWritingToolsController *)self _dismissPromptEntryViewController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__WTWritingToolsController_didEndWritingToolsSession_accepted___block_invoke;
  v13[3] = &unk_1E8480CE0;
  v13[4] = self;
  [(WTWritingToolsController *)self _dismissFullScreenViewControllerWithCompletion:v13];
  v9 = [(WTWritingToolsController *)self analyticsDelegate];
  v10 = [(WTWritingToolsController *)self session];
  [v9 didEndWritingToolsSession:v10 accepted:v4];

  v11 = [(WTWritingToolsController *)self writingToolsDelegate];
  v12 = [(WTWritingToolsController *)self session];
  [v11 didEndWritingToolsSession:v12 accepted:v4];

  [(WTWritingToolsController *)self setRemainingUndoCount:0];
  [(WTWritingToolsController *)self setRemainingRedoCount:0];
  [(WTWritingToolsController *)self setEndingWritingToolsSession:1];
  [(WTWritingToolsController *)self setProofreadingSuggestions:0];
  [(WTWritingToolsController *)self setUuidSuggestionMapping:0];
  [(WTWritingToolsController *)self setContextForSuggestions:0];
  [(WTWritingToolsController *)self setSession:0];
  [(WTWritingToolsController *)self setNoninlineSessionUUID:0];
}

void __63__WTWritingToolsController_didEndWritingToolsSession_accepted___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) pendingError];

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = [v4 pendingError];
      [v4 presentError:v5];
    }
  }
}

- (void)proofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7
{
  v37 = a7;
  length = a5.length;
  location = a5.location;
  v45 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v12 = _WTVCLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(WTWritingToolsController *)self session];
    v14 = [v13 uuid];
    *buf = 138412290;
    v44 = v14;
    _os_log_impl(&dword_1D451D000, v12, OS_LOG_TYPE_DEFAULT, "proofreadingSession:didReceiveSuggestions: %@", buf, 0xCu);
  }

  v15 = [(WTWritingToolsController *)self uuidContextMapping];
  v16 = [v11 uuid];

  v17 = [v15 objectForKeyedSubscript:v16];

  v18 = [(WTWritingToolsController *)self proofreadingSuggestions];
  [v18 addObjectsFromArray:v10];

  v19 = [(WTWritingToolsController *)self proofreadCandidateBarView];
  v20 = [(WTWritingToolsController *)self proofreadingSuggestions];
  [v19 setSuggestionCount:{objc_msgSend(v20, "count")}];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v39;
    do
    {
      v25 = 0;
      do
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v38 + 1) + 8 * v25);
        v27 = [(WTWritingToolsController *)self uuidSuggestionMapping];
        v28 = [v26 uuid];
        [v27 setObject:v26 forKeyedSubscript:v28];

        v29 = [v17 uuid];
        v30 = [(WTWritingToolsController *)self contextForSuggestions];
        v31 = [v26 uuid];
        [v30 setObject:v29 forKeyedSubscript:v31];

        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v23);
  }

  v32 = [(WTWritingToolsController *)self analyticsDelegate];
  v33 = [(WTWritingToolsController *)self session];
  [v32 proofreadingSession:v33 didReceiveSuggestions:v21 processedRange:location inContext:length finished:{v17, v37}];

  v34 = [(WTWritingToolsController *)self writingToolsDelegate];
  v35 = [(WTWritingToolsController *)self session];
  [v34 proofreadingSession:v35 didReceiveSuggestions:v21 processedRange:location inContext:length finished:{v17, v37}];
}

- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  v11 = _WTVCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(WTWritingToolsController *)self session];
    v13 = [v12 uuid];
    v14 = [(WTWritingToolsController *)self popoverSuggestionUUID];
    *buf = 138413058;
    v30 = v13;
    v31 = 2048;
    v32 = a4;
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v14;
    _os_log_impl(&dword_1D451D000, v11, OS_LOG_TYPE_DEFAULT, "proofreadingSession: %@ didUpdateState: %ld forSuggestionUUID: %@ (current suggestion: %@)", buf, 0x2Au);
  }

  v15 = [(WTWritingToolsController *)self uuidContextMapping];
  v16 = [v10 uuid];

  v17 = [v15 objectForKeyedSubscript:v16];

  v18 = [(WTWritingToolsController *)self uuidSuggestionMapping];
  v19 = [v18 objectForKeyedSubscript:v9];
  [v19 setState:a4];

  v20 = [(WTWritingToolsController *)self popoverSuggestionUUID];
  v21 = [v9 isEqual:v20];

  if (a4 != 1 && v21)
  {
    v22 = [(WTWritingToolsController *)self suggestionQueue];
    dispatch_assert_queue_not_V2(v22);

    v23 = [(WTWritingToolsController *)self suggestionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__WTWritingToolsController_proofreadingSession_didUpdateState_forSuggestionWithUUID_inContext___block_invoke;
    block[3] = &unk_1E8480BF8;
    block[4] = self;
    dispatch_sync(v23, block);

    [(WTWritingToolsController *)self _updateSuggestionPopover];
  }

  v24 = [(WTWritingToolsController *)self analyticsDelegate];
  v25 = [(WTWritingToolsController *)self session];
  [v24 proofreadingSession:v25 didUpdateState:a4 forSuggestionWithUUID:v9 inContext:v17];

  v26 = [(WTWritingToolsController *)self writingToolsDelegate];
  v27 = [(WTWritingToolsController *)self session];
  [v26 proofreadingSession:v27 didUpdateState:a4 forSuggestionWithUUID:v9 inContext:v17];
}

- (void)compositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7
{
  v7 = a7;
  length = a5.length;
  location = a5.location;
  v35 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  v14 = _WTVCLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    [(WTWritingToolsController *)self session];
    v15 = v28 = v7;
    v16 = [v15 uuid];
    v17 = [v12 length];
    v36.location = location;
    v36.length = length;
    v18 = NSStringFromRange(v36);
    *buf = 138412802;
    v30 = v16;
    v31 = 2048;
    v32 = v17;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&dword_1D451D000, v14, OS_LOG_TYPE_DEFAULT, "compositionSession: [%@], didReceiveText: [length = %lu], range: %@", buf, 0x20u);

    v7 = v28;
  }

  v19 = [(WTWritingToolsController *)self uuidContextMapping];
  v20 = [v13 uuid];

  v21 = [v19 objectForKeyedSubscript:v20];

  v22 = [(WTWritingToolsController *)self attributedStringController];
  v23 = [v22 reconstitutedAttributedStringForContext:v21 digestedAttributedString:v12];

  v24 = [(WTWritingToolsController *)self analyticsDelegate];
  v25 = [(WTWritingToolsController *)self session];
  [v24 compositionSession:v25 didReceiveText:v23 replacementRange:location inContext:length finished:{v21, v7}];

  v26 = [(WTWritingToolsController *)self writingToolsDelegate];
  v27 = [(WTWritingToolsController *)self session];
  [v26 compositionSession:v27 didReceiveText:v23 replacementRange:location inContext:length finished:{v21, v7}];

  if ([(WTWritingToolsController *)self _sessionSupportsPopoverAdjustment])
  {
    [(WTWritingToolsController *)self setTemporarilySuppressPopoverForAdjustment:1];
    [(WTWritingToolsController *)self updateWritingToolsPopoverSuppression];
  }

  if (v7)
  {
    [(WTWritingToolsController *)self setRemainingUndoCount:[(WTWritingToolsController *)self remainingUndoCount]+ 1];
    [(WTWritingToolsController *)self setRemainingRedoCount:0];
  }
}

- (void)showSmartReplyQuestionnaireWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  v8 = [(WTWritingToolsController *)self _inputDashboardViewController];
  v9 = _WTVCLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(WTWritingToolsController *)self session];
    v11 = [v10 uuid];
    v12 = MEMORY[0x1E696AD98];
    v13 = [(WTWritingToolsController *)self session];
    v14 = [v12 numberWithInteger:{objc_msgSend(v13, "type")}];
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v15 = NSStringFromCGRect(v25);
    v16 = 138413058;
    v17 = v11;
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_1D451D000, v9, OS_LOG_TYPE_DEFAULT, "try -showSmartReplyQuestionnaire (sessionUUID: %@, sessionType: %@, rect: %@, inputDashboardVC: %@", &v16, 0x2Au);
  }

  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 showSmartReplyQuestionnaireWithRect:{x, y, width, height}];
  }
}

- (void)undo
{
  v3 = [(WTWritingToolsController *)self sourceResponder];
  v4 = [v3 undoManager];
  v5 = [v4 canUndo];

  if (v5)
  {
    v6 = [(WTWritingToolsController *)self sourceResponder];
    v7 = [v6 undoManager];
    [v7 undo];

    v8 = [(WTWritingToolsController *)self analyticsDelegate];
    [v8 undo];

    if ([(WTWritingToolsController *)self remainingUndoCount])
    {
      [(WTWritingToolsController *)self setRemainingUndoCount:[(WTWritingToolsController *)self remainingUndoCount]- 1];
      [(WTWritingToolsController *)self setRemainingRedoCount:[(WTWritingToolsController *)self remainingRedoCount]+ 1];
    }
  }

  [(WTWritingToolsController *)self _sendUpdatedUndoRedoCounts];
}

- (void)redo
{
  v3 = [(WTWritingToolsController *)self sourceResponder];
  v4 = [v3 undoManager];
  v5 = [v4 canRedo];

  if (v5)
  {
    v6 = [(WTWritingToolsController *)self sourceResponder];
    v7 = [v6 undoManager];
    [v7 redo];

    v8 = [(WTWritingToolsController *)self analyticsDelegate];
    [v8 redo];

    [(WTWritingToolsController *)self setRemainingUndoCount:[(WTWritingToolsController *)self remainingUndoCount]+ 1];
    if ([(WTWritingToolsController *)self remainingRedoCount])
    {
      [(WTWritingToolsController *)self setRemainingRedoCount:[(WTWritingToolsController *)self remainingRedoCount]- 1];
    }
  }

  [(WTWritingToolsController *)self _sendUpdatedUndoRedoCounts];
}

- (void)_sendUpdatedUndoRedoCounts
{
  [(WTWritingToolsController *)self setRemainingUndoCount:[(WTWritingToolsController *)self remainingUndoCount]];
  v3 = [(WTWritingToolsController *)self remainingRedoCount];

  [(WTWritingToolsController *)self setRemainingRedoCount:v3];
}

- (void)setSession:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "type")}];
    v8 = [(WTSession *)self->_session uuid];
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "setSession: %@, type: %@, oldSession: %@", &v11, 0x20u);
  }

  session = self->_session;
  self->_session = v4;

  [(WTWritingToolsController *)self updateKBSuppression];
  if (v4)
  {
    [(WTWritingToolsController *)self setEndingWritingToolsSession:0];
    [(WTWritingToolsController *)self updateSourceView];
  }

  else
  {
    v10 = _WTVCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1D451D000, v10, OS_LOG_TYPE_DEFAULT, "Skipping updateSourceView due to setting of nil session", &v11, 2u);
    }
  }
}

- (id)itemProviderForAttributedText:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v5 = [v3 length];
  v6 = *MEMORY[0x1E69DB628];
  v23 = *MEMORY[0x1E69DB628];
  v24[0] = *MEMORY[0x1E69DB698];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v8 = [v3 dataFromRange:0 documentAttributes:v5 error:{v7, 0}];

  if (v8)
  {
    v9 = [*MEMORY[0x1E6982DC0] identifier];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __58__WTWritingToolsController_itemProviderForAttributedText___block_invoke;
    v19[3] = &unk_1E8480D80;
    v20 = v8;
    [v4 registerDataRepresentationForTypeIdentifier:v9 visibility:0 loadHandler:v19];
  }

  v10 = [v3 length];
  v11 = *MEMORY[0x1E69DB690];
  v12 = *MEMORY[0x1E69DB618];
  v21[0] = v6;
  v21[1] = v12;
  v22[0] = v11;
  v22[1] = &unk_1F4FCB650;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v14 = [v3 dataFromRange:0 documentAttributes:v10 error:{v13, 0}];

  if (v14)
  {
    v15 = [*MEMORY[0x1E6983060] identifier];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__WTWritingToolsController_itemProviderForAttributedText___block_invoke_571;
    v17[3] = &unk_1E8480D80;
    v18 = v14;
    [v4 registerDataRepresentationForTypeIdentifier:v15 visibility:0 loadHandler:v17];
  }

  return v4;
}

- (id)itemProviderForPlainText:(id)a3
{
  v3 = MEMORY[0x1E696ACA0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 dataUsingEncoding:4];

  if (v6)
  {
    v7 = [*MEMORY[0x1E6983060] identifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__WTWritingToolsController_itemProviderForPlainText___block_invoke;
    v9[3] = &unk_1E8480D80;
    v10 = v6;
    [v5 registerDataRepresentationForTypeIdentifier:v7 visibility:0 loadHandler:v9];
  }

  return v5;
}

- (void)replaceSelectionWithText:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WTWritingToolsController *)self attributedStringController];
  v6 = [v5 reconstitutedAttributedStringForStitchedContext:v4];

  v7 = [(WTWritingToolsController *)self sourceTextInput];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v8 = [(WTWritingToolsController *)self sourceTextInput];
    v9 = [v8 allowedWritingToolsResultOptions];

    v10 = (v9 & 0xF) == 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(WTWritingToolsController *)self beTextInput];
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v13 = [(WTWritingToolsController *)self sourceTextInput];
    v12 = [v13 conformsToProtocol:&unk_1F4FEE360];
  }

  if (v10)
  {
    v14 = [v6 string];
    v15 = [(WTWritingToolsController *)self itemProviderForPlainText:v14];

    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = [(WTWritingToolsController *)self itemProviderForAttributedText:v6];
    if (v12)
    {
      goto LABEL_13;
    }
  }

  v16 = [(WTWritingToolsController *)self sourceResponder];
  v26[0] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v18 = [v16 canPasteItemProviders:v17];

  if (v18)
  {
    v19 = [(WTWritingToolsController *)self sourceResponder];
    v25 = v15;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [v19 pasteItemProviders:v20];
    goto LABEL_20;
  }

LABEL_13:
  v21 = [(WTWritingToolsController *)self sourceTextInput];
  v19 = [v21 selectedTextRange];

  v20 = [(WTWritingToolsController *)self sourceTextInput];
  v22 = [(WTWritingToolsController *)self beTextInput];

  if (v22)
  {
    v23 = [(WTWritingToolsController *)self beTextInput];
    v24 = [v6 string];
    [v23 insertText:v24];
  }

  else if ([v20 conformsToProtocol:&unk_1F4FEE360])
  {
    v23 = [v6 string];
    [v20 insertText:v23];
  }

  else
  {
    if (!(v10 | ((objc_opt_respondsToSelector() & 1) == 0)))
    {
      [v20 replaceRange:v19 withAttributedText:v6];
      goto LABEL_20;
    }

    v23 = [v6 string];
    [v20 replaceRange:v19 withText:v23];
  }

LABEL_20:
}

- (void)copyText:(id)a3
{
  v4 = a3;
  v5 = [(WTWritingToolsController *)self attributedStringController];
  v6 = [v5 reconstitutedAttributedStringForStitchedContext:v4];

  v7 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v8 = MEMORY[0x1E69DCD50];
  v9 = [(WTWritingToolsController *)self sourceResponder];
  v10 = [v9 _dataOwnerForCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __37__WTWritingToolsController_copyText___block_invoke;
  v13[3] = &unk_1E8480DA8;
  v14 = v7;
  v15 = self;
  v16 = v6;
  v11 = v6;
  v12 = v7;
  [v8 _performAsDataOwner:v10 block:v13];
}

void __37__WTWritingToolsController_copyText___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) itemProviderForAttributedText:*(a1 + 48)];
  v4[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [*(a1 + 32) setItemProviders:v3];
}

- (void)beginTextPlaceholder
{
  v3 = [(WTWritingToolsController *)self sourceTextInput];
  v2 = [_WTTextPlaceholderController placeholderControllerForDelegate:v3];
  [v2 setPattern:0];
  [v2 beginPlaceholder];
}

- (void)endTextPlaceholderAndWillInsertText:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(WTWritingToolsController *)self sourceTextInput];
  v8 = [_WTTextPlaceholderController placeholderControllerForDelegate:v7];
  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__WTWritingToolsController_endTextPlaceholderAndWillInsertText_completion___block_invoke;
    v9[3] = &unk_1E8480DD0;
    v10 = v7;
    v11 = v6;
    [v8 endPlaceholderAndWillInsertText:v4 completion:v9];
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

uint64_t __75__WTWritingToolsController_endTextPlaceholderAndWillInsertText_completion___block_invoke(uint64_t a1)
{
  [_WTTextPlaceholderController removePlaceholderControllerForDelegate:*(a1 + 32)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)proofreadingSessionWithUUID:(id)a3 updateState:(int64_t)a4 forSuggestionWithUUID:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = _WTVCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1D451D000, v10, OS_LOG_TYPE_DEFAULT, "proofreadingSessionWithUUID: %@, updateState: %@, forSuggestionWithUUID: %@", &v13, 0x20u);
  }

  v12 = [(WTWritingToolsController *)self _textViewDelegate];
  [v12 proofreadingSessionWithUUID:v8 updateState:a4 forSuggestionWithUUID:v9];
}

- (void)proofreadingSessionWithUUID:(id)a3 showDetailsForSuggestionWithUUID:(id)a4 relativeToRect:(CGRect)a5 inView:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  v14 = _WTVCLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(WTWritingToolsController *)self session];
    v16 = [v15 uuid];
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v17 = NSStringFromCGRect(v36);
    *buf = 138413058;
    v28 = v16;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v17;
    v33 = 2112;
    v34 = v13;
    _os_log_impl(&dword_1D451D000, v14, OS_LOG_TYPE_DEFAULT, "session: %@, showDetailsForSuggestion: %@, relativeToRect: %@, inView: %@", buf, 0x2Au);
  }

  if ([(WTWritingToolsController *)self _wantsUCBUI]|| [(WTWritingToolsController *)self suppressSheetForKeyboardEditing]|| [(WTWritingToolsController *)self shouldHostInAppSizedContainerView])
  {
    v18 = [(WTWritingToolsController *)self suggestionQueue];
    dispatch_assert_queue_not_V2(v18);

    v19 = [(WTWritingToolsController *)self suggestionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111__WTWritingToolsController_proofreadingSessionWithUUID_showDetailsForSuggestionWithUUID_relativeToRect_inView___block_invoke;
    block[3] = &unk_1E8480DF8;
    block[4] = self;
    v21 = v12;
    v23 = x;
    v24 = y;
    v25 = width;
    v26 = height;
    v22 = v13;
    dispatch_sync(v19, block);

    [(WTWritingToolsController *)self _updateSuggestionPopover];
  }
}

uint64_t __111__WTWritingToolsController_proofreadingSessionWithUUID_showDetailsForSuggestionWithUUID_relativeToRect_inView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPopoverSuggestionUUID:*(a1 + 40)];
  [*(a1 + 32) setSuggestionPopoverSourceRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setSuggestionPopoverSourceView:v2];
}

- (void)textSystemWillBeginEditingDuringSessionWithUUID:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "textSystemWillBeginEditingDuringSessionWithUUID: %@", &v8, 0xCu);
  }

  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 != 1 || ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode] & 1) == 0)
  {
    [(WTWritingToolsController *)self setSuppressSheetForKeyboardEditing:1];
    [(WTWritingToolsController *)self setMinimizedIntoAssistant:0];
  }
}

- (void)setRemainingUndoCount:(unint64_t)a3
{
  self->_remainingUndoCount = a3;
  v4 = [(WTWritingToolsController *)self _textViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 setRemainingUndoCount:a3];
  }
}

- (void)setRemainingRedoCount:(unint64_t)a3
{
  self->_remainingRedoCount = a3;
  v4 = [(WTWritingToolsController *)self _textViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 setRemainingRedoCount:a3];
  }
}

- (void)remoteKeyboardChanged:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v15[0] = v6;
  v15[1] = @"com.apple.Feedback.DraftingExtension";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v8 = [v4 sourceBundleIdentifier];
  v9 = [v7 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [v4 sourceBundleIdentifier];
    v11 = [v10 isEqualToString:@"com.apple.WritingToolsUIService"];

    if (v11 || ([v4 hostBundleIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"com.apple.WritingToolsUIService"), v12, v13))
    {
      v14 = [(WTWritingToolsController *)self mainPopoverViewController];
      [v14 repositionWithKeyboardChangedInformation:v4];
    }

    else
    {
      -[WTWritingToolsController setSuppressWritingToolsForRemoteKeyboard:](self, "setSuppressWritingToolsForRemoteKeyboard:", [v4 keyboardOnScreen]);
    }
  }
}

- (void)updateKBSuppression
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(WTWritingToolsController *)self sourceResponderViewController];
  v6 = [v5 presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 1;
  }

  else
  {
    v8 = [(WTWritingToolsController *)self pendingError];
    v7 = v8 != 0;
  }

  v9 = [(WTWritingToolsController *)self _wantsUCBUI]& !v7;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(WTWritingToolsController *)self mainPopoverViewController];
    if (v11 || [(WTWritingToolsController *)self isPopoverTemporarilyDismissed]&& v4 == 1 && (_os_feature_enabled_impl() & 1) != 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = [(WTWritingToolsController *)self shouldHostInAppSizedContainerView]|| v7;
    }
  }

  v12 = _WTVCLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v10 & 1];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    v15 = [(WTWritingToolsController *)self mainPopoverViewController];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[WTWritingToolsController shouldHostInAppSizedContainerView](self, "shouldHostInAppSizedContainerView")}];
    v18 = 138413314;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    v26 = 1024;
    v27 = v7;
    _os_log_impl(&dword_1D451D000, v12, OS_LOG_TYPE_DEFAULT, "updateKBSuppression shouldSuppress: %@, shouldSuppressForUCBUI: %@, sheet/popover: %@, appSizedContainerView %@, error: %d", &v18, 0x30u);
  }

  v17 = [(WTWritingToolsController *)self sourceResponder];
  [v17 _setWritingToolsWantsKeyboardSuppression:v10 & 1 suppressAssistant:{-[WTWritingToolsController _wantsUCBUI](self, "_wantsUCBUI") ^ 1}];
}

- (void)updateSourceView
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(WTWritingToolsController *)self isWritingToolsActive])
  {
    [(WTWritingToolsController *)self _refreshWindowingModeEnabled];
    [(WTWritingToolsController *)self setMinimizedIntoUCB:[(WTWritingToolsController *)self _wantsUCBUI]];
    v3 = _WTVCLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      HIDWORD(buf) = [(WTWritingToolsController *)self shouldHostInAppSizedContainerView];
      _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_DEFAULT, "updateSourceView shouldHostInAppSizedContainerView (%d)", &buf, 8u);
    }

    if ([(WTWritingToolsController *)self shouldHostInAppSizedContainerView])
    {
      v4 = [(WTWritingToolsController *)self mainPopoverViewController];

      if (v4)
      {
        objc_initWeak(&buf, self);
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __44__WTWritingToolsController_updateSourceView__block_invoke;
        v7[3] = &unk_1E8480D08;
        objc_copyWeak(&v8, &buf);
        v7[4] = self;
        [(WTWritingToolsController *)self updateWritingToolsPopoverSuppressionWithCompletion:v7];
        objc_destroyWeak(&v8);
        objc_destroyWeak(&buf);
      }

      else
      {
        [(WTWritingToolsController *)self presentFullScreenViewController];
      }
    }

    else if ([(WTWritingToolsController *)self minimizedIntoUCB])
    {
      [(WTWritingToolsController *)self updateWritingToolsPopoverSuppression];
      v5 = [(WTWritingToolsController *)self mainPopoverViewController];
      v6 = v5 == 0;

      if (v6)
      {
        [(WTWritingToolsController *)self updateKBSuppression];
        [(WTWritingToolsController *)self updateInputDashboardViewController];
      }
    }

    else
    {
      [(WTWritingToolsController *)self _dismissSuggestionViewControllerWithCompletion:0];
      [(WTWritingToolsController *)self _dismissPromptEntryViewController];
      [(WTWritingToolsController *)self _dismissFullScreenViewControllerWithCompletion:0];
      [(WTWritingToolsController *)self _updatePopoverAnchoring];
      [(WTWritingToolsController *)self updateWritingToolsPopoverSuppression];
    }
  }
}

void __44__WTWritingToolsController_updateSourceView__block_invoke(uint64_t a1)
{
  v2 = _WTVCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1D451D000, v2, OS_LOG_TYPE_DEFAULT, "updateSourceView completed popover supression...", v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained session];
    if (v5 || ([v4 noninlineSessionUUID], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {

LABEL_7:
      [v4 presentFullScreenViewController];
      goto LABEL_11;
    }

    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    if ([v8 isFromHandoff])
    {
      goto LABEL_7;
    }

    v9 = _WTVCLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __44__WTWritingToolsController_updateSourceView__block_invoke_cold_1(v4, v7);
    }
  }

  else
  {
    v6 = _WTVCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__WTWritingToolsController_updateSourceView__block_invoke_cold_2();
    }
  }

LABEL_11:
}

- (void)updateInputDashboardViewController
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(WTWritingToolsController *)self sourceResponder];
  v4 = [(WTWritingToolsController *)self _wantsUCBUI];
  v5 = [(WTWritingToolsController *)self minimizedIntoAssistant];
  v6 = _WTVCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    [MEMORY[0x1E696AD98] numberWithBool:v4];
    v4 = v19 = v4;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v20 = v5;
    v5 = [(WTWritingToolsController *)self requestedTool];
    v9 = MEMORY[0x1E696AD98];
    v10 = [(WTWritingToolsController *)self session];
    v11 = [v9 numberWithInteger:{objc_msgSend(v10, "compositionSessionType")}];
    v12 = [v3 _writingToolsInputDashboardViewController];
    v13 = @"NO";
    *buf = 138413570;
    v22 = v4;
    v23 = 2112;
    if (!v12)
    {
      v13 = @"YES";
    }

    v24 = v7;
    v25 = 2112;
    v26 = v8;
    v27 = 2048;
    v28 = v5;
    LODWORD(v5) = v20;
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "updateInputDashboardViewController. wantsUCB %@, wantsFloatingDashboard: %@, wantsAssistant %@, requestedTool: %ld, rewriteType: %@, WTIDVC is nil: %@", buf, 0x3Eu);

    LODWORD(v4) = v19;
  }

  if (!v4)
  {
    if (!v5)
    {
      [v3 _setWritingToolsInputDashboardViewController:0];
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  v14 = [v3 _writingToolsInputDashboardViewController];

  if (v14)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_10:
    v15 = [v3 _writingToolsInputDashboardViewController];

    if (!v15)
    {
      v16 = [(WTWritingToolsController *)self _createProofreadingInputDashboardViewControllerForAssistant:1];
      [v3 _setWritingToolsInputDashboardViewController:v16];
    }

    goto LABEL_21;
  }

  if ([(WTWritingToolsController *)self _proofreadingSessionActiveOrRequested])
  {
    v17 = [(WTWritingToolsController *)self _createProofreadingInputDashboardViewControllerForAssistant:0];
    goto LABEL_17;
  }

  if ([(WTWritingToolsController *)self _rewritingSessionActiveOrRequested])
  {
    v17 = [(WTWritingToolsController *)self _createCompositionInputDashboardViewController];
    goto LABEL_17;
  }

  if ([objc_opt_class() iPadOSAlternateQuestionnaireEnabled] && -[WTWritingToolsController _smartReplySessionActiveOrRequested](self, "_smartReplySessionActiveOrRequested"))
  {
    v17 = [(WTWritingToolsController *)self _createSmartReplyInputDashboardViewController];
LABEL_17:
    v18 = v17;
    if (v17)
    {
      [v3 _setWritingToolsInputDashboardViewController:v17];
    }
  }

  if ([(WTWritingToolsController *)self _proofreadingSessionActiveOrRequested])
  {
    [(WTWritingToolsController *)self _updateSuggestionPopover];
  }

LABEL_21:
}

- (void)updateWritingToolsPopoverSuppressionWithCompletion:(id)a3
{
  v4 = a3;
  if ([(WTWritingToolsController *)self isPopoverTemporarilyDismissed])
  {
    v5 = [(WTWritingToolsController *)self mainPopoverViewController];

    if (v5)
    {
      v6 = _WTVCLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "dismissViewControllerAnimated for _updateWritingToolsSheetSuppression", buf, 2u);
      }

      v7 = [(WTWritingToolsController *)self mainPopoverViewController];
      v8 = [v7 presentingViewController];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __79__WTWritingToolsController_updateWritingToolsPopoverSuppressionWithCompletion___block_invoke;
      v13[3] = &unk_1E8480DD0;
      v13[4] = self;
      v14 = v4;
      [v8 dismissViewControllerAnimated:1 completion:v13];

      [(WTWritingToolsController *)self setMainPopoverViewController:0];
      v9 = v14;
      goto LABEL_6;
    }
  }

  if (![(WTWritingToolsController *)self isPopoverTemporarilyDismissed])
  {
    v10 = [(WTWritingToolsController *)self mainPopoverViewController];
    if (v10 || [(WTWritingToolsController *)self endingWritingToolsSession])
    {
    }

    else if (![(WTWritingToolsController *)self endingSharingSession])
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __79__WTWritingToolsController_updateWritingToolsPopoverSuppressionWithCompletion___block_invoke_2;
      v11[3] = &unk_1E8480DD0;
      v11[4] = self;
      v12 = v4;
      [(WTWritingToolsController *)self _presentMainPopoverViewControllerWithCompletion:v11];
      v9 = v12;
LABEL_6:

      goto LABEL_13;
    }
  }

  if (v4)
  {
    v4[2](v4);
  }

LABEL_13:
}

uint64_t __79__WTWritingToolsController_updateWritingToolsPopoverSuppressionWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInterfaceAutorotationDisabledIfNecessary:0];
  [*(a1 + 32) updateKBSuppression];
  [*(a1 + 32) updateInputDashboardViewController];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __79__WTWritingToolsController_updateWritingToolsPopoverSuppressionWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setInterfaceAutorotationDisabledIfNecessary:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setInterfaceAutorotationDisabledIfNecessary:(BOOL)a3
{
  v3 = a3;
  v53 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (!v6)
  {
    interfaceAutorotationDisabledAssertion = self->_interfaceAutorotationDisabledAssertion;
    if (interfaceAutorotationDisabledAssertion)
    {
      LODWORD(interfaceAutorotationDisabledAssertion) = [(BSSimpleAssertion *)interfaceAutorotationDisabledAssertion isValid];
    }

    if (v3 && (interfaceAutorotationDisabledAssertion & 1) == 0)
    {
      v8 = [(WTWritingToolsController *)self sourceResponderViewController];
      v9 = [v8 view];
      v10 = [v9 window];

      if (v10)
      {
        [v10 beginDisablingInterfaceAutorotation];
        v11 = MEMORY[0x1E696AEC0];
        v12 = [(WTWritingToolsController *)self sourceResponderViewController];
        if (v12)
        {
          v13 = MEMORY[0x1E696AEC0];
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v16 = [v13 stringWithFormat:@"<%@: %p>", v15, v12];
        }

        else
        {
          v16 = @"(nil)";
        }

        v23 = MEMORY[0x1E696AEC0];
        v10 = v10;
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [v23 stringWithFormat:@"<%@: %p>", v25, v10];

        v27 = [v11 stringWithFormat:@"WT dismiss disabling autorotation for window on behalf of controller=%@ window=%@", v16, v26];;

        objc_initWeak(&location, v10);
        v28 = objc_alloc(MEMORY[0x1E698E778]);
        v43 = MEMORY[0x1E69E9820];
        v44 = 3221225472;
        v45 = __72__WTWritingToolsController_setInterfaceAutorotationDisabledIfNecessary___block_invoke;
        v46 = &unk_1E8480E20;
        objc_copyWeak(&v47, &location);
        v29 = [v28 initWithIdentifier:@"WTWritingToolsController.windowDisableInterfaceAutorotation" forReason:v27 invalidationBlock:&v43];
        v30 = self->_interfaceAutorotationDisabledAssertion;
        self->_interfaceAutorotationDisabledAssertion = v29;

        v31 = _WTVCLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [(WTWritingToolsController *)self sourceResponderViewController];
          if (v32)
          {
            v33 = MEMORY[0x1E696AEC0];
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v36 = [v33 stringWithFormat:@"<%@: %p>", v35, v32, v43, v44, v45, v46];
          }

          else
          {
            v36 = @"(nil)";
          }

          v37 = v36;
          v38 = v10;
          v39 = MEMORY[0x1E696AEC0];
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = [v39 stringWithFormat:@"<%@: %p>", v41, v38];

          *buf = 138412546;
          v50 = v37;
          v51 = 2112;
          v52 = v42;
          _os_log_impl(&dword_1D451D000, v31, OS_LOG_TYPE_DEFAULT, "Set autorotation disable assertion for %@ on %@", buf, 0x16u);
        }

        objc_destroyWeak(&v47);
        objc_destroyWeak(&location);
      }

LABEL_23:

      return;
    }

    if (!v3 && ((interfaceAutorotationDisabledAssertion ^ 1) & 1) == 0)
    {
      [(BSSimpleAssertion *)self->_interfaceAutorotationDisabledAssertion invalidate];
      v17 = self->_interfaceAutorotationDisabledAssertion;
      self->_interfaceAutorotationDisabledAssertion = 0;

      v10 = _WTVCLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(WTWritingToolsController *)self sourceResponderViewController];
        if (v18)
        {
          v19 = MEMORY[0x1E696AEC0];
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = [v19 stringWithFormat:@"<%@: %p>", v21, v18];
        }

        else
        {
          v22 = @"(nil)";
        }

        *buf = 138412290;
        v50 = v22;
        _os_log_impl(&dword_1D451D000, v10, OS_LOG_TYPE_DEFAULT, "Invalidated autorotation disable assertion for %@", buf, 0xCu);
      }

      goto LABEL_23;
    }
  }
}

void __72__WTWritingToolsController_setInterfaceAutorotationDisabledIfNecessary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endDisablingInterfaceAutorotation];
}

- (id)sourceResponderViewController
{
  v2 = [(WTWritingToolsController *)self sourceResponder];
  v3 = [v2 _viewControllerForWritingToolsSource];

  return v3;
}

- (BOOL)isPopoverTemporarilyDismissed
{
  if ([(WTWritingToolsController *)self suppressingSheetForRemoteKeyboardOnScreen]|| [(WTWritingToolsController *)self minimizedIntoUCB]|| [(WTWritingToolsController *)self suppressSheetForKeyboardEditing]|| [(WTWritingToolsController *)self presentingFormSheet]|| [(WTWritingToolsController *)self presentingPromptEntry]|| [(WTWritingToolsController *)self temporarilySuppressPopoverForAdjustment])
  {
    return 1;
  }

  return [(WTWritingToolsController *)self shouldHostInAppSizedContainerView];
}

- (void)selectionDidUpdate
{
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [WTWritingToolsController selectionDidUpdate];
  }

  v4 = [(WTWritingToolsController *)self _sessionSupportsPopoverAdjustment];
  if ([(WTWritingToolsController *)self _smartReplySessionActive])
  {
    [(WTWritingToolsController *)self updateSourceView];
  }

  else if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__WTWritingToolsController_selectionDidUpdate__block_invoke;
    block[3] = &unk_1E8480BF8;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __46__WTWritingToolsController_selectionDidUpdate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _visibleApproximationOfTextSelectionRect];
  v3 = v2;
  v5 = v4;
  v6 = [*(a1 + 32) mainPopoverViewController];
  v7 = [v6 popoverPresentationController];
  [v7 sourceRect];
  v9 = v8;
  v11 = v10;

  result = _os_feature_enabled_impl();
  if (result)
  {
    result = [*(a1 + 32) _visibleApproximationOfTextSelectionRect];
    if (v13 != 0.0)
    {
      result = [*(a1 + 32) popoverWillAdjust];
      if (result)
      {
        result = [*(a1 + 32) temporarilySuppressPopoverForAdjustment];
        if (result)
        {
          [*(a1 + 32) setTemporarilySuppressPopoverForAdjustment:0];
          v14 = *(a1 + 32);

          return [v14 updateWritingToolsPopoverSuppression];
        }
      }
    }
  }

  else if (v3 == v9 && v5 == v11)
  {
    v16 = *(a1 + 32);

    return [v16 updateSourceView];
  }

  return result;
}

- (id)_inputDashboardViewController
{
  v2 = [(WTWritingToolsController *)self sourceResponder];
  v3 = [v2 _writingToolsInputDashboardViewController];

  return v3;
}

- (id)_createProofreadingInputDashboardViewControllerForAssistant:(BOOL)a3
{
  v4 = [(WTWritingToolsController *)self _startupOptionsForSceneHostedViewControllerForRequestedTool:1 isForInputDashboard:1 isForAssistant:a3];
  v5 = [[WTSceneHostedInputDashboardViewController alloc] initWithWritingToolsDelegate:self startupOptions:v4];

  return v5;
}

- (id)_createCompositionInputDashboardViewController
{
  v3 = [(WTWritingToolsController *)self _startupOptionsForSceneHostedViewControllerForRequestedTool:2 isForInputDashboard:1 isForAssistant:0];
  v4 = [[WTSceneHostedInputDashboardViewController alloc] initWithWritingToolsDelegate:self startupOptions:v3];

  return v4;
}

- (id)_createSmartReplyInputDashboardViewController
{
  if ([objc_opt_class() iPadOSAlternateQuestionnaireEnabled])
  {
    v3 = [(WTWritingToolsController *)self _startupOptionsForSceneHostedViewControllerForRequestedTool:101 isForInputDashboard:1 isForAssistant:0];
    v4 = [[WTSceneHostedInputDashboardViewController alloc] initWithWritingToolsDelegate:self startupOptions:v3];
  }

  else
  {
    v5 = _WTVCLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WTWritingToolsController _createSmartReplyInputDashboardViewController];
    }

    v4 = 0;
  }

  return v4;
}

- (void)_revertAllSuggestions
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(WTWritingToolsController *)self proofreadingSuggestions];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = [(WTWritingToolsController *)self session];
        v10 = [v9 uuid];
        v11 = [v8 uuid];
        [(WTWritingToolsController *)self proofreadingSessionWithUUID:v10 updateState:3 forSuggestionWithUUID:v11];

        v12 = [(WTWritingToolsController *)self contextForSuggestions];
        v13 = [v8 uuid];
        v14 = [v12 objectForKeyedSubscript:v13];

        v15 = [(WTWritingToolsController *)self session];
        v16 = [v8 uuid];
        v17 = [(WTWritingToolsController *)self uuidContextMapping];
        v18 = [v17 objectForKeyedSubscript:v14];
        [(WTWritingToolsController *)self proofreadingSession:v15 didUpdateState:3 forSuggestionWithUUID:v16 inContext:v18];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }
}

- (BOOL)_proofreadingSessionActive
{
  v3 = [(WTWritingToolsController *)self session];
  if (v3)
  {
    v4 = [(WTWritingToolsController *)self session];
    v5 = [v4 type] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_proofreadingSessionActiveOrRequested
{
  v3 = [(WTWritingToolsController *)self requestedTool];
  if (v3 != 1)
  {

    LOBYTE(v3) = [(WTWritingToolsController *)self _proofreadingSessionActive];
  }

  return v3;
}

- (BOOL)_rewritingSessionActive
{
  v3 = [(WTWritingToolsController *)self session];
  if (v3)
  {
    v4 = [(WTWritingToolsController *)self session];
    if ([v4 type] == 2)
    {
      v5 = [(WTWritingToolsController *)self session];
      if ([v5 compositionSessionType] == 11)
      {
        v6 = 0;
      }

      else
      {
        v7 = [(WTWritingToolsController *)self session];
        v6 = [v7 compositionSessionType] != 10;
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

  return v6;
}

- (BOOL)_smartReplySessionActive
{
  v3 = [(WTWritingToolsController *)self session];
  if (v3)
  {
    v4 = [(WTWritingToolsController *)self session];
    if ([v4 type] == 2)
    {
      v5 = [(WTWritingToolsController *)self session];
      v6 = [v5 compositionSessionType] == 11;
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

  return v6;
}

- (BOOL)_rewritingSessionActiveOrRequested
{
  if ([(WTWritingToolsController *)self requestedTool]== 2 || [(WTWritingToolsController *)self requestedTool]== 3 || [(WTWritingToolsController *)self requestedTool]== 11 || [(WTWritingToolsController *)self requestedTool]== 12 || [(WTWritingToolsController *)self requestedTool]== 13 || [(WTWritingToolsController *)self requestedTool]== 23 || [(WTWritingToolsController *)self requestedTool]== 24)
  {
    return 1;
  }

  return [(WTWritingToolsController *)self _rewritingSessionActive];
}

- (BOOL)_smartReplySessionActiveOrRequested
{
  if ([(WTWritingToolsController *)self requestedTool]== 101)
  {
    return 1;
  }

  return [(WTWritingToolsController *)self _smartReplySessionActive];
}

- (BOOL)_compositionSessionActive
{
  v3 = [(WTWritingToolsController *)self session];
  if (v3)
  {
    v4 = [(WTWritingToolsController *)self session];
    if ([v4 type] == 2)
    {
      v5 = [(WTWritingToolsController *)self session];
      v6 = [v5 compositionSessionType] == 10;
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

  return v6;
}

- (BOOL)_sessionSupportsPopoverAdjustment
{
  v3 = [(WTWritingToolsController *)self beTextInput];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(WTWritingToolsController *)self sourceTextInput];
    v4 = [v5 conformsToProtocol:&unk_1F4FEE360] ^ 1;
  }

  v6 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v6 userInterfaceIdiom] == 1 && -[WTWritingToolsController _compositionSessionActive](self, "_compositionSessionActive"))
  {
    v7 = _os_feature_enabled_impl() & v4;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_wantsUCBUI
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 1 || [(WTWritingToolsController *)self switchedFromUCBToPopover]|| ![(WTWritingToolsController *)self _smartReplySessionActiveOrRequested])
  {
    return 0;
  }

  if ([(WTWritingToolsController *)self isWindowingModeEnabled])
  {

    return [(WTWritingToolsController *)self _wantsUCBUI_ucbSupportedStageManagerActive];
  }

  else
  {

    return [(WTWritingToolsController *)self _wantsUCBUI_ucbSupported];
  }
}

- (BOOL)_wantsUCBUI_ucbSupported
{
  if ([(WTWritingToolsController *)self suppressSheetForKeyboardEditing])
  {
    goto LABEL_2;
  }

  v3 = [(WTWritingToolsController *)self _wantsInlineEditing];
  if (!v3)
  {
    return v3;
  }

  if (-[WTWritingToolsController _proofreadingSessionActiveOrRequested](self, "_proofreadingSessionActiveOrRequested") || !-[WTWritingToolsController shouldHostInAppSizedContainerView](self, "shouldHostInAppSizedContainerView") && -[WTWritingToolsController _rewritingSessionActiveOrRequested](self, "_rewritingSessionActiveOrRequested") || [objc_opt_class() iPadOSAlternateQuestionnaireEnabled] && -[WTWritingToolsController _smartReplySessionActiveOrRequested](self, "_smartReplySessionActiveOrRequested"))
  {
    LOBYTE(v3) = 1;
    return v3;
  }

  v4 = [(WTWritingToolsController *)self session];
  v5 = [v4 compositionSessionType];

  if (v5 != 11)
  {
LABEL_2:
    LOBYTE(v3) = 0;
  }

  else
  {
    v6 = objc_opt_class();

    LOBYTE(v3) = [v6 iPadOSAlternateQuestionnaireEnabled];
  }

  return v3;
}

- (BOOL)_wantsUCBUI_ucbSupportedStageManagerActive
{
  if ([(WTWritingToolsController *)self sourceResponderHorizontalSizeClass]== 1)
  {
    return 0;
  }

  return [(WTWritingToolsController *)self _wantsUCBUI_ucbSupported];
}

- (CGRect)_textSelectionRectForTextInput
{
  v3 = [(WTWritingToolsController *)self sourceTextInput];
  v4 = [v3 selectedTextRange];

  v5 = [(WTWritingToolsController *)self sourceTextInput];
  v6 = [v5 selectionRectsForRange:v4];

  if ([(WTWritingToolsController *)self _smartReplySessionActiveOrRequested])
  {
    [(WTWritingToolsController *)self _textSelectionRectForSmartReplyPopoverForRange:v4 selectionRects:v6];
  }

  else
  {
    [(WTWritingToolsController *)self _cgRectForSelectionRects:v6];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_textSelectionRectForSmartReplyPopoverForRange:(id)a3 selectionRects:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WTWritingToolsController *)self sourceTextInput];
  v9 = [v8 textInputView];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(WTWritingToolsController *)self _cgRectForSelectionRects:v6];
  v17 = v16;
  v19 = v18;

  v20 = [v7 isEmpty];
  if (v20)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = v19;
  }

  if (v20)
  {
    v22 = v13;
  }

  else
  {
    v22 = v17;
  }

  v23 = v11;
  v24 = v15;
  result.size.height = v21;
  result.size.width = v24;
  result.origin.y = v22;
  result.origin.x = v23;
  return result;
}

- (CGRect)_cgRectForSelectionRects:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v20 + 1) + 8 * v11) rect];
        v29.origin.x = v12;
        v29.origin.y = v13;
        v29.size.width = v14;
        v29.size.height = v15;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v27 = CGRectUnion(v26, v29);
        x = v27.origin.x;
        y = v27.origin.y;
        width = v27.size.width;
        height = v27.size.height;
        ++v11;
      }

      while (v9 != v11);
      v9 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)setSuppressSheetForKeyboardEditing:(BOOL)a3
{
  if (self->_suppressSheetForKeyboardEditing != a3)
  {
    self->_suppressSheetForKeyboardEditing = a3;
    [(WTWritingToolsController *)self updateWritingToolsPopoverSuppression];
    [(WTWritingToolsController *)self updateKBSuppression];

    [(WTWritingToolsController *)self updateInputDashboardViewController];
  }
}

- (void)setMinimizedIntoAssistant:(BOOL)a3
{
  if (self->_minimizedIntoAssistant != a3)
  {
    self->_minimizedIntoAssistant = a3;
    v5 = [(WTWritingToolsController *)self sourceResponder];
    [v5 _setWritingToolsInputDashboardViewController:0];
    [(WTWritingToolsController *)self updateInputDashboardViewController];
  }
}

- (BOOL)popoverWillAdjust
{
  v2 = self;
  [(WTWritingToolsController *)self _visibleApproximationOfTextSelectionRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(WTWritingToolsController *)v2 mainPopoverViewController];
  v12 = [v11 popoverPresentationController];
  LOBYTE(v2) = [(WTWritingToolsController *)v2 shouldAdjustPopoverPresentationController:v12 toRect:v4, v6, v8, v10];

  return v2;
}

- (void)_updatePopoverAnchoring
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_DEFAULT, "_updatePopoverAnchoring", v20, 2u);
  }

  v4 = [(WTWritingToolsController *)self mainPopoverViewController];
  v5 = [v4 popoverPresentationController];

  if ([(WTWritingToolsController *)self _compositionSessionActive]&& _os_feature_enabled_impl())
  {
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    v7 = [v6 userInterfaceIdiom] == 1;
  }

  else
  {
    v7 = 0;
  }

  [(WTWritingToolsController *)self _visibleApproximationOfTextSelectionRect];
  if ([(WTWritingToolsController *)self shouldAdjustPopoverPresentationController:v5 toRect:?])
  {
    if (v7)
    {
      [v5 setSourceView:0];
    }

    [v5 setCanOverlapSourceViewRect:!v7];
    v8 = [(WTWritingToolsController *)self sourceTextInput];
    v9 = [v8 textInputView];
    [v5 setSourceView:v9];

    [(WTWritingToolsController *)self _visibleApproximationOfTextSelectionRect];
    [v5 setSourceRect:?];
    [v5 setPermittedArrowDirections:{-[WTWritingToolsController _permittedPopoverArrowDirection](self, "_permittedPopoverArrowDirection")}];
    v10 = [v5 containerView];
    [v10 setNeedsLayout];

    v11 = [v5 containerView];
    [v11 layoutIfNeeded];

    v12 = [(WTWritingToolsController *)self session];
    if (v12)
    {
    }

    else if (![(WTWritingToolsController *)self requestedTool])
    {
      [v5 setPassthroughViews:0];
      goto LABEL_17;
    }

    v13 = [(WTWritingToolsController *)self sourceTextInput];
    v14 = [v13 textInputView];
    v15 = v14;
    if (v7)
    {
      v22[0] = v14;
      v16 = [(WTWritingToolsController *)self sourceTextInput];
      v17 = [v16 textInputView];
      v18 = [v17 superview];
      v22[1] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
      [v5 setPassthroughViews:v19];
    }

    else
    {
      v21 = v14;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
      [v5 setPassthroughViews:v16];
    }
  }

LABEL_17:
}

- (BOOL)shouldAdjustPopoverPresentationController:(id)a3 toRect:(CGRect)a4
{
  width = a4.size.width;
  v6 = a3;
  if ([(WTWritingToolsController *)self _compositionSessionActive])
  {
    v7 = _os_feature_enabled_impl() ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  v8 = [v6 sourceView];

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1;
  }

  if (width == 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (CGRect)_visibleApproximationOfTextSelectionRect
{
  [(WTWritingToolsController *)self _textSelectionRectForTextInput];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(WTWritingToolsController *)self sourceTextInput];
  v12 = [v11 textInputView];

  v13 = [v12 window];
  v14 = [v12 window];
  [v14 bounds];
  [v13 convertRect:v12 toView:?];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v31.origin.x = v16;
  v31.origin.y = v18;
  v31.size.width = v20;
  v31.size.height = v22;
  v34.origin.x = v4;
  v34.origin.y = v6;
  v34.size.width = v8;
  v34.size.height = v10;
  v32 = CGRectIntersection(v31, v34);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (unint64_t)_permittedPopoverArrowDirection
{
  if ([(WTWritingToolsController *)self _smartReplySessionActiveOrRequested])
  {
    return 1;
  }

  else
  {
    return 15;
  }
}

- (id)_assistantProofreadBarButton
{
  v22[3] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC628];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__WTWritingToolsController__assistantProofreadBarButton__block_invoke;
  v19[3] = &unk_1E8480E48;
  objc_copyWeak(&v20, &location);
  v16 = [v3 actionWithHandler:v19];
  v4 = [MEMORY[0x1E69DC738] systemButtonWithPrimaryAction:?];
  v5 = objc_alloc_init(WTProofreadCandidateBarView);
  [(WTProofreadCandidateBarView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(WTWritingToolsController *)self proofreadingSuggestions];
  -[WTProofreadCandidateBarView setSuggestionCount:](v5, "setSuggestionCount:", [v6 count]);

  [(WTWritingToolsController *)self setProofreadCandidateBarView:v5];
  [v4 addSubview:v5];
  v17 = MEMORY[0x1E696ACD8];
  v18 = [(WTProofreadCandidateBarView *)v5 centerXAnchor];
  v7 = [v4 centerXAnchor];
  v8 = [v18 constraintEqualToAnchor:v7];
  v22[0] = v8;
  v9 = [(WTProofreadCandidateBarView *)v5 topAnchor];
  v10 = [v4 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:4.0];
  v22[1] = v11;
  v12 = [v4 widthAnchor];
  v13 = [v12 constraintEqualToConstant:60.0];
  v22[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  [v17 activateConstraints:v14];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v4;
}

void __56__WTWritingToolsController__assistantProofreadBarButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMinimizedIntoAssistant:1];
}

- (id)_assistantBarButtonCustomViewWithTitle:(id)a3 handler:(id)a4
{
  v40[4] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MEMORY[0x1E69DD298];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = objc_alloc(MEMORY[0x1E69DD568]);
  v10 = [MEMORY[0x1E69DD578] sharedLight];
  v11 = [v9 initWithLightSource:v10];
  v12 = [v8 initWithEffect:v11];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = MEMORY[0x1E69DC628];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __75__WTWritingToolsController__assistantBarButtonCustomViewWithTitle_handler___block_invoke;
  v38[3] = &unk_1E8480E70;
  v39 = v5;
  v37 = v5;
  v36 = [v13 actionWithHandler:v38];
  v14 = [MEMORY[0x1E69DC738] systemButtonWithPrimaryAction:v36];
  [v14 setAttributedTitle:v7 forState:0];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setContentEdgeInsets:{20.0, 6.0, 20.0, 6.0}];
  v15 = [v12 contentView];
  [v15 addSubview:v14];

  v28 = MEMORY[0x1E696ACD8];
  v35 = [v12 contentView];
  v34 = [v35 leadingAnchor];
  v33 = [v14 leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v40[0] = v32;
  v31 = [v12 contentView];
  v30 = [v31 trailingAnchor];
  v29 = [v14 trailingAnchor];
  v27 = [v30 constraintEqualToAnchor:v29];
  v40[1] = v27;
  v16 = [v12 contentView];
  v17 = [v16 topAnchor];
  v18 = [v14 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v40[2] = v19;
  v26 = v12;
  v20 = [v12 contentView];
  v21 = [v20 bottomAnchor];
  v22 = [v14 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v40[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  [v28 activateConstraints:v24];

  return v26;
}

- (void)setSuppressWritingToolsForRemoteKeyboard:(BOOL)a3
{
  v3 = a3;
  v5 = [(WTWritingToolsController *)self mainPopoverViewController];
  v6 = [v5 presentedAsSheet];

  if (v6)
  {
    [(WTWritingToolsController *)self setSuppressingSheetForRemoteKeyboardOnScreen:v3];

    [(WTWritingToolsController *)self updateWritingToolsPopoverSuppression];
  }
}

- (void)_updateSuggestionPopover
{
  v3 = [(WTWritingToolsController *)self suggestionQueue];
  dispatch_assert_queue_not_V2(v3);

  v4 = [(WTWritingToolsController *)self suggestionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WTWritingToolsController__updateSuggestionPopover__block_invoke;
  block[3] = &unk_1E8480BF8;
  block[4] = self;
  dispatch_sync(v4, block);
}

void __52__WTWritingToolsController__updateSuggestionPopover__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) handlingSuggestionPopoverChange] & 1) == 0)
  {
    [*(a1 + 32) setHandlingSuggestionPopoverChange:1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__WTWritingToolsController__updateSuggestionPopover__block_invoke_2;
    block[3] = &unk_1E8480BF8;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __52__WTWritingToolsController__updateSuggestionPopover__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__WTWritingToolsController__updateSuggestionPopover__block_invoke_3;
  v3[3] = &unk_1E8480BF8;
  v3[4] = v1;
  return [v1 __updateSuggestionPopoverWithCompletion:v3];
}

uint64_t __52__WTWritingToolsController__updateSuggestionPopover__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) suggestionQueue];
  dispatch_assert_queue_not_V2(v2);

  v3 = [*(a1 + 32) suggestionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WTWritingToolsController__updateSuggestionPopover__block_invoke_4;
  block[3] = &unk_1E8480BF8;
  block[4] = *(a1 + 32);
  dispatch_sync(v3, block);

  return [*(a1 + 32) _checkForPendingSuggestion];
}

- (void)__updateSuggestionPopoverWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v5 userInterfaceIdiom] == 6)
  {
    v6 = [objc_opt_class() isNativeRedesignForVisionOSEnabled] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(WTWritingToolsController *)self popoverSuggestionUUID];

  if (!v7 || v6)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__WTWritingToolsController___updateSuggestionPopoverWithCompletion___block_invoke;
    v21[3] = &unk_1E8480E98;
    v22 = v4;
    [(WTWritingToolsController *)self _dismissSuggestionViewControllerWithCompletion:v21];
    v16 = v22;
LABEL_13:

    goto LABEL_14;
  }

  v8 = [(WTWritingToolsController *)self popoverSuggestionUUID];
  v9 = [(WTWritingToolsController *)self currentSuggestionViewController];
  v10 = [v9 suggestion];
  v11 = [v10 uuid];
  v12 = [v8 isEqual:v11];

  if ((v12 & 1) == 0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__WTWritingToolsController___updateSuggestionPopoverWithCompletion___block_invoke_2;
    v19[3] = &unk_1E8480DD0;
    v19[4] = self;
    v20 = v4;
    [(WTWritingToolsController *)self _dismissSuggestionViewControllerWithCompletion:v19];
    v16 = v20;
    goto LABEL_13;
  }

  v13 = [(WTWritingToolsController *)self popoverSuggestionUUID];
  if (v13)
  {
    v14 = v13;
    v15 = [(WTWritingToolsController *)self currentSuggestionViewController];

    if (!v15)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __68__WTWritingToolsController___updateSuggestionPopoverWithCompletion___block_invoke_4;
      v17[3] = &unk_1E8480E98;
      v18 = v4;
      [(WTWritingToolsController *)self _presentSuggestionViewControllerWithCompletion:v17];
      v16 = v18;
      goto LABEL_13;
    }
  }

  if (v4)
  {
    v4[2](v4);
  }

LABEL_14:
}

uint64_t __68__WTWritingToolsController___updateSuggestionPopoverWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __68__WTWritingToolsController___updateSuggestionPopoverWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSuggestionViewController];
  [v2 invalidateConnection];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__WTWritingToolsController___updateSuggestionPopoverWithCompletion___block_invoke_3;
  v4[3] = &unk_1E8480E98;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _presentSuggestionViewControllerWithCompletion:v4];
}

uint64_t __68__WTWritingToolsController___updateSuggestionPopoverWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __68__WTWritingToolsController___updateSuggestionPopoverWithCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_checkForPendingSuggestion
{
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_DEFAULT, "Checking for pending suggestion...", buf, 2u);
  }

  *buf = 0;
  v8 = buf;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(WTWritingToolsController *)self suggestionQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = [(WTWritingToolsController *)self suggestionQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__WTWritingToolsController__checkForPendingSuggestion__block_invoke;
  v6[3] = &unk_1E8480EC0;
  v6[4] = self;
  v6[5] = buf;
  dispatch_sync(v5, v6);

  if (v8[24] == 1)
  {
    [(WTWritingToolsController *)self _updateSuggestionPopover];
  }

  _Block_object_dispose(buf, 8);
}

void __54__WTWritingToolsController__checkForPendingSuggestion__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) currentSuggestionViewController];
  v2 = [v6 suggestion];
  v3 = [v2 uuid];
  v4 = [*(a1 + 32) popoverSuggestionUUID];
  if (v3 == v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v5 = [*(a1 + 32) popoverSuggestionUUID];
    *(*(*(a1 + 40) + 8) + 24) = v5 != 0;
  }
}

- (void)_updatePromptEntryPopover
{
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_DEFAULT, "Update prompt entry view controller...", v4, 2u);
  }

  [(WTWritingToolsController *)self _presentPromptEntryViewController];
}

- (void)_presentSuggestionViewControllerWithCompletion:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WTWritingToolsController *)self uuidSuggestionMapping];
  v6 = [(WTWritingToolsController *)self popoverSuggestionUUID];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [(WTWritingToolsController *)self contextForSuggestions];
  v9 = [v7 uuid];
  v10 = [v8 objectForKeyedSubscript:v9];

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy_;
  v33[4] = __Block_byref_object_dispose_;
  v34 = 0;
  v11 = [(WTWritingToolsController *)self suggestionQueue];
  dispatch_assert_queue_not_V2(v11);

  v12 = [(WTWritingToolsController *)self suggestionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__WTWritingToolsController__presentSuggestionViewControllerWithCompletion___block_invoke;
  block[3] = &unk_1E8480EE8;
  v32 = v33;
  v13 = v7;
  v29 = v13;
  v14 = v10;
  v30 = v14;
  v31 = self;
  dispatch_sync(v12, block);

  if ([(WTWritingToolsController *)self shouldHostInAppSizedContainerView])
  {
    [(WTWritingToolsController *)self fullScreenContainerViewController];
  }

  else
  {
    [(WTWritingToolsController *)self sourceResponderViewController];
  }
  v15 = ;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __75__WTWritingToolsController__presentSuggestionViewControllerWithCompletion___block_invoke_2;
  v24[3] = &unk_1E8480F38;
  v24[4] = self;
  v27 = v33;
  v16 = v15;
  v25 = v16;
  v17 = v4;
  v26 = v17;
  v18 = MEMORY[0x1DA6D90E0](v24);
  v19 = [v16 presentedViewController];

  if (v19)
  {
    v20 = _WTVCLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [v16 presentedViewController];
      [(WTWritingToolsController *)v21 _presentSuggestionViewControllerWithCompletion:buf, v20];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __75__WTWritingToolsController__presentSuggestionViewControllerWithCompletion___block_invoke_664;
    v22[3] = &unk_1E8480E98;
    v23 = v18;
    [(WTWritingToolsController *)self _dismissSuggestionViewControllerWithCompletion:v22];
  }

  else
  {
    v18[2](v18);
  }

  _Block_object_dispose(v33, 8);
}

void __75__WTWritingToolsController__presentSuggestionViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [WTSuggestionViewController alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) session];
  v6 = [(WTSuggestionViewController *)v2 initWithSuggestion:v3 inContextWithUUID:v4 inSession:v5];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [*(*(*(a1 + 56) + 8) + 40) setModalPresentationStyle:7];
  v9 = [*(a1 + 48) suggestionPopoverSourceView];
  v10 = [*(*(*(a1 + 56) + 8) + 40) popoverPresentationController];
  [v10 setSourceView:v9];

  [*(a1 + 48) suggestionPopoverSourceRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [*(*(*(a1 + 56) + 8) + 40) popoverPresentationController];
  [v19 setSourceRect:{v12, v14, v16, v18}];

  v20 = [*(*(*(a1 + 56) + 8) + 40) popoverPresentationController];
  [v20 _setOverrideAllowsHitTestingOnBackgroundViews:0];

  v21 = [*(*(*(a1 + 56) + 8) + 40) popoverPresentationController];
  [v21 setPermittedArrowDirections:3];
}

void __75__WTWritingToolsController__presentSuggestionViewControllerWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) suggestionQueue];
  dispatch_assert_queue_not_V2(v2);

  v3 = [*(a1 + 32) suggestionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__WTWritingToolsController__presentSuggestionViewControllerWithCompletion___block_invoke_3;
  block[3] = &unk_1E8480F10;
  v4 = *(a1 + 56);
  block[4] = *(a1 + 32);
  block[5] = v4;
  dispatch_sync(v3, block);

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) currentSuggestionViewController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WTWritingToolsController__presentSuggestionViewControllerWithCompletion___block_invoke_4;
  v7[3] = &unk_1E8480E98;
  v8 = *(a1 + 48);
  [v5 presentViewController:v6 animated:1 completion:v7];
}

uint64_t __75__WTWritingToolsController__presentSuggestionViewControllerWithCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_presentPromptEntryViewController
{
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_DEFAULT, "Presenting prompt entry view controller...", v26, 2u);
  }

  [(WTWritingToolsController *)self setPresentingPromptEntry:1];
  [(WTWritingToolsController *)self updateWritingToolsPopoverSuppression];
  v4 = [WTPromptEntryViewController alloc];
  v5 = [(WTWritingToolsController *)self session];
  v6 = [(WTPromptEntryViewController *)v4 initWithWritingToolsController:self session:v5];

  [(WTPromptEntryViewController *)v6 setModalPresentationStyle:7];
  v7 = [(WTWritingToolsController *)self sourceResponderViewController];
  v8 = [v7 view];
  v9 = [(WTPromptEntryViewController *)v6 popoverPresentationController];
  [v9 setSourceView:v8];

  v10 = [(WTPromptEntryViewController *)v6 popoverPresentationController];
  v11 = [v10 sourceView];
  v12 = [v11 keyboardLayoutGuide];
  [v12 layoutFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(WTPromptEntryViewController *)v6 popoverPresentationController];
  [v21 setSourceRect:{v14, v16, v18, v20}];

  v22 = [(WTPromptEntryViewController *)v6 popoverPresentationController];
  [v22 _setShouldHideArrow:1];

  v23 = [(WTPromptEntryViewController *)v6 _popoverController];
  [v23 setDelegate:v6];

  [(WTWritingToolsController *)self setCurrentPromptEntryViewController:v6];
  v24 = [(WTWritingToolsController *)self sourceResponderViewController];
  v25 = [(WTWritingToolsController *)self currentPromptEntryViewController];
  [v24 presentViewController:v25 animated:1 completion:0];
}

- (void)presentFullScreenViewController
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__WTWritingToolsController_presentFullScreenViewController__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = _WTVCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 134217984;
    v12 = v3;
    _os_log_impl(&dword_1D451D000, v2, OS_LOG_TYPE_DEFAULT, "End presenting fullScreenViewController for %ld...", buf, 0xCu);
  }

  v4 = [*(a1 + 32) fullScreenContainerViewController];
  v5 = [v4 presentationController];
  v6 = [v5 containerView];
  [v6 setUserInteractionEnabled:0];

  v7 = [*(a1 + 32) pendingError];

  if (v7)
  {
    v8 = _WTVCLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_DEFAULT, "Handling pendingError after fullScreenViewController presentation", buf, 2u);
    }

    v9 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__WTWritingToolsController_presentFullScreenViewController__block_invoke_667;
    v10[3] = &unk_1E8480CE0;
    v10[4] = v9;
    [v9 _dismissFullScreenViewControllerWithCompletion:v10];
  }
}

void __59__WTWritingToolsController_presentFullScreenViewController__block_invoke_667(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 pendingError];
  [v1 presentError:v2];
}

- (void)_dismissFullScreenViewControllerWithCompletion:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WTWritingToolsController *)self fullScreenContainerViewController];

  if (v5)
  {
    v6 = _WTVCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(WTWritingToolsController *)self fullScreenContainerViewController];
      v8 = [(WTWritingToolsController *)self sourceResponderViewController];
      *buf = 138412546;
      v27 = v7;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "Requested dismissFullScreenViewController %@ (sourceResponderViewController: %@)", buf, 0x16u);
    }
  }

  v9 = [(WTWritingToolsController *)self fullScreenContainerViewController];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [(WTWritingToolsController *)self fullScreenContainerViewController];
  v12 = [v11 presentationController];
  if ([v12 dismissed])
  {
    goto LABEL_9;
  }

  v13 = [(WTWritingToolsController *)self fullScreenContainerViewController];
  v14 = [v13 presentationController];
  if ([v14 dismissing])
  {

LABEL_9:
LABEL_10:
    v15 = _WTVCLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D451D000, v15, OS_LOG_TYPE_DEFAULT, "Skipping dismissFullScreenViewController due to already dismissing/dismissed", buf, 2u);
    }

    if (v4)
    {
      v4[2](v4, 0);
    }

    goto LABEL_14;
  }

  v16 = [(WTWritingToolsController *)self dismissingFullscreenViewController];

  if (v16)
  {
    goto LABEL_10;
  }

  v17 = [(WTWritingToolsController *)self sourceResponderViewController];
  v18 = [v17 presentedViewController];

  v19 = [(WTWritingToolsController *)self fullScreenContainerViewController];
  v20 = [v18 isEqual:v19];

  if (v20)
  {
    [(WTWritingToolsController *)self setDismissingFullscreenViewController:1];
    v21 = _WTVCLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [WTWritingToolsController _dismissFullScreenViewControllerWithCompletion:];
    }

    v22 = [(WTWritingToolsController *)self sourceResponderViewController];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __75__WTWritingToolsController__dismissFullScreenViewControllerWithCompletion___block_invoke;
    v24[3] = &unk_1E8480DD0;
    v24[4] = self;
    v25 = v4;
    [v22 dismissViewControllerAnimated:0 completion:v24];
  }

  else
  {
    v23 = _WTVCLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [WTWritingToolsController _dismissFullScreenViewControllerWithCompletion:];
    }

    if (v4)
    {
      v4[2](v4, 0);
    }
  }

LABEL_14:
}

uint64_t __75__WTWritingToolsController__dismissFullScreenViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _WTVCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __75__WTWritingToolsController__dismissFullScreenViewControllerWithCompletion___block_invoke_cold_1();
  }

  [*(a1 + 32) setDismissingFullscreenViewController:0];
  [*(a1 + 32) setFullScreenContainerViewController:0];
  [*(a1 + 32) updateKBSuppression];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)_dismissSuggestionViewControllerWithCompletion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(WTWritingToolsController *)self currentSuggestionViewController];
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "_dismissSuggestionViewController, %@", buf, 0xCu);
  }

  v7 = [(WTWritingToolsController *)self currentSuggestionViewController];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [(WTWritingToolsController *)self currentSuggestionViewController];
  v10 = [v9 presentationController];
  if ([v10 dismissed])
  {

    goto LABEL_7;
  }

  v11 = [(WTWritingToolsController *)self currentSuggestionViewController];
  v12 = [v11 presentationController];
  v13 = [v12 dismissing];

  if (v13)
  {
LABEL_7:
    if (v4)
    {
      v4[2](v4);
    }

    goto LABEL_19;
  }

  if ([(WTWritingToolsController *)self shouldHostInAppSizedContainerView])
  {
    [(WTWritingToolsController *)self fullScreenContainerViewController];
  }

  else
  {
    [(WTWritingToolsController *)self sourceResponderViewController];
  }
  v14 = ;
  v15 = [v14 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__WTWritingToolsController__dismissSuggestionViewControllerWithCompletion___block_invoke;
    v18[3] = &unk_1E8480DD0;
    v18[4] = self;
    v19 = v4;
    [v14 dismissViewControllerAnimated:1 completion:v18];
  }

  else
  {
    v17 = _WTVCLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [WTWritingToolsController _dismissSuggestionViewControllerWithCompletion:v14];
    }

    if (v4)
    {
      v4[2](v4);
    }
  }

LABEL_19:
}

void __75__WTWritingToolsController__dismissSuggestionViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSuggestionViewController];
  [v2 invalidateConnection];

  v3 = [*(a1 + 32) suggestionQueue];
  dispatch_assert_queue_not_V2(v3);

  v4 = [*(a1 + 32) suggestionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__WTWritingToolsController__dismissSuggestionViewControllerWithCompletion___block_invoke_2;
  block[3] = &unk_1E8480BF8;
  block[4] = *(a1 + 32);
  dispatch_sync(v4, block);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__WTWritingToolsController__dismissSuggestionViewControllerWithCompletion___block_invoke_3;
  v6[3] = &unk_1E8480E98;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v5 updateWritingToolsPopoverSuppressionWithCompletion:v6];
}

uint64_t __75__WTWritingToolsController__dismissSuggestionViewControllerWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismissFormsheetViewControllerWithCompletion:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WTWritingToolsController *)self formSheetViewController];

  if (v5)
  {
    v6 = _WTVCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(WTWritingToolsController *)self formSheetViewController];
      v8 = [(WTWritingToolsController *)self formSheetViewController];
      *buf = 138412546;
      v26 = v7;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "Requested _dismissFormsheetViewControllerWithCompletion %@ (sourceResponderViewController: %@)", buf, 0x16u);
    }
  }

  v9 = [(WTWritingToolsController *)self formSheetViewController];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [(WTWritingToolsController *)self formSheetViewController];
  v12 = [v11 presentationController];
  if ([v12 dismissed])
  {

LABEL_9:
    v16 = _WTVCLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D451D000, v16, OS_LOG_TYPE_DEFAULT, "Skipping dismissFormsheetViewControllerWithCompletion due to already dismissing/dismissed", buf, 2u);
    }

    if (v4)
    {
      v4[2](v4);
    }

    goto LABEL_20;
  }

  v13 = [(WTWritingToolsController *)self formSheetViewController];
  v14 = [v13 presentationController];
  v15 = [v14 dismissing];

  if (v15)
  {
    goto LABEL_9;
  }

  v17 = [(WTWritingToolsController *)self sourceResponderViewController];
  v18 = [v17 presentedViewController];

  v19 = [(WTWritingToolsController *)self formSheetViewController];
  v20 = [v18 isEqual:v19];

  if (v20)
  {
    v21 = [(WTWritingToolsController *)self sourceResponderViewController];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __73__WTWritingToolsController_dismissFormsheetViewControllerWithCompletion___block_invoke;
    v23[3] = &unk_1E8480E98;
    v24 = v4;
    [v21 dismissViewControllerAnimated:1 completion:v23];
  }

  else
  {
    v22 = _WTVCLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [WTWritingToolsController _dismissFullScreenViewControllerWithCompletion:];
    }

    if (v4)
    {
      v4[2](v4);
    }
  }

LABEL_20:
}

uint64_t __73__WTWritingToolsController_dismissFormsheetViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)enrollmentBegan
{
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_DEFAULT, "Began partner enrollment...", buf, 2u);
  }

  v4 = [WTFormSheetViewController alloc];
  v5 = [(WTWritingToolsController *)self session];
  v6 = [(WTFormSheetViewController *)v4 initWithWritingToolsController:self inSession:v5 formSheetUIType:1];

  [(WTFormSheetViewController *)v6 setModalPresentationStyle:2];
  [(WTWritingToolsController *)self setFormSheetViewController:v6];
  [(WTWritingToolsController *)self setPresentingFormSheet:1];
  [(WTWritingToolsController *)self updateWritingToolsPopoverSuppression];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__WTWritingToolsController_enrollmentBegan__block_invoke;
  v8[3] = &unk_1E8480C98;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(WTWritingToolsController *)self _dismissFullScreenViewControllerWithCompletion:v8];
}

void __43__WTWritingToolsController_enrollmentBegan__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sourceResponderViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)enrollmentDismissedWithCompletion:(id)a3
{
  v4 = [(WTWritingToolsController *)self sourceResponderViewController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__WTWritingToolsController_enrollmentDismissedWithCompletion___block_invoke;
  v5[3] = &unk_1E8480BF8;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

uint64_t __62__WTWritingToolsController_enrollmentDismissedWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _WTVCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D451D000, v2, OS_LOG_TYPE_DEFAULT, "Handling handoff post enablement.", buf, 2u);
  }

  v3 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
    v4 = [*(a1 + 32) session];

    if (v4)
    {
      v5 = _WTVCLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "Will proceed for ipad", buf, 2u);
      }

      [*(a1 + 32) setIsResumingFromModelEnrollment:1];
      [*(a1 + 32) setIsFromHandoff:1];
      [*(a1 + 32) setWantsHostingInAppSizedContainerView:1];
      return [*(a1 + 32) handoffFromUCBFromTool:2 withPrompt:0];
    }
  }

  else
  {
  }

  v7 = _WTVCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D451D000, v7, OS_LOG_TYPE_DEFAULT, "Will proceed for phone/compact iPad", buf, 2u);
  }

  [*(a1 + 32) setPresentingFormSheet:0];
  v8 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__WTWritingToolsController_enrollmentDismissedWithCompletion___block_invoke_669;
  v9[3] = &unk_1E8480BF8;
  v9[4] = v8;
  return [v8 dismissFormsheetViewControllerWithCompletion:v9];
}

- (void)triggerShareSheetWithText:(id)a3
{
  v4 = a3;
  v5 = [WTFormSheetViewController alloc];
  v6 = [(WTWritingToolsController *)self session];
  v8 = [(WTFormSheetViewController *)v5 initWithWritingToolsController:self inSession:v6 formSheetUIType:2 shareSheetPayload:v4];

  [(WTFormSheetViewController *)v8 setModalPresentationStyle:-2];
  [(WTWritingToolsController *)self setFormSheetViewController:v8];
  [(WTWritingToolsController *)self setPresentingFormSheet:1];
  [(WTWritingToolsController *)self endWritingTools];
  v7 = [(WTWritingToolsController *)self sourceResponderViewController];
  [v7 presentViewController:v8 animated:1 completion:0];
}

- (void)dismissShareSheet
{
  [(WTWritingToolsController *)self setEndingSharingSession:1];
  v3 = [(WTWritingToolsController *)self sourceResponderViewController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__WTWritingToolsController_dismissShareSheet__block_invoke;
  v4[3] = &unk_1E8480BF8;
  v4[4] = self;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

uint64_t __45__WTWritingToolsController_dismissShareSheet__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPresentingFormSheet:0];
  [*(a1 + 32) updateSourceView];
  v2 = *(a1 + 32);

  return [v2 endWritingTools];
}

- (void)_dismissPromptEntryViewController
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(WTWritingToolsController *)self currentPromptEntryViewController];

  if (v3)
  {
    v4 = _WTVCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(WTWritingToolsController *)self currentPromptEntryViewController];
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1D451D000, v4, OS_LOG_TYPE_DEFAULT, "__dismissPromptEntryViewController, %@", buf, 0xCu);
    }
  }

  [(WTWritingToolsController *)self setPresentingPromptEntry:0];
  v6 = [(WTWritingToolsController *)self currentPromptEntryViewController];
  if (v6)
  {
    v7 = v6;
    v8 = [(WTWritingToolsController *)self currentPromptEntryViewController];
    v9 = [v8 presentationController];
    if ([v9 dismissed])
    {
    }

    else
    {
      v10 = [(WTWritingToolsController *)self currentPromptEntryViewController];
      v11 = [v10 presentationController];
      v12 = [v11 dismissing];

      if (v12)
      {
        return;
      }

      v7 = [(WTWritingToolsController *)self sourceResponderViewController];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __61__WTWritingToolsController__dismissPromptEntryViewController__block_invoke;
      v13[3] = &unk_1E8480BF8;
      v13[4] = self;
      [v7 dismissViewControllerAnimated:1 completion:v13];
    }
  }
}

uint64_t __61__WTWritingToolsController__dismissPromptEntryViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPromptEntryViewController];
  [v2 invalidateConnection];

  [*(a1 + 32) setCurrentPromptEntryViewController:0];
  v3 = *(a1 + 32);

  return [v3 updateWritingToolsPopoverSuppression];
}

- (BOOL)_wantsInlineEditing
{
  v3 = [(WTWritingToolsController *)self writingToolsDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WTWritingToolsController *)self writingToolsDelegate];
    v6 = [v5 writingToolsBehavior];

    if (v6 == 2)
    {
      return 0;
    }
  }

  v8 = [(WTWritingToolsController *)self writingToolsDelegate];
  if (v8)
  {
    v7 = [(WTWritingToolsController *)self _isEditableResponder];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isEditableResponder
{
  v3 = [(WTWritingToolsController *)self beTextInput];
  v4 = [v3 isEditable];

  if (v4)
  {
    return 1;
  }

  v6 = [(WTWritingToolsController *)self sourceTextInput];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(WTWritingToolsController *)self sourceTextInput];
    v5 = ([v8 isEditable] & 1) != 0 || -[WTWritingToolsController isPresentingPopoverFromEditableResponder](self, "isPresentingPopoverFromEditableResponder");
    goto LABEL_9;
  }

  v9 = [(WTWritingToolsController *)self sourceResponder];
  v10 = [v9 _textInteraction];

  if (v10)
  {
    v8 = [(WTWritingToolsController *)self sourceResponder];
    v11 = [v8 _textInteraction];
    v5 = [v11 textInteractionMode] == 0;

LABEL_9:
    return v5;
  }

  return 1;
}

- (void)_presentMainPopoverViewControllerWithCompletion:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WTWritingToolsController *)self currentSuggestionViewController];

  if (v5)
  {
    [(WTWritingToolsController *)self _dismissSuggestionViewControllerWithCompletion:0];
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v6 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
    [v6 addVisibilityObserver:self];

    v7 = [(WTWritingToolsController *)self sourceResponderViewController];
    v8 = _WTVCLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_DEFAULT, "presentViewController in _updateWritingToolsSheetSuppression from %@", buf, 0xCu);
    }

    v9 = [(WTWritingToolsController *)self _startupOptionsForSceneHostedViewControllerForRequestedTool:[(WTWritingToolsController *)self requestedTool] isForInputDashboard:0 isForAssistant:0];
    v10 = [[WTMainPopoverViewController alloc] initWithWritingToolsController:self startupOptions:v9];
    [(WTWritingToolsController *)self setMainPopoverViewController:v10];

    v11 = [(WTWritingToolsController *)self mainPopoverViewController];
    [v11 setPresenting:1];

    [(WTWritingToolsController *)self _updatePopoverAnchoring];
    objc_initWeak(buf, self);
    v12 = [(WTWritingToolsController *)self mainPopoverViewController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__WTWritingToolsController__presentMainPopoverViewControllerWithCompletion___block_invoke;
    v13[3] = &unk_1E8480F88;
    objc_copyWeak(&v15, buf);
    v14 = v4;
    [v7 presentViewController:v12 animated:1 completion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

uint64_t __76__WTWritingToolsController__presentMainPopoverViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained mainPopoverViewController];
  [v3 setPresenting:0];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (unint64_t)_resultOptions
{
  v3 = [(WTWritingToolsController *)self writingToolsDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(WTWritingToolsController *)self writingToolsDelegate];
    v6 = [v5 resultOptions];
  }

  else
  {
    v7 = [(WTWritingToolsController *)self sourceTextInput];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v5 = [(WTWritingToolsController *)self sourceTextInput];
    v6 = [v5 allowedWritingToolsResultOptions];
  }

  v9 = v6;

  return v9;
}

- (id)_startupOptionsForSceneHostedViewControllerForRequestedTool:(int64_t)a3 isForInputDashboard:(BOOL)a4 isForAssistant:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = objc_alloc_init(_TtC14WritingToolsUI16WTStartupOptions);
  [(WTStartupOptions *)v9 setRequestedTool:a3];
  v10 = [(WTWritingToolsController *)self session];
  v11 = [v10 uuid];
  [(WTStartupOptions *)v9 setSessionUUID:v11];

  v12 = [(WTWritingToolsController *)self analyticsUUID];
  [(WTStartupOptions *)v9 setAnalyticsUUID:v12];

  v13 = [MEMORY[0x1E69DC938] currentDevice];
  -[WTStartupOptions setSourceUserInterfaceIdiom:](v9, "setSourceUserInterfaceIdiom:", [v13 userInterfaceIdiom]);

  v14 = [(WTWritingToolsController *)self beTextInput];
  if (v14)
  {
    [(WTStartupOptions *)v9 setIsWebKitView:1];
  }

  else
  {
    v15 = [(WTWritingToolsController *)self sourceTextInput];
    -[WTStartupOptions setIsWebKitView:](v9, "setIsWebKitView:", [v15 conformsToProtocol:&unk_1F4FEE360]);
  }

  v16 = [(WTWritingToolsController *)self writingToolsDelegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(WTWritingToolsController *)self writingToolsDelegate];
    -[WTStartupOptions setIncludesTextListMarkers:](v9, "setIncludesTextListMarkers:", [v18 includesTextListMarkers]);
  }

  if (v6)
  {
    [(WTStartupOptions *)v9 setIsForInputDashboard:1];
    [(WTStartupOptions *)v9 setEditable:1];
    [(WTStartupOptions *)v9 setWantsInlineEditing:1];
  }

  else
  {
    [(WTStartupOptions *)v9 setHandoffOriginatorTool:[(WTWritingToolsController *)self handoffOriginatorTool]];
    v19 = [(WTWritingToolsController *)self prompt];
    [(WTStartupOptions *)v9 setPrompt:v19];

    [(WTStartupOptions *)v9 setEditable:[(WTWritingToolsController *)self _isEditableResponder]];
    [(WTStartupOptions *)v9 setWantsInlineEditing:[(WTWritingToolsController *)self _wantsInlineEditing]];
    v20 = [(WTWritingToolsController *)self sourceResponderViewController];
    v21 = [v20 traitCollection];
    -[WTStartupOptions setSourceResponderHorizontalSizeClass:](v9, "setSourceResponderHorizontalSizeClass:", [v21 horizontalSizeClass]);

    [(WTStartupOptions *)v9 setIsWindowingModeEnabled:[(WTWritingToolsController *)self isWindowingModeEnabled]];
    [(WTStartupOptions *)v9 setAllowedResultOptions:[(WTWritingToolsController *)self _resultOptions]];
    [(WTStartupOptions *)v9 setIsWindowingModeEnabled:[(WTWritingToolsController *)self isWindowingModeEnabled]];
    if ([(WTWritingToolsController *)self isResumingFromModelEnrollment])
    {
      [(WTStartupOptions *)v9 setIsResumingFromModelEnrollment:1];
      [(WTWritingToolsController *)self setIsResumingFromModelEnrollment:0];
    }

    if ([(WTWritingToolsController *)self isFromHandoff])
    {
      [(WTStartupOptions *)v9 setIsFromHandoff:1];
      [(WTWritingToolsController *)self setIsFromHandoff:0];
    }
  }

  if (a3 == 101)
  {
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    [(WTStartupOptions *)v9 setIsForAssistant:v5];
  }

  if (!v6)
  {
LABEL_16:
    v22 = [(WTWritingToolsController *)self smartReplyConfig];
    [(WTStartupOptions *)v9 setSmartReplyConfiguration:v22];
  }

  v23 = [(WTWritingToolsController *)self sourceResponder];
  -[WTStartupOptions setSourceDataOwnerForCopy:](v9, "setSourceDataOwnerForCopy:", [v23 _dataOwnerForCopy]);

  v24 = [(WTWritingToolsController *)self sourceResponder];
  -[WTStartupOptions setSourceDataOwnerForPaste:](v9, "setSourceDataOwnerForPaste:", [v24 _dataOwnerForPaste]);

  v25 = [(WTWritingToolsController *)self sourceResponder];
  -[WTStartupOptions setSourceDataOwnerForDrag:](v9, "setSourceDataOwnerForDrag:", [v25 _dragDataOwner]);

  v26 = [(WTWritingToolsController *)self sourceResponder];
  -[WTStartupOptions setSourceDataOwnerForDrop:](v9, "setSourceDataOwnerForDrop:", [v26 _dropDataOwner]);

  return v9;
}

- (id)_textViewDelegate
{
  v3 = [(WTWritingToolsController *)self mainPopoverViewController];

  if (v3)
  {
    v4 = [(WTWritingToolsController *)self mainPopoverViewController];
  }

  else
  {
    v5 = [(WTWritingToolsController *)self _inputDashboardViewController];
    v4 = v5;
    if (v5)
    {
      v6 = v5;
    }
  }

  return v4;
}

- (WTWritingToolsDelegate)writingToolsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_writingToolsDelegate);

  return WeakRetained;
}

- (UIResponder)sourceResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceResponder);

  return WeakRetained;
}

- (UITextInput)sourceTextInput
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceTextInput);

  return WeakRetained;
}

- (WTSuggestionViewController)currentSuggestionViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentSuggestionViewController);

  return WeakRetained;
}

- (WTPromptEntryViewController)currentPromptEntryViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentPromptEntryViewController);

  return WeakRetained;
}

- (WTFullScreenContainerViewController)currentFullScreenContainerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentFullScreenContainerViewController);

  return WeakRetained;
}

- (CGRect)suggestionPopoverSourceRect
{
  objc_copyStruct(v6, &self->_suggestionPopoverSourceRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIView)suggestionPopoverSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionPopoverSourceView);

  return WeakRetained;
}

- (WTFormSheetViewController)formSheetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_formSheetViewController);

  return WeakRetained;
}

- (WTProofreadCandidateBarView)proofreadCandidateBarView
{
  WeakRetained = objc_loadWeakRetained(&self->_proofreadCandidateBarView);

  return WeakRetained;
}

- (void)presentError:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1D451D000, v0, OS_LOG_TYPE_DEBUG, "will present error: %@", v1, 0xCu);
}

void __41__WTWritingToolsController_presentError___block_invoke_542_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1D451D000, a2, OS_LOG_TYPE_DEBUG, "did present error: %@", &v3, 0xCu);
}

void __44__WTWritingToolsController_updateSourceView__block_invoke_cold_1(void *a1, id *a2)
{
  v8 = [a1 session];
  [*a2 isFromHandoff];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void __44__WTWritingToolsController_updateSourceView__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createSmartReplyInputDashboardViewController
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_presentSuggestionViewControllerWithCompletion:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1D451D000, log, OS_LOG_TYPE_ERROR, "Present suggestion vc has unexpected existing presented vc: %@", buf, 0xCu);
}

- (void)_dismissFullScreenViewControllerWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_dismissSuggestionViewControllerWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 presentedViewController];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end