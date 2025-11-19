@interface SearchUICommandHandler
+ (BOOL)hasCustomViewControllerForRowModel:(id)a3 environment:(id)a4;
+ (BOOL)hasValidCommandForResult:(id)a3 feedbackListener:(id)a4;
+ (BOOL)hasValidHandlerForCommand:(id)a3 rowModel:(id)a4 environment:(id)a5;
+ (BOOL)hasValidHandlerForRowModel:(id)a3 environment:(id)a4;
+ (BOOL)isDestructiveButtonItem:(id)a3;
+ (id)handlerForButton:(id)a3 rowModel:(id)a4 sectionModel:(id)a5 environment:(id)a6;
+ (id)handlerForCommand:(id)a3 rowModel:(id)a4 button:(id)a5 sectionModel:(id)a6 environment:(id)a7;
+ (id)handlerForRowModel:(id)a3 environment:(id)a4;
+ (id)lastCopyCommandForRowModel:(id)a3;
+ (id)previewHandlerForRowModel:(id)a3 environment:(id)a4;
+ (id)revealHandlerForRowModel:(id)a3 environment:(id)a4;
+ (id)swipeActionsForRowModel:(id)a3 isLeading:(BOOL)a4 environment:(id)a5;
+ (id)tapCommandForRowModel:(id)a3 environment:(id)a4;
- (BOOL)shouldDeselectAfterExecution;
- (NSItemProvider)itemProvider;
- (NSString)defaultTitle;
- (NSString)destinationApplicationBundleIdentifier;
- (SFImage)destinationApplicationIconImage;
- (SearchUICommandHandler)initWithCommand:(id)a3 rowModel:(id)a4 button:(id)a5 sectionModel:(id)a6 environment:(id)a7;
- (UIViewController)viewController;
- (id)actionProvider;
- (id)menuForRowModel:(id)a3 buttonItem:(id)a4 commandEnvironment:(id)a5 doesFallbackToCardSectionButtonItems:(BOOL)a6;
- (id)presentingViewControllerForEnvironment:(id)a3;
- (id)sendFeedbackWithTriggerEvent:(unint64_t)a3 destination:(unint64_t)a4 punchout:(id)a5;
- (void)didPreview;
- (void)executeWithTriggerEvent:(unint64_t)a3;
- (void)fetchPreviewItemIfNeeded:(id)a3;
- (void)notifyDelegateDidPerformCommandIfNecessary;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
- (void)presentViewController:(id)a3 animated:(BOOL)a4;
- (void)requestAuthIfNecessaryAndPresentViewController:(id)a3 animated:(BOOL)a4;
- (void)showViewController:(id)a3;
@end

@implementation SearchUICommandHandler

+ (BOOL)hasValidHandlerForRowModel:(id)a3 environment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 tapCommandForRowModel:v7 environment:v6];
  LOBYTE(a1) = [a1 hasValidHandlerForCommand:v8 rowModel:v7 environment:v6];

  return a1;
}

+ (BOOL)hasValidHandlerForCommand:(id)a3 rowModel:(id)a4 environment:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 _searchUICommandHandlerClass];
  if (!v10 || v10 == objc_opt_class())
  {
    v12 = [v9 commandDelegate];
    if ([v12 canPerformCommand:v7])
    {
      v11 = 1;
    }

    else
    {
      v13 = [v8 cardSection];
      v14 = [v13 commands];
      v11 = v14 != 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (BOOL)hasCustomViewControllerForRowModel:(id)a3 environment:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 commandDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 commandDelegate];
    v9 = [v5 identifyingResult];
    v10 = [v8 hasCustomViewControllerForResult:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)hasValidCommandForResult:(id)a3 feedbackListener:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setFeedbackDelegate:v6];
  v8 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 buildRowModelsFromResult:{v5, 0}];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if ([SearchUICommandHandler hasValidHandlerForRowModel:*(*(&v14 + 1) + 8 * i) environment:v7])
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

+ (id)tapCommandForRowModel:(id)a3 environment:(id)a4
{
  v21[18] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 cardSection];
  v8 = [v7 command];

  if (!v8)
  {
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v21[3] = objc_opt_class();
    v21[4] = objc_opt_class();
    v21[5] = objc_opt_class();
    v21[6] = objc_opt_class();
    v21[7] = objc_opt_class();
    v21[8] = objc_opt_class();
    v21[9] = objc_opt_class();
    v21[10] = objc_opt_class();
    v21[11] = objc_opt_class();
    v21[12] = objc_opt_class();
    v21[13] = objc_opt_class();
    v21[14] = objc_opt_class();
    v21[15] = objc_opt_class();
    v21[16] = objc_opt_class();
    v21[17] = objc_opt_class();
    [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:18];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v19 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v16 + 1) + 8 * i) fallbackCommandForRowModel:v5 environment:{v6, v16}];
          if (v14)
          {
            v8 = v14;
            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_12:
  }

  return v8;
}

+ (id)handlerForRowModel:(id)a3 environment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 tapCommandForRowModel:v7 environment:v6];
  v9 = [a1 handlerForCommand:v8 rowModel:v7 button:0 environment:v6];

  return v9;
}

+ (id)previewHandlerForRowModel:(id)a3 environment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 cardSection];
  v9 = [v8 previewCommand];

  if (!v9)
  {
    v9 = [a1 tapCommandForRowModel:v6 environment:v7];
  }

  v10 = [a1 handlerForCommand:v9 rowModel:v6 button:0 environment:v7];

  return v10;
}

- (void)fetchPreviewItemIfNeeded:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 1);
  }
}

+ (id)revealHandlerForRowModel:(id)a3 environment:(id)a4
{
  v28 = a1;
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v29 = a4;
  v30 = v5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = [v5 cardSection];
  v7 = [v6 previewButtonItems];

  v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    v11 = 0x1E69C9000uLL;
    v12 = 0x1E69CA000uLL;
LABEL_3:
    v13 = 0;
    v31 = v9;
    while (1)
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v32 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 command];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v15 punchout];
          v16 = v10;
          v17 = v11;
          v18 = v7;
          v20 = v19 = v12;
          v21 = [v20 preferredOpenableURL];
          v22 = [v21 isFileURL];

          v12 = v19;
          v7 = v18;
          v11 = v17;
          v10 = v16;
          v9 = v31;
          if (v22)
          {

            v24 = v29;
            v23 = v30;
            v25 = v28;
            if (v15)
            {
              goto LABEL_15;
            }

            goto LABEL_14;
          }
        }
      }

      if (v9 == ++v13)
      {
        v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v24 = v29;
  v23 = v30;
  v25 = v28;
LABEL_14:
  v15 = [v25 tapCommandForRowModel:v23 environment:{v24, v28}];
LABEL_15:
  v26 = [v25 handlerForCommand:v15 rowModel:v23 button:0 environment:{v24, v28}];

  return v26;
}

+ (id)handlerForButton:(id)a3 rowModel:(id)a4 sectionModel:(id)a5 environment:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v10 command];
    v15 = [v10 previewButtonItems];
    v16 = [v15 count] != 0;

    if (v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = objc_opt_new();
    }

    else
    {
      v14 = 0;
    }

    v16 = 0;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  if (!v16)
  {
    v17 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v17 = [a1 handlerForCommand:v14 rowModel:v11 button:v10 sectionModel:v12 environment:v13];
LABEL_11:

  return v17;
}

+ (id)handlerForCommand:(id)a3 rowModel:(id)a4 button:(id)a5 sectionModel:(id)a6 environment:(id)a7
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [v11 _searchUICommandHandlerClass];
  if (!v16)
  {
    v16 = objc_opt_class();
  }

  v17 = SearchUITapLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = v11;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&dword_1DA169000, v17, OS_LOG_TYPE_DEFAULT, "Command handler for %@ resolved to: %@", &v20, 0x16u);
  }

  v18 = [[v16 alloc] initWithCommand:v11 rowModel:v15 button:v14 sectionModel:v13 environment:v12];

  return v18;
}

+ (BOOL)isDestructiveButtonItem:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if ([v6 isDestructive])
  {
    isKindOfClass = 1;
  }

  else
  {
    v8 = [v6 command];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v6 previewButtonItems];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v12 += [a1 isDestructiveButtonItem:*(*(&v19 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v15 = [v6 previewButtonItems];
  if ([v15 count])
  {
    v16 = [v6 previewButtonItems];
    v17 = v12 == [v16 count];
  }

  else
  {
    v17 = 0;
  }

  return (isKindOfClass | v17) & 1;
}

- (SearchUICommandHandler)initWithCommand:(id)a3 rowModel:(id)a4 button:(id)a5 sectionModel:(id)a6 environment:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = SearchUICommandHandler;
  v17 = [(SearchUICommandHandler *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_command, a3);
    objc_storeStrong(&v18->_rowModel, a4);
    objc_storeStrong(&v18->_buttonItem, a5);
    objc_storeStrong(&v18->_sectionModel, a6);
    v19 = [v16 copy];
    environment = v18->_environment;
    v18->_environment = v19;
  }

  return v18;
}

- (void)executeWithTriggerEvent:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = SearchUITapLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = self;
    _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "Performing command handler: %@", &v13, 0xCu);
  }

  v6 = [(SearchUICommandHandler *)self environment];
  v7 = [(SearchUICommandHandler *)self command];
  v8 = [v6 commandDelegate];
  v9 = [(SearchUICommandHandler *)self destination];
  v10 = [(SearchUICommandHandler *)self destinationPunchout];
  v11 = [(SearchUICommandHandler *)self sendFeedbackWithTriggerEvent:a3 destination:v9 punchout:v10];

  if ([v8 canPerformCommand:v7])
  {
    [v8 performCommand:v7];
  }

  else
  {
    v12 = [v6 feedbackDelegate];
    if (!v11 || (objc_opt_respondsToSelector() & 1) == 0 || [v12 shouldHandleCardSectionEngagement:v11])
    {
      [(SearchUICommandHandler *)self performCommand:v7 triggerEvent:a3 environment:v6];
    }
  }

  if ([(SearchUICommandHandler *)self doesRunSynchronously])
  {
    [(SearchUICommandHandler *)self notifyDelegateDidPerformCommandIfNecessary];
  }
}

- (void)notifyDelegateDidPerformCommandIfNecessary
{
  v3 = [(SearchUICommandHandler *)self environment];
  v5 = [v3 commandDelegate];

  if (objc_opt_respondsToSelector())
  {
    v4 = [(SearchUICommandHandler *)self command];
    [v5 didFinishPerformingCommand:v4];
  }
}

- (id)sendFeedbackWithTriggerEvent:(unint64_t)a3 destination:(unint64_t)a4 punchout:(id)a5
{
  v7 = a5;
  v8 = [(SearchUICommandHandler *)self environment];
  v9 = [v8 feedbackDelegate];
  v10 = [(SearchUICommandHandler *)self rowModel];
  v11 = [v10 identifyingResult];
  v12 = [v10 cardSection];
  v13 = [(SearchUICommandHandler *)self command];
  v14 = [v10 queryId];
  if (!v14)
  {
    v14 = [v8 queryId];
  }

  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = [objc_alloc(MEMORY[0x1E69CA368]) initWithResult:v11 triggerEvent:a3 destination:a4];
    [v9 didEngageResult:v15];
  }

  if (!v12)
  {
    v16 = 0;
    if (!v13)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v16 = [objc_alloc(MEMORY[0x1E69C9F10]) initWithCardSection:v12 destination:v7 triggerEvent:a3 actionCardType:1];
  [v16 setQueryId:v14];
  if (objc_opt_respondsToSelector())
  {
    [v9 didEngageCardSection:v16];
  }

  if (v13)
  {
LABEL_12:
    if (objc_opt_respondsToSelector())
    {
      v21 = v7;
      v17 = [objc_alloc(MEMORY[0x1E69C9F98]) initWithCommand:v13 cardSection:v12];
      [v17 setQueryId:v14];
      [v17 setResult:v11];
      [v17 setTriggerEvent:a3];
      v18 = [(SearchUICommandHandler *)self buttonItem];
      [v17 setButton:v18];

      v19 = [v8 section];
      [v17 setResultSection:v19];

      [v9 didPerformCommand:v17];
      v7 = v21;
    }
  }

LABEL_14:

  return v16;
}

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v31 = a5;
  v7 = [(SearchUICommandHandler *)self viewController];
  if (v7)
  {
    v8 = v7;
    [(SearchUICommandHandler *)self prepareViewController:v7 forTriggerEvent:a4];
    v9 = [v31 feedbackDelegate];
    v10 = [v31 cardViewDelegate];
    if ([(SearchUICommandHandler *)self prefersModalPresentation])
    {
      v11 = 0;
    }

    else
    {
      v12 = [v31 presentingViewController];
      v13 = [v12 navigationController];

      v14 = [(SearchUINavigationController *)v13 topViewController];
      v15 = [v14 navigationItem];
      v16 = [v15 rightBarButtonItem];
      v17 = [(SearchUINavigationController *)v8 navigationItem];
      [v17 setRightBarButtonItem:v16];

      if (v13)
      {
        v11 = 0;
      }

      else
      {
        v18 = [[SearchUINavigationController alloc] initWithRootViewController:v8];
        [(SearchUINavigationController *)v18 setFeedbackDelegate:v9];
        v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v18 action:sel_close];
        v20 = [(SearchUINavigationController *)v8 navigationItem];
        [v20 setRightBarButtonItem:v19];

        v21 = [(SearchUINavigationController *)v8 view];
        [v21 setAccessibilityIdentifier:@"SearchUIResultSheet"];

        v13 = v18;
        v11 = v13;
      }

      v22 = [v31 presentingViewController];
      v23 = [v22 view];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = [v31 sourceView];
      }

      v26 = v25;

      v27 = [MEMORY[0x1E69D9108] bestAppearanceForView:v26];
      -[SearchUINavigationController _setBuiltinTransitionStyle:](v13, "_setBuiltinTransitionStyle:", [v27 isVibrant]);
    }

    if (objc_opt_respondsToSelector())
    {
      v28 = v9;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        if (v11)
        {
          v29 = v11;
        }

        else
        {
          v29 = v8;
        }

        v30 = v29;

        [(SearchUICommandHandler *)self requestAuthIfNecessaryAndPresentViewController:v30 animated:1];
        v8 = v30;
        goto LABEL_20;
      }

      v28 = v10;
    }

    [v28 presentViewController:v8];
LABEL_20:
  }
}

- (UIViewController)viewController
{
  v20 = *MEMORY[0x1E69E9840];
  viewController = self->_viewController;
  if (!viewController)
  {
    v4 = [(SearchUICommandHandler *)self environment];
    v5 = [v4 commandDelegate];

    v6 = [(SearchUICommandHandler *)self command];
    v7 = [(SearchUICommandHandler *)self environment];
    v8 = [(SearchUICommandHandler *)self createViewControllerForCommand:v6 environment:v7];
    v9 = self->_viewController;
    self->_viewController = v8;

    if (self->_viewController)
    {
      v10 = SearchUITapLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_viewController;
        v16 = 138412546;
        v17 = v11;
        v18 = 2112;
        v19 = self;
        _os_log_impl(&dword_1DA169000, v10, OS_LOG_TYPE_DEFAULT, "View controller (%@) created for command handler: %@", &v16, 0x16u);
      }
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_8:

        viewController = self->_viewController;
        goto LABEL_9;
      }

      v10 = [(SearchUICommandHandler *)self rowModel];
      v12 = [v10 identifyingResult];
      v13 = [v5 customViewControllerForResult:v12];
      v14 = self->_viewController;
      self->_viewController = v13;
    }

    goto LABEL_8;
  }

LABEL_9:

  return viewController;
}

- (NSItemProvider)itemProvider
{
  v3 = objc_opt_class();
  v4 = [(SearchUICommandHandler *)self rowModel];
  v5 = [v3 lastCopyCommandForRowModel:v4];
  v6 = [v5 copyableItem];
  v7 = [SearchUIItemProviderUtilities itemProviderForItem:v6];

  return v7;
}

- (BOOL)shouldDeselectAfterExecution
{
  if ([(SearchUICommandHandler *)self prefersModalPresentation])
  {
    isKindOfClass = 1;
  }

  else
  {
    v4 = [(SearchUICommandHandler *)self command];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)lastCopyCommandForRowModel:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = a3;
  v3 = [v15 cardSection];
  v4 = [v3 previewButtonItems];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 command];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v13 = [v10 command];

            v7 = v13;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)menuForRowModel:(id)a3 buttonItem:(id)a4 commandEnvironment:(id)a5 doesFallbackToCardSectionButtonItems:(BOOL)a6
{
  v6 = a6;
  v171 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v141 = a5;
  v142 = v10;
  v12 = [v10 cardSection];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
LABEL_5:
    if (v6)
    {
      v13 = [v12 previewButtonItems];
    }

    goto LABEL_7;
  }

  v13 = [v11 previewButtonItems];
  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_7:
  v147 = objc_opt_new();
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v163 objects:v170 count:16];
  v125 = v11;
  v127 = v12;
  v136 = self;
  obj = v14;
  if (!v15)
  {
    LOBYTE(v139) = 0;
    LOBYTE(v17) = 0;
    goto LABEL_29;
  }

  v16 = v15;
  v139 = 0;
  v17 = 0;
  v18 = *v164;
  v128 = *v164;
  do
  {
    v19 = 0;
    v129 = v16;
    do
    {
      if (*v164 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v163 + 1) + 8 * v19);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
        v22 = v20;
        v23 = v19;
        v24 = v21;
        v25 = [v21 command];
        objc_opt_class();
        v17 |= objc_opt_isKindOfClass();

        v26 = [v24 command];
        objc_opt_class();
        v139 |= objc_opt_isKindOfClass();

        v27 = v24;
        v19 = v23;
        v20 = v22;
        [v147 addObject:v27];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_25;
        }

        v137 = v19;
        v28 = v20;
        v29 = [v28 applicationBundleIdentifier];
        v145 = [v28 coreSpotlightIdentifier];
        v30 = v29;
        v31 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v29 allowPlaceholder:1 error:0];
        v32 = MEMORY[0x1E696AAE8];
        v33 = [v31 URL];
        v34 = [v32 bundleWithURL:v33];

        v161 = 0u;
        v162 = 0u;
        v159 = 0u;
        v160 = 0u;
        v143 = [v31 spotlightActions];
        v35 = [v143 countByEnumeratingWithState:&v159 objects:v169 count:16];
        if (v35)
        {
          v36 = v35;
          v130 = v31;
          v131 = v20;
          v134 = v17;
          v37 = 0;
          v38 = *v160;
          do
          {
            v39 = 0;
            v40 = v37;
            do
            {
              if (*v160 != v38)
              {
                objc_enumerationMutation(v143);
              }

              v41 = *(*(&v159 + 1) + 8 * v39);
              v42 = objc_opt_new();
              [v42 setApplicationBundleIdentifier:v30];
              [v42 setCoreSpotlightIdentifier:v145];
              v43 = [v41 identifier];
              [v42 setActionIdentifier:v43];

              v44 = objc_opt_new();
              v45 = [v41 symbolImageName];
              [v44 setSymbolName:v45];

              [v44 setIsTemplate:1];
              v37 = objc_opt_new();

              v46 = [v41 unlocalizedTitle];
              v47 = [v34 localizedStringForKey:v46 value:0 table:@"InfoPlist"];
              [v37 setTitle:v47];

              [v37 setImage:v44];
              [v37 setCommand:v42];
              [v147 addObject:v37];

              ++v39;
              v40 = v37;
            }

            while (v36 != v39);
            v36 = [v143 countByEnumeratingWithState:&v159 objects:v169 count:16];
          }

          while (v36);

          v17 = v134;
          v18 = v128;
          v16 = v129;
          v31 = v130;
          v20 = v131;
        }

        v19 = v137;
      }

LABEL_25:
      ++v19;
    }

    while (v19 != v16);
    v16 = [obj countByEnumeratingWithState:&v163 objects:v170 count:16];
  }

  while (v16);
LABEL_29:

  v48 = objc_opt_new();
  v135 = objc_opt_new();
  v49 = v17;
  if ([MEMORY[0x1E69D9240] isSafari])
  {
    v50 = [MEMORY[0x1E69D9240] isMacOS];
  }

  else
  {
    v50 = 0;
  }

  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v132 = v147;
  v51 = [v132 countByEnumeratingWithState:&v155 objects:v168 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v156;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v156 != v53)
        {
          objc_enumerationMutation(v132);
        }

        v55 = *(*(&v155 + 1) + 8 * i);
        v56 = [SearchUICommandHandler handlerForButton:v55 rowModel:v142 sectionModel:0 environment:v141, v125];
        if (v56)
        {
          if ([objc_opt_class() isDestructiveButtonItem:v55])
          {
            v57 = v135;
          }

          else
          {
            v57 = v48;
          }

          [v57 addObject:v56];
        }
      }

      v52 = [v132 countByEnumeratingWithState:&v155 objects:v168 count:16];
    }

    while (v52);
  }

  v58 = [(SearchUICommandHandler *)v136 additionalPreviewActionCommandHandlers];
  [v48 addObjectsFromArray:v58];

  if ((v49 & 1) == 0 && [(SearchUICommandHandler *)v136 supportsCopy])
  {
    v59 = objc_opt_new();
    v60 = objc_opt_new();
    [v59 setCommand:v60];
    v61 = [(SearchUICommandHandler *)[SearchUICopyItemHandler alloc] initWithCommand:v60 rowModel:v142 button:v59 environment:v141];
    [(SearchUICopyItemHandler *)v61 setHandlerForCopying:v136];
    [v48 addObject:v61];
  }

  if ((v139 & 1) == 0 && !(v50 & 1 | ![(SearchUICommandHandler *)v136 supportsShare]))
  {
    v62 = objc_opt_new();
    v63 = objc_opt_new();
    [v62 setCommand:v63];
    v64 = [(SearchUICommandHandler *)[SearchUIShareItemHandler alloc] initWithCommand:v63 rowModel:v142 button:v62 environment:v141];
    [(SearchUIShareItemHandler *)v64 setHandlerForSharing:v136];
    [v48 addObject:v64];
  }

  [v48 addObjectsFromArray:{v135, v125}];
  v65 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v65 scale];
  v67 = v66;

  v68 = [MEMORY[0x1E69D9108] bestAppearanceForSystem];
  v146 = [v68 isDark];

  v138 = objc_opt_new();
  if (([v142 supportsCustomUserReportRequestAfforance] & 1) == 0)
  {
    v69 = [v127 userReportRequest];

    if (v69)
    {
      v70 = [SearchUIRequestUserReportHandler alloc];
      v71 = objc_opt_new();
      v72 = [(SearchUICommandHandler *)v136 sectionModel];
      v73 = [(SearchUICommandHandler *)v136 environment];
      v74 = [(SearchUICommandHandler *)v70 initWithCommand:v71 rowModel:v142 button:0 sectionModel:v72 environment:v73];

      v75 = [SearchUISymbolImage alloc];
      v76 = [(SearchUIRequestUserReportHandler *)v74 defaultSymbolName];
      v77 = [(SearchUISymbolImage *)v75 initWithSymbolName:v76];

      v78 = [(SearchUISymbolImage *)v77 loadImageWithScale:v146 isDarkStyle:v67];
      v79 = [v127 userReportRequest];
      v80 = [v79 affordanceText];

      v81 = [(SearchUIRequestUserReportHandler *)v74 contextMenu];
      v82 = MEMORY[0x1E69DCC60];
      v83 = [v81 children];
      v84 = [v83 copy];
      v85 = [v82 menuWithTitle:v80 image:v78 identifier:0 options:0 children:v84];

      [v138 addObject:v85];
    }
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v140 = v48;
  v148 = [v140 countByEnumeratingWithState:&v151 objects:v167 count:16];
  if (v148)
  {
    v144 = *v152;
    do
    {
      for (j = 0; j != v148; ++j)
      {
        if (*v152 != v144)
        {
          objc_enumerationMutation(v140);
        }

        v87 = *(*(&v151 + 1) + 8 * j);
        v88 = [v87 buttonItem];
        v89 = [v88 title];
        v90 = v89;
        if (v89)
        {
          v91 = v89;
        }

        else
        {
          v91 = [v87 defaultTitle];
        }

        v92 = v91;

        v93 = [v88 image];
        if (v93)
        {
          v94 = [v88 image];
          v95 = [SearchUIImage imageWithSFImage:v94];
        }

        else
        {
          v94 = [v87 defaultSymbolName];
          if ([v94 length])
          {
            v96 = [SearchUISymbolImage alloc];
            v97 = [v87 defaultSymbolName];
            v95 = [(SearchUISymbolImage *)v96 initWithSymbolName:v97];
          }

          else
          {
            v95 = 0;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v98 = [v88 useDefaultSymbolFillStyle];
        }

        else
        {
          v98 = 0;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && v98)
        {
          [(SearchUISymbolImage *)v95 setPreferredFill:0];
        }

        v99 = [(SearchUISymbolImage *)v95 loadImageWithScale:v146 isDarkStyle:v67];
        v100 = [v87 command];
        if (v100 && (v101 = v100, [v87 command], v102 = objc_claimAutoreleasedReturnValue(), v103 = objc_msgSend(v102, "isMemberOfClass:", objc_opt_class()), v102, v101, !v103))
        {
          v109 = MEMORY[0x1E69DC628];
          v149[0] = MEMORY[0x1E69E9820];
          v149[1] = 3221225472;
          v149[2] = __109__SearchUICommandHandler_menuForRowModel_buttonItem_commandEnvironment_doesFallbackToCardSectionButtonItems___block_invoke;
          v149[3] = &unk_1E85B3850;
          v149[4] = v87;
          v110 = v88;
          v150 = v110;
          v111 = [v109 actionWithTitle:v92 image:v99 identifier:0 handler:v149];
          if ([v110 isDestructive])
          {
            [v111 setAttributes:{objc_msgSend(v111, "attributes") | 2}];
          }

          [v138 addObject:v111];
        }

        else
        {
          v104 = [v87 rowModel];
          v105 = [v87 buttonItem];
          v106 = [v87 environment];
          v107 = [v87 menuForRowModel:v104 buttonItem:v105 commandEnvironment:v106];

          if (v107)
          {
            if ([v140 count] == 1)
            {
              v108 = 1;
            }

            else
            {
              v112 = [v107 children];
              v108 = [v112 count] == 1;
            }

            if ([v88 isDestructive])
            {
              v113 = v108 | 2;
            }

            else
            {
              v113 = v108;
            }

            v114 = MEMORY[0x1E69DCC60];
            v115 = [v107 children];
            v116 = [v115 copy];
            v117 = [v114 menuWithTitle:v92 image:v99 identifier:0 options:v113 children:v116];

            [v138 addObject:v117];
          }
        }
      }

      v148 = [v140 countByEnumeratingWithState:&v151 objects:v167 count:16];
    }

    while (v148);
  }

  v118 = [(SearchUICommandHandler *)v136 additionalActionMenuItems];
  [v138 addObjectsFromArray:v118];

  if ([v138 count])
  {
    v119 = MEMORY[0x1E69DCC60];
    v120 = v127;
    v121 = [v127 previewButtonItemsTitle];
    v122 = [v119 menuWithTitle:v121 image:0 identifier:0 options:1 children:v138];

    v123 = v126;
  }

  else
  {
    v122 = 0;
    v123 = v126;
    v120 = v127;
  }

  return v122;
}

uint64_t __109__SearchUICommandHandler_menuForRowModel_buttonItem_commandEnvironment_doesFallbackToCardSectionButtonItems___block_invoke(uint64_t a1)
{
  [*(a1 + 32) executeWithTriggerEvent:2];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 buttonPressed];
  }

  return result;
}

+ (id)swipeActionsForRowModel:(id)a3 isLeading:(BOOL)a4 environment:(id)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v58 = a5;
  v59 = v7;
  v8 = [v7 cardSection];
  v9 = objc_opt_new();
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v55 = a4;
  if (a4)
  {
    [v8 leadingSwipeButtonItems];
  }

  else
  {
    [v8 trailingSwipeButtonItems];
  }
  v10 = ;
  v11 = [v10 countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v71;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v71 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v70 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [SearchUICommandHandler handlerForButton:v15 rowModel:v7 sectionModel:0 environment:v58];
          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v70 objects:v75 count:16];
    }

    while (v12);
  }

  v56 = objc_opt_new();
  v17 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v17 scale];
  v19 = v18;

  v20 = [MEMORY[0x1E69D9108] bestAppearanceForSystem];
  v53 = [v20 isDark];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v9;
  v21 = v58;
  v57 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v57)
  {
    v54 = *v67;
    do
    {
      for (j = 0; j != v57; ++j)
      {
        if (*v67 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v66 + 1) + 8 * j);
        v24 = [v23 buttonItem];
        v25 = [v24 title];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = [v23 defaultTitle];
        }

        v28 = v27;

        v29 = [v21 feedbackDelegate];
        v30 = objc_opt_respondsToSelector();

        if (v30)
        {
          v31 = [v21 feedbackDelegate];
        }

        else
        {
          v31 = 0;
        }

        if ([v24 isDestructive])
        {
          v32 = [v24 previewButtonItems];
          v33 = [v32 count] == 0;
        }

        else
        {
          v33 = 0;
        }

        v34 = MEMORY[0x1E69DC8E8];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __72__SearchUICommandHandler_swipeActionsForRowModel_isLeading_environment___block_invoke;
        v60[3] = &unk_1E85B38A0;
        v35 = v24;
        v61 = v35;
        v65 = v55;
        v36 = v31;
        v62 = v36;
        v37 = v59;
        v63 = v37;
        v64 = v23;
        v38 = [v34 contextualActionWithStyle:v33 title:v28 handler:v60];
        if ([v35 isDestructive])
        {
          v39 = [v35 previewButtonItems];

          if (v39)
          {
            v40 = [MEMORY[0x1E69DC888] systemRedColor];
            [v38 setBackgroundColor:v40];
          }
        }

        v41 = [v35 image];

        if (v41)
        {
          v42 = [v35 image];
          if (v42)
          {
            v43 = [v35 image];
            v44 = [SearchUIImage imageWithSFImage:v43];
          }

          else
          {
            v45 = [SearchUISymbolImage alloc];
            v43 = [v23 defaultSymbolName];
            v44 = [(SearchUISymbolImage *)v45 initWithSymbolName:v43];
          }

          v46 = v44;

          v47 = [v46 loadImageWithScale:v53 isDarkStyle:v19];
          [v38 setImage:v47];

          v21 = v58;
        }

        v48 = [v23 menuForRowModel:v37 buttonItem:v35 commandEnvironment:v21 doesFallbackToCardSectionButtonItems:0];
        [v38 _setMenu:v48];

        [v56 addObject:v38];
      }

      v57 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v57);
  }

  v49 = [MEMORY[0x1E69DCFC0] configurationWithActions:v56];

  return v49;
}

void __72__SearchUICommandHandler_swipeActionsForRowModel_isLeading_environment___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [*(a1 + 32) previewButtonItems];
  v7 = [v6 count];

  if (!v7)
  {
    if (*(a1 + 64))
    {
      v8 = 16;
    }

    else
    {
      v8 = 15;
    }

    if ([*(a1 + 32) isDestructive] && (v9 = *(a1 + 40)) != 0)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __72__SearchUICommandHandler_swipeActionsForRowModel_isLeading_environment___block_invoke_2;
      v11[3] = &unk_1E85B3878;
      v10 = *(a1 + 48);
      v11[4] = *(a1 + 56);
      v13 = v8;
      v12 = v5;
      [v9 removeRowModel:v10 completion:v11];
    }

    else
    {
      [*(a1 + 56) executeWithTriggerEvent:v8];
      (*(v5 + 2))(v5, 1);
    }
  }
}

uint64_t __72__SearchUICommandHandler_swipeActionsForRowModel_isLeading_environment___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) executeWithTriggerEvent:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)requestAuthIfNecessaryAndPresentViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([SearchUIUtilities canShowViewController:v6])
  {
    [(SearchUICommandHandler *)self presentViewController:v6 animated:v4];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82__SearchUICommandHandler_requestAuthIfNecessaryAndPresentViewController_animated___block_invoke;
    v7[3] = &unk_1E85B24F0;
    v7[4] = self;
    v8 = v6;
    v9 = v4;
    [SearchUIUtilities requestDeviceUnlockWithSuccessHandler:v7];
  }
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(SearchUICommandHandler *)self prefersModalPresentation])
  {
    v7 = [(SearchUICommandHandler *)self environment];
    v8 = [v6 popoverPresentationController];
    if (v8)
    {
      v9 = [v7 sourceView];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v13 = [v7 presentingViewController];
        v11 = [v13 view];
      }

      [v8 setSourceView:v11];
      [v11 bounds];
      [v8 setSourceRect:?];
    }

    v14 = [(SearchUICommandHandler *)self presentingViewControllerForEnvironment:v7];
    [v14 presentViewController:v6 animated:v4 completion:0];
  }

  else if (v4)
  {
    [(SearchUICommandHandler *)self showViewController:v6];
  }

  else
  {
    v12 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__SearchUICommandHandler_presentViewController_animated___block_invoke;
    v15[3] = &unk_1E85B2540;
    v15[4] = self;
    v16 = v6;
    [v12 performWithoutAnimation:v15];
  }
}

- (void)showViewController:(id)a3
{
  v4 = a3;
  v6 = [(SearchUICommandHandler *)self environment];
  v5 = [(SearchUICommandHandler *)self presentingViewControllerForEnvironment:v6];
  [v5 showViewController:v4 sender:0];
}

- (id)presentingViewControllerForEnvironment:(id)a3
{
  v3 = a3;
  v4 = [v3 presentingViewController];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v3 sourceView];
    v8 = [v7 window];
    v6 = [v8 rootViewController];
  }

  return v6;
}

- (id)actionProvider
{
  v3 = [(SearchUICommandHandler *)self rowModel];
  v4 = [(SearchUICommandHandler *)self buttonItem];
  v5 = [(SearchUICommandHandler *)self environment];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__SearchUICommandHandler_actionProvider__block_invoke;
  v11[3] = &unk_1E85B38C8;
  v11[4] = self;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = _Block_copy(v11);

  return v9;
}

- (void)didPreview
{
  v3 = [(SearchUICommandHandler *)self viewController];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  v5 = [(SearchUICommandHandler *)self sendFeedbackWithTriggerEvent:5 destination:v4 punchout:0];
}

- (SFImage)destinationApplicationIconImage
{
  v3 = [(SearchUICommandHandler *)self destinationPunchout];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [(SearchUICommandHandler *)self destinationPunchout];
    [v4 setPunchout:v5];
  }

  else
  {
    v4 = [(SearchUICommandHandler *)self destinationApplicationBundleIdentifier];

    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = [(SearchUICommandHandler *)self destinationApplicationBundleIdentifier];
    v4 = [SearchUIAppIconImage appIconImageForBundleIdentifier:v5];
  }

LABEL_6:

  return v4;
}

- (NSString)destinationApplicationBundleIdentifier
{
  v3 = [(SearchUICommandHandler *)self command];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(SearchUICommandHandler *)self command];
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = [v5 applicationBundleIdentifier];
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      v7 = @"com.apple.siri";
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)defaultTitle
{
  v2 = [(SearchUICommandHandler *)self command];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v4 = objc_opt_isKindOfClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  v5 = @"OPEN";
  if (isKindOfClass)
  {
    v5 = @"SHOW_MORE";
  }

  v6 = (v4 & 1) != 0 ? @"SEARCH" : v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_8:
    v6 = @"RUN";
  }

  v7 = [SearchUIUtilities localizedStringForKey:v6];

  return v7;
}

@end