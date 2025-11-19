@interface WFReversibleLinkAction
+ (Class)settingsClientClass;
- (void)finishRunningWithError:(id)a3;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFReversibleLinkAction

- (void)finishRunningWithError:(id)a3
{
  v4 = a3;
  if (v4 || ([(WFAction *)self runningDelegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) == 0))
  {
    v10.receiver = self;
    v10.super_class = WFReversibleLinkAction;
    [(WFAppIntentExecutionAction *)&v10 finishRunningWithError:v4];
  }

  else
  {
    v7 = [objc_opt_class() settingsClientClass];
    v8 = [(WFReversibleLinkAction *)self stateBeforeRun];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__WFReversibleLinkAction_finishRunningWithError___block_invoke;
    v9[3] = &unk_1E837B8D0;
    v9[4] = self;
    [v7 getBookmarkForFirstEventAfterBookmark:v8 completionHandler:v9];
  }
}

void __49__WFReversibleLinkAction_finishRunningWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = [*(a1 + 32) runningDelegate];
    v7 = *(a1 + 32);
    v8 = [v5 actionReversalState];
    [v6 action:v7 didGenerateReversalState:v8];

    objc_msgSendSuper2(&v9, sel_finishRunningWithError_, 0, *(a1 + 32), WFReversibleLinkAction, v10.receiver, v10.super_class);
  }

  else
  {
    objc_msgSendSuper2(&v10, sel_finishRunningWithError_, a3, v9.receiver, v9.super_class, *(a1 + 32), WFReversibleLinkAction);
  }
}

void __117__WFReversibleLinkAction_getValueForParameterData_ofProcessedParameters_fallingBackToDefaultValue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [*(a1 + 40) valueType];
    v7 = [v6 wf_parameterDefinitionWithParameterMetadata:*(a1 + 40)];

    v8 = *(a1 + 48);
    v9 = [v7 linkValueWithValue:v10];
    (*(v8 + 16))(v8, v9, 0);
  }

  else if ([v5 wf_isUserCancelledError])
  {
    [*(a1 + 32) finishRunningWithError:v5];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() settingsClientClass];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__WFReversibleLinkAction_runAsynchronouslyWithInput___block_invoke;
  v7[3] = &unk_1E837B880;
  objc_copyWeak(&v10, &location);
  v6 = v4;
  v8 = v6;
  v9 = self;
  [v5 getBookmarkForCurrentStateWithCompletionHandler:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __53__WFReversibleLinkAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setStateBeforeRun:v3];

  v5 = *(a1 + 32);
  v6.receiver = *(a1 + 40);
  v6.super_class = WFReversibleLinkAction;
  objc_msgSendSuper2(&v6, sel_runAsynchronouslyWithInput_, v5);
}

+ (Class)settingsClientClass
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[WFReversibleLinkAction settingsClientClass] must be overridden"];

  return objc_opt_class();
}

@end