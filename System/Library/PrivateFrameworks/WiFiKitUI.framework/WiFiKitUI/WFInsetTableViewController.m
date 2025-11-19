@interface WFInsetTableViewController
- (BOOL)WFShouldInsetListView:(id)a3;
- (WFInsetTableViewController)init;
- (void)_updateSectionContentInsetWithAnimation:(BOOL)a3;
- (void)loadView;
- (void)viewDidLayoutSubviews;
@end

@implementation WFInsetTableViewController

- (WFInsetTableViewController)init
{
  v4.receiver = self;
  v4.super_class = WFInsetTableViewController;
  v2 = [(WFInsetTableViewController *)&v4 init];
  [(WFInsetTableViewController *)v2 setReloadDataOnUpdateSectionContentInset:1];
  return v2;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = WFInsetTableViewController;
  [(WFInsetTableViewController *)&v4 loadView];
  v3 = [(WFInsetTableViewController *)self view];
  [v3 setLayoutMarginsFollowReadableWidth:1];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = WFInsetTableViewController;
  [(WFInsetTableViewController *)&v3 viewDidLayoutSubviews];
  [(WFInsetTableViewController *)self _updateSectionContentInsetWithAnimation:1];
}

- (void)_updateSectionContentInsetWithAnimation:(BOOL)a3
{
  v3 = a3;
  v5 = [(WFInsetTableViewController *)self view];
  v6 = [(WFInsetTableViewController *)self WFShouldInsetListView:v5];

  v7 = MEMORY[0x277D76F30];
  if (v6)
  {
    v8 = [(WFInsetTableViewController *)self view];
    [v8 safeAreaInsets];
    v10 = v9;

    v11 = [(WFInsetTableViewController *)self view];
    [v11 layoutMargins];
    v13 = v12;
    if (v10 > 0.0)
    {
      v14 = [(WFInsetTableViewController *)self view];
      [v14 safeAreaInsets];
      v13 = v13 - v15;
    }

    v16 = [(WFInsetTableViewController *)self view];
    [v16 safeAreaInsets];
    v18 = v17;

    v19 = 0.0;
    if (v18 <= 0.0)
    {
      v20 = [(WFInsetTableViewController *)self view];
      [v20 layoutMargins];
      v19 = v21;
    }
  }

  else
  {
    v19 = *MEMORY[0x277D76F30];
    v13 = *MEMORY[0x277D76F30];
  }

  v22 = [(WFInsetTableViewController *)self tableView];
  [v22 _sectionContentInset];
  v24 = v23;
  v26 = v25;

  if (v13 != v24 || v19 != v26)
  {
    v28 = *v7;
    if (v3 && self->_sectionContentInsetInitialized)
    {
      v29 = [(WFInsetTableViewController *)self tableView];
      [v29 _setSectionContentInset:{v28, v13, v28, v19}];
    }

    else
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __70__WFInsetTableViewController__updateSectionContentInsetWithAnimation___block_invoke;
      v30[3] = &unk_279EC5B68;
      v30[4] = self;
      *&v30[5] = v28;
      *&v30[6] = v13;
      *&v30[7] = v28;
      *&v30[8] = v19;
      [MEMORY[0x277D75D18] performWithoutAnimation:v30];
      self->_sectionContentInsetInitialized = 1;
    }
  }
}

void __70__WFInsetTableViewController__updateSectionContentInsetWithAnimation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) tableView];
  [v6 _setSectionContentInset:{v2, v3, v4, v5}];

  if ([*(a1 + 32) reloadDataOnUpdateSectionContentInset])
  {
    v7 = [*(a1 + 32) tableView];
    [v7 reloadData];
  }
}

- (BOOL)WFShouldInsetListView:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = 1;
  }

  else
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    v6 = [v5 traitCollection];

    if ([v6 userInterfaceIdiom] == 1)
    {
      v4 = 1;
    }

    else
    {
      [v3 frame];
      Width = CGRectGetWidth(v14);
      v8 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D76820], *MEMORY[0x277D76818], 0}];
      v9 = [v6 preferredContentSizeCategory];
      v10 = [v8 containsObject:v9];

      v11 = [v6 horizontalSizeClass];
      if (Width <= 320.0 && (v10 & 1) != 0)
      {
        v4 = 0;
      }

      else
      {
        v12 = v11 != 2 || Width <= 320.0;
        v4 = (v12 | v10 ^ 1) & ((Width <= 320.0) | v10) ^ 1;
      }
    }
  }

  return v4 & 1;
}

@end