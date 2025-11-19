@interface SPUIProactiveResultsViewController
- (BOOL)searchAgentHasWindow:(id)a3;
- (SPUIProactiveResultsViewController)initWithSearchModel:(id)a3 searchEntity:(id)a4;
- (unint64_t)refreshResultsWithContext:(id)a3 allowPartialUpdates:(BOOL)a4;
- (void)fadeInFooterView;
- (void)searchAgentUpdatedResults:(id)a3;
- (void)setFooterView:(id)a3;
@end

@implementation SPUIProactiveResultsViewController

- (void)fadeInFooterView
{
  v3 = [(SearchUIResultsViewController *)self footerView];
  [v3 alpha];
  v5 = v4;

  if (v5 < 1.0)
  {
    v6 = [(SPUIProactiveResultsViewController *)self footerTransitionTimer];
    [v6 invalidate];

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

- (SPUIProactiveResultsViewController)initWithSearchModel:(id)a3 searchEntity:(id)a4
{
  v5.receiver = self;
  v5.super_class = SPUIProactiveResultsViewController;
  return [(SPUIResultsViewController *)&v5 initWithSearchModel:a3 searchEntity:a4];
}

- (void)searchAgentUpdatedResults:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIResultsViewController *)self sections];
  v6 = [v5 count];

  v7 = [(SearchUIResultsViewController *)self footerView];
  if (v7)
  {
    v8 = v7;
    v9 = [(SearchUIResultsViewController *)self sections];
    v10 = [v9 count];
    v11 = [v4 sections];
    v12 = [v11 count];

    if (v10 < v12)
    {
      v13 = [(SearchUIResultsViewController *)self footerView];
      [v13 setAlpha:0.0];
    }
  }

  v17.receiver = self;
  v17.super_class = SPUIProactiveResultsViewController;
  [(SPUIResultsViewController *)&v17 searchAgentUpdatedResults:v4];
  if ([v4 queryPartiallyComplete])
  {
    v14 = [v4 sections];
    v15 = [v14 count];

    if (v15)
    {
      if (!v6)
      {
        v16 = [(SPUIProactiveResultsViewController *)self view];
        [v16 layoutBelowIfNeeded];
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

- (void)setFooterView:(id)a3
{
  v4 = a3;
  v5 = [(SPUIProactiveResultsViewController *)self footerTransitionTimer];
  v6 = [v5 isValid];

  if (v6)
  {
    [v4 setAlpha:0.0];
  }

  v7 = [(SearchUIResultsViewController *)self sections];
  v8 = [v7 count];

  if (!v8)
  {
    [v4 setAlpha:0.0];
  }

  v11.receiver = self;
  v11.super_class = SPUIProactiveResultsViewController;
  [(SearchUIResultsViewController *)&v11 setFooterView:v4];
  v9 = [(SearchUIResultsViewController *)self sections];
  v10 = [v9 count];

  if (!v10)
  {
    [(SPUIProactiveResultsViewController *)self fadeInFooterView];
  }
}

- (BOOL)searchAgentHasWindow:(id)a3
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 applicationState] == 0;

  return v4;
}

- (unint64_t)refreshResultsWithContext:(id)a3 allowPartialUpdates:(BOOL)a4
{
  v6 = a3;
  v7 = [(SPUIResultsViewController *)self model];

  if (v7)
  {
    v8 = [(SPUIResultsViewController *)self model];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [(SPUIResultsViewController *)self model];
      if (a4 || (-[SearchUIResultsViewController sections](self, "sections"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 count], v11, !v12))
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

        [v10 updateWithQueryContext:v6];
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

        [v10 refreshWithQueryContext:v6];
      }

      v23 = [v10 queryTask];
      v24 = [v23 query];
      v17 = [v24 queryIdent];
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

      v20 = [(SPUIResultsViewController *)self model];
      [v20 updateWithQueryContext:v6];

      v17 = 0;
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

    v17 = -1;
  }

  return v17;
}

@end