@interface WFWidgetViewController
+ (id)progressSubscribers;
+ (id)runningStates;
+ (id)workflowOrFolderIdentifierFromINIntentBackedOptions:(id)options widgetType:(int64_t)type;
- (WFWidgetDataSource)dataSource;
- (WFWidgetEmptyStateView)emptyStateView;
- (WFWidgetGridView)gridView;
- (WFWidgetViewController)initWithOptions:(id)options;
- (id)emptyStateTitle;
- (id)fetchDataSource;
- (id)publishingHandlerForCell:(id)cell;
- (id)runningContextForAction:(id)action;
- (int64_t)widgetTypeFromOptions:(id)options;
- (unint64_t)limitFromOptions:(id)options;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)emptyStateViewWasTapped:(id)tapped;
- (void)gridView:(id)view cellDidTransitionToRunningState:(int64_t)state;
- (void)gridView:(id)view didTapCell:(id)cell;
- (void)handleUpdateFromCache:(id)cache;
- (void)layoutWithActions:(id)actions dataSource:(id)source;
- (void)loadView;
- (void)openShortcutsAppWithOptions:(id)options;
- (void)refreshActionsWithDataSource:(id)source;
- (void)refreshDataSource;
- (void)removeStaleRunningContexts;
- (void)restoreRunningStateIfNecessary;
- (void)resumeRunningWithCell:(id)cell;
- (void)setWidgetStyleToClear:(BOOL)clear;
- (void)showEmptyStateViewIfNeeded;
- (void)showRunningUIForCell:(id)cell;
- (void)showWidgetGridViewIfNeeded;
- (void)startObservingContentSizeCategoryNotifications;
- (void)stopObservingContentSizeCategoryNotifications;
- (void)stopRunningWithCell:(id)cell;
- (void)tintWithHomeScreenTintColor:(CGColor *)color;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
@end

@implementation WFWidgetViewController

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  v26 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  outputCopy = output;
  errorCopy = error;
  v13 = clientCopy;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    gridView = [(WFWidgetViewController *)self gridView];
    action = [v13 action];
    v16 = [gridView cellForSystemAction:action];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __98__WFWidgetViewController_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke;
    v19[3] = &unk_1E8307F68;
    v20 = v16;
    cancelledCopy = cancelled;
    v21 = errorCopy;
    selfCopy = self;
    v17 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], v19);

    v18 = v13;
  }

  else
  {

    v18 = getWFWidgetLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[WFWidgetViewController workflowRunnerClient:didFinishRunningWorkflowWithOutput:error:cancelled:]";
      _os_log_impl(&dword_1C830A000, v18, OS_LOG_TYPE_ERROR, "%s Could not cast workflow runner client to system action client", buf, 0xCu);
    }
  }
}

void __98__WFWidgetViewController_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 56) ^ 1;
  }

  [*(a1 + 32) setCompletingSuccessfully:v2 & 1];
  v3 = [*(a1 + 32) progress];

  if (!v3)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);

    [v4 stopRunningWithCell:v5];
  }
}

- (void)openShortcutsAppWithOptions:(id)options
{
  v3 = MEMORY[0x1E699FB78];
  optionsCopy = options;
  serviceWithDefaultShellEndpoint = [v3 serviceWithDefaultShellEndpoint];
  [serviceWithDefaultShellEndpoint openApplication:*MEMORY[0x1E69E0FB0] withOptions:optionsCopy completion:&__block_literal_global_173];
}

- (void)emptyStateViewWasTapped:(id)tapped
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [(WFWidgetViewController *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C830A000, v4, OS_LOG_TYPE_DEFAULT, "Empty state view was tapped, launching Shortcuts app", buf, 2u);
  }

  dataSource = [(WFWidgetViewController *)self dataSource];
  folderIdentifierForDeepLinking = [dataSource folderIdentifierForDeepLinking];

  if ([(WFWidgetViewController *)self widgetType]== 2 && folderIdentifierForDeepLinking)
  {
    v7 = MEMORY[0x1E695DFF8];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shortcuts://folder?id=%@", folderIdentifierForDeepLinking];
    v9 = [v7 URLWithString:v8];

    if (v9)
    {
      v13 = *MEMORY[0x1E699F960];
      v14[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v11 = [MEMORY[0x1E699FB70] optionsWithDictionary:v10];
      [(WFWidgetViewController *)self openShortcutsAppWithOptions:v11];
    }

    else
    {
      [(WFWidgetViewController *)self openShortcutsAppWithOptions:0];
    }
  }

  else
  {
    [(WFWidgetViewController *)self openShortcutsAppWithOptions:0];
  }
}

- (void)gridView:(id)view cellDidTransitionToRunningState:(int64_t)state
{
  viewCopy = view;
  if (state == 3 || !state)
  {
    [(WFWidgetViewController *)self setRunning:0];
    if ([(WFWidgetViewController *)self needsLayout])
    {
      v7 = [(WFWidgetViewController *)self log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1C830A000, v7, OS_LOG_TYPE_DEFAULT, "Doing deferred layout now", v9, 2u);
      }

      dataSource = [(WFWidgetViewController *)self dataSource];
      [(WFWidgetViewController *)self refreshActionsWithDataSource:dataSource];
    }
  }
}

- (void)gridView:(id)view didTapCell:(id)cell
{
  v32 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  v6 = [(WFWidgetViewController *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&dword_1C830A000, v6, OS_LOG_TYPE_DEFAULT, "Widget was tapped", &v30, 2u);
  }

  action = [cellCopy action];

  if (action)
  {
    if ([cellCopy runningState] == 1 || objc_msgSend(cellCopy, "runningState") == 2)
    {
      v8 = [(WFWidgetViewController *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        action2 = [cellCopy action];
        identifier = [action2 identifier];
        v30 = 138543362;
        v31 = identifier;
        _os_log_impl(&dword_1C830A000, v8, OS_LOG_TYPE_DEFAULT, "Workflow (%{public}@) was running, now stopping...", &v30, 0xCu);
      }

      [(WFWidgetViewController *)self stopRunningWithCell:cellCopy];
    }

    else if ([(WFWidgetViewController *)self running])
    {
      v12 = [(WFWidgetViewController *)self log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&dword_1C830A000, v12, OS_LOG_TYPE_DEFAULT, "A different workflow was running, ignoring tap", &v30, 2u);
      }
    }

    else
    {
      runningState = [cellCopy runningState];
      v14 = [(WFWidgetViewController *)self log];
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (runningState == 3)
      {
        if (v15)
        {
          action3 = [cellCopy action];
          identifier2 = [action3 identifier];
          v30 = 138543362;
          v31 = identifier2;
          _os_log_impl(&dword_1C830A000, v14, OS_LOG_TYPE_DEFAULT, "Resuming run with action identifier: %{public}@", &v30, 0xCu);
        }

        [(WFWidgetViewController *)self resumeRunningWithCell:cellCopy];
      }

      else
      {
        if (v15)
        {
          action4 = [cellCopy action];
          identifier3 = [action4 identifier];
          v30 = 138543362;
          v31 = identifier3;
          _os_log_impl(&dword_1C830A000, v14, OS_LOG_TYPE_DEFAULT, "Starting run with action identifier: %{public}@", &v30, 0xCu);
        }

        [(WFWidgetViewController *)self showRunningUIForCell:cellCopy];
        v20 = objc_alloc(MEMORY[0x1E69E0D78]);
        action5 = [cellCopy action];
        v22 = [v20 initWithSystemAction:action5];

        [v22 start];
        context = [v22 context];

        if (context)
        {
          context2 = [v22 context];
          action6 = [cellCopy action];
          [context2 setAction:action6];

          v26 = [(WFWidgetViewController *)self publishingHandlerForCell:cellCopy];
          v27 = [context2 addProgressSubscriberUsingPublishingHandler:v26];

          progressSubscribers = [objc_opt_class() progressSubscribers];
          [progressSubscribers setObject:v27 forKey:context2];

          runningStates = [objc_opt_class() runningStates];
          [runningStates addObject:context2];

          objc_storeStrong(&self->_client, v22);
        }
      }
    }
  }

  else
  {
    v11 = [(WFWidgetViewController *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412290;
      v31 = cellCopy;
      _os_log_impl(&dword_1C830A000, v11, OS_LOG_TYPE_DEFAULT, "Cell (%@) does not have an action, launching Shortcuts app", &v30, 0xCu);
    }

    [(WFWidgetViewController *)self openShortcutsAppWithOptions:0];
  }
}

- (void)contentSizeCategoryDidChange:(id)change
{
  v4 = [(WFWidgetViewController *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C830A000, v4, OS_LOG_TYPE_DEFAULT, "Received ContentSizeCategory changed notification", v6, 2u);
  }

  dataSource = [(WFWidgetViewController *)self dataSource];
  [(WFWidgetViewController *)self refreshActionsWithDataSource:dataSource];
}

- (void)stopObservingContentSizeCategoryNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)startObservingContentSizeCategoryNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)setWidgetStyleToClear:(BOOL)clear
{
  clearCopy = clear;
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(WFWidgetViewController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = @"NO";
    v11 = 134218498;
    selfCopy = self;
    v13 = 2112;
    if (clearCopy)
    {
      v9 = @"YES";
    }

    v14 = v7;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_DEFAULT, "<%p %@> Setting widget style to clear: %@", &v11, 0x20u);
  }

  self->_isClearStyleEnabled = clearCopy;
  gridView = [(WFWidgetViewController *)self gridView];
  [gridView setCellsToClear:clearCopy];
}

- (void)tintWithHomeScreenTintColor:(CGColor *)color
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(WFWidgetViewController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    gridView = [(WFWidgetViewController *)self gridView];
    gridView2 = [(WFWidgetViewController *)self gridView];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v16 = 134219010;
    selfCopy = self;
    v18 = 2112;
    v19 = v7;
    v20 = 2048;
    v21 = gridView;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    colorCopy = color;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_DEFAULT, "<%p %@> Assigning home screen tint color to <%p %@>: %@", &v16, 0x34u);
  }

  if (color)
  {
    v12 = [MEMORY[0x1E69E09E0] colorWithCGColor:color];
  }

  else
  {
    v12 = 0;
  }

  homeScreenTintColor = self->_homeScreenTintColor;
  self->_homeScreenTintColor = v12;
  v14 = v12;

  gridView3 = [(WFWidgetViewController *)self gridView];
  [gridView3 tintWithHomeScreenTintColor:v14];
}

- (id)runningContextForAction:(id)action
{
  v20 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  runningStates = [objc_opt_class() runningStates];
  v5 = [runningStates countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(runningStates);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        action = [v8 action];
        v10 = actionCopy;
        v11 = action;
        v12 = v11;
        if (v11 == v10)
        {

LABEL_16:
          v5 = v8;
          goto LABEL_17;
        }

        if (actionCopy && v11)
        {
          v13 = [v10 isEqual:v11];

          if (v13)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v5 = [runningStates countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v5;
}

- (id)publishingHandlerForCell:(id)cell
{
  cellCopy = cell;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__WFWidgetViewController_publishingHandlerForCell___block_invoke;
  v9[3] = &unk_1E8307F20;
  v10 = cellCopy;
  selfCopy = self;
  v5 = cellCopy;
  v6 = _Block_copy(v9);
  v7 = _Block_copy(v6);

  return v7;
}

id __51__WFWidgetViewController_publishingHandlerForCell___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setProgress:a2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__WFWidgetViewController_publishingHandlerForCell___block_invoke_2;
  v7[3] = &unk_1E83086D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v5 = _Block_copy(v7);

  return v5;
}

void __51__WFWidgetViewController_publishingHandlerForCell___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 200000000);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__WFWidgetViewController_publishingHandlerForCell___block_invoke_3;
  v5[3] = &unk_1E83086D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_after(v2, MEMORY[0x1E69E96A0], v5);
}

void __51__WFWidgetViewController_publishingHandlerForCell___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) runningState];
  v3 = *(a1 + 40);
  if (v2 == 3)
  {
    [v3 setRunning:0];
    v5 = [*(a1 + 40) gridView];
    [v5 enableAllCells];
  }

  else
  {
    v4 = *(a1 + 32);

    [v3 stopRunningWithCell:v4];
  }
}

- (void)restoreRunningStateIfNecessary
{
  v32 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(WFWidgetViewController *)self removeStaleRunningContexts];
    runningStates = [objc_opt_class() runningStates];
    gridView = [(WFWidgetViewController *)self gridView];
    actionsForVisibleCells = [gridView actionsForVisibleCells];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = runningStates;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      v22 = v24;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          action = [v11 action];

          if (action)
          {
            action2 = [v11 action];
            v14 = [actionsForVisibleCells containsObject:action2];

            if (v14)
            {
              gridView2 = [(WFWidgetViewController *)self gridView];
              action3 = [v11 action];
              v17 = [gridView2 cellForSystemAction:action3];

              if ([v17 runningState] == 1 || objc_msgSend(v17, "runningState") == 2)
              {

                goto LABEL_18;
              }

              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              v24[0] = __56__WFWidgetViewController_restoreRunningStateIfNecessary__block_invoke;
              v24[1] = &unk_1E83086B0;
              v25 = v17;
              v18 = v17;
              dispatch_async(MEMORY[0x1E69E96A0], block);
              v19 = [(WFWidgetViewController *)self publishingHandlerForCell:v18];
              v20 = [v11 addProgressSubscriberUsingPublishingHandler:v19];

              progressSubscribers = [objc_opt_class() progressSubscribers];
              [progressSubscribers setObject:v20 forKey:v11];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  else
  {
    v6 = [(WFWidgetViewController *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C830A000, v6, OS_LOG_TYPE_FAULT, "restoreRunningStateIfNecessary must be called on the main thread", buf, 2u);
    }
  }
}

- (void)removeStaleRunningContexts
{
  v30 = *MEMORY[0x1E69E9840];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  runningStates = [objc_opt_class() runningStates];
  v4 = [runningStates countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(runningStates);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        creationDate = [v9 creationDate];
        v11 = [currentCalendar components:16 fromDate:creationDate toDate:date options:0];

        if ([v11 day] >= 7)
        {
          if (!v6)
          {
            v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          }

          [v6 addObject:v9];
        }
      }

      v5 = [runningStates countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * j);
        runningStates2 = [objc_opt_class() runningStates];
        [runningStates2 removeObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }
}

- (void)resumeRunningWithCell:(id)cell
{
  cellCopy = cell;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WFWidgetViewController_resumeRunningWithCell___block_invoke;
  block[3] = &unk_1E83086B0;
  v5 = cellCopy;
  v12 = v5;
  v6 = MEMORY[0x1E69E96A0];
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v7 = dispatch_time(0, 300000000);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__WFWidgetViewController_resumeRunningWithCell___block_invoke_2;
  v9[3] = &unk_1E83086D8;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_after(v7, v6, v9);
}

void __48__WFWidgetViewController_resumeRunningWithCell___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) showRunningUIForCell:*(a1 + 40)];
  v2 = [*(a1 + 32) client];
  [v2 resume];
}

- (void)stopRunningWithCell:(id)cell
{
  cellCopy = cell;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__WFWidgetViewController_stopRunningWithCell___block_invoke;
  v6[3] = &unk_1E83086D8;
  v7 = cellCopy;
  selfCopy = self;
  v5 = cellCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __46__WFWidgetViewController_stopRunningWithCell___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRunningState:0];
  [*(a1 + 40) setRunning:0];
  v2 = [*(a1 + 40) client];

  if (v2)
  {
    v3 = [*(a1 + 40) client];
    [v3 stop];
  }

  [*(a1 + 40) setClient:0];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) action];
  v10 = [v4 runningContextForAction:v5];

  if (v10)
  {
    v6 = [objc_opt_class() runningStates];
    [v6 removeObject:v10];
  }

  v7 = [objc_opt_class() progressSubscribers];
  v8 = [v7 objectForKey:v10];

  if (v8)
  {
    [MEMORY[0x1E696AE38] removeSubscriber:v8];
    v9 = [objc_opt_class() progressSubscribers];
    [v9 removeObjectForKey:v10];
  }
}

- (void)showRunningUIForCell:(id)cell
{
  cellCopy = cell;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__WFWidgetViewController_showRunningUIForCell___block_invoke;
  v6[3] = &unk_1E83086D8;
  v7 = cellCopy;
  selfCopy = self;
  v5 = cellCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __47__WFWidgetViewController_showRunningUIForCell___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRunningState:1];
  [*(a1 + 40) setRunning:1];
  v2 = [*(a1 + 40) gridView];
  [v2 disableAllCellsExceptCell:*(a1 + 32)];
}

- (void)handleUpdateFromCache:(id)cache
{
  cacheCopy = cache;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__WFWidgetViewController_handleUpdateFromCache___block_invoke;
  v6[3] = &unk_1E83086D8;
  v7 = cacheCopy;
  selfCopy = self;
  v5 = cacheCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __48__WFWidgetViewController_handleUpdateFromCache___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"WFWidgetCacheAssociatedIdentifier"];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 40) dataSource];
  v7 = [v6 cacheUpdateIdentifierIsValid:v5];

  v8 = [*(a1 + 40) log];
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1C830A000, v9, OS_LOG_TYPE_INFO, "Ignoring notification, mismatched identifiers (%@)", &v15, 0xCu);
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) object];
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&dword_1C830A000, v9, OS_LOG_TYPE_DEFAULT, "Updating widget with workflows from notification: %@", &v15, 0xCu);
  }

  v11 = [*(a1 + 40) running];
  v12 = *(a1 + 40);
  if (!v11)
  {
    [v12 refreshDataSource];
    v14 = *(a1 + 40);
    v9 = [v14 dataSource];
    [v14 refreshActionsWithDataSource:v9];
LABEL_16:

    goto LABEL_17;
  }

  v13 = [v12 log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1C830A000, v13, OS_LOG_TYPE_DEFAULT, "Observable result change came in while we were running, deferring layout until we're done running", &v15, 2u);
  }

  [*(a1 + 40) setNeedsLayout:1];
LABEL_17:
}

- (unint64_t)limitFromOptions:(id)options
{
  family = [options family];
  if (family > 2)
  {
    if (family != 3)
    {
      return 16;
    }

    return 8;
  }

  else
  {
    if (family != 1)
    {
      if (family == 2)
      {
        return 4;
      }

      return 16;
    }

    if ([(WFWidgetViewController *)self widgetType]== 2)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

- (void)refreshActionsWithDataSource:(id)source
{
  v14 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v5 = [(WFWidgetViewController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 134218242;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_DEFAULT, "<%p %@> Refreshing actions", &v10, 0x16u);
  }

  if ([(WFWidgetViewController *)self widgetType]== 1)
  {
    options = [(WFWidgetViewController *)self options];
    [options family];
  }

  configuredActions = [sourceCopy configuredActions];
  [(WFWidgetViewController *)self layoutWithActions:configuredActions dataSource:sourceCopy];
}

- (id)emptyStateTitle
{
  if (-[WFWidgetViewController widgetType](self, "widgetType") == 1 && (-[WFWidgetViewController options](self, "options"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 family], v3, v4 == 1))
  {
    v5 = @"Choose shortcut";
  }

  else
  {
    v5 = @"No shortcuts";
  }

  v6 = WFLocalizedString(v5);

  return v6;
}

- (void)layoutWithActions:(id)actions dataSource:(id)source
{
  actionsCopy = actions;
  sourceCopy = source;
  [(WFWidgetViewController *)self setNeedsLayout:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__WFWidgetViewController_layoutWithActions_dataSource___block_invoke;
  block[3] = &unk_1E8308600;
  v11 = actionsCopy;
  selfCopy = self;
  v13 = sourceCopy;
  v8 = sourceCopy;
  v9 = actionsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__WFWidgetViewController_layoutWithActions_dataSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 showWidgetGridViewIfNeeded];
    v4 = [*(a1 + 40) gridView];
    [v4 layoutWithActions:*(a1 + 32) dataSource:*(a1 + 48)];
  }

  else
  {

    [v3 showEmptyStateViewIfNeeded];
  }
}

- (int64_t)widgetTypeFromOptions:(id)options
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  intent = [optionsCopy intent];
  typeName = [intent typeName];
  v6 = [typeName isEqualToString:@"sirikit.intents.custom.com.apple.WorkflowKit.ShortcutsIntents.WFShortcutsSmallWidgetConfigurationIntent"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    intent2 = [optionsCopy intent];
    typeName2 = [intent2 typeName];
    v10 = [typeName2 isEqualToString:@"sirikit.intents.custom.com.apple.WorkflowKit.ShortcutsIntents.WFShortcutsWidgetConfigurationIntent"];

    if (v10)
    {
      v7 = 2;
    }

    else
    {
      intent3 = [optionsCopy intent];
      if (intent3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = intent3;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      appIntentIdentifier = [v13 appIntentIdentifier];
      v15 = [appIntentIdentifier isEqualToString:@"WFShortcutsSmallWidgetConfigurationIntent"];

      if (v15)
      {
        v7 = 1;
      }

      else
      {
        appIntentIdentifier2 = [v13 appIntentIdentifier];
        v17 = [appIntentIdentifier2 isEqualToString:@"WFShortcutsWidgetConfigurationIntent"];

        if (v17)
        {
          v7 = 2;
        }

        else
        {
          v18 = getWFWidgetLogObject();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            v20 = 136315394;
            v21 = "[WFWidgetViewController widgetTypeFromOptions:]";
            v22 = 2112;
            v23 = optionsCopy;
            _os_log_impl(&dword_1C830A000, v18, OS_LOG_TYPE_FAULT, "%s Could not determine widget type from options %@", &v20, 0x16u);
          }

          v7 = 0;
        }
      }
    }
  }

  return v7;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WFWidgetViewController;
  [(WFWidgetViewController *)&v4 viewWillAppear:appear];
  [(WFWidgetViewController *)self restoreRunningStateIfNecessary];
}

- (void)viewDidLayoutSubviews
{
  dataSource = [(WFWidgetViewController *)self dataSource];
  [(WFWidgetViewController *)self refreshActionsWithDataSource:dataSource];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = WFWidgetViewController;
  [(WFWidgetViewController *)&v13 viewWillLayoutSubviews];
  view = [(WFWidgetViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  gridView = [(WFWidgetViewController *)self gridView];
  [gridView setFrame:{v5, v7, v9, v11}];
}

- (void)showWidgetGridViewIfNeeded
{
  emptyStateView = [(WFWidgetViewController *)self emptyStateView];
  superview = [emptyStateView superview];

  if (superview)
  {
    emptyStateView2 = [(WFWidgetViewController *)self emptyStateView];
    [emptyStateView2 removeFromSuperview];
  }

  gridView = [(WFWidgetViewController *)self gridView];
  superview2 = [gridView superview];

  if (!superview2)
  {
    view = [(WFWidgetViewController *)self view];
    gridView2 = [(WFWidgetViewController *)self gridView];
    [view addSubview:gridView2];
  }
}

- (void)showEmptyStateViewIfNeeded
{
  gridView = [(WFWidgetViewController *)self gridView];
  superview = [gridView superview];

  if (superview)
  {
    gridView2 = [(WFWidgetViewController *)self gridView];
    [gridView2 removeFromSuperview];
  }

  emptyStateTitle = [(WFWidgetViewController *)self emptyStateTitle];
  emptyStateView = [(WFWidgetViewController *)self emptyStateView];
  [emptyStateView setTitleString:emptyStateTitle];

  emptyStateView2 = [(WFWidgetViewController *)self emptyStateView];
  superview2 = [emptyStateView2 superview];

  if (!superview2)
  {
    view = [(WFWidgetViewController *)self view];
    emptyStateView3 = [(WFWidgetViewController *)self emptyStateView];
    [view addSubview:emptyStateView3];
  }
}

- (WFWidgetEmptyStateView)emptyStateView
{
  emptyStateView = self->_emptyStateView;
  if (!emptyStateView)
  {
    if ([(WFWidgetViewController *)self widgetType]== 2)
    {
      v4 = @"Choose shortcuts";
    }

    else
    {
      v4 = @"Choose shortcut";
    }

    v5 = WFLocalizedString(v4);
    v6 = [[WFWidgetEmptyStateView alloc] initWithTitle:v5];
    [(WFWidgetEmptyStateView *)v6 setDelegate:self];
    [(WFWidgetEmptyStateView *)v6 setClipsToBounds:1];
    view = [(WFWidgetViewController *)self view];
    [view bounds];
    [(WFWidgetEmptyStateView *)v6 setFrame:?];

    [(WFWidgetEmptyStateView *)v6 setAutoresizingMask:18];
    v8 = self->_emptyStateView;
    self->_emptyStateView = v6;

    emptyStateView = self->_emptyStateView;
  }

  return emptyStateView;
}

- (WFWidgetGridView)gridView
{
  gridView = self->_gridView;
  if (!gridView)
  {
    v4 = [WFWidgetGridView alloc];
    options = [(WFWidgetViewController *)self options];
    family = [options family];
    widgetType = [(WFWidgetViewController *)self widgetType];
    [(WFWidgetViewController *)self cornerRadius];
    v9 = v8;
    v10 = [(WFWidgetViewController *)self log];
    v11 = [(WFWidgetGridView *)v4 initWithFamily:family widgetType:widgetType cornerRadius:v10 log:v9];

    [(WFWidgetGridView *)v11 setDelegate:self];
    [(WFWidgetGridView *)v11 setClipsToBounds:1];
    view = [(WFWidgetViewController *)self view];
    [view bounds];
    [(WFWidgetGridView *)v11 setFrame:?];

    [(WFWidgetGridView *)v11 setAutoresizingMask:18];
    [(WFWidgetGridView *)v11 tintWithHomeScreenTintColor:self->_homeScreenTintColor];
    [(WFWidgetGridView *)v11 setCellsToClear:self->_isClearStyleEnabled];
    v13 = self->_gridView;
    self->_gridView = v11;

    gridView = self->_gridView;
  }

  return gridView;
}

- (void)refreshDataSource
{
  self->_dataSource = [(WFWidgetViewController *)self fetchDataSource];

  MEMORY[0x1EEE66BB8]();
}

- (WFWidgetDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    fetchDataSource = [(WFWidgetViewController *)self fetchDataSource];
    v5 = self->_dataSource;
    self->_dataSource = fetchDataSource;

    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (id)fetchDataSource
{
  v51 = *MEMORY[0x1E69E9840];
  options = [(WFWidgetViewController *)self options];
  intent = [options intent];

  if (intent)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = getWFWidgetLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v47 = 136315138;
        v48 = "[WFWidgetViewController fetchDataSource]";
        _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_DEBUG, "%s Attempting modern INAppIntent widget deserialization", &v47, 0xCu);
      }

      linkAction = [intent linkAction];
      if (!linkAction)
      {
        value = getWFWidgetLogObject();
        if (os_log_type_enabled(value, OS_LOG_TYPE_ERROR))
        {
          v47 = 136315394;
          v48 = "[WFWidgetViewController fetchDataSource]";
          v49 = 2112;
          v50 = intent;
          _os_log_impl(&dword_1C830A000, value, OS_LOG_TYPE_ERROR, "%s Could not get link action from INAppIntent: %@", &v47, 0x16u);
        }

        v13 = 0;
        goto LABEL_45;
      }

      widgetType = [(WFWidgetViewController *)self widgetType];
      parameters = [linkAction parameters];
      v9 = parameters;
      if (widgetType == 1)
      {
        v10 = [parameters if_firstObjectPassingTest:&__block_literal_global_2299];
        value = [v10 value];

        instanceIdentifier = [MEMORY[0x1E69E09F8] systemActionWithValue:value];
        v13 = [[WFWidgetDataSource alloc] initWithAction:instanceIdentifier];
LABEL_44:

LABEL_45:
        goto LABEL_46;
      }

      v21 = [parameters if_firstObjectPassingTest:&__block_literal_global_95];
      value = [v21 value];

      v11Value = [value value];
      if (v11Value)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v11Value;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      identifier = [v24 identifier];

      instanceIdentifier = [identifier instanceIdentifier];

      v26 = [MEMORY[0x1E695DFF8] URLWithString:instanceIdentifier];
      pathComponents = [v26 pathComponents];
      lastObject = [pathComponents lastObject];
      v29 = lastObject;
      v30 = @"MyShortcuts";
      if (lastObject)
      {
        v30 = lastObject;
      }

      v31 = v30;

      v32 = v31;
      v33 = v32;
      if (v32 == @"all-shortcuts" || (v34 = [(__CFString *)v32 isEqualToString:@"all-shortcuts"], v33, v34))
      {

        v35 = [WFWidgetDataSource alloc];
        options2 = [(WFWidgetViewController *)self options];
        v37 = [(WFWidgetViewController *)self limitFromOptions:options2];
        v38 = @"MyShortcuts";
      }

      else
      {
        v39 = v33;
        v38 = v39;
        if (v39 == @"custom" || (v40 = [(__CFString *)v39 isEqualToString:@"custom"], v38, v40))
        {
          parameters2 = [linkAction parameters];
          v42 = [parameters2 if_firstObjectPassingTest:&__block_literal_global_105];
          options2 = [v42 value];

          value2 = [options2 value];
          if (!value2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {

            v44 = getWFGeneralLogObject();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v47 = 136315394;
              v48 = "[WFWidgetViewController fetchDataSource]";
              v49 = 2112;
              v50 = linkAction;
              _os_log_impl(&dword_1C830A000, v44, OS_LOG_TYPE_DEFAULT, "%s Got action %@", &v47, 0x16u);
            }

            value2 = 0;
          }

          v45 = [value2 if_compactMap:&__block_literal_global_109];
          v13 = [[WFWidgetDataSource alloc] initWithActions:v45];

          goto LABEL_43;
        }

        v35 = [WFWidgetDataSource alloc];
        options2 = [(WFWidgetViewController *)self options];
        v37 = [(WFWidgetViewController *)self limitFromOptions:options2];
      }

      v13 = [(WFWidgetDataSource *)v35 initWithIdentifier:v38 limit:v37];
LABEL_43:

      goto LABEL_44;
    }
  }

  v14 = getWFWidgetLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v47 = 136315138;
    v48 = "[WFWidgetViewController fetchDataSource]";
    _os_log_impl(&dword_1C830A000, v14, OS_LOG_TYPE_DEBUG, "%s Attempting INIntent widget deserialization", &v47, 0xCu);
  }

  v15 = objc_opt_class();
  options3 = [(WFWidgetViewController *)self options];
  intent = [v15 workflowOrFolderIdentifierFromINIntentBackedOptions:options3 widgetType:{-[WFWidgetViewController widgetType](self, "widgetType")}];

  if (intent)
  {
    if ([(WFWidgetViewController *)self widgetType]!= 1)
    {
      if ([(WFWidgetViewController *)self widgetType]!= 2)
      {
        v13 = 0;
        goto LABEL_47;
      }

      v20 = [WFWidgetDataSource alloc];
      linkAction = [(WFWidgetViewController *)self options];
      v17 = [(WFWidgetDataSource *)v20 initWithIdentifier:intent limit:[(WFWidgetViewController *)self limitFromOptions:linkAction]];
      goto LABEL_19;
    }

    linkAction = [WFWidgetDataSource systemActionForWorkflowIdentifier:intent];
    if (linkAction)
    {
      v17 = [[WFWidgetDataSource alloc] initWithAction:linkAction];
LABEL_19:
      v13 = v17;
      goto LABEL_46;
    }
  }

  else
  {
    linkAction = getWFWidgetLogObject();
    if (os_log_type_enabled(linkAction, OS_LOG_TYPE_ERROR))
    {
      options4 = [(WFWidgetViewController *)self options];
      intent2 = [options4 intent];
      v47 = 136315394;
      v48 = "[WFWidgetViewController fetchDataSource]";
      v49 = 2112;
      v50 = intent2;
      _os_log_impl(&dword_1C830A000, linkAction, OS_LOG_TYPE_ERROR, "%s Could not get workflow or folder identifier: %@", &v47, 0x16u);
    }
  }

  v13 = 0;
LABEL_46:

LABEL_47:

  return v13;
}

uint64_t __41__WFWidgetViewController_fetchDataSource__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = v2;
  if (v2 == @"shortcut")
  {
    v4 = 1;
  }

  else if (v2)
  {
    v4 = [(__CFString *)v2 isEqualToString:@"shortcut"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __41__WFWidgetViewController_fetchDataSource__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = v2;
  if (v2 == @"folder")
  {
    v4 = 1;
  }

  else if (v2)
  {
    v4 = [(__CFString *)v2 isEqualToString:@"folder"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __41__WFWidgetViewController_fetchDataSource__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = v2;
  if (v2 == @"shortcut")
  {
    v4 = 1;
  }

  else if (v2)
  {
    v4 = [(__CFString *)v2 isEqualToString:@"shortcut"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = WFWidgetViewController;
  [(WFWidgetViewController *)&v12 loadView];
  [(WFWidgetViewController *)self cornerRadius];
  v4 = v3;
  view = [(WFWidgetViewController *)self view];
  layer = [view layer];
  [layer setCornerRadius:v4];

  v7 = *MEMORY[0x1E69796E8];
  view2 = [(WFWidgetViewController *)self view];
  layer2 = [view2 layer];
  [layer2 setCornerCurve:v7];

  view3 = [(WFWidgetViewController *)self view];
  layer3 = [view3 layer];
  [layer3 setMasksToBounds:1];
}

- (void)dealloc
{
  [(WFWidgetViewController *)self stopObservingContentSizeCategoryNotifications];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"WFWidgetCacheUpdateNotification" object:0];

  v4.receiver = self;
  v4.super_class = WFWidgetViewController;
  [(WFWidgetViewController *)&v4 dealloc];
}

- (WFWidgetViewController)initWithOptions:(id)options
{
  v39 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v34.receiver = self;
  v34.super_class = WFWidgetViewController;
  v6 = [(WFWidgetViewController *)&v34 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
    v8 = os_log_create("com.apple.shortcuts", "Widget");
    log = v7->_log;
    v7->_log = v8;

    v7->_widgetType = [(WFWidgetViewController *)v7 widgetTypeFromOptions:optionsCopy];
    HasBeenUnlocked = VCDeviceHasBeenUnlocked();
    v11 = v7->_log;
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (HasBeenUnlocked)
    {
      if (v12)
      {
        v13 = v11;
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 134218242;
        v36 = v7;
        v37 = 2112;
        v38 = v15;
        _os_log_impl(&dword_1C830A000, v13, OS_LOG_TYPE_DEFAULT, "<%p %@> Device has been unlocked at least once, refreshing", buf, 0x16u);
      }

      dataSource = [(WFWidgetViewController *)v7 dataSource];
      [(WFWidgetViewController *)v7 refreshActionsWithDataSource:dataSource];
    }

    else
    {
      if (v12)
      {
        v17 = v11;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 134218242;
        v36 = v7;
        v37 = 2112;
        v38 = v19;
        _os_log_impl(&dword_1C830A000, v17, OS_LOG_TYPE_DEFAULT, "<%p %@> Device has not unlocked before, listening for first unlock", buf, 0x16u);
      }

      objc_initWeak(buf, v7);
      v20 = MEMORY[0x1E69E96A0];
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __42__WFWidgetViewController_initWithOptions___block_invoke;
      v31 = &unk_1E8307ED8;
      v32 = v7;
      objc_copyWeak(&v33, buf);
      VCPerformOnFirstUnlock();

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }

    [(WFWidgetViewController *)v7 startObservingContentSizeCategoryNotifications:v28];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_handleUpdateFromCache_ name:@"WFWidgetCacheUpdateNotification" object:0];

    v22 = objc_opt_new();
    v23 = [v22 previewMetricsSpecificationForBundleIdentifier:*MEMORY[0x1E69E0FB0]];

    v24 = [v23 metricsForFamily:{objc_msgSend(optionsCopy, "family")}];
    [v24 _effectiveCornerRadius];
    v7->_cornerRadius = v25;

    v26 = v7;
  }

  return v7;
}

void __42__WFWidgetViewController_initWithOptions___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1064);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C830A000, v2, OS_LOG_TYPE_DEFAULT, "Received first unlock notification", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [*(a1 + 32) dataSource];
  [WeakRetained refreshActionsWithDataSource:v4];
}

+ (id)progressSubscribers
{
  if (progressSubscribers_onceToken != -1)
  {
    dispatch_once(&progressSubscribers_onceToken, &__block_literal_global_153);
  }

  v3 = progressSubscribers_progressSubscribers;

  return v3;
}

uint64_t __45__WFWidgetViewController_progressSubscribers__block_invoke()
{
  progressSubscribers_progressSubscribers = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)runningStates
{
  if (runningStates_onceToken != -1)
  {
    dispatch_once(&runningStates_onceToken, &__block_literal_global_151);
  }

  v3 = runningStates_set;

  return v3;
}

uint64_t __39__WFWidgetViewController_runningStates__block_invoke()
{
  runningStates_set = [MEMORY[0x1E695DFA8] set];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)workflowOrFolderIdentifierFromINIntentBackedOptions:(id)options widgetType:(int64_t)type
{
  optionsCopy = options;
  v6 = optionsCopy;
  if (type == 1)
  {
    intent = [optionsCopy intent];
    v8 = [intent valueForKey:@"shortcut"];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

  if (type == 2)
  {
    intent2 = [optionsCopy intent];
    v8 = [intent2 valueForKey:@"folder"];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        identifier = [v8 identifier];

        if (!identifier)
        {
          identifier2 = @"MyShortcuts";
LABEL_11:

          goto LABEL_13;
        }

LABEL_9:
        identifier2 = [v8 identifier];
        goto LABEL_11;
      }
    }

LABEL_10:
    identifier2 = 0;
    goto LABEL_11;
  }

  identifier2 = 0;
LABEL_13:

  return identifier2;
}

@end