@interface VUISeasonPickerViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (VUISeasonPickerViewController)initWithDataSource:(id)source;
- (id)_createDiffableDataSource;
- (id)_createDiffableDataSourceSnapshot;
- (id)_getSeasonIdentifiersFromSeasons;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dataSourceDidFinishFetching:(id)fetching;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation VUISeasonPickerViewController

- (VUISeasonPickerViewController)initWithDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = VUISeasonPickerViewController;
  v6 = [(VUISeasonPickerViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    v8 = objc_alloc_init(VUIViewControllerContentPresenter);
    contentPresenter = v7->_contentPresenter;
    v7->_contentPresenter = v8;

    [(VUIViewControllerContentPresenter *)v7->_contentPresenter setLogName:@"VUISeasonPickerViewController"];
  }

  return v7;
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = VUISeasonPickerViewController;
  [(VUISeasonPickerViewController *)&v23 viewDidLoad];
  navigationItem = [(VUISeasonPickerViewController *)self navigationItem];
  [navigationItem _setSupportsTwoLineLargeTitles:1];
  v4 = [_VUISeasonPickerView alloc];
  v5 = [(_VUISeasonPickerView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  seasonPickerView = self->_seasonPickerView;
  self->_seasonPickerView = v5;

  collectionView = [(_VUISeasonPickerView *)self->_seasonPickerView collectionView];
  [collectionView setDelegate:self];

  collectionView2 = [(_VUISeasonPickerView *)self->_seasonPickerView collectionView];
  [collectionView2 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"VUISeasonPickerCollectionViewCellIdentifier"];

  [(_VUISeasonPickerView *)self->_seasonPickerView setAutoresizingMask:18];
  [(VUIViewControllerContentPresenter *)self->_contentPresenter setContentView:self->_seasonPickerView];
  contentPresenter = self->_contentPresenter;
  v10 = +[VUILocalizationManager sharedInstance];
  v11 = [v10 localizedStringForKey:@"LIBRARY_GENERIC_FETCH_ERROR_TITLE"];
  [(VUIViewControllerContentPresenter *)contentPresenter setNoContentErrorTitle:v11];

  [(VUIViewControllerContentPresenter *)self->_contentPresenter setCurrentContentViewType:1];
  v12 = MEMORY[0x1E696AEC0];
  v13 = +[VUILocalizationManager sharedInstance];
  v14 = [v13 localizedStringForKey:@"GENERIC_DELETED_ERROR_MESSAGE_FORMAT"];
  title = [(VUISeasonPickerViewController *)self title];
  v16 = [v12 stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, title];

  [(VUIViewControllerContentPresenter *)self->_contentPresenter setDeletedContentErrorMessage:v16];
  _createDiffableDataSource = [(VUISeasonPickerViewController *)self _createDiffableDataSource];
  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = _createDiffableDataSource;

  dataSource = [(VUISeasonPickerViewController *)self dataSource];
  [dataSource setDelegate:self];

  dataSource2 = [(VUISeasonPickerViewController *)self dataSource];
  [dataSource2 startFetch];

  view = [(VUISeasonPickerViewController *)self view];
  v22 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:*MEMORY[0x1E69DF7C8] additionalString:@"Library.id=SeasonPicker"];
  [view setAccessibilityIdentifier:v22];
}

- (void)viewWillAppear:(BOOL)appear
{
  v18.receiver = self;
  v18.super_class = VUISeasonPickerViewController;
  [(VUISeasonPickerViewController *)&v18 viewWillAppear:?];
  collectionView = [(_VUISeasonPickerView *)self->_seasonPickerView collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    transitionCoordinator = [(VUISeasonPickerViewController *)self transitionCoordinator];
    if (transitionCoordinator)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __48__VUISeasonPickerViewController_viewWillAppear___block_invoke;
      v14[3] = &unk_1E872D878;
      v15 = collectionView;
      v16 = firstObject;
      appearCopy = appear;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __48__VUISeasonPickerViewController_viewWillAppear___block_invoke_2;
      v11[3] = &unk_1E872D8A0;
      v12 = v15;
      v13 = v16;
      [transitionCoordinator animateAlongsideTransition:v14 completion:v11];
    }

    else
    {
      [collectionView deselectItemAtIndexPath:firstObject animated:1];
    }
  }

  currentSeasonViewController = [(VUISeasonPickerViewController *)self currentSeasonViewController];
  contentPresenter = [currentSeasonViewController contentPresenter];
  -[VUISeasonPickerViewController setLastViewedSeasonWasManuallyDeleted:](self, "setLastViewedSeasonWasManuallyDeleted:", [contentPresenter contentHasBeenManuallyDeleted]);

  [(VUISeasonPickerViewController *)self setCurrentSeasonViewController:0];
}

uint64_t __48__VUISeasonPickerViewController_viewWillAppear___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 selectItemAtIndexPath:v5 animated:0 scrollPosition:0];
  }

  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = VUISeasonPickerViewController;
  [(VUISeasonPickerViewController *)&v3 viewDidAppear:appear];
  [VUILibraryMetrics recordPageEventWithPageType:@"LibrarySeasonPicker"];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = VUISeasonPickerViewController;
  [(VUISeasonPickerViewController *)&v4 loadView];
  contentPresenter = [(VUISeasonPickerViewController *)self contentPresenter];
  [contentPresenter setRootViewForViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = VUISeasonPickerViewController;
  [(VUISeasonPickerViewController *)&v5 viewWillLayoutSubviews];
  contentPresenter = [(VUISeasonPickerViewController *)self contentPresenter];
  view = [(VUISeasonPickerViewController *)self view];
  [view bounds];
  [contentPresenter configureCurrentViewFrameForBounds:?];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (!self->_sizingCell)
  {
    v7 = objc_alloc_init(VUISeasonPickerCollectionViewCell);
    sizingCell = self->_sizingCell;
    self->_sizingCell = v7;
  }

  dataSource = [(VUISeasonPickerViewController *)self dataSource];
  mediaEntities = [dataSource mediaEntities];
  v11 = [mediaEntities objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  v12 = self->_sizingCell;
  traitCollection = [(VUISeasonPickerViewController *)self traitCollection];
  [VUISeasonPickerCollectionViewCell configureSeasonPickerCell:v12 withMedia:v11 traitCollection:traitCollection];

  v14 = self->_sizingCell;
  view = [(VUISeasonPickerViewController *)self view];
  [view bounds];
  [(VUISeasonPickerCollectionViewCell *)v14 sizeThatFits:v16, 1.79769313e308];
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  [VUIViewSpacer spacerC:view];
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  result.right = v9;
  result.bottom = v6;
  result.left = v8;
  result.top = v7;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(VUISeasonPickerViewController *)self dataSource];
  mediaEntities = [dataSource mediaEntities];
  v8 = [pathCopy row];

  v13 = [mediaEntities objectAtIndex:v8];

  familyMember = [(VUISeasonPickerViewController *)self familyMember];
  v10 = [VUILibraryViewFactory viewControllerForMediaEntity:v13 withFamilyMember:familyMember];

  title = [(VUISeasonPickerViewController *)self title];
  [v10 setTitle:title];

  [(VUISeasonPickerViewController *)self setCurrentSeasonViewController:v10];
  navigationController = [(VUISeasonPickerViewController *)self navigationController];
  [navigationController pushViewController:v10 animated:1];
}

- (void)dataSourceDidFinishFetching:(id)fetching
{
  _createDiffableDataSourceSnapshot = [(VUISeasonPickerViewController *)self _createDiffableDataSourceSnapshot];
  diffableDataSource = [(VUISeasonPickerViewController *)self diffableDataSource];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__VUISeasonPickerViewController_dataSourceDidFinishFetching___block_invoke;
  v6[3] = &unk_1E872D768;
  v6[4] = self;
  [diffableDataSource applySnapshot:_createDiffableDataSourceSnapshot animatingDifferences:1 completion:v6];
}

void __61__VUISeasonPickerViewController_dataSourceDidFinishFetching___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 mediaEntities];
  v4 = [v3 count];

  v5 = [*(a1 + 32) contentPresenter];
  v6 = v5;
  if (v4)
  {
    [v5 setCurrentContentViewType:3];
  }

  else
  {
    [v5 setCurrentContentViewType:2];

    v6 = [*(a1 + 32) contentPresenter];
    [v6 setContentHasBeenManuallyDeleted:{objc_msgSend(*(a1 + 32), "lastViewedSeasonWasManuallyDeleted")}];
  }
}

- (id)_createDiffableDataSource
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x1E69DC820]);
  seasonPickerView = [(VUISeasonPickerViewController *)self seasonPickerView];
  collectionView = [seasonPickerView collectionView];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__VUISeasonPickerViewController__createDiffableDataSource__block_invoke;
  v8[3] = &unk_1E872D8C8;
  objc_copyWeak(&v9, &location);
  v6 = [v3 initWithCollectionView:collectionView cellProvider:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

id __58__VUISeasonPickerViewController__createDiffableDataSource__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"VUISeasonPickerCollectionViewCellIdentifier" forIndexPath:v5];

  v9 = [WeakRetained dataSource];
  v10 = [v9 mediaEntities];
  v11 = [v10 objectAtIndex:{objc_msgSend(v5, "row")}];

  v12 = [WeakRetained traitCollection];
  [VUISeasonPickerCollectionViewCell configureSeasonPickerCell:v8 withMedia:v11 traitCollection:v12];

  v13 = objc_alloc_init(VUISeparatorView);
  [v8 setTopSeparatorView:v13];

  v14 = [v5 row];
  v15 = [WeakRetained dataSource];
  v16 = [v15 mediaEntities];
  if (v14 == [v16 count] - 1)
  {
    v17 = objc_alloc_init(VUISeparatorView);
  }

  else
  {
    v17 = 0;
  }

  [v8 setBottomSeparatorView:v17];

  return v8;
}

- (id)_createDiffableDataSourceSnapshot
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v7[0] = @"SeasonSection";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 appendSectionsWithIdentifiers:v4];

  _getSeasonIdentifiersFromSeasons = [(VUISeasonPickerViewController *)self _getSeasonIdentifiersFromSeasons];
  [v3 appendItemsWithIdentifiers:_getSeasonIdentifiersFromSeasons intoSectionWithIdentifier:@"SeasonSection"];

  return v3;
}

- (id)_getSeasonIdentifiersFromSeasons
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  dataSource = [(VUISeasonPickerViewController *)self dataSource];
  mediaEntities = [dataSource mediaEntities];

  v6 = [mediaEntities countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(mediaEntities);
        }

        identifier = [*(*(&v19 + 1) + 8 * i) identifier];
        [v3 addObject:identifier];
      }

      v7 = [mediaEntities countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  if ([v3 count])
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__VUISeasonPickerViewController__getSeasonIdentifiersFromSeasons__block_invoke;
    v17[3] = &unk_1E8736EB0;
    v12 = v11;
    v18 = v12;
    [v3 enumerateObjectsUsingBlock:v17];
    if ([v12 count])
    {
      array = [v12 array];
      v14 = [array mutableCopy];

      v3 = v14;
    }
  }

  v15 = [v3 copy];

  return v15;
}

void __65__VUISeasonPickerViewController__getSeasonIdentifiersFromSeasons__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

@end