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
- (BOOL)shouldAdjustPopoverPresentationController:(id)controller toRect:(CGRect)rect;
- (BOOL)shouldHostInAppSizedContainerView;
- (BOOL)supportsHostingInAppSizedContainerView;
- (CGRect)_cgRectForSelectionRects:(id)rects;
- (CGRect)_textSelectionRectForSmartReplyPopoverForRange:(id)range selectionRects:(id)rects;
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
- (WTWritingToolsController)initWithRequestedTool:(id)tool inputContextHistory:(id)history;
- (WTWritingToolsController)initWithRequestedTool:(id)tool prompt:(id)prompt smartReplyConfiguration:(id)configuration;
- (WTWritingToolsController)initWithTool:(int64_t)tool prompt:(id)prompt smartReplyConfiguration:(id)configuration;
- (WTWritingToolsDelegate)writingToolsDelegate;
- (id)_assistantBarButtonCustomViewWithTitle:(id)title handler:(id)handler;
- (id)_assistantProofreadBarButton;
- (id)_createCompositionInputDashboardViewController;
- (id)_createProofreadingInputDashboardViewControllerForAssistant:(BOOL)assistant;
- (id)_createSmartReplyInputDashboardViewController;
- (id)_initWithRequestedTool:(id)tool baseResponse:(id)response entryPoint:(id)point inputContextHistory:(id)history;
- (id)_inputDashboardViewController;
- (id)_startupOptionsForSceneHostedViewControllerForRequestedTool:(int64_t)tool isForInputDashboard:(BOOL)dashboard isForAssistant:(BOOL)assistant;
- (id)_textViewDelegate;
- (id)assistantBarButtonItemWithStyle:(int64_t)style;
- (id)itemProviderForAttributedText:(id)text;
- (id)itemProviderForPlainText:(id)text;
- (id)sourceResponderViewController;
- (id)trailingPredictiveCandidate;
- (unint64_t)_permittedPopoverArrowDirection;
- (unint64_t)_resultOptions;
- (void)__updateSuggestionPopoverWithCompletion:(id)completion;
- (void)_checkForPendingSuggestion;
- (void)_createSmartReplyInputDashboardViewController;
- (void)_dismissFullScreenViewControllerWithCompletion:(id)completion;
- (void)_dismissPromptEntryViewController;
- (void)_dismissSuggestionViewControllerWithCompletion:(id)completion;
- (void)_presentMainPopoverViewControllerWithCompletion:(id)completion;
- (void)_presentPromptEntryViewController;
- (void)_presentSuggestionViewControllerWithCompletion:(id)completion;
- (void)_refreshSourceResponderHorizontalSizeClassState;
- (void)_refreshWindowingModeEnabled;
- (void)_revertAllSuggestions;
- (void)_sendUpdatedUndoRedoCounts;
- (void)_updatePopoverAnchoring;
- (void)_updatePromptEntryPopover;
- (void)_updateSuggestionPopover;
- (void)beginTextPlaceholder;
- (void)compositionSession:(id)session didReceiveText:(id)text replacementRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished;
- (void)copyText:(id)text;
- (void)dealloc;
- (void)didBeginWritingToolsSession:(id)session contexts:(id)contexts;
- (void)didEndWritingToolsSession:(id)session accepted:(BOOL)accepted;
- (void)didStartMontaraRefinementForSessionWithUUID:(id)d;
- (void)dismissFormsheetViewControllerWithCompletion:(id)completion;
- (void)dismissShareSheet;
- (void)endTextPlaceholderAndWillInsertText:(BOOL)text completion:(id)completion;
- (void)endWritingToolsWithError:(id)error;
- (void)enrollmentBegan;
- (void)enrollmentDismissedWithCompletion:(id)completion;
- (void)handoffFromUCBFromTool:(int64_t)tool withPrompt:(id)prompt;
- (void)presentError:(id)error;
- (void)presentFullScreenViewController;
- (void)proofreadingSession:(id)session didReceiveSuggestions:(id)suggestions processedRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished;
- (void)proofreadingSession:(id)session didUpdateState:(int64_t)state forSuggestionWithUUID:(id)d inContext:(id)context;
- (void)proofreadingSessionWithUUID:(id)d showDetailsForSuggestionWithUUID:(id)iD relativeToRect:(CGRect)rect inView:(id)view;
- (void)proofreadingSessionWithUUID:(id)d updateState:(int64_t)state forSuggestionWithUUID:(id)iD;
- (void)redo;
- (void)remoteKeyboardChanged:(id)changed;
- (void)replaceSelectionWithText:(id)text;
- (void)selectionDidUpdate;
- (void)setInterfaceAutorotationDisabledIfNecessary:(BOOL)necessary;
- (void)setMinimizedIntoAssistant:(BOOL)assistant;
- (void)setRemainingRedoCount:(unint64_t)count;
- (void)setRemainingUndoCount:(unint64_t)count;
- (void)setSession:(id)session;
- (void)setSourceResponder:(id)responder sourceTextInput:(id)input;
- (void)setSuppressSheetForKeyboardEditing:(BOOL)editing;
- (void)setSuppressWritingToolsForRemoteKeyboard:(BOOL)keyboard;
- (void)showAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle buttonAction:(id)action;
- (void)showContentWarningWithTitle:(id)title message:(id)message;
- (void)showSmartReplyQuestionnaireWithRect:(CGRect)rect;
- (void)startWritingTools;
- (void)textSystemWillBeginEditingDuringSessionWithUUID:(id)d;
- (void)triggerShareSheetWithText:(id)text;
- (void)undo;
- (void)updateInputDashboardViewController;
- (void)updateKBSuppression;
- (void)updatePromptEntryState:(int64_t)state;
- (void)updateSourceView;
- (void)updateWritingToolsPopoverSuppressionWithCompletion:(id)completion;
- (void)willBeginWritingToolsSession:(id)session requestContexts:(id)contexts;
- (void)writingToolsSession:(id)session didReceiveAction:(int64_t)action;
@end

@implementation WTWritingToolsController

+ (BOOL)isAvailable
{
  v2 = objc_opt_self();

  return [v2 isAvailable];
}

- (WTWritingToolsController)initWithRequestedTool:(id)tool inputContextHistory:(id)history
{
  v6 = MEMORY[0x1E69E3160];
  historyCopy = history;
  toolCopy = tool;
  v9 = [[v6 alloc] initWithInputContextHistory:historyCopy];

  v10 = [(WTWritingToolsController *)self initWithRequestedTool:toolCopy prompt:0 smartReplyConfiguration:v9];
  return v10;
}

- (id)_initWithRequestedTool:(id)tool baseResponse:(id)response entryPoint:(id)point inputContextHistory:(id)history
{
  v10 = MEMORY[0x1E69E3160];
  historyCopy = history;
  pointCopy = point;
  responseCopy = response;
  toolCopy = tool;
  v15 = [[v10 alloc] initWithInputContextHistory:historyCopy];

  [v15 setBaseResponse:responseCopy];
  [v15 setEntryPoint:pointCopy];

  v16 = [(WTWritingToolsController *)self initWithRequestedTool:toolCopy smartReplyConfiguration:v15];
  return v16;
}

- (WTWritingToolsController)initWithRequestedTool:(id)tool prompt:(id)prompt smartReplyConfiguration:(id)configuration
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
  configurationCopy = configuration;
  promptCopy = prompt;
  toolCopy = tool;
  v12 = [v8 dictionaryWithObjects:v18 forKeys:v17 count:14];
  v13 = [v12 objectForKeyedSubscript:toolCopy];

  integerValue = [v13 integerValue];
  v15 = [(WTWritingToolsController *)self initWithTool:integerValue prompt:promptCopy smartReplyConfiguration:configurationCopy];

  return v15;
}

- (WTWritingToolsController)initWithTool:(int64_t)tool prompt:(id)prompt smartReplyConfiguration:(id)configuration
{
  promptCopy = prompt;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = WTWritingToolsController;
  v11 = [(WTWritingToolsController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_requestedTool = tool;
    objc_storeStrong(&v11->_prompt, prompt);
    objc_storeStrong(&v12->_smartReplyConfig, configuration);
    v13 = dispatch_queue_create("com.apple.WritingToolsUIService.SuggestionQueue", 0);
    suggestionQueue = v12->_suggestionQueue;
    v12->_suggestionQueue = v13;
  }

  return v12;
}

- (void)dealloc
{
  [(WTWritingToolsController *)self setInterfaceAutorotationDisabledIfNecessary:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE2E0] object:self];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DE2D8] object:self];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x1E69DE2D0] object:self];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 removeObserver:self name:*MEMORY[0x1E69DE2C8] object:self];

  v7.receiver = self;
  v7.super_class = WTWritingToolsController;
  [(WTWritingToolsController *)&v7 dealloc];
}

+ (BOOL)_isArbiterClientReadyForWritingToolsToHandleKeyboardTracking
{
  automaticKeyboardArbiterClient = [MEMORY[0x1E69DCC08] automaticKeyboardArbiterClient];
  if (objc_opt_respondsToSelector())
  {
    _isArbiterClientReadyForWritingToolsToHandleKeyboardTracking = [automaticKeyboardArbiterClient _isArbiterClientReadyForWritingToolsToHandleKeyboardTracking];
  }

  else
  {
    _isArbiterClientReadyForWritingToolsToHandleKeyboardTracking = 0;
  }

  return _isArbiterClientReadyForWritingToolsToHandleKeyboardTracking;
}

+ (BOOL)_isWritingToolsHandlingKeyboardTracking
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WTWritingToolsController__isWritingToolsHandlingKeyboardTracking__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)setSourceResponder:(id)responder sourceTextInput:(id)input
{
  v22[1] = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  inputCopy = input;
  objc_storeWeak(&self->_sourceResponder, responderCopy);
  objc_storeWeak(&self->_sourceTextInput, inputCopy);
  if ([inputCopy conformsToProtocol:&unk_1F4FEDF78])
  {
    v8 = inputCopy;
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

  activeInstance = [MEMORY[0x1E69DC940] activeInstance];
  [activeInstance cancelDictation];

  v5 = [(WTWritingToolsController *)self requestedTool]== 101;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  analyticsUUID = self->_analyticsUUID;
  self->_analyticsUUID = uUID;

  v8 = [WTAnalyticsDelegate alloc];
  smartReplyConfig = [(WTWritingToolsController *)self smartReplyConfig];
  analyticsUUID = [(WTWritingToolsController *)self analyticsUUID];
  v11 = [(WTAnalyticsDelegate *)v8 initWithSmartReplyBool:v5 smartReplyConfig:smartReplyConfig analyticsUUID:analyticsUUID requestedTool:[(WTWritingToolsController *)self requestedTool] isEditable:[(WTWritingToolsController *)self _isEditableResponder]];
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

- (void)endWritingToolsWithError:(id)error
{
  v35 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = errorCopy;
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
    session = [(WTWritingToolsController *)self session];
    [(WTWritingToolsController *)self didEndWritingToolsSession:session accepted:v6];
  }

  mainPopoverViewController = [(WTWritingToolsController *)self mainPopoverViewController];

  if (mainPopoverViewController)
  {
    v9 = _WTVCLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D451D000, v9, OS_LOG_TYPE_DEFAULT, "dismissViewController (Popover) for endWritingTools", buf, 2u);
    }

    mainPopoverViewController2 = [(WTWritingToolsController *)self mainPopoverViewController];
    presentingViewController = [mainPopoverViewController2 presentingViewController];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __53__WTWritingToolsController_endWritingToolsWithError___block_invoke;
    v30[3] = &unk_1E8480C70;
    v31 = errorCopy;
    selfCopy = self;
    [presentingViewController dismissViewControllerAnimated:1 completion:v30];

    [(WTWritingToolsController *)self setMainPopoverViewController:0];
    v12 = v31;
LABEL_21:

    goto LABEL_22;
  }

  fullScreenContainerViewController = [(WTWritingToolsController *)self fullScreenContainerViewController];

  if (fullScreenContainerViewController)
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
    v28 = errorCopy;
    selfCopy2 = self;
    [(WTWritingToolsController *)self _dismissFullScreenViewControllerWithCompletion:v27];
    v12 = v28;
    goto LABEL_21;
  }

  formSheetViewController = [(WTWritingToolsController *)self formSheetViewController];

  if (formSheetViewController)
  {
    v16 = _WTVCLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D451D000, v16, OS_LOG_TYPE_DEFAULT, "dismissViewController (Formsheet) for endWritingTools", buf, 2u);
    }

    formSheetViewController2 = [(WTWritingToolsController *)self formSheetViewController];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __53__WTWritingToolsController_endWritingToolsWithError___block_invoke_477;
    v24 = &unk_1E8480C70;
    v25 = errorCopy;
    selfCopy3 = self;
    [formSheetViewController2 dismissViewControllerAnimated:1 completion:&v21];

    v12 = v25;
    goto LABEL_21;
  }

  if (errorCopy)
  {
    [(WTWritingToolsController *)self presentError:errorCopy];
  }

LABEL_22:
  activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  [activeKeyboardSceneDelegate removeVisibilityObserver:self];

  [(WTWritingToolsController *)self setIsPresentingPopoverFromEditableResponder:0];
  [(WTWritingToolsController *)self setWantsHostingInAppSizedContainerView:0];
  [(WTWritingToolsController *)self setMinimizedIntoAssistant:0];
  [(WTWritingToolsController *)self updateKBSuppression];
  [(WTWritingToolsController *)self updateInputDashboardViewController];
  sourceResponder = [(WTWritingToolsController *)self sourceResponder];
  if (objc_opt_respondsToSelector())
  {
    [sourceResponder _writingToolsDidEnd];
  }

  analyticsDelegate = [(WTWritingToolsController *)self analyticsDelegate];
  [analyticsDelegate endWritingTools];

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
  sourceResponderViewController = [(WTWritingToolsController *)self sourceResponderViewController];
  traitCollection = [sourceResponderViewController traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if ([(WTWritingToolsController *)self sourceResponderHorizontalSizeClass]!= horizontalSizeClass)
  {
    v6 = _WTVCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:horizontalSizeClass];
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "sourceResponderHorizontalSizeClass changed, new value: %@", &v13, 0xCu);
    }

    [(WTWritingToolsController *)self setSourceResponderHorizontalSizeClass:horizontalSizeClass];
    sourceResponderViewController2 = [(WTWritingToolsController *)self sourceResponderViewController];
    presentedViewController = [sourceResponderViewController2 presentedViewController];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      sourceResponderViewController3 = [(WTWritingToolsController *)self sourceResponderViewController];
      presentedViewController2 = [sourceResponderViewController3 presentedViewController];

      [presentedViewController2 sourceResponderHorizontalSizeClassChanged:horizontalSizeClass];
    }

    [(WTWritingToolsController *)self updateSourceView];
  }
}

- (void)_refreshWindowingModeEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  isWindowingModeEnabled = [(WTWritingToolsController *)self isWindowingModeEnabled];
  if (isWindowingModeEnabled != [(WTWritingToolsController *)self windowingModeEnabled])
  {
    v4 = _WTVCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithBool:isWindowingModeEnabled];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1D451D000, v4, OS_LOG_TYPE_DEFAULT, "isWindowingModeEnabled changed, new value: %@", &v7, 0xCu);
    }

    mainPopoverViewController = [(WTWritingToolsController *)self mainPopoverViewController];
    [mainPopoverViewController windowingModeEnabledChanged:isWindowingModeEnabled];
  }
}

- (BOOL)isVisualModeWindowed
{
  v9 = *MEMORY[0x1E69E9840];
  activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  if (objc_opt_respondsToSelector())
  {
    useVisualModeWindowedUI = [activeKeyboardSceneDelegate useVisualModeWindowedUI];
  }

  else
  {
    useVisualModeWindowedUI = 0;
  }

  v4 = _WTVCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "NO";
    if (useVisualModeWindowedUI)
    {
      v5 = "YES";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&dword_1D451D000, v4, OS_LOG_TYPE_DEFAULT, "useVisualModeWindowedUI: %s", &v7, 0xCu);
  }

  return useVisualModeWindowedUI;
}

- (BOOL)isWindowingModeEnabled
{
  activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  if (objc_opt_respondsToSelector())
  {
    windowingModeEnabled = [activeKeyboardSceneDelegate windowingModeEnabled];
  }

  else
  {
    windowingModeEnabled = 0;
  }

  return windowingModeEnabled;
}

- (void)presentError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x1E69DC650];
  localizedDescription = [errorCopy localizedDescription];
  localizedFailureReason = [errorCopy localizedFailureReason];
  v8 = [v5 alertControllerWithTitle:localizedDescription message:localizedFailureReason preferredStyle:1];

  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if (os_variant_has_internal_diagnostics())
  {
    v10 = MEMORY[0x1E696AEC0];
    userInfo = [errorCopy userInfo];
    v12 = [userInfo objectForKeyedSubscript:@"WTInternalDescriptionErrorKey"];
    v13 = [v10 stringWithFormat:@"[INTERNAL DEBUGGING] %@", v12];

    v14 = MEMORY[0x1E696AEC0];
    message = [v8 message];
    v16 = message;
    v17 = &stru_1F4FC5520;
    if (message)
    {
      v17 = message;
    }

    v18 = [v14 stringWithFormat:@"%@\n\n%@", v17, v13];
    [v8 setMessage:v18];
  }

  userInfo2 = [errorCopy userInfo];
  v20 = [userInfo2 objectForKeyedSubscript:@"WTRequireReauthenticationErrorKey"];
  bOOLValue = [v20 BOOLValue];

  v22 = &qword_1D455A000;
  if (bOOLValue)
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
    userInfo3 = [errorCopy userInfo];
    v32 = [userInfo3 objectForKeyedSubscript:@"WTUnsupportedLanguageErrorKey"];
    bOOLValue2 = [v32 BOOLValue];

    if (bOOLValue2)
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

    userInfo4 = [errorCopy userInfo];
    v41 = [userInfo4 objectForKeyedSubscript:@"WTUnsafeInputErrorKey"];
    bOOLValue3 = [v41 BOOLValue];

    if (bOOLValue3)
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

  sourceResponderViewController = [(WTWritingToolsController *)self sourceResponderViewController];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = v22[75];
  v51[2] = __41__WTWritingToolsController_presentError___block_invoke_542;
  v51[3] = &unk_1E8480C70;
  v52 = errorCopy;
  selfCopy = self;
  v50 = errorCopy;
  [sourceResponderViewController presentViewController:v8 animated:1 completion:v51];
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

- (void)showContentWarningWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  _inputDashboardViewController = [(WTWritingToolsController *)self _inputDashboardViewController];
  if ([(WTWritingToolsController *)self _wantsUCBUI]&& _inputDashboardViewController)
  {
    [_inputDashboardViewController showContentWarningWithTitle:titleCopy message:messageCopy];
  }
}

- (void)showAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle buttonAction:(id)action
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  actionCopy = action;
  _inputDashboardViewController = [(WTWritingToolsController *)self _inputDashboardViewController];
  if ([(WTWritingToolsController *)self _wantsUCBUI]&& _inputDashboardViewController)
  {
    [_inputDashboardViewController showAlertWithTitle:titleCopy message:messageCopy buttonTitle:buttonTitleCopy buttonAction:actionCopy];
  }
}

- (void)handoffFromUCBFromTool:(int64_t)tool withPrompt:(id)prompt
{
  v14 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  v7 = _WTVCLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:tool];
    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1D451D000, v7, OS_LOG_TYPE_DEFAULT, "handoffFromUCBFromTool: %@", buf, 0xCu);
  }

  [(WTWritingToolsController *)self setIsFromHandoff:1];
  [(WTWritingToolsController *)self setRequestedTool:201];
  [(WTWritingToolsController *)self setHandoffOriginatorTool:tool];
  [(WTWritingToolsController *)self setPrompt:promptCopy];

  [(WTWritingToolsController *)self setWantsHostingInAppSizedContainerView:1];
  writingToolsDelegate = [(WTWritingToolsController *)self writingToolsDelegate];
  session = [(WTWritingToolsController *)self session];
  [writingToolsDelegate didEndWritingToolsSession:session accepted:0];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__WTWritingToolsController_handoffFromUCBFromTool_withPrompt___block_invoke;
  v11[3] = &unk_1E8480CE0;
  v11[4] = self;
  [(WTWritingToolsController *)self _dismissFullScreenViewControllerWithCompletion:v11];
}

- (void)didStartMontaraRefinementForSessionWithUUID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dCopy;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "Received didStartMontaraRefinement for %@", &v10, 0xCu);
  }

  if ([(WTWritingToolsController *)self supportsHostingInAppSizedContainerView])
  {
    session = [(WTWritingToolsController *)self session];

    if (!session)
    {
      [(WTWritingToolsController *)self setNoninlineSessionUUID:dCopy];
      v7 = _WTVCLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = dCopy;
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

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

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
        session = [(WTWritingToolsController *)self session];
        if (session || ([(WTWritingToolsController *)self noninlineSessionUUID], (session = objc_claimAutoreleasedReturnValue()) != 0))
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

        isFromHandoff = [(WTWritingToolsController *)self isFromHandoff];
        v3 = _WTVCLog();
        v8 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
        if (!isFromHandoff)
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
    proofreadingSuggestions = [(WTWritingToolsController *)self proofreadingSuggestions];
    -[WTProofreadCandidateBarView setSuggestionCount:](v4, "setSuggestionCount:", [proofreadingSuggestions count]);

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

- (id)assistantBarButtonItemWithStyle:(int64_t)style
{
  if (![(WTWritingToolsController *)self suppressSheetForKeyboardEditing]|| ([(WTWritingToolsController *)self session], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v14 = 0;
    goto LABEL_15;
  }

  v6 = objc_alloc_init(MEMORY[0x1E69DC708]);
  [v6 setIsKeyboardItem:1];
  objc_initWeak(&location, self);
  switch(style)
  {
    case 24:
      if (![(WTWritingToolsController *)self minimizedIntoAssistant])
      {
        _assistantProofreadBarButton = [(WTWritingToolsController *)self _assistantProofreadBarButton];
        [v6 setCustomView:_assistantProofreadBarButton];
        goto LABEL_13;
      }

      break;
    case 23:
      v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _assistantProofreadBarButton = [v15 localizedStringForKey:@"Revert" value:&stru_1F4FC5520 table:@"Localizable"];

      v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:_assistantProofreadBarButton];
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __60__WTWritingToolsController_assistantBarButtonItemWithStyle___block_invoke_2;
      v20 = &unk_1E8480D08;
      v12 = &v22;
      objc_copyWeak(&v22, &location);
      selfCopy = self;
      v13 = [(WTWritingToolsController *)self _assistantBarButtonCustomViewWithTitle:v9 handler:&v17];
      [v6 setCustomView:{v13, v17, v18, v19, v20}];
      goto LABEL_9;
    case 22:
      v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _assistantProofreadBarButton = [v7 localizedStringForKey:@"Done" value:&stru_1F4FC5520 table:@"Localizable"];

      v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:_assistantProofreadBarButton];
      v10 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:15.0];
      v11 = [_assistantProofreadBarButton length];
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

- (void)updatePromptEntryState:(int64_t)state
{
  switch(state)
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

- (void)willBeginWritingToolsSession:(id)session requestContexts:(id)contexts
{
  v64 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  contextsCopy = contexts;
  v8 = _WTVCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [sessionCopy uuid];
    *buf = 138412290;
    v63 = uuid;
    _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_DEFAULT, "willBeginWritingToolsSession: %@", buf, 0xCu);
  }

  [sessionCopy setTextViewDelegate:self];
  objc_initWeak(buf, self);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __73__WTWritingToolsController_willBeginWritingToolsSession_requestContexts___block_invoke;
  v56[3] = &unk_1E8480D58;
  objc_copyWeak(&v59, buf);
  v56[4] = self;
  v10 = contextsCopy;
  v58 = v10;
  v11 = sessionCopy;
  v57 = v11;
  v55 = MEMORY[0x1DA6D90E0](v56);
  analyticsDelegate = [(WTWritingToolsController *)self analyticsDelegate];
  [analyticsDelegate willBeginWritingToolsSession:v11 requestContexts:v10];

  [(WTWritingToolsController *)self setSwitchedFromUCBToPopover:0];
  writingToolsDelegate = [(WTWritingToolsController *)self writingToolsDelegate];

  if (writingToolsDelegate)
  {
    writingToolsDelegate2 = [(WTWritingToolsController *)self writingToolsDelegate];
    [writingToolsDelegate2 willBeginWritingToolsSession:v11 requestContexts:v55];
  }

  else
  {
    if ([v11 compositionSessionType] == 10)
    {
      sourceTextInput = [(WTWritingToolsController *)self sourceTextInput];
      beginningOfDocument = [sourceTextInput beginningOfDocument];

      sourceTextInput2 = [(WTWritingToolsController *)self sourceTextInput];
      endOfDocument = [sourceTextInput2 endOfDocument];

      sourceTextInput3 = [(WTWritingToolsController *)self sourceTextInput];
      v52 = [sourceTextInput3 textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

      sourceTextInput4 = [(WTWritingToolsController *)self sourceTextInput];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        sourceTextInput5 = [(WTWritingToolsController *)self sourceTextInput];
        writingToolsDelegate2 = [sourceTextInput5 attributedTextInRange:v52];

        if (!writingToolsDelegate2)
        {
          writingToolsDelegate2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F4FC5520];
        }
      }

      else
      {
        sourceTextInput6 = [(WTWritingToolsController *)self sourceTextInput];
        v34 = [sourceTextInput6 textInRange:v52];

        v35 = &stru_1F4FC5520;
        if (v34)
        {
          v35 = v34;
        }

        v36 = v35;

        writingToolsDelegate2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v36];
      }

      sourceTextInput7 = [(WTWritingToolsController *)self sourceTextInput];
      sourceTextInput8 = [(WTWritingToolsController *)self sourceTextInput];
      selectedTextRange = [sourceTextInput8 selectedTextRange];
      start = [selectedTextRange start];
      v51 = [sourceTextInput7 offsetFromPosition:beginningOfDocument toPosition:start];

      sourceTextInput9 = [(WTWritingToolsController *)self sourceTextInput];
      sourceTextInput10 = [(WTWritingToolsController *)self sourceTextInput];
      selectedTextRange2 = [sourceTextInput10 selectedTextRange];
      start2 = [selectedTextRange2 start];
      sourceTextInput11 = [(WTWritingToolsController *)self sourceTextInput];
      selectedTextRange3 = [sourceTextInput11 selectedTextRange];
      v47 = [selectedTextRange3 end];
      v50 = [sourceTextInput9 offsetFromPosition:start2 toPosition:v47];

      v48 = [objc_alloc(MEMORY[0x1E69E3158]) initWithAttributedText:writingToolsDelegate2 range:{v51, v50}];
      v61 = v48;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
      (v55)[2](v55, v49);

      v32 = endOfDocument;
    }

    else
    {
      sourceTextInput12 = [(WTWritingToolsController *)self sourceTextInput];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        sourceTextInput13 = [(WTWritingToolsController *)self sourceTextInput];
        sourceTextInput14 = [(WTWritingToolsController *)self sourceTextInput];
        selectedTextRange4 = [sourceTextInput14 selectedTextRange];
        writingToolsDelegate2 = [sourceTextInput13 attributedTextInRange:selectedTextRange4];

        if (!writingToolsDelegate2)
        {
          writingToolsDelegate2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F4FC5520];
        }
      }

      else
      {
        sourceTextInput15 = [(WTWritingToolsController *)self sourceTextInput];
        sourceTextInput16 = [(WTWritingToolsController *)self sourceTextInput];
        selectedTextRange5 = [sourceTextInput16 selectedTextRange];
        v29 = [sourceTextInput15 textInRange:selectedTextRange5];

        v30 = &stru_1F4FC5520;
        if (v29)
        {
          v30 = v29;
        }

        v31 = v30;

        writingToolsDelegate2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v31];
      }

      beginningOfDocument = [objc_alloc(MEMORY[0x1E69E3158]) initWithAttributedText:writingToolsDelegate2 range:{0, objc_msgSend(writingToolsDelegate2, "length")}];
      v60 = beginningOfDocument;
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

- (void)didBeginWritingToolsSession:(id)session contexts:(id)contexts
{
  v50 = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  v6 = _WTVCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    session = [(WTWritingToolsController *)self session];
    uuid = [session uuid];
    *buf = 138412290;
    v44 = uuid;
    _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "didBeginWritingToolsSession: %@", buf, 0xCu);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = contextsCopy;
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
        uuidContextMapping = [(WTWritingToolsController *)self uuidContextMapping];
        uuid2 = [v14 uuid];
        v17 = [uuidContextMapping objectForKeyedSubscript:uuid2];
        attributedText = [v17 attributedText];
        [v14 setAttributedText:attributedText];

        range = [v14 range];
        v21 = v20;
        uuidContextMapping2 = [(WTWritingToolsController *)self uuidContextMapping];
        uuid3 = [v14 uuid];
        v24 = [uuidContextMapping2 objectForKeyedSubscript:uuid3];
        [v24 setRange:{range, v21}];

        v25 = _WTVCLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          uuid4 = [v14 uuid];
          attributedText2 = [v14 attributedText];
          v28 = [attributedText2 length];
          v51.location = [v14 range];
          v29 = NSStringFromRange(v51);
          *buf = v37;
          v44 = uuid4;
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
    array = [MEMORY[0x1E695DF70] array];
    [(WTWritingToolsController *)self setProofreadingSuggestions:array];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(WTWritingToolsController *)self setUuidSuggestionMapping:dictionary];

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(WTWritingToolsController *)self setContextForSuggestions:dictionary2];
  }

  analyticsDelegate = [(WTWritingToolsController *)self analyticsDelegate];
  session2 = [(WTWritingToolsController *)self session];
  [analyticsDelegate didBeginWritingToolsSession:session2 contexts:obj];

  writingToolsDelegate = [(WTWritingToolsController *)self writingToolsDelegate];
  session3 = [(WTWritingToolsController *)self session];
  [writingToolsDelegate didBeginWritingToolsSession:session3 contexts:obj];
}

- (void)writingToolsSession:(id)session didReceiveAction:(int64_t)action
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = _WTVCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    session = [(WTWritingToolsController *)self session];
    uuid = [session uuid];
    v13 = 138412546;
    v14 = uuid;
    v15 = 2048;
    actionCopy = action;
    _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "writingToolsSession:didReceiveAction: %@ [action = %ld]", &v13, 0x16u);
  }

  analyticsDelegate = [(WTWritingToolsController *)self analyticsDelegate];
  session2 = [(WTWritingToolsController *)self session];
  [analyticsDelegate writingToolsSession:session2 didReceiveAction:action];

  writingToolsDelegate = [(WTWritingToolsController *)self writingToolsDelegate];
  session3 = [(WTWritingToolsController *)self session];
  [writingToolsDelegate writingToolsSession:session3 didReceiveAction:action];
}

- (void)didEndWritingToolsSession:(id)session accepted:(BOOL)accepted
{
  acceptedCopy = accepted;
  v16 = *MEMORY[0x1E69E9840];
  v6 = _WTVCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    session = [(WTWritingToolsController *)self session];
    uuid = [session uuid];
    *buf = 138412290;
    v15 = uuid;
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
  analyticsDelegate = [(WTWritingToolsController *)self analyticsDelegate];
  session2 = [(WTWritingToolsController *)self session];
  [analyticsDelegate didEndWritingToolsSession:session2 accepted:acceptedCopy];

  writingToolsDelegate = [(WTWritingToolsController *)self writingToolsDelegate];
  session3 = [(WTWritingToolsController *)self session];
  [writingToolsDelegate didEndWritingToolsSession:session3 accepted:acceptedCopy];

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

- (void)proofreadingSession:(id)session didReceiveSuggestions:(id)suggestions processedRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished
{
  finishedCopy = finished;
  length = range.length;
  location = range.location;
  v45 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  contextCopy = context;
  v12 = _WTVCLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    session = [(WTWritingToolsController *)self session];
    uuid = [session uuid];
    *buf = 138412290;
    v44 = uuid;
    _os_log_impl(&dword_1D451D000, v12, OS_LOG_TYPE_DEFAULT, "proofreadingSession:didReceiveSuggestions: %@", buf, 0xCu);
  }

  uuidContextMapping = [(WTWritingToolsController *)self uuidContextMapping];
  uuid2 = [contextCopy uuid];

  v17 = [uuidContextMapping objectForKeyedSubscript:uuid2];

  proofreadingSuggestions = [(WTWritingToolsController *)self proofreadingSuggestions];
  [proofreadingSuggestions addObjectsFromArray:suggestionsCopy];

  proofreadCandidateBarView = [(WTWritingToolsController *)self proofreadCandidateBarView];
  proofreadingSuggestions2 = [(WTWritingToolsController *)self proofreadingSuggestions];
  [proofreadCandidateBarView setSuggestionCount:{objc_msgSend(proofreadingSuggestions2, "count")}];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v21 = suggestionsCopy;
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
        uuidSuggestionMapping = [(WTWritingToolsController *)self uuidSuggestionMapping];
        uuid3 = [v26 uuid];
        [uuidSuggestionMapping setObject:v26 forKeyedSubscript:uuid3];

        uuid4 = [v17 uuid];
        contextForSuggestions = [(WTWritingToolsController *)self contextForSuggestions];
        uuid5 = [v26 uuid];
        [contextForSuggestions setObject:uuid4 forKeyedSubscript:uuid5];

        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v23);
  }

  analyticsDelegate = [(WTWritingToolsController *)self analyticsDelegate];
  session2 = [(WTWritingToolsController *)self session];
  [analyticsDelegate proofreadingSession:session2 didReceiveSuggestions:v21 processedRange:location inContext:length finished:{v17, finishedCopy}];

  writingToolsDelegate = [(WTWritingToolsController *)self writingToolsDelegate];
  session3 = [(WTWritingToolsController *)self session];
  [writingToolsDelegate proofreadingSession:session3 didReceiveSuggestions:v21 processedRange:location inContext:length finished:{v17, finishedCopy}];
}

- (void)proofreadingSession:(id)session didUpdateState:(int64_t)state forSuggestionWithUUID:(id)d inContext:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  contextCopy = context;
  v11 = _WTVCLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    session = [(WTWritingToolsController *)self session];
    uuid = [session uuid];
    popoverSuggestionUUID = [(WTWritingToolsController *)self popoverSuggestionUUID];
    *buf = 138413058;
    v30 = uuid;
    v31 = 2048;
    stateCopy = state;
    v33 = 2112;
    v34 = dCopy;
    v35 = 2112;
    v36 = popoverSuggestionUUID;
    _os_log_impl(&dword_1D451D000, v11, OS_LOG_TYPE_DEFAULT, "proofreadingSession: %@ didUpdateState: %ld forSuggestionUUID: %@ (current suggestion: %@)", buf, 0x2Au);
  }

  uuidContextMapping = [(WTWritingToolsController *)self uuidContextMapping];
  uuid2 = [contextCopy uuid];

  v17 = [uuidContextMapping objectForKeyedSubscript:uuid2];

  uuidSuggestionMapping = [(WTWritingToolsController *)self uuidSuggestionMapping];
  v19 = [uuidSuggestionMapping objectForKeyedSubscript:dCopy];
  [v19 setState:state];

  popoverSuggestionUUID2 = [(WTWritingToolsController *)self popoverSuggestionUUID];
  v21 = [dCopy isEqual:popoverSuggestionUUID2];

  if (state != 1 && v21)
  {
    suggestionQueue = [(WTWritingToolsController *)self suggestionQueue];
    dispatch_assert_queue_not_V2(suggestionQueue);

    suggestionQueue2 = [(WTWritingToolsController *)self suggestionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__WTWritingToolsController_proofreadingSession_didUpdateState_forSuggestionWithUUID_inContext___block_invoke;
    block[3] = &unk_1E8480BF8;
    block[4] = self;
    dispatch_sync(suggestionQueue2, block);

    [(WTWritingToolsController *)self _updateSuggestionPopover];
  }

  analyticsDelegate = [(WTWritingToolsController *)self analyticsDelegate];
  session2 = [(WTWritingToolsController *)self session];
  [analyticsDelegate proofreadingSession:session2 didUpdateState:state forSuggestionWithUUID:dCopy inContext:v17];

  writingToolsDelegate = [(WTWritingToolsController *)self writingToolsDelegate];
  session3 = [(WTWritingToolsController *)self session];
  [writingToolsDelegate proofreadingSession:session3 didUpdateState:state forSuggestionWithUUID:dCopy inContext:v17];
}

- (void)compositionSession:(id)session didReceiveText:(id)text replacementRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished
{
  finishedCopy = finished;
  length = range.length;
  location = range.location;
  v35 = *MEMORY[0x1E69E9840];
  textCopy = text;
  contextCopy = context;
  v14 = _WTVCLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    [(WTWritingToolsController *)self session];
    v15 = v28 = finishedCopy;
    uuid = [v15 uuid];
    v17 = [textCopy length];
    v36.location = location;
    v36.length = length;
    v18 = NSStringFromRange(v36);
    *buf = 138412802;
    v30 = uuid;
    v31 = 2048;
    v32 = v17;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&dword_1D451D000, v14, OS_LOG_TYPE_DEFAULT, "compositionSession: [%@], didReceiveText: [length = %lu], range: %@", buf, 0x20u);

    finishedCopy = v28;
  }

  uuidContextMapping = [(WTWritingToolsController *)self uuidContextMapping];
  uuid2 = [contextCopy uuid];

  v21 = [uuidContextMapping objectForKeyedSubscript:uuid2];

  attributedStringController = [(WTWritingToolsController *)self attributedStringController];
  v23 = [attributedStringController reconstitutedAttributedStringForContext:v21 digestedAttributedString:textCopy];

  analyticsDelegate = [(WTWritingToolsController *)self analyticsDelegate];
  session = [(WTWritingToolsController *)self session];
  [analyticsDelegate compositionSession:session didReceiveText:v23 replacementRange:location inContext:length finished:{v21, finishedCopy}];

  writingToolsDelegate = [(WTWritingToolsController *)self writingToolsDelegate];
  session2 = [(WTWritingToolsController *)self session];
  [writingToolsDelegate compositionSession:session2 didReceiveText:v23 replacementRange:location inContext:length finished:{v21, finishedCopy}];

  if ([(WTWritingToolsController *)self _sessionSupportsPopoverAdjustment])
  {
    [(WTWritingToolsController *)self setTemporarilySuppressPopoverForAdjustment:1];
    [(WTWritingToolsController *)self updateWritingToolsPopoverSuppression];
  }

  if (finishedCopy)
  {
    [(WTWritingToolsController *)self setRemainingUndoCount:[(WTWritingToolsController *)self remainingUndoCount]+ 1];
    [(WTWritingToolsController *)self setRemainingRedoCount:0];
  }
}

- (void)showSmartReplyQuestionnaireWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  _inputDashboardViewController = [(WTWritingToolsController *)self _inputDashboardViewController];
  v9 = _WTVCLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    session = [(WTWritingToolsController *)self session];
    uuid = [session uuid];
    v12 = MEMORY[0x1E696AD98];
    session2 = [(WTWritingToolsController *)self session];
    v14 = [v12 numberWithInteger:{objc_msgSend(session2, "type")}];
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v15 = NSStringFromCGRect(v25);
    v16 = 138413058;
    v17 = uuid;
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = _inputDashboardViewController;
    _os_log_impl(&dword_1D451D000, v9, OS_LOG_TYPE_DEFAULT, "try -showSmartReplyQuestionnaire (sessionUUID: %@, sessionType: %@, rect: %@, inputDashboardVC: %@", &v16, 0x2Au);
  }

  if (_inputDashboardViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [_inputDashboardViewController showSmartReplyQuestionnaireWithRect:{x, y, width, height}];
  }
}

- (void)undo
{
  sourceResponder = [(WTWritingToolsController *)self sourceResponder];
  undoManager = [sourceResponder undoManager];
  canUndo = [undoManager canUndo];

  if (canUndo)
  {
    sourceResponder2 = [(WTWritingToolsController *)self sourceResponder];
    undoManager2 = [sourceResponder2 undoManager];
    [undoManager2 undo];

    analyticsDelegate = [(WTWritingToolsController *)self analyticsDelegate];
    [analyticsDelegate undo];

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
  sourceResponder = [(WTWritingToolsController *)self sourceResponder];
  undoManager = [sourceResponder undoManager];
  canRedo = [undoManager canRedo];

  if (canRedo)
  {
    sourceResponder2 = [(WTWritingToolsController *)self sourceResponder];
    undoManager2 = [sourceResponder2 undoManager];
    [undoManager2 redo];

    analyticsDelegate = [(WTWritingToolsController *)self analyticsDelegate];
    [analyticsDelegate redo];

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
  remainingRedoCount = [(WTWritingToolsController *)self remainingRedoCount];

  [(WTWritingToolsController *)self setRemainingRedoCount:remainingRedoCount];
}

- (void)setSession:(id)session
{
  v17 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [sessionCopy uuid];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(sessionCopy, "type")}];
    uuid2 = [(WTSession *)self->_session uuid];
    v11 = 138412802;
    v12 = uuid;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = uuid2;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "setSession: %@, type: %@, oldSession: %@", &v11, 0x20u);
  }

  session = self->_session;
  self->_session = sessionCopy;

  [(WTWritingToolsController *)self updateKBSuppression];
  if (sessionCopy)
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

- (id)itemProviderForAttributedText:(id)text
{
  v24[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v4 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v5 = [textCopy length];
  v6 = *MEMORY[0x1E69DB628];
  v23 = *MEMORY[0x1E69DB628];
  v24[0] = *MEMORY[0x1E69DB698];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v8 = [textCopy dataFromRange:0 documentAttributes:v5 error:{v7, 0}];

  if (v8)
  {
    identifier = [*MEMORY[0x1E6982DC0] identifier];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __58__WTWritingToolsController_itemProviderForAttributedText___block_invoke;
    v19[3] = &unk_1E8480D80;
    v20 = v8;
    [v4 registerDataRepresentationForTypeIdentifier:identifier visibility:0 loadHandler:v19];
  }

  v10 = [textCopy length];
  v11 = *MEMORY[0x1E69DB690];
  v12 = *MEMORY[0x1E69DB618];
  v21[0] = v6;
  v21[1] = v12;
  v22[0] = v11;
  v22[1] = &unk_1F4FCB650;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v14 = [textCopy dataFromRange:0 documentAttributes:v10 error:{v13, 0}];

  if (v14)
  {
    identifier2 = [*MEMORY[0x1E6983060] identifier];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__WTWritingToolsController_itemProviderForAttributedText___block_invoke_571;
    v17[3] = &unk_1E8480D80;
    v18 = v14;
    [v4 registerDataRepresentationForTypeIdentifier:identifier2 visibility:0 loadHandler:v17];
  }

  return v4;
}

- (id)itemProviderForPlainText:(id)text
{
  v3 = MEMORY[0x1E696ACA0];
  textCopy = text;
  v5 = objc_alloc_init(v3);
  v6 = [textCopy dataUsingEncoding:4];

  if (v6)
  {
    identifier = [*MEMORY[0x1E6983060] identifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__WTWritingToolsController_itemProviderForPlainText___block_invoke;
    v9[3] = &unk_1E8480D80;
    v10 = v6;
    [v5 registerDataRepresentationForTypeIdentifier:identifier visibility:0 loadHandler:v9];
  }

  return v5;
}

- (void)replaceSelectionWithText:(id)text
{
  v26[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  attributedStringController = [(WTWritingToolsController *)self attributedStringController];
  v6 = [attributedStringController reconstitutedAttributedStringForStitchedContext:textCopy];

  sourceTextInput = [(WTWritingToolsController *)self sourceTextInput];
  LOBYTE(attributedStringController) = objc_opt_respondsToSelector();

  if (attributedStringController)
  {
    sourceTextInput2 = [(WTWritingToolsController *)self sourceTextInput];
    allowedWritingToolsResultOptions = [sourceTextInput2 allowedWritingToolsResultOptions];

    v10 = (allowedWritingToolsResultOptions & 0xF) == 1;
  }

  else
  {
    v10 = 0;
  }

  beTextInput = [(WTWritingToolsController *)self beTextInput];
  if (beTextInput)
  {
    v12 = 1;
  }

  else
  {
    sourceTextInput3 = [(WTWritingToolsController *)self sourceTextInput];
    v12 = [sourceTextInput3 conformsToProtocol:&unk_1F4FEE360];
  }

  if (v10)
  {
    string = [v6 string];
    v15 = [(WTWritingToolsController *)self itemProviderForPlainText:string];

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

  sourceResponder = [(WTWritingToolsController *)self sourceResponder];
  v26[0] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v18 = [sourceResponder canPasteItemProviders:v17];

  if (v18)
  {
    sourceResponder2 = [(WTWritingToolsController *)self sourceResponder];
    v25 = v15;
    sourceTextInput5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [sourceResponder2 pasteItemProviders:sourceTextInput5];
    goto LABEL_20;
  }

LABEL_13:
  sourceTextInput4 = [(WTWritingToolsController *)self sourceTextInput];
  sourceResponder2 = [sourceTextInput4 selectedTextRange];

  sourceTextInput5 = [(WTWritingToolsController *)self sourceTextInput];
  beTextInput2 = [(WTWritingToolsController *)self beTextInput];

  if (beTextInput2)
  {
    beTextInput3 = [(WTWritingToolsController *)self beTextInput];
    string2 = [v6 string];
    [beTextInput3 insertText:string2];
  }

  else if ([sourceTextInput5 conformsToProtocol:&unk_1F4FEE360])
  {
    beTextInput3 = [v6 string];
    [sourceTextInput5 insertText:beTextInput3];
  }

  else
  {
    if (!(v10 | ((objc_opt_respondsToSelector() & 1) == 0)))
    {
      [sourceTextInput5 replaceRange:sourceResponder2 withAttributedText:v6];
      goto LABEL_20;
    }

    beTextInput3 = [v6 string];
    [sourceTextInput5 replaceRange:sourceResponder2 withText:beTextInput3];
  }

LABEL_20:
}

- (void)copyText:(id)text
{
  textCopy = text;
  attributedStringController = [(WTWritingToolsController *)self attributedStringController];
  v6 = [attributedStringController reconstitutedAttributedStringForStitchedContext:textCopy];

  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  v8 = MEMORY[0x1E69DCD50];
  sourceResponder = [(WTWritingToolsController *)self sourceResponder];
  _dataOwnerForCopy = [sourceResponder _dataOwnerForCopy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __37__WTWritingToolsController_copyText___block_invoke;
  v13[3] = &unk_1E8480DA8;
  v14 = generalPasteboard;
  selfCopy = self;
  v16 = v6;
  v11 = v6;
  v12 = generalPasteboard;
  [v8 _performAsDataOwner:_dataOwnerForCopy block:v13];
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
  sourceTextInput = [(WTWritingToolsController *)self sourceTextInput];
  v2 = [_WTTextPlaceholderController placeholderControllerForDelegate:sourceTextInput];
  [v2 setPattern:0];
  [v2 beginPlaceholder];
}

- (void)endTextPlaceholderAndWillInsertText:(BOOL)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  sourceTextInput = [(WTWritingToolsController *)self sourceTextInput];
  v8 = [_WTTextPlaceholderController placeholderControllerForDelegate:sourceTextInput];
  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__WTWritingToolsController_endTextPlaceholderAndWillInsertText_completion___block_invoke;
    v9[3] = &unk_1E8480DD0;
    v10 = sourceTextInput;
    v11 = completionCopy;
    [v8 endPlaceholderAndWillInsertText:textCopy completion:v9];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (void)proofreadingSessionWithUUID:(id)d updateState:(int64_t)state forSuggestionWithUUID:(id)iD
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  v10 = _WTVCLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    v13 = 138412802;
    v14 = dCopy;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = iDCopy;
    _os_log_impl(&dword_1D451D000, v10, OS_LOG_TYPE_DEFAULT, "proofreadingSessionWithUUID: %@, updateState: %@, forSuggestionWithUUID: %@", &v13, 0x20u);
  }

  _textViewDelegate = [(WTWritingToolsController *)self _textViewDelegate];
  [_textViewDelegate proofreadingSessionWithUUID:dCopy updateState:state forSuggestionWithUUID:iDCopy];
}

- (void)proofreadingSessionWithUUID:(id)d showDetailsForSuggestionWithUUID:(id)iD relativeToRect:(CGRect)rect inView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  iDCopy = iD;
  viewCopy = view;
  v14 = _WTVCLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    session = [(WTWritingToolsController *)self session];
    uuid = [session uuid];
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v17 = NSStringFromCGRect(v36);
    *buf = 138413058;
    v28 = uuid;
    v29 = 2112;
    v30 = iDCopy;
    v31 = 2112;
    v32 = v17;
    v33 = 2112;
    v34 = viewCopy;
    _os_log_impl(&dword_1D451D000, v14, OS_LOG_TYPE_DEFAULT, "session: %@, showDetailsForSuggestion: %@, relativeToRect: %@, inView: %@", buf, 0x2Au);
  }

  if ([(WTWritingToolsController *)self _wantsUCBUI]|| [(WTWritingToolsController *)self suppressSheetForKeyboardEditing]|| [(WTWritingToolsController *)self shouldHostInAppSizedContainerView])
  {
    suggestionQueue = [(WTWritingToolsController *)self suggestionQueue];
    dispatch_assert_queue_not_V2(suggestionQueue);

    suggestionQueue2 = [(WTWritingToolsController *)self suggestionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111__WTWritingToolsController_proofreadingSessionWithUUID_showDetailsForSuggestionWithUUID_relativeToRect_inView___block_invoke;
    block[3] = &unk_1E8480DF8;
    block[4] = self;
    v21 = iDCopy;
    v23 = x;
    v24 = y;
    v25 = width;
    v26 = height;
    v22 = viewCopy;
    dispatch_sync(suggestionQueue2, block);

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

- (void)textSystemWillBeginEditingDuringSessionWithUUID:(id)d
{
  v10 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = dCopy;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "textSystemWillBeginEditingDuringSessionWithUUID: %@", &v8, 0xCu);
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1 || ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode] & 1) == 0)
  {
    [(WTWritingToolsController *)self setSuppressSheetForKeyboardEditing:1];
    [(WTWritingToolsController *)self setMinimizedIntoAssistant:0];
  }
}

- (void)setRemainingUndoCount:(unint64_t)count
{
  self->_remainingUndoCount = count;
  _textViewDelegate = [(WTWritingToolsController *)self _textViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_textViewDelegate setRemainingUndoCount:count];
  }
}

- (void)setRemainingRedoCount:(unint64_t)count
{
  self->_remainingRedoCount = count;
  _textViewDelegate = [(WTWritingToolsController *)self _textViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_textViewDelegate setRemainingRedoCount:count];
  }
}

- (void)remoteKeyboardChanged:(id)changed
{
  v15[2] = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v15[0] = bundleIdentifier;
  v15[1] = @"com.apple.Feedback.DraftingExtension";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  sourceBundleIdentifier = [changedCopy sourceBundleIdentifier];
  v9 = [v7 containsObject:sourceBundleIdentifier];

  if ((v9 & 1) == 0)
  {
    sourceBundleIdentifier2 = [changedCopy sourceBundleIdentifier];
    v11 = [sourceBundleIdentifier2 isEqualToString:@"com.apple.WritingToolsUIService"];

    if (v11 || ([changedCopy hostBundleIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"com.apple.WritingToolsUIService"), v12, v13))
    {
      mainPopoverViewController = [(WTWritingToolsController *)self mainPopoverViewController];
      [mainPopoverViewController repositionWithKeyboardChangedInformation:changedCopy];
    }

    else
    {
      -[WTWritingToolsController setSuppressWritingToolsForRemoteKeyboard:](self, "setSuppressWritingToolsForRemoteKeyboard:", [changedCopy keyboardOnScreen]);
    }
  }
}

- (void)updateKBSuppression
{
  v28 = *MEMORY[0x1E69E9840];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  sourceResponderViewController = [(WTWritingToolsController *)self sourceResponderViewController];
  presentedViewController = [sourceResponderViewController presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 1;
  }

  else
  {
    pendingError = [(WTWritingToolsController *)self pendingError];
    v7 = pendingError != 0;
  }

  v9 = [(WTWritingToolsController *)self _wantsUCBUI]& !v7;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    mainPopoverViewController = [(WTWritingToolsController *)self mainPopoverViewController];
    if (mainPopoverViewController || [(WTWritingToolsController *)self isPopoverTemporarilyDismissed]&& userInterfaceIdiom == 1 && (_os_feature_enabled_impl() & 1) != 0)
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
    mainPopoverViewController2 = [(WTWritingToolsController *)self mainPopoverViewController];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[WTWritingToolsController shouldHostInAppSizedContainerView](self, "shouldHostInAppSizedContainerView")}];
    v18 = 138413314;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = mainPopoverViewController2;
    v24 = 2112;
    v25 = v16;
    v26 = 1024;
    v27 = v7;
    _os_log_impl(&dword_1D451D000, v12, OS_LOG_TYPE_DEFAULT, "updateKBSuppression shouldSuppress: %@, shouldSuppressForUCBUI: %@, sheet/popover: %@, appSizedContainerView %@, error: %d", &v18, 0x30u);
  }

  sourceResponder = [(WTWritingToolsController *)self sourceResponder];
  [sourceResponder _setWritingToolsWantsKeyboardSuppression:v10 & 1 suppressAssistant:{-[WTWritingToolsController _wantsUCBUI](self, "_wantsUCBUI") ^ 1}];
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
      mainPopoverViewController = [(WTWritingToolsController *)self mainPopoverViewController];

      if (mainPopoverViewController)
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
      mainPopoverViewController2 = [(WTWritingToolsController *)self mainPopoverViewController];
      v6 = mainPopoverViewController2 == 0;

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
  sourceResponder = [(WTWritingToolsController *)self sourceResponder];
  _wantsUCBUI = [(WTWritingToolsController *)self _wantsUCBUI];
  minimizedIntoAssistant = [(WTWritingToolsController *)self minimizedIntoAssistant];
  v6 = _WTVCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    [MEMORY[0x1E696AD98] numberWithBool:_wantsUCBUI];
    _wantsUCBUI = v19 = _wantsUCBUI;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:minimizedIntoAssistant];
    v20 = minimizedIntoAssistant;
    minimizedIntoAssistant = [(WTWritingToolsController *)self requestedTool];
    v9 = MEMORY[0x1E696AD98];
    session = [(WTWritingToolsController *)self session];
    v11 = [v9 numberWithInteger:{objc_msgSend(session, "compositionSessionType")}];
    _writingToolsInputDashboardViewController = [sourceResponder _writingToolsInputDashboardViewController];
    v13 = @"NO";
    *buf = 138413570;
    v22 = _wantsUCBUI;
    v23 = 2112;
    if (!_writingToolsInputDashboardViewController)
    {
      v13 = @"YES";
    }

    v24 = v7;
    v25 = 2112;
    v26 = v8;
    v27 = 2048;
    v28 = minimizedIntoAssistant;
    LODWORD(minimizedIntoAssistant) = v20;
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "updateInputDashboardViewController. wantsUCB %@, wantsFloatingDashboard: %@, wantsAssistant %@, requestedTool: %ld, rewriteType: %@, WTIDVC is nil: %@", buf, 0x3Eu);

    LODWORD(_wantsUCBUI) = v19;
  }

  if (!_wantsUCBUI)
  {
    if (!minimizedIntoAssistant)
    {
      [sourceResponder _setWritingToolsInputDashboardViewController:0];
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  _writingToolsInputDashboardViewController2 = [sourceResponder _writingToolsInputDashboardViewController];

  if (_writingToolsInputDashboardViewController2)
  {
    if ((minimizedIntoAssistant & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_10:
    _writingToolsInputDashboardViewController3 = [sourceResponder _writingToolsInputDashboardViewController];

    if (!_writingToolsInputDashboardViewController3)
    {
      v16 = [(WTWritingToolsController *)self _createProofreadingInputDashboardViewControllerForAssistant:1];
      [sourceResponder _setWritingToolsInputDashboardViewController:v16];
    }

    goto LABEL_21;
  }

  if ([(WTWritingToolsController *)self _proofreadingSessionActiveOrRequested])
  {
    _createCompositionInputDashboardViewController = [(WTWritingToolsController *)self _createProofreadingInputDashboardViewControllerForAssistant:0];
    goto LABEL_17;
  }

  if ([(WTWritingToolsController *)self _rewritingSessionActiveOrRequested])
  {
    _createCompositionInputDashboardViewController = [(WTWritingToolsController *)self _createCompositionInputDashboardViewController];
    goto LABEL_17;
  }

  if ([objc_opt_class() iPadOSAlternateQuestionnaireEnabled] && -[WTWritingToolsController _smartReplySessionActiveOrRequested](self, "_smartReplySessionActiveOrRequested"))
  {
    _createCompositionInputDashboardViewController = [(WTWritingToolsController *)self _createSmartReplyInputDashboardViewController];
LABEL_17:
    v18 = _createCompositionInputDashboardViewController;
    if (_createCompositionInputDashboardViewController)
    {
      [sourceResponder _setWritingToolsInputDashboardViewController:_createCompositionInputDashboardViewController];
    }
  }

  if ([(WTWritingToolsController *)self _proofreadingSessionActiveOrRequested])
  {
    [(WTWritingToolsController *)self _updateSuggestionPopover];
  }

LABEL_21:
}

- (void)updateWritingToolsPopoverSuppressionWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(WTWritingToolsController *)self isPopoverTemporarilyDismissed])
  {
    mainPopoverViewController = [(WTWritingToolsController *)self mainPopoverViewController];

    if (mainPopoverViewController)
    {
      v6 = _WTVCLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "dismissViewControllerAnimated for _updateWritingToolsSheetSuppression", buf, 2u);
      }

      mainPopoverViewController2 = [(WTWritingToolsController *)self mainPopoverViewController];
      presentingViewController = [mainPopoverViewController2 presentingViewController];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __79__WTWritingToolsController_updateWritingToolsPopoverSuppressionWithCompletion___block_invoke;
      v13[3] = &unk_1E8480DD0;
      v13[4] = self;
      v14 = completionCopy;
      [presentingViewController dismissViewControllerAnimated:1 completion:v13];

      [(WTWritingToolsController *)self setMainPopoverViewController:0];
      v9 = v14;
      goto LABEL_6;
    }
  }

  if (![(WTWritingToolsController *)self isPopoverTemporarilyDismissed])
  {
    mainPopoverViewController3 = [(WTWritingToolsController *)self mainPopoverViewController];
    if (mainPopoverViewController3 || [(WTWritingToolsController *)self endingWritingToolsSession])
    {
    }

    else if (![(WTWritingToolsController *)self endingSharingSession])
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __79__WTWritingToolsController_updateWritingToolsPopoverSuppressionWithCompletion___block_invoke_2;
      v11[3] = &unk_1E8480DD0;
      v11[4] = self;
      v12 = completionCopy;
      [(WTWritingToolsController *)self _presentMainPopoverViewControllerWithCompletion:v11];
      v9 = v12;
LABEL_6:

      goto LABEL_13;
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (void)setInterfaceAutorotationDisabledIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v53 = *MEMORY[0x1E69E9840];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    interfaceAutorotationDisabledAssertion = self->_interfaceAutorotationDisabledAssertion;
    if (interfaceAutorotationDisabledAssertion)
    {
      LODWORD(interfaceAutorotationDisabledAssertion) = [(BSSimpleAssertion *)interfaceAutorotationDisabledAssertion isValid];
    }

    if (necessaryCopy && (interfaceAutorotationDisabledAssertion & 1) == 0)
    {
      sourceResponderViewController = [(WTWritingToolsController *)self sourceResponderViewController];
      view = [sourceResponderViewController view];
      window = [view window];

      if (window)
      {
        [window beginDisablingInterfaceAutorotation];
        v11 = MEMORY[0x1E696AEC0];
        sourceResponderViewController2 = [(WTWritingToolsController *)self sourceResponderViewController];
        if (sourceResponderViewController2)
        {
          v13 = MEMORY[0x1E696AEC0];
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v16 = [v13 stringWithFormat:@"<%@: %p>", v15, sourceResponderViewController2];
        }

        else
        {
          v16 = @"(nil)";
        }

        v23 = MEMORY[0x1E696AEC0];
        window = window;
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [v23 stringWithFormat:@"<%@: %p>", v25, window];

        v27 = [v11 stringWithFormat:@"WT dismiss disabling autorotation for window on behalf of controller=%@ window=%@", v16, v26];;

        objc_initWeak(&location, window);
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
          sourceResponderViewController3 = [(WTWritingToolsController *)self sourceResponderViewController];
          if (sourceResponderViewController3)
          {
            v33 = MEMORY[0x1E696AEC0];
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v36 = [v33 stringWithFormat:@"<%@: %p>", v35, sourceResponderViewController3, v43, v44, v45, v46];
          }

          else
          {
            v36 = @"(nil)";
          }

          v37 = v36;
          v38 = window;
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

    if (!necessaryCopy && ((interfaceAutorotationDisabledAssertion ^ 1) & 1) == 0)
    {
      [(BSSimpleAssertion *)self->_interfaceAutorotationDisabledAssertion invalidate];
      v17 = self->_interfaceAutorotationDisabledAssertion;
      self->_interfaceAutorotationDisabledAssertion = 0;

      window = _WTVCLog();
      if (os_log_type_enabled(window, OS_LOG_TYPE_DEFAULT))
      {
        sourceResponderViewController4 = [(WTWritingToolsController *)self sourceResponderViewController];
        if (sourceResponderViewController4)
        {
          v19 = MEMORY[0x1E696AEC0];
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = [v19 stringWithFormat:@"<%@: %p>", v21, sourceResponderViewController4];
        }

        else
        {
          v22 = @"(nil)";
        }

        *buf = 138412290;
        v50 = v22;
        _os_log_impl(&dword_1D451D000, window, OS_LOG_TYPE_DEFAULT, "Invalidated autorotation disable assertion for %@", buf, 0xCu);
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
  sourceResponder = [(WTWritingToolsController *)self sourceResponder];
  _viewControllerForWritingToolsSource = [sourceResponder _viewControllerForWritingToolsSource];

  return _viewControllerForWritingToolsSource;
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

  _sessionSupportsPopoverAdjustment = [(WTWritingToolsController *)self _sessionSupportsPopoverAdjustment];
  if ([(WTWritingToolsController *)self _smartReplySessionActive])
  {
    [(WTWritingToolsController *)self updateSourceView];
  }

  else if (_sessionSupportsPopoverAdjustment)
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
  sourceResponder = [(WTWritingToolsController *)self sourceResponder];
  _writingToolsInputDashboardViewController = [sourceResponder _writingToolsInputDashboardViewController];

  return _writingToolsInputDashboardViewController;
}

- (id)_createProofreadingInputDashboardViewControllerForAssistant:(BOOL)assistant
{
  v4 = [(WTWritingToolsController *)self _startupOptionsForSceneHostedViewControllerForRequestedTool:1 isForInputDashboard:1 isForAssistant:assistant];
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
  proofreadingSuggestions = [(WTWritingToolsController *)self proofreadingSuggestions];
  v4 = [proofreadingSuggestions countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(proofreadingSuggestions);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        session = [(WTWritingToolsController *)self session];
        uuid = [session uuid];
        uuid2 = [v8 uuid];
        [(WTWritingToolsController *)self proofreadingSessionWithUUID:uuid updateState:3 forSuggestionWithUUID:uuid2];

        contextForSuggestions = [(WTWritingToolsController *)self contextForSuggestions];
        uuid3 = [v8 uuid];
        v14 = [contextForSuggestions objectForKeyedSubscript:uuid3];

        session2 = [(WTWritingToolsController *)self session];
        uuid4 = [v8 uuid];
        uuidContextMapping = [(WTWritingToolsController *)self uuidContextMapping];
        v18 = [uuidContextMapping objectForKeyedSubscript:v14];
        [(WTWritingToolsController *)self proofreadingSession:session2 didUpdateState:3 forSuggestionWithUUID:uuid4 inContext:v18];

        ++v7;
      }

      while (v5 != v7);
      v5 = [proofreadingSuggestions countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }
}

- (BOOL)_proofreadingSessionActive
{
  session = [(WTWritingToolsController *)self session];
  if (session)
  {
    session2 = [(WTWritingToolsController *)self session];
    v5 = [session2 type] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_proofreadingSessionActiveOrRequested
{
  requestedTool = [(WTWritingToolsController *)self requestedTool];
  if (requestedTool != 1)
  {

    LOBYTE(requestedTool) = [(WTWritingToolsController *)self _proofreadingSessionActive];
  }

  return requestedTool;
}

- (BOOL)_rewritingSessionActive
{
  session = [(WTWritingToolsController *)self session];
  if (session)
  {
    session2 = [(WTWritingToolsController *)self session];
    if ([session2 type] == 2)
    {
      session3 = [(WTWritingToolsController *)self session];
      if ([session3 compositionSessionType] == 11)
      {
        v6 = 0;
      }

      else
      {
        session4 = [(WTWritingToolsController *)self session];
        v6 = [session4 compositionSessionType] != 10;
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
  session = [(WTWritingToolsController *)self session];
  if (session)
  {
    session2 = [(WTWritingToolsController *)self session];
    if ([session2 type] == 2)
    {
      session3 = [(WTWritingToolsController *)self session];
      v6 = [session3 compositionSessionType] == 11;
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
  session = [(WTWritingToolsController *)self session];
  if (session)
  {
    session2 = [(WTWritingToolsController *)self session];
    if ([session2 type] == 2)
    {
      session3 = [(WTWritingToolsController *)self session];
      v6 = [session3 compositionSessionType] == 10;
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
  beTextInput = [(WTWritingToolsController *)self beTextInput];
  if (beTextInput)
  {
    v4 = 0;
  }

  else
  {
    sourceTextInput = [(WTWritingToolsController *)self sourceTextInput];
    v4 = [sourceTextInput conformsToProtocol:&unk_1F4FEE360] ^ 1;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1 && -[WTWritingToolsController _compositionSessionActive](self, "_compositionSessionActive"))
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1 || [(WTWritingToolsController *)self switchedFromUCBToPopover]|| ![(WTWritingToolsController *)self _smartReplySessionActiveOrRequested])
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

  _wantsInlineEditing = [(WTWritingToolsController *)self _wantsInlineEditing];
  if (!_wantsInlineEditing)
  {
    return _wantsInlineEditing;
  }

  if (-[WTWritingToolsController _proofreadingSessionActiveOrRequested](self, "_proofreadingSessionActiveOrRequested") || !-[WTWritingToolsController shouldHostInAppSizedContainerView](self, "shouldHostInAppSizedContainerView") && -[WTWritingToolsController _rewritingSessionActiveOrRequested](self, "_rewritingSessionActiveOrRequested") || [objc_opt_class() iPadOSAlternateQuestionnaireEnabled] && -[WTWritingToolsController _smartReplySessionActiveOrRequested](self, "_smartReplySessionActiveOrRequested"))
  {
    LOBYTE(_wantsInlineEditing) = 1;
    return _wantsInlineEditing;
  }

  session = [(WTWritingToolsController *)self session];
  compositionSessionType = [session compositionSessionType];

  if (compositionSessionType != 11)
  {
LABEL_2:
    LOBYTE(_wantsInlineEditing) = 0;
  }

  else
  {
    v6 = objc_opt_class();

    LOBYTE(_wantsInlineEditing) = [v6 iPadOSAlternateQuestionnaireEnabled];
  }

  return _wantsInlineEditing;
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
  sourceTextInput = [(WTWritingToolsController *)self sourceTextInput];
  selectedTextRange = [sourceTextInput selectedTextRange];

  sourceTextInput2 = [(WTWritingToolsController *)self sourceTextInput];
  v6 = [sourceTextInput2 selectionRectsForRange:selectedTextRange];

  if ([(WTWritingToolsController *)self _smartReplySessionActiveOrRequested])
  {
    [(WTWritingToolsController *)self _textSelectionRectForSmartReplyPopoverForRange:selectedTextRange selectionRects:v6];
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

- (CGRect)_textSelectionRectForSmartReplyPopoverForRange:(id)range selectionRects:(id)rects
{
  rectsCopy = rects;
  rangeCopy = range;
  sourceTextInput = [(WTWritingToolsController *)self sourceTextInput];
  textInputView = [sourceTextInput textInputView];
  [textInputView frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(WTWritingToolsController *)self _cgRectForSelectionRects:rectsCopy];
  v17 = v16;
  v19 = v18;

  isEmpty = [rangeCopy isEmpty];
  if (isEmpty)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = v19;
  }

  if (isEmpty)
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

- (CGRect)_cgRectForSelectionRects:(id)rects
{
  v25 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [rectsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(rectsCopy);
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
      v9 = [rectsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (void)setSuppressSheetForKeyboardEditing:(BOOL)editing
{
  if (self->_suppressSheetForKeyboardEditing != editing)
  {
    self->_suppressSheetForKeyboardEditing = editing;
    [(WTWritingToolsController *)self updateWritingToolsPopoverSuppression];
    [(WTWritingToolsController *)self updateKBSuppression];

    [(WTWritingToolsController *)self updateInputDashboardViewController];
  }
}

- (void)setMinimizedIntoAssistant:(BOOL)assistant
{
  if (self->_minimizedIntoAssistant != assistant)
  {
    self->_minimizedIntoAssistant = assistant;
    sourceResponder = [(WTWritingToolsController *)self sourceResponder];
    [sourceResponder _setWritingToolsInputDashboardViewController:0];
    [(WTWritingToolsController *)self updateInputDashboardViewController];
  }
}

- (BOOL)popoverWillAdjust
{
  selfCopy = self;
  [(WTWritingToolsController *)self _visibleApproximationOfTextSelectionRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  mainPopoverViewController = [(WTWritingToolsController *)selfCopy mainPopoverViewController];
  popoverPresentationController = [mainPopoverViewController popoverPresentationController];
  LOBYTE(selfCopy) = [(WTWritingToolsController *)selfCopy shouldAdjustPopoverPresentationController:popoverPresentationController toRect:v4, v6, v8, v10];

  return selfCopy;
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

  mainPopoverViewController = [(WTWritingToolsController *)self mainPopoverViewController];
  popoverPresentationController = [mainPopoverViewController popoverPresentationController];

  if ([(WTWritingToolsController *)self _compositionSessionActive]&& _os_feature_enabled_impl())
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v7 = [currentDevice userInterfaceIdiom] == 1;
  }

  else
  {
    v7 = 0;
  }

  [(WTWritingToolsController *)self _visibleApproximationOfTextSelectionRect];
  if ([(WTWritingToolsController *)self shouldAdjustPopoverPresentationController:popoverPresentationController toRect:?])
  {
    if (v7)
    {
      [popoverPresentationController setSourceView:0];
    }

    [popoverPresentationController setCanOverlapSourceViewRect:!v7];
    sourceTextInput = [(WTWritingToolsController *)self sourceTextInput];
    textInputView = [sourceTextInput textInputView];
    [popoverPresentationController setSourceView:textInputView];

    [(WTWritingToolsController *)self _visibleApproximationOfTextSelectionRect];
    [popoverPresentationController setSourceRect:?];
    [popoverPresentationController setPermittedArrowDirections:{-[WTWritingToolsController _permittedPopoverArrowDirection](self, "_permittedPopoverArrowDirection")}];
    containerView = [popoverPresentationController containerView];
    [containerView setNeedsLayout];

    containerView2 = [popoverPresentationController containerView];
    [containerView2 layoutIfNeeded];

    session = [(WTWritingToolsController *)self session];
    if (session)
    {
    }

    else if (![(WTWritingToolsController *)self requestedTool])
    {
      [popoverPresentationController setPassthroughViews:0];
      goto LABEL_17;
    }

    sourceTextInput2 = [(WTWritingToolsController *)self sourceTextInput];
    textInputView2 = [sourceTextInput2 textInputView];
    v15 = textInputView2;
    if (v7)
    {
      v22[0] = textInputView2;
      sourceTextInput3 = [(WTWritingToolsController *)self sourceTextInput];
      textInputView3 = [sourceTextInput3 textInputView];
      superview = [textInputView3 superview];
      v22[1] = superview;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
      [popoverPresentationController setPassthroughViews:v19];
    }

    else
    {
      v21 = textInputView2;
      sourceTextInput3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
      [popoverPresentationController setPassthroughViews:sourceTextInput3];
    }
  }

LABEL_17:
}

- (BOOL)shouldAdjustPopoverPresentationController:(id)controller toRect:(CGRect)rect
{
  width = rect.size.width;
  controllerCopy = controller;
  if ([(WTWritingToolsController *)self _compositionSessionActive])
  {
    v7 = _os_feature_enabled_impl() ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  sourceView = [controllerCopy sourceView];

  if (sourceView)
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
  sourceTextInput = [(WTWritingToolsController *)self sourceTextInput];
  textInputView = [sourceTextInput textInputView];

  window = [textInputView window];
  window2 = [textInputView window];
  [window2 bounds];
  [window convertRect:textInputView toView:?];
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
  proofreadingSuggestions = [(WTWritingToolsController *)self proofreadingSuggestions];
  -[WTProofreadCandidateBarView setSuggestionCount:](v5, "setSuggestionCount:", [proofreadingSuggestions count]);

  [(WTWritingToolsController *)self setProofreadCandidateBarView:v5];
  [v4 addSubview:v5];
  v17 = MEMORY[0x1E696ACD8];
  centerXAnchor = [(WTProofreadCandidateBarView *)v5 centerXAnchor];
  centerXAnchor2 = [v4 centerXAnchor];
  v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v22[0] = v8;
  topAnchor = [(WTProofreadCandidateBarView *)v5 topAnchor];
  topAnchor2 = [v4 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
  v22[1] = v11;
  widthAnchor = [v4 widthAnchor];
  v13 = [widthAnchor constraintEqualToConstant:60.0];
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

- (id)_assistantBarButtonCustomViewWithTitle:(id)title handler:(id)handler
{
  v40[4] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = MEMORY[0x1E69DD298];
  titleCopy = title;
  v8 = [v6 alloc];
  v9 = objc_alloc(MEMORY[0x1E69DD568]);
  mEMORY[0x1E69DD578] = [MEMORY[0x1E69DD578] sharedLight];
  v11 = [v9 initWithLightSource:mEMORY[0x1E69DD578]];
  v12 = [v8 initWithEffect:v11];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = MEMORY[0x1E69DC628];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __75__WTWritingToolsController__assistantBarButtonCustomViewWithTitle_handler___block_invoke;
  v38[3] = &unk_1E8480E70;
  v39 = handlerCopy;
  v37 = handlerCopy;
  v36 = [v13 actionWithHandler:v38];
  v14 = [MEMORY[0x1E69DC738] systemButtonWithPrimaryAction:v36];
  [v14 setAttributedTitle:titleCopy forState:0];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setContentEdgeInsets:{20.0, 6.0, 20.0, 6.0}];
  contentView = [v12 contentView];
  [contentView addSubview:v14];

  v28 = MEMORY[0x1E696ACD8];
  contentView2 = [v12 contentView];
  leadingAnchor = [contentView2 leadingAnchor];
  leadingAnchor2 = [v14 leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v40[0] = v32;
  contentView3 = [v12 contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  trailingAnchor2 = [v14 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v40[1] = v27;
  contentView4 = [v12 contentView];
  topAnchor = [contentView4 topAnchor];
  topAnchor2 = [v14 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v40[2] = v19;
  v26 = v12;
  contentView5 = [v12 contentView];
  bottomAnchor = [contentView5 bottomAnchor];
  bottomAnchor2 = [v14 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v40[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  [v28 activateConstraints:v24];

  return v26;
}

- (void)setSuppressWritingToolsForRemoteKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  mainPopoverViewController = [(WTWritingToolsController *)self mainPopoverViewController];
  presentedAsSheet = [mainPopoverViewController presentedAsSheet];

  if (presentedAsSheet)
  {
    [(WTWritingToolsController *)self setSuppressingSheetForRemoteKeyboardOnScreen:keyboardCopy];

    [(WTWritingToolsController *)self updateWritingToolsPopoverSuppression];
  }
}

- (void)_updateSuggestionPopover
{
  suggestionQueue = [(WTWritingToolsController *)self suggestionQueue];
  dispatch_assert_queue_not_V2(suggestionQueue);

  suggestionQueue2 = [(WTWritingToolsController *)self suggestionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WTWritingToolsController__updateSuggestionPopover__block_invoke;
  block[3] = &unk_1E8480BF8;
  block[4] = self;
  dispatch_sync(suggestionQueue2, block);
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

- (void)__updateSuggestionPopoverWithCompletion:(id)completion
{
  completionCopy = completion;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 6)
  {
    v6 = [objc_opt_class() isNativeRedesignForVisionOSEnabled] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  popoverSuggestionUUID = [(WTWritingToolsController *)self popoverSuggestionUUID];

  if (!popoverSuggestionUUID || v6)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__WTWritingToolsController___updateSuggestionPopoverWithCompletion___block_invoke;
    v21[3] = &unk_1E8480E98;
    v22 = completionCopy;
    [(WTWritingToolsController *)self _dismissSuggestionViewControllerWithCompletion:v21];
    v16 = v22;
LABEL_13:

    goto LABEL_14;
  }

  popoverSuggestionUUID2 = [(WTWritingToolsController *)self popoverSuggestionUUID];
  currentSuggestionViewController = [(WTWritingToolsController *)self currentSuggestionViewController];
  suggestion = [currentSuggestionViewController suggestion];
  uuid = [suggestion uuid];
  v12 = [popoverSuggestionUUID2 isEqual:uuid];

  if ((v12 & 1) == 0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__WTWritingToolsController___updateSuggestionPopoverWithCompletion___block_invoke_2;
    v19[3] = &unk_1E8480DD0;
    v19[4] = self;
    v20 = completionCopy;
    [(WTWritingToolsController *)self _dismissSuggestionViewControllerWithCompletion:v19];
    v16 = v20;
    goto LABEL_13;
  }

  popoverSuggestionUUID3 = [(WTWritingToolsController *)self popoverSuggestionUUID];
  if (popoverSuggestionUUID3)
  {
    v14 = popoverSuggestionUUID3;
    currentSuggestionViewController2 = [(WTWritingToolsController *)self currentSuggestionViewController];

    if (!currentSuggestionViewController2)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __68__WTWritingToolsController___updateSuggestionPopoverWithCompletion___block_invoke_4;
      v17[3] = &unk_1E8480E98;
      v18 = completionCopy;
      [(WTWritingToolsController *)self _presentSuggestionViewControllerWithCompletion:v17];
      v16 = v18;
      goto LABEL_13;
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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
  suggestionQueue = [(WTWritingToolsController *)self suggestionQueue];
  dispatch_assert_queue_not_V2(suggestionQueue);

  suggestionQueue2 = [(WTWritingToolsController *)self suggestionQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__WTWritingToolsController__checkForPendingSuggestion__block_invoke;
  v6[3] = &unk_1E8480EC0;
  v6[4] = self;
  v6[5] = buf;
  dispatch_sync(suggestionQueue2, v6);

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

- (void)_presentSuggestionViewControllerWithCompletion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  uuidSuggestionMapping = [(WTWritingToolsController *)self uuidSuggestionMapping];
  popoverSuggestionUUID = [(WTWritingToolsController *)self popoverSuggestionUUID];
  v7 = [uuidSuggestionMapping objectForKeyedSubscript:popoverSuggestionUUID];

  contextForSuggestions = [(WTWritingToolsController *)self contextForSuggestions];
  uuid = [v7 uuid];
  v10 = [contextForSuggestions objectForKeyedSubscript:uuid];

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy_;
  v33[4] = __Block_byref_object_dispose_;
  v34 = 0;
  suggestionQueue = [(WTWritingToolsController *)self suggestionQueue];
  dispatch_assert_queue_not_V2(suggestionQueue);

  suggestionQueue2 = [(WTWritingToolsController *)self suggestionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__WTWritingToolsController__presentSuggestionViewControllerWithCompletion___block_invoke;
  block[3] = &unk_1E8480EE8;
  v32 = v33;
  v13 = v7;
  v29 = v13;
  v14 = v10;
  v30 = v14;
  selfCopy = self;
  dispatch_sync(suggestionQueue2, block);

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
  v17 = completionCopy;
  v26 = v17;
  v18 = MEMORY[0x1DA6D90E0](v24);
  presentedViewController = [v16 presentedViewController];

  if (presentedViewController)
  {
    v20 = _WTVCLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      presentedViewController2 = [v16 presentedViewController];
      [(WTWritingToolsController *)presentedViewController2 _presentSuggestionViewControllerWithCompletion:buf, v20];
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
  session = [(WTWritingToolsController *)self session];
  v6 = [(WTPromptEntryViewController *)v4 initWithWritingToolsController:self session:session];

  [(WTPromptEntryViewController *)v6 setModalPresentationStyle:7];
  sourceResponderViewController = [(WTWritingToolsController *)self sourceResponderViewController];
  view = [sourceResponderViewController view];
  popoverPresentationController = [(WTPromptEntryViewController *)v6 popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  popoverPresentationController2 = [(WTPromptEntryViewController *)v6 popoverPresentationController];
  sourceView = [popoverPresentationController2 sourceView];
  keyboardLayoutGuide = [sourceView keyboardLayoutGuide];
  [keyboardLayoutGuide layoutFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  popoverPresentationController3 = [(WTPromptEntryViewController *)v6 popoverPresentationController];
  [popoverPresentationController3 setSourceRect:{v14, v16, v18, v20}];

  popoverPresentationController4 = [(WTPromptEntryViewController *)v6 popoverPresentationController];
  [popoverPresentationController4 _setShouldHideArrow:1];

  _popoverController = [(WTPromptEntryViewController *)v6 _popoverController];
  [_popoverController setDelegate:v6];

  [(WTWritingToolsController *)self setCurrentPromptEntryViewController:v6];
  sourceResponderViewController2 = [(WTWritingToolsController *)self sourceResponderViewController];
  currentPromptEntryViewController = [(WTWritingToolsController *)self currentPromptEntryViewController];
  [sourceResponderViewController2 presentViewController:currentPromptEntryViewController animated:1 completion:0];
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

- (void)_dismissFullScreenViewControllerWithCompletion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  fullScreenContainerViewController = [(WTWritingToolsController *)self fullScreenContainerViewController];

  if (fullScreenContainerViewController)
  {
    v6 = _WTVCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      fullScreenContainerViewController2 = [(WTWritingToolsController *)self fullScreenContainerViewController];
      sourceResponderViewController = [(WTWritingToolsController *)self sourceResponderViewController];
      *buf = 138412546;
      v27 = fullScreenContainerViewController2;
      v28 = 2112;
      v29 = sourceResponderViewController;
      _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "Requested dismissFullScreenViewController %@ (sourceResponderViewController: %@)", buf, 0x16u);
    }
  }

  fullScreenContainerViewController3 = [(WTWritingToolsController *)self fullScreenContainerViewController];
  if (!fullScreenContainerViewController3)
  {
    goto LABEL_10;
  }

  v10 = fullScreenContainerViewController3;
  fullScreenContainerViewController4 = [(WTWritingToolsController *)self fullScreenContainerViewController];
  presentationController = [fullScreenContainerViewController4 presentationController];
  if ([presentationController dismissed])
  {
    goto LABEL_9;
  }

  fullScreenContainerViewController5 = [(WTWritingToolsController *)self fullScreenContainerViewController];
  presentationController2 = [fullScreenContainerViewController5 presentationController];
  if ([presentationController2 dismissing])
  {

LABEL_9:
LABEL_10:
    v15 = _WTVCLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D451D000, v15, OS_LOG_TYPE_DEFAULT, "Skipping dismissFullScreenViewController due to already dismissing/dismissed", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    goto LABEL_14;
  }

  dismissingFullscreenViewController = [(WTWritingToolsController *)self dismissingFullscreenViewController];

  if (dismissingFullscreenViewController)
  {
    goto LABEL_10;
  }

  sourceResponderViewController2 = [(WTWritingToolsController *)self sourceResponderViewController];
  presentedViewController = [sourceResponderViewController2 presentedViewController];

  fullScreenContainerViewController6 = [(WTWritingToolsController *)self fullScreenContainerViewController];
  v20 = [presentedViewController isEqual:fullScreenContainerViewController6];

  if (v20)
  {
    [(WTWritingToolsController *)self setDismissingFullscreenViewController:1];
    v21 = _WTVCLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [WTWritingToolsController _dismissFullScreenViewControllerWithCompletion:];
    }

    sourceResponderViewController3 = [(WTWritingToolsController *)self sourceResponderViewController];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __75__WTWritingToolsController__dismissFullScreenViewControllerWithCompletion___block_invoke;
    v24[3] = &unk_1E8480DD0;
    v24[4] = self;
    v25 = completionCopy;
    [sourceResponderViewController3 dismissViewControllerAnimated:0 completion:v24];
  }

  else
  {
    v23 = _WTVCLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [WTWritingToolsController _dismissFullScreenViewControllerWithCompletion:];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
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

- (void)_dismissSuggestionViewControllerWithCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _WTVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentSuggestionViewController = [(WTWritingToolsController *)self currentSuggestionViewController];
    *buf = 138412290;
    v21 = currentSuggestionViewController;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_DEFAULT, "_dismissSuggestionViewController, %@", buf, 0xCu);
  }

  currentSuggestionViewController2 = [(WTWritingToolsController *)self currentSuggestionViewController];
  if (!currentSuggestionViewController2)
  {
    goto LABEL_7;
  }

  v8 = currentSuggestionViewController2;
  currentSuggestionViewController3 = [(WTWritingToolsController *)self currentSuggestionViewController];
  presentationController = [currentSuggestionViewController3 presentationController];
  if ([presentationController dismissed])
  {

    goto LABEL_7;
  }

  currentSuggestionViewController4 = [(WTWritingToolsController *)self currentSuggestionViewController];
  presentationController2 = [currentSuggestionViewController4 presentationController];
  dismissing = [presentationController2 dismissing];

  if (dismissing)
  {
LABEL_7:
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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
  presentedViewController = [v14 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__WTWritingToolsController__dismissSuggestionViewControllerWithCompletion___block_invoke;
    v18[3] = &unk_1E8480DD0;
    v18[4] = self;
    v19 = completionCopy;
    [v14 dismissViewControllerAnimated:1 completion:v18];
  }

  else
  {
    v17 = _WTVCLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [WTWritingToolsController _dismissSuggestionViewControllerWithCompletion:v14];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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

- (void)dismissFormsheetViewControllerWithCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  formSheetViewController = [(WTWritingToolsController *)self formSheetViewController];

  if (formSheetViewController)
  {
    v6 = _WTVCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      formSheetViewController2 = [(WTWritingToolsController *)self formSheetViewController];
      formSheetViewController3 = [(WTWritingToolsController *)self formSheetViewController];
      *buf = 138412546;
      v26 = formSheetViewController2;
      v27 = 2112;
      v28 = formSheetViewController3;
      _os_log_impl(&dword_1D451D000, v6, OS_LOG_TYPE_DEFAULT, "Requested _dismissFormsheetViewControllerWithCompletion %@ (sourceResponderViewController: %@)", buf, 0x16u);
    }
  }

  formSheetViewController4 = [(WTWritingToolsController *)self formSheetViewController];
  if (!formSheetViewController4)
  {
    goto LABEL_9;
  }

  v10 = formSheetViewController4;
  formSheetViewController5 = [(WTWritingToolsController *)self formSheetViewController];
  presentationController = [formSheetViewController5 presentationController];
  if ([presentationController dismissed])
  {

LABEL_9:
    v16 = _WTVCLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D451D000, v16, OS_LOG_TYPE_DEFAULT, "Skipping dismissFormsheetViewControllerWithCompletion due to already dismissing/dismissed", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_20;
  }

  formSheetViewController6 = [(WTWritingToolsController *)self formSheetViewController];
  presentationController2 = [formSheetViewController6 presentationController];
  dismissing = [presentationController2 dismissing];

  if (dismissing)
  {
    goto LABEL_9;
  }

  sourceResponderViewController = [(WTWritingToolsController *)self sourceResponderViewController];
  presentedViewController = [sourceResponderViewController presentedViewController];

  formSheetViewController7 = [(WTWritingToolsController *)self formSheetViewController];
  v20 = [presentedViewController isEqual:formSheetViewController7];

  if (v20)
  {
    sourceResponderViewController2 = [(WTWritingToolsController *)self sourceResponderViewController];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __73__WTWritingToolsController_dismissFormsheetViewControllerWithCompletion___block_invoke;
    v23[3] = &unk_1E8480E98;
    v24 = completionCopy;
    [sourceResponderViewController2 dismissViewControllerAnimated:1 completion:v23];
  }

  else
  {
    v22 = _WTVCLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [WTWritingToolsController _dismissFullScreenViewControllerWithCompletion:];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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
  session = [(WTWritingToolsController *)self session];
  v6 = [(WTFormSheetViewController *)v4 initWithWritingToolsController:self inSession:session formSheetUIType:1];

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

- (void)enrollmentDismissedWithCompletion:(id)completion
{
  sourceResponderViewController = [(WTWritingToolsController *)self sourceResponderViewController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__WTWritingToolsController_enrollmentDismissedWithCompletion___block_invoke;
  v5[3] = &unk_1E8480BF8;
  v5[4] = self;
  [sourceResponderViewController dismissViewControllerAnimated:1 completion:v5];
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

- (void)triggerShareSheetWithText:(id)text
{
  textCopy = text;
  v5 = [WTFormSheetViewController alloc];
  session = [(WTWritingToolsController *)self session];
  v8 = [(WTFormSheetViewController *)v5 initWithWritingToolsController:self inSession:session formSheetUIType:2 shareSheetPayload:textCopy];

  [(WTFormSheetViewController *)v8 setModalPresentationStyle:-2];
  [(WTWritingToolsController *)self setFormSheetViewController:v8];
  [(WTWritingToolsController *)self setPresentingFormSheet:1];
  [(WTWritingToolsController *)self endWritingTools];
  sourceResponderViewController = [(WTWritingToolsController *)self sourceResponderViewController];
  [sourceResponderViewController presentViewController:v8 animated:1 completion:0];
}

- (void)dismissShareSheet
{
  [(WTWritingToolsController *)self setEndingSharingSession:1];
  sourceResponderViewController = [(WTWritingToolsController *)self sourceResponderViewController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__WTWritingToolsController_dismissShareSheet__block_invoke;
  v4[3] = &unk_1E8480BF8;
  v4[4] = self;
  [sourceResponderViewController dismissViewControllerAnimated:1 completion:v4];
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
  currentPromptEntryViewController = [(WTWritingToolsController *)self currentPromptEntryViewController];

  if (currentPromptEntryViewController)
  {
    v4 = _WTVCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      currentPromptEntryViewController2 = [(WTWritingToolsController *)self currentPromptEntryViewController];
      *buf = 138412290;
      v15 = currentPromptEntryViewController2;
      _os_log_impl(&dword_1D451D000, v4, OS_LOG_TYPE_DEFAULT, "__dismissPromptEntryViewController, %@", buf, 0xCu);
    }
  }

  [(WTWritingToolsController *)self setPresentingPromptEntry:0];
  currentPromptEntryViewController3 = [(WTWritingToolsController *)self currentPromptEntryViewController];
  if (currentPromptEntryViewController3)
  {
    sourceResponderViewController = currentPromptEntryViewController3;
    currentPromptEntryViewController4 = [(WTWritingToolsController *)self currentPromptEntryViewController];
    presentationController = [currentPromptEntryViewController4 presentationController];
    if ([presentationController dismissed])
    {
    }

    else
    {
      currentPromptEntryViewController5 = [(WTWritingToolsController *)self currentPromptEntryViewController];
      presentationController2 = [currentPromptEntryViewController5 presentationController];
      dismissing = [presentationController2 dismissing];

      if (dismissing)
      {
        return;
      }

      sourceResponderViewController = [(WTWritingToolsController *)self sourceResponderViewController];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __61__WTWritingToolsController__dismissPromptEntryViewController__block_invoke;
      v13[3] = &unk_1E8480BF8;
      v13[4] = self;
      [sourceResponderViewController dismissViewControllerAnimated:1 completion:v13];
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
  writingToolsDelegate = [(WTWritingToolsController *)self writingToolsDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    writingToolsDelegate2 = [(WTWritingToolsController *)self writingToolsDelegate];
    writingToolsBehavior = [writingToolsDelegate2 writingToolsBehavior];

    if (writingToolsBehavior == 2)
    {
      return 0;
    }
  }

  writingToolsDelegate3 = [(WTWritingToolsController *)self writingToolsDelegate];
  if (writingToolsDelegate3)
  {
    _isEditableResponder = [(WTWritingToolsController *)self _isEditableResponder];
  }

  else
  {
    _isEditableResponder = 0;
  }

  return _isEditableResponder;
}

- (BOOL)_isEditableResponder
{
  beTextInput = [(WTWritingToolsController *)self beTextInput];
  isEditable = [beTextInput isEditable];

  if (isEditable)
  {
    return 1;
  }

  sourceTextInput = [(WTWritingToolsController *)self sourceTextInput];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    sourceTextInput2 = [(WTWritingToolsController *)self sourceTextInput];
    v5 = ([sourceTextInput2 isEditable] & 1) != 0 || -[WTWritingToolsController isPresentingPopoverFromEditableResponder](self, "isPresentingPopoverFromEditableResponder");
    goto LABEL_9;
  }

  sourceResponder = [(WTWritingToolsController *)self sourceResponder];
  _textInteraction = [sourceResponder _textInteraction];

  if (_textInteraction)
  {
    sourceTextInput2 = [(WTWritingToolsController *)self sourceResponder];
    _textInteraction2 = [sourceTextInput2 _textInteraction];
    v5 = [_textInteraction2 textInteractionMode] == 0;

LABEL_9:
    return v5;
  }

  return 1;
}

- (void)_presentMainPopoverViewControllerWithCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  currentSuggestionViewController = [(WTWritingToolsController *)self currentSuggestionViewController];

  if (currentSuggestionViewController)
  {
    [(WTWritingToolsController *)self _dismissSuggestionViewControllerWithCompletion:0];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
    [activeKeyboardSceneDelegate addVisibilityObserver:self];

    sourceResponderViewController = [(WTWritingToolsController *)self sourceResponderViewController];
    v8 = _WTVCLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = sourceResponderViewController;
      _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_DEFAULT, "presentViewController in _updateWritingToolsSheetSuppression from %@", buf, 0xCu);
    }

    v9 = [(WTWritingToolsController *)self _startupOptionsForSceneHostedViewControllerForRequestedTool:[(WTWritingToolsController *)self requestedTool] isForInputDashboard:0 isForAssistant:0];
    v10 = [[WTMainPopoverViewController alloc] initWithWritingToolsController:self startupOptions:v9];
    [(WTWritingToolsController *)self setMainPopoverViewController:v10];

    mainPopoverViewController = [(WTWritingToolsController *)self mainPopoverViewController];
    [mainPopoverViewController setPresenting:1];

    [(WTWritingToolsController *)self _updatePopoverAnchoring];
    objc_initWeak(buf, self);
    mainPopoverViewController2 = [(WTWritingToolsController *)self mainPopoverViewController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__WTWritingToolsController__presentMainPopoverViewControllerWithCompletion___block_invoke;
    v13[3] = &unk_1E8480F88;
    objc_copyWeak(&v15, buf);
    v14 = completionCopy;
    [sourceResponderViewController presentViewController:mainPopoverViewController2 animated:1 completion:v13];

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
  writingToolsDelegate = [(WTWritingToolsController *)self writingToolsDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    writingToolsDelegate2 = [(WTWritingToolsController *)self writingToolsDelegate];
    resultOptions = [writingToolsDelegate2 resultOptions];
  }

  else
  {
    sourceTextInput = [(WTWritingToolsController *)self sourceTextInput];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      return 0;
    }

    writingToolsDelegate2 = [(WTWritingToolsController *)self sourceTextInput];
    resultOptions = [writingToolsDelegate2 allowedWritingToolsResultOptions];
  }

  v9 = resultOptions;

  return v9;
}

- (id)_startupOptionsForSceneHostedViewControllerForRequestedTool:(int64_t)tool isForInputDashboard:(BOOL)dashboard isForAssistant:(BOOL)assistant
{
  assistantCopy = assistant;
  dashboardCopy = dashboard;
  v9 = objc_alloc_init(_TtC14WritingToolsUI16WTStartupOptions);
  [(WTStartupOptions *)v9 setRequestedTool:tool];
  session = [(WTWritingToolsController *)self session];
  uuid = [session uuid];
  [(WTStartupOptions *)v9 setSessionUUID:uuid];

  analyticsUUID = [(WTWritingToolsController *)self analyticsUUID];
  [(WTStartupOptions *)v9 setAnalyticsUUID:analyticsUUID];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  -[WTStartupOptions setSourceUserInterfaceIdiom:](v9, "setSourceUserInterfaceIdiom:", [currentDevice userInterfaceIdiom]);

  beTextInput = [(WTWritingToolsController *)self beTextInput];
  if (beTextInput)
  {
    [(WTStartupOptions *)v9 setIsWebKitView:1];
  }

  else
  {
    sourceTextInput = [(WTWritingToolsController *)self sourceTextInput];
    -[WTStartupOptions setIsWebKitView:](v9, "setIsWebKitView:", [sourceTextInput conformsToProtocol:&unk_1F4FEE360]);
  }

  writingToolsDelegate = [(WTWritingToolsController *)self writingToolsDelegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    writingToolsDelegate2 = [(WTWritingToolsController *)self writingToolsDelegate];
    -[WTStartupOptions setIncludesTextListMarkers:](v9, "setIncludesTextListMarkers:", [writingToolsDelegate2 includesTextListMarkers]);
  }

  if (dashboardCopy)
  {
    [(WTStartupOptions *)v9 setIsForInputDashboard:1];
    [(WTStartupOptions *)v9 setEditable:1];
    [(WTStartupOptions *)v9 setWantsInlineEditing:1];
  }

  else
  {
    [(WTStartupOptions *)v9 setHandoffOriginatorTool:[(WTWritingToolsController *)self handoffOriginatorTool]];
    prompt = [(WTWritingToolsController *)self prompt];
    [(WTStartupOptions *)v9 setPrompt:prompt];

    [(WTStartupOptions *)v9 setEditable:[(WTWritingToolsController *)self _isEditableResponder]];
    [(WTStartupOptions *)v9 setWantsInlineEditing:[(WTWritingToolsController *)self _wantsInlineEditing]];
    sourceResponderViewController = [(WTWritingToolsController *)self sourceResponderViewController];
    traitCollection = [sourceResponderViewController traitCollection];
    -[WTStartupOptions setSourceResponderHorizontalSizeClass:](v9, "setSourceResponderHorizontalSizeClass:", [traitCollection horizontalSizeClass]);

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

  if (tool == 101)
  {
    goto LABEL_16;
  }

  if (tool == 1)
  {
    [(WTStartupOptions *)v9 setIsForAssistant:assistantCopy];
  }

  if (!dashboardCopy)
  {
LABEL_16:
    smartReplyConfig = [(WTWritingToolsController *)self smartReplyConfig];
    [(WTStartupOptions *)v9 setSmartReplyConfiguration:smartReplyConfig];
  }

  sourceResponder = [(WTWritingToolsController *)self sourceResponder];
  -[WTStartupOptions setSourceDataOwnerForCopy:](v9, "setSourceDataOwnerForCopy:", [sourceResponder _dataOwnerForCopy]);

  sourceResponder2 = [(WTWritingToolsController *)self sourceResponder];
  -[WTStartupOptions setSourceDataOwnerForPaste:](v9, "setSourceDataOwnerForPaste:", [sourceResponder2 _dataOwnerForPaste]);

  sourceResponder3 = [(WTWritingToolsController *)self sourceResponder];
  -[WTStartupOptions setSourceDataOwnerForDrag:](v9, "setSourceDataOwnerForDrag:", [sourceResponder3 _dragDataOwner]);

  sourceResponder4 = [(WTWritingToolsController *)self sourceResponder];
  -[WTStartupOptions setSourceDataOwnerForDrop:](v9, "setSourceDataOwnerForDrop:", [sourceResponder4 _dropDataOwner]);

  return v9;
}

- (id)_textViewDelegate
{
  mainPopoverViewController = [(WTWritingToolsController *)self mainPopoverViewController];

  if (mainPopoverViewController)
  {
    mainPopoverViewController2 = [(WTWritingToolsController *)self mainPopoverViewController];
  }

  else
  {
    _inputDashboardViewController = [(WTWritingToolsController *)self _inputDashboardViewController];
    mainPopoverViewController2 = _inputDashboardViewController;
    if (_inputDashboardViewController)
    {
      v6 = _inputDashboardViewController;
    }
  }

  return mainPopoverViewController2;
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