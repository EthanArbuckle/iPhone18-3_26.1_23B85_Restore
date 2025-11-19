@interface WFWidgetViewController
+ (id)progressSubscribers;
+ (id)runningStates;
+ (id)workflowOrFolderIdentifierFromINIntentBackedOptions:(id)a3 widgetType:(int64_t)a4;
- (WFWidgetDataSource)dataSource;
- (WFWidgetEmptyStateView)emptyStateView;
- (WFWidgetGridView)gridView;
- (WFWidgetViewController)initWithOptions:(id)a3;
- (id)emptyStateTitle;
- (id)fetchDataSource;
- (id)publishingHandlerForCell:(id)a3;
- (id)runningContextForAction:(id)a3;
- (int64_t)widgetTypeFromOptions:(id)a3;
- (unint64_t)limitFromOptions:(id)a3;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)emptyStateViewWasTapped:(id)a3;
- (void)gridView:(id)a3 cellDidTransitionToRunningState:(int64_t)a4;
- (void)gridView:(id)a3 didTapCell:(id)a4;
- (void)handleUpdateFromCache:(id)a3;
- (void)layoutWithActions:(id)a3 dataSource:(id)a4;
- (void)loadView;
- (void)openShortcutsAppWithOptions:(id)a3;
- (void)refreshActionsWithDataSource:(id)a3;
- (void)refreshDataSource;
- (void)removeStaleRunningContexts;
- (void)restoreRunningStateIfNecessary;
- (void)resumeRunningWithCell:(id)a3;
- (void)setWidgetStyleToClear:(BOOL)a3;
- (void)showEmptyStateViewIfNeeded;
- (void)showRunningUIForCell:(id)a3;
- (void)showWidgetGridViewIfNeeded;
- (void)startObservingContentSizeCategoryNotifications;
- (void)stopObservingContentSizeCategoryNotifications;
- (void)stopRunningWithCell:(id)a3;
- (void)tintWithHomeScreenTintColor:(CGColor *)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
@end

@implementation WFWidgetViewController

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v10;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = [(WFWidgetViewController *)self gridView];
    v15 = [v13 action];
    v16 = [v14 cellForSystemAction:v15];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __98__WFWidgetViewController_workflowRunnerClient_didFinishRunningWorkflowWithOutput_error_cancelled___block_invoke;
    v19[3] = &unk_1E8307F68;
    v20 = v16;
    v23 = a6;
    v21 = v12;
    v22 = self;
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

- (void)openShortcutsAppWithOptions:(id)a3
{
  v3 = MEMORY[0x1E699FB78];
  v4 = a3;
  v5 = [v3 serviceWithDefaultShellEndpoint];
  [v5 openApplication:*MEMORY[0x1E69E0FB0] withOptions:v4 completion:&__block_literal_global_173];
}

- (void)emptyStateViewWasTapped:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [(WFWidgetViewController *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C830A000, v4, OS_LOG_TYPE_DEFAULT, "Empty state view was tapped, launching Shortcuts app", buf, 2u);
  }

  v5 = [(WFWidgetViewController *)self dataSource];
  v6 = [v5 folderIdentifierForDeepLinking];

  if ([(WFWidgetViewController *)self widgetType]== 2 && v6)
  {
    v7 = MEMORY[0x1E695DFF8];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"shortcuts://folder?id=%@", v6];
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

- (void)gridView:(id)a3 cellDidTransitionToRunningState:(int64_t)a4
{
  v6 = a3;
  if (a4 == 3 || !a4)
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

      v8 = [(WFWidgetViewController *)self dataSource];
      [(WFWidgetViewController *)self refreshActionsWithDataSource:v8];
    }
  }
}

- (void)gridView:(id)a3 didTapCell:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(WFWidgetViewController *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&dword_1C830A000, v6, OS_LOG_TYPE_DEFAULT, "Widget was tapped", &v30, 2u);
  }

  v7 = [v5 action];

  if (v7)
  {
    if ([v5 runningState] == 1 || objc_msgSend(v5, "runningState") == 2)
    {
      v8 = [(WFWidgetViewController *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v5 action];
        v10 = [v9 identifier];
        v30 = 138543362;
        v31 = v10;
        _os_log_impl(&dword_1C830A000, v8, OS_LOG_TYPE_DEFAULT, "Workflow (%{public}@) was running, now stopping...", &v30, 0xCu);
      }

      [(WFWidgetViewController *)self stopRunningWithCell:v5];
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
      v13 = [v5 runningState];
      v14 = [(WFWidgetViewController *)self log];
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13 == 3)
      {
        if (v15)
        {
          v16 = [v5 action];
          v17 = [v16 identifier];
          v30 = 138543362;
          v31 = v17;
          _os_log_impl(&dword_1C830A000, v14, OS_LOG_TYPE_DEFAULT, "Resuming run with action identifier: %{public}@", &v30, 0xCu);
        }

        [(WFWidgetViewController *)self resumeRunningWithCell:v5];
      }

      else
      {
        if (v15)
        {
          v18 = [v5 action];
          v19 = [v18 identifier];
          v30 = 138543362;
          v31 = v19;
          _os_log_impl(&dword_1C830A000, v14, OS_LOG_TYPE_DEFAULT, "Starting run with action identifier: %{public}@", &v30, 0xCu);
        }

        [(WFWidgetViewController *)self showRunningUIForCell:v5];
        v20 = objc_alloc(MEMORY[0x1E69E0D78]);
        v21 = [v5 action];
        v22 = [v20 initWithSystemAction:v21];

        [v22 start];
        v23 = [v22 context];

        if (v23)
        {
          v24 = [v22 context];
          v25 = [v5 action];
          [v24 setAction:v25];

          v26 = [(WFWidgetViewController *)self publishingHandlerForCell:v5];
          v27 = [v24 addProgressSubscriberUsingPublishingHandler:v26];

          v28 = [objc_opt_class() progressSubscribers];
          [v28 setObject:v27 forKey:v24];

          v29 = [objc_opt_class() runningStates];
          [v29 addObject:v24];

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
      v31 = v5;
      _os_log_impl(&dword_1C830A000, v11, OS_LOG_TYPE_DEFAULT, "Cell (%@) does not have an action, launching Shortcuts app", &v30, 0xCu);
    }

    [(WFWidgetViewController *)self openShortcutsAppWithOptions:0];
  }
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = [(WFWidgetViewController *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C830A000, v4, OS_LOG_TYPE_DEFAULT, "Received ContentSizeCategory changed notification", v6, 2u);
  }

  v5 = [(WFWidgetViewController *)self dataSource];
  [(WFWidgetViewController *)self refreshActionsWithDataSource:v5];
}

- (void)stopObservingContentSizeCategoryNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)startObservingContentSizeCategoryNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)setWidgetStyleToClear:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(WFWidgetViewController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = @"NO";
    v11 = 134218498;
    v12 = self;
    v13 = 2112;
    if (v3)
    {
      v9 = @"YES";
    }

    v14 = v7;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_DEFAULT, "<%p %@> Setting widget style to clear: %@", &v11, 0x20u);
  }

  self->_isClearStyleEnabled = v3;
  v10 = [(WFWidgetViewController *)self gridView];
  [v10 setCellsToClear:v3];
}

- (void)tintWithHomeScreenTintColor:(CGColor *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(WFWidgetViewController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(WFWidgetViewController *)self gridView];
    v9 = [(WFWidgetViewController *)self gridView];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v16 = 134219010;
    v17 = self;
    v18 = 2112;
    v19 = v7;
    v20 = 2048;
    v21 = v8;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = a3;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_DEFAULT, "<%p %@> Assigning home screen tint color to <%p %@>: %@", &v16, 0x34u);
  }

  if (a3)
  {
    v12 = [MEMORY[0x1E69E09E0] colorWithCGColor:a3];
  }

  else
  {
    v12 = 0;
  }

  homeScreenTintColor = self->_homeScreenTintColor;
  self->_homeScreenTintColor = v12;
  v14 = v12;

  v15 = [(WFWidgetViewController *)self gridView];
  [v15 tintWithHomeScreenTintColor:v14];
}

- (id)runningContextForAction:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [objc_opt_class() runningStates];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 action];
        v10 = v3;
        v11 = v9;
        v12 = v11;
        if (v11 == v10)
        {

LABEL_16:
          v5 = v8;
          goto LABEL_17;
        }

        if (v3 && v11)
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

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)publishingHandlerForCell:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__WFWidgetViewController_publishingHandlerForCell___block_invoke;
  v9[3] = &unk_1E8307F20;
  v10 = v4;
  v11 = self;
  v5 = v4;
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
    v3 = [objc_opt_class() runningStates];
    v4 = [(WFWidgetViewController *)self gridView];
    v5 = [v4 actionsForVisibleCells];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v3;
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
          v12 = [v11 action];

          if (v12)
          {
            v13 = [v11 action];
            v14 = [v5 containsObject:v13];

            if (v14)
            {
              v15 = [(WFWidgetViewController *)self gridView];
              v16 = [v11 action];
              v17 = [v15 cellForSystemAction:v16];

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

              v21 = [objc_opt_class() progressSubscribers];
              [v21 setObject:v20 forKey:v11];
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
  v19 = [MEMORY[0x1E695DEE8] currentCalendar];
  v2 = [MEMORY[0x1E695DF00] date];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [objc_opt_class() runningStates];
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 creationDate];
        v11 = [v19 components:16 fromDate:v10 toDate:v2 options:0];

        if ([v11 day] >= 7)
        {
          if (!v6)
          {
            v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          }

          [v6 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
        v18 = [objc_opt_class() runningStates];
        [v18 removeObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }
}

- (void)resumeRunningWithCell:(id)a3
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WFWidgetViewController_resumeRunningWithCell___block_invoke;
  block[3] = &unk_1E83086B0;
  v5 = v4;
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

- (void)stopRunningWithCell:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__WFWidgetViewController_stopRunningWithCell___block_invoke;
  v6[3] = &unk_1E83086D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
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

- (void)showRunningUIForCell:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__WFWidgetViewController_showRunningUIForCell___block_invoke;
  v6[3] = &unk_1E83086D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __47__WFWidgetViewController_showRunningUIForCell___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRunningState:1];
  [*(a1 + 40) setRunning:1];
  v2 = [*(a1 + 40) gridView];
  [v2 disableAllCellsExceptCell:*(a1 + 32)];
}

- (void)handleUpdateFromCache:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__WFWidgetViewController_handleUpdateFromCache___block_invoke;
  v6[3] = &unk_1E83086D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
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

- (unint64_t)limitFromOptions:(id)a3
{
  v4 = [a3 family];
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      return 16;
    }

    return 8;
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 == 2)
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

- (void)refreshActionsWithDataSource:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFWidgetViewController *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 134218242;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1C830A000, v5, OS_LOG_TYPE_DEFAULT, "<%p %@> Refreshing actions", &v10, 0x16u);
  }

  if ([(WFWidgetViewController *)self widgetType]== 1)
  {
    v8 = [(WFWidgetViewController *)self options];
    [v8 family];
  }

  v9 = [v4 configuredActions];
  [(WFWidgetViewController *)self layoutWithActions:v9 dataSource:v4];
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

- (void)layoutWithActions:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(WFWidgetViewController *)self setNeedsLayout:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__WFWidgetViewController_layoutWithActions_dataSource___block_invoke;
  block[3] = &unk_1E8308600;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
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

- (int64_t)widgetTypeFromOptions:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 intent];
  v5 = [v4 typeName];
  v6 = [v5 isEqualToString:@"sirikit.intents.custom.com.apple.WorkflowKit.ShortcutsIntents.WFShortcutsSmallWidgetConfigurationIntent"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v3 intent];
    v9 = [v8 typeName];
    v10 = [v9 isEqualToString:@"sirikit.intents.custom.com.apple.WorkflowKit.ShortcutsIntents.WFShortcutsWidgetConfigurationIntent"];

    if (v10)
    {
      v7 = 2;
    }

    else
    {
      v11 = [v3 intent];
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
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

      v14 = [v13 appIntentIdentifier];
      v15 = [v14 isEqualToString:@"WFShortcutsSmallWidgetConfigurationIntent"];

      if (v15)
      {
        v7 = 1;
      }

      else
      {
        v16 = [v13 appIntentIdentifier];
        v17 = [v16 isEqualToString:@"WFShortcutsWidgetConfigurationIntent"];

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
            v23 = v3;
            _os_log_impl(&dword_1C830A000, v18, OS_LOG_TYPE_FAULT, "%s Could not determine widget type from options %@", &v20, 0x16u);
          }

          v7 = 0;
        }
      }
    }
  }

  return v7;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WFWidgetViewController;
  [(WFWidgetViewController *)&v4 viewWillAppear:a3];
  [(WFWidgetViewController *)self restoreRunningStateIfNecessary];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(WFWidgetViewController *)self dataSource];
  [(WFWidgetViewController *)self refreshActionsWithDataSource:v3];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = WFWidgetViewController;
  [(WFWidgetViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(WFWidgetViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(WFWidgetViewController *)self gridView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)showWidgetGridViewIfNeeded
{
  v3 = [(WFWidgetViewController *)self emptyStateView];
  v4 = [v3 superview];

  if (v4)
  {
    v5 = [(WFWidgetViewController *)self emptyStateView];
    [v5 removeFromSuperview];
  }

  v6 = [(WFWidgetViewController *)self gridView];
  v7 = [v6 superview];

  if (!v7)
  {
    v9 = [(WFWidgetViewController *)self view];
    v8 = [(WFWidgetViewController *)self gridView];
    [v9 addSubview:v8];
  }
}

- (void)showEmptyStateViewIfNeeded
{
  v3 = [(WFWidgetViewController *)self gridView];
  v4 = [v3 superview];

  if (v4)
  {
    v5 = [(WFWidgetViewController *)self gridView];
    [v5 removeFromSuperview];
  }

  v11 = [(WFWidgetViewController *)self emptyStateTitle];
  v6 = [(WFWidgetViewController *)self emptyStateView];
  [v6 setTitleString:v11];

  v7 = [(WFWidgetViewController *)self emptyStateView];
  v8 = [v7 superview];

  if (!v8)
  {
    v9 = [(WFWidgetViewController *)self view];
    v10 = [(WFWidgetViewController *)self emptyStateView];
    [v9 addSubview:v10];
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
    v7 = [(WFWidgetViewController *)self view];
    [v7 bounds];
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
    v5 = [(WFWidgetViewController *)self options];
    v6 = [v5 family];
    v7 = [(WFWidgetViewController *)self widgetType];
    [(WFWidgetViewController *)self cornerRadius];
    v9 = v8;
    v10 = [(WFWidgetViewController *)self log];
    v11 = [(WFWidgetGridView *)v4 initWithFamily:v6 widgetType:v7 cornerRadius:v10 log:v9];

    [(WFWidgetGridView *)v11 setDelegate:self];
    [(WFWidgetGridView *)v11 setClipsToBounds:1];
    v12 = [(WFWidgetViewController *)self view];
    [v12 bounds];
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
    v4 = [(WFWidgetViewController *)self fetchDataSource];
    v5 = self->_dataSource;
    self->_dataSource = v4;

    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (id)fetchDataSource
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = [(WFWidgetViewController *)self options];
  v4 = [v3 intent];

  if (v4)
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

      v6 = [v4 linkAction];
      if (!v6)
      {
        v11 = getWFWidgetLogObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v47 = 136315394;
          v48 = "[WFWidgetViewController fetchDataSource]";
          v49 = 2112;
          v50 = v4;
          _os_log_impl(&dword_1C830A000, v11, OS_LOG_TYPE_ERROR, "%s Could not get link action from INAppIntent: %@", &v47, 0x16u);
        }

        v13 = 0;
        goto LABEL_45;
      }

      v7 = [(WFWidgetViewController *)self widgetType];
      v8 = [v6 parameters];
      v9 = v8;
      if (v7 == 1)
      {
        v10 = [v8 if_firstObjectPassingTest:&__block_literal_global_2299];
        v11 = [v10 value];

        v12 = [MEMORY[0x1E69E09F8] systemActionWithValue:v11];
        v13 = [[WFWidgetDataSource alloc] initWithAction:v12];
LABEL_44:

LABEL_45:
        goto LABEL_46;
      }

      v21 = [v8 if_firstObjectPassingTest:&__block_literal_global_95];
      v11 = [v21 value];

      v22 = [v11 value];
      if (v22)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
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

      v25 = [v24 identifier];

      v12 = [v25 instanceIdentifier];

      v26 = [MEMORY[0x1E695DFF8] URLWithString:v12];
      v27 = [v26 pathComponents];
      v28 = [v27 lastObject];
      v29 = v28;
      v30 = @"MyShortcuts";
      if (v28)
      {
        v30 = v28;
      }

      v31 = v30;

      v32 = v31;
      v33 = v32;
      if (v32 == @"all-shortcuts" || (v34 = [(__CFString *)v32 isEqualToString:@"all-shortcuts"], v33, v34))
      {

        v35 = [WFWidgetDataSource alloc];
        v36 = [(WFWidgetViewController *)self options];
        v37 = [(WFWidgetViewController *)self limitFromOptions:v36];
        v38 = @"MyShortcuts";
      }

      else
      {
        v39 = v33;
        v38 = v39;
        if (v39 == @"custom" || (v40 = [(__CFString *)v39 isEqualToString:@"custom"], v38, v40))
        {
          v41 = [v6 parameters];
          v42 = [v41 if_firstObjectPassingTest:&__block_literal_global_105];
          v36 = [v42 value];

          v43 = [v36 value];
          if (!v43 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {

            v44 = getWFGeneralLogObject();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v47 = 136315394;
              v48 = "[WFWidgetViewController fetchDataSource]";
              v49 = 2112;
              v50 = v6;
              _os_log_impl(&dword_1C830A000, v44, OS_LOG_TYPE_DEFAULT, "%s Got action %@", &v47, 0x16u);
            }

            v43 = 0;
          }

          v45 = [v43 if_compactMap:&__block_literal_global_109];
          v13 = [[WFWidgetDataSource alloc] initWithActions:v45];

          goto LABEL_43;
        }

        v35 = [WFWidgetDataSource alloc];
        v36 = [(WFWidgetViewController *)self options];
        v37 = [(WFWidgetViewController *)self limitFromOptions:v36];
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
  v16 = [(WFWidgetViewController *)self options];
  v4 = [v15 workflowOrFolderIdentifierFromINIntentBackedOptions:v16 widgetType:{-[WFWidgetViewController widgetType](self, "widgetType")}];

  if (v4)
  {
    if ([(WFWidgetViewController *)self widgetType]!= 1)
    {
      if ([(WFWidgetViewController *)self widgetType]!= 2)
      {
        v13 = 0;
        goto LABEL_47;
      }

      v20 = [WFWidgetDataSource alloc];
      v6 = [(WFWidgetViewController *)self options];
      v17 = [(WFWidgetDataSource *)v20 initWithIdentifier:v4 limit:[(WFWidgetViewController *)self limitFromOptions:v6]];
      goto LABEL_19;
    }

    v6 = [WFWidgetDataSource systemActionForWorkflowIdentifier:v4];
    if (v6)
    {
      v17 = [[WFWidgetDataSource alloc] initWithAction:v6];
LABEL_19:
      v13 = v17;
      goto LABEL_46;
    }
  }

  else
  {
    v6 = getWFWidgetLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v18 = [(WFWidgetViewController *)self options];
      v19 = [v18 intent];
      v47 = 136315394;
      v48 = "[WFWidgetViewController fetchDataSource]";
      v49 = 2112;
      v50 = v19;
      _os_log_impl(&dword_1C830A000, v6, OS_LOG_TYPE_ERROR, "%s Could not get workflow or folder identifier: %@", &v47, 0x16u);
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
  v5 = [(WFWidgetViewController *)self view];
  v6 = [v5 layer];
  [v6 setCornerRadius:v4];

  v7 = *MEMORY[0x1E69796E8];
  v8 = [(WFWidgetViewController *)self view];
  v9 = [v8 layer];
  [v9 setCornerCurve:v7];

  v10 = [(WFWidgetViewController *)self view];
  v11 = [v10 layer];
  [v11 setMasksToBounds:1];
}

- (void)dealloc
{
  [(WFWidgetViewController *)self stopObservingContentSizeCategoryNotifications];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"WFWidgetCacheUpdateNotification" object:0];

  v4.receiver = self;
  v4.super_class = WFWidgetViewController;
  [(WFWidgetViewController *)&v4 dealloc];
}

- (WFWidgetViewController)initWithOptions:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v34.receiver = self;
  v34.super_class = WFWidgetViewController;
  v6 = [(WFWidgetViewController *)&v34 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
    v8 = os_log_create("com.apple.shortcuts", "Widget");
    log = v7->_log;
    v7->_log = v8;

    v7->_widgetType = [(WFWidgetViewController *)v7 widgetTypeFromOptions:v5];
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

      v16 = [(WFWidgetViewController *)v7 dataSource];
      [(WFWidgetViewController *)v7 refreshActionsWithDataSource:v16];
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
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v7 selector:sel_handleUpdateFromCache_ name:@"WFWidgetCacheUpdateNotification" object:0];

    v22 = objc_opt_new();
    v23 = [v22 previewMetricsSpecificationForBundleIdentifier:*MEMORY[0x1E69E0FB0]];

    v24 = [v23 metricsForFamily:{objc_msgSend(v5, "family")}];
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

+ (id)workflowOrFolderIdentifierFromINIntentBackedOptions:(id)a3 widgetType:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 1)
  {
    v11 = [v5 intent];
    v8 = [v11 valueForKey:@"shortcut"];

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

  if (a4 == 2)
  {
    v7 = [v5 intent];
    v8 = [v7 valueForKey:@"folder"];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 identifier];

        if (!v9)
        {
          v10 = @"MyShortcuts";
LABEL_11:

          goto LABEL_13;
        }

LABEL_9:
        v10 = [v8 identifier];
        goto LABEL_11;
      }
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

@end