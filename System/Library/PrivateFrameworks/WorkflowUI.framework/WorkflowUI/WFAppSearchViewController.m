@interface WFAppSearchViewController
- (UIImage)placeholderImage;
- (UITableView)tableView;
- (WFAppSearchViewController)initWithAppSearchType:(int64_t)a3 omittedAppBundleIDs:(id)a4 allowMultipleSelection:(BOOL)a5 selectedApps:(id)a6;
- (WFAppSearchViewControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)applicationIconImageForBundleIdentifier:(id)a3;
- (id)filteredApps;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)adjustInsetsForKeyboard;
- (void)cancel;
- (void)dealloc;
- (void)done;
- (void)loadApps;
- (void)loadView;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateDoneButtonEnabledState;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFAppSearchViewController

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (WFAppSearchViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v3 = [(WFAppSearchViewController *)self tableView];
  [v3 reloadData];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v4 = [(WFAppSearchViewController *)self tableView:a3];
  [v4 reloadData];
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = [(WFAppSearchViewController *)self filteredApps:a3];
  if ([v4 count])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 44.0;
  }

  return v5;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = [(WFAppSearchViewController *)self filteredApps:a3];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    v9 = [(WFAppSearchViewController *)self view];
    [v9 bounds];
    v7 = [v8 initWithFrame:{0.0, 0.0, CGRectGetWidth(v17), 0.0}];

    v10 = objc_alloc(MEMORY[0x277D756B8]);
    v11 = [(WFAppSearchViewController *)self view];
    [v11 bounds];
    v12 = [v10 initWithFrame:{15.0, 0.0, CGRectGetWidth(v18) + -30.0, 0.0}];

    [v12 setAutoresizingMask:21];
    v13 = WFLocalizedString(@"No results.");
    [v12 setText:v13];

    v14 = [MEMORY[0x277D75348] lightGrayColor];
    [v12 setTextColor:v14];

    [v7 addSubview:v12];
  }

  return v7;
}

- (void)updateDoneButtonEnabledState
{
  v3 = [(WFAppSearchViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItem];

  if (v4)
  {
    v8 = [(WFAppSearchViewController *)self selectedApps];
    v5 = [v8 count] != 0;
    v6 = [(WFAppSearchViewController *)self navigationItem];
    v7 = [v6 rightBarButtonItem];
    [v7 setEnabled:v5];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(WFAppSearchViewController *)self filteredApps];
  v8 = [v6 row];
  if (v8 < [v7 count])
  {
    v9 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
    if ([(WFAppSearchViewController *)self allowMultipleSelection])
    {
      v10 = [v17 cellForRowAtIndexPath:v6];
      if ([v10 accessoryType])
      {
        [v10 setAccessoryType:0];
        v11 = [(WFAppSearchViewController *)self selectedApps];
        [v11 removeObject:v9];
      }

      else
      {
        [v10 setAccessoryType:3];
        v11 = [(WFAppSearchViewController *)self selectedApps];
        [v11 addObject:v9];
      }

      [v17 deselectRowAtIndexPath:v6 animated:1];
      [(WFAppSearchViewController *)self updateDoneButtonEnabledState];
    }

    else
    {
      v12 = [(WFAppSearchViewController *)self navigationItem];
      v13 = [v12 searchController];
      v14 = [v13 isActive];

      if (v14)
      {
        v15 = [(WFAppSearchViewController *)self navigationItem];
        v16 = [v15 searchController];
        [v16 setActive:0];
      }

      [v17 deselectRowAtIndexPath:v6 animated:1];
      v10 = [(WFAppSearchViewController *)self delegate];
      [v10 appSearchViewController:self didFinishWithApp:v9];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFAppSearchViewController *)self filteredApps];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  v10 = [v6 dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v7];
  v11 = [v9 localizedName];
  v12 = [v10 textLabel];
  [v12 setText:v11];

  if (-[WFAppSearchViewController allowMultipleSelection](self, "allowMultipleSelection") && (-[WFAppSearchViewController selectedApps](self, "selectedApps"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:v9], v13, (v14 & 1) != 0))
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [v10 setAccessoryType:v15];
  v16 = [(WFAppSearchViewController *)self placeholderImage];
  v17 = [v10 imageView];
  [v17 setImage:v16];

  v18 = [v9 bundleIdentifier];

  if (v18)
  {
    v19 = [(WFAppSearchViewController *)self cachedAppIconForBundleId];
    v20 = [v9 bundleIdentifier];
    v21 = [v19 objectForKeyedSubscript:v20];

    if (v21)
    {
      v22 = [v10 imageView];
      [v22 setImage:v21];
    }

    else
    {
      v23 = dispatch_get_global_queue(0, 0);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __61__WFAppSearchViewController_tableView_cellForRowAtIndexPath___block_invoke;
      v25[3] = &unk_279EE8138;
      v25[4] = self;
      v26 = v9;
      v27 = v6;
      v28 = v7;
      dispatch_async(v23, v25);
    }
  }

  return v10;
}

void __61__WFAppSearchViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleIdentifier];
  v4 = [v2 applicationIconImageForBundleIdentifier:v3];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WFAppSearchViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
  block[3] = &unk_279EE78C8;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v4;
  v5 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __61__WFAppSearchViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) cellForRowAtIndexPath:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [v7 imageView];
  [v3 setImage:v2];

  [v7 setNeedsLayout];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) cachedAppIconForBundleId];
  v6 = [*(a1 + 64) bundleIdentifier];
  [v5 setObject:v4 forKeyedSubscript:v6];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WFAppSearchViewController *)self filteredApps:a3];
  v5 = [v4 count];

  return v5;
}

- (UIImage)placeholderImage
{
  placeholderImage = self->_placeholderImage;
  if (!placeholderImage)
  {
    v9.width = 29.0;
    v9.height = 29.0;
    UIGraphicsBeginImageContextWithOptions(v9, 1, 0.0);
    v4 = [MEMORY[0x277D75348] whiteColor];
    [v4 setFill];

    v10.origin.x = 0.0;
    v10.origin.y = 0.0;
    v10.size.width = 29.0;
    v10.size.height = 29.0;
    UIRectFill(v10);
    v5 = UIGraphicsGetImageFromCurrentImageContext();
    v6 = self->_placeholderImage;
    self->_placeholderImage = v5;

    UIGraphicsEndImageContext();
    placeholderImage = self->_placeholderImage;
  }

  return placeholderImage;
}

- (id)applicationIconImageForBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x277D7C540];
  v5 = a3;
  v6 = [v4 sharedRegistry];
  v7 = [v6 appWithIdentifier:v5];

  v8 = [v7 icon];
  v9 = [v8 UIImage];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [(WFAppSearchViewController *)self placeholderImage];
  }

  v11 = v10;

  return v11;
}

- (id)filteredApps
{
  v3 = [(WFAppSearchViewController *)self navigationItem];
  v4 = [v3 searchController];
  v5 = [v4 searchBar];

  v6 = [v5 text];
  v7 = [v6 length];
  v8 = [(WFAppSearchViewController *)self apps];
  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__WFAppSearchViewController_filteredApps__block_invoke;
    v11[3] = &unk_279EE78A0;
    v12 = v6;
    v9 = [v8 if_objectsPassingTest:v11];

    v8 = v9;
  }

  return v8;
}

uint64_t __41__WFAppSearchViewController_filteredApps__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 localizedName];
  v4 = [v3 lowercaseString];
  v5 = [*(a1 + 32) lowercaseString];
  v6 = [v4 containsString:v5];

  return v6;
}

- (void)loadApps
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WFAppSearchViewController_loadApps__block_invoke;
  block[3] = &unk_279EE8A78;
  block[4] = self;
  dispatch_async(v3, block);
}

void __37__WFAppSearchViewController_loadApps__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = WFInstalledAppsEnumerator();
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      v6 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        if ([v7 wf_isAvailableInContext:0])
        {
          v9 = [*(a1 + 32) omittedAppBundleIDs];
          v10 = [v7 bundleIdentifier];
          v11 = [v9 containsObject:v10];

          if ((v11 & 1) == 0)
          {
            if ([*(a1 + 32) appSearchType] != 1)
            {
              goto LABEL_12;
            }

            v12 = [v7 claimRecords];
            v13 = [v12 allObjects];
            v14 = [v13 if_flatMap:&__block_literal_global_3717];

            if ([v14 count] && (objc_msgSend(v14, "isEqualToArray:", &unk_2883C21C8) & 1) == 0)
            {

LABEL_12:
              v14 = [v7 compatibilityObject];
              [v18 addObject:v14];
            }
          }
        }

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"localizedName" ascending:1 selector:sel_localizedStandardCompare_];
  v25 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [v18 sortUsingDescriptors:v16];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WFAppSearchViewController_loadApps__block_invoke_3;
  block[3] = &unk_279EE8C58;
  block[4] = *(a1 + 32);
  v20 = v18;
  v17 = v18;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__WFAppSearchViewController_loadApps__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setApps:*(a1 + 40)];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = WFAppSearchViewController;
  [(WFAppSearchViewController *)&v6 viewWillAppear:a3];
  [(WFAppSearchViewController *)self updateDoneButtonEnabledState];
  v4 = [(WFAppSearchViewController *)self apps];
  v5 = [v4 count];

  if (!v5)
  {
    [(WFAppSearchViewController *)self loadApps];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = WFAppSearchViewController;
  [(WFAppSearchViewController *)&v3 viewDidLayoutSubviews];
  [(WFAppSearchViewController *)self adjustInsetsForKeyboard];
}

- (void)adjustInsetsForKeyboard
{
  v3 = [MEMORY[0x277D7BDB0] sharedKeyboard];
  v4 = [v3 isVisible];

  if (v4)
  {
    v5 = [MEMORY[0x277D7BDB0] sharedKeyboard];
    v6 = [(WFAppSearchViewController *)self view];
    [v5 keyboardFrameInView:v6];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [(WFAppSearchViewController *)self view];
    [v15 bounds];
    v31.origin.x = v8;
    v31.origin.y = v10;
    v31.size.width = v12;
    v31.size.height = v14;
    v27 = CGRectIntersection(v26, v31);
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;

    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v20 = 0.0;
    if (!CGRectIsNull(v28))
    {
      v21 = [(WFAppSearchViewController *)self view];
      [v21 bounds];
      MaxY = CGRectGetMaxY(v29);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v20 = MaxY - CGRectGetMinY(v30);
    }

    v23 = [(WFAppSearchViewController *)self tableView];
    [v23 setContentInset:{0.0, 0.0, v20, 0.0}];
  }

  else
  {
    v23 = [(WFAppSearchViewController *)self tableView];
    [v23 setContentInset:{0.0, 0.0, 0.0, 0.0}];
    v20 = 0.0;
  }

  v24 = [(WFAppSearchViewController *)self tableView];
  [v24 setScrollIndicatorInsets:{0.0, 0.0, v20, 0.0}];
}

- (void)done
{
  v3 = [(WFAppSearchViewController *)self navigationItem];
  v4 = [v3 searchController];
  [v4 setActive:0];

  v7 = [(WFAppSearchViewController *)self delegate];
  v5 = [(WFAppSearchViewController *)self selectedApps];
  v6 = [v5 array];
  [v7 appSearchViewController:self didFinishWithApps:v6];
}

- (void)cancel
{
  v3 = [(WFAppSearchViewController *)self navigationItem];
  v4 = [v3 searchController];
  [v4 setActive:0];

  v5 = [(WFAppSearchViewController *)self delegate];
  [v5 appSearchViewControllerDidCancel:self];
}

- (void)loadView
{
  v42[4] = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = WFAppSearchViewController;
  [(WFAppSearchViewController *)&v41 loadView];
  v3 = WFLocalizedString(@"Choose App");
  [(WFAppSearchViewController *)self setTitle:v3];

  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel];
  v5 = [(WFAppSearchViewController *)self navigationItem];
  [v5 setLeftBarButtonItem:v4];

  if ([(WFAppSearchViewController *)self allowMultipleSelection])
  {
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_done];
    v7 = [(WFAppSearchViewController *)self navigationItem];
    [v7 setRightBarButtonItem:v6];
  }

  v8 = objc_alloc(MEMORY[0x277D75B40]);
  v9 = *MEMORY[0x277CBF3A0];
  v10 = *(MEMORY[0x277CBF3A0] + 8);
  v11 = *(MEMORY[0x277CBF3A0] + 16);
  v12 = *(MEMORY[0x277CBF3A0] + 24);
  v13 = [v8 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], v10, v11, v12}];
  [v13 setAllowsMultipleSelection:{-[WFAppSearchViewController allowMultipleSelection](self, "allowMultipleSelection")}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 setDataSource:self];
  [v13 setDelegate:self];
  v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v10, v11, v12}];
  [v13 setTableFooterView:v14];

  [v13 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];
  v15 = [(WFAppSearchViewController *)self view];
  [v15 addSubview:v13];

  [(WFAppSearchViewController *)self setTableView:v13];
  v16 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  [v16 setObscuresBackgroundDuringPresentation:0];
  v17 = [v16 searchBar];
  [v17 setAutocorrectionType:1];

  [v16 setHidesNavigationBarDuringPresentation:0];
  v18 = WFLocalizedString(@"Search Apps");
  v19 = [v16 searchBar];
  [v19 setPlaceholder:v18];

  v20 = [v16 searchBar];
  [v20 setDelegate:self];

  v21 = [(WFAppSearchViewController *)self navigationItem];
  [v21 setSearchController:v16];

  v22 = [(WFAppSearchViewController *)self navigationItem];
  [v22 setHidesSearchBarWhenScrolling:0];

  v33 = MEMORY[0x277CCAAD0];
  v39 = [v13 topAnchor];
  v40 = [(WFAppSearchViewController *)self view];
  v38 = [v40 topAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v42[0] = v37;
  v35 = [v13 leadingAnchor];
  v36 = [(WFAppSearchViewController *)self view];
  v34 = [v36 leadingAnchor];
  v32 = [v35 constraintEqualToAnchor:v34];
  v42[1] = v32;
  v31 = [v13 bottomAnchor];
  v23 = [(WFAppSearchViewController *)self view];
  v24 = [v23 bottomAnchor];
  v25 = [v31 constraintEqualToAnchor:v24];
  v42[2] = v25;
  v26 = [v13 trailingAnchor];
  v27 = [(WFAppSearchViewController *)self view];
  v28 = [v27 trailingAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  v42[3] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v33 activateConstraints:v30];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7BE00] object:0];

  v4.receiver = self;
  v4.super_class = WFAppSearchViewController;
  [(WFAppSearchViewController *)&v4 dealloc];
}

- (WFAppSearchViewController)initWithAppSearchType:(int64_t)a3 omittedAppBundleIDs:(id)a4 allowMultipleSelection:(BOOL)a5 selectedApps:(id)a6
{
  v10 = a4;
  v11 = a6;
  v23.receiver = self;
  v23.super_class = WFAppSearchViewController;
  v12 = [(WFAppSearchViewController *)&v23 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    v12->_appSearchType = a3;
    v14 = [v10 copy];
    omittedAppBundleIDs = v13->_omittedAppBundleIDs;
    v13->_omittedAppBundleIDs = v14;

    v13->_allowMultipleSelection = a5;
    if (v11)
    {
      v16 = [objc_alloc(MEMORY[0x277CBEB40]) initWithOrderedSet:v11];
    }

    else
    {
      v16 = objc_opt_new();
    }

    v17 = v16;
    objc_storeStrong(&v13->_selectedApps, v16);

    v18 = objc_opt_new();
    cachedAppIconForBundleId = v13->_cachedAppIconForBundleId;
    v13->_cachedAppIconForBundleId = v18;

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:v13 selector:sel_adjustInsetsForKeyboard name:*MEMORY[0x277D7BE00] object:0];

    v21 = v13;
  }

  return v13;
}

@end