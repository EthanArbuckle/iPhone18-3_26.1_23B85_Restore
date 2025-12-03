@interface PUPeopleTileViewController
+ (CGSize)tileSizeForTraitCollection:(id)collection;
+ (double)_interItemSpacingForTraitCollection:(id)collection;
+ (id)_fetchUnsortedPeopleForAsset:(id)asset;
+ (id)_sortedPersonsForFetchResult:(id)result;
- (BOOL)_compare:(id)_compare to:(id)to ignoringIndices:(id)indices;
- (BOOL)isTilingViewBasedLayout;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (PUPeopleTileDelegate)peopleDelegate;
- (PUPeopleTileViewController)initWithReuseIdentifier:(id)identifier;
- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index;
- (id)allPeople;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_peopleDidChange:(id)change;
- (void)_reloadEverythingForAsset:(id)asset;
- (void)applyLayoutInfo:(id)info;
- (void)applyLayoutWithAlpha:(double)alpha;
- (void)becomeReusable;
- (void)photoLibraryDidChange:(id)change;
- (void)presentPeopleViewController:(id)controller;
- (void)pushPeopleViewController:(id)controller;
- (void)setDisplayAsset:(id)asset;
- (void)setSortedPeople:(id)people;
- (void)viewDidLoad;
@end

@implementation PUPeopleTileViewController

- (PUPeopleTileDelegate)peopleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_peopleDelegate);

  return WeakRetained;
}

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  unsortedFetchResult = [(PUPeopleTileViewController *)self unsortedFetchResult];
  v6 = [changeCopy changeDetailsForFetchResult:unsortedFetchResult];

  if (v6)
  {
    if ([v6 hasIncrementalChanges])
    {
      changedIndexes = [v6 changedIndexes];
      if ([changedIndexes count] == 1)
      {
        removedIndexes = [v6 removedIndexes];
        if (![removedIndexes count])
        {
          insertedIndexes = [v6 insertedIndexes];
          v11 = [insertedIndexes count];

          if (!v11)
          {
            v12[0] = MEMORY[0x1E69E9820];
            v12[1] = 3221225472;
            v12[2] = __52__PUPeopleTileViewController_photoLibraryDidChange___block_invoke;
            v12[3] = &unk_1E7B80C38;
            v13 = v6;
            selfCopy = self;
            dispatch_async(MEMORY[0x1E69E96A0], v12);

            goto LABEL_8;
          }

          goto LABEL_7;
        }
      }
    }

LABEL_7:
    asset = [(PUPeopleTileViewController *)self asset];
    [(PUPeopleTileViewController *)self _reloadEverythingForAsset:asset];
  }

LABEL_8:
}

void __52__PUPeopleTileViewController_photoLibraryDidChange___block_invoke(uint64_t a1)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) fetchResultAfterChanges];
  v3 = [PUPeopleTileViewController _sortedPersonsForFetchResult:v2];
  v4 = [*(a1 + 40) sortedPeople];
  v5 = [*(a1 + 32) changedObjects];
  v6 = [v5 firstObject];

  v7 = v4;
  v8 = [v3 indexOfObject:v6];
  v9 = [v4 indexOfObject:v6];
  [*(a1 + 40) setUnsortedFetchResult:v2];
  [*(a1 + 40) setSortedPeople:v3];
  v30 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:0];
  v10 = *(a1 + 40);
  v11 = MEMORY[0x1E695DFD8];
  if (v8 != v9)
  {
    v29 = v2;
    [MEMORY[0x1E696AD98] numberWithInteger:v9];
    v21 = v20 = v4;
    v32[0] = v21;
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v32[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v24 = [v11 setWithArray:v23];
    v28 = v20;
    LODWORD(v20) = [v10 _compare:v20 to:v3 ignoringIndices:v24];

    v25 = *(a1 + 40);
    if (v20)
    {
      v17 = [*(a1 + 40) collectionView];
      v26 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:0];
      v18 = v30;
      [v17 moveItemAtIndexPath:v26 toIndexPath:v30];
      v31[0] = v26;
      v31[1] = v30;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
      [v17 reloadItemsAtIndexPaths:v27];

      v7 = v28;
      v2 = v29;
      goto LABEL_9;
    }

    v17 = [*(a1 + 40) asset];
    [v25 _reloadEverythingForAsset:v17];
    v7 = v28;
    v2 = v29;
LABEL_8:
    v18 = v30;
    goto LABEL_9;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
  v34[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v14 = [v11 setWithArray:v13];
  v15 = [v10 _compare:v4 to:v3 ignoringIndices:v14];

  v16 = *(a1 + 40);
  if (!v15)
  {
    v17 = [*(a1 + 40) asset];
    [v16 _reloadEverythingForAsset:v17];
    goto LABEL_8;
  }

  v17 = [*(a1 + 40) collectionView];
  v18 = v30;
  v33 = v30;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  [v17 reloadItemsAtIndexPaths:v19];

LABEL_9:
}

- (BOOL)_compare:(id)_compare to:(id)to ignoringIndices:(id)indices
{
  _compareCopy = _compare;
  toCopy = to;
  indicesCopy = indices;
  v10 = [_compareCopy count];
  if (v10 != [toCopy count])
  {
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  if ([_compareCopy count])
  {
    v11 = 0;
    do
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      v13 = [indicesCopy containsObject:v12];

      if ((v13 & 1) == 0)
      {
        v14 = [_compareCopy objectAtIndexedSubscript:v11];
        v15 = [toCopy objectAtIndexedSubscript:v11];
        v16 = [v14 isEqual:v15];

        if (!v16)
        {
          goto LABEL_8;
        }
      }
    }

    while (++v11 < [_compareCopy count]);
  }

  v17 = 1;
LABEL_9:

  return v17;
}

- (void)_peopleDidChange:(id)change
{
  v37 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69C4118]];

  sortedPeople = [(PUPeopleTileViewController *)self sortedPeople];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  if ([v6 count] == 1)
  {
    anyObject = [v6 anyObject];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __47__PUPeopleTileViewController__peopleDidChange___block_invoke;
    v29[3] = &unk_1E7B793B8;
    v9 = anyObject;
    v30 = v9;
    v31 = &v32;
    [sortedPeople enumerateObjectsUsingBlock:v29];
  }

  if (v33[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    asset = sortedPeople;
    v11 = [asset countByEnumeratingWithState:&v20 objects:v36 count:16];
    if (v11)
    {
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(asset);
          }

          localIdentifier = [*(*(&v20 + 1) + 8 * i) localIdentifier];
          v15 = [v6 containsObject:localIdentifier];

          if (v15)
          {

            asset = [(PUPeopleTileViewController *)self asset];
            [(PUPeopleTileViewController *)self _reloadEverythingForAsset:asset];
            goto LABEL_15;
          }
        }

        v11 = [asset countByEnumeratingWithState:&v20 objects:v36 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    asset2 = [(PUPeopleTileViewController *)self asset];
    v17 = [PUPeopleTileViewController _fetchUnsortedPeopleForAsset:asset2];

    v18 = [PUPeopleTileViewController _sortedPersonsForFetchResult:v17];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__PUPeopleTileViewController__peopleDidChange___block_invoke_2;
    block[3] = &unk_1E7B793E0;
    block[4] = self;
    v25 = sortedPeople;
    v26 = v18;
    v27 = v17;
    v28 = &v32;
    v19 = v17;
    asset = v18;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

LABEL_15:

  _Block_object_dispose(&v32, 8);
}

void __47__PUPeopleTileViewController__peopleDidChange___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = [a2 localIdentifier];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void __47__PUPeopleTileViewController__peopleDidChange___block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = MEMORY[0x1E695DFD8];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 64) + 8) + 24)];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v8 = [v5 setWithArray:v7];
  LODWORD(v2) = [v2 _compare:v3 to:v4 ignoringIndices:v8];

  if (v2)
  {
    [*(a1 + 32) setUnsortedFetchResult:*(a1 + 56)];
    [*(a1 + 32) setSortedPeople:*(a1 + 48)];
    v9 = [*(a1 + 32) collectionView];
    v10 = [MEMORY[0x1E696AC88] indexPathForItem:*(*(*(a1 + 64) + 8) + 24) inSection:0];
    v13 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
    [v9 reloadItemsAtIndexPaths:v11];
  }

  else
  {
    v12 = *(a1 + 32);
    v9 = [v12 asset];
    [v12 _reloadEverythingForAsset:v9];
  }
}

- (BOOL)isTilingViewBasedLayout
{
  view = [(PUTileViewController *)self view];
  traitCollection = [view traitCollection];

  LOBYTE(view) = [traitCollection userInterfaceIdiom] != 6;
  return view;
}

- (void)_reloadEverythingForAsset:(id)asset
{
  assetCopy = asset;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PUPeopleTileViewController__reloadEverythingForAsset___block_invoke;
  block[3] = &unk_1E7B80610;
  v8 = assetCopy;
  v6 = assetCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__PUPeopleTileViewController__reloadEverythingForAsset___block_invoke(uint64_t a1)
{
  v2 = [PUPeopleTileViewController _fetchUnsortedPeopleForAsset:*(a1 + 32)];
  v3 = [PUPeopleTileViewController _sortedPersonsForFetchResult:v2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PUPeopleTileViewController__reloadEverythingForAsset___block_invoke_2;
  block[3] = &unk_1E7B7F820;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = v2;
  v8 = v3;
  v4 = v3;
  v5 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __56__PUPeopleTileViewController__reloadEverythingForAsset___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    [v4 setUnsortedFetchResult:*(a1 + 32)];
    [v4 setSortedPeople:*(a1 + 40)];
    v3 = [v4 collectionView];
    [v3 reloadData];

    if (([v4 isTilingViewBasedLayout] & 1) == 0)
    {
      [v4 applyLayoutWithAlpha:1.0];
    }
  }
}

- (void)setSortedPeople:(id)people
{
  v4 = [people copy];
  sortedPeople = self->_sortedPeople;
  self->_sortedPeople = v4;

  v6 = [(NSArray *)self->_sortedPeople count]!= 0;
  viewIfLoaded = [(PUTileViewController *)self viewIfLoaded];
  [viewIfLoaded setUserInteractionEnabled:v6];
}

- (id)allPeople
{
  sortedPeople = [(PUPeopleTileViewController *)self sortedPeople];
  v3 = MEMORY[0x1E69C3790];
  firstObject = [sortedPeople firstObject];
  photoLibrary = [firstObject photoLibrary];
  v6 = [v3 peopleFetchResultFromFastEnumeration:sortedPeople photoLibrary:photoLibrary];

  return v6;
}

- (void)presentPeopleViewController:(id)controller
{
  controllerCopy = controller;
  peopleDelegate = [(PUPeopleTileViewController *)self peopleDelegate];
  [peopleDelegate presentPeopleViewController:controllerCopy];
}

- (void)pushPeopleViewController:(id)controller
{
  controllerCopy = controller;
  peopleDelegate = [(PUPeopleTileViewController *)self peopleDelegate];
  [peopleDelegate pushPeopleViewController:controllerCopy];
}

- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index
{
  traitCollection = [view traitCollection];
  [PUPeopleTileViewController _interItemSpacingForTraitCollection:traitCollection];
  v7 = v6;

  return v7;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  traitCollection = [view traitCollection];
  [PUPeopleTileCollectionViewCell itemSizeForTraitCollection:traitCollection];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = [(PUPeopleTileViewController *)self asset:view];

  if (!v5)
  {
    return 0;
  }

  sortedPeople = [(PUPeopleTileViewController *)self sortedPeople];
  v7 = [sortedPeople count];

  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(PUPeopleTileViewController *)self collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"PUPeopleTileCellReuseIdentifier" forIndexPath:pathCopy];

  [v7 setPeopleDelegate:self];
  sortedPeople = [(PUPeopleTileViewController *)self sortedPeople];
  item = [pathCopy item];

  v10 = [sortedPeople objectAtIndexedSubscript:item];
  asset = [(PUPeopleTileViewController *)self asset];
  [v7 setPerson:v10 asset:asset];

  return v7;
}

- (void)setDisplayAsset:(id)asset
{
  assetCopy = asset;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    asset = [(PUPeopleTileViewController *)self asset];
    v5 = [asset isEqual:assetCopy];

    if ((v5 & 1) == 0)
    {
      v6 = assetCopy;
      photoLibrary = [(PHAsset *)v6 photoLibrary];
      [photoLibrary registerChangeObserver:self];

      asset = self->_asset;
      self->_asset = v6;
      v9 = v6;

      [(PUPeopleTileViewController *)self _reloadEverythingForAsset:v9];
    }
  }
}

- (void)becomeReusable
{
  v4.receiver = self;
  v4.super_class = PUPeopleTileViewController;
  [(PUTileViewController *)&v4 becomeReusable];
  [(PUPeopleTileViewController *)self setAsset:0];
  [(PUPeopleTileViewController *)self setSortedPeople:0];
  [(PUPeopleTileViewController *)self setUnsortedFetchResult:0];
  collectionView = [(PUPeopleTileViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)applyLayoutWithAlpha:(double)alpha
{
  collectionView = [(PUPeopleTileViewController *)self collectionView];
  layer = [collectionView layer];
  [layer setAllowsGroupOpacity:0];

  [collectionView setAlpha:alpha];
  view = [(PUTileViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [collectionView setFrame:{v8, v10, v12, v14}];
  view2 = [(PUTileViewController *)self view];
  traitCollection = [view2 traitCollection];

  [PUPeopleTileViewController _interItemSpacingForTraitCollection:traitCollection];
  v18 = v17;
  [PUPeopleTileCollectionViewCell itemSizeForTraitCollection:traitCollection];
  v20 = v18 + v19;
  v21 = (v12 - v20) / v12;
  layoutDirection = [traitCollection layoutDirection];
  if (layoutDirection == 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 1.0;
  }

  if (layoutDirection == 1)
  {
    v21 = 1.0 - v21;
  }

  fadeLayer = [(PUPeopleTileViewController *)self fadeLayer];
  [fadeLayer setFrame:{v8, v10, v12, v14}];

  fadeLayer2 = [(PUPeopleTileViewController *)self fadeLayer];
  [fadeLayer2 setStartPoint:{v21, 0.0}];

  fadeLayer3 = [(PUPeopleTileViewController *)self fadeLayer];
  [fadeLayer3 setEndPoint:{v23, 0.0}];

  [collectionView setContentInset:{0.0, 0.0, 0.0, v20}];
}

- (void)applyLayoutInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = PUPeopleTileViewController;
  infoCopy = info;
  [(PUTileViewController *)&v7 applyLayoutInfo:infoCopy];
  [infoCopy alpha];
  v6 = v5;

  [(PUPeopleTileViewController *)self applyLayoutWithAlpha:v6];
}

- (void)viewDidLoad
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PUPeopleTileViewController;
  [(PUTileViewController *)&v15 viewDidLoad];
  view = [(PUTileViewController *)self view];
  v4 = objc_alloc_init(PUPeopleTileCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v4 setScrollDirection:1];
  [(UICollectionViewFlowLayout *)v4 setSectionInset:16.0, 16.0, 16.0, 0.0];
  v5 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v6 = [v5 initWithFrame:v4 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:clearColor];

  [v6 setShowsHorizontalScrollIndicator:0];
  [v6 setShowsVerticalScrollIndicator:0];
  [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUPeopleTileCellReuseIdentifier"];
  [v6 setDataSource:self];
  [v6 setDelegate:self];
  [(PUPeopleTileViewController *)self setCollectionView:v6];
  [view addSubview:v6];
  sortedPeople = [(PUPeopleTileViewController *)self sortedPeople];
  [view setUserInteractionEnabled:{objc_msgSend(sortedPeople, "count") != 0}];

  layer = [MEMORY[0x1E6979380] layer];
  [(PUPeopleTileViewController *)self setFadeLayer:layer];
  v10 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.9];
  v16[0] = [v10 CGColor];
  v11 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.3];
  v16[1] = [v11 CGColor];
  v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  v16[2] = [v12 CGColor];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  [layer setColors:v13];

  layer2 = [view layer];
  [layer2 setMask:layer];
}

- (PUPeopleTileViewController)initWithReuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PUPeopleTileViewController;
  v3 = [(PUTileViewController *)&v8 initWithReuseIdentifier:identifier];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *MEMORY[0x1E69C4110];
    mEMORY[0x1E69C3788] = [MEMORY[0x1E69C3788] sharedManager];
    [defaultCenter addObserver:v3 selector:sel__peopleDidChange_ name:v5 object:mEMORY[0x1E69C3788]];
  }

  return v3;
}

+ (id)_sortedPersonsForFetchResult:(id)result
{
  fetchedObjects = [result fetchedObjects];
  v4 = [fetchedObjects sortedArrayUsingComparator:&__block_literal_global_39798];

  return v4;
}

uint64_t __59__PUPeopleTileViewController__sortedPersonsForFetchResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 name];
  v7 = [v6 length];

  v8 = [v5 name];
  v9 = [v8 length];

  if (v7 && !v9)
  {
    goto LABEL_3;
  }

  if (!v7 && v9)
  {
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  v12 = [v4 faceCount];
  v13 = [v5 faceCount];
  if (v12 <= v13)
  {
    if (v12 >= v13)
    {
      v14 = [v4 localIdentifier];
      v15 = [v5 localIdentifier];
      v10 = [v14 compare:v15];

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_3:
  v10 = -1;
LABEL_7:

  return v10;
}

+ (id)_fetchUnsortedPeopleForAsset:(id)asset
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978830];
  assetCopy = asset;
  v5 = [v3 fetchOptionsWithPhotoLibrary:0 orObject:assetCopy];
  [v5 setPersonContext:4];
  v10[0] = *MEMORY[0x1E6978F38];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v5 setFetchPropertySets:v6];

  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v5 setIncludedDetectionTypes:px_defaultDetectionTypes];

  [v5 setIncludeTorsoAndFaceDetectionData:1];
  v8 = [MEMORY[0x1E6978980] fetchPersonsInAsset:assetCopy options:v5];

  return v8;
}

+ (double)_interItemSpacingForTraitCollection:(id)collection
{
  v3 = PXUserInterfaceSizeClassFromUITraitCollection();
  result = 10.0;
  if (v3 == 2)
  {
    return 14.0;
  }

  return result;
}

+ (CGSize)tileSizeForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (PXUserInterfaceSizeClassFromUITraitCollection() == 2)
  {
    v5 = 6;
  }

  else
  {
    v5 = 4;
  }

  [PUPeopleTileCollectionViewCell itemSizeForTraitCollection:collectionCopy];
  v7 = v6;
  v9 = v8;
  [self _interItemSpacingForTraitCollection:collectionCopy];
  v11 = v10;

  v12 = v11 * v5 + (v5 | 1) * v7 + 16.0;
  v13 = v9 + 32.0;
  result.height = v13;
  result.width = v12;
  return result;
}

@end