@interface WTSceneHostedInputDashboardViewController
- (WTSceneHostedInputDashboardViewController)initWithWritingToolsDelegate:(id)a3 startupOptions:(id)a4;
- (WTWritingToolsDelegate_Internal)writingToolsDelegate;
- (void)_setupSceneHosting;
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
- (void)proofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6;
- (void)proofreadingSessionWithUUID:(id)a3 updateState:(int64_t)a4 forSuggestionWithUUID:(id)a5;
- (void)redo;
- (void)replaceSelectionWithText:(id)a3;
- (void)setRemainingRedoCount:(unint64_t)a3;
- (void)setRemainingUndoCount:(unint64_t)a3;
- (void)showAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 buttonAction:(id)a6;
- (void)showContentWarningWithTitle:(id)a3 message:(id)a4;
- (void)showSmartReplyQuestionnaireWithRect:(CGRect)a3;
- (void)undo;
- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4;
- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)a3 preferredContentSizeChanging:(BOOL)a4;
- (void)writingToolsSession:(id)a3 didReceiveAction:(int64_t)a4;
@end

@implementation WTSceneHostedInputDashboardViewController

- (WTSceneHostedInputDashboardViewController)initWithWritingToolsDelegate:(id)a3 startupOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = WTSceneHostedInputDashboardViewController;
  v8 = [(WTSceneHostedInputDashboardViewController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_writingToolsDelegate, v6);
    v10 = [v7 sessionUUID];
    sessionUUID = v9->_sessionUUID;
    v9->_sessionUUID = v10;

    objc_storeStrong(&v9->_startupOptions, a4);
    [(WTSceneHostedInputDashboardViewController *)v9 _setupSceneHosting];
  }

  return v9;
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
    v14 = "[WTSceneHostedInputDashboardViewController willBeginWritingToolsSession:requestContexts:]";
    v15 = 2112;
    v16 = self;
    v17 = 2112;
    v18 = v9;
    v19 = 2048;
    v20 = [v6 type];
    _os_log_impl(&dword_1D451D000, v8, OS_LOG_TYPE_INFO, "%s (%@, sessUUIS: %@, sessType: %lu)", &v13, 0x2Au);
  }

  v10 = [(WTSceneHostedInputDashboardViewController *)self sessionUUID];

  if (!v10)
  {
    v11 = [v6 uuid];
    [(WTSceneHostedInputDashboardViewController *)self setSessionUUID:v11];
  }

  v12 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
    v12 = "[WTSceneHostedInputDashboardViewController didBeginWritingToolsSession:contexts:]";
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

  v10 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
    v11 = "[WTSceneHostedInputDashboardViewController writingToolsSession:didReceiveAction:]";
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

  v9 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
    v14 = "[WTSceneHostedInputDashboardViewController didEndWritingToolsSession:accepted:]";
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

  v11 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [v11 didEndWritingToolsSession:v6 accepted:v4];

  v12 = [(WTSceneHostedInputDashboardViewController *)self hostingController];
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
    v23 = "[WTSceneHostedInputDashboardViewController compositionSession:didReceiveText:replacementRange:inContext:finished:]";
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

  v21 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
  v16 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [v16 proofreadingSession:v15 didReceiveSuggestions:v14 processedRange:location inContext:length finished:{v13, v7}];
}

- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
    v8 = "[WTSceneHostedInputDashboardViewController endWritingToolsWithError:]";
    v9 = 2112;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, error: %@)", &v7, 0x20u);
  }

  v6 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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

- (void)showAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 buttonAction:(id)a6
{
  v10 = a3;
  v11 = a4;
  v23 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:v11 preferredStyle:1];
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
  v21 = v12;
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

- (void)handoffFromUCBFromTool:(int64_t)a3 withPrompt:(id)a4
{
  v6 = a4;
  v7 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [v7 handoffFromUCBFromTool:a3 withPrompt:v6];
}

- (void)writingToolsDidUpdateKeyboardPosition:(CGRect)a3 preferredContentSizeChanging:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [v9 writingToolsDidUpdateKeyboardPosition:v4 preferredContentSizeChanging:{x, y, width, height}];
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
    v7 = self;
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
    v8 = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  v4 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [v4 undo];
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
    v8 = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  v4 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
    v8 = "[WTSceneHostedInputDashboardViewController replaceSelectionWithText:]";
    v9 = 2112;
    v10 = self;
    v11 = 2048;
    v12 = [v4 length];
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, textLen=%lu)", &v7, 0x20u);
  }

  v6 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
    v8 = "[WTSceneHostedInputDashboardViewController copyText:]";
    v9 = 2112;
    v10 = self;
    v11 = 2048;
    v12 = [v4 length];
    _os_log_impl(&dword_1D451D000, v5, OS_LOG_TYPE_INFO, "%s (%@, textLen: %lu)", &v7, 0x20u);
  }

  v6 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [v6 copyText:v4];
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
    v8 = self;
    _os_log_impl(&dword_1D451D000, v3, OS_LOG_TYPE_INFO, "%s (%@)", &v5, 0x16u);
  }

  v4 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
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
    v11 = "[WTSceneHostedInputDashboardViewController endTextPlaceholderAndWillInsertText:completion:]";
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

  v9 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [v9 endTextPlaceholderAndWillInsertText:v4 completion:v6];
}

- (void)showSmartReplyQuestionnaireWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = _WTVCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(WTSceneHostedInputDashboardViewController *)self showSmartReplyQuestionnaireWithRect:v8, x, y, width, height];
  }

  v9 = [WTSmartReplyQuestionnaireViewController alloc];
  v10 = [(WTSceneHostedInputDashboardViewController *)self sessionUUID];
  v11 = [(WTSmartReplyQuestionnaireViewController *)v9 initWithSessionUUID:v10];

  [(WTSmartReplyQuestionnaireViewController *)v11 setModalPresentationStyle:7];
  v12 = [(WTSceneHostedInputDashboardViewController *)self view];
  v13 = [(WTSmartReplyQuestionnaireViewController *)v11 popoverPresentationController];
  [v13 setSourceView:v12];

  v14 = [(WTSmartReplyQuestionnaireViewController *)v11 popoverPresentationController];
  [v14 setSourceRect:{x, y, width, height}];

  v15 = [(WTSmartReplyQuestionnaireViewController *)v11 popoverPresentationController];
  [v15 setPermittedArrowDirections:2];

  v16 = [(WTSmartReplyQuestionnaireViewController *)v11 popoverPresentationController];
  [v16 setCanOverlapSourceViewRect:1];

  [(WTSceneHostedInputDashboardViewController *)self presentViewController:v11 animated:1 completion:&__block_literal_global_0];
}

- (void)proofreadingSessionWithUUID:(id)a3 updateState:(int64_t)a4 forSuggestionWithUUID:(id)a5
{
  v7 = [WTUIActionHostToClient actionForProofreadingSessionWithUUID:a3 updateState:a4 forSuggestionWithUUID:a5];
  v6 = [(WTSceneHostedInputDashboardViewController *)self hostingController];
  [v6 sendAction:v7];
}

- (void)setRemainingUndoCount:(unint64_t)a3
{
  v5 = [WTUIActionHostToClient actionForSetRemainingUndoCount:a3];
  v4 = [(WTSceneHostedInputDashboardViewController *)self hostingController];
  [v4 sendAction:v5];
}

- (void)setRemainingRedoCount:(unint64_t)a3
{
  v5 = [WTUIActionHostToClient actionForSetRemainingRedoCount:a3];
  v4 = [(WTSceneHostedInputDashboardViewController *)self hostingController];
  [v4 sendAction:v5];
}

- (void)_setupSceneHosting
{
  v37[4] = *MEMORY[0x1E69E9840];
  v3 = [(WTSceneHostedInputDashboardViewController *)self hostingController];

  if (!v3)
  {
    [(WTSceneHostedInputDashboardViewController *)self _beginDelayingPresentation:&__block_literal_global_20 cancellationHandler:3.0];
    v32 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:@"com.apple.WritingToolsUIService"];
    v4 = objc_alloc(MEMORY[0x1E69DD688]);
    v5 = objc_alloc_init(MEMORY[0x1E69DD6A0]);
    v6 = [v4 initWithProcessIdentity:v32 sceneSpecification:v5];
    [(WTSceneHostedInputDashboardViewController *)self setHostingController:v6];

    v7 = [(WTSceneHostedInputDashboardViewController *)self hostingController];
    v8 = [v7 _eventDeferringComponent];
    [v8 setMaintainHostFirstResponderWhenClientWantsKeyboard:1];

    v9 = [(WTSceneHostedInputDashboardViewController *)self startupOptions];
    v31 = [v9 asBSActionAndReturnError:0];

    objc_initWeak(&location, self);
    v10 = [WTUISceneHostingActivationController alloc];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __63__WTSceneHostedInputDashboardViewController__setupSceneHosting__block_invoke_2;
    v34[3] = &unk_1E8480B20;
    objc_copyWeak(&v35, &location);
    v11 = [(WTUISceneHostingActivationController *)v10 initWithStartupAction:v31 invalidationHandler:v34];
    v12 = [(WTSceneHostedInputDashboardViewController *)self hostingController];
    [v12 setActivationController:v11];

    v13 = [(WTSceneHostedInputDashboardViewController *)self hostingController];
    [v13 setDelegate:self];

    v14 = [(WTSceneHostedInputDashboardViewController *)self hostingController];
    v33 = [v14 sceneViewController];

    [(WTSceneHostedInputDashboardViewController *)self addChildViewController:v33];
    v15 = [v33 view];
    v16 = [(WTSceneHostedInputDashboardViewController *)self view];
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

void __63__WTSceneHostedInputDashboardViewController__setupSceneHosting__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained writingToolsDelegate];
  [v1 endWritingToolsWithError:0];
}

- (void)enrollmentBegan
{
  v2 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [v2 enrollmentBegan];
}

- (void)enrollmentDismissedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WTSceneHostedInputDashboardViewController *)self writingToolsDelegate];
  [v5 enrollmentDismissedWithCompletion:v4];
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