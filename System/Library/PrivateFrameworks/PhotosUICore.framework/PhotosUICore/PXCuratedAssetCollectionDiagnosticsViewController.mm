@interface PXCuratedAssetCollectionDiagnosticsViewController
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (PXCuratedAssetCollectionDiagnosticsViewController)init;
- (id)_tapToRadarViewControllerWithScreenshot:(BOOL)screenshot;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)curationDebugInformationForCurationType:(int64_t)type;
- (id)fullCurationDebugInformation;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_editSettings:(id)settings;
- (void)_enumerateDifferencesBetweenRect:(CGRect)rect andRect:(CGRect)andRect usingBlock:(id)block;
- (void)_tapToRadar:(id)radar;
- (void)_updateCachedAssets;
- (void)_updateUIElementsVisibility;
- (void)addAssetUUIDsTo:(id)to from:(id)from;
- (void)changeCurationType:(id)type;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)displayCurrentCurationType;
- (void)hideCurationSettings:(id)settings;
- (void)hideItemDetails:(id)details;
- (void)hideToolbarItems;
- (void)presentTapToRadarIfNeeded;
- (void)reloadCuration;
- (void)requestCurationDebugInfoWithOptions:(id)options setGlobally:(BOOL)globally;
- (void)setCurrentCurationType:(int64_t)type;
- (void)showCurationSettings:(id)settings;
- (void)showInfo:(id)info;
- (void)showItemDetailsWithDebugInfo:(id)info;
- (void)showToolbarItems;
- (void)toggleCurationComparison:(id)comparison;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PXCuratedAssetCollectionDiagnosticsViewController

- (void)requestCurationDebugInfoWithOptions:(id)options setGlobally:(BOOL)globally
{
  optionsCopy = options;
  curationDebugFetchQueue = self->_curationDebugFetchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__PXCuratedAssetCollectionDiagnosticsViewController_requestCurationDebugInfoWithOptions_setGlobally___block_invoke;
  block[3] = &unk_1E774B368;
  globallyCopy = globally;
  v10 = optionsCopy;
  selfCopy = self;
  v8 = optionsCopy;
  dispatch_async(curationDebugFetchQueue, block);
}

void __101__PXCuratedAssetCollectionDiagnosticsViewController_requestCurationDebugInfoWithOptions_setGlobally___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = MEMORY[0x1E695E118];
  [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"includeKeyAsset"];
  [v2 setObject:v3 forKeyedSubscript:@"includeCuration"];
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"extendedCurationOptions"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:@"setGlobally"];

  v23 = v2;
  v26 = [*(a1 + 40) curationDebugInformationWithOptions:v2];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v22 = a1;
  obj = [*(a1 + 40) _curationTypeKeys];
  v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v27)
  {
    v6 = 0;
    v25 = *v37;
    do
    {
      v7 = 0;
      do
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v7;
        v8 = *(*(&v36 + 1) + 8 * v7);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v9 = [v26 objectForKeyedSubscript:v8];
        v10 = [v9 objectForKeyedSubscript:@"items"];
        v11 = [v10 objectEnumerator];

        v12 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v33;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v32 + 1) + 8 * i) objectForKeyedSubscript:@"dedupedItemIdentifier"];
              if (v16)
              {
                v17 = [v5 objectForKeyedSubscript:v16];
                if (!v17)
                {
                  v18 = v6 + 1;
                  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
                  [v5 setObject:v19 forKeyedSubscript:v16];

                  v6 = v18;
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v13);
        }

        v7 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v27);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__PXCuratedAssetCollectionDiagnosticsViewController_requestCurationDebugInfoWithOptions_setGlobally___block_invoke_2;
  block[3] = &unk_1E774A1B8;
  block[4] = *(v22 + 40);
  v30 = v26;
  v31 = v5;
  v20 = v5;
  v21 = v26;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __101__PXCuratedAssetCollectionDiagnosticsViewController_requestCurationDebugInfoWithOptions_setGlobally___block_invoke_2(id *a1)
{
  objc_storeStrong(a1[4] + 146, a1[5]);
  objc_storeStrong(a1[4] + 153, a1[6]);
  *(a1[4] + 1192) = 1;
  [a1[4] reloadCuration];
  [a1[4] _updateUIElementsVisibility];
  v2 = [a1[4] curationDebugInformationForCurationType:*(a1[4] + 158)];
  v3 = [v2 objectForKeyedSubscript:@"curationOptions"];

  [*(a1[4] + 155) setOptions:v3];
  [a1[4] presentTapToRadarIfNeeded];
}

- (id)fullCurationDebugInformation
{
  dispatch_sync(self->_curationDebugFetchQueue, &__block_literal_global_78858);
  curationDebugInformation = self->_curationDebugInformation;

  return curationDebugInformation;
}

- (id)curationDebugInformationForCurationType:(int64_t)type
{
  if (type > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7735990[type];
  }

  return [(NSDictionary *)self->_curationDebugInformation objectForKeyedSubscript:v3];
}

- (void)hideItemDetails:(id)details
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__PXCuratedAssetCollectionDiagnosticsViewController_hideItemDetails___block_invoke;
  v4[3] = &unk_1E774C648;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__PXCuratedAssetCollectionDiagnosticsViewController_hideItemDetails___block_invoke_2;
  v3[3] = &unk_1E774B308;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:v3 completion:0.25];
}

uint64_t __69__PXCuratedAssetCollectionDiagnosticsViewController_hideItemDetails___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 1216) setHidden:1];
  }

  return result;
}

- (void)showItemDetailsWithDebugInfo:(id)info
{
  v63 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  itemDetailsView = self->_itemDetailsView;
  if (!itemDetailsView)
  {
    view = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
    [view frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    if (v12 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    v16 = (v12 - v15) * 0.5 + 6.0;
    v17 = (v14 - v15) * 0.5 + 6.0;
    v64.origin.x = v8;
    v64.origin.y = v10;
    v64.size.width = v12;
    v64.size.height = v14;
    v65 = CGRectInset(v64, v16, v17);
    v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v65.origin.x, v65.origin.y, v65.size.width, v65.size.height}];
    v19 = self->_itemDetailsView;
    self->_itemDetailsView = v18;

    layer = [(UIView *)self->_itemDetailsView layer];
    [layer setCornerRadius:6.0];

    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(UIView *)self->_itemDetailsView setBackgroundColor:secondarySystemBackgroundColor];

    v22 = [MEMORY[0x1E69DC738] buttonWithType:1];
    [v22 setFrame:{7.0, 8.0, 60.0, 24.0}];
    [v22 setTitle:@"Done" forState:0];
    [v22 addTarget:self action:sel_hideItemDetails_ forControlEvents:0x2000];
    [(UIView *)self->_itemDetailsView addSubview:v22];
    [(UIView *)self->_itemDetailsView setHidden:1];
    [(UIView *)self->_itemDetailsView setAlpha:0.0];
    view2 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
    [view2 addSubview:self->_itemDetailsView];

    itemDetailsView = self->_itemDetailsView;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  subviews = [(UIView *)itemDetailsView subviews];
  v25 = [subviews countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v58;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v58 != v27)
        {
          objc_enumerationMutation(subviews);
        }

        v29 = *(*(&v57 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        [v29 removeFromSuperview];
      }

      v26 = [subviews countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v26);
  }

  v30 = [infoCopy objectForKeyedSubscript:@"criteriaReason"];
  v50 = v30;
  if (v30)
  {
    v31 = v30;
    v32 = objc_alloc(MEMORY[0x1E69DCC10]);
    view3 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
    [view3 frame];
    v35 = [v32 initWithFrame:{10.0, 40.0, v34 + -20.0, 20.0}];

    [v35 setAutoresizingMask:48];
    [v35 setNumberOfLines:0];
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Criteria evaluation:\n%@", v31, v50];
    [v35 setText:v36];

    v37 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    [v35 setFont:v37];

    [v35 sizeToFit];
    [(UIView *)self->_itemDetailsView addSubview:v35];
    [v35 bounds];
    v39 = v38 + 40.0;
  }

  else
  {
    v39 = 40.0;
  }

  v51 = infoCopy;
  v40 = [infoCopy objectForKeyedSubscript:@"stateHistory"];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v41 = [v40 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = 0;
    v44 = *v54;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v54 != v44)
        {
          objc_enumerationMutation(v40);
        }

        v46 = [[PXHistoryLineView alloc] initWithHistoryLine:*(*(&v53 + 1) + 8 * j)];
        view4 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
        [view4 frame];
        v49 = v48 + -20.0;

        [(PXHistoryLineView *)v46 setFrame:10.0, v39 + v43 * 40.0, v49, 20.0];
        [(UIView *)self->_itemDetailsView addSubview:v46];
        ++v43;
      }

      v42 = [v40 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v42);
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __82__PXCuratedAssetCollectionDiagnosticsViewController_showItemDetailsWithDebugInfo___block_invoke;
  v52[3] = &unk_1E774C648;
  v52[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v52 animations:0.25];
}

uint64_t __82__PXCuratedAssetCollectionDiagnosticsViewController_showItemDetailsWithDebugInfo___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1216) setHidden:0];
  v2 = *(*(a1 + 32) + 1216);

  return [v2 setAlpha:1.0];
}

- (void)hideCurationSettings:(id)settings
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__PXCuratedAssetCollectionDiagnosticsViewController_hideCurationSettings___block_invoke;
  v4[3] = &unk_1E774C648;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__PXCuratedAssetCollectionDiagnosticsViewController_hideCurationSettings___block_invoke_2;
  v3[3] = &unk_1E774B308;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:v3 completion:0.25];
}

uint64_t __74__PXCuratedAssetCollectionDiagnosticsViewController_hideCurationSettings___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 1200) setHidden:1];
  }

  return result;
}

- (void)showCurationSettings:(id)settings
{
  if (!self->_curationSettingsView)
  {
    view = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
    [view frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    if (v10 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    v14 = (v10 - v13) * 0.5 + 6.0;
    v15 = (v12 - v13) * 0.5 + 6.0;
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    v29 = CGRectInset(v28, v14, v15);
    v16 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v29.origin.x, v29.origin.y, v29.size.width, v29.size.height}];
    curationSettingsView = self->_curationSettingsView;
    self->_curationSettingsView = v16;

    layer = [(UIView *)self->_curationSettingsView layer];
    [layer setCornerRadius:6.0];

    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(UIView *)self->_curationSettingsView setBackgroundColor:secondarySystemBackgroundColor];

    v20 = [MEMORY[0x1E69DC738] buttonWithType:1];
    [v20 setFrame:{7.0, 8.0, 60.0, 24.0}];
    [v20 setTitle:@"Done" forState:0];
    [v20 addTarget:self action:sel_hideCurationSettings_ forControlEvents:0x2000];
    [(UIView *)self->_curationSettingsView addSubview:v20];
    v21 = [objc_alloc(MEMORY[0x1E69DD168]) initWithFrame:{35.0, 80.0, 200.0, 200.0}];
    [v21 setBackgroundColor:0];
    titleLabel = [v20 titleLabel];
    font = [titleLabel font];
    [v21 setFont:font];

    [v21 setText:@"Symbols:\n\t💟 favorite\n\t🚮 junk\n\t📳 blurry\n\t🏞 SDOF/HDR\n\t✅ elected\n\t✳️ completed\n\t❌ rejected\n\t⁉️ ?!?!"];
    [(UIView *)self->_curationSettingsView addSubview:v21];
    v24 = [objc_alloc(MEMORY[0x1E69DD168]) initWithFrame:{180.0, 80.0, 200.0, 200.0}];
    [v24 setBackgroundColor:0];
    font2 = [v21 font];
    [v24 setFont:font2];

    [v24 setText:@"Deduping\n\t⏏️ similar\n\t🔀 semantic\n\t⤴️ SDOF/HDR\n\t🔃 timing\n\t🎦 video"];
    [(UIView *)self->_curationSettingsView addSubview:v24];
    [(UIView *)self->_curationSettingsView setHidden:1];
    [(UIView *)self->_curationSettingsView setAlpha:0.0];
    view2 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
    [view2 addSubview:self->_curationSettingsView];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __74__PXCuratedAssetCollectionDiagnosticsViewController_showCurationSettings___block_invoke;
  v27[3] = &unk_1E774C648;
  v27[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v27 animations:0.25];
}

uint64_t __74__PXCuratedAssetCollectionDiagnosticsViewController_showCurationSettings___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1200) setHidden:0];
  v2 = *(*(a1 + 32) + 1200);

  return [v2 setAlpha:1.0];
}

- (void)setCurrentCurationType:(int64_t)type
{
  if (self->_currentCurationType != type)
  {
    self->_currentCurationType = type;
    navigationController = [(PXCuratedAssetCollectionDiagnosticsViewController *)self navigationController];
    topViewController = [navigationController topViewController];

    if (topViewController == self)
    {
      [(PXCuratedAssetCollectionDiagnosticsViewController *)self showToolbarItems];
    }

    [(PXCuratedAssetCollectionDiagnosticsViewController *)self reloadCuration];
  }
}

- (void)addAssetUUIDsTo:(id)to from:(id)from
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  fromCopy = from;
  v8 = [fromCopy objectForKeyedSubscript:@"itemIdentifiers"];
  if (v8)
  {
    [toCopy addObjectsFromArray:v8];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [fromCopy objectForKeyedSubscript:{@"sortedObjects", 0}];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(PXCuratedAssetCollectionDiagnosticsViewController *)self addAssetUUIDsTo:toCopy from:*(*(&v14 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)changeCurationType:(id)type
{
  typeCopy = type;
  currentCurationType = self->_currentCurationType;
  v11 = typeCopy;
  if ([typeCopy direction] == 1)
  {
    if (currentCurationType <= 5)
    {
      v6 = 5;
    }

    else
    {
      v6 = currentCurationType;
    }

    while (v6 != currentCurationType)
    {
      v7 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self curationDebugInformationForCurationType:++currentCurationType];

      if (v7)
      {
        goto LABEL_7;
      }
    }
  }

  else if ([v11 direction] == 2 && currentCurationType-- >= 1)
  {
    while (1)
    {
      v9 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self curationDebugInformationForCurationType:currentCurationType];

      if (v9)
      {
        break;
      }

      v10 = currentCurationType-- + 1;
      if (v10 < 2)
      {
        goto LABEL_12;
      }
    }

LABEL_7:
    [(PXCuratedAssetCollectionDiagnosticsViewController *)self setCurrentCurationType:currentCurationType];
  }

LABEL_12:
}

- (void)reloadCuration
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self assetsForCurationType:5];
  allAssets = self->_allAssets;
  self->_allAssets = v3;

  v5 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self assetsForCurationType:0];
  firstObject = [v5 firstObject];
  uuid = [firstObject uuid];
  keyAssetUUID = self->_keyAssetUUID;
  self->_keyAssetUUID = uuid;

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = self->_allAssets;
  v11 = [(PHFetchResult *)v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        uuid2 = [v15 uuid];
        [(NSDictionary *)v9 setObject:v15 forKeyedSubscript:uuid2];
      }

      v12 = [(PHFetchResult *)v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  assetByUUID = self->_assetByUUID;
  self->_assetByUUID = v9;
  v18 = v9;

  v19 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self curationDebugInformationForCurationType:self->_currentCurationType];
  v20 = [v19 objectForKeyedSubscript:@"rootCluster"];
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(PXCuratedAssetCollectionDiagnosticsViewController *)self addAssetUUIDsTo:v21 from:v20];
  sortedVisibleAssetUUIDs = self->_sortedVisibleAssetUUIDs;
  self->_sortedVisibleAssetUUIDs = v21;
  v23 = v21;

  fetchedObjects = [(PHFetchResult *)self->_allAssets fetchedObjects];
  visibleAssets = self->_visibleAssets;
  self->_visibleAssets = fetchedObjects;

  [(UICollectionView *)self->_collectionView reloadData];
  selectedSegmentIndex = [(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex];

  if (selectedSegmentIndex == 1)
  {
    [(PXCuratedAssetCollectionDiagnosticsViewController *)self displayCurrentCurationType];
  }
}

- (void)displayCurrentCurationType
{
  if (!self->_curationTypeView)
  {
    view = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
    [view frame];
    v5 = v4 * 0.5;
    view2 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
    [view2 frame];
    v8 = v7 * 0.5;
    v29.origin.x = -90.0;
    v29.origin.y = -45.0;
    v29.size.width = 180.0;
    v29.size.height = 90.0;
    v30 = CGRectOffset(v29, v5, v8);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;

    v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    curationTypeView = self->_curationTypeView;
    self->_curationTypeView = v13;

    layer = [(UIView *)self->_curationTypeView layer];
    [layer setCornerRadius:6.0];

    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    v17 = [secondarySystemBackgroundColor colorWithAlphaComponent:0.75];
    [(UIView *)self->_curationTypeView setBackgroundColor:v17];

    v18 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(UIView *)self->_curationTypeView bounds];
    v19 = [v18 initWithFrame:?];
    v20 = [MEMORY[0x1E69DB878] systemFontOfSize:24.0 weight:2.0];
    [v19 setFont:v20];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v19 setTextColor:labelColor];

    [v19 setTextAlignment:1];
    [(UIView *)self->_curationTypeView addSubview:v19];
    [(UIView *)self->_curationTypeView setHidden:1];
    [(UIView *)self->_curationTypeView setAlpha:0.0];
    view3 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
    [view3 addSubview:self->_curationTypeView];
  }

  currentCurationType = self->_currentCurationType;
  if (currentCurationType > 5)
  {
    v24 = 0;
  }

  else
  {
    v24 = off_1E7735960[currentCurationType];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __79__PXCuratedAssetCollectionDiagnosticsViewController_displayCurrentCurationType__block_invoke;
  v27[3] = &unk_1E774C620;
  v27[4] = self;
  v28 = v24;
  [MEMORY[0x1E69DD250] animateWithDuration:v27 animations:0.25];
  v25 = dispatch_time(0, 600000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PXCuratedAssetCollectionDiagnosticsViewController_displayCurrentCurationType__block_invoke_2;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_after(v25, MEMORY[0x1E69E96A0], block);
}

void __79__PXCuratedAssetCollectionDiagnosticsViewController_displayCurrentCurationType__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1208) subviews];
  v3 = [v2 firstObject];

  [v3 setText:*(a1 + 40)];
  [*(*(a1 + 32) + 1208) setHidden:0];
  [*(*(a1 + 32) + 1208) setAlpha:1.0];
}

uint64_t __79__PXCuratedAssetCollectionDiagnosticsViewController_displayCurrentCurationType__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__PXCuratedAssetCollectionDiagnosticsViewController_displayCurrentCurationType__block_invoke_3;
  v3[3] = &unk_1E774C648;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __79__PXCuratedAssetCollectionDiagnosticsViewController_displayCurrentCurationType__block_invoke_4;
  v2[3] = &unk_1E774B308;
  v2[4] = v4;
  return [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:v2 completion:0.25];
}

uint64_t __79__PXCuratedAssetCollectionDiagnosticsViewController_displayCurrentCurationType__block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 1208) setHidden:1];
  }

  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = [view cellForItemAtIndexPath:path];
  debugInfo = [v6 debugInfo];
  [(PXCuratedAssetCollectionDiagnosticsViewController *)self showItemDetailsWithDebugInfo:debugInfo];
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  v9 = [view dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"PXCuratedAssetCollectionSectionHeaderReuseIdentifier" forIndexPath:pathCopy];
  if (self->_curationDebugInformation)
  {
    v10 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self curationDebugInformationForCurationType:self->_currentCurationType];
    v11 = [v10 objectForKeyedSubscript:@"rootCluster"];
    v12 = [v11 objectForKeyedSubscript:@"sortedObjects"];
    v13 = [v12 objectAtIndex:{objc_msgSend(pathCopy, "section")}];

    [v9 setSectionInfo:v13];
  }

  return v9;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  v5 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view:view];
  [v5 bounds];
  v7 = v6;

  v8 = 42.0;
  v9 = v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    unsignedIntegerValue = 0;
  }

  else
  {
    unsignedIntegerValue = [(NSArray *)self->_visibleAssets count];
  }

  if (self->_curationDebugInformation)
  {
    v8 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self curationDebugInformationForCurationType:self->_currentCurationType];
    v9 = [v8 objectForKeyedSubscript:@"rootCluster"];
    v10 = [v9 objectForKeyedSubscript:@"sortedObjects"];
    v11 = [v10 objectAtIndex:section];

    v12 = [v11 objectForKeyedSubscript:@"totalNumberOfItems"];
    unsignedIntegerValue = [v12 unsignedIntegerValue];
    if (!unsignedIntegerValue)
    {
      v13 = [v11 objectForKeyedSubscript:@"itemIdentifiers"];
      unsignedIntegerValue = [v13 count];
    }
  }

  return unsignedIntegerValue;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v91 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  item = [pathCopy item];
  v80 = viewCopy;
  if (self->_curationDebugInformation)
  {
    v9 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self curationDebugInformationForCurationType:self->_currentCurationType];
    v77 = [v9 objectForKeyedSubscript:@"rootCluster"];
    v10 = [v77 objectForKeyedSubscript:@"sortedObjects"];
    if ([pathCopy section])
    {
      v11 = 0;
      do
      {
        v12 = [v10 objectAtIndexedSubscript:v11];
        v13 = [v12 objectForKeyedSubscript:@"totalNumberOfItems"];
        unsignedIntegerValue = [v13 unsignedIntegerValue];

        item += unsignedIntegerValue;
        ++v11;
      }

      while (v11 < [pathCopy section]);
    }

    v15 = [v10 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    v16 = [v15 objectForKeyedSubscript:@"sortedObjects"];
    v17 = v16;
    if (v16)
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      obj = v16;
      v18 = [obj countByEnumeratingWithState:&v86 objects:v90 count:16];
      if (v18)
      {
        v19 = v18;
        v66 = v17;
        v67 = v15;
        v68 = v10;
        v69 = v9;
        selfCopy = self;
        v20 = pathCopy;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = *v87;
LABEL_8:
        v25 = 0;
        v75 = v22 ^ v19;
        v26 = v21;
        v27 = v23;
        while (1)
        {
          if (*v87 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v86 + 1) + 8 * v25);

          v28 = [v23 objectForKeyedSubscript:@"totalNumberOfItems"];
          unsignedIntegerValue2 = [v28 unsignedIntegerValue];

          v30 = [v23 objectForKeyedSubscript:@"sortedObjects"];

          v21 = unsignedIntegerValue2 + v26;
          if (v21 > [v20 item])
          {
            break;
          }

          LOBYTE(v22) = v22 ^ 1;
          ++v25;
          v26 = v21;
          v27 = v23;
          if (v19 == v25)
          {
            v19 = [obj countByEnumeratingWithState:&v86 objects:v90 count:16];
            v22 = v75;
            if (v19)
            {
              goto LABEL_8;
            }

            v23 = 0;
            goto LABEL_22;
          }
        }

        if (!v30)
        {
LABEL_22:
          viewCopy = v80;
          pathCopy = v20;
          v9 = v69;
          self = selfCopy;
          v15 = v67;
          v10 = v68;
          v17 = v66;
          goto LABEL_23;
        }

        pathCopy = v20;
        v74 = v26 == [v20 item];

        v31 = 1;
        if (v22)
        {
          v31 = 2;
        }

        v73 = v31;
        viewCopy = v80;
        v9 = v69;
        self = selfCopy;
        v15 = v67;
        v10 = v68;
        v17 = v66;
      }

      else
      {
        v23 = 0;
LABEL_23:

        v74 = 0;
        v73 = 0;
      }
    }

    else
    {
      v74 = 0;
      v73 = 0;
      v23 = 0;
    }
  }

  else
  {
    v74 = 0;
    v73 = 0;
    v23 = 0;
  }

  if (item < [(NSArray *)self->_sortedVisibleAssetUUIDs count:v66]&& ([(NSArray *)self->_sortedVisibleAssetUUIDs objectAtIndexedSubscript:item], (v32 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v33 = v32;
    v34 = [(NSDictionary *)self->_assetByUUID objectForKeyedSubscript:v32];
  }

  else
  {
    v34 = [(NSArray *)self->_visibleAssets objectAtIndexedSubscript:item];
  }

  obja = pathCopy;
  v35 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PXCuratedAssetCollectionCellReuseIdentifier" forIndexPath:pathCopy];
  localIdentifier = [v34 localIdentifier];
  [v35 setRepresentedAssetIdentifier:localIdentifier];
  v37 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v37 setAllowPlaceholder:1];
  [v37 setNetworkAccessAllowed:1];
  [v37 setDeliveryMode:0];
  imageManager = self->_imageManager;
  thumbnailContentMode = self->_thumbnailContentMode;
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __91__PXCuratedAssetCollectionDiagnosticsViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v83[3] = &unk_1E7745FC0;
  v40 = v35;
  v84 = v40;
  v41 = localIdentifier;
  v85 = v41;
  [(PHCachingImageManager *)imageManager requestImageForAsset:v34 targetSize:thumbnailContentMode contentMode:v37 options:v83 resultHandler:self->_thumbnailSize.width, self->_thumbnailSize.height];
  v76 = v41;
  if (self->_curationDebugInformation)
  {
    selfCopy2 = self;
    v78 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self curationDebugInformationForCurationType:self->_currentCurationType];
    v43 = [v78 objectForKeyedSubscript:@"items"];
    v70 = [MEMORY[0x1E6978630] uuidFromLocalIdentifier:v41];
    v44 = [v43 objectForKeyedSubscript:?];
    v72 = v43;
    if (self->_curationComparisonEnabled)
    {
      [v40 setDebugInfo:0];
      v45 = [v44 objectForKeyedSubscript:@"state"];
      [v40 setState:v45];

      v46 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self assetsForCurationType:self->_currentCurationType];
      fetchedObjects = [v46 fetchedObjects];

      v48 = v34;
      uuid = [v34 uuid];
      if ([uuid isEqualToString:selfCopy2->_keyAssetUUID])
      {
        v50 = @"Required";
      }

      else if ([fetchedObjects containsObject:v34])
      {
        v50 = @"Chosen";
      }

      else
      {
        v50 = @"Rejected";
      }

      v54 = v78;
      [v40 setAlternateState:v50];

      state = [v40 state];
      alternateState = [v40 alternateState];
      if ([state isEqualToString:alternateState])
      {
        v52 = v44;
        [v40 setComparisonMatch:1];
      }

      else
      {
        state2 = [v40 state];
        if ([state2 isEqualToString:@"ForceChosen"])
        {
          alternateState2 = [v40 alternateState];
          [v40 setComparisonMatch:{objc_msgSend(alternateState2, "isEqualToString:", @"Chosen"}];
        }

        else
        {
          [v40 setComparisonMatch:0];
        }

        v52 = v44;
      }

      [v40 setClusterState:0];
      [v40 setSymbolIndex:0];
      [v40 setDedupingType:0];
      [v40 setDedupedSymbolIndex:0];
      v51 = obja;
      v57 = v70;
    }

    else
    {
      [v40 setDebugInfo:v44];
      [v40 setClusterParity:v73];
      v51 = obja;
      v52 = v44;
      if (v74)
      {
        v53 = [v23 objectForKeyedSubscript:@"state"];
        [v40 setClusterState:v53];
      }

      else
      {
        [v40 setClusterState:0];
      }

      v57 = v70;
      v58 = [(NSDictionary *)self->_dedupedSymbolIndexByItemIdentifier objectForKeyedSubscript:v70];
      [v40 setSymbolIndex:v58];

      v59 = [v52 objectForKeyedSubscript:@"dedupingType"];
      [v40 setDedupingType:v59];

      dedupedSymbolIndexByItemIdentifier = self->_dedupedSymbolIndexByItemIdentifier;
      fetchedObjects = [v52 objectForKeyedSubscript:@"dedupedItemIdentifier"];
      v61 = [(NSDictionary *)dedupedSymbolIndexByItemIdentifier objectForKeyedSubscript:fetchedObjects];
      [v40 setDedupedSymbolIndex:v61];

      v48 = v34;
      v54 = v78;
    }
  }

  else
  {
    [v40 setDebugInfo:0];
    [v40 setClusterState:0];
    [v40 setClusterParity:0];
    v51 = obja;
    v48 = v34;
  }

  v63 = v85;
  v64 = v40;

  return v40;
}

void __91__PXCuratedAssetCollectionDiagnosticsViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) representedAssetIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 32) setThumbnailImage:v5];
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  v3 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self curationDebugInformationForCurationType:self->_currentCurationType];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"rootCluster"];
    v6 = [v5 objectForKeyedSubscript:@"sortedObjects"];
    v7 = [v6 count];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"KeywordsCell"];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"KeywordsCell"];
  }

  v9 = -[PXCuratedAssetCollectionDiagnosticsViewController tableView:titleForHeaderInSection:](self, "tableView:titleForHeaderInSection:", viewCopy, [pathCopy section]);

  v10 = [(NSDictionary *)self->_tableContent objectForKeyedSubscript:v9];
  v11 = [pathCopy row];

  v12 = [v10 objectAtIndexedSubscript:v11];

  lowercaseString = [v9 lowercaseString];
  LODWORD(v11) = [lowercaseString isEqualToString:@"location"];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v12;
      if ([v14 count] < 2)
      {
        v18 = @"Invalid location";
      }

      else
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = [v14 objectAtIndexedSubscript:0];
        v17 = [v14 objectAtIndexedSubscript:1];
        v18 = [v15 stringWithFormat:@"(%@, %@)", v16, v17];

        v14 = v16;
      }
    }

    else
    {
      v18 = @"Invalid location";
    }

    v12 = v18;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  textLabel = [v8 textLabel];
  v21 = textLabel;
  if (isKindOfClass)
  {
    [textLabel setAttributedText:v12];
  }

  else
  {
    [textLabel setText:v12];

    v21 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
    textLabel2 = [v8 textLabel];
    [textLabel2 setFont:v21];
  }

  textLabel3 = [v8 textLabel];
  [textLabel3 setNumberOfLines:0];

  textLabel4 = [v8 textLabel];
  [textLabel4 sizeToFit];

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self tableView:view titleForHeaderInSection:section];
  v6 = [(NSDictionary *)self->_tableContent objectForKeyedSubscript:v5];
  v7 = [v6 count];

  return v7;
}

- (void)_tapToRadar:(id)radar
{
  v4 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self _tapToRadarViewControllerWithScreenshot:1];
  v7 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Error" message:@"The debug information for the selected highlight is incomplete." preferredStyle:1];
    v6 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
    [v5 addAction:v6];

    v4 = 0;
  }

  [(PXCuratedAssetCollectionDiagnosticsViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (id)_tapToRadarViewControllerWithScreenshot:(BOOL)screenshot
{
  if (self->_isReady)
  {
    screenshotCopy = screenshot;
    if (screenshot)
    {
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{self->_screenshotURL, 0}];
    }

    else
    {
      v5 = MEMORY[0x1E695E0F0];
    }

    radarAttachmentURLs = [(PXCuratedAssetCollectionDiagnosticsViewController *)self radarAttachmentURLs];
    v6 = objc_alloc_init(PXFeedbackTapToRadarViewController);
    [(PXFeedbackTapToRadarViewController *)v6 setRequestScreenshotPermission:screenshotCopy];
    radarRoutes = [(PXCuratedAssetCollectionDiagnosticsViewController *)self radarRoutes];
    [(PXFeedbackTapToRadarViewController *)v6 setRoutes:radarRoutes];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __93__PXCuratedAssetCollectionDiagnosticsViewController__tapToRadarViewControllerWithScreenshot___block_invoke;
    v12[3] = &unk_1E773DD40;
    v12[4] = self;
    v13 = v5;
    v14 = radarAttachmentURLs;
    v9 = radarAttachmentURLs;
    v10 = v5;
    [(PXFeedbackTapToRadarViewController *)v6 setFileRadarHandler:v12];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __93__PXCuratedAssetCollectionDiagnosticsViewController__tapToRadarViewControllerWithScreenshot___block_invoke(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = [*(a1 + 32) radarComponentInfoForRoute:a4];
  if (v7)
  {
    v8 = [*(a1 + 32) radarTitleTemplate];
    v9 = [*(a1 + 32) radarDescriptionTemplate];
    v10 = [v7 componentID];
    v11 = [v7 name];
    v12 = [v7 version];
    v13 = MEMORY[0x1E695E0F0];
    if (a2)
    {
      v13 = *(a1 + 40);
    }

    v14 = *(a1 + 48);
    if (a3)
    {
      v17[0] = @"com.apple.PhotoLibraryServices.PhotosDiagnostics";
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      LOWORD(v16) = 1;
      [PXFeedbackTapToRadarUtilities fileRadarWithTitle:v8 description:v9 classification:@"Other bug" componentID:v10 componentName:v11 componentVersion:v12 keyword:@"1091395" screenshotURLs:v13 attachmentURLs:v14 includeSysDiagnose:v16 includeInternalRelease:v15 additionalExtensionIdentifiers:0 completionHandler:?];
    }

    else
    {
      LOWORD(v16) = 0;
      [PXFeedbackTapToRadarUtilities fileRadarWithTitle:v8 description:v9 classification:@"Other bug" componentID:v10 componentName:v11 componentVersion:v12 keyword:@"1091395" screenshotURLs:v13 attachmentURLs:v14 includeSysDiagnose:v16 includeInternalRelease:MEMORY[0x1E695E0F0] additionalExtensionIdentifiers:0 completionHandler:?];
    }
  }
}

- (void)_updateUIElementsVisibility
{
  if (self->_isReady)
  {
    selectedSegmentIndex = [(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex];
    [(UISegmentedControl *)self->_segmentedControl setHidden:0];
    v24 = 0;
    v25 = 0;
    [(PXCuratedAssetCollectionDiagnosticsViewController *)self generateSectionTitles:&v25 andTableContent:&v24 forIndex:selectedSegmentIndex];
    v4 = v25;
    v5 = v25;
    v6 = v24;
    v7 = v24;
    if ((selectedSegmentIndex - 1) > 1)
    {
      objc_storeStrong(&self->_sectionTitles, v4);
      objc_storeStrong(&self->_tableContent, v6);
      [(UITableView *)self->_tableView setHidden:0];
      [(UICollectionView *)self->_collectionView setHidden:1];
      [(UITableView *)self->_tableView reloadData];
      navigationController = [(PXCuratedAssetCollectionDiagnosticsViewController *)self navigationController];
      topViewController = [navigationController topViewController];

      if (topViewController == self)
      {
        [(PXCuratedAssetCollectionDiagnosticsViewController *)self hideToolbarItems];
      }
    }

    else
    {
      [(UITableView *)self->_tableView setHidden:1];
      [(UICollectionView *)self->_collectionView setHidden:0];
      [(UICollectionView *)self->_collectionView reloadData];
      if (selectedSegmentIndex == 2)
      {
        v8 = 0;
      }

      else
      {
        v8 = 3;
      }

      [(PXCuratedAssetCollectionDiagnosticsViewController *)self setCurrentCurationType:v8];
      [(PXCuratedAssetCollectionDiagnosticsViewController *)self displayCurrentCurationType];
      navigationController2 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self navigationController];
      topViewController2 = [navigationController2 topViewController];

      if (topViewController2 == self)
      {
        [(PXCuratedAssetCollectionDiagnosticsViewController *)self showToolbarItems];
      }
    }

    [(UIActivityIndicatorView *)self->_progressView stopAnimating];
    [(UIActivityIndicatorView *)self->_progressView removeFromSuperview];
    navigationItem = [(PXCuratedAssetCollectionDiagnosticsViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:1];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    progressView = self->_progressView;
    self->_progressView = v11;

    [(UIView *)self->_contentView addSubview:self->_progressView];
    [(UIActivityIndicatorView *)self->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    centerXAnchor = [(UIActivityIndicatorView *)self->_progressView centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_contentView centerXAnchor];
    v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v15 setActive:1];

    centerYAnchor = [(UIActivityIndicatorView *)self->_progressView centerYAnchor];
    centerYAnchor2 = [(UIView *)self->_contentView centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v18 setActive:1];

    v19 = self->_progressView;

    [(UIActivityIndicatorView *)v19 startAnimating];
  }
}

- (void)_enumerateDifferencesBetweenRect:(CGRect)rect andRect:(CGRect)andRect usingBlock:(id)block
{
  height = andRect.size.height;
  width = andRect.size.width;
  y = andRect.origin.y;
  x = andRect.origin.x;
  v9 = rect.size.height;
  v10 = rect.size.width;
  v11 = rect.origin.y;
  v12 = rect.origin.x;
  blockCopy = block;
  v32.origin.x = v12;
  v32.origin.y = v11;
  v32.size.width = v10;
  rect = v9;
  v32.size.height = v9;
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  if (CGRectIntersectsRect(v32, v53))
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    MaxY = CGRectGetMaxY(v33);
    v34.origin.x = v12;
    v34.origin.y = v11;
    v34.size.width = v10;
    v34.size.height = rect;
    if (MaxY > CGRectGetMaxY(v34))
    {
      v35.origin.x = v12;
      v35.origin.y = v11;
      v35.size.width = v10;
      v35.size.height = rect;
      v25 = CGRectGetMaxY(v35);
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v24 = CGRectGetMaxY(v36);
      v37.origin.x = v12;
      v37.origin.y = v11;
      v37.size.width = v10;
      v37.size.height = rect;
      v14 = CGRectGetMaxY(v37);
      blockCopy[2](blockCopy, 1, x, v25, width, v24 - v14);
    }

    v38.origin.x = v12;
    v38.origin.y = v11;
    v38.size.width = v10;
    v38.size.height = rect;
    MinY = CGRectGetMinY(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    if (MinY > CGRectGetMinY(v39))
    {
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      v26 = CGRectGetMinY(v40);
      v41.origin.x = v12;
      v41.origin.y = v11;
      v41.size.width = v10;
      v41.size.height = rect;
      v16 = CGRectGetMinY(v41);
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = height;
      v17 = CGRectGetMinY(v42);
      blockCopy[2](blockCopy, 1, x, v26, width, v16 - v17);
    }

    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v18 = CGRectGetMaxY(v43);
    v44.origin.x = v12;
    v44.origin.y = v11;
    v44.size.width = v10;
    v44.size.height = rect;
    if (v18 < CGRectGetMaxY(v44))
    {
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v27 = CGRectGetMaxY(v45);
      v46.origin.x = v12;
      v46.origin.y = v11;
      v46.size.width = v10;
      v46.size.height = rect;
      v19 = CGRectGetMaxY(v46);
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v20 = CGRectGetMaxY(v47);
      blockCopy[2](blockCopy, 0, x, v27, width, v19 - v20);
    }

    v48.origin.x = v12;
    v48.origin.y = v11;
    v48.size.width = v10;
    v48.size.height = rect;
    v21 = CGRectGetMinY(v48);
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    if (v21 < CGRectGetMinY(v49))
    {
      v50.origin.x = v12;
      v50.origin.y = v11;
      v50.size.width = v10;
      v50.size.height = rect;
      v28 = CGRectGetMinY(v50);
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v22 = CGRectGetMinY(v51);
      v52.origin.x = v12;
      v52.origin.y = v11;
      v52.size.width = v10;
      v52.size.height = rect;
      v23 = CGRectGetMinY(v52);
      blockCopy[2](blockCopy, 0, x, v28, width, v22 - v23);
    }
  }

  else
  {
    blockCopy[2](blockCopy, 1, x, y, width, height);
    blockCopy[2](blockCopy, 0, v12, v11, v10, v9);
  }
}

- (void)_updateCachedAssets
{
  [(UICollectionView *)self->_collectionView bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v7 = CGRectGetHeight(v20) * -0.5;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectInset(v21, 0.0, v7);
  v8 = v22.origin.y;
  v9 = v22.size.width;
  v10 = v22.size.height;
  v17 = v22.origin.x;
  MidY = CGRectGetMidY(v22);
  p_previousPreheatRect = &self->_previousPreheatRect;
  v13 = MidY - CGRectGetMidY(self->_previousPreheatRect);
  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -v13;
  }

  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  if (v14 > CGRectGetHeight(v23) / 3.0)
  {
    v15 = self->_visibleAssets;
    v16 = v15;
    if (v15)
    {
      if ([(NSArray *)v15 count])
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __72__PXCuratedAssetCollectionDiagnosticsViewController__updateCachedAssets__block_invoke;
        v18[3] = &unk_1E7735940;
        v18[4] = self;
        v19 = v16;
        [(PXCuratedAssetCollectionDiagnosticsViewController *)self _enumerateDifferencesBetweenRect:v18 andRect:p_previousPreheatRect->origin.x usingBlock:self->_previousPreheatRect.origin.y, self->_previousPreheatRect.size.width, self->_previousPreheatRect.size.height, v17, v8, v9, v10];
        [(PHCachingImageManager *)self->_imageManager startCachingImagesForAssets:self->_addedAssets targetSize:self->_thumbnailContentMode contentMode:self->_thumbnailOptions options:self->_thumbnailSize.width, self->_thumbnailSize.height];
        [(PHCachingImageManager *)self->_imageManager stopCachingImagesForAssets:self->_removedAssets targetSize:self->_thumbnailContentMode contentMode:self->_thumbnailOptions options:self->_thumbnailSize.width, self->_thumbnailSize.height];
        p_previousPreheatRect->origin.x = v17;
        self->_previousPreheatRect.origin.y = v8;
        self->_previousPreheatRect.size.width = v9;
        self->_previousPreheatRect.size.height = v10;
        [(NSMutableArray *)self->_addedAssets removeAllObjects];
        [(NSMutableArray *)self->_removedAssets removeAllObjects];
      }
    }
  }
}

void __72__PXCuratedAssetCollectionDiagnosticsViewController__updateCachedAssets__block_invoke(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [*(*(a1 + 32) + 1008) collectionViewLayout];
  v13 = [v12 layoutAttributesForElementsInRect:{a3, a4, a5, a6}];

  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    if (a2)
    {
      v17 = &OBJC_IVAR___PXCuratedAssetCollectionDiagnosticsViewController__addedAssets;
    }

    else
    {
      v17 = &OBJC_IVAR___PXCuratedAssetCollectionDiagnosticsViewController__removedAssets;
    }

    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) indexPath];
        v20 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(v19, "item")}];
        [*(*(a1 + 32) + *v17) addObject:v20];

        ++v18;
      }

      while (v15 != v18);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }
}

- (void)_editSettings:(id)settings
{
  v4 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self curationDebugInformationForCurationType:self->_currentCurationType];
  v8 = [v4 objectForKeyedSubscript:@"curationOptions"];

  if (!self->_editSettingsViewController)
  {
    v5 = [[PXDiagnosticsHighlightCurationSettingsViewController alloc] initWithDelegate:self];
    editSettingsViewController = self->_editSettingsViewController;
    self->_editSettingsViewController = v5;

    [(PXDiagnosticsHighlightCurationSettingsViewController *)self->_editSettingsViewController setOptions:v8];
  }

  navigationController = [(PXCuratedAssetCollectionDiagnosticsViewController *)self navigationController];
  [navigationController pushViewController:self->_editSettingsViewController animated:1];
}

- (void)presentTapToRadarIfNeeded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PXCuratedAssetCollectionDiagnosticsViewController_presentTapToRadarIfNeeded__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __78__PXCuratedAssetCollectionDiagnosticsViewController_presentTapToRadarIfNeeded__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 1257) == 1)
  {
    if (*(v1 + 1168))
    {
      *(v1 + 1257) = 0;
      return [*(result + 32) _tapToRadar:0];
    }
  }

  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PXCuratedAssetCollectionDiagnosticsViewController;
  [(PXCuratedAssetCollectionDiagnosticsViewController *)&v4 viewDidAppear:appear];
  [(PXCuratedAssetCollectionDiagnosticsViewController *)self _updateCachedAssets];
  [(PXCuratedAssetCollectionDiagnosticsViewController *)self presentTapToRadarIfNeeded];
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = PXCuratedAssetCollectionDiagnosticsViewController;
  [(PXCuratedAssetCollectionDiagnosticsViewController *)&v15 viewWillAppear:appear];
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  view = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
  [view frame];
  v7 = v6;

  v8 = floor(v7 * 0.25);
  [PXDiagnosticsCurationViewCell cellHeightWithCellWidth:v8];
  [collectionViewLayout setItemSize:{v8, v9}];
  [collectionViewLayout setMinimumInteritemSpacing:0.0];
  [collectionViewLayout setMinimumLineSpacing:1.0];
  [collectionViewLayout setSectionInset:{0.0, ((v7 + v8 * -4.0) >> 1), 0.0, (v7 + v8 * -4.0) - ((v7 + v8 * -4.0) >> 1)}];
  px_screen = [(PXCuratedAssetCollectionDiagnosticsViewController *)self px_screen];
  [px_screen scale];
  v12 = v11;

  [collectionViewLayout itemSize];
  self->_thumbnailSize.width = v12 * v13;
  self->_thumbnailSize.height = v12 * v14;
  self->_thumbnailContentMode = 1;
}

- (void)showInfo:(id)info
{
  v4 = MEMORY[0x1E69DC650];
  v5 = [(NSDictionary *)self->_curationDebugInformation objectForKeyedSubscript:@"keyAssetCurationCriteria"];
  v7 = [v4 alertControllerWithTitle:@"Key Asset" message:v5 preferredStyle:1];

  v6 = [MEMORY[0x1E69DC648] actionWithTitle:@"Dismiss" style:0 handler:0];
  [v7 addAction:v6];

  [(PXCuratedAssetCollectionDiagnosticsViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)toggleCurationComparison:(id)comparison
{
  self->_curationComparisonEnabled ^= 1u;
  navigationController = [(PXCuratedAssetCollectionDiagnosticsViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    [(PXCuratedAssetCollectionDiagnosticsViewController *)self showToolbarItems];
  }

  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView reloadData];
}

- (void)hideToolbarItems
{
  [(PXCuratedAssetCollectionDiagnosticsViewController *)self setToolbarItems:MEMORY[0x1E695E0F0]];
  navigationController = [(PXCuratedAssetCollectionDiagnosticsViewController *)self navigationController];
  [navigationController setToolbarHidden:1 animated:1];
}

- (void)showToolbarItems
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  currentCurationType = self->_currentCurationType;
  if (currentCurationType == 3)
  {
    if (self->_curationComparisonEnabled)
    {
      v7 = 18;
    }

    else
    {
      v7 = 17;
    }

    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:v7 target:self action:sel_toggleCurationComparison_];
    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel__editSettings_];
    v10[0] = v3;
    v10[1] = v5;
    v10[2] = v3;
    v10[3] = v6;
    v10[4] = v3;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];
    [(PXCuratedAssetCollectionDiagnosticsViewController *)self setToolbarItems:v8];

    goto LABEL_8;
  }

  if (!currentCurationType)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:11 target:self action:sel_showInfo_];
    v11[0] = v3;
    v11[1] = v5;
    v11[2] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
    [(PXCuratedAssetCollectionDiagnosticsViewController *)self setToolbarItems:v6];
LABEL_8:
  }

  navigationController = [(PXCuratedAssetCollectionDiagnosticsViewController *)self navigationController];
  [navigationController setToolbarHidden:0 animated:1];
}

- (void)viewDidLoad
{
  v42.receiver = self;
  v42.super_class = PXCuratedAssetCollectionDiagnosticsViewController;
  [(PXCuratedAssetCollectionDiagnosticsViewController *)&v42 viewDidLoad];
  view = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
  [view setAutoresizingMask:18];

  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  view2 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
  [view2 setBackgroundColor:systemGroupedBackgroundColor];

  navigationController = [(PXCuratedAssetCollectionDiagnosticsViewController *)self navigationController];
  [navigationController setToolbarHidden:1 animated:0];

  v7 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:&unk_1F19104C8];
  segmentedControl = self->_segmentedControl;
  self->_segmentedControl = v7;

  [(UISegmentedControl *)self->_segmentedControl addTarget:self action:sel__switchLogsAction_ forControlEvents:4096];
  [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:self->_initiallyShowCuration];
  [(UISegmentedControl *)self->_segmentedControl setHidden:1];
  [(UISegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
  [view3 addSubview:self->_segmentedControl];

  topAnchor = [(UISegmentedControl *)self->_segmentedControl topAnchor];
  view4 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  [v14 setActive:1];

  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  contentView = self->_contentView;
  self->_contentView = v15;

  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  view5 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
  [view5 addSubview:self->_contentView];

  v18 = _NSDictionaryOfVariableBindings(&cfstr_Segmentedcontr_0.isa, self->_segmentedControl, self->_contentView, 0);
  view6 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
  v20 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[_segmentedControl(<=44)]-10-[_contentView]-0-|" options:0 metrics:0 views:v18];
  [view6 addConstraints:v20];

  view7 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
  v22 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[_segmentedControl]-|" options:0 metrics:0 views:v18];
  [view7 addConstraints:v22];

  view8 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self view];
  v24 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[_contentView]|" options:0 metrics:0 views:v18];
  [view8 addConstraints:v24];

  v25 = objc_alloc(MEMORY[0x1E69DD020]);
  [(UIView *)self->_contentView frame];
  v26 = [v25 initWithFrame:1 style:?];
  tableView = self->_tableView;
  self->_tableView = v26;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setHidden:1];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setAllowsSelection:0];
  [(UITableView *)self->_tableView setContentInsetAdjustmentBehavior:2];
  v28 = objc_alloc_init(MEMORY[0x1E69DC840]);
  v29 = objc_alloc(MEMORY[0x1E69DC7F0]);
  [(UIView *)self->_contentView frame];
  v30 = [v29 initWithFrame:v28 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v30;

  [(UICollectionView *)self->_collectionView setAutoresizingMask:18];
  [(UICollectionView *)self->_collectionView setHidden:1];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:systemBackgroundColor];

  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PXCuratedAssetCollectionCellReuseIdentifier"];
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"PXCuratedAssetCollectionSectionHeaderReuseIdentifier"];
  v33 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:self action:sel_changeCurationType_];
  [v33 setDirection:2];
  [(UICollectionView *)self->_collectionView addGestureRecognizer:v33];
  v34 = [objc_alloc(MEMORY[0x1E69DCFC8]) initWithTarget:self action:sel_changeCurationType_];

  [v34 setDirection:1];
  [(UICollectionView *)self->_collectionView addGestureRecognizer:v34];
  v35 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_showCurationSettings_];
  [v35 setNumberOfTouchesRequired:2];
  [v35 setNumberOfTapsRequired:2];
  [v35 setDelaysTouchesEnded:1];
  [(UICollectionView *)self->_collectionView addGestureRecognizer:v35];
  [(UIView *)self->_contentView addSubview:self->_tableView];
  [(UIView *)self->_contentView addSubview:self->_collectionView];
  v36 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Close" style:2 target:self action:sel__closeAction_];
  navigationItem = [(PXCuratedAssetCollectionDiagnosticsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v36];

  v38 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Radar" style:2 target:self action:sel__tapToRadar_];
  navigationItem2 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v38];

  navigationItem3 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem3 rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  [(PXCuratedAssetCollectionDiagnosticsViewController *)self _switchLogsAction:0];
}

- (PXCuratedAssetCollectionDiagnosticsViewController)init
{
  v15.receiver = self;
  v15.super_class = PXCuratedAssetCollectionDiagnosticsViewController;
  v2 = [(PXCuratedAssetCollectionDiagnosticsViewController *)&v15 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    addedAssets = v2->_addedAssets;
    v2->_addedAssets = array;

    array2 = [MEMORY[0x1E695DF70] array];
    removedAssets = v2->_removedAssets;
    v2->_removedAssets = array2;

    v7 = objc_alloc_init(MEMORY[0x1E6978718]);
    imageManager = v2->_imageManager;
    v2->_imageManager = v7;

    v2->_currentCurationType = 3;
    v9 = +[PXFeedbackTapToRadarUtilities captureScreenshot];
    screenshotURL = v2->_screenshotURL;
    v2->_screenshotURL = v9;

    v2->_shouldPresentTapToRadar = 0;
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("com.apple.library.curationDebug", v11);
    curationDebugFetchQueue = v2->_curationDebugFetchQueue;
    v2->_curationDebugFetchQueue = v12;

    [(PXCuratedAssetCollectionDiagnosticsViewController *)v2 requestCurationDebugInfoWithOptions:0 setGlobally:0];
  }

  return v2;
}

@end