@interface WFAppSearchViewController
- (UIImage)placeholderImage;
- (UITableView)tableView;
- (WFAppSearchViewController)initWithAppSearchType:(int64_t)type omittedAppBundleIDs:(id)ds allowMultipleSelection:(BOOL)selection selectedApps:(id)apps;
- (WFAppSearchViewControllerDelegate)delegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)applicationIconImageForBundleIdentifier:(id)identifier;
- (id)filteredApps;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)adjustInsetsForKeyboard;
- (void)cancel;
- (void)dealloc;
- (void)done;
- (void)loadApps;
- (void)loadView;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateDoneButtonEnabledState;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)searchBarTextDidEndEditing:(id)editing
{
  tableView = [(WFAppSearchViewController *)self tableView];
  [tableView reloadData];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v4 = [(WFAppSearchViewController *)self tableView:bar];
  [v4 reloadData];
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(WFAppSearchViewController *)self filteredApps:view];
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v5 = [(WFAppSearchViewController *)self filteredApps:view];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    view = [(WFAppSearchViewController *)self view];
    [view bounds];
    v7 = [v8 initWithFrame:{0.0, 0.0, CGRectGetWidth(v17), 0.0}];

    v10 = objc_alloc(MEMORY[0x277D756B8]);
    view2 = [(WFAppSearchViewController *)self view];
    [view2 bounds];
    v12 = [v10 initWithFrame:{15.0, 0.0, CGRectGetWidth(v18) + -30.0, 0.0}];

    [v12 setAutoresizingMask:21];
    v13 = WFLocalizedString(@"No results.");
    [v12 setText:v13];

    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    [v12 setTextColor:lightGrayColor];

    [v7 addSubview:v12];
  }

  return v7;
}

- (void)updateDoneButtonEnabledState
{
  navigationItem = [(WFAppSearchViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  if (rightBarButtonItem)
  {
    selectedApps = [(WFAppSearchViewController *)self selectedApps];
    v5 = [selectedApps count] != 0;
    navigationItem2 = [(WFAppSearchViewController *)self navigationItem];
    rightBarButtonItem2 = [navigationItem2 rightBarButtonItem];
    [rightBarButtonItem2 setEnabled:v5];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  filteredApps = [(WFAppSearchViewController *)self filteredApps];
  v8 = [pathCopy row];
  if (v8 < [filteredApps count])
  {
    v9 = [filteredApps objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    if ([(WFAppSearchViewController *)self allowMultipleSelection])
    {
      delegate = [viewCopy cellForRowAtIndexPath:pathCopy];
      if ([delegate accessoryType])
      {
        [delegate setAccessoryType:0];
        selectedApps = [(WFAppSearchViewController *)self selectedApps];
        [selectedApps removeObject:v9];
      }

      else
      {
        [delegate setAccessoryType:3];
        selectedApps = [(WFAppSearchViewController *)self selectedApps];
        [selectedApps addObject:v9];
      }

      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      [(WFAppSearchViewController *)self updateDoneButtonEnabledState];
    }

    else
    {
      navigationItem = [(WFAppSearchViewController *)self navigationItem];
      searchController = [navigationItem searchController];
      isActive = [searchController isActive];

      if (isActive)
      {
        navigationItem2 = [(WFAppSearchViewController *)self navigationItem];
        searchController2 = [navigationItem2 searchController];
        [searchController2 setActive:0];
      }

      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      delegate = [(WFAppSearchViewController *)self delegate];
      [delegate appSearchViewController:self didFinishWithApp:v9];
    }
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  filteredApps = [(WFAppSearchViewController *)self filteredApps];
  v9 = [filteredApps objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v10 = [viewCopy dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:pathCopy];
  localizedName = [v9 localizedName];
  textLabel = [v10 textLabel];
  [textLabel setText:localizedName];

  if (-[WFAppSearchViewController allowMultipleSelection](self, "allowMultipleSelection") && (-[WFAppSearchViewController selectedApps](self, "selectedApps"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:v9], v13, (v14 & 1) != 0))
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [v10 setAccessoryType:v15];
  placeholderImage = [(WFAppSearchViewController *)self placeholderImage];
  imageView = [v10 imageView];
  [imageView setImage:placeholderImage];

  bundleIdentifier = [v9 bundleIdentifier];

  if (bundleIdentifier)
  {
    cachedAppIconForBundleId = [(WFAppSearchViewController *)self cachedAppIconForBundleId];
    bundleIdentifier2 = [v9 bundleIdentifier];
    v21 = [cachedAppIconForBundleId objectForKeyedSubscript:bundleIdentifier2];

    if (v21)
    {
      imageView2 = [v10 imageView];
      [imageView2 setImage:v21];
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
      v27 = viewCopy;
      v28 = pathCopy;
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WFAppSearchViewController *)self filteredApps:view];
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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [whiteColor setFill];

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

- (id)applicationIconImageForBundleIdentifier:(id)identifier
{
  v4 = MEMORY[0x277D7C540];
  identifierCopy = identifier;
  sharedRegistry = [v4 sharedRegistry];
  v7 = [sharedRegistry appWithIdentifier:identifierCopy];

  icon = [v7 icon];
  uIImage = [icon UIImage];

  if (uIImage)
  {
    placeholderImage = uIImage;
  }

  else
  {
    placeholderImage = [(WFAppSearchViewController *)self placeholderImage];
  }

  v11 = placeholderImage;

  return v11;
}

- (id)filteredApps
{
  navigationItem = [(WFAppSearchViewController *)self navigationItem];
  searchController = [navigationItem searchController];
  searchBar = [searchController searchBar];

  text = [searchBar text];
  v7 = [text length];
  apps = [(WFAppSearchViewController *)self apps];
  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__WFAppSearchViewController_filteredApps__block_invoke;
    v11[3] = &unk_279EE78A0;
    v12 = text;
    v9 = [apps if_objectsPassingTest:v11];

    apps = v9;
  }

  return apps;
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

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = WFAppSearchViewController;
  [(WFAppSearchViewController *)&v6 viewWillAppear:appear];
  [(WFAppSearchViewController *)self updateDoneButtonEnabledState];
  apps = [(WFAppSearchViewController *)self apps];
  v5 = [apps count];

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
  mEMORY[0x277D7BDB0] = [MEMORY[0x277D7BDB0] sharedKeyboard];
  isVisible = [mEMORY[0x277D7BDB0] isVisible];

  if (isVisible)
  {
    mEMORY[0x277D7BDB0]2 = [MEMORY[0x277D7BDB0] sharedKeyboard];
    view = [(WFAppSearchViewController *)self view];
    [mEMORY[0x277D7BDB0]2 keyboardFrameInView:view];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    view2 = [(WFAppSearchViewController *)self view];
    [view2 bounds];
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
      view3 = [(WFAppSearchViewController *)self view];
      [view3 bounds];
      MaxY = CGRectGetMaxY(v29);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v20 = MaxY - CGRectGetMinY(v30);
    }

    tableView = [(WFAppSearchViewController *)self tableView];
    [tableView setContentInset:{0.0, 0.0, v20, 0.0}];
  }

  else
  {
    tableView = [(WFAppSearchViewController *)self tableView];
    [tableView setContentInset:{0.0, 0.0, 0.0, 0.0}];
    v20 = 0.0;
  }

  tableView2 = [(WFAppSearchViewController *)self tableView];
  [tableView2 setScrollIndicatorInsets:{0.0, 0.0, v20, 0.0}];
}

- (void)done
{
  navigationItem = [(WFAppSearchViewController *)self navigationItem];
  searchController = [navigationItem searchController];
  [searchController setActive:0];

  delegate = [(WFAppSearchViewController *)self delegate];
  selectedApps = [(WFAppSearchViewController *)self selectedApps];
  array = [selectedApps array];
  [delegate appSearchViewController:self didFinishWithApps:array];
}

- (void)cancel
{
  navigationItem = [(WFAppSearchViewController *)self navigationItem];
  searchController = [navigationItem searchController];
  [searchController setActive:0];

  delegate = [(WFAppSearchViewController *)self delegate];
  [delegate appSearchViewControllerDidCancel:self];
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
  navigationItem = [(WFAppSearchViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v4];

  if ([(WFAppSearchViewController *)self allowMultipleSelection])
  {
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_done];
    navigationItem2 = [(WFAppSearchViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v6];
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
  view = [(WFAppSearchViewController *)self view];
  [view addSubview:v13];

  [(WFAppSearchViewController *)self setTableView:v13];
  v16 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  [v16 setObscuresBackgroundDuringPresentation:0];
  searchBar = [v16 searchBar];
  [searchBar setAutocorrectionType:1];

  [v16 setHidesNavigationBarDuringPresentation:0];
  v18 = WFLocalizedString(@"Search Apps");
  searchBar2 = [v16 searchBar];
  [searchBar2 setPlaceholder:v18];

  searchBar3 = [v16 searchBar];
  [searchBar3 setDelegate:self];

  navigationItem3 = [(WFAppSearchViewController *)self navigationItem];
  [navigationItem3 setSearchController:v16];

  navigationItem4 = [(WFAppSearchViewController *)self navigationItem];
  [navigationItem4 setHidesSearchBarWhenScrolling:0];

  v33 = MEMORY[0x277CCAAD0];
  topAnchor = [v13 topAnchor];
  view2 = [(WFAppSearchViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v42[0] = v37;
  leadingAnchor = [v13 leadingAnchor];
  view3 = [(WFAppSearchViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v42[1] = v32;
  bottomAnchor = [v13 bottomAnchor];
  view4 = [(WFAppSearchViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v42[2] = v25;
  trailingAnchor = [v13 trailingAnchor];
  view5 = [(WFAppSearchViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v42[3] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v33 activateConstraints:v30];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7BE00] object:0];

  v4.receiver = self;
  v4.super_class = WFAppSearchViewController;
  [(WFAppSearchViewController *)&v4 dealloc];
}

- (WFAppSearchViewController)initWithAppSearchType:(int64_t)type omittedAppBundleIDs:(id)ds allowMultipleSelection:(BOOL)selection selectedApps:(id)apps
{
  dsCopy = ds;
  appsCopy = apps;
  v23.receiver = self;
  v23.super_class = WFAppSearchViewController;
  v12 = [(WFAppSearchViewController *)&v23 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    v12->_appSearchType = type;
    v14 = [dsCopy copy];
    omittedAppBundleIDs = v13->_omittedAppBundleIDs;
    v13->_omittedAppBundleIDs = v14;

    v13->_allowMultipleSelection = selection;
    if (appsCopy)
    {
      v16 = [objc_alloc(MEMORY[0x277CBEB40]) initWithOrderedSet:appsCopy];
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel_adjustInsetsForKeyboard name:*MEMORY[0x277D7BE00] object:0];

    v21 = v13;
  }

  return v13;
}

@end