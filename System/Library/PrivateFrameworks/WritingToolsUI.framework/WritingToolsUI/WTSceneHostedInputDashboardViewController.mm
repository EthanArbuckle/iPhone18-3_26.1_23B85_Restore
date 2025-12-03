@interface WTSceneHostedInputDashboardViewController
- (WTSceneHostedInputDashboardViewController)initWithWritingToolsDelegate:(id)delegate startupOptions:(id)options;
- (WTWritingToolsDelegate_Internal)writingToolsDelegate;
- (void)_setupSceneHosting;
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
- (void)proofreadingSession:(id)session didReceiveSuggestions:(id)suggestions processedRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished;
- (void)proofreadingSession:(id)session didUpdateState:(int64_t)state forSuggestionWithUUID:(id)d inContext:(id)context;
- (void)proofreadingSessionWithUUID:(id)d updateState:(int64_t)state forSuggestionWithUUID:(id)iD;
- (void)redo;
- (void)replaceSelectionWithText:(id)text;
- (void)setRemainingRedoCount:(unint64_t)count;
- (void)setRemainingUndoCount:(unint64_t)count;
- (void)showAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle buttonAction:(id)action;
- (void)showContentWarningWithTitle:(id)title message:(id)message;
- (void)showSmartReplyQuestionnaireWithRect:(CGRect)rect;
- (void)undo;
- (void)willBeginWritingToolsSession:(id)session requestContexts:(id)contexts;
- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)position preferredContentSizeChanging:(BOOL)changing;
- (void)writingToolsSession:(id)session didReceiveAction:(int64_t)action;
@end

@implementation WTSceneHostedInputDashboardViewController

- (WTSceneHostedInputDashboardViewController)initWithWritingToolsDelegate:(id)delegate startupOptions:(id)options
{
  delegateCopy = delegate;
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = WTSceneHostedInputDashboardViewController;
  v8 = [(WTSceneHostedInputDashboardViewController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_writingToolsDelegate, delegateCopy);
    sessionUUID = [optionsCopy sessionUUID];
    sessionUUID = v9->_sessionUUID;
    v9->_sessionUUID = sessionUUID;

    objc_storeStrong(&v9->_startupOptions, options);
    [(WTSceneHostedInputDashboardViewController *)v9 _setupSceneHosting];
  }

  return v9;
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
    v14 = "[WTSceneHostedInputDashboardViewController willBeginWritingToolsSession:requestContexts:]";
    v15 = 2112;
    selfCopy = self;
    v17 = 2112;
    v18 = uuid;
    v19 = 2048;
    type = [sessionCopy type];
    _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_INFO, "%s (%@, sessUUIS: %@, sessType: %lu)", &v13, 0x2Au);
  }

  sessionUUID = [(WTSceneHostedInputDashboardViewController *)self sessionUUID];

  if (!sessionUUID)
  {
    uuid2 = [sessionCopy uuid];
    [(WTSceneHostedInputDashboardViewController *)self setSessionUUID:uuid2];
  }

  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
    v12 = "[WTSceneHostedInputDashboardViewController didBeginWritingToolsSession:contexts:]";
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

  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
    v11 = "[WTSceneHostedInputDashboardViewController writingToolsSession:didReceiveAction:]";
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

  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
    v14 = "[WTSceneHostedInputDashboardViewController didEndWritingToolsSession:accepted:]";
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

  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [writingToolsDelegate didEndWritingToolsSession:sessionCopy accepted:acceptedCopy];

  hostingController = [(WTSceneHostedInputDashboardViewController *)self hostingController];
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
    v23 = "[WTSceneHostedInputDashboardViewController compositionSession:didReceiveText:replacementRange:inContext:finished:]";
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

  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [writingToolsDelegate proofreadingSession:sessionCopy didReceiveSuggestions:suggestionsCopy processedRange:location inContext:length finished:{contextCopy, finishedCopy}];
}

- (void)proofreadingSession:(id)session didUpdateState:(int64_t)state forSuggestionWithUUID:(id)d inContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  sessionCopy = session;
  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
    v8 = "[WTSceneHostedInputDashboardViewController endWritingToolsWithError:]";
    v9 = 2112;
    selfCopy = self;
    v11 = 2112;
    v12 = errorCopy;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, error: %@)", &v7, 0x20u);
  }

  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__WTSceneHostedInputDashboardViewController_showContentWarningWithTitle_message___block_invoke;
  v18[3] = &unk_1E8480A88;
  objc_copyWeak(&v19, &location);
  v12 = [v9 actionWithTitle:v11 style:0 handler:v18];
  [v8 addAction:v12];

  v13 = MEMORY[0x1E69DC648];
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"Continue" value:&stru_1F4FC5520 table:@"Localizable"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__WTSceneHostedInputDashboardViewController_showContentWarningWithTitle_message___block_invoke_2;
  v17[3] = &unk_1E8480AB0;
  v17[4] = self;
  v16 = [v13 actionWithTitle:v15 style:0 handler:v17];
  [v8 addAction:v16];

  [(WTSceneHostedInputDashboardViewController *)self presentViewController:v8 animated:1 completion:0];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __81__WTSceneHostedInputDashboardViewController_showContentWarningWithTitle_message___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained writingToolsDelegate];
  [v1 endWritingTools];
}

void __81__WTSceneHostedInputDashboardViewController_showContentWarningWithTitle_message___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionUUID];
  v4 = [WTUIActionHostToClient actionForDidDismissInputWarningForSessionWithUUID:v2];

  v3 = [*(a1 + 32) hostingController];
  [v3 sendAction:v4];
}

- (void)showAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle buttonAction:(id)action
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  actionCopy = action;
  v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
  objc_initWeak(&location, self);
  v14 = MEMORY[0x1E69DC648];
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"Cancel" value:&stru_1F4FC5520 table:@"Localizable"];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97__WTSceneHostedInputDashboardViewController_showAlertWithTitle_message_buttonTitle_buttonAction___block_invoke;
  v26[3] = &unk_1E8480A88;
  objc_copyWeak(&v27, &location);
  v17 = [v14 actionWithTitle:v16 style:0 handler:v26];
  [v13 addAction:v17];

  v18 = MEMORY[0x1E69DC648];
  v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"Continue" value:&stru_1F4FC5520 table:@"Localizable"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __97__WTSceneHostedInputDashboardViewController_showAlertWithTitle_message_buttonTitle_buttonAction___block_invoke_2;
  v24[3] = &unk_1E8480AD8;
  v21 = actionCopy;
  v25 = v21;
  v22 = [v18 actionWithTitle:v20 style:0 handler:v24];
  [v13 addAction:v22];

  [(WTSceneHostedInputDashboardViewController *)self presentViewController:v13 animated:1 completion:0];
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __97__WTSceneHostedInputDashboardViewController_showAlertWithTitle_message_buttonTitle_buttonAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained writingToolsDelegate];
  [v1 endWritingTools];
}

- (void)handoffFromUCBFromTool:(int64_t)tool withPrompt:(id)prompt
{
  promptCopy = prompt;
  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [writingToolsDelegate handoffFromUCBFromTool:tool withPrompt:promptCopy];
}

- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)position preferredContentSizeChanging:(BOOL)changing
{
  changingCopy = changing;
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [writingToolsDelegate writingToolsDidUpdateKeyboardPosition:changingCopy preferredContentSizeChanging:{x, y, width, height}];
}

- (void)endWritingTools
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[WTSceneHostedInputDashboardViewController endWritingTools]";
    v6 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v4, 0x16u);
  }

  [(WTSceneHostedInputDashboardViewController *)self endWritingToolsWithError:0];
}

- (void)undo
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[WTSceneHostedInputDashboardViewController undo]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [writingToolsDelegate undo];
}

- (void)redo
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[WTSceneHostedInputDashboardViewController redo]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
    v8 = "[WTSceneHostedInputDashboardViewController replaceSelectionWithText:]";
    v9 = 2112;
    selfCopy = self;
    v11 = 2048;
    v12 = [textCopy length];
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, textLen=%lu)", &v7, 0x20u);
  }

  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
    v8 = "[WTSceneHostedInputDashboardViewController copyText:]";
    v9 = 2112;
    selfCopy = self;
    v11 = 2048;
    v12 = [textCopy length];
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, textLen: %lu)", &v7, 0x20u);
  }

  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [writingToolsDelegate copyText:textCopy];
}

- (void)beginTextPlaceholder
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _WTVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[WTSceneHostedInputDashboardViewController beginTextPlaceholder]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
    v11 = "[WTSceneHostedInputDashboardViewController endTextPlaceholderAndWillInsertText:completion:]";
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

  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [writingToolsDelegate endTextPlaceholderAndWillInsertText:textCopy completion:completionCopy];
}

- (void)showSmartReplyQuestionnaireWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = _WTVCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(WTSceneHostedInputDashboardViewController *)self showSmartReplyQuestionnaireWithRect:v8, x, y, width, height];
  }

  v9 = [WTSmartReplyQuestionnaireViewController alloc];
  sessionUUID = [(WTSceneHostedInputDashboardViewController *)self sessionUUID];
  v11 = [(WTSmartReplyQuestionnaireViewController *)v9 initWithSessionUUID:sessionUUID];

  [(WTSmartReplyQuestionnaireViewController *)v11 setModalPresentationStyle:7];
  view = [(WTSceneHostedInputDashboardViewController *)self view];
  popoverPresentationController = [(WTSmartReplyQuestionnaireViewController *)v11 popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  popoverPresentationController2 = [(WTSmartReplyQuestionnaireViewController *)v11 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{x, y, width, height}];

  popoverPresentationController3 = [(WTSmartReplyQuestionnaireViewController *)v11 popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:2];

  popoverPresentationController4 = [(WTSmartReplyQuestionnaireViewController *)v11 popoverPresentationController];
  [popoverPresentationController4 setCanOverlapSourceViewRect:1];

  [(WTSceneHostedInputDashboardViewController *)self presentViewController:v11 animated:1 completion:&__block_literal_global_0];
}

- (void)proofreadingSessionWithUUID:(id)d updateState:(int64_t)state forSuggestionWithUUID:(id)iD
{
  v7 = [WTUIActionHostToClient actionForProofreadingSessionWithUUID:d updateState:state forSuggestionWithUUID:iD];
  hostingController = [(WTSceneHostedInputDashboardViewController *)self hostingController];
  [hostingController sendAction:v7];
}

- (void)setRemainingUndoCount:(unint64_t)count
{
  v5 = [WTUIActionHostToClient actionForSetRemainingUndoCount:count];
  hostingController = [(WTSceneHostedInputDashboardViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)setRemainingRedoCount:(unint64_t)count
{
  v5 = [WTUIActionHostToClient actionForSetRemainingRedoCount:count];
  hostingController = [(WTSceneHostedInputDashboardViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)_setupSceneHosting
{
  v37[4] = *MEMORY[0x1E69E9840];
  hostingController = [(WTSceneHostedInputDashboardViewController *)self hostingController];

  if (!hostingController)
  {
    [(WTSceneHostedInputDashboardViewController *)self _beginDelayingPresentation:&__block_literal_global_20 cancellationHandler:3.0];
    v32 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.WritingToolsUIService"];
    v4 = objc_alloc(MEMORY[0x1E69DD688]);
    v5 = objc_alloc_init(MEMORY[0x1E69DD6A0]);
    v6 = [v4 initWithProcessIdentity:v32 sceneSpecification:v5];
    [(WTSceneHostedInputDashboardViewController *)self setHostingController:v6];

    hostingController2 = [(WTSceneHostedInputDashboardViewController *)self hostingController];
    _eventDeferringComponent = [hostingController2 _eventDeferringComponent];
    [_eventDeferringComponent setMaintainHostFirstResponderWhenClientWantsKeyboard:1];

    startupOptions = [(WTSceneHostedInputDashboardViewController *)self startupOptions];
    v31 = [startupOptions asBSActionAndReturnError:0];

    objc_initWeak(&location, self);
    v10 = [WTUISceneHostingActivationController alloc];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __63__WTSceneHostedInputDashboardViewController__setupSceneHosting__block_invoke_2;
    v34[3] = &unk_1E8480B20;
    objc_copyWeak(&v35, &location);
    v11 = [(WTUISceneHostingActivationController *)v10 initWithStartupAction:v31 invalidationHandler:v34];
    hostingController3 = [(WTSceneHostedInputDashboardViewController *)self hostingController];
    [hostingController3 setActivationController:v11];

    hostingController4 = [(WTSceneHostedInputDashboardViewController *)self hostingController];
    [hostingController4 setDelegate:self];

    hostingController5 = [(WTSceneHostedInputDashboardViewController *)self hostingController];
    sceneViewController = [hostingController5 sceneViewController];

    [(WTSceneHostedInputDashboardViewController *)self addChildViewController:sceneViewController];
    view = [sceneViewController view];
    view2 = [(WTSceneHostedInputDashboardViewController *)self view];
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

void __63__WTSceneHostedInputDashboardViewController__setupSceneHosting__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained writingToolsDelegate];
  [v1 endWritingToolsWithError:0];
}

- (void)enrollmentBegan
{
  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [writingToolsDelegate enrollmentBegan];
}

- (void)enrollmentDismissedWithCompletion:(id)completion
{
  completionCopy = completion;
  writingToolsDelegate = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [writingToolsDelegate enrollmentDismissedWithCompletion:completionCopy];
}

- (WTWritingToolsDelegate_Internal)writingToolsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_writingToolsDelegate);

  return WeakRetained;
}

- (void)showSmartReplyQuestionnaireWithRect:(CGFloat)a3 .cold.1(void *a1, NSObject *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = [a1 sessionUUID];
  v23.origin.x = a3;
  v23.origin.y = a4;
  v23.size.width = a5;
  v23.size.height = a6;
  v13 = NSStringFromCGRect(v23);
  v14 = 136315906;
  v15 = "[WTSceneHostedInputDashboardViewController showSmartReplyQuestionnaireWithRect:]";
  v16 = 2112;
  v17 = a1;
  v18 = 2112;
  v19 = v12;
  v20 = 2112;
  v21 = v13;
  _os_log_debug_impl(&dword_1D451D000, a2, OS_LOG_TYPE_DEBUG, "%s (%@, sessionUUID: %@, rect: %@)", &v14, 0x2Au);
}

@end