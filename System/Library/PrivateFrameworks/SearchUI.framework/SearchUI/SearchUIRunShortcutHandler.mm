@interface SearchUIRunShortcutHandler
+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4;
- (id)actionProvider;
- (unint64_t)destination;
- (void)actionSearchResultExecution:(id)a3 didDismissRemoteAlertWithReason:(int64_t)a4 actionCompleted:(BOOL)a5 withResult:(int64_t)a6 shouldClearAction:(BOOL)a7;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
- (void)removeRowModel;
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
@end

@implementation SearchUIRunShortcutHandler

+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4
{
  v4 = [a3 identifyingResult];
  v5 = [SearchUIUtilities resultIsSiriAction:v4];

  if (v5)
  {
    v6 = objc_opt_new();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v6 = a3;
  v7 = [(SearchUICommandHandler *)self rowModel];
  v8 = [v7 identifyingResult];

  if ([SearchUIUtilities resultBlockedForScreenTime:v8])
  {
    goto LABEL_10;
  }

  v9 = [v8 identifier];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v8 sectionBundleIdentifier];
  v12 = [SearchUIUtilities bundleIdentifierForApp:15];
  if (([v11 isEqualToString:v12] & 1) == 0)
  {

    goto LABEL_9;
  }

  v13 = [MEMORY[0x1E69D9240] isMacOS];

  if (v13)
  {
LABEL_9:
    v16 = [MEMORY[0x1E69E0938] standardClient];
    v17 = [v6 voiceShortcutIdentifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__SearchUIRunShortcutHandler_performCommand_triggerEvent_environment___block_invoke;
    v18[3] = &unk_1E85B2838;
    v19 = v6;
    v20 = self;
    [v16 getVoiceShortcutWithIdentifier:v17 completion:v18];

    goto LABEL_10;
  }

  v14 = objc_opt_new();
  [v14 setSearchResult:v8];
  [v14 setDelegate:self];
  if (objc_opt_respondsToSelector())
  {
    v15 = [(SearchUIRunShortcutHandler *)self runViewSource];
    [v14 setRunViewSource:v15];
  }

  [v14 executeShortcut];
  [(SearchUIRunShortcutHandler *)self setAction:v14];
  objc_storeStrong(&s_activeHandler, self);

LABEL_10:
}

void __70__SearchUIRunShortcutHandler_performCommand_triggerEvent_environment___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 shortcut];
  if (!v3)
  {
    v4 = SearchUIGeneralLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__SearchUIRunShortcutHandler_performCommand_triggerEvent_environment___block_invoke_cold_1(a1, v4);
    }
  }

  v5 = [objc_alloc(MEMORY[0x1E69E0D68]) initWithINShortcut:v3 executionContext:5];
  [v5 setDelegate:*(a1 + 40)];
  [*(a1 + 40) setWorkFlowRunnerClient:v5];
  v6 = [*(a1 + 40) workFlowRunnerClient];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [*(a1 + 40) workFlowRunnerClient];
    v9 = [*(a1 + 40) runViewSource];
    [v8 setRunViewSource:v9];
  }

  objc_storeStrong(&s_activeHandler, *(a1 + 40));
  [v5 start];
}

- (unint64_t)destination
{
  v2 = [(SearchUICommandHandler *)self rowModel];
  v3 = [v2 punchouts];
  v4 = [v3 firstObject];
  if ([v4 isRunnableInBackground])
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (void)actionSearchResultExecution:(id)a3 didDismissRemoteAlertWithReason:(int64_t)a4 actionCompleted:(BOOL)a5 withResult:(int64_t)a6 shouldClearAction:(BOOL)a7
{
  v11 = a3;
  if (objc_opt_respondsToSelector())
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = [v11 runViewSource];
    [v12 postNotificationName:@"SearchUICommandHandlerShortcutDidEndNotification" object:v13];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __135__SearchUIRunShortcutHandler_actionSearchResultExecution_didDismissRemoteAlertWithReason_actionCompleted_withResult_shouldClearAction___block_invoke;
  v15[3] = &unk_1E85B2860;
  v19 = a7;
  v15[4] = self;
  v16 = v11;
  v17 = a6;
  v18 = a4;
  v14 = v11;
  [SearchUIUtilities dispatchMainIfNecessary:v15];
}

void __135__SearchUIRunShortcutHandler_actionSearchResultExecution_didDismissRemoteAlertWithReason_actionCompleted_withResult_shouldClearAction___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) removeRowModel];
  }

  v2 = [*(a1 + 32) environment];
  v17 = [v2 feedbackDelegate];

  if (objc_opt_respondsToSelector())
  {
    if (*(a1 + 48) == 4)
    {
      v3 = [*(a1 + 40) searchResult];
      v4 = [v3 punchout];
      v5 = v4;
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = objc_opt_new();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = objc_alloc(MEMORY[0x1E69C9F10]);
    v9 = [*(a1 + 32) rowModel];
    v10 = [v9 cardSection];
    v11 = [v8 initWithCardSection:v10 destination:v7 triggerEvent:2 actionCardType:0];

    v12 = [*(a1 + 40) searchResult];
    [v11 setQueryId:{objc_msgSend(v12, "queryId")}];

    [v17 didEngageCardSection:v11];
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = *(a1 + 56) - 1;
    if (v13 > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = qword_1DA272948[v13];
    }

    v15 = [objc_alloc(MEMORY[0x1E69C9F28]) initWithEvent:v14];
    [v17 cardViewDidDisappear:v15];
  }

  v16 = s_activeHandler;
  s_activeHandler = 0;
}

- (id)actionProvider
{
  v3 = [(SearchUICommandHandler *)self environment];
  v4 = [(SearchUICommandHandler *)self rowModel];
  v5 = MEMORY[0x1E698B080];
  v6 = [v4 identifyingResult];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__SearchUIRunShortcutHandler_actionProvider__block_invoke;
  v13[3] = &unk_1E85B24C8;
  v13[4] = self;
  v7 = [v5 actionProviderForSearchResult:v6 dismissSearchResultHandler:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__SearchUIRunShortcutHandler_actionProvider__block_invoke_2;
  v11[3] = &unk_1E85B2888;
  v12 = v7;
  v8 = v7;
  v9 = _Block_copy(v11);

  return v9;
}

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = SearchUITapLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SearchUIRunShortcutHandler workflowRunnerClient:v10 didFinishRunningWorkflowWithOutput:v11 error:? cancelled:?];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = [v8 runViewSource];
    [v12 postNotificationName:@"SearchUICommandHandlerShortcutDidEndNotification" object:v13];
  }
}

- (void)removeRowModel
{
  v3 = [(SearchUICommandHandler *)self environment];
  v4 = [v3 feedbackDelegate];

  if (objc_opt_respondsToSelector())
  {
    v5 = dispatch_time(0, 400000000);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__SearchUIRunShortcutHandler_removeRowModel__block_invoke;
    v6[3] = &unk_1E85B2540;
    v7 = v4;
    v8 = self;
    dispatch_after(v5, MEMORY[0x1E69E96A0], v6);
  }
}

void __44__SearchUIRunShortcutHandler_removeRowModel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) rowModel];
  [v1 removeRowModel:v2 completion:0];
}

void __70__SearchUIRunShortcutHandler_performCommand_triggerEvent_environment___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) voiceShortcutIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "SearchUIRunShortcutHandler: No INShortcut for identifier: %@", &v4, 0xCu);
}

- (void)workflowRunnerClient:(uint64_t)a1 didFinishRunningWorkflowWithOutput:(NSObject *)a2 error:cancelled:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "SearchUIRunShortcutHandler workflowRunnerClient didFinishRunningWorkflowWith error: %@", &v2, 0xCu);
}

@end