@interface PUPeopleTileViewController
+ (CGSize)tileSizeForTraitCollection:(id)a3;
+ (double)_interItemSpacingForTraitCollection:(id)a3;
+ (id)_fetchUnsortedPeopleForAsset:(id)a3;
+ (id)_sortedPersonsForFetchResult:(id)a3;
- (BOOL)_compare:(id)a3 to:(id)a4 ignoringIndices:(id)a5;
- (BOOL)isTilingViewBasedLayout;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PUPeopleTileDelegate)peopleDelegate;
- (PUPeopleTileViewController)initWithReuseIdentifier:(id)a3;
- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5;
- (id)allPeople;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_peopleDidChange:(id)a3;
- (void)_reloadEverythingForAsset:(id)a3;
- (void)applyLayoutInfo:(id)a3;
- (void)applyLayoutWithAlpha:(double)a3;
- (void)becomeReusable;
- (void)photoLibraryDidChange:(id)a3;
- (void)presentPeopleViewController:(id)a3;
- (void)pushPeopleViewController:(id)a3;
- (void)setDisplayAsset:(id)a3;
- (void)setSortedPeople:(id)a3;
- (void)viewDidLoad;
@end

@implementation PUPeopleTileViewController

- (PUPeopleTileDelegate)peopleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_peopleDelegate);

  return WeakRetained;
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v5 = [(PUPeopleTileViewController *)self unsortedFetchResult];
  v6 = [v4 changeDetailsForFetchResult:v5];

  if (v6)
  {
    if ([v6 hasIncrementalChanges])
    {
      v7 = [v6 changedIndexes];
      if ([v7 count] == 1)
      {
        v8 = [v6 removedIndexes];
        if (![v8 count])
        {
          v10 = [v6 insertedIndexes];
          v11 = [v10 count];

          if (!v11)
          {
            v12[0] = MEMORY[0x1E69E9820];
            v12[1] = 3221225472;
            v12[2] = __52__PUPeopleTileViewController_photoLibraryDidChange___block_invoke;
            v12[3] = &unk_1E7B80C38;
            v13 = v6;
            v14 = self;
            dispatch_async(MEMORY[0x1E69E96A0], v12);

            goto LABEL_8;
          }

          goto LABEL_7;
        }
      }
    }

LABEL_7:
    v9 = [(PUPeopleTileViewController *)self asset];
    [(PUPeopleTileViewController *)self _reloadEverythingForAsset:v9];
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

- (BOOL)_compare:(id)a3 to:(id)a4 ignoringIndices:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 count];
  if (v10 != [v8 count])
  {
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  if ([v7 count])
  {
    v11 = 0;
    do
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      v13 = [v9 containsObject:v12];

      if ((v13 & 1) == 0)
      {
        v14 = [v7 objectAtIndexedSubscript:v11];
        v15 = [v8 objectAtIndexedSubscript:v11];
        v16 = [v14 isEqual:v15];

        if (!v16)
        {
          goto LABEL_8;
        }
      }
    }

    while (++v11 < [v7 count]);
  }

  v17 = 1;
LABEL_9:

  return v17;
}

- (void)_peopleDidChange:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69C4118]];

  v7 = [(PUPeopleTileViewController *)self sortedPeople];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  if ([v6 count] == 1)
  {
    v8 = [v6 anyObject];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __47__PUPeopleTileViewController__peopleDidChange___block_invoke;
    v29[3] = &unk_1E7B793B8;
    v9 = v8;
    v30 = v9;
    v31 = &v32;
    [v7 enumerateObjectsUsingBlock:v29];
  }

  if (v33[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v36 count:16];
    if (v11)
    {
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v20 + 1) + 8 * i) localIdentifier];
          v15 = [v6 containsObject:v14];

          if (v15)
          {

            v10 = [(PUPeopleTileViewController *)self asset];
            [(PUPeopleTileViewController *)self _reloadEverythingForAsset:v10];
            goto LABEL_15;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v20 objects:v36 count:16];
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
    v16 = [(PUPeopleTileViewController *)self asset];
    v17 = [PUPeopleTileViewController _fetchUnsortedPeopleForAsset:v16];

    v18 = [PUPeopleTileViewController _sortedPersonsForFetchResult:v17];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__PUPeopleTileViewController__peopleDidChange___block_invoke_2;
    block[3] = &unk_1E7B793E0;
    block[4] = self;
    v25 = v7;
    v26 = v18;
    v27 = v17;
    v28 = &v32;
    v19 = v17;
    v10 = v18;
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
  v2 = [(PUTileViewController *)self view];
  v3 = [v2 traitCollection];

  LOBYTE(v2) = [v3 userInterfaceIdiom] != 6;
  return v2;
}

- (void)_reloadEverythingForAsset:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PUPeopleTileViewController__reloadEverythingForAsset___block_invoke;
  block[3] = &unk_1E7B80610;
  v8 = v4;
  v6 = v4;
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

- (void)setSortedPeople:(id)a3
{
  v4 = [a3 copy];
  sortedPeople = self->_sortedPeople;
  self->_sortedPeople = v4;

  v6 = [(NSArray *)self->_sortedPeople count]!= 0;
  v7 = [(PUTileViewController *)self viewIfLoaded];
  [v7 setUserInteractionEnabled:v6];
}

- (id)allPeople
{
  v2 = [(PUPeopleTileViewController *)self sortedPeople];
  v3 = MEMORY[0x1E69C3790];
  v4 = [v2 firstObject];
  v5 = [v4 photoLibrary];
  v6 = [v3 peopleFetchResultFromFastEnumeration:v2 photoLibrary:v5];

  return v6;
}

- (void)presentPeopleViewController:(id)a3
{
  v4 = a3;
  v5 = [(PUPeopleTileViewController *)self peopleDelegate];
  [v5 presentPeopleViewController:v4];
}

- (void)pushPeopleViewController:(id)a3
{
  v4 = a3;
  v5 = [(PUPeopleTileViewController *)self peopleDelegate];
  [v5 pushPeopleViewController:v4];
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5
{
  v5 = [a3 traitCollection];
  [PUPeopleTileViewController _interItemSpacingForTraitCollection:v5];
  v7 = v6;

  return v7;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v5 = [a3 traitCollection];
  [PUPeopleTileCollectionViewCell itemSizeForTraitCollection:v5];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(PUPeopleTileViewController *)self asset:a3];

  if (!v5)
  {
    return 0;
  }

  v6 = [(PUPeopleTileViewController *)self sortedPeople];
  v7 = [v6 count];

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PUPeopleTileViewController *)self collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"PUPeopleTileCellReuseIdentifier" forIndexPath:v5];

  [v7 setPeopleDelegate:self];
  v8 = [(PUPeopleTileViewController *)self sortedPeople];
  v9 = [v5 item];

  v10 = [v8 objectAtIndexedSubscript:v9];
  v11 = [(PUPeopleTileViewController *)self asset];
  [v7 setPerson:v10 asset:v11];

  return v7;
}

- (void)setDisplayAsset:(id)a3
{
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(PUPeopleTileViewController *)self asset];
    v5 = [v4 isEqual:v10];

    if ((v5 & 1) == 0)
    {
      v6 = v10;
      v7 = [(PHAsset *)v6 photoLibrary];
      [v7 registerChangeObserver:self];

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
  v3 = [(PUPeopleTileViewController *)self collectionView];
  [v3 reloadData];
}

- (void)applyLayoutWithAlpha:(double)a3
{
  v27 = [(PUPeopleTileViewController *)self collectionView];
  v5 = [v27 layer];
  [v5 setAllowsGroupOpacity:0];

  [v27 setAlpha:a3];
  v6 = [(PUTileViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v27 setFrame:{v8, v10, v12, v14}];
  v15 = [(PUTileViewController *)self view];
  v16 = [v15 traitCollection];

  [PUPeopleTileViewController _interItemSpacingForTraitCollection:v16];
  v18 = v17;
  [PUPeopleTileCollectionViewCell itemSizeForTraitCollection:v16];
  v20 = v18 + v19;
  v21 = (v12 - v20) / v12;
  v22 = [v16 layoutDirection];
  if (v22 == 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 1.0;
  }

  if (v22 == 1)
  {
    v21 = 1.0 - v21;
  }

  v24 = [(PUPeopleTileViewController *)self fadeLayer];
  [v24 setFrame:{v8, v10, v12, v14}];

  v25 = [(PUPeopleTileViewController *)self fadeLayer];
  [v25 setStartPoint:{v21, 0.0}];

  v26 = [(PUPeopleTileViewController *)self fadeLayer];
  [v26 setEndPoint:{v23, 0.0}];

  [v27 setContentInset:{0.0, 0.0, 0.0, v20}];
}

- (void)applyLayoutInfo:(id)a3
{
  v7.receiver = self;
  v7.super_class = PUPeopleTileViewController;
  v4 = a3;
  [(PUTileViewController *)&v7 applyLayoutInfo:v4];
  [v4 alpha];
  v6 = v5;

  [(PUPeopleTileViewController *)self applyLayoutWithAlpha:v6];
}

- (void)viewDidLoad
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PUPeopleTileViewController;
  [(PUTileViewController *)&v15 viewDidLoad];
  v3 = [(PUTileViewController *)self view];
  v4 = objc_alloc_init(PUPeopleTileCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v4 setScrollDirection:1];
  [(UICollectionViewFlowLayout *)v4 setSectionInset:16.0, 16.0, 16.0, 0.0];
  v5 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v6 = [v5 initWithFrame:v4 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:v7];

  [v6 setShowsHorizontalScrollIndicator:0];
  [v6 setShowsVerticalScrollIndicator:0];
  [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PUPeopleTileCellReuseIdentifier"];
  [v6 setDataSource:self];
  [v6 setDelegate:self];
  [(PUPeopleTileViewController *)self setCollectionView:v6];
  [v3 addSubview:v6];
  v8 = [(PUPeopleTileViewController *)self sortedPeople];
  [v3 setUserInteractionEnabled:{objc_msgSend(v8, "count") != 0}];

  v9 = [MEMORY[0x1E6979380] layer];
  [(PUPeopleTileViewController *)self setFadeLayer:v9];
  v10 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.9];
  v16[0] = [v10 CGColor];
  v11 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.3];
  v16[1] = [v11 CGColor];
  v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  v16[2] = [v12 CGColor];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  [v9 setColors:v13];

  v14 = [v3 layer];
  [v14 setMask:v9];
}

- (PUPeopleTileViewController)initWithReuseIdentifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = PUPeopleTileViewController;
  v3 = [(PUTileViewController *)&v8 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *MEMORY[0x1E69C4110];
    v6 = [MEMORY[0x1E69C3788] sharedManager];
    [v4 addObserver:v3 selector:sel__peopleDidChange_ name:v5 object:v6];
  }

  return v3;
}

+ (id)_sortedPersonsForFetchResult:(id)a3
{
  v3 = [a3 fetchedObjects];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_39798];

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

+ (id)_fetchUnsortedPeopleForAsset:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6978830];
  v4 = a3;
  v5 = [v3 fetchOptionsWithPhotoLibrary:0 orObject:v4];
  [v5 setPersonContext:4];
  v10[0] = *MEMORY[0x1E6978F38];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v5 setFetchPropertySets:v6];

  v7 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [v5 setIncludedDetectionTypes:v7];

  [v5 setIncludeTorsoAndFaceDetectionData:1];
  v8 = [MEMORY[0x1E6978980] fetchPersonsInAsset:v4 options:v5];

  return v8;
}

+ (double)_interItemSpacingForTraitCollection:(id)a3
{
  v3 = PXUserInterfaceSizeClassFromUITraitCollection();
  result = 10.0;
  if (v3 == 2)
  {
    return 14.0;
  }

  return result;
}

+ (CGSize)tileSizeForTraitCollection:(id)a3
{
  v4 = a3;
  if (PXUserInterfaceSizeClassFromUITraitCollection() == 2)
  {
    v5 = 6;
  }

  else
  {
    v5 = 4;
  }

  [PUPeopleTileCollectionViewCell itemSizeForTraitCollection:v4];
  v7 = v6;
  v9 = v8;
  [a1 _interItemSpacingForTraitCollection:v4];
  v11 = v10;

  v12 = v11 * v5 + (v5 | 1) * v7 + 16.0;
  v13 = v9 + 32.0;
  result.height = v13;
  result.width = v12;
  return result;
}

@end