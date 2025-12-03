@interface PXPeopleBootstrapConfirmationViewController
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)lastSize;
- (CGSize)preferredSize;
- (NSArray)presentationStatuses;
- (PXPeopleBootstrapConfirmationViewController)initWithContext:(id)context dataSource:(id)source;
- (PXPeopleFlowViewControllerActionDelegate)actionDelegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)_descriptionForFooterView;
- (id)_keyAssetForPersonAtIndex:(int64_t)index;
- (id)_sortedIndexPathsForVisibleCells;
- (id)_titleForHeaderView;
- (id)_titleForPreviewForAsset:(id)asset;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_badgeLoadingCells;
- (void)_cacheCurrentSuggestions;
- (void)_evaluateIfSuggestionPresentationFinished;
- (void)_finishedPresentingSuggestions;
- (void)_markSkippedSuggestions;
- (void)_noSuggestionsFound;
- (void)_startLoadingTimer;
- (void)_toggleConfirmedForCollectionViewCellAtIndexPath:(id)path;
- (void)_updateNavigationBarForCurrentTraitCollection;
- (void)_updateViewWithViewState:(unint64_t)state;
- (void)dealloc;
- (void)keyFaceUpdated:(id)updated;
- (void)noMoreSuggestionsAvailableForSuggestionManager:(id)manager;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setViewState:(unint64_t)state;
- (void)suggestionManager:(id)manager hasNewSuggestionsAvailable:(id)available;
- (void)traitCollectionDidChange:(id)change;
- (void)updateImageForCell:(id)cell withPerson:(id)person;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willLoadMoreSuggestionsForSuggestionManager:(id)manager;
- (void)willTransitionToNextInFlow;
@end

@implementation PXPeopleBootstrapConfirmationViewController

- (CGSize)lastSize
{
  width = self->_lastSize.width;
  height = self->_lastSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXPeopleFlowViewControllerActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->actionDelegate);

  return WeakRetained;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  collectionView = [(PXPeopleBootstrapConfirmationViewController *)self collectionView];
  [interactionCopy locationInView:collectionView];
  v8 = v7;
  v10 = v9;

  v11 = [collectionView indexPathForItemAtPoint:{v8, v10}];
  if (v11)
  {
    v12 = [collectionView cellForItemAtIndexPath:v11];
    v13 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  collectionView = [(PXPeopleBootstrapConfirmationViewController *)self collectionView];
  v9 = [collectionView indexPathForItemAtPoint:{x, y}];
  if (!v9)
  {
    v20 = 0;
    goto LABEL_11;
  }

  v10 = [collectionView cellForItemAtIndexPath:v9];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v24 = NSStringFromClass(v25);
    px_descriptionForAssertionMessage = [v10 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapConfirmationViewController.m" lineNumber:845 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[collectionView cellForItemAtIndexPath:indexPath]", v24, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapConfirmationViewController.m" lineNumber:845 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[collectionView cellForItemAtIndexPath:indexPath]", v24}];
  }

LABEL_4:
  image = [v10 image];

  if (!image)
  {
    v20 = 0;
    goto LABEL_10;
  }

  item = [v9 item];
  v13 = [(PXPeopleBootstrapConfirmationViewController *)self _keyAssetForPersonAtIndex:item];
  currentSuggestions = [(PXPeopleBootstrapConfirmationViewController *)self currentSuggestions];
  v15 = [currentSuggestions objectAtIndexedSubscript:item];

  v16 = v15;
  if (!v16)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapConfirmationViewController.m" lineNumber:850 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"suggestion", v29}];
LABEL_19:

    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = objc_opt_class();
    v29 = NSStringFromClass(v30);
    px_descriptionForAssertionMessage2 = [v16 px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapConfirmationViewController.m" lineNumber:850 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"suggestion", v29, px_descriptionForAssertionMessage2}];

    goto LABEL_19;
  }

LABEL_7:
  v17 = MEMORY[0x1E69DC8D8];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __101__PXPeopleBootstrapConfirmationViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v36[3] = &unk_1E77420A0;
  v37 = v16;
  v38 = v13;
  selfCopy = self;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __101__PXPeopleBootstrapConfirmationViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
  v32[3] = &unk_1E77420F0;
  v32[4] = self;
  v33 = v16;
  v34 = v9;
  v35 = v38;
  v18 = v38;
  v19 = v16;
  v20 = [v17 configurationWithIdentifier:0 previewProvider:v36 actionProvider:v32];

LABEL_10:
LABEL_11:

  return v20;
}

PXPeopleBootstrapConfirmationPreviewViewController *__101__PXPeopleBootstrapConfirmationViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  v1 = -[PXPeopleBootstrapConfirmationPreviewViewController initWithPerson:keyAsset:useLowMemoryMode:]([PXPeopleBootstrapConfirmationPreviewViewController alloc], "initWithPerson:keyAsset:useLowMemoryMode:", *(a1 + 32), *(a1 + 40), [*(a1 + 48) useLowMemoryMode]);

  return v1;
}

id __101__PXPeopleBootstrapConfirmationViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) suggestionManager];
  if ([v4 isSuggestionConfirmed:*(a1 + 40)])
  {
    v5 = @"PXPeopleBootstrapPreviewDeselect";
  }

  else
  {
    v5 = @"PXPeopleBootstrapPreviewSelect";
  }

  v6 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
  objc_initWeak(&location, *(a1 + 32));
  v7 = MEMORY[0x1E69DC628];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __101__PXPeopleBootstrapConfirmationViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
  v15[3] = &unk_1E77420C8;
  objc_copyWeak(&v17, &location);
  v16 = *(a1 + 48);
  v9 = [v7 actionWithTitle:v6 image:v8 identifier:0 handler:v15];

  v10 = [*(a1 + 32) _titleForPreviewForAsset:*(a1 + 56)];
  v11 = MEMORY[0x1E69DCC60];
  v19[0] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v13 = [v11 menuWithTitle:v10 children:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v13;
}

void __101__PXPeopleBootstrapConfirmationViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _toggleConfirmedForCollectionViewCellAtIndexPath:*(a1 + 32)];
}

- (void)keyFaceUpdated:(id)updated
{
  v36 = *MEMORY[0x1E69E9840];
  userInfo = [updated userInfo];
  v4 = [userInfo objectForKey:@"PXPeopleUpdatedKeyFacePersonsKey"];

  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v30 = 0u;
  obj = v4;
  v22 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v22)
  {
    v21 = *v31;
    do
    {
      v5 = 0;
      do
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v5;
        v6 = *(*(&v30 + 1) + 8 * v5);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        collectionView = [(PXPeopleBootstrapConfirmationViewController *)self collectionView];
        visibleCells = [collectionView visibleCells];

        v9 = [visibleCells countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(visibleCells);
              }

              v13 = *(*(&v26 + 1) + 8 * i);
              image = [v13 image];

              if (!image)
              {
                imageRequest = [v13 imageRequest];
                person = [imageRequest person];

                px_localIdentifier = [person px_localIdentifier];
                px_localIdentifier2 = [v6 px_localIdentifier];
                v19 = [px_localIdentifier isEqualToString:px_localIdentifier2];

                if (v19)
                {
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 3221225472;
                  block[2] = __62__PXPeopleBootstrapConfirmationViewController_keyFaceUpdated___block_invoke;
                  block[3] = &unk_1E774A1B8;
                  block[4] = self;
                  block[5] = v13;
                  block[6] = v6;
                  dispatch_async(MEMORY[0x1E69E96A0], block);
                }
              }
            }

            v10 = [visibleCells countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v10);
        }

        v5 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v22);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"nameSelection", object, change, context}])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__PXPeopleBootstrapConfirmationViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __94__PXPeopleBootstrapConfirmationViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cacheCurrentSuggestions];
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadData];
}

- (void)willTransitionToNextInFlow
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[PXPeopleBootstrapConfirmationViewController willTransitionToNextInFlow]";
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "Bootstrap UI: %s", &v6, 0xCu);
  }

  [(PXPeopleBootstrapConfirmationViewController *)self _markSkippedSuggestions];
  suggestionManager = [(PXPeopleBootstrapConfirmationViewController *)self suggestionManager];
  bootstrapContext = [(PXPeopleBootstrapConfirmationViewController *)self bootstrapContext];
  [bootstrapContext setSuggestionManager:suggestionManager];
}

- (CGSize)preferredSize
{
  +[PXPeopleBootstrap preferredBootstrapSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)suggestionManager:(id)manager hasNewSuggestionsAvailable:(id)available
{
  [(PXPeopleBootstrapConfirmationViewController *)self _cacheCurrentSuggestions:manager];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__PXPeopleBootstrapConfirmationViewController_suggestionManager_hasNewSuggestionsAvailable___block_invoke;
  v5[3] = &unk_1E774C318;
  objc_copyWeak(&v6, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __92__PXPeopleBootstrapConfirmationViewController_suggestionManager_hasNewSuggestionsAvailable___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSuggestionsPresented:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 collectionView];
  [v3 reloadData];
}

- (void)willLoadMoreSuggestionsForSuggestionManager:(id)manager
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[PXPeopleBootstrapConfirmationViewController willLoadMoreSuggestionsForSuggestionManager:]";
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "Bootstrap UI: %s", buf, 0xCu);
  }

  if ([(PXPeopleBootstrapConfirmationViewController *)self willAppear])
  {
    [(PXPeopleBootstrapConfirmationViewController *)self _startLoadingTimer];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__PXPeopleBootstrapConfirmationViewController_willLoadMoreSuggestionsForSuggestionManager___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)noMoreSuggestionsAvailableForSuggestionManager:(id)manager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__PXPeopleBootstrapConfirmationViewController_noMoreSuggestionsAvailableForSuggestionManager___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)updateImageForCell:(id)cell withPerson:(id)person
{
  cellCopy = cell;
  personCopy = person;
  v8 = [[PXPersonImageRequest alloc] initWithPerson:personCopy];
  [cellCopy setImageRequest:v8];
  suggestionManager = [(PXPeopleBootstrapConfirmationViewController *)self suggestionManager];
  [cellCopy bounds];
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v14 = CGRectGetWidth(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v15 = CGRectGetHeight(v31);
  if (v14 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  traitCollection = [cellCopy traitCollection];
  [traitCollection displayScale];
  v19 = v18;

  v20 = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:personCopy targetSize:v16 displayScale:v16, v19];
  [(PXPeopleFaceCropFetchOptions *)v20 setCropFactor:0];
  [(PXPeopleFaceCropFetchOptions *)v20 setCornerStyle:1];
  [(PXPeopleFaceCropFetchOptions *)v20 setUseLowMemoryMode:[(PXPeopleBootstrapConfirmationViewController *)self useLowMemoryMode]];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __77__PXPeopleBootstrapConfirmationViewController_updateImageForCell_withPerson___block_invoke;
  v25[3] = &unk_1E7742078;
  v26 = v8;
  v27 = cellCopy;
  v28 = suggestionManager;
  v29 = personCopy;
  v21 = personCopy;
  v22 = suggestionManager;
  v23 = cellCopy;
  v24 = v8;
  [(PXPersonImageRequest *)v24 requestFaceCropWithOptions:v20 timeout:v25 resultHandler:30.0];
}

void __77__PXPeopleBootstrapConfirmationViewController_updateImageForCell_withPerson___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__PXPeopleBootstrapConfirmationViewController_updateImageForCell_withPerson___block_invoke_2;
  v9[3] = &unk_1E7742390;
  v10 = a1[4];
  v11 = a1[5];
  v12 = v6;
  v13 = v5;
  v14 = a1[6];
  v15 = a1[7];
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __77__PXPeopleBootstrapConfirmationViewController_updateImageForCell_withPerson___block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) imageRequest];

  if (v2 == v3)
  {
    v4 = [*(a1 + 48) objectForKeyedSubscript:@"PXPeopleContentsRectKey"];
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    [v4 CGRectValue];
    [v5 setImage:v6 contentsRect:?];
    if (*(a1 + 56))
    {
      v7 = *(a1 + 64);
      v9[0] = *(a1 + 72);
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      [v7 markSuggestions:v8 confirmed:1 wantsSound:1];

      [*(a1 + 40) setConfirmed:1];
    }
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PXPeopleBootstrapCell" forIndexPath:pathCopy];
  item = [pathCopy item];

  suggestionManager = [(PXPeopleBootstrapConfirmationViewController *)self suggestionManager];
  currentSuggestions = [(PXPeopleBootstrapConfirmationViewController *)self currentSuggestions];
  v12 = [currentSuggestions objectAtIndexedSubscript:item];
  contentView = [v8 contentView];
  layer = [contentView layer];

  [v8 bounds];
  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  v19 = CGRectGetWidth(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v20 = CGRectGetHeight(v45);
  if (v19 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v22 = [[PXPersonImageRequest alloc] initWithPerson:v12];
  [v8 setImageRequest:v22];
  [v8 setIsMergeCandidate:{objc_msgSend(v12, "isPersonModel")}];
  [v8 setIsVerified:{objc_msgSend(v12, "isVerified")}];
  traitCollection = [viewCopy traitCollection];

  [traitCollection displayScale];
  v25 = v24;

  v26 = [[PXPeopleFaceCropFetchOptions alloc] initWithPerson:v12 targetSize:v21 displayScale:v21, v25];
  [(PXPeopleFaceCropFetchOptions *)v26 setCropFactor:0];
  [(PXPeopleFaceCropFetchOptions *)v26 setCornerStyle:1];
  [(PXPeopleFaceCropFetchOptions *)v26 setUseLowMemoryMode:[(PXPeopleBootstrapConfirmationViewController *)self useLowMemoryMode]];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PXPeopleBootstrapConfirmationViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  aBlock[3] = &unk_1E7742050;
  v39 = v22;
  v27 = v8;
  v40 = v27;
  v41 = suggestionManager;
  v42 = v12;
  selfCopy = self;
  v28 = v12;
  v29 = suggestionManager;
  v30 = v22;
  v31 = _Block_copy(aBlock);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __85__PXPeopleBootstrapConfirmationViewController_collectionView_cellForItemAtIndexPath___block_invoke_3;
  v36[3] = &unk_1E774B680;
  v37 = v31;
  v32 = v31;
  [(PXPersonImageRequest *)v30 requestFaceCropWithOptions:v26 timeout:v36 resultHandler:30.0];
  v33 = v37;
  v34 = v27;

  return v27;
}

void __85__PXPeopleBootstrapConfirmationViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PXPeopleBootstrapConfirmationViewController_collectionView_cellForItemAtIndexPath___block_invoke_2;
  block[3] = &unk_1E7742028;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = v5;
  v15 = v6;
  v16 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v17 = v7;
  v18 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __85__PXPeopleBootstrapConfirmationViewController_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) imageRequest];

  if (v2 == v3)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) image];

    v6 = [*(a1 + 56) objectForKeyedSubscript:@"PXPeopleContentsRectKey"];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    [v6 CGRectValue];
    [v7 setImage:v8 contentsRect:?];
    if (!v4 || v5)
    {
      if (!v4)
      {
        v11 = *(a1 + 64);
        v13 = *(a1 + 72);
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
        [v11 markSuggestionsAsSkipped:v12];
      }
    }

    else
    {
      v9 = *(a1 + 64);
      v14[0] = *(a1 + 72);
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v9 markSuggestions:v10 confirmed:1 wantsSound:1];

      [*(a1 + 40) setConfirmed:1];
    }

    [*(a1 + 80) _evaluateIfSuggestionPresentationFinished];
  }
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  v9 = *MEMORY[0x1E69DDC08];
  if (*MEMORY[0x1E69DDC08] == kindCopy)
  {
    v10 = @"PXPeopleBootstrapHeader";
  }

  else
  {
    v10 = @"PXPeopleBootstrapFooter";
  }

  v11 = [view dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v10 forIndexPath:path];
  if (v9 == kindCopy)
  {
    bootstrapContext = [(PXPeopleBootstrapConfirmationViewController *)self bootstrapContext];
    sourcePerson = [bootstrapContext sourcePerson];
    [v11 setPerson:sourcePerson];

    _titleForHeaderView = [(PXPeopleBootstrapConfirmationViewController *)self _titleForHeaderView];
    [v11 setTitle:_titleForHeaderView];
  }

  else
  {
    if (*MEMORY[0x1E69DDC00] != kindCopy)
    {
      goto LABEL_9;
    }

    _titleForHeaderView = [(PXPeopleBootstrapConfirmationViewController *)self _descriptionForFooterView];
    [v11 setDescriptionText:_titleForHeaderView];
  }

LABEL_9:

  return v11;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [view frame];

  [PXPeopleGridSizer cellSizeForGridClass:0 width:v5];
  result.height = v7;
  result.width = v6;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  [view frame];
  [PXPeopleGridSizer marginForGridClass:0 width:v5];
  v7 = v6 * 0.5;
  v8 = ceilf(v7);
  v9 = v6;
  v10 = v6;
  result.right = v10;
  result.bottom = v8;
  result.left = v9;
  result.top = v6;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  [view frame];
  v7 = v6;
  v9 = v8;
  _descriptionForFooterView = [(PXPeopleBootstrapConfirmationViewController *)self _descriptionForFooterView];
  [PXPeopleBootstrapFooterView sizeForBoundingSize:_descriptionForFooterView descriptionText:v7, v9];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  _titleForHeaderView = [(PXPeopleBootstrapConfirmationViewController *)self _titleForHeaderView];
  [viewCopy frame];
  v9 = v8;

  [PXPeopleConfirmationHeaderView sizeForTitle:_titleForHeaderView boundingSize:v9, 0.0];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(PXPeopleBootstrapConfirmationViewController *)self currentSuggestions:view];
  v5 = [v4 count];

  return v5;
}

- (id)_titleForPreviewForAsset:(id)asset
{
  v3 = MEMORY[0x1E69BE3B8];
  assetCopy = asset;
  v5 = objc_alloc_init(v3);
  creationDate = [assetCopy creationDate];
  v7 = [v5 stringFromDate:creationDate];

  localizedGeoDescription = [assetCopy localizedGeoDescription];

  if ([localizedGeoDescription length])
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", localizedGeoDescription, v7];
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;
  v11 = v9;

  return v10;
}

- (id)_keyAssetForPersonAtIndex:(int64_t)index
{
  v24[1] = *MEMORY[0x1E69E9840];
  currentSuggestions = [(PXPeopleBootstrapConfirmationViewController *)self currentSuggestions];
  v7 = [currentSuggestions objectAtIndexedSubscript:index];

  v8 = v7;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v21 = NSStringFromClass(v22);
    px_descriptionForAssertionMessage = [v8 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapConfirmationViewController.m" lineNumber:469 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"suggestion", v21, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapConfirmationViewController.m" lineNumber:469 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"suggestion", v21}];
  }

LABEL_3:
  photoLibrary = [v8 photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setFetchLimit:1];
  px_defaultDetectionTypes = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
  [librarySpecificFetchOptions setIncludedDetectionTypes:px_defaultDetectionTypes];

  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  v12 = [MEMORY[0x1E69787C8] fetchKeyFaceForPerson:v8 options:librarySpecificFetchOptions];
  firstObject = [v12 firstObject];

  v14 = MEMORY[0x1E6978630];
  v24[0] = firstObject;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v16 = [v14 fetchAssetsForFaces:v15 options:librarySpecificFetchOptions];
  firstObject2 = [v16 firstObject];

  return firstObject2;
}

- (id)_titleForHeaderView
{
  bootstrapContext = [(PXPeopleBootstrapConfirmationViewController *)self bootstrapContext];
  sourcePerson = [bootstrapContext sourcePerson];
  if (sourcePerson)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    px_descriptionForAssertionMessage = [sourcePerson px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapConfirmationViewController.m" lineNumber:455 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"context.sourcePerson", v11, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapConfirmationViewController.m" lineNumber:455 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"context.sourcePerson", v11}];
  }

LABEL_3:
  localizedName = [bootstrapContext localizedName];
  if ([localizedName length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(sourcePerson, 0, @"PXPeopleBootstrapHeaderTitleNamed");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v7 = PXLocalizedStringForPersonOrPetAndVisibility(sourcePerson, 0, @"PXPeopleBootstrapHeaderTitleUnnamed");

  return v7;
}

- (id)_descriptionForFooterView
{
  bootstrapContext = [(PXPeopleBootstrapConfirmationViewController *)self bootstrapContext];
  sourcePerson = [bootstrapContext sourcePerson];
  if (sourcePerson)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    px_descriptionForAssertionMessage = [sourcePerson px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapConfirmationViewController.m" lineNumber:440 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"context.sourcePerson", v11, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapConfirmationViewController.m" lineNumber:440 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"context.sourcePerson", v11}];
  }

LABEL_3:
  localizedName = [bootstrapContext localizedName];
  if ([localizedName length])
  {
    PXLocalizedStringForPersonOrPetAndVisibility(sourcePerson, 0, @"PXPeopleBootstrapHeaderDescriptionNamed");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  v7 = PXLocalizedStringForPersonOrPetAndVisibility(sourcePerson, 0, @"PXPeopleBootstrapHeaderDescriptionUnnamed");

  return v7;
}

- (void)_cacheCurrentSuggestions
{
  bootstrapContext = [(PXPeopleBootstrapConfirmationViewController *)self bootstrapContext];
  nameSelection = [bootstrapContext nameSelection];
  person = [nameSelection person];

  suggestionManager = [(PXPeopleBootstrapConfirmationViewController *)self suggestionManager];
  currentSuggestions = [suggestionManager currentSuggestions];

  if (person && [currentSuggestions containsObject:person])
  {
    v7 = [currentSuggestions mutableCopy];
    [v7 removeObject:person];

    currentSuggestions = v7;
  }

  [(PXPeopleBootstrapConfirmationViewController *)self setCurrentSuggestions:currentSuggestions];
}

- (id)_sortedIndexPathsForVisibleCells
{
  collectionView = [(PXPeopleBootstrapConfirmationViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v4 = [indexPathsForVisibleItems sortedArrayUsingSelector:sel_compare_];

  return v4;
}

- (void)_badgeLoadingCells
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  collectionView = [(PXPeopleBootstrapConfirmationViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v4 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(visibleCells);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (![v8 presentationStatus])
        {
          [v8 setPresentationStatus:1];
        }
      }

      v5 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_updateNavigationBarForCurrentTraitCollection
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __92__PXPeopleBootstrapConfirmationViewController__updateNavigationBarForCurrentTraitCollection__block_invoke;
  v2[3] = &unk_1E774C648;
  v2[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

void __92__PXPeopleBootstrapConfirmationViewController__updateNavigationBarForCurrentTraitCollection__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSuggestions];
  v3 = [v2 count];

  if (v3)
  {
    v4 = @"PXPeopleBootstrapNewConfirmationTitle";
  }

  else
  {
    v4 = @"PXPeopleBootstrapConfirmationTitle";
  }

  v5 = PXLocalizedStringFromTable(v4, @"PhotosUICore");
  [*(a1 + 32) setTitle:v5];
}

- (void)_startLoadingTimer
{
  loadingDelayTimer = [(PXPeopleBootstrapConfirmationViewController *)self loadingDelayTimer];
  v4 = loadingDelayTimer;
  if (loadingDelayTimer)
  {
    [loadingDelayTimer invalidate];
  }

  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E695DFF0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PXPeopleBootstrapConfirmationViewController__startLoadingTimer__block_invoke;
  v7[3] = &unk_1E7742000;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:0.5];

  [(PXPeopleBootstrapConfirmationViewController *)self setLoadingDelayTimer:v6];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __65__PXPeopleBootstrapConfirmationViewController__startLoadingTimer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PXPeopleBootstrapConfirmationViewController__startLoadingTimer__block_invoke_2;
  block[3] = &unk_1E774B708;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __65__PXPeopleBootstrapConfirmationViewController__startLoadingTimer__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained loadingDelayTimer];
  v4 = *(a1 + 32);

  v5 = PLUIGetLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v3 == v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Bootstrap UI: Display loading UI (Timer Valid)", buf, 2u);
    }

    v7 = objc_loadWeakRetained((a1 + 48));
    v8 = [v7 suggestionsPresented];

    if ((v8 & 1) == 0)
    {
      [*(a1 + 40) setViewState:2];
    }
  }

  else
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Bootstrap UI: Do not display loading UI (Timer Invalid)", v9, 2u);
    }
  }
}

- (void)_toggleConfirmedForCollectionViewCellAtIndexPath:(id)path
{
  v18[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  collectionView = [(PXPeopleBootstrapConfirmationViewController *)self collectionView];
  v7 = [collectionView cellForItemAtIndexPath:pathCopy];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    px_descriptionForAssertionMessage = [v7 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapConfirmationViewController.m" lineNumber:330 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self.collectionView cellForItemAtIndexPath:indexPath]", v15, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPeopleBootstrapConfirmationViewController.m" lineNumber:330 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self.collectionView cellForItemAtIndexPath:indexPath]", v15}];
  }

LABEL_3:
  image = [v7 image];

  if (image)
  {
    suggestionManager = [(PXPeopleBootstrapConfirmationViewController *)self suggestionManager];
    currentSuggestions = [(PXPeopleBootstrapConfirmationViewController *)self currentSuggestions];
    v11 = [currentSuggestions objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

    LODWORD(currentSuggestions) = [suggestionManager isSuggestionConfirmed:v11];
    v18[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [suggestionManager markSuggestions:v12 confirmed:currentSuggestions ^ 1 wantsSound:1];

    [v7 setConfirmed:currentSuggestions ^ 1];
    [(PXPeopleBootstrapConfirmationViewController *)self setHasSelectionEverChanged:1];
  }
}

- (void)_noSuggestionsFound
{
  v7 = *MEMORY[0x1E69E9840];
  if (![(PXPeopleBootstrapConfirmationViewController *)self suggestionsPresented])
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315138;
      v6 = "[PXPeopleBootstrapConfirmationViewController _noSuggestionsFound]";
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "Bootstrap UI: %s", &v5, 0xCu);
    }

    loadingDelayTimer = [(PXPeopleBootstrapConfirmationViewController *)self loadingDelayTimer];
    [loadingDelayTimer invalidate];

    [(PXPeopleBootstrapConfirmationViewController *)self setLoadingDelayTimer:0];
    [(PXPeopleBootstrapConfirmationViewController *)self setViewState:5];
  }
}

- (void)_markSkippedSuggestions
{
  presentationStatuses = [(PXPeopleBootstrapConfirmationViewController *)self presentationStatuses];
  currentSuggestions = [(PXPeopleBootstrapConfirmationViewController *)self currentSuggestions];
  v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if ([currentSuggestions count])
  {
    v5 = 0;
    do
    {
      v6 = [presentationStatuses objectAtIndexedSubscript:v5];
      integerValue = [v6 integerValue];

      if (integerValue == 3)
      {
        [v4 addIndex:v5];
      }

      ++v5;
    }

    while (v5 < [currentSuggestions count]);
  }

  v8 = [currentSuggestions objectsAtIndexes:v4];
  bootstrapContext = [(PXPeopleBootstrapConfirmationViewController *)self bootstrapContext];
  nameSelection = [bootstrapContext nameSelection];
  person = [nameSelection person];

  if (person)
  {
    v12 = [v8 arrayByAddingObject:person];
  }

  suggestionManager = [(PXPeopleBootstrapConfirmationViewController *)self suggestionManager];
  [suggestionManager markSuggestionsAsSkipped:v8];
}

- (void)_evaluateIfSuggestionPresentationFinished
{
  presentationStatuses = [(PXPeopleBootstrapConfirmationViewController *)self presentationStatuses];
  if (([presentationStatuses containsObject:&unk_1F190D4E0] & 1) == 0 && (objc_msgSend(presentationStatuses, "containsObject:", &unk_1F190D4F8) & 1) == 0 && !-[PXPeopleBootstrapConfirmationViewController suggestionsPresented](self, "suggestionsPresented"))
  {
    [(PXPeopleBootstrapConfirmationViewController *)self _finishedPresentingSuggestions];
  }
}

- (void)_finishedPresentingSuggestions
{
  loadingDelayTimer = [(PXPeopleBootstrapConfirmationViewController *)self loadingDelayTimer];
  [loadingDelayTimer invalidate];

  [(PXPeopleBootstrapConfirmationViewController *)self setLoadingDelayTimer:0];
  currentSuggestions = [(PXPeopleBootstrapConfirmationViewController *)self currentSuggestions];
  v5 = [currentSuggestions count];

  if (v5)
  {
    [(PXPeopleBootstrapConfirmationViewController *)self setViewState:1];
  }

  else
  {
    [(PXPeopleBootstrapConfirmationViewController *)self _noSuggestionsFound];
  }

  [(PXPeopleBootstrapConfirmationViewController *)self setSuggestionsPresented:1];
}

- (void)_updateViewWithViewState:(unint64_t)state
{
  switch(state)
  {
    case 1uLL:
      actionDelegate = [(PXPeopleBootstrapConfirmationViewController *)self actionDelegate];
      [actionDelegate setAdvanceButtonEnabled:1];

      [(PXPeopleBootstrapConfirmationViewController *)self _updateNavigationBarForCurrentTraitCollection];
      break;
    case 5uLL:
      actionDelegate2 = [(PXPeopleBootstrapConfirmationViewController *)self actionDelegate];
      [actionDelegate2 setAdvanceButtonEnabled:1];

      break;
    case 2uLL:

      [(PXPeopleBootstrapConfirmationViewController *)self _badgeLoadingCells];
      break;
  }
}

- (void)setViewState:(unint64_t)state
{
  if ([(PXPeopleBootstrapConfirmationViewController *)self viewState]!= state)
  {
    self->_viewState = state;

    [(PXPeopleBootstrapConfirmationViewController *)self _updateViewWithViewState:state];
  }
}

- (NSArray)presentationStatuses
{
  v23 = *MEMORY[0x1E69E9840];
  currentSuggestions = [(PXPeopleBootstrapConfirmationViewController *)self currentSuggestions];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(currentSuggestions, "count")}];
  collectionView = [(PXPeopleBootstrapConfirmationViewController *)self collectionView];
  _sortedIndexPathsForVisibleCells = [(PXPeopleBootstrapConfirmationViewController *)self _sortedIndexPathsForVisibleCells];
  v7 = [currentSuggestions count];
  if ([_sortedIndexPathsForVisibleCells count] == v7)
  {
    v17 = currentSuggestions;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = _sortedIndexPathsForVisibleCells;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [collectionView cellForItemAtIndexPath:*(*(&v18 + 1) + 8 * i)];
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "presentationStatus")}];
          [v4 addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    currentSuggestions = v17;
  }

  else
  {
    for (; v7; --v7)
    {
      [v4 addObject:&unk_1F190D4E0];
    }
  }

  v15 = [v4 copy];

  return v15;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = PXPeopleBootstrapConfirmationViewController;
  changeCopy = change;
  [(PXPeopleBootstrapConfirmationViewController *)&v9 traitCollectionDidChange:changeCopy];
  [(PXPeopleBootstrapConfirmationViewController *)self _updateNavigationBarForCurrentTraitCollection:v9.receiver];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(PXPeopleBootstrapConfirmationViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    collectionView = [(PXPeopleBootstrapConfirmationViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = PXPeopleBootstrapConfirmationViewController;
  coordinatorCopy = coordinator;
  [(PXPeopleBootstrapConfirmationViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98__PXPeopleBootstrapConfirmationViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E774BC60;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __98__PXPeopleBootstrapConfirmationViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewLayout];
  [v1 invalidateLayout];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = PXPeopleBootstrapConfirmationViewController;
  [(PXPeopleBootstrapConfirmationViewController *)&v7 viewWillDisappear:disappear];
  suggestionManager = [(PXPeopleBootstrapConfirmationViewController *)self suggestionManager];
  dataSource = [suggestionManager dataSource];

  if (objc_opt_respondsToSelector())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"PXPeopleSuggestionManagerKeyFaceUpdateNotification" object:0];

    [dataSource stopListeningForLibraryChanges];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = PXPeopleBootstrapConfirmationViewController;
  [(PXPeopleBootstrapConfirmationViewController *)&v11 viewWillAppear:appear];
  suggestionManager = [(PXPeopleBootstrapConfirmationViewController *)self suggestionManager];
  dataSource = [suggestionManager dataSource];

  if (objc_opt_respondsToSelector())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_keyFaceUpdated_ name:@"PXPeopleSuggestionManagerKeyFaceUpdateNotification" object:0];

    [dataSource startListeningForLibraryChanges];
  }

  [(PXPeopleBootstrapConfirmationViewController *)self _cacheCurrentSuggestions];
  [(PXPeopleBootstrapConfirmationViewController *)self setWillAppear:1];
  currentSuggestions = [(PXPeopleBootstrapConfirmationViewController *)self currentSuggestions];
  v8 = [currentSuggestions count];

  if (v8)
  {
    [(PXPeopleBootstrapConfirmationViewController *)self _evaluateIfSuggestionPresentationFinished];
  }

  viewState = [(PXPeopleBootstrapConfirmationViewController *)self viewState];
  if (viewState != 1)
  {
    if (viewState == 4)
    {
      [(PXPeopleBootstrapConfirmationViewController *)self _startLoadingTimer];
    }

    actionDelegate = [(PXPeopleBootstrapConfirmationViewController *)self actionDelegate];
    [actionDelegate setAdvanceButtonEnabled:0];
  }

  [(PXPeopleBootstrapConfirmationViewController *)self _updateHeaderContent];
  [(PXPeopleBootstrapConfirmationViewController *)self _updateNavigationBarForCurrentTraitCollection];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PXPeopleBootstrapConfirmationViewController;
  [(PXPeopleBootstrapConfirmationViewController *)&v12 viewDidLoad];
  view = [(PXPeopleBootstrapConfirmationViewController *)self view];
  [view bounds];
  [(PXPeopleBootstrapConfirmationViewController *)self setLastSize:v4, v5];
  collectionView = [(PXPeopleBootstrapConfirmationViewController *)self collectionView];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [collectionView setBackgroundColor:systemBackgroundColor];

  [collectionView setAllowsMultipleSelection:1];
  [collectionView setContentInsetAdjustmentBehavior:0];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PXPeopleBootstrapCell"];
  [collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"PXPeopleBootstrapHeader"];
  [collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC00] withReuseIdentifier:@"PXPeopleBootstrapFooter"];
  v8 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
  [collectionView addInteraction:v8];
  viewState = [(PXPeopleBootstrapConfirmationViewController *)self viewState];
  if (viewState)
  {
    [(PXPeopleBootstrapConfirmationViewController *)self _updateViewWithViewState:viewState];
  }

  [(PXPeopleBootstrapConfirmationViewController *)self _updateNavigationBarForCurrentTraitCollection];
  currentSuggestions = [(PXPeopleBootstrapConfirmationViewController *)self currentSuggestions];
  firstObject = [currentSuggestions firstObject];
  [objc_opt_class() px_loadRepresentativeFacesForPersons:currentSuggestions];
}

- (void)dealloc
{
  bootstrapContext = [(PXPeopleBootstrapConfirmationViewController *)self bootstrapContext];
  [bootstrapContext removeObserver:self forKeyPath:@"nameSelection"];

  v4.receiver = self;
  v4.super_class = PXPeopleBootstrapConfirmationViewController;
  [(PXPeopleBootstrapConfirmationViewController *)&v4 dealloc];
}

- (PXPeopleBootstrapConfirmationViewController)initWithContext:(id)context dataSource:(id)source
{
  contextCopy = context;
  sourceCopy = source;
  v9 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v9 setSectionInset:{0.0, 5.0, 5.0, 5.0}];
  [v9 setMinimumLineSpacing:5.0];
  [v9 setMinimumInteritemSpacing:5.0];
  v17.receiver = self;
  v17.super_class = PXPeopleBootstrapConfirmationViewController;
  v10 = [(PXPeopleBootstrapConfirmationViewController *)&v17 initWithCollectionViewLayout:v9];
  v11 = v10;
  if (v10)
  {
    v10->_viewState = 0;
    v12 = [PXPeopleSuggestionManager alloc];
    sourcePerson = [contextCopy sourcePerson];
    v14 = [(PXPeopleSuggestionManager *)v12 initWithPerson:sourcePerson];
    suggestionManager = v11->_suggestionManager;
    v11->_suggestionManager = v14;

    [(PXPeopleSuggestionManager *)v11->_suggestionManager setMute:1];
    [(PXPeopleSuggestionManager *)v11->_suggestionManager setDelegate:v11];
    v11->_type = [contextCopy bootstrapType];
    v11->_willAppear = 0;
    objc_storeStrong(&v11->_bootstrapContext, context);
    if (objc_opt_respondsToSelector())
    {
      [sourceCopy setInitialPageLimit:9];
    }

    [(PXPeopleSuggestionManager *)v11->_suggestionManager setDataSource:sourceCopy];
    [contextCopy addObserver:v11 forKeyPath:@"nameSelection" options:0 context:0];
  }

  return v11;
}

@end