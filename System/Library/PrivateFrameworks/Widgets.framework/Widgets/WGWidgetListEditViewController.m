@interface WGWidgetListEditViewController
- (BOOL)_isNewItem:(id)a3;
- (BOOL)showsFavoritesSection;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (WGWidgetListEditViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (WGWidgetListEditViewControllerDataSource)dataSource;
- (WGWidgetListEditViewControllerDelegate)delegate;
- (id)_enabledItemIdentifiersForGroupID:(id)a3;
- (id)_groupKeyForSectionAtIndex:(unint64_t)a3;
- (id)_indexPathForItemWithIdentifier:(id)a3;
- (id)_itemIdentifierForIndexPath:(id)a3;
- (id)_itemIdentifiersInSection:(unint64_t)a3;
- (id)_widgetListEditViewTableHeaderView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)_compareItemWithIdentifier:(id)a3 andItemWithIdentifierConsideringIsNew:(id)a4;
- (int64_t)_indexOfLastEnabledWidgetInSection:(unint64_t)a3;
- (int64_t)_layoutMode;
- (int64_t)disabledWidgetsSection;
- (int64_t)favoritesSection;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)todaySection;
- (unint64_t)_indexForInsertingItemWithIdentifier:(id)a3 intoArray:(id)a4;
- (unint64_t)_sectionIndexForGroupKey:(id)a3;
- (void)_acknowledgeItemsAndResetNewWidgetsCount;
- (void)_acknowledgeItemsSavingItemState:(BOOL)a3;
- (void)_disableItemAtIndexPath:(id)a3 inTableView:(id)a4;
- (void)_dismissDueToInterfaceActionAndAcknowledgeItemsSavingItemState:(BOOL)a3;
- (void)_enableItemAtIndexPath:(id)a3 inTableView:(id)a4;
- (void)_loadItems;
- (void)_saveItemArrangement;
- (void)_saveItemState;
- (void)pinSwitchChanaged:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setWidgetsPinned:(BOOL)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation WGWidgetListEditViewController

- (WGWidgetListEditViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v14.receiver = self;
  v14.super_class = WGWidgetListEditViewController;
  v4 = [(WGWidgetListEditViewController *)&v14 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D757A0]);
    navigationController = v4->_navigationController;
    v4->_navigationController = v5;

    [(WGWidgetListEditViewController *)v4 addChildViewController:v4->_navigationController];
    [(UINavigationController *)v4->_navigationController didMoveToParentViewController:v4];
    v7 = [objc_alloc(MEMORY[0x277D75B58]) initWithStyle:2];
    tableViewController = v4->_tableViewController;
    v4->_tableViewController = v7;

    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v4 action:sel__cancelWidgetListEditView];
    v10 = [(UITableViewController *)v4->_tableViewController navigationItem];
    [v10 setLeftBarButtonItem:v9];

    v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v4 action:sel__dismissWidgetListEditView];
    v12 = [(UITableViewController *)v4->_tableViewController navigationItem];
    [v12 setRightBarButtonItem:v11];

    [(UITableViewController *)v4->_tableViewController setEditing:1 animated:0];
    [(UINavigationController *)v4->_navigationController pushViewController:v4->_tableViewController animated:0];
  }

  return v4;
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    if (objc_opt_respondsToSelector())
    {
      v7 = [obj groupsForWidgetListEditViewController:self];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"TodayGroup", 0}];
    }

    v8 = v7;
    objc_storeStrong(&self->_groupIDs, v7);

    self->_showsFavorites = [obj widgetListEditViewControllerShouldShowFavorites:self];
    if (objc_opt_respondsToSelector())
    {
      v9 = [obj shouldShowWidgetsPinButtonForWidgetListEditViewController:self];
      self->_showsPinSection = v9;
      if (v9)
      {
        if (objc_opt_respondsToSelector())
        {
          v10 = [obj areWidgetsPinnedForWidgetListEditViewController:self];
          self->_widgetsPinnedOriginally = v10;
          self->_widgetsPinned = v10;
        }
      }
    }

    v5 = [(WGWidgetListEditViewController *)self _loadItems];
    v6 = obj;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = WGWidgetListEditViewController;
  [(WGWidgetListEditViewController *)&v17 viewDidLoad];
  v3 = [MEMORY[0x277D75348] _systemGroupBackgroundColor];
  v4 = [(WGWidgetListEditViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(WGWidgetListEditViewController *)self _layoutMode];
  v6 = [(UITableViewController *)self->_tableViewController tableView];
  [v6 setDataSource:self];
  [v6 setDelegate:self];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"WidgetCell"];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"PinCell"];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"EmptyFavoritesCell"];
  [v6 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"WidgetHeader"];
  [v6 setBackgroundView:0];
  [v6 setBackgroundColor:v3];
  [v6 setShowsHorizontalScrollIndicator:0];
  v7 = 0;
  v8 = v5 & 0xFFFFFFFFFFFFFFFELL;
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v7 = [v6 showsVerticalScrollIndicator];
  }

  [v6 setShowsVerticalScrollIndicator:v7];
  [v6 _setDrawsSeparatorAtTopOfSections:1];
  [MEMORY[0x277CD9378] widgetRowHeight];
  [v6 setEstimatedRowHeight:?];
  v9 = [[WGWidgetListEditViewTableHeaderView alloc] initWithReuseIdentifier:@"WidgetTableHeader" forTodayView:self->_showsFavorites];
  [v6 setTableHeaderView:v9];
  v10 = [(UINavigationController *)self->_navigationController view];
  [v10 setBackgroundColor:v3];

  if (v8 == 2)
  {
    v11 = [(UINavigationController *)self->_navigationController view];
    v12 = [v11 layer];
    [v12 setCornerRadius:8.0];
  }

  v13 = [(WGWidgetListEditViewController *)self view];
  v14 = [(UINavigationController *)self->_navigationController view];
  [v13 addSubview:v14];

  v15 = [(UINavigationController *)self->_navigationController navigationBar];
  v16 = [MEMORY[0x277D75348] _systemGroupBackgroundColor];
  [v15 setBarTintColor:v16];

  [v15 setTranslucent:0];
  [v15 _setHidesShadow:1];
}

- (int64_t)_layoutMode
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained layoutModeForWidgetListEditViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewWillLayoutSubviews
{
  v65.receiver = self;
  v65.super_class = WGWidgetListEditViewController;
  [(WGWidgetListEditViewController *)&v65 viewWillLayoutSubviews];
  v3 = [(WGWidgetListEditViewController *)self _layoutMode];
  v4 = [(UINavigationController *)self->_navigationController navigationBar];
  [v4 frame];
  x = v66.origin.x;
  width = v66.size.width;
  MaxY = CGRectGetMaxY(v66);
  v8 = [(UINavigationController *)self->_navigationController navigationBar];
  v9 = [v8 _backgroundView];

  v10 = [v9 superview];
  v11 = [v4 superview];
  [v10 convertRect:v11 fromView:{x, 0.0, width, MaxY}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v9 setFrame:{v13, v15, v17, v19}];
  v20 = [(UITableViewController *)self->_tableViewController tableView];
  [v20 setRowHeight:*MEMORY[0x277D76F30]];
  v21 = [v20 tableHeaderView];
  [v20 setTableHeaderView:0];
  [v21 frame];
  if (CGRectEqualToRect(v67, *MEMORY[0x277CBF3A0]))
  {
    v22 = [(WGWidgetListEditViewController *)self view];
    [v22 bounds];
    [v21 setFrame:{0.0, 0.0}];
  }

  [v21 sizeToFit];
  [v20 setTableHeaderView:v21];
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v23 = [(WGWidgetListEditViewController *)self view];
    [v23 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = [MEMORY[0x277D759A0] mainScreen];
    [v32 _referenceBounds];
    CGRectGetHeight(v68);
    v33 = [MEMORY[0x277D759A0] mainScreen];
    UIRoundToScreenScale();
    v35 = v34;

    v36 = [MEMORY[0x277D75418] currentDevice];
    v37 = [v36 userInterfaceIdiom];

    if ((v37 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v38 = 16.0;
    }

    else
    {
      v38 = 0.0;
    }

    v69.origin.x = v25;
    v69.origin.y = v27;
    v69.size.width = v29;
    v69.size.height = v31;
    CGRectGetHeight(v69);
    v70.origin.x = v25;
    v70.origin.y = v38;
    v70.size.width = v35;
    v70.size.height = v31;
    CGRectGetMinY(v70);
    v39 = [MEMORY[0x277D759A0] mainScreen];
    [v39 scale];
    v64 = v40;
    UIRectCenteredXInRectScale();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v49 = [(UINavigationController *)self->_navigationController view];
    [v49 setFrame:{v42, v44, v46, v48}];

    v50 = [(UITableViewController *)self->_tableViewController tableView];
    [v50 contentInset];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v59 = [MEMORY[0x277D75418] currentDevice];
    v60 = [v59 userInterfaceIdiom];

    v61 = 30.0;
    if ((v60 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v61 = 8.0;
    }

    v62 = v56 + v61;
    v63 = [(UITableViewController *)self->_tableViewController tableView];
    [v63 setContentInset:{v52, v54, v62, v58}];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WGWidgetListEditViewController;
  [(WGWidgetListEditViewController *)&v4 viewWillAppear:a3];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"WGWidgetListEditViewControllerWillAppear" object:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WGWidgetListEditViewController;
  [(WGWidgetListEditViewController *)&v4 viewDidAppear:a3];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"WGWidgetListEditViewControllerDidAppear" object:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WGWidgetListEditViewController;
  [(WGWidgetListEditViewController *)&v4 viewWillDisappear:a3];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"WGWidgetListEditViewControllerWillDisappear" object:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WGWidgetListEditViewController;
  [(WGWidgetListEditViewController *)&v5 viewDidDisappear:a3];
  if (!self->_dismissingDueToInterfaceAction)
  {
    [(WGWidgetListEditViewController *)self _acknowledgeItemsSavingItemState:0];
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"WGWidgetListEditViewControllerDidDisappear" object:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetEditListViewController:self traitCollectionDidChange:v4];
  }

  v6.receiver = self;
  v6.super_class = WGWidgetListEditViewController;
  [(WGWidgetListEditViewController *)&v6 traitCollectionDidChange:v4];
}

- (BOOL)showsFavoritesSection
{
  v3 = [(WGWidgetListEditViewController *)self showsFavorites];
  if (v3)
  {

    LOBYTE(v3) = [(WGWidgetListEditViewController *)self areWidgetsPinned];
  }

  return v3;
}

- (int64_t)todaySection
{
  v3 = [(NSArray *)self->_groupIDs indexOfObject:@"TodayGroup"];
  v4 = v3 + [(WGWidgetListEditViewController *)self showsPinSection];
  return v4 + [(WGWidgetListEditViewController *)self showsFavoritesSection];
}

- (int64_t)favoritesSection
{
  if ([(WGWidgetListEditViewController *)self showsFavoritesSection])
  {
    return [(WGWidgetListEditViewController *)self showsPinSection];
  }

  else
  {
    return -1;
  }
}

- (int64_t)disabledWidgetsSection
{
  v3 = [(NSArray *)self->_groupIDs count];
  v4 = v3 + [(WGWidgetListEditViewController *)self showsPinSection];
  return v4 + [(WGWidgetListEditViewController *)self showsFavoritesSection];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(WGWidgetListEditViewController *)self showsPinSection];
  v5 = [(WGWidgetListEditViewController *)self showsFavoritesSection];
  v6 = [(NSArray *)self->_groupIDs count];
  v7 = 1;
  if (v4)
  {
    v7 = 2;
  }

  return v7 + v5 + v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(WGWidgetListEditViewController *)self todaySection]== a4)
  {
    v6 = 1008;
LABEL_3:
    v7 = *(&self->super.super.super.isa + v6);

    return [v7 count];
  }

  if ([(WGWidgetListEditViewController *)self favoritesSection]!= a4)
  {
    if ([(WGWidgetListEditViewController *)self disabledWidgetsSection]!= a4)
    {
      return [(WGWidgetListEditViewController *)self pinSection]== a4;
    }

    v6 = 1024;
    goto LABEL_3;
  }

  result = [(NSMutableArray *)self->_favoriteItemIDs count];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == [(WGWidgetListEditViewController *)self pinSection])
  {
    v9 = [v6 dequeueReusableCellWithIdentifier:@"PinCell" forIndexPath:v7];
    v10 = [v9 pinSwitch];
    [v10 setOn:{-[WGWidgetListEditViewController areWidgetsPinned](self, "areWidgetsPinned")}];

    v11 = [v9 pinSwitch];
    [v11 addTarget:self action:sel_pinSwitchChanaged_ forControlEvents:4096];

    [v9 startAnimating];
  }

  else
  {
    v12 = [v7 section];
    if (v12 == [(WGWidgetListEditViewController *)self favoritesSection]&& ![(NSMutableArray *)self->_favoriteItemIDs count])
    {
      v9 = [v6 dequeueReusableCellWithIdentifier:@"EmptyFavoritesCell" forIndexPath:v7];
    }

    else
    {
      v9 = [v6 dequeueReusableCellWithIdentifier:@"WidgetCell" forIndexPath:v7];
      v13 = [(WGWidgetListEditViewController *)self _itemIdentifierForIndexPath:v7];
      [v9 setEditing:{-[UITableViewController isEditing](self->_tableViewController, "isEditing")}];
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      if (objc_opt_respondsToSelector())
      {
        v15 = [WeakRetained widgetListEditViewController:self displayNameForItemWithIdentifier:v13];
      }

      else
      {
        v15 = v13;
      }

      v16 = v15;
      v17 = [v9 textLabel];
      [v17 setText:v16];

      v18 = [v9 textLabel];
      LODWORD(v19) = 1057803469;
      [v18 _setHyphenationFactor:v19];

      if (objc_opt_respondsToSelector())
      {
        objc_initWeak(&location, self);
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __66__WGWidgetListEditViewController_tableView_cellForRowAtIndexPath___block_invoke;
        v25 = &unk_279ED0A90;
        objc_copyWeak(&v28, &location);
        v26 = v6;
        v27 = v13;
        [WeakRetained widgetListEditViewController:self requestsIconForItemWithIdentifier:v27 withHandler:&v22];

        objc_destroyWeak(&v28);
        objc_destroyWeak(&location);
      }

      [v9 setWidgetEnabled:{objc_msgSend(v7, "section", v22, v23, v24, v25) != -[WGWidgetListEditViewController disabledWidgetsSection](self, "disabledWidgetsSection")}];
      v20 = [v7 section];
      if (v20 == [(WGWidgetListEditViewController *)self disabledWidgetsSection])
      {
        [v9 setShowsDot:{-[WGWidgetListEditViewController _isNewItem:](self, "_isNewItem:", v13)}];
      }
    }
  }

  return v9;
}

void __66__WGWidgetListEditViewController_tableView_cellForRowAtIndexPath___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__WGWidgetListEditViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
  v5[3] = &unk_279ED0A68;
  objc_copyWeak(&v9, a1 + 6);
  v6 = a1[4];
  v7 = a1[5];
  v8 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v9);
}

void __66__WGWidgetListEditViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4 = [WeakRetained _indexPathForItemWithIdentifier:*(a1 + 40)];
  v5 = [v3 cellForRowAtIndexPath:v4];

  v6 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__WGWidgetListEditViewController_tableView_cellForRowAtIndexPath___block_invoke_3;
  v13[3] = &unk_279ED0A40;
  v7 = v5;
  v14 = v7;
  v15 = *(a1 + 48);
  [v6 performWithoutAnimation:v13];
  if ([WeakRetained wg_isAppearingOrAppeared])
  {
    v8 = [v7 imageView];
    v9 = [v8 image];

    if (!v9)
    {
      v10 = MEMORY[0x277D75D18];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __66__WGWidgetListEditViewController_tableView_cellForRowAtIndexPath___block_invoke_4;
      v11[3] = &unk_279ED0948;
      v12 = v7;
      [v10 animateWithDuration:v11 animations:0.25];
    }
  }
}

uint64_t __66__WGWidgetListEditViewController_tableView_cellForRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) imageView];
  [v2 setImage:*(a1 + 40)];

  [*(a1 + 32) setNeedsLayout];
  v3 = *(a1 + 32);

  return [v3 layoutIfNeeded];
}

void __66__WGWidgetListEditViewController_tableView_cellForRowAtIndexPath___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) imageView];
  [v1 pl_performCrossFadeIfNecessary];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(WGWidgetListEditViewController *)self disabledWidgetsSection]== a4)
  {
    v6 = _os_feature_enabled_impl();
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = v7;
    if (v6)
    {
      v9 = @"WIDGETS_EDIT_DISABLED_LEGACY";
    }

    else
    {
      v9 = @"WIDGETS_EDIT_DISABLED";
    }

    goto LABEL_10;
  }

  if ([(WGWidgetListEditViewController *)self showsFavoritesSection])
  {
    if ([(WGWidgetListEditViewController *)self todaySection]== a4)
    {
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = v7;
      v9 = @"WIDGETS_EDIT_FAVORITES";
LABEL_10:
      v10 = [v7 localizedStringForKey:v9 value:&stru_2883435D8 table:@"Widgets"];

      goto LABEL_12;
    }

    if ([(WGWidgetListEditViewController *)self favoritesSection]== a4)
    {
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = v7;
      v9 = @"WIDGETS_EDIT_PINNED_FAVORITES";
      goto LABEL_10;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:{@"WidgetHeader", a4}];
  v5 = [v4 textLabel];
  v6 = [MEMORY[0x277D75348] _secondaryLabelColor];
  [v5 setTextColor:v6];

  return v4;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if ([(WGWidgetListEditViewController *)self favoritesSection]== a4)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"WIDGETS_EDIT_FAVORITES_DESCRIPTION" value:&stru_2883435D8 table:@"Widgets"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 section];
  if (v9 == [(WGWidgetListEditViewController *)self favoritesSection])
  {
    v10 = v8;
    if ([(NSMutableArray *)self->_favoriteItemIDs count])
    {
      goto LABEL_18;
    }

    v11 = MEMORY[0x277CCAA70];
    v12 = [(WGWidgetListEditViewController *)self favoritesSection];
    v13 = v11;
    v14 = 1;
    goto LABEL_15;
  }

  if (v9 != [(WGWidgetListEditViewController *)self disabledWidgetsSection])
  {
    if (v9 == [(WGWidgetListEditViewController *)self pinSection])
    {
      v17 = v7;
LABEL_16:
      v10 = v17;
      v15 = v8;
      goto LABEL_17;
    }

    v18 = -[WGWidgetListEditViewController _indexOfFirstEnabledWidgetInSection:](self, "_indexOfFirstEnabledWidgetInSection:", [v8 section]);
    if ([v8 row] >= v18)
    {
      v20 = -[WGWidgetListEditViewController _indexOfLastEnabledWidgetInSection:](self, "_indexOfLastEnabledWidgetInSection:", [v8 section]);
      v21 = [v7 section];
      v22 = v20 - (v21 == [v8 section]);
      v10 = v8;
      if ([v8 row] <= v22)
      {
        goto LABEL_18;
      }

      if (v22 >= v18)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = v18;
      }

      v24 = MEMORY[0x277CCAA70];
      v12 = [v8 section];
      v13 = v24;
      v14 = v23;
    }

    else
    {
      v19 = MEMORY[0x277CCAA70];
      v12 = [v8 section];
      v13 = v19;
      v14 = v18;
    }

LABEL_15:
    v17 = [v13 indexPathForRow:v14 inSection:v12];
    goto LABEL_16;
  }

  v15 = [(WGWidgetListEditViewController *)self _itemIdentifierForIndexPath:v7];
  v16 = [(WGWidgetListEditViewController *)self _indexForInsertingItemWithIdentifier:v15 intoArray:self->_disabledItemIDs];
  v10 = [MEMORY[0x277CCAA70] indexPathForRow:v16 inSection:{-[WGWidgetListEditViewController disabledWidgetsSection](self, "disabledWidgetsSection")}];

LABEL_17:
LABEL_18:

  return v10;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v16 = [(WGWidgetListEditViewController *)self _itemIdentifierForIndexPath:v9];
  v11 = [v9 section];

  v12 = [(WGWidgetListEditViewController *)self _itemIdentifiersInSection:v11];
  v13 = -[WGWidgetListEditViewController _itemIdentifiersInSection:](self, "_itemIdentifiersInSection:", [v8 section]);
  [v12 removeObject:v16];
  v14 = [v8 row];
  v15 = [v8 section];

  if (v15 == -[WGWidgetListEditViewController favoritesSection](self, "favoritesSection") && ![v13 count])
  {
    v14 = 0;
  }

  [v13 insertObject:v16 atIndex:v14];
  [v10 reloadData];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  v7 = 0;
  if (v6 != [(WGWidgetListEditViewController *)self pinSection])
  {
    v8 = [v5 section];
    if (v8 != [(WGWidgetListEditViewController *)self favoritesSection]|| [(NSMutableArray *)self->_favoriteItemIDs count])
    {
      v7 = 1;
    }
  }

  return v7;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  if (v6 == [(WGWidgetListEditViewController *)self disabledWidgetsSection])
  {
    v7 = 2;
  }

  else
  {
    v8 = [v5 section];
    v7 = 0;
    if (v8 != [(WGWidgetListEditViewController *)self pinSection])
    {
      v9 = [v5 section];
      if (v9 != [(WGWidgetListEditViewController *)self favoritesSection]|| [(NSMutableArray *)self->_favoriteItemIDs count])
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"WIDGETS_EDIT_REMOVE" value:&stru_2883435D8 table:@"Widgets"];

  return v5;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v9 = a3;
  v8 = a5;
  if (v8)
  {
    if (a4 == 1)
    {
      [(WGWidgetListEditViewController *)self _disableItemAtIndexPath:v8 inTableView:v9];
    }

    else if (a4 == 2)
    {
      [(WGWidgetListEditViewController *)self _enableItemAtIndexPath:v8 inTableView:v9];
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v11 = a3;
  if (self->_contentMinY == 0.0)
  {
    v4 = [(WGWidgetListEditViewController *)self _widgetListEditViewTableHeaderView];
    [v4 contentMinY];
    self->_contentMinY = v5;
  }

  v6 = [(UINavigationController *)self->_navigationController navigationBar];
  contentMinY = self->_contentMinY;
  [v11 contentOffset];
  v9 = v8;
  [v11 contentInset];
  [v6 _setHidesShadow:contentMinY > v9 + v10];
}

- (void)_acknowledgeItemsSavingItemState:(BOOL)a3
{
  if (a3)
  {
    [(WGWidgetListEditViewController *)self _saveItemState];

    [(WGWidgetListEditViewController *)self _saveItemArrangement];
  }

  else
  {

    [(WGWidgetListEditViewController *)self _acknowledgeItemsAndResetNewWidgetsCount];
  }
}

- (void)_dismissDueToInterfaceActionAndAcknowledgeItemsSavingItemState:(BOOL)a3
{
  self->_dismissingDueToInterfaceAction = 1;
  [(WGWidgetListEditViewController *)self _acknowledgeItemsSavingItemState:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __97__WGWidgetListEditViewController__dismissDueToInterfaceActionAndAcknowledgeItemsSavingItemState___block_invoke;
    v5[3] = &unk_279ED0AB8;
    objc_copyWeak(&v6, &location);
    [WeakRetained dismissWidgetListEditViewController:self animated:1 withCompletion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __97__WGWidgetListEditViewController__dismissDueToInterfaceActionAndAcknowledgeItemsSavingItemState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setDismissingDueToInterfaceAction:0];
}

- (id)_enabledItemIdentifiersForGroupID:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"TodayGroup"])
  {
    v5 = &OBJC_IVAR___WGWidgetListEditViewController__enabledTodayItemIDs;
  }

  else
  {
    if (![v4 isEqual:@"FavoriteGroup"])
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = &OBJC_IVAR___WGWidgetListEditViewController__favoriteItemIDs;
  }

  v6 = *(&self->super.super.super.isa + *v5);
LABEL_7:
  v7 = v6;

  return v6;
}

- (void)_loadItems
{
  v57 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = self->_groupIDs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v50 + 1) + 8 * i);
        v11 = [WeakRetained widgetListEditViewController:self itemIdentifiersForGroup:v10];
        if (v11)
        {
          [v4 setObject:v11 forKey:v10];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v7);
  }

  v12 = [WeakRetained disabledInterfaceItemIdentifiersForWidgetListEditViewController:self];
  [v4 setObject:v12 forKey:@"Disabled"];

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  enabledTodayItemIDs = self->_enabledTodayItemIDs;
  self->_enabledTodayItemIDs = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  favoriteItemIDs = self->_favoriteItemIDs;
  self->_favoriteItemIDs = v15;

  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  disabledItemIDs = self->_disabledItemIDs;
  self->_disabledItemIDs = v17;

  if (objc_opt_respondsToSelector())
  {
    v19 = [WeakRetained widgetListEditViewControllerShouldIncludeInternalWidgets:self];
  }

  else
  {
    v19 = 0;
  }

  v39 = [(WGWidgetListEditViewController *)self showsFavorites];
  v40 = WeakRetained;
  v38 = [WeakRetained areWidgetsPinnedForWidgetListEditViewController:self];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v4;
  v35 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v35)
  {
    v34 = *v47;
    do
    {
      v20 = 0;
      do
      {
        if (*v47 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v20;
        v21 = *(*(&v46 + 1) + 8 * v20);
        v22 = [(WGWidgetListEditViewController *)self _enabledItemIdentifiersForGroupID:v21, v34];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v23 = [obj objectForKey:v21];
        v24 = [v23 countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v43;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v43 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v42 + 1) + 8 * j);
              if (([v21 isEqualToString:@"FavoriteGroup"] & 1) == 0 && ((v19 & 1) != 0 || (WGIsWidgetWithBundleIdentifierInternal(v28) & 1) == 0))
              {
                if (!v39 || ![v40 widgetListEditViewController:self isItemWithIdentifierFavorited:v28] || (-[NSMutableArray addObject:](self->_favoriteItemIDs, "addObject:", v28), (v38 & 1) == 0))
                {
                  v29 = [v40 widgetListEditViewController:self isItemWithIdentifierEnabled:v28];
                  v30 = v22;
                  if ((v29 & 1) == 0)
                  {
                    v30 = self->_disabledItemIDs;
                  }

                  [(NSMutableArray *)v30 addObject:v28];
                }
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v42 objects:v54 count:16];
          }

          while (v25);
        }

        v20 = v37 + 1;
      }

      while (v37 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v35);
  }

  v31 = self->_disabledItemIDs;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __44__WGWidgetListEditViewController__loadItems__block_invoke;
  v41[3] = &unk_279ED0AE0;
  v41[4] = self;
  [(NSMutableArray *)v31 sortUsingComparator:v41];
  v32 = [(NSMutableArray *)self->_favoriteItemIDs copy];
  originalFavoriteItemIDs = self->_originalFavoriteItemIDs;
  self->_originalFavoriteItemIDs = v32;
}

- (void)_saveItemArrangement
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_groupIDs;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v16 = v4;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(WGWidgetListEditViewController *)self _enabledItemIdentifiersForGroupID:v9];
        if (-[WGWidgetListEditViewController showsFavorites](self, "showsFavorites") && -[WGWidgetListEditViewController areWidgetsPinned](self, "areWidgetsPinned") && [v9 isEqualToString:@"TodayGroup"])
        {
          v11 = [(WGWidgetListEditViewController *)self _enabledItemIdentifiersForGroupID:@"FavoriteGroup"];
          v12 = [v11 arrayByAddingObjectsFromArray:v10];
          v13 = v3;
          v14 = [v12 mutableCopy];

          v10 = v14;
          v3 = v13;
          v4 = v16;
        }

        if (v10)
        {
          [v3 setObject:v10 forKey:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained widgetListEditViewController:self didReorderItemsWithIdentifiersInGroups:v3];
}

- (void)_acknowledgeItemsAndResetNewWidgetsCount
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __74__WGWidgetListEditViewController__acknowledgeItemsAndResetNewWidgetsCount__block_invoke;
  v12 = &unk_279ED0B08;
  v13 = v3;
  v4 = v3;
  v5 = MEMORY[0x2743E8C10](&v9);
  (v5)[2](v5, self->_enabledTodayItemIDs);
  (v5)[2](v5, self->_favoriteItemIDs);
  (v5)[2](v5, self->_disabledItemIDs);
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained widgetListEditViewController:self acknowledgeInterfaceItemsWithIdentifiers:{v4, v9, v10, v11, v12}];

  v14 = @"WGNewWidgetsCountKey";
  v15[0] = &unk_28834F130;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"WGAvailableWidgetsUpdatedNotification" object:self userInfo:v7];
}

void __74__WGWidgetListEditViewController__acknowledgeItemsAndResetNewWidgetsCount__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) addObject:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_saveItemState
{
  if ([(WGWidgetListEditViewController *)self showsFavorites]&& [(WGWidgetListEditViewController *)self areWidgetsPinned])
  {
    v3 = [(NSMutableArray *)self->_favoriteItemIDs arrayByAddingObjectsFromArray:self->_enabledTodayItemIDs];
  }

  else
  {
    v3 = self->_enabledTodayItemIDs;
  }

  v6 = v3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained widgetListEditViewController:self setEnabled:1 forItemsWithIdentifiers:v6];
  [WeakRetained widgetListEditViewController:self setEnabled:0 forItemsWithIdentifiers:self->_disabledItemIDs];
  if ([(WGWidgetListEditViewController *)self showsFavorites]&& ([(NSArray *)self->_originalFavoriteItemIDs isEqual:self->_favoriteItemIDs]& 1) == 0)
  {
    [WeakRetained widgetListEditViewController:self updateFavoritesToIdentifiers:self->_favoriteItemIDs];
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(WGWidgetListEditViewController *)self areWidgetsPinned];
    if (v5 != [(WGWidgetListEditViewController *)self wereWidgetsPinnedOriginally])
    {
      [WeakRetained widgetListEditViewController:self didChangeWidgetsPinning:v5];
    }
  }

  [(WGWidgetListEditViewController *)self _acknowledgeItemsAndResetNewWidgetsCount];
}

- (id)_groupKeyForSectionAtIndex:(unint64_t)a3
{
  if ([(WGWidgetListEditViewController *)self todaySection]== a3)
  {
    v5 = @"TodayGroup";
  }

  else if ([(WGWidgetListEditViewController *)self favoritesSection]== a3)
  {
    v5 = @"FavoriteGroup";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_sectionIndexForGroupKey:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    goto LABEL_7;
  }

  if (![v4 isEqual:@"TodayGroup"])
  {
    if ([v4 isEqual:@"FavoriteGroup"])
    {
      v5 = [(WGWidgetListEditViewController *)self favoritesSection];
      goto LABEL_6;
    }

LABEL_7:
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

  v5 = [(WGWidgetListEditViewController *)self todaySection];
LABEL_6:
  v6 = v5;
LABEL_8:

  return v6;
}

- (id)_itemIdentifiersInSection:(unint64_t)a3
{
  if ([(WGWidgetListEditViewController *)self todaySection]== a3)
  {
    v5 = &OBJC_IVAR___WGWidgetListEditViewController__enabledTodayItemIDs;
LABEL_7:
    v6 = *(&self->super.super.super.isa + *v5);
    goto LABEL_8;
  }

  if ([(WGWidgetListEditViewController *)self favoritesSection]== a3)
  {
    v5 = &OBJC_IVAR___WGWidgetListEditViewController__favoriteItemIDs;
    goto LABEL_7;
  }

  if ([(WGWidgetListEditViewController *)self disabledWidgetsSection]== a3)
  {
    v5 = &OBJC_IVAR___WGWidgetListEditViewController__disabledItemIDs;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)_indexPathForItemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  do
  {
    v6 = [(UITableViewController *)self->_tableViewController tableView];
    v7 = [(WGWidgetListEditViewController *)self numberOfSectionsInTableView:v6];

    if (v5 >= v7)
    {
      break;
    }

    v8 = [(WGWidgetListEditViewController *)self _itemIdentifiersInSection:v5];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__WGWidgetListEditViewController__indexPathForItemWithIdentifier___block_invoke;
    v12[3] = &unk_279ED0B30;
    v13 = v4;
    v14 = &v16;
    v15 = v5;
    [v8 enumerateObjectsUsingBlock:v12];

    v9 = v17[5];
    ++v5;
  }

  while (!v9);
  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __66__WGWidgetListEditViewController__indexPathForItemWithIdentifier___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 isEqual:a1[4]])
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:a1[6]];
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

- (void)_enableItemAtIndexPath:(id)a3 inTableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WGWidgetListEditViewController *)self _itemIdentifierForIndexPath:v6];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v10 = [WeakRetained widgetListEditViewController:self defaultGroupForItemWithIdentifier:v8];

  v11 = [(WGWidgetListEditViewController *)self _sectionIndexForGroupKey:v10];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(WGWidgetListEditViewController *)self todaySection];
  }

  v12 = [(WGWidgetListEditViewController *)self _indexOfLastEnabledWidgetInSection:v11];
  [(NSMutableArray *)self->_disabledItemIDs removeObject:v8];
  v13 = [(WGWidgetListEditViewController *)self _itemIdentifiersInSection:v11];
  [v13 insertObject:v8 atIndex:v12 + 1];

  v14 = [MEMORY[0x277CCAA70] indexPathForRow:v12 + 1 inSection:v11];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__WGWidgetListEditViewController__enableItemAtIndexPath_inTableView___block_invoke;
  v18[3] = &unk_279ED0B58;
  v19 = v7;
  v20 = v6;
  v21 = v14;
  v15 = v14;
  v16 = v6;
  v17 = v7;
  [v17 performBatchUpdates:v18 completion:0];
}

void __69__WGWidgetListEditViewController__enableItemAtIndexPath_inTableView___block_invoke(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v7[0] = a1[5];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v2 deleteRowsAtIndexPaths:v3 withRowAnimation:100];

  v4 = a1[4];
  v6 = a1[6];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:1];
  [v4 insertRowsAtIndexPaths:v5 withRowAnimation:100];
}

- (void)_disableItemAtIndexPath:(id)a3 inTableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WGWidgetListEditViewController *)self _itemIdentifierForIndexPath:v6];
  v9 = [(WGWidgetListEditViewController *)self _indexForInsertingItemWithIdentifier:v8 intoArray:self->_disabledItemIDs];
  [(NSMutableArray *)self->_enabledTodayItemIDs removeObject:v8];
  [(NSMutableArray *)self->_favoriteItemIDs removeObject:v8];
  [(NSMutableArray *)self->_disabledItemIDs insertObject:v8 atIndex:v9];
  v10 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:{-[WGWidgetListEditViewController disabledWidgetsSection](self, "disabledWidgetsSection")}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__WGWidgetListEditViewController__disableItemAtIndexPath_inTableView___block_invoke;
  v14[3] = &unk_279ED0B80;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v18 = v10;
  v11 = v10;
  v12 = v7;
  v13 = v6;
  [v12 performBatchUpdates:v14 completion:0];
}

void __70__WGWidgetListEditViewController__disableItemAtIndexPath_inTableView___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) section];
  if (v2 == [*(a1 + 40) favoritesSection] && !objc_msgSend(*(*(a1 + 40) + 1016), "count"))
  {
    v7 = *(a1 + 48);
    v10[0] = *(a1 + 32);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v7 reloadRowsAtIndexPaths:v4 withRowAnimation:100];
  }

  else
  {
    v3 = *(a1 + 48);
    v9 = *(a1 + 32);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
    [v3 deleteRowsAtIndexPaths:v4 withRowAnimation:100];
  }

  v5 = *(a1 + 48);
  v8 = *(a1 + 56);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  [v5 insertRowsAtIndexPaths:v6 withRowAnimation:100];
}

- (id)_itemIdentifierForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[WGWidgetListEditViewController _itemIdentifiersInSection:](self, "_itemIdentifiersInSection:", [v4 section]);
  v6 = [v4 row];
  if (v6 >= [v5 count])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  return v7;
}

- (unint64_t)_indexForInsertingItemWithIdentifier:(id)a3 intoArray:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 count];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__WGWidgetListEditViewController__indexForInsertingItemWithIdentifier_intoArray___block_invoke;
  v11[3] = &unk_279ED0BA8;
  v11[4] = self;
  v9 = [v6 indexOfObject:v7 inSortedRange:0 options:v8 usingComparator:{1024, v11}];

  return v9;
}

- (int64_t)_indexOfLastEnabledWidgetInSection:(unint64_t)a3
{
  v3 = [(WGWidgetListEditViewController *)self _itemIdentifiersInSection:a3];
  v4 = [v3 count] - 1;

  return v4;
}

- (BOOL)_isNewItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  LOBYTE(self) = [WeakRetained widgetListEditViewController:self isItemWithIdentifierNew:v4];

  return self;
}

- (int64_t)_compareItemWithIdentifier:(id)a3 andItemWithIdentifierConsideringIsNew:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WGWidgetListEditViewController *)self _isNewItem:v6];
  if (v8 == [(WGWidgetListEditViewController *)self _isNewItem:v7])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (objc_opt_respondsToSelector())
    {
      v11 = [WeakRetained widgetListEditViewController:self displayNameForItemWithIdentifier:v6];
      v12 = [WeakRetained widgetListEditViewController:self displayNameForItemWithIdentifier:v7];
    }

    else
    {
      v11 = v6;
      v12 = v7;
    }

    v13 = v12;
    v9 = [v11 localizedStandardCompare:v12];
  }

  else if ([(WGWidgetListEditViewController *)self _isNewItem:v6])
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)_widgetListEditViewTableHeaderView
{
  v2 = [(UITableViewController *)self->_tableViewController tableView];
  v3 = [v2 tableHeaderView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)pinSwitchChanaged:(id)a3
{
  v4 = [a3 isOn];

  [(WGWidgetListEditViewController *)self setWidgetsPinned:v4];
}

- (void)setWidgetsPinned:(BOOL)a3
{
  if (self->_widgetsPinned != a3)
  {
    v3 = a3;
    v5 = [(WGWidgetListEditViewController *)self todaySection];
    self->_widgetsPinned = v3;
    v6 = [(WGWidgetListEditViewController *)self todaySection];
    if (v3)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = [(NSMutableArray *)self->_favoriteItemIDs count];
    if (v9)
    {
      v10 = v9;
      for (i = 0; i != v10; ++i)
      {
        v12 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:v7];
        [v8 addObject:v12];
      }
    }

    enabledTodayItemIDs = self->_enabledTodayItemIDs;
    if (v3)
    {
      [(NSMutableArray *)enabledTodayItemIDs removeObjectsInArray:self->_favoriteItemIDs];
    }

    else
    {
      [(NSMutableArray *)enabledTodayItemIDs replaceObjectsInRange:0 withObjectsFromArray:0, self->_favoriteItemIDs];
    }

    v14 = [(UITableViewController *)self->_tableViewController tableView];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__WGWidgetListEditViewController_setWidgetsPinned___block_invoke;
    v17[3] = &unk_279ED0BD0;
    v20 = v3;
    v18 = v14;
    v19 = v8;
    v15 = v8;
    v16 = v14;
    [v16 performBatchUpdates:v17 completion:0];
  }
}

uint64_t __51__WGWidgetListEditViewController_setWidgetsPinned___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
  if (v2 == 1)
  {
    [v3 insertSections:v4 withRowAnimation:0];

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 deleteRowsAtIndexPaths:v6 withRowAnimation:0];
  }

  else
  {
    [v3 deleteSections:v4 withRowAnimation:0];

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);

    return [v8 insertRowsAtIndexPaths:v9 withRowAnimation:0];
  }
}

- (WGWidgetListEditViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (WGWidgetListEditViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end