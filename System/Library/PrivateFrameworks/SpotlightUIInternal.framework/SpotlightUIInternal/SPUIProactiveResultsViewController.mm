@interface SPUIProactiveResultsViewController
- (BOOL)searchAgentHasWindow:(id)window;
- (SPUIProactiveResultsViewController)initWithSearchModel:(id)model searchEntity:(id)entity;
- (unint64_t)refreshResultsWithContext:(id)context allowPartialUpdates:(BOOL)updates;
- (void)fadeInFooterView;
- (void)searchAgentUpdatedResults:(id)results;
- (void)setFooterView:(id)view;
@end

@implementation SPUIProactiveResultsViewController

- (void)fadeInFooterView
{
  footerView = [(SearchUIResultsViewController *)self footerView];
  [footerView alpha];
  v5 = v4;

  if (v5 < 1.0)
  {
    footerTransitionTimer = [(SPUIProactiveResultsViewController *)self footerTransitionTimer];
    [footerTransitionTimer invalidate];

    objc_initWeak(&location, self);
    v7 = MEMORY[0x277CBEBB8];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __54__SPUIProactiveResultsViewController_fadeInFooterView__block_invoke;
    v12 = &unk_279D07040;
    objc_copyWeak(&v13, &location);
    v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:&v9 block:0.5];
    [(SPUIProactiveResultsViewController *)self setFooterTransitionTimer:v8, v9, v10, v11, v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (SPUIProactiveResultsViewController)initWithSearchModel:(id)model searchEntity:(id)entity
{
  v5.receiver = self;
  v5.super_class = SPUIProactiveResultsViewController;
  return [(SPUIResultsViewController *)&v5 initWithSearchModel:model searchEntity:entity];
}

- (void)searchAgentUpdatedResults:(id)results
{
  resultsCopy = results;
  sections = [(SearchUIResultsViewController *)self sections];
  v6 = [sections count];

  footerView = [(SearchUIResultsViewController *)self footerView];
  if (footerView)
  {
    v8 = footerView;
    sections2 = [(SearchUIResultsViewController *)self sections];
    v10 = [sections2 count];
    sections3 = [resultsCopy sections];
    v12 = [sections3 count];

    if (v10 < v12)
    {
      footerView2 = [(SearchUIResultsViewController *)self footerView];
      [footerView2 setAlpha:0.0];
    }
  }

  v17.receiver = self;
  v17.super_class = SPUIProactiveResultsViewController;
  [(SPUIResultsViewController *)&v17 searchAgentUpdatedResults:resultsCopy];
  if ([resultsCopy queryPartiallyComplete])
  {
    sections4 = [resultsCopy sections];
    v15 = [sections4 count];

    if (v15)
    {
      if (!v6)
      {
        view = [(SPUIProactiveResultsViewController *)self view];
        [view layoutBelowIfNeeded];
      }
    }
  }

  [(SPUIProactiveResultsViewController *)self fadeInFooterView];
}

void __54__SPUIProactiveResultsViewController_fadeInFooterView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D4C898];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SPUIProactiveResultsViewController_fadeInFooterView__block_invoke_2;
  v5[3] = &unk_279D06FA8;
  objc_copyWeak(&v6, (a1 + 32));
  [v4 performAnimatableChanges:v5];
  [v3 invalidate];
  objc_destroyWeak(&v6);
}

void __54__SPUIProactiveResultsViewController_fadeInFooterView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained footerView];
  [v1 setAlpha:1.0];
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  footerTransitionTimer = [(SPUIProactiveResultsViewController *)self footerTransitionTimer];
  isValid = [footerTransitionTimer isValid];

  if (isValid)
  {
    [viewCopy setAlpha:0.0];
  }

  sections = [(SearchUIResultsViewController *)self sections];
  v8 = [sections count];

  if (!v8)
  {
    [viewCopy setAlpha:0.0];
  }

  v11.receiver = self;
  v11.super_class = SPUIProactiveResultsViewController;
  [(SearchUIResultsViewController *)&v11 setFooterView:viewCopy];
  sections2 = [(SearchUIResultsViewController *)self sections];
  v10 = [sections2 count];

  if (!v10)
  {
    [(SPUIProactiveResultsViewController *)self fadeInFooterView];
  }
}

- (BOOL)searchAgentHasWindow:(id)window
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v4 = [mEMORY[0x277D75128] applicationState] == 0;

  return v4;
}

- (unint64_t)refreshResultsWithContext:(id)context allowPartialUpdates:(BOOL)updates
{
  contextCopy = context;
  model = [(SPUIResultsViewController *)self model];

  if (model)
  {
    model2 = [(SPUIResultsViewController *)self model];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      model3 = [(SPUIResultsViewController *)self model];
      if (updates || (-[SearchUIResultsViewController sections](self, "sections"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 count], v11, !v12))
      {
        v21 = MEMORY[0x277D65D40];
        v22 = *(MEMORY[0x277D65D40] + 40);
        if (!v22)
        {
          SPUIInitLogging();
          v22 = *(v21 + 40);
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26B837000, v22, OS_LOG_TYPE_DEFAULT, "Fetching full proactive results.", buf, 2u);
        }

        [model3 updateWithQueryContext:contextCopy];
      }

      else
      {
        v13 = MEMORY[0x277D65D40];
        v14 = *(MEMORY[0x277D65D40] + 40);
        if (!v14)
        {
          SPUIInitLogging();
          v14 = *(v13 + 40);
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_26B837000, v14, OS_LOG_TYPE_DEFAULT, "Refreshing proactive results.", v26, 2u);
        }

        [model3 refreshWithQueryContext:contextCopy];
      }

      queryTask = [model3 queryTask];
      query = [queryTask query];
      queryIdent = [query queryIdent];
    }

    else
    {
      v18 = MEMORY[0x277D65D40];
      v19 = *(MEMORY[0x277D65D40] + 40);
      if (!v19)
      {
        SPUIInitLogging();
        v19 = *(v18 + 40);
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SPUIProactiveResultsViewController refreshResultsWithContext:v19 allowPartialUpdates:?];
      }

      model4 = [(SPUIResultsViewController *)self model];
      [model4 updateWithQueryContext:contextCopy];

      queryIdent = 0;
    }
  }

  else
  {
    v15 = MEMORY[0x277D65D40];
    v16 = *(MEMORY[0x277D65D40] + 40);
    if (!v16)
    {
      SPUIInitLogging();
      v16 = *(v15 + 40);
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SPUIProactiveResultsViewController refreshResultsWithContext:v16 allowPartialUpdates:?];
    }

    queryIdent = -1;
  }

  return queryIdent;
}

@end