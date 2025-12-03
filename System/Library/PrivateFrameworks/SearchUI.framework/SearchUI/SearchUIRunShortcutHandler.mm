@interface SearchUIRunShortcutHandler
+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment;
- (id)actionProvider;
- (unint64_t)destination;
- (void)actionSearchResultExecution:(id)execution didDismissRemoteAlertWithReason:(int64_t)reason actionCompleted:(BOOL)completed withResult:(int64_t)result shouldClearAction:(BOOL)action;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
- (void)removeRowModel;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
@end

@implementation SearchUIRunShortcutHandler

+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment
{
  identifyingResult = [model identifyingResult];
  v5 = [SearchUIUtilities resultIsSiriAction:identifyingResult];

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

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  commandCopy = command;
  rowModel = [(SearchUICommandHandler *)self rowModel];
  identifyingResult = [rowModel identifyingResult];

  if ([SearchUIUtilities resultBlockedForScreenTime:identifyingResult])
  {
    goto LABEL_10;
  }

  identifier = [identifyingResult identifier];
  if (!identifier)
  {
    goto LABEL_9;
  }

  v10 = identifier;
  sectionBundleIdentifier = [identifyingResult sectionBundleIdentifier];
  v12 = [SearchUIUtilities bundleIdentifierForApp:15];
  if (([sectionBundleIdentifier isEqualToString:v12] & 1) == 0)
  {

    goto LABEL_9;
  }

  isMacOS = [MEMORY[0x1E69D9240] isMacOS];

  if (isMacOS)
  {
LABEL_9:
    standardClient = [MEMORY[0x1E69E0938] standardClient];
    voiceShortcutIdentifier = [commandCopy voiceShortcutIdentifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__SearchUIRunShortcutHandler_performCommand_triggerEvent_environment___block_invoke;
    v18[3] = &unk_1E85B2838;
    v19 = commandCopy;
    selfCopy = self;
    [standardClient getVoiceShortcutWithIdentifier:voiceShortcutIdentifier completion:v18];

    goto LABEL_10;
  }

  v14 = objc_opt_new();
  [v14 setSearchResult:identifyingResult];
  [v14 setDelegate:self];
  if (objc_opt_respondsToSelector())
  {
    runViewSource = [(SearchUIRunShortcutHandler *)self runViewSource];
    [v14 setRunViewSource:runViewSource];
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
  rowModel = [(SearchUICommandHandler *)self rowModel];
  punchouts = [rowModel punchouts];
  firstObject = [punchouts firstObject];
  if ([firstObject isRunnableInBackground])
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (void)actionSearchResultExecution:(id)execution didDismissRemoteAlertWithReason:(int64_t)reason actionCompleted:(BOOL)completed withResult:(int64_t)result shouldClearAction:(BOOL)action
{
  executionCopy = execution;
  if (objc_opt_respondsToSelector())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    runViewSource = [executionCopy runViewSource];
    [defaultCenter postNotificationName:@"SearchUICommandHandlerShortcutDidEndNotification" object:runViewSource];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __135__SearchUIRunShortcutHandler_actionSearchResultExecution_didDismissRemoteAlertWithReason_actionCompleted_withResult_shouldClearAction___block_invoke;
  v15[3] = &unk_1E85B2860;
  actionCopy = action;
  v15[4] = self;
  v16 = executionCopy;
  resultCopy = result;
  reasonCopy = reason;
  v14 = executionCopy;
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
  environment = [(SearchUICommandHandler *)self environment];
  rowModel = [(SearchUICommandHandler *)self rowModel];
  v5 = MEMORY[0x1E698B080];
  identifyingResult = [rowModel identifyingResult];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__SearchUIRunShortcutHandler_actionProvider__block_invoke;
  v13[3] = &unk_1E85B24C8;
  v13[4] = self;
  v7 = [v5 actionProviderForSearchResult:identifyingResult dismissSearchResultHandler:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__SearchUIRunShortcutHandler_actionProvider__block_invoke_2;
  v11[3] = &unk_1E85B2888;
  v12 = v7;
  v8 = v7;
  v9 = _Block_copy(v11);

  return v9;
}

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  clientCopy = client;
  outputCopy = output;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = SearchUITapLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SearchUIRunShortcutHandler workflowRunnerClient:errorCopy didFinishRunningWorkflowWithOutput:v11 error:? cancelled:?];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    runViewSource = [clientCopy runViewSource];
    [defaultCenter postNotificationName:@"SearchUICommandHandlerShortcutDidEndNotification" object:runViewSource];
  }
}

- (void)removeRowModel
{
  environment = [(SearchUICommandHandler *)self environment];
  feedbackDelegate = [environment feedbackDelegate];

  if (objc_opt_respondsToSelector())
  {
    v5 = dispatch_time(0, 400000000);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__SearchUIRunShortcutHandler_removeRowModel__block_invoke;
    v6[3] = &unk_1E85B2540;
    v7 = feedbackDelegate;
    selfCopy = self;
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