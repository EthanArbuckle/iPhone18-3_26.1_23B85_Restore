@interface PXSuggesterDebugViewController
- (PXSuggesterDebugViewController)initWithName:(id)a3 options:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_stringWithSortCriteria:(unint64_t)a3;
- (id)assetsDataSourceManagerForSuggestion:(id)a3;
- (id)dateButton;
- (id)fullLibraryButton;
- (id)oneUpPresentationInitialAssetReference:(id)a3;
- (id)oneUpPresentationMediaProvider:(id)a3;
- (id)showInvalidItemsButton;
- (id)sortButton;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (void)_fetchSuggestions;
- (void)_sortItems;
- (void)_updateToolbarItems;
- (void)configureCell:(id)a3 withItem:(id)a4;
- (void)didSelectDateButton:(id)a3;
- (void)didSelectFullLibraryButton:(id)a3;
- (void)didSelectShowInvalidItemsButton:(id)a3;
- (void)didSelectSortButton:(id)a3;
- (void)didStopProcessing;
- (void)refresh;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateShowInvalidItemsButton;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willStartProcessing;
@end

@implementation PXSuggesterDebugViewController

- (id)_stringWithSortCriteria:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"Score";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Date";
  }
}

- (void)_sortItems
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = self->_heuristicallySortedItems;
  if (!self->_showsInvalidItems)
  {
    v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_44356];
    v5 = [(NSArray *)v3 filteredArrayUsingPredicate:v4];

    v3 = v5;
  }

  currentSortCriteria = self->_currentSortCriteria;
  if (currentSortCriteria == 1)
  {
    objc_storeStrong(&self->_sortedItems, v3);
  }

  else if (!currentSortCriteria)
  {
    v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"date" ascending:0];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [(NSArray *)v3 sortedArrayUsingDescriptors:v8];
    sortedItems = self->_sortedItems;
    self->_sortedItems = v9;
  }
}

- (void)didSelectSortButton:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Sort Criteria" message:0 preferredStyle:0];
  v6 = [v5 popoverPresentationController];
  [v6 setBarButtonItem:v4];

  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = [(PXSuggesterDebugViewController *)self _stringWithSortCriteria:v7];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__PXSuggesterDebugViewController_didSelectSortButton___block_invoke;
    v14[3] = &unk_1E77343F8;
    v14[4] = self;
    v14[5] = v7;
    v11 = [MEMORY[0x1E69DC648] actionWithTitle:v10 style:0 handler:v14];
    v12 = v11;
    if (v7 == self->_currentSortCriteria)
    {
      [v11 _setChecked:1];
    }

    [v5 addAction:v12];

    v8 = 0;
    v7 = 1;
  }

  while ((v9 & 1) != 0);
  v13 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v5 addAction:v13];

  [(PXSuggesterDebugViewController *)self presentViewController:v5 animated:1 completion:0];
}

uint64_t __54__PXSuggesterDebugViewController_didSelectSortButton___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1096) = *(a1 + 40);
  [*(a1 + 32) _sortItems];
  v2 = *(a1 + 32);

  return [v2 refresh];
}

- (void)updateShowInvalidItemsButton
{
  if (self->_showsInvalidItems)
  {
    v2 = @"🚥";
  }

  else
  {
    v2 = @"✅";
  }

  [(UIBarButtonItem *)self->_showInvalidItemsButton setTitle:v2];
}

- (void)didSelectShowInvalidItemsButton:(id)a3
{
  self->_showsInvalidItems ^= 1u;
  [(PXSuggesterDebugViewController *)self updateShowInvalidItemsButton];
  [(PXSuggesterDebugViewController *)self _sortItems];

  [(PXSuggesterDebugViewController *)self refresh];
}

- (void)didSelectDateButton:(id)a3
{
  v5 = objc_alloc_init(PXContextualMemoriesSettingsTableViewController);
  v4 = [(PXSuggesterDebugViewController *)self navigationController];
  [v4 pushViewController:v5 animated:1];
}

- (void)didSelectFullLibraryButton:(id)a3
{
  fullLibraryIsEnabled = self->_fullLibraryIsEnabled;
  self->_fullLibraryIsEnabled = !fullLibraryIsEnabled;
  if (fullLibraryIsEnabled)
  {
    [(UIBarButtonItem *)self->_fullLibraryButton setTintColor:0];
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] redColor];
    [(UIBarButtonItem *)self->_fullLibraryButton setTintColor:v5];
  }

  [(PXSuggesterDebugViewController *)self willStartProcessing];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PXSuggesterDebugViewController_didSelectFullLibraryButton___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __61__PXSuggesterDebugViewController_didSelectFullLibraryButton___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _fetchSuggestions];
  v2 = *(a1 + 32);

  return [v2 didStopProcessing];
}

- (void)_updateToolbarItems
{
  v11[7] = *MEMORY[0x1E69E9840];
  v3 = [(PXSuggesterDebugViewController *)self fullLibraryButton];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v5 = [(PXSuggesterDebugViewController *)self dateButton];
  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v7 = [(PXSuggesterDebugViewController *)self showInvalidItemsButton];
  v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v9 = [(PXSuggesterDebugViewController *)self sortButton];
  v11[0] = v3;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v11[5] = v8;
  v11[6] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];
  [(PXSuggesterDebugViewController *)self setToolbarItems:v10];
}

- (id)sortButton
{
  sortButton = self->_sortButton;
  if (!sortButton)
  {
    v13.width = 22.0;
    v13.height = 22.0;
    UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
    v4 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.5, 0.5, 21.0, 21.0}];
    [v4 stroke];

    v5 = [MEMORY[0x1E69DC728] bezierPathWithRect:{6.0, 7.0, 10.0, 1.0}];
    [v5 fill];

    v6 = [MEMORY[0x1E69DC728] bezierPathWithRect:{7.0, 11.0, 8.0, 1.0}];
    [v6 fill];

    v7 = [MEMORY[0x1E69DC728] bezierPathWithRect:{8.0, 15.0, 6.0, 1.0}];
    [v7 fill];

    v8 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v8 style:0 target:self action:sel_didSelectSortButton_];
    v10 = self->_sortButton;
    self->_sortButton = v9;

    sortButton = self->_sortButton;
  }

  return sortButton;
}

- (id)showInvalidItemsButton
{
  showInvalidItemsButton = self->_showInvalidItemsButton;
  if (!showInvalidItemsButton)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"💊" style:0 target:self action:sel_didSelectShowInvalidItemsButton_];
    v5 = self->_showInvalidItemsButton;
    self->_showInvalidItemsButton = v4;

    showInvalidItemsButton = self->_showInvalidItemsButton;
  }

  return showInvalidItemsButton;
}

- (id)dateButton
{
  dateButton = self->_dateButton;
  if (!dateButton)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:&stru_1F1741150 style:0 target:self action:sel_didSelectDateButton_];
    v5 = self->_dateButton;
    self->_dateButton = v4;

    dateButton = self->_dateButton;
  }

  return dateButton;
}

- (id)fullLibraryButton
{
  fullLibraryButton = self->_fullLibraryButton;
  if (!fullLibraryButton)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"∞" style:0 target:self action:sel_didSelectFullLibraryButton_];
    v5 = self->_fullLibraryButton;
    self->_fullLibraryButton = v4;

    fullLibraryButton = self->_fullLibraryButton;
  }

  return fullLibraryButton;
}

- (void)_fetchSuggestions
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_options mutableCopy];
  v4 = v3;
  date = self->_date;
  if (date)
  {
    [v3 setObject:date forKeyedSubscript:@"localDate"];
  }

  if (self->_fullLibraryIsEnabled)
  {
    v6 = [MEMORY[0x1E695DF00] distantPast];
    [v4 setObject:v6 forKeyedSubscript:@"universalStartDate"];

    v7 = [MEMORY[0x1E695DF00] distantFuture];
    [v4 setObject:v7 forKeyedSubscript:@"universalEndDate"];
  }

  v8 = [MEMORY[0x1E69789A8] px:self deprecated:?appPhotoLibrary];
  v24 = v4;
  v9 = [MEMORY[0x1E6978AE8] suggestionInfosWithOptions:v4 photoLibrary:v8];
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v30[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v12 = [v9 sortedArrayUsingDescriptors:v11];

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        v20 = [MEMORY[0x1E6978AE8] transientSuggestionWithInfo:v19 photoLibrary:v8];
        v21 = [[PXSuggesterDebugCollectionItem alloc] initWithSuggestion:v20 suggestionInfo:v19];
        [v13 addObject:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  v22 = *(v23 + 1040);
  *(v23 + 1040) = v13;

  *(v23 + 1096) = 1;
  *(v23 + 1104) = 1;
  [v23 updateShowInvalidItemsButton];
  [v23 _sortItems];
  [v23 refresh];
}

- (void)configureCell:(id)a3 withItem:(id)a4
{
  v21 = a3;
  v5 = a4;
  v6 = [v5 suggestion];
  [v21 setSuggestion:v6];

  v7 = [MEMORY[0x1E69DC888] labelColor];
  if ([v5 isInvalid])
  {
    v8 = [MEMORY[0x1E69DC888] redColor];
  }

  else
  {
    v9 = [v5 info];
    v10 = [v9 objectForKeyedSubscript:@"identicalExistingSuggestionInfo"];

    if (v10)
    {
      v8 = [MEMORY[0x1E69DC888] greenColor];
    }

    else
    {
      v11 = [v5 info];
      v12 = [v11 objectForKeyedSubscript:@"suggestionsByCollisionReason"];
      v13 = [v12 count];

      if (!v13)
      {
        goto LABEL_8;
      }

      v8 = [MEMORY[0x1E69DC888] orangeColor];
    }
  }

  v14 = v8;

  v7 = v14;
LABEL_8:
  v15 = [v21 textLabel];
  v16 = [v5 name];
  v17 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];

  [v15 setText:v17];
  [v15 setTextColor:v7];
  v18 = [v21 detailTextLabel];
  v19 = [v5 description];
  [v18 setText:v19];

  [v18 setTextColor:v7];
  [v18 sizeToFit];
  v20 = [v5 suggestion];
  [v21 setAccessoryType:4 * (v20 != 0)];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"SuggestersDebugTableViewCellIdentifier"];
  if (!v7)
  {
    v7 = [[PXSuggesterDebugViewControllerCell alloc] initWithStyle:3 reuseIdentifier:@"SuggestersDebugTableViewCellIdentifier"];
    v8 = [(PXSuggesterDebugViewControllerCell *)v7 detailTextLabel];
    [v8 setNumberOfLines:2];

    v9 = [(PXSuggesterDebugViewControllerCell *)v7 detailTextLabel];
    [v9 setLineBreakMode:0];
  }

  v10 = -[NSArray objectAtIndexedSubscript:](self->_sortedItems, "objectAtIndexedSubscript:", [v6 row]);
  [(PXSuggesterDebugViewController *)self configureCell:v7 withItem:v10];

  return v7;
}

- (id)oneUpPresentationInitialAssetReference:(id)a3
{
  v3 = [(PXSuggesterDebugViewController *)self oneUpPresentationDataSourceManager:a3];
  v4 = [v3 dataSource];
  v5 = [v4 startingAssetReference];

  return v5;
}

- (id)oneUpPresentationMediaProvider:(id)a3
{
  v3 = objc_alloc_init(PXPhotoKitUIMediaProvider);

  return v3;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E69DC8D8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__PXSuggesterDebugViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
  v13[3] = &unk_1E773AFD8;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 configurationWithIdentifier:0 previewProvider:0 actionProvider:v13];

  return v11;
}

id __92__PXSuggesterDebugViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) cellForRowAtIndexPath:*(a1 + 40)];
  v2 = MEMORY[0x1E69DCC60];
  v3 = MEMORY[0x1E69DC628];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__PXSuggesterDebugViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2;
  v9[3] = &unk_1E7743BF8;
  v10 = v1;
  v4 = v1;
  v5 = [v3 actionWithTitle:@"Persist" image:0 identifier:0 handler:v9];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v2 menuWithChildren:v6];

  return v7;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v11 = -[NSArray objectAtIndexedSubscript:](self->_sortedItems, "objectAtIndexedSubscript:", [a4 row]);
  v5 = [v11 suggestion];
  v6 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v5 referenceAsset:0];
  v7 = [PXSuggestionDebugViewController alloc];
  v8 = [v11 info];
  v9 = [(PXSuggestionDebugViewController *)v7 initWithSuggestion:v5 suggestionInfo:v8];

  v10 = [(PXSuggesterDebugViewController *)self navigationController];
  [v10 px_presentViewControllerInNavigationController:v9 animated:1 dimissButtonLocation:0 completion:0];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = -[NSArray objectAtIndexedSubscript:](self->_sortedItems, "objectAtIndexedSubscript:", [a4 row]);
  v5 = [v4 description];
  v6 = [v5 rangeOfString:@"\n"];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 44.0;
  }

  else
  {
    v7 = 66.0;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = -[NSArray objectAtIndexedSubscript:](self->_sortedItems, "objectAtIndexedSubscript:", [a4 row]);
  v5 = [v8 suggestion];
  currentSuggestion = self->_currentSuggestion;
  self->_currentSuggestion = v5;

  [(UIViewController *)self px_enableOneUpPresentation];
  v7 = [(UIViewController *)self px_oneUpPresentation];
  [v7 setDelegate:self];
  [v7 startWithConfigurationHandler:0];
}

- (id)assetsDataSourceManagerForSuggestion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978760];
  v14 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v14 count:1];
  v7 = [v3 transientCollectionListWithCollections:v6 title:{0, v14, v15}];

  v8 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v7 options:0];
  v9 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v8 options:0];
  v10 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v9];
  v11 = [PXPhotoKitAssetsDataSourceManager alloc];

  v12 = [(PXPhotoKitAssetsDataSourceManager *)v11 initWithPhotosDataSource:v10];

  return v12;
}

- (void)refresh
{
  v3 = [(PXSuggesterDebugViewController *)self tableView];
  [v3 reloadData];

  v5 = [(PXSuggesterDebugViewController *)self navigationItem];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%d) %@", -[NSArray count](self->_sortedItems, "count"), self->_name];
  [v5 setTitle:v4];
}

- (void)didStopProcessing
{
  [(UIActivityIndicatorView *)self->_spinnerView stopAnimating];
  [(UILabel *)self->_noResultLabel setHidden:[(NSArray *)self->_sortedItems count]!= 0];
  [(UIBarButtonItem *)self->_dateButton setEnabled:1];
  fullLibraryButton = self->_fullLibraryButton;

  [(UIBarButtonItem *)fullLibraryButton setEnabled:1];
}

- (void)willStartProcessing
{
  [(UIBarButtonItem *)self->_fullLibraryButton setEnabled:0];
  [(UIBarButtonItem *)self->_dateButton setEnabled:0];
  [(UILabel *)self->_noResultLabel setHidden:1];
  spinnerView = self->_spinnerView;

  [(UIActivityIndicatorView *)spinnerView startAnimating];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PXSuggesterDebugViewController;
  [(PXSuggesterDebugViewController *)&v6 viewWillAppear:a3];
  [(PXSuggesterDebugViewController *)self willStartProcessing];
  v4 = +[PXContextualMemoriesSettingsController sharedController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PXSuggesterDebugViewController_viewWillAppear___block_invoke;
  v5[3] = &unk_1E77330C8;
  v5[4] = self;
  [v4 requestUpdatedContextualMemoriesSettingsWithOptions:0 completionHandler:v5];
}

void __49__PXSuggesterDebugViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PXSuggesterDebugViewController_viewWillAppear___block_invoke_2;
  v6[3] = &unk_1E774C620;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __49__PXSuggesterDebugViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) date];
  v3 = *(a1 + 40);
  if (*(v3 + 1048) && (*(v3 + 1088) == v2 || (v4 = [*(v3 + 1088) isEqualToDate:v2], v3 = *(a1 + 40), (v4 & 1) != 0)))
  {
    [v3 didStopProcessing];
  }

  else
  {
    objc_storeStrong((v3 + 1088), v2);
    v5 = [MEMORY[0x1E696AB78] localizedStringFromDate:*(*(a1 + 40) + 1088) dateStyle:1 timeStyle:0];
    [*(*(a1 + 40) + 1136) setTitle:v5];

    v6 = *(a1 + 40);
    v7 = *(v6 + 1048);
    *(v6 + 1048) = MEMORY[0x1E695E0F0];

    [*(a1 + 40) refresh];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__PXSuggesterDebugViewController_viewWillAppear___block_invoke_3;
    block[3] = &unk_1E774C648;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __49__PXSuggesterDebugViewController_viewWillAppear___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _fetchSuggestions];
  v2 = *(a1 + 32);

  return [v2 didStopProcessing];
}

- (void)viewDidLoad
{
  v53.receiver = self;
  v53.super_class = PXSuggesterDebugViewController;
  [(PXSuggesterDebugViewController *)&v53 viewDidLoad];
  name = self->_name;
  v4 = [(PXSuggesterDebugViewController *)self navigationItem];
  [v4 setTitle:name];

  v5 = [(PXSuggesterDebugViewController *)self tableView];
  [v5 setEstimatedRowHeight:44.0];

  v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
  spinnerView = self->_spinnerView;
  self->_spinnerView = v6;

  v8 = [MEMORY[0x1E69DC888] grayColor];
  [(UIActivityIndicatorView *)self->_spinnerView setColor:v8];

  [(UIActivityIndicatorView *)self->_spinnerView bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(PXSuggesterDebugViewController *)self view];
  [v17 bounds];
  v19 = v18;
  [(UIActivityIndicatorView *)self->_spinnerView bounds];
  v21 = (v19 - v20) * 0.5;
  v22 = [(PXSuggesterDebugViewController *)self view];
  [v22 bounds];
  v24 = v23;
  [(UIActivityIndicatorView *)self->_spinnerView bounds];
  v26 = (v24 - v25) * 0.5;
  v54.origin.x = v10;
  v54.origin.y = v12;
  v54.size.width = v14;
  v54.size.height = v16;
  v55 = CGRectOffset(v54, v21, v26);
  [(UIActivityIndicatorView *)self->_spinnerView setFrame:v55.origin.x, v55.origin.y, v55.size.width, v55.size.height];

  [(UIActivityIndicatorView *)self->_spinnerView setAutoresizingMask:45];
  [(UIActivityIndicatorView *)self->_spinnerView setHidesWhenStopped:1];
  v27 = [(PXSuggesterDebugViewController *)self view];
  [v27 addSubview:self->_spinnerView];

  v28 = objc_alloc(MEMORY[0x1E69DCC10]);
  v29 = [v28 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  noResultLabel = self->_noResultLabel;
  self->_noResultLabel = v29;

  [(UILabel *)self->_noResultLabel setText:@"No Result"];
  v31 = [MEMORY[0x1E69DB878] systemFontOfSize:36.0 weight:*MEMORY[0x1E69DB958]];
  [(UILabel *)self->_noResultLabel setFont:v31];

  v32 = [MEMORY[0x1E69DC888] grayColor];
  [(UILabel *)self->_noResultLabel setTextColor:v32];

  [(UILabel *)self->_noResultLabel setTextAlignment:1];
  [(UILabel *)self->_noResultLabel sizeToFit];
  [(UILabel *)self->_noResultLabel bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = [(PXSuggesterDebugViewController *)self view];
  [v41 bounds];
  v43 = v42;
  [(UILabel *)self->_noResultLabel bounds];
  v45 = (v43 - v44) * 0.5;
  v46 = [(PXSuggesterDebugViewController *)self view];
  [v46 bounds];
  v48 = v47;
  [(UILabel *)self->_noResultLabel bounds];
  v50 = (v48 - v49) * 0.5;
  v56.origin.x = v34;
  v56.origin.y = v36;
  v56.size.width = v38;
  v56.size.height = v40;
  v57 = CGRectOffset(v56, v45, v50);
  [(UILabel *)self->_noResultLabel setFrame:v57.origin.x, v57.origin.y, v57.size.width, v57.size.height];

  [(UILabel *)self->_noResultLabel setAutoresizingMask:45];
  [(UILabel *)self->_noResultLabel setHidden:1];
  v51 = [(PXSuggesterDebugViewController *)self view];
  [v51 addSubview:self->_noResultLabel];

  [(PXSuggesterDebugViewController *)self _updateToolbarItems];
  v52 = [(PXSuggesterDebugViewController *)self navigationController];
  [v52 setToolbarHidden:0 animated:1];
}

- (PXSuggesterDebugViewController)initWithName:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXSuggesterDebugViewController;
  v9 = [(PXSuggesterDebugViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_options, a4);
  }

  return v10;
}

@end