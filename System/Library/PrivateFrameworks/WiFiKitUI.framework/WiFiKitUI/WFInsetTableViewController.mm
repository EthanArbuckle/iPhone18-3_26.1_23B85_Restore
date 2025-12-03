@interface WFInsetTableViewController
- (BOOL)WFShouldInsetListView:(id)view;
- (WFInsetTableViewController)init;
- (void)_updateSectionContentInsetWithAnimation:(BOOL)animation;
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
  view = [(WFInsetTableViewController *)self view];
  [view setLayoutMarginsFollowReadableWidth:1];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = WFInsetTableViewController;
  [(WFInsetTableViewController *)&v3 viewDidLayoutSubviews];
  [(WFInsetTableViewController *)self _updateSectionContentInsetWithAnimation:1];
}

- (void)_updateSectionContentInsetWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  view = [(WFInsetTableViewController *)self view];
  v6 = [(WFInsetTableViewController *)self WFShouldInsetListView:view];

  v7 = MEMORY[0x277D76F30];
  if (v6)
  {
    view2 = [(WFInsetTableViewController *)self view];
    [view2 safeAreaInsets];
    v10 = v9;

    view3 = [(WFInsetTableViewController *)self view];
    [view3 layoutMargins];
    v13 = v12;
    if (v10 > 0.0)
    {
      view4 = [(WFInsetTableViewController *)self view];
      [view4 safeAreaInsets];
      v13 = v13 - v15;
    }

    view5 = [(WFInsetTableViewController *)self view];
    [view5 safeAreaInsets];
    v18 = v17;

    v19 = 0.0;
    if (v18 <= 0.0)
    {
      view6 = [(WFInsetTableViewController *)self view];
      [view6 layoutMargins];
      v19 = v21;
    }
  }

  else
  {
    v19 = *MEMORY[0x277D76F30];
    v13 = *MEMORY[0x277D76F30];
  }

  tableView = [(WFInsetTableViewController *)self tableView];
  [tableView _sectionContentInset];
  v24 = v23;
  v26 = v25;

  if (v13 != v24 || v19 != v26)
  {
    v28 = *v7;
    if (animationCopy && self->_sectionContentInsetInitialized)
    {
      tableView2 = [(WFInsetTableViewController *)self tableView];
      [tableView2 _setSectionContentInset:{v28, v13, v28, v19}];
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

- (BOOL)WFShouldInsetListView:(id)view
{
  viewCopy = view;
  if (_os_feature_enabled_impl())
  {
    v4 = 1;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen traitCollection];

    if ([traitCollection userInterfaceIdiom] == 1)
    {
      v4 = 1;
    }

    else
    {
      [viewCopy frame];
      Width = CGRectGetWidth(v14);
      v8 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D76820], *MEMORY[0x277D76818], 0}];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
      v10 = [v8 containsObject:preferredContentSizeCategory];

      horizontalSizeClass = [traitCollection horizontalSizeClass];
      if (Width <= 320.0 && (v10 & 1) != 0)
      {
        v4 = 0;
      }

      else
      {
        v12 = horizontalSizeClass != 2 || Width <= 320.0;
        v4 = (v12 | v10 ^ 1) & ((Width <= 320.0) | v10) ^ 1;
      }
    }
  }

  return v4 & 1;
}

@end