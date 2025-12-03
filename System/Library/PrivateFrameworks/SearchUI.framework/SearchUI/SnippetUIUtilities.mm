@interface SnippetUIUtilities
+ (id)presentingViewController:(id)controller delegate:(id)delegate;
+ (id)supportsConfigurationForCombinedRowModel:(id)model;
+ (unint64_t)searchUIButtonItemViewStyleFromVRXButtonStyle:(int)style;
+ (void)createViewControllersForButtons:(id)buttons buttonFont:(id)font isCompact:(BOOL)compact sourceView:(id)view rowModel:(id)model delegate:(id)delegate completionHandler:(id)handler;
+ (void)emitInstrumentationEvent:(id)event delegate:(id)delegate;
+ (void)performSFCommand:(id)command rowModel:(id)model delegate:(id)delegate;
+ (void)reportFeedback:(id)feedback queryId:(unint64_t)id delegate:(id)delegate;
@end

@implementation SnippetUIUtilities

+ (id)supportsConfigurationForCombinedRowModel:(id)model
{
  v20 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  cardSectionRowModels = [modelCopy cardSectionRowModels];
  v6 = [cardSectionRowModels countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(cardSectionRowModels);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        cardSection = [v10 cardSection];
        v12 = [SnippetUIUtilities supportsConfigurationForCardSection:cardSection];

        if (v12)
        {
          cardSection2 = [v10 cardSection];
          [v4 addObject:cardSection2];
        }
      }

      v7 = [cardSectionRowModels countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (void)createViewControllersForButtons:(id)buttons buttonFont:(id)font isCompact:(BOOL)compact sourceView:(id)view rowModel:(id)model delegate:(id)delegate completionHandler:(id)handler
{
  buttonsCopy = buttons;
  fontCopy = font;
  modelCopy = model;
  delegateCopy = delegate;
  handlerCopy = handler;
  v20 = createViewControllersForButtons_buttonFont_isCompact_sourceView_rowModel_delegate_completionHandler__onceToken;
  viewCopy = view;
  if (v20 != -1)
  {
    +[SnippetUIUtilities createViewControllersForButtons:buttonFont:isCompact:sourceView:rowModel:delegate:completionHandler:];
  }

  v22 = objc_opt_new();
  [v22 setSourceView:viewCopy];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __122__SnippetUIUtilities_createViewControllersForButtons_buttonFont_isCompact_sourceView_rowModel_delegate_completionHandler___block_invoke_2;
  v29[3] = &unk_1E85B4B30;
  v30 = v22;
  v31 = delegateCopy;
  compactCopy = compact;
  v35 = handlerCopy;
  selfCopy = self;
  v32 = buttonsCopy;
  v33 = modelCopy;
  v34 = fontCopy;
  v23 = handlerCopy;
  v24 = fontCopy;
  v25 = modelCopy;
  v26 = buttonsCopy;
  v27 = delegateCopy;
  v28 = v22;
  [SearchUIUtilities dispatchMainIfNecessary:v29];
}

uint64_t __122__SnippetUIUtilities_createViewControllersForButtons_buttonFont_isCompact_sourceView_rowModel_delegate_completionHandler___block_invoke()
{
  createViewControllersForButtons_buttonFont_isCompact_sourceView_rowModel_delegate_completionHandler__activeFactories = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void __122__SnippetUIUtilities_createViewControllersForButtons_buttonFont_isCompact_sourceView_rowModel_delegate_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setTimeLimitForSubsequentButtonGeneratorUpdates:0.5];
  [v2 setDelegate:*(a1 + 32)];
  [v2 setFeedbackDelegate:*(a1 + 40)];
  [createViewControllersForButtons_buttonFont_isCompact_sourceView_rowModel_delegate_completionHandler__activeFactories addObject:v2];
  objc_initWeak(&location, v2);
  v3 = *(a1 + 48);
  if (*(a1 + 88))
  {
    v4 = 4;
  }

  else
  {
    v4 = [*(a1 + 48) count];
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __122__SnippetUIUtilities_createViewControllersForButtons_buttonFont_isCompact_sourceView_rowModel_delegate_completionHandler___block_invoke_3;
  v5[3] = &unk_1E85B4B08;
  objc_copyWeak(v10, &location);
  v10[1] = *(a1 + 80);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v11 = *(a1 + 88);
  v8 = *(a1 + 40);
  v9 = *(a1 + 72);
  [v2 fetchSearchUIButtonitemsWithSFButtonItems:v3 maxButtonItems:v4 shouldReverseButtonOrder:0 completion:v5];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __122__SnippetUIUtilities_createViewControllersForButtons_buttonFont_isCompact_sourceView_rowModel_delegate_completionHandler___block_invoke_3(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __122__SnippetUIUtilities_createViewControllersForButtons_buttonFont_isCompact_sourceView_rowModel_delegate_completionHandler___block_invoke_4;
  v14[3] = &unk_1E85B4AE0;
  objc_copyWeak(v18, (a1 + 64));
  v6 = v5;
  v7 = *(a1 + 72);
  v15 = v6;
  v18[1] = v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v19 = *(a1 + 80);
  v10 = *(a1 + 48);
  v20 = a3;
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v16 = v13;
  v17 = v12;
  [SearchUIUtilities dispatchMainIfNecessary:v14];

  objc_destroyWeak(v18);
}

void __122__SnippetUIUtilities_createViewControllersForButtons_buttonFont_isCompact_sourceView_rowModel_delegate_completionHandler___block_invoke_4(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v2 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = *(a1 + 80);
        v9 = [v7 sfButtonItem];
        v10 = [v9 buttonAppearance];
        v11 = [v8 searchUIButtonItemViewStyleFromVRXButtonStyle:{objc_msgSend(v10, "style")}];

        v12 = [SearchUIButtonItemViewController buttonItemViewControllerForButtonItem:v7];
        [v12 setRowModel:*(a1 + 40)];
        [v12 setButtonFont:*(a1 + 48)];
        [v12 setIsCompact:*(a1 + 88)];
        [v12 setFeedbackDelegate:*(a1 + 56)];
        [v12 updateWithButtonItem:v7 buttonItemViewType:v11];
        v13 = objc_opt_new();
        [v13 setButtonViewController:v12];
        v14 = [v12 view];
        [v13 setView:v14];

        [v2 addObject:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  if (*(a1 + 89) == 1)
  {
    [createViewControllersForButtons_buttonFont_isCompact_sourceView_rowModel_delegate_completionHandler__activeFactories removeObject:WeakRetained];
    (*(*(a1 + 64) + 16))();
  }
}

+ (unint64_t)searchUIButtonItemViewStyleFromVRXButtonStyle:(int)style
{
  if ((style - 2) > 3)
  {
    return 1;
  }

  else
  {
    return qword_1DA272E90[style - 2];
  }
}

+ (void)performSFCommand:(id)command rowModel:(id)model delegate:(id)delegate
{
  if (command)
  {
    delegateCopy = delegate;
    modelCopy = model;
    commandCopy = command;
    v12 = objc_opt_new();
    [v12 setCommand:commandCopy];

    v10 = [SearchUIUtilities environmentForDelegate:delegateCopy];

    v11 = [SearchUICommandHandler handlerForButton:v12 rowModel:modelCopy environment:v10];

    [v11 executeWithTriggerEvent:2];
  }
}

+ (void)emitInstrumentationEvent:(id)event delegate:(id)delegate
{
  eventCopy = event;
  delegateCopy = delegate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    feedbackListener = [delegateCopy feedbackListener];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__SnippetUIUtilities_emitInstrumentationEvent_delegate___block_invoke;
    v9[3] = &unk_1E85B2540;
    v10 = feedbackListener;
    v11 = eventCopy;
    v8 = feedbackListener;
    [SearchUIUtilities dispatchAsyncIfNecessary:v9];
  }
}

uint64_t __56__SnippetUIUtilities_emitInstrumentationEvent_delegate___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 emitInstrumentationEvent:v4];
  }

  return result;
}

+ (id)presentingViewController:(id)controller delegate:(id)delegate
{
  controllerCopy = controller;
  v6 = [SearchUIUtilities environmentForDelegate:delegate];
  presentingViewController = [v6 presentingViewController];
  if (!presentingViewController)
  {
    sourceView = [v6 sourceView];
    window = [sourceView window];
    presentingViewController = [window rootViewController];

    if (controllerCopy)
    {
      if (!presentingViewController)
      {
        window2 = [controllerCopy window];
        presentingViewController = [window2 rootViewController];
      }
    }
  }

  return presentingViewController;
}

+ (void)reportFeedback:(id)feedback queryId:(unint64_t)id delegate:(id)delegate
{
  feedbackCopy = feedback;
  delegateCopy = delegate;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__SnippetUIUtilities_reportFeedback_queryId_delegate___block_invoke;
  v11[3] = &unk_1E85B2900;
  v12 = delegateCopy;
  v13 = feedbackCopy;
  idCopy = id;
  v9 = feedbackCopy;
  v10 = delegateCopy;
  [SearchUIUtilities dispatchAsyncIfNecessary:v11];
}

void __54__SnippetUIUtilities_reportFeedback_queryId_delegate___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 40);
    [v3 setQueryId:v2];
    [*(a1 + 32) reportFeedback:*(a1 + 40) queryId:*(a1 + 48)];
  }
}

@end