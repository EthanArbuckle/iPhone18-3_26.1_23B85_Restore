@interface SearchUICommandHandler
+ (BOOL)hasCustomViewControllerForRowModel:(id)model environment:(id)environment;
+ (BOOL)hasValidCommandForResult:(id)result feedbackListener:(id)listener;
+ (BOOL)hasValidHandlerForCommand:(id)command rowModel:(id)model environment:(id)environment;
+ (BOOL)hasValidHandlerForRowModel:(id)model environment:(id)environment;
+ (BOOL)isDestructiveButtonItem:(id)item;
+ (id)handlerForButton:(id)button rowModel:(id)model sectionModel:(id)sectionModel environment:(id)environment;
+ (id)handlerForCommand:(id)command rowModel:(id)model button:(id)button sectionModel:(id)sectionModel environment:(id)environment;
+ (id)handlerForRowModel:(id)model environment:(id)environment;
+ (id)lastCopyCommandForRowModel:(id)model;
+ (id)previewHandlerForRowModel:(id)model environment:(id)environment;
+ (id)revealHandlerForRowModel:(id)model environment:(id)environment;
+ (id)swipeActionsForRowModel:(id)model isLeading:(BOOL)leading environment:(id)environment;
+ (id)tapCommandForRowModel:(id)model environment:(id)environment;
- (BOOL)shouldDeselectAfterExecution;
- (NSItemProvider)itemProvider;
- (NSString)defaultTitle;
- (NSString)destinationApplicationBundleIdentifier;
- (SFImage)destinationApplicationIconImage;
- (SearchUICommandHandler)initWithCommand:(id)command rowModel:(id)model button:(id)button sectionModel:(id)sectionModel environment:(id)environment;
- (UIViewController)viewController;
- (id)actionProvider;
- (id)menuForRowModel:(id)model buttonItem:(id)item commandEnvironment:(id)environment doesFallbackToCardSectionButtonItems:(BOOL)items;
- (id)presentingViewControllerForEnvironment:(id)environment;
- (id)sendFeedbackWithTriggerEvent:(unint64_t)event destination:(unint64_t)destination punchout:(id)punchout;
- (void)didPreview;
- (void)executeWithTriggerEvent:(unint64_t)event;
- (void)fetchPreviewItemIfNeeded:(id)needed;
- (void)notifyDelegateDidPerformCommandIfNecessary;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
- (void)presentViewController:(id)controller animated:(BOOL)animated;
- (void)requestAuthIfNecessaryAndPresentViewController:(id)controller animated:(BOOL)animated;
- (void)showViewController:(id)controller;
@end

@implementation SearchUICommandHandler

+ (BOOL)hasValidHandlerForRowModel:(id)model environment:(id)environment
{
  environmentCopy = environment;
  modelCopy = model;
  v8 = [self tapCommandForRowModel:modelCopy environment:environmentCopy];
  LOBYTE(self) = [self hasValidHandlerForCommand:v8 rowModel:modelCopy environment:environmentCopy];

  return self;
}

+ (BOOL)hasValidHandlerForCommand:(id)command rowModel:(id)model environment:(id)environment
{
  commandCopy = command;
  modelCopy = model;
  environmentCopy = environment;
  _searchUICommandHandlerClass = [commandCopy _searchUICommandHandlerClass];
  if (!_searchUICommandHandlerClass || _searchUICommandHandlerClass == objc_opt_class())
  {
    commandDelegate = [environmentCopy commandDelegate];
    if ([commandDelegate canPerformCommand:commandCopy])
    {
      v11 = 1;
    }

    else
    {
      cardSection = [modelCopy cardSection];
      commands = [cardSection commands];
      v11 = commands != 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (BOOL)hasCustomViewControllerForRowModel:(id)model environment:(id)environment
{
  modelCopy = model;
  environmentCopy = environment;
  commandDelegate = [environmentCopy commandDelegate];
  if (objc_opt_respondsToSelector())
  {
    commandDelegate2 = [environmentCopy commandDelegate];
    identifyingResult = [modelCopy identifyingResult];
    v10 = [commandDelegate2 hasCustomViewControllerForResult:identifyingResult];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)hasValidCommandForResult:(id)result feedbackListener:(id)listener
{
  v19 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  listenerCopy = listener;
  v7 = objc_opt_new();
  [v7 setFeedbackDelegate:listenerCopy];
  v8 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 buildRowModelsFromResult:{resultCopy, 0}];
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

+ (id)tapCommandForRowModel:(id)model environment:(id)environment
{
  v21[18] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  environmentCopy = environment;
  cardSection = [modelCopy cardSection];
  command = [cardSection command];

  if (!command)
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

          v14 = [*(*(&v16 + 1) + 8 * i) fallbackCommandForRowModel:modelCopy environment:{environmentCopy, v16}];
          if (v14)
          {
            command = v14;
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

    command = 0;
LABEL_12:
  }

  return command;
}

+ (id)handlerForRowModel:(id)model environment:(id)environment
{
  environmentCopy = environment;
  modelCopy = model;
  v8 = [self tapCommandForRowModel:modelCopy environment:environmentCopy];
  v9 = [self handlerForCommand:v8 rowModel:modelCopy button:0 environment:environmentCopy];

  return v9;
}

+ (id)previewHandlerForRowModel:(id)model environment:(id)environment
{
  modelCopy = model;
  environmentCopy = environment;
  cardSection = [modelCopy cardSection];
  previewCommand = [cardSection previewCommand];

  if (!previewCommand)
  {
    previewCommand = [self tapCommandForRowModel:modelCopy environment:environmentCopy];
  }

  v10 = [self handlerForCommand:previewCommand rowModel:modelCopy button:0 environment:environmentCopy];

  return v10;
}

- (void)fetchPreviewItemIfNeeded:(id)needed
{
  if (needed)
  {
    (*(needed + 2))(needed, 1);
  }
}

+ (id)revealHandlerForRowModel:(id)model environment:(id)environment
{
  selfCopy = self;
  v37 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  environmentCopy = environment;
  v30 = modelCopy;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  cardSection = [modelCopy cardSection];
  previewButtonItems = [cardSection previewButtonItems];

  v8 = [previewButtonItems countByEnumeratingWithState:&v32 objects:v36 count:16];
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
        objc_enumerationMutation(previewButtonItems);
      }

      v14 = *(*(&v32 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        command = [v14 command];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [command punchout];
          v16 = v10;
          v17 = v11;
          v18 = previewButtonItems;
          v20 = v19 = v12;
          preferredOpenableURL = [v20 preferredOpenableURL];
          isFileURL = [preferredOpenableURL isFileURL];

          v12 = v19;
          previewButtonItems = v18;
          v11 = v17;
          v10 = v16;
          v9 = v31;
          if (isFileURL)
          {

            v24 = environmentCopy;
            v23 = v30;
            v25 = selfCopy;
            if (command)
            {
              goto LABEL_15;
            }

            goto LABEL_14;
          }
        }
      }

      if (v9 == ++v13)
      {
        v9 = [previewButtonItems countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v24 = environmentCopy;
  v23 = v30;
  v25 = selfCopy;
LABEL_14:
  command = [v25 tapCommandForRowModel:v23 environment:{v24, selfCopy}];
LABEL_15:
  v26 = [v25 handlerForCommand:command rowModel:v23 button:0 environment:{v24, selfCopy}];

  return v26;
}

+ (id)handlerForButton:(id)button rowModel:(id)model sectionModel:(id)sectionModel environment:(id)environment
{
  buttonCopy = button;
  modelCopy = model;
  sectionModelCopy = sectionModel;
  environmentCopy = environment;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    command = [buttonCopy command];
    previewButtonItems = [buttonCopy previewButtonItems];
    v16 = [previewButtonItems count] != 0;

    if (command)
    {
      goto LABEL_10;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      command = objc_opt_new();
    }

    else
    {
      command = 0;
    }

    v16 = 0;
    if (command)
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
  v17 = [self handlerForCommand:command rowModel:modelCopy button:buttonCopy sectionModel:sectionModelCopy environment:environmentCopy];
LABEL_11:

  return v17;
}

+ (id)handlerForCommand:(id)command rowModel:(id)model button:(id)button sectionModel:(id)sectionModel environment:(id)environment
{
  v24 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  environmentCopy = environment;
  sectionModelCopy = sectionModel;
  buttonCopy = button;
  modelCopy = model;
  _searchUICommandHandlerClass = [commandCopy _searchUICommandHandlerClass];
  if (!_searchUICommandHandlerClass)
  {
    _searchUICommandHandlerClass = objc_opt_class();
  }

  v17 = SearchUITapLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = commandCopy;
    v22 = 2112;
    v23 = _searchUICommandHandlerClass;
    _os_log_impl(&dword_1DA169000, v17, OS_LOG_TYPE_DEFAULT, "Command handler for %@ resolved to: %@", &v20, 0x16u);
  }

  v18 = [[_searchUICommandHandlerClass alloc] initWithCommand:commandCopy rowModel:modelCopy button:buttonCopy sectionModel:sectionModelCopy environment:environmentCopy];

  return v18;
}

+ (BOOL)isDestructiveButtonItem:(id)item
{
  v24 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = itemCopy;
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
    command = [v6 command];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  previewButtonItems = [v6 previewButtonItems];
  v10 = [previewButtonItems countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(previewButtonItems);
        }

        v12 += [self isDestructiveButtonItem:*(*(&v19 + 1) + 8 * i)];
      }

      v11 = [previewButtonItems countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  previewButtonItems2 = [v6 previewButtonItems];
  if ([previewButtonItems2 count])
  {
    previewButtonItems3 = [v6 previewButtonItems];
    v17 = v12 == [previewButtonItems3 count];
  }

  else
  {
    v17 = 0;
  }

  return (isKindOfClass | v17) & 1;
}

- (SearchUICommandHandler)initWithCommand:(id)command rowModel:(id)model button:(id)button sectionModel:(id)sectionModel environment:(id)environment
{
  commandCopy = command;
  modelCopy = model;
  buttonCopy = button;
  sectionModelCopy = sectionModel;
  environmentCopy = environment;
  v23.receiver = self;
  v23.super_class = SearchUICommandHandler;
  v17 = [(SearchUICommandHandler *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_command, command);
    objc_storeStrong(&v18->_rowModel, model);
    objc_storeStrong(&v18->_buttonItem, button);
    objc_storeStrong(&v18->_sectionModel, sectionModel);
    v19 = [environmentCopy copy];
    environment = v18->_environment;
    v18->_environment = v19;
  }

  return v18;
}

- (void)executeWithTriggerEvent:(unint64_t)event
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = SearchUITapLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "Performing command handler: %@", &v13, 0xCu);
  }

  environment = [(SearchUICommandHandler *)self environment];
  command = [(SearchUICommandHandler *)self command];
  commandDelegate = [environment commandDelegate];
  destination = [(SearchUICommandHandler *)self destination];
  destinationPunchout = [(SearchUICommandHandler *)self destinationPunchout];
  v11 = [(SearchUICommandHandler *)self sendFeedbackWithTriggerEvent:event destination:destination punchout:destinationPunchout];

  if ([commandDelegate canPerformCommand:command])
  {
    [commandDelegate performCommand:command];
  }

  else
  {
    feedbackDelegate = [environment feedbackDelegate];
    if (!v11 || (objc_opt_respondsToSelector() & 1) == 0 || [feedbackDelegate shouldHandleCardSectionEngagement:v11])
    {
      [(SearchUICommandHandler *)self performCommand:command triggerEvent:event environment:environment];
    }
  }

  if ([(SearchUICommandHandler *)self doesRunSynchronously])
  {
    [(SearchUICommandHandler *)self notifyDelegateDidPerformCommandIfNecessary];
  }
}

- (void)notifyDelegateDidPerformCommandIfNecessary
{
  environment = [(SearchUICommandHandler *)self environment];
  commandDelegate = [environment commandDelegate];

  if (objc_opt_respondsToSelector())
  {
    command = [(SearchUICommandHandler *)self command];
    [commandDelegate didFinishPerformingCommand:command];
  }
}

- (id)sendFeedbackWithTriggerEvent:(unint64_t)event destination:(unint64_t)destination punchout:(id)punchout
{
  punchoutCopy = punchout;
  environment = [(SearchUICommandHandler *)self environment];
  feedbackDelegate = [environment feedbackDelegate];
  rowModel = [(SearchUICommandHandler *)self rowModel];
  identifyingResult = [rowModel identifyingResult];
  cardSection = [rowModel cardSection];
  command = [(SearchUICommandHandler *)self command];
  queryId = [rowModel queryId];
  if (!queryId)
  {
    queryId = [environment queryId];
  }

  if (identifyingResult && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = [objc_alloc(MEMORY[0x1E69CA368]) initWithResult:identifyingResult triggerEvent:event destination:destination];
    [feedbackDelegate didEngageResult:v15];
  }

  if (!cardSection)
  {
    v16 = 0;
    if (!command)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v16 = [objc_alloc(MEMORY[0x1E69C9F10]) initWithCardSection:cardSection destination:punchoutCopy triggerEvent:event actionCardType:1];
  [v16 setQueryId:queryId];
  if (objc_opt_respondsToSelector())
  {
    [feedbackDelegate didEngageCardSection:v16];
  }

  if (command)
  {
LABEL_12:
    if (objc_opt_respondsToSelector())
    {
      v21 = punchoutCopy;
      v17 = [objc_alloc(MEMORY[0x1E69C9F98]) initWithCommand:command cardSection:cardSection];
      [v17 setQueryId:queryId];
      [v17 setResult:identifyingResult];
      [v17 setTriggerEvent:event];
      buttonItem = [(SearchUICommandHandler *)self buttonItem];
      [v17 setButton:buttonItem];

      section = [environment section];
      [v17 setResultSection:section];

      [feedbackDelegate didPerformCommand:v17];
      punchoutCopy = v21;
    }
  }

LABEL_14:

  return v16;
}

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  environmentCopy = environment;
  viewController = [(SearchUICommandHandler *)self viewController];
  if (viewController)
  {
    v8 = viewController;
    [(SearchUICommandHandler *)self prepareViewController:viewController forTriggerEvent:event];
    feedbackDelegate = [environmentCopy feedbackDelegate];
    cardViewDelegate = [environmentCopy cardViewDelegate];
    if ([(SearchUICommandHandler *)self prefersModalPresentation])
    {
      v11 = 0;
    }

    else
    {
      presentingViewController = [environmentCopy presentingViewController];
      navigationController = [presentingViewController navigationController];

      topViewController = [(SearchUINavigationController *)navigationController topViewController];
      navigationItem = [topViewController navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      navigationItem2 = [(SearchUINavigationController *)v8 navigationItem];
      [navigationItem2 setRightBarButtonItem:rightBarButtonItem];

      if (navigationController)
      {
        v11 = 0;
      }

      else
      {
        v18 = [[SearchUINavigationController alloc] initWithRootViewController:v8];
        [(SearchUINavigationController *)v18 setFeedbackDelegate:feedbackDelegate];
        v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v18 action:sel_close];
        navigationItem3 = [(SearchUINavigationController *)v8 navigationItem];
        [navigationItem3 setRightBarButtonItem:v19];

        view = [(SearchUINavigationController *)v8 view];
        [view setAccessibilityIdentifier:@"SearchUIResultSheet"];

        navigationController = v18;
        v11 = navigationController;
      }

      presentingViewController2 = [environmentCopy presentingViewController];
      view2 = [presentingViewController2 view];
      v24 = view2;
      if (view2)
      {
        sourceView = view2;
      }

      else
      {
        sourceView = [environmentCopy sourceView];
      }

      v26 = sourceView;

      v27 = [MEMORY[0x1E69D9108] bestAppearanceForView:v26];
      -[SearchUINavigationController _setBuiltinTransitionStyle:](navigationController, "_setBuiltinTransitionStyle:", [v27 isVibrant]);
    }

    if (objc_opt_respondsToSelector())
    {
      v28 = feedbackDelegate;
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

      v28 = cardViewDelegate;
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
    environment = [(SearchUICommandHandler *)self environment];
    commandDelegate = [environment commandDelegate];

    command = [(SearchUICommandHandler *)self command];
    environment2 = [(SearchUICommandHandler *)self environment];
    v8 = [(SearchUICommandHandler *)self createViewControllerForCommand:command environment:environment2];
    v9 = self->_viewController;
    self->_viewController = v8;

    if (self->_viewController)
    {
      rowModel = SearchUITapLog();
      if (os_log_type_enabled(rowModel, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_viewController;
        v16 = 138412546;
        v17 = v11;
        v18 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1DA169000, rowModel, OS_LOG_TYPE_DEFAULT, "View controller (%@) created for command handler: %@", &v16, 0x16u);
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

      rowModel = [(SearchUICommandHandler *)self rowModel];
      identifyingResult = [rowModel identifyingResult];
      v13 = [commandDelegate customViewControllerForResult:identifyingResult];
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
  rowModel = [(SearchUICommandHandler *)self rowModel];
  v5 = [v3 lastCopyCommandForRowModel:rowModel];
  copyableItem = [v5 copyableItem];
  v7 = [SearchUIItemProviderUtilities itemProviderForItem:copyableItem];

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
    command = [(SearchUICommandHandler *)self command];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)lastCopyCommandForRowModel:(id)model
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  modelCopy = model;
  cardSection = [modelCopy cardSection];
  previewButtonItems = [cardSection previewButtonItems];

  v5 = [previewButtonItems countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(previewButtonItems);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          command = [v10 command];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            command2 = [v10 command];

            v7 = command2;
          }
        }
      }

      v6 = [previewButtonItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)menuForRowModel:(id)model buttonItem:(id)item commandEnvironment:(id)environment doesFallbackToCardSectionButtonItems:(BOOL)items
{
  itemsCopy = items;
  v171 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  itemCopy = item;
  environmentCopy = environment;
  v142 = modelCopy;
  cardSection = [modelCopy cardSection];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    previewButtonItems = 0;
LABEL_5:
    if (itemsCopy)
    {
      previewButtonItems = [cardSection previewButtonItems];
    }

    goto LABEL_7;
  }

  previewButtonItems = [itemCopy previewButtonItems];
  if (!previewButtonItems)
  {
    goto LABEL_5;
  }

LABEL_7:
  v147 = objc_opt_new();
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v14 = previewButtonItems;
  v15 = [v14 countByEnumeratingWithState:&v163 objects:v170 count:16];
  v125 = itemCopy;
  v127 = cardSection;
  selfCopy = self;
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
        command = [v21 command];
        objc_opt_class();
        v17 |= objc_opt_isKindOfClass();

        command2 = [v24 command];
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
        applicationBundleIdentifier = [v28 applicationBundleIdentifier];
        coreSpotlightIdentifier = [v28 coreSpotlightIdentifier];
        v30 = applicationBundleIdentifier;
        v31 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:applicationBundleIdentifier allowPlaceholder:1 error:0];
        v32 = MEMORY[0x1E696AAE8];
        v33 = [v31 URL];
        v34 = [v32 bundleWithURL:v33];

        v161 = 0u;
        v162 = 0u;
        v159 = 0u;
        v160 = 0u;
        spotlightActions = [v31 spotlightActions];
        v35 = [spotlightActions countByEnumeratingWithState:&v159 objects:v169 count:16];
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
                objc_enumerationMutation(spotlightActions);
              }

              v41 = *(*(&v159 + 1) + 8 * v39);
              v42 = objc_opt_new();
              [v42 setApplicationBundleIdentifier:v30];
              [v42 setCoreSpotlightIdentifier:coreSpotlightIdentifier];
              identifier = [v41 identifier];
              [v42 setActionIdentifier:identifier];

              v44 = objc_opt_new();
              symbolImageName = [v41 symbolImageName];
              [v44 setSymbolName:symbolImageName];

              [v44 setIsTemplate:1];
              v37 = objc_opt_new();

              unlocalizedTitle = [v41 unlocalizedTitle];
              v47 = [v34 localizedStringForKey:unlocalizedTitle value:0 table:@"InfoPlist"];
              [v37 setTitle:v47];

              [v37 setImage:v44];
              [v37 setCommand:v42];
              [v147 addObject:v37];

              ++v39;
              v40 = v37;
            }

            while (v36 != v39);
            v36 = [spotlightActions countByEnumeratingWithState:&v159 objects:v169 count:16];
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
    isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  }

  else
  {
    isMacOS = 0;
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
        v125 = [SearchUICommandHandler handlerForButton:v55 rowModel:v142 sectionModel:0 environment:environmentCopy, v125];
        if (v125)
        {
          if ([objc_opt_class() isDestructiveButtonItem:v55])
          {
            v57 = v135;
          }

          else
          {
            v57 = v48;
          }

          [v57 addObject:v125];
        }
      }

      v52 = [v132 countByEnumeratingWithState:&v155 objects:v168 count:16];
    }

    while (v52);
  }

  additionalPreviewActionCommandHandlers = [(SearchUICommandHandler *)selfCopy additionalPreviewActionCommandHandlers];
  [v48 addObjectsFromArray:additionalPreviewActionCommandHandlers];

  if ((v49 & 1) == 0 && [(SearchUICommandHandler *)selfCopy supportsCopy])
  {
    v59 = objc_opt_new();
    v60 = objc_opt_new();
    [v59 setCommand:v60];
    v61 = [(SearchUICommandHandler *)[SearchUICopyItemHandler alloc] initWithCommand:v60 rowModel:v142 button:v59 environment:environmentCopy];
    [(SearchUICopyItemHandler *)v61 setHandlerForCopying:selfCopy];
    [v48 addObject:v61];
  }

  if ((v139 & 1) == 0 && !(isMacOS & 1 | ![(SearchUICommandHandler *)selfCopy supportsShare]))
  {
    v62 = objc_opt_new();
    v63 = objc_opt_new();
    [v62 setCommand:v63];
    v64 = [(SearchUICommandHandler *)[SearchUIShareItemHandler alloc] initWithCommand:v63 rowModel:v142 button:v62 environment:environmentCopy];
    [(SearchUIShareItemHandler *)v64 setHandlerForSharing:selfCopy];
    [v48 addObject:v64];
  }

  [v48 addObjectsFromArray:{v135, v125}];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v67 = v66;

  bestAppearanceForSystem = [MEMORY[0x1E69D9108] bestAppearanceForSystem];
  isDark = [bestAppearanceForSystem isDark];

  v138 = objc_opt_new();
  if (([v142 supportsCustomUserReportRequestAfforance] & 1) == 0)
  {
    userReportRequest = [v127 userReportRequest];

    if (userReportRequest)
    {
      v70 = [SearchUIRequestUserReportHandler alloc];
      v71 = objc_opt_new();
      sectionModel = [(SearchUICommandHandler *)selfCopy sectionModel];
      environment = [(SearchUICommandHandler *)selfCopy environment];
      v74 = [(SearchUICommandHandler *)v70 initWithCommand:v71 rowModel:v142 button:0 sectionModel:sectionModel environment:environment];

      v75 = [SearchUISymbolImage alloc];
      defaultSymbolName = [(SearchUIRequestUserReportHandler *)v74 defaultSymbolName];
      v77 = [(SearchUISymbolImage *)v75 initWithSymbolName:defaultSymbolName];

      v78 = [(SearchUISymbolImage *)v77 loadImageWithScale:isDark isDarkStyle:v67];
      userReportRequest2 = [v127 userReportRequest];
      affordanceText = [userReportRequest2 affordanceText];

      contextMenu = [(SearchUIRequestUserReportHandler *)v74 contextMenu];
      v82 = MEMORY[0x1E69DCC60];
      children = [contextMenu children];
      v84 = [children copy];
      v85 = [v82 menuWithTitle:affordanceText image:v78 identifier:0 options:0 children:v84];

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
        buttonItem = [v87 buttonItem];
        title = [buttonItem title];
        v90 = title;
        if (title)
        {
          defaultTitle = title;
        }

        else
        {
          defaultTitle = [v87 defaultTitle];
        }

        v92 = defaultTitle;

        image = [buttonItem image];
        if (image)
        {
          image2 = [buttonItem image];
          v95 = [SearchUIImage imageWithSFImage:image2];
        }

        else
        {
          image2 = [v87 defaultSymbolName];
          if ([image2 length])
          {
            v96 = [SearchUISymbolImage alloc];
            defaultSymbolName2 = [v87 defaultSymbolName];
            v95 = [(SearchUISymbolImage *)v96 initWithSymbolName:defaultSymbolName2];
          }

          else
          {
            v95 = 0;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          useDefaultSymbolFillStyle = [buttonItem useDefaultSymbolFillStyle];
        }

        else
        {
          useDefaultSymbolFillStyle = 0;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && useDefaultSymbolFillStyle)
        {
          [(SearchUISymbolImage *)v95 setPreferredFill:0];
        }

        v99 = [(SearchUISymbolImage *)v95 loadImageWithScale:isDark isDarkStyle:v67];
        command3 = [v87 command];
        if (command3 && (v101 = command3, [v87 command], v102 = objc_claimAutoreleasedReturnValue(), v103 = objc_msgSend(v102, "isMemberOfClass:", objc_opt_class()), v102, v101, !v103))
        {
          v109 = MEMORY[0x1E69DC628];
          v149[0] = MEMORY[0x1E69E9820];
          v149[1] = 3221225472;
          v149[2] = __109__SearchUICommandHandler_menuForRowModel_buttonItem_commandEnvironment_doesFallbackToCardSectionButtonItems___block_invoke;
          v149[3] = &unk_1E85B3850;
          v149[4] = v87;
          v110 = buttonItem;
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
          rowModel = [v87 rowModel];
          buttonItem2 = [v87 buttonItem];
          environment2 = [v87 environment];
          v107 = [v87 menuForRowModel:rowModel buttonItem:buttonItem2 commandEnvironment:environment2];

          if (v107)
          {
            if ([v140 count] == 1)
            {
              v108 = 1;
            }

            else
            {
              children2 = [v107 children];
              v108 = [children2 count] == 1;
            }

            if ([buttonItem isDestructive])
            {
              v113 = v108 | 2;
            }

            else
            {
              v113 = v108;
            }

            v114 = MEMORY[0x1E69DCC60];
            children3 = [v107 children];
            v116 = [children3 copy];
            v117 = [v114 menuWithTitle:v92 image:v99 identifier:0 options:v113 children:v116];

            [v138 addObject:v117];
          }
        }
      }

      v148 = [v140 countByEnumeratingWithState:&v151 objects:v167 count:16];
    }

    while (v148);
  }

  additionalActionMenuItems = [(SearchUICommandHandler *)selfCopy additionalActionMenuItems];
  [v138 addObjectsFromArray:additionalActionMenuItems];

  if ([v138 count])
  {
    v119 = MEMORY[0x1E69DCC60];
    v120 = v127;
    previewButtonItemsTitle = [v127 previewButtonItemsTitle];
    v122 = [v119 menuWithTitle:previewButtonItemsTitle image:0 identifier:0 options:1 children:v138];

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

+ (id)swipeActionsForRowModel:(id)model isLeading:(BOOL)leading environment:(id)environment
{
  v76 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  environmentCopy = environment;
  v59 = modelCopy;
  cardSection = [modelCopy cardSection];
  v9 = objc_opt_new();
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  leadingCopy = leading;
  if (leading)
  {
    [cardSection leadingSwipeButtonItems];
  }

  else
  {
    [cardSection trailingSwipeButtonItems];
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
          v16 = [SearchUICommandHandler handlerForButton:v15 rowModel:modelCopy sectionModel:0 environment:environmentCopy];
          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v70 objects:v75 count:16];
    }

    while (v12);
  }

  v56 = objc_opt_new();
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v19 = v18;

  bestAppearanceForSystem = [MEMORY[0x1E69D9108] bestAppearanceForSystem];
  isDark = [bestAppearanceForSystem isDark];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v9;
  v21 = environmentCopy;
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
        buttonItem = [v23 buttonItem];
        title = [buttonItem title];
        v26 = title;
        if (title)
        {
          defaultTitle = title;
        }

        else
        {
          defaultTitle = [v23 defaultTitle];
        }

        v28 = defaultTitle;

        feedbackDelegate = [v21 feedbackDelegate];
        v30 = objc_opt_respondsToSelector();

        if (v30)
        {
          feedbackDelegate2 = [v21 feedbackDelegate];
        }

        else
        {
          feedbackDelegate2 = 0;
        }

        if ([buttonItem isDestructive])
        {
          previewButtonItems = [buttonItem previewButtonItems];
          v33 = [previewButtonItems count] == 0;
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
        v35 = buttonItem;
        v61 = v35;
        v65 = leadingCopy;
        v36 = feedbackDelegate2;
        v62 = v36;
        v37 = v59;
        v63 = v37;
        v64 = v23;
        v38 = [v34 contextualActionWithStyle:v33 title:v28 handler:v60];
        if ([v35 isDestructive])
        {
          previewButtonItems2 = [v35 previewButtonItems];

          if (previewButtonItems2)
          {
            systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
            [v38 setBackgroundColor:systemRedColor];
          }
        }

        image = [v35 image];

        if (image)
        {
          image2 = [v35 image];
          if (image2)
          {
            image3 = [v35 image];
            v44 = [SearchUIImage imageWithSFImage:image3];
          }

          else
          {
            v45 = [SearchUISymbolImage alloc];
            image3 = [v23 defaultSymbolName];
            v44 = [(SearchUISymbolImage *)v45 initWithSymbolName:image3];
          }

          v46 = v44;

          v47 = [v46 loadImageWithScale:isDark isDarkStyle:v19];
          [v38 setImage:v47];

          v21 = environmentCopy;
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

- (void)requestAuthIfNecessaryAndPresentViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if ([SearchUIUtilities canShowViewController:controllerCopy])
  {
    [(SearchUICommandHandler *)self presentViewController:controllerCopy animated:animatedCopy];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82__SearchUICommandHandler_requestAuthIfNecessaryAndPresentViewController_animated___block_invoke;
    v7[3] = &unk_1E85B24F0;
    v7[4] = self;
    v8 = controllerCopy;
    v9 = animatedCopy;
    [SearchUIUtilities requestDeviceUnlockWithSuccessHandler:v7];
  }
}

- (void)presentViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if ([(SearchUICommandHandler *)self prefersModalPresentation])
  {
    environment = [(SearchUICommandHandler *)self environment];
    popoverPresentationController = [controllerCopy popoverPresentationController];
    if (popoverPresentationController)
    {
      sourceView = [environment sourceView];
      v10 = sourceView;
      if (sourceView)
      {
        view = sourceView;
      }

      else
      {
        presentingViewController = [environment presentingViewController];
        view = [presentingViewController view];
      }

      [popoverPresentationController setSourceView:view];
      [view bounds];
      [popoverPresentationController setSourceRect:?];
    }

    v14 = [(SearchUICommandHandler *)self presentingViewControllerForEnvironment:environment];
    [v14 presentViewController:controllerCopy animated:animatedCopy completion:0];
  }

  else if (animatedCopy)
  {
    [(SearchUICommandHandler *)self showViewController:controllerCopy];
  }

  else
  {
    v12 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__SearchUICommandHandler_presentViewController_animated___block_invoke;
    v15[3] = &unk_1E85B2540;
    v15[4] = self;
    v16 = controllerCopy;
    [v12 performWithoutAnimation:v15];
  }
}

- (void)showViewController:(id)controller
{
  controllerCopy = controller;
  environment = [(SearchUICommandHandler *)self environment];
  v5 = [(SearchUICommandHandler *)self presentingViewControllerForEnvironment:environment];
  [v5 showViewController:controllerCopy sender:0];
}

- (id)presentingViewControllerForEnvironment:(id)environment
{
  environmentCopy = environment;
  presentingViewController = [environmentCopy presentingViewController];
  v5 = presentingViewController;
  if (presentingViewController)
  {
    rootViewController = presentingViewController;
  }

  else
  {
    sourceView = [environmentCopy sourceView];
    window = [sourceView window];
    rootViewController = [window rootViewController];
  }

  return rootViewController;
}

- (id)actionProvider
{
  rowModel = [(SearchUICommandHandler *)self rowModel];
  buttonItem = [(SearchUICommandHandler *)self buttonItem];
  environment = [(SearchUICommandHandler *)self environment];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__SearchUICommandHandler_actionProvider__block_invoke;
  v11[3] = &unk_1E85B38C8;
  v11[4] = self;
  v12 = rowModel;
  v13 = buttonItem;
  v14 = environment;
  v6 = environment;
  v7 = buttonItem;
  v8 = rowModel;
  v9 = _Block_copy(v11);

  return v9;
}

- (void)didPreview
{
  viewController = [(SearchUICommandHandler *)self viewController];
  if (viewController)
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
  destinationPunchout = [(SearchUICommandHandler *)self destinationPunchout];

  if (destinationPunchout)
  {
    destinationApplicationBundleIdentifier = objc_opt_new();
    destinationPunchout2 = [(SearchUICommandHandler *)self destinationPunchout];
    [destinationApplicationBundleIdentifier setPunchout:destinationPunchout2];
  }

  else
  {
    destinationApplicationBundleIdentifier = [(SearchUICommandHandler *)self destinationApplicationBundleIdentifier];

    if (!destinationApplicationBundleIdentifier)
    {
      goto LABEL_6;
    }

    destinationPunchout2 = [(SearchUICommandHandler *)self destinationApplicationBundleIdentifier];
    destinationApplicationBundleIdentifier = [SearchUIAppIconImage appIconImageForBundleIdentifier:destinationPunchout2];
  }

LABEL_6:

  return destinationApplicationBundleIdentifier;
}

- (NSString)destinationApplicationBundleIdentifier
{
  command = [(SearchUICommandHandler *)self command];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  command2 = [(SearchUICommandHandler *)self command];
  v6 = command2;
  if (isKindOfClass)
  {
    applicationBundleIdentifier = [command2 applicationBundleIdentifier];
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      applicationBundleIdentifier = @"com.apple.siri";
    }

    else
    {
      applicationBundleIdentifier = 0;
    }
  }

  return applicationBundleIdentifier;
}

- (NSString)defaultTitle
{
  command = [(SearchUICommandHandler *)self command];
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