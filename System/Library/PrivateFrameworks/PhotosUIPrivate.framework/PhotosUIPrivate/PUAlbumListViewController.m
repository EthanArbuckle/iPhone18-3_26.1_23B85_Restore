@interface PUAlbumListViewController
+ (id)newMyAlbumsViewControllerWithSpec:(id)a3 sessionInfo:(id)a4 dataSourceManager:(id)a5 photoLibrary:(id)a6;
+ (id)newMyAlbumsViewControllerWithSpec:(id)a3 sessionInfo:(id)a4 photoLibrary:(id)a5;
- (BOOL)_canDragIn;
- (BOOL)_isPlaceholderEnabled:(int64_t)a3;
- (BOOL)_shouldShowAggregateItem;
- (BOOL)_someAlbumSupportsEditing;
- (BOOL)_updateInterfaceForIncrementalModelChangeHandler:(id)a3 withSectionedChangeDetails:(id)a4 animated:(BOOL)a5;
- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5;
- (BOOL)albumListCellContentViewShouldBeginRetitling:(id)a3;
- (BOOL)canNavigateToCollection:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 canReorderItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5;
- (BOOL)isEmpty;
- (BOOL)isPlaceholderAtIndexPath:(id)a3;
- (BOOL)isRootSharedAlbumList;
- (BOOL)pu_wantsToolbarVisible;
- (BOOL)px_scrollToInitialPositionAnimated:(BOOL)a3;
- (BOOL)shouldBeginRetitlingAlbumAtIndexPath:(id)a3;
- (BOOL)shouldEnableCollection:(id)a3;
- (BOOL)showsSeparatorBelowTopPlaceholdersSection;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)updateSpec;
- (CGRect)_previousPreheatRect;
- (CGSize)_layoutReferenceSize;
- (PHImageRequestOptions)_imageRequestOptions;
- (PHPickerViewController)pickerViewController;
- (PUAlbumListCell)focusedListCell;
- (PUAlbumListViewController)initWithSpec:(id)a3;
- (PUAlbumListViewController)initWithSpec:(id)a3 dataSourceManager:(id)a4 photoLibrary:(id)a5;
- (PUAlbumListViewController)initWithSpec:(id)a3 isRootSharedAlbumList:(BOOL)a4;
- (PUAlbumListViewControllerSpec)spec;
- (PUFontManager)_fontManager;
- (PXPhotoKitCollectionsDataSource)dataSource;
- (UIEdgeInsets)_layoutSafeAreaInsets;
- (_NSRange)albumsSections;
- (double)sectionedGridLayout:(id)a3 sectionHeaderHeightForVisualSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_albumCreationButtonItem;
- (id)_assetsFetchOptions;
- (id)_cancelButtonItem;
- (id)_collectionForNavigation;
- (id)_createControllerForFolder:(id)a3;
- (id)_doneButtonItem;
- (id)_getDisplayableAssetsForFolder:(id)a3 maximumCount:(int64_t)a4 useCache:(BOOL)a5 correspondingCollections:(id *)a6;
- (id)_getDisplayableFacesForCollectionList:(id)a3 maximumCount:(int64_t)a4;
- (id)_keyAssetsForMoments;
- (id)_pickerBannerView;
- (id)_preparedAlbumListCellContentViewAtIndexPath:(id)a3;
- (id)_suppressionContexts;
- (id)_targetIndexPathForMoveFromIndexPath:(id)a3 toProposedIndexPath:(id)a4;
- (id)_viewControllerForCollection:(id)a3 userActivity:(id *)a4;
- (id)_visibleAssetsForCollection:(id)a3 correspondingCollections:(id *)a4;
- (id)_visibleAssetsForCollection:(id)a3 maximumNumberOfVisibleAssets:(int64_t)a4 correspondingCollections:(id *)a5;
- (id)backgroundColorForTableView;
- (id)bestReferenceItemIndexPath;
- (id)collectionAtIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)indexPathForAddNewAlbumPlaceholder;
- (id)indexPathForAggregateItem;
- (id)indexPathForAlbumListCellContentView:(id)a3;
- (id)indexPathForCollection:(id)a3;
- (id)indexPathForFirstEditableAlbum;
- (id)indexPathForItemAtPoint:(CGPoint)a3;
- (id)indexPathForPeopleAlbum;
- (id)indexPathForPlacesAlbum;
- (id)indexPathsForItemsInRect:(CGRect)a3;
- (id)indexPathsForVisibleItems;
- (id)mainScrollView;
- (id)newGridViewControllerForAssetCollection:(id)a3;
- (id)newGridViewControllerForFolder:(id)a3;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (id)px_gridPresentation;
- (id)px_navigationDestination;
- (id)sectionedGridLayout:(id)a3 sectionsForVisualSection:(int64_t)a4;
- (id)subtitleForCollection:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (int64_t)numberOfVisualSectionsForSectionedGridLayout:(id)a3;
- (int64_t)placeholderKindAtIndexPath:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)topPlaceholdersSection;
- (unint64_t)_editCapabilitiesForAlbum:(id)a3;
- (unint64_t)_stackViewStyleForCollection:(id)a3;
- (unint64_t)_unfilteredIndexForFilteredIndexPath:(id)a3;
- (unint64_t)routingOptionsForDestination:(id)a3;
- (void)_didSelectPlaceholderAtIndexPath:(id)a3;
- (void)_dismissPhotosPickerControllerAnimated:(BOOL)a3;
- (void)_enumerateIndexPathsForPreparedItemsUsingBlock:(id)a3;
- (void)_getDisplayableAssets:(id *)a3 indexes:(id *)a4 forCollection:(id)a5 maximumCount:(int64_t)a6 useCache:(BOOL)a7;
- (void)_handleCancelButton:(id)a3;
- (void)_handleCollectionListActionType:(id)a3;
- (void)_handleDeleteAlbumAtIndexPath:(id)a3;
- (void)_handleDeleteCollection:(id)a3 sourceView:(id)a4;
- (void)_handleDeleteKeyCommand:(id)a3;
- (void)_handleDoneButton:(id)a3;
- (void)_handleOpenKeyCommand:(id)a3;
- (void)_handlePendingScrollingAnimationEndBlock;
- (void)_handleRenameKeyCommand:(id)a3;
- (void)_keyboardWillChangeFrame:(id)a3;
- (void)_navigateToDestination:(id)a3 provideViewControllers:(BOOL)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)_navigateToMemories;
- (void)_navigateToPeopleAnimated:(BOOL)a3 withPersonLocalIdentifier:(id)a4 withCompletion:(id)a5;
- (void)_navigateToPlacesFromCollection:(id)a3;
- (void)_performBatchUpdates:(id)a3 withDeletedSections:(id)a4 insertedSections:(id)a5 changedSections:(id)a6 deletedItemsIndexPaths:(id)a7 insertedItemsIndexPaths:(id)a8 changedItemsIndexPaths:(id)a9 movedItemsFromIndexPaths:(id)a10 movedItemsToIndexPaths:(id)a11 completionHandler:(id)a12;
- (void)_performOrScheduleScrollToCollection:(id)a3 animated:(BOOL)a4;
- (void)_postDidAppearActions;
- (void)_prepareStackView:(id)a3 forCollection:(id)a4 withStackCount:(int64_t)a5 withCustomEmptyPlaceHolderImage:(id)a6;
- (void)_recursivelyCollectCollectionsIn:(id)a3 fetchResult:(id)a4;
- (void)_resetPreheating;
- (void)_scrollToCollection:(id)a3 animated:(BOOL)a4;
- (void)_setLayoutReferenceSize:(CGSize)a3;
- (void)_setLayoutSafeAreaInsets:(UIEdgeInsets)a3;
- (void)_updateAddNewAlbumPlaceholderAnimated:(BOOL)a3;
- (void)_updateAlbumSubtitleFormat;
- (void)_updateCollageView:(id)a3 forAssets:(id)a4;
- (void)_updateEmptyPlaceholder;
- (void)_updateIfNeeded;
- (void)_updateInterfaceForModelReloadAnimated:(BOOL)a3;
- (void)_updateLayoutMetrics;
- (void)_updateMainView;
- (void)_updateNavigationBannerAnimated:(BOOL)a3;
- (void)_updatePeripheralInterfaceAnimated:(BOOL)a3;
- (void)_updatePreheatedAssets;
- (void)_updatePreparedCellsConfigurationIfNeeded;
- (void)_updateStackView:(id)a3 forAssets:(id)a4 collection:(id)a5 withCustomEmptyPlaceholderImage:(id)a6;
- (void)_updateStackView:(id)a3 forFaces:(id)a4 inCollection:(id)a5 withCustomEmptyPlaceholderImage:(id)a6;
- (void)_updateTitle;
- (void)_visiblyInsertItemAtIndexPath:(id)a3 modelUpdate:(id)a4 completionHandler:(id)a5;
- (void)albumListCellContentView:(id)a3 didEndRetitlingFromTitle:(id)a4 toTitle:(id)a5;
- (void)albumListCellContentView:(id)a3 performDeleteAction:(id)a4;
- (void)albumListTableViewCell:(id)a3 willChangeState:(unint64_t)a4;
- (void)assetCollectionActionPerformer:(id)a3 playMovieForAssetCollection:(id)a4;
- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5 completionHandler:(id)a6;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)configureSupplementaryView:(id)a3 ofKind:(id)a4 forIndexPath:(id)a5;
- (void)dealloc;
- (void)deselectSelectedItemAnimated:(BOOL)a3;
- (void)didSelectItemAtIndexPath:(id)a3;
- (void)handleSessionInfoAlbumSelection:(id)a3;
- (void)navigateToAllPhotosAnimated:(BOOL)a3 completion:(id)a4;
- (void)navigateToCollection:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)navigateToPeopleAnimated:(BOOL)a3 withPersonLocalIdentifier:(id)a4 withCompletion:(id)a5;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)placesSnapshotCountDidChange;
- (void)placesSnapshotDidChange;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)reloadContentView;
- (void)scrollToItemAtIndexPath:(id)a3 centered:(BOOL)a4 animated:(BOOL)a5;
- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4;
- (void)sessionInfoPhotoSelectionDidChange:(id)a3;
- (void)setCollection:(id)a3;
- (void)setDataSourceManagerConfiguration:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setKeyboardAware:(BOOL)a3;
- (void)setSessionInfo:(id)a3;
- (void)setSyncProgressVisible:(BOOL)a3;
- (void)setTitleForCell:(id)a3 withCollection:(id)a4;
- (void)setupDropDelegateForCollectionView:(id)a3;
- (void)showPlacesCount:(int64_t)a3;
- (void)showPlacesCount:(int64_t)a3 atIndexPath:(id)a4;
- (void)showPlacesPlaceholderImageInStackView:(id)a3 andContentView:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)updateAlbumListCellContentView:(id)a3 forItemAtIndexPath:(id)a4 animated:(BOOL)a5;
- (void)updateInterfaceLayoutIfNecessary;
- (void)updateListCellForItemAtIndexPath:(id)a3 animated:(BOOL)a4;
- (void)updateNavigationBarAnimated:(BOOL)a3;
- (void)updatePlaceholderListCellContentView:(id)a3 forItemAtIndexPath:(id)a4 animated:(BOOL)a5;
- (void)updateSyncProgress;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PUAlbumListViewController

- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PUAlbumListViewController *)self collectionViewDropDelegate];
  v12 = [v11 collectionView:v8 shouldSpringLoadItemAtIndexPath:v9 withContext:v10];

  if (v12)
  {
    v13 = [v8 cellForItemAtIndexPath:v9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 albumListCellContentView];
      v15 = [v14 springLoadingTargetView];

      if (v15)
      {
        [v10 setTargetView:v15];
      }
    }
  }

  return v12;
}

- (BOOL)_canDragIn
{
  v2 = [(PUAlbumListViewController *)self sessionInfo];
  v3 = [v2 isSelectingTargetAlbum];

  return v3 ^ 1;
}

- (void)setupDropDelegateForCollectionView:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PUCollectionsCollectionViewDropDelegate);
  [(PUCollectionsCollectionViewDropDelegate *)v5 setDropDataProvider:self];
  [v4 setDropDelegate:v5];

  [(PUAlbumListViewController *)self setCollectionViewDropDelegate:v5];
}

- (UIEdgeInsets)_layoutSafeAreaInsets
{
  top = self->__layoutSafeAreaInsets.top;
  left = self->__layoutSafeAreaInsets.left;
  bottom = self->__layoutSafeAreaInsets.bottom;
  right = self->__layoutSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)_layoutReferenceSize
{
  width = self->__layoutReferenceSize.width;
  height = self->__layoutReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PHPickerViewController)pickerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_pickerViewController);

  return WeakRetained;
}

- (CGRect)_previousPreheatRect
{
  x = self->__previousPreheatRect.origin.x;
  y = self->__previousPreheatRect.origin.y;
  width = self->__previousPreheatRect.size.width;
  height = self->__previousPreheatRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)placesSnapshotCountDidChange
{
  objc_initWeak(&location, self);
  v3 = [(PUAlbumListViewController *)self _placesAlbumCoverProvider];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PUAlbumListViewController_placesSnapshotCountDidChange__block_invoke;
  v4[3] = &unk_1E7B80660;
  objc_copyWeak(&v5, &location);
  [v3 requestAssetCountWithForcedRefresh:1 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__PUAlbumListViewController_placesSnapshotCountDidChange__block_invoke(uint64_t a1, void *a2)
{
  objc_copyWeak(v3, (a1 + 32));
  v3[1] = a2;
  px_dispatch_on_main_queue();
  objc_destroyWeak(v3);
}

void __57__PUAlbumListViewController_placesSnapshotCountDidChange__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showPlacesCount:*(a1 + 40)];
}

- (void)placesSnapshotDidChange
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  px_dispatch_on_main_queue();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

void __52__PUAlbumListViewController_placesSnapshotDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained indexPathForPlacesAlbum];
  [WeakRetained updateListCellForItemAtIndexPath:v1 animated:0];
}

- (PUFontManager)_fontManager
{
  fontManager = self->__fontManager;
  if (!fontManager)
  {
    v4 = objc_alloc_init(PUFontManager);
    v5 = self->__fontManager;
    self->__fontManager = v4;

    [(PUFontManager *)self->__fontManager registerChangeObserver:self context:PUFontManagerObservationContext];
    fontManager = self->__fontManager;
  }

  return fontManager;
}

- (void)_updateIfNeeded
{
  if ([(PUAlbumListViewController *)self _needsUpdate])
  {

    [(PUAlbumListViewController *)self _updatePreparedCellsConfigurationIfNeeded];
  }
}

- (void)_updatePreparedCellsConfigurationIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.preparedCellsConfiguration)
  {
    self->_needsUpdateFlags.preparedCellsConfiguration = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__PUAlbumListViewController__updatePreparedCellsConfigurationIfNeeded__block_invoke;
    v16[3] = &unk_1E7B75138;
    v16[4] = self;
    [(PUAlbumListViewController *)self _enumerateIndexPathsForPreparedItemsUsingBlock:v16];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [(PUAlbumListViewController *)self collectionView];
    v4 = [v3 indexPathsForVisibleSupplementaryElementsOfKind:@"PUAlbumListViewControllerElementKindSectionHeader"];

    v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = [(PUAlbumListViewController *)self collectionView];
          v11 = [v10 supplementaryViewForElementKind:@"PUAlbumListViewControllerElementKindSectionHeader" atIndexPath:v9];

          [(PUAlbumListViewController *)self configureSupplementaryView:v11 ofKind:@"PUAlbumListViewControllerElementKindSectionHeader" forIndexPath:v9];
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v6);
    }
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXPhotoKitCollectionsDataSourceManagerObservationContext != a5)
  {
    if (PUFontManagerObservationContext == a5)
    {
      [(PUAlbumListViewController *)self _updateMainView];
      [(PUAlbumListViewController *)self _updateInterfaceForModelReloadAnimated:0];
    }

    else if (PXSpecManagerObservationContext == a5)
    {
      v24 = [(PUAlbumListViewController *)self _featureSpecManager];
      v25 = [v24 spec];

      [(PUAlbumListViewController *)self _setFeatureSpec:v25];
    }

    else
    {
      if (PXSharedLibraryStatusProviderObservationContext != a5)
      {
        v57 = [MEMORY[0x1E696AAA8] currentHandler];
        [v57 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:3966 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      if ((v6 & 3) != 0)
      {
        [(PUAlbumListViewController *)self updateNavigationBarAnimated:0];
      }
    }

    goto LABEL_39;
  }

  v10 = [(PUAlbumListViewController *)self dataSourceManager];
  v11 = [v10 dataSource];
  v12 = [v10 changeHistory];
  v13 = [(PUAlbumListViewController *)self dataSource];
  v14 = [v12 changeDetailsFromDataSourceIdentifier:objc_msgSend(v13 toDataSourceIdentifier:{"identifier"), objc_msgSend(v11, "identifier")}];

  if ([v14 count] >= 2)
  {
    v54 = [MEMORY[0x1E696AAA8] currentHandler];
    [v54 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:3842 description:@"Should only have one change details at most."];
  }

  v15 = [v14 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 isCountUpdateChange];
  }

  else
  {
    v16 = 0;
  }

  v62 = v14;
  v61 = v15;
  v17 = [objc_alloc(MEMORY[0x1E69C4550]) initWithSectionedDataSourceChangeDetails:v15 shiftedSection:{-[PUAlbumListViewController albumsSections](self, "albumsSections")}];
  v18 = [(PUAlbumListViewController *)self pushedAlbum];
  if (v18)
  {
    v19 = [v17 deletedItemsIndexPaths];
    [(PUAlbumListViewController *)self pushedAlbum];
    v20 = v9;
    v22 = v21 = v10;
    v23 = [(PUAlbumListViewController *)self indexPathForCollection:v22];
    v63 = [v19 containsObject:v23];

    v10 = v21;
    v9 = v20;
  }

  else
  {
    v63 = 0;
  }

  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PUAlbumListViewController_observable_didChange_context___block_invoke;
  aBlock[3] = &unk_1E7B7FFC0;
  v70 = &v71;
  aBlock[4] = self;
  v26 = v11;
  v69 = v26;
  v27 = _Block_copy(aBlock);
  v28 = [(PUAlbumListViewController *)self isViewInSyncWithModel];
  [(PUAlbumListViewController *)self setViewInSyncWithModel:0];
  if (![(PUAlbumListViewController *)self px_isVisible])
  {
    goto LABEL_32;
  }

  if ((v16 & 1) == 0)
  {
    [(PUAlbumListViewController *)self _updateAlbumSubtitleFormat];
  }

  if (v17 && ![v17 hasIncrementalChanges])
  {
    goto LABEL_31;
  }

  if ([v17 hasMoves] & 1 | !v28)
  {
    goto LABEL_31;
  }

  v29 = [v17 contentItemsChangedIndexPaths];
  v30 = [v29 count];

  if (!v17)
  {
    if (v30)
    {
      goto LABEL_31;
    }
  }

  v31 = [(PUAlbumListViewController *)self _justCreatedCollectionIdentifier];

  if (v31)
  {
    v32 = [v17 deletedSections];
    if ([v32 count])
    {
LABEL_29:

      goto LABEL_30;
    }

    v33 = [v17 insertedSections];
    if ([v33 count])
    {

      goto LABEL_29;
    }

    v39 = [v17 changedSections];
    v40 = [v39 count];

    if (!v40 && ([v17 hasMoves] & 1) == 0)
    {
      v41 = [v17 deletedItemsIndexPaths];
      v42 = [v41 count];

      if (!v42)
      {
        v43 = [v17 changedItemsIndexPaths];
        v44 = [v43 count];

        if (!v44)
        {
          v45 = [v17 insertedItemsIndexPaths];
          v46 = [v45 count];

          if (v46 == 1)
          {
            v58 = v9;
            v47 = v10;
            v48 = [v17 insertedItemsIndexPaths];
            v49 = [v48 firstObject];

            v50 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v49 inSection:{"item"), objc_msgSend(v49, "section") - -[PUAlbumListViewController albumsSections](self, "albumsSections")}];
            v60 = [v26 collectionAtIndexPath:v50];
            v59 = [v60 localIdentifier];
            v51 = [(PUAlbumListViewController *)self _justCreatedCollectionIdentifier];
            v52 = [v59 isEqualToString:v51];

            v53 = v52 ? v49 : 0;
            v10 = v47;
            v9 = v58;
            if (v53)
            {
              v55 = [(PUAlbumListViewController *)self _justCreatedCollectionAnimationCompletionHandler];
              v64[0] = MEMORY[0x1E69E9820];
              v64[1] = 3221225472;
              v64[2] = __58__PUAlbumListViewController_observable_didChange_context___block_invoke_2;
              v64[3] = &unk_1E7B80CB0;
              v65 = v17;
              v66 = self;
              v56 = v55;
              v67 = v56;
              [(PUAlbumListViewController *)self _visiblyInsertItemAtIndexPath:v53 modelUpdate:v27 completionHandler:v64];
              [(PUAlbumListViewController *)self _setJustCreatedCollectionAnimationCompletionHandler:0];
              [(PUAlbumListViewController *)self _updatePeripheralInterfaceAnimated:1];
              [(PUAlbumListViewController *)self setViewInSyncWithModel:1];
              [(PUAlbumListViewController *)self _updatePreheatedAssets];

              v10 = v47;
              v9 = v58;
              goto LABEL_32;
            }
          }
        }
      }
    }
  }

LABEL_30:
  if (![(PUAlbumListViewController *)self _updateInterfaceForIncrementalModelChangeHandler:v27 withSectionedChangeDetails:v17 animated:1])
  {
LABEL_31:
    v27[2](v27);
    [(PUAlbumListViewController *)self _updateInterfaceForModelReloadAnimated:1];
  }

LABEL_32:
  if ((v72[3] & 1) == 0)
  {
    v27[2](v27);
  }

  [(PUAlbumListViewController *)self _setJustCreatedCollectionIdentifier:0];
  v34 = [(PUAlbumListViewController *)self _justCreatedCollectionAnimationCompletionHandler];

  if (v34)
  {
    v35 = [(PUAlbumListViewController *)self _justCreatedCollectionAnimationCompletionHandler];
    v35[2]();

    [(PUAlbumListViewController *)self _setJustCreatedCollectionAnimationCompletionHandler:0];
  }

  if (v63)
  {
    v36 = [(PUAlbumListViewController *)self pushedController];
    [v36 pl_visitControllerHierarchyWithBlock:&__block_literal_global_623];

    v37 = [(PUAlbumListViewController *)self navigationController];
    v38 = [v37 popToViewController:self animated:0];
  }

  _Block_object_dispose(&v71, 8);
LABEL_39:
}

void __58__PUAlbumListViewController_observable_didChange_context___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    objc_storeStrong((*(a1 + 32) + 1288), *(a1 + 40));
  }
}

uint64_t __58__PUAlbumListViewController_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) contentItemsChangedIndexPaths];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) updateListCellForItemAtIndexPath:*(*(&v8 + 1) + 8 * v6++) animated:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __58__PUAlbumListViewController_observable_didChange_context___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1F2BCA758])
  {
    v3 = [v2 prepareForDismissingForced:1];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)albumListTableViewCell:(id)a3 willChangeState:(unint64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if ((a4 & 2) != 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(PUAlbumListViewController *)self _mainTableView:a3];
    v5 = [v4 visibleCells];

    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v11 + 1) + 8 * v9) viewWithTag:236897];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 cancelPerformRetitleAction];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = PULocalizedString(@"ALBUM_LIST_TABLE_ROW_DELETE_CONFIRMATION");
  v7 = [(PUAlbumListViewController *)self collectionAtIndexPath:v5];

  if ([v7 px_isStreamSharedAlbum] && !objc_msgSend(v7, "px_isOwnedStreamSharedAlbum") || objc_msgSend(v7, "px_isCloudKitSharedAlbum") && (objc_msgSend(v7, "px_isOwnedCloudKitSharedAlbum") & 1) == 0)
  {
    v8 = PULocalizedString(@"ALBUM_LIST_TABLE_ROW_UNSUBSCRIBE_CONFIRMATION");

    v6 = v8;
  }

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    [(PUAlbumListViewController *)self _handleDeleteAlbumAtIndexPath:a5];
  }
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = [(PUAlbumListViewController *)self collectionAtIndexPath:a4];
  v6 = [(PUAlbumListViewController *)self dataSourceManager];
  v7 = [v6 canDeleteCollection:v5];

  return v7;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 != v10 && ([v9 isEqual:v10] & 1) == 0)
  {
    v11 = [(PUAlbumListViewController *)self dataSourceManager];
    v12 = [v11 collectionList];
    v13 = [v11 collectionsFetchResult];
    v14 = [(PUAlbumListViewController *)self _unfilteredIndexForFilteredIndexPath:v9];
    v15 = [(PUAlbumListViewController *)self _unfilteredIndexForFilteredIndexPath:v10];
    [(PUAlbumListViewController *)self _setIgnoredReorderNotificationCount:[(PUAlbumListViewController *)self _ignoredReorderNotificationCount]+ 1];
    v16 = [v12 photoLibrary];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__PUAlbumListViewController_tableView_moveRowAtIndexPath_toIndexPath___block_invoke;
    v19[3] = &unk_1E7B80688;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v17 = v13;
    v18 = v12;
    [v16 performChanges:v19 completionHandler:0];
  }
}

void __70__PUAlbumListViewController_tableView_moveRowAtIndexPath_toIndexPath___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6978768] changeRequestForCollectionList:*(a1 + 32) childCollections:*(a1 + 40)];
  v3 = [*(a1 + 40) objectAtIndex:*(a1 + 48)];
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:*(a1 + 48)];
  [v2 removeChildCollectionsAtIndexes:v4];

  v7[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:*(a1 + 56)];
  [v2 insertChildCollections:v5 atIndexes:v6];
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(PUAlbumListViewController *)self isEditing])
  {
    v6 = [(PUAlbumListViewController *)self collectionAtIndexPath:v5];
    if (v6)
    {
      v7 = [(PUAlbumListViewController *)self retitlingCollection];
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v9 = [(PUAlbumListViewController *)self dataSourceManager];
        v8 = [v9 canReorderCollection:v6];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(PUAlbumListViewController *)self didSelectItemAtIndexPath:v6];
  if ([(PUAlbumListViewController *)self isPlaceholderAtIndexPath:v6])
  {
    [v7 deselectRowAtIndexPath:v6 animated:1];
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(PUAlbumListViewController *)self isPlaceholderAtIndexPath:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(PUAlbumListViewController *)self collectionAtIndexPath:v5];
    v6 = [(PUAlbumListViewController *)self shouldEnableCollection:v7];
  }

  return v6;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if ([(PUAlbumListViewController *)self topPlaceholdersSection]== a4 && [(PUAlbumListViewController *)self showsSeparatorBelowTopPlaceholdersSection])
  {
    v7 = [PUAlbumListSeparatorView alloc];
    v8 = [(PUAlbumListSeparatorView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v9 = [v6 separatorColor];
    [(PUAlbumListSeparatorView *)v8 setLineColor:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = [(PUAlbumListViewController *)self topPlaceholdersSection];
  result = 0.0;
  if (v6 == a4)
  {
    v8 = [(PUAlbumListViewController *)self showsSeparatorBelowTopPlaceholdersSection];
    result = 0.0;
    if (v8)
    {
      return 4.0;
    }
  }

  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 delegate];
  [v7 tableView:v6 heightForHeaderInSection:a4];
  v9 = v8;

  if (v9 <= 0.0)
  {
    v14 = 0;
  }

  else
  {
    v10 = a4 - [(PUAlbumListViewController *)self albumsSections];
    v11 = [(PUAlbumListViewController *)self dataSource];
    v12 = [v11 collectionListForSection:v10];

    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = [v12 localizedTitle];
    }

    else
    {
      v13 = 0;
    }

    if ([v13 length])
    {
      sectionHeaderView = self->_sectionHeaderView;
      if (!sectionHeaderView)
      {
        v16 = [PUAlbumListSectionHeaderView alloc];
        [v6 frame];
        v18 = v17;
        v19 = [(PUAlbumListViewController *)self spec];
        [v19 sectionHeaderHeight];
        v21 = [(PUAlbumListSectionHeaderView *)v16 initWithFrame:0.0, 0.0, v18, v20];
        v22 = self->_sectionHeaderView;
        self->_sectionHeaderView = v21;

        sectionHeaderView = self->_sectionHeaderView;
      }

      v23 = PULocalizedString(v13);
      [(PUAlbumListSectionHeaderView *)sectionHeaderView setSectionHeaderTitle:v23];

      v24 = self->_sectionHeaderView;
      v25 = [(PUAlbumListViewController *)self _fontManager];
      v26 = [v25 albumListSectionTitleLabelFont];
      [(PUAlbumListSectionHeaderView *)v24 setSectionHeaderTitleFont:v26];

      v27 = [(PUAlbumListViewController *)self spec];
      [(PUAlbumListViewController *)self _layoutReferenceSize];
      v29 = v28;
      v31 = v30;
      [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
      [v27 sectionInsetsForLayoutReferenceSize:v29 safeAreaInsets:{v31, v32, v33, v34, v35}];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      [(PUAlbumListSectionHeaderView *)self->_sectionHeaderView setSectionHeaderInsets:v37, v39, v41, v43];
      v14 = self->_sectionHeaderView;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = [(PUAlbumListViewController *)self albumsSections];
  v8 = 0.0;
  if (a4 >= v6 && a4 - v6 < v7)
  {
    if ([(PUAlbumListViewController *)self isRootFolder])
    {
      v9 = [(PUAlbumListViewController *)self spec];
      v10 = [v9 shouldShowSectionHeaders];

      if (v10)
      {
        v11 = a4 - [(PUAlbumListViewController *)self albumsSections];
        v12 = [(PUAlbumListViewController *)self dataSource];
        v13 = [v12 collectionListForSection:v11];

        if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v14 = [v13 localizedTitle];
        }

        else
        {
          v14 = 0;
        }

        if ([v14 length])
        {
          v15 = [(PUAlbumListViewController *)self spec];
          [v15 sectionHeaderHeight];
          v8 = v16;
        }
      }
    }
  }

  return v8;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v6 = [v5 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v6) && (-[PUAlbumListViewController spec](self, "spec"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 cellContentViewLayout], v7, !v8))
  {
    v12 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    v9 = [(PUAlbumListViewController *)self spec];
    v10 = [(PUAlbumListViewController *)self view];
    [v10 bounds];
    [v9 cellSizeForBounds:?];
    v12 = v11;
  }

  return v12;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUAlbumListViewController *)self isPlaceholderAtIndexPath:v6];
  v9 = @"albumCell";
  if (v8)
  {
    v9 = @"placeholderCell";
  }

  v10 = v9;
  v11 = [v7 dequeueReusableCellWithIdentifier:v10];

  if (!v11)
  {
    v12 = [[PUAlbumListTableViewCell alloc] initWithStyle:0 reuseIdentifier:v10];
    v11 = v12;
    if (!v8)
    {
      [(PUAlbumListTableViewCell *)v12 setStateChangeDelegate:self];
    }
  }

  v13 = [v11 viewWithTag:236897];
  if (!v13)
  {
    v14 = [PUAlbumListCellContentView alloc];
    v15 = [v11 contentView];
    [v15 bounds];
    v13 = [(PUAlbumListCellContentView *)v14 initWithFrame:?];

    [(PUAlbumListCellContentView *)v13 setTag:236897];
    [(PUAlbumListCellContentView *)v13 setAutoresizingMask:18];
    [(PUAlbumListCellContentView *)v13 setCombinesPhotoDecorations:1];
    v16 = [v11 contentView];
    [v16 addSubview:v13];

    if (!v8)
    {
      [(PUAlbumListCellContentView *)v13 setDelegate:self];
    }
  }

  [(PUAlbumListCellContentView *)v13 prepareForReuse];
  v17 = [(PUAlbumListViewController *)self sessionInfo];
  v18 = [v17 isSelectingTargetAlbum];

  if (v8)
  {
    v19 = [(PUAlbumListViewController *)self placeholderKindAtIndexPath:v6];
    if (v19 == 6)
    {
      v20 = v18 ^ 1;
    }

    else
    {
      v20 = 0;
    }

    if ((v19 - 2) >= 4)
    {
      v21 = v20;
    }

    else
    {
      v21 = v18 ^ 1;
    }

    [(PUAlbumListViewController *)self updatePlaceholderListCellContentView:v13 forItemAtIndexPath:v6 animated:0];
  }

  else
  {
    [(PUAlbumListViewController *)self updateAlbumListCellContentView:v13 forItemAtIndexPath:v6 animated:0];
    if (v18)
    {
      v22 = [(PUAlbumListViewController *)self collectionAtIndexPath:v6];
      v21 = [v22 px_isFolder];
    }

    else
    {
      v21 = 1;
    }
  }

  v23 = [(PUAlbumListViewController *)self sessionInfo];
  if ([v23 hasClearBackgroundColor])
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v24 = ;
  [v11 setBackgroundColor:v24];

  [v11 setAccessoryType:v21 & 1];
  [v11 setSelectionStyle:2];

  return v11;
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = PXMap();
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_INFO, "Picker in collection view finished with selected identifiers: %@", &v8, 0xCu);
  }

  v7 = [(PUAlbumListViewController *)self finishedPickingBlock];
  (v7)[2](v7, v5);

  [(PUAlbumListViewController *)self setFinishedPickingBlock:0];
  [(PUAlbumListViewController *)self _dismissPhotosPickerControllerAnimated:1];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(PUAlbumListViewController *)self collection];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_INFO, "Picker in collection view manually dismissed with no picked assets for collection: %@", &v7, 0xCu);
  }

  v6 = [(PUAlbumListViewController *)self finishedPickingBlock];
  v6[2](v6, MEMORY[0x1E695E0F0]);

  [(PUAlbumListViewController *)self setFinishedPickingBlock:0];
  [(PUAlbumListViewController *)self setPickerViewController:0];
}

- (double)sectionedGridLayout:(id)a3 sectionHeaderHeightForVisualSection:(int64_t)a4
{
  v6 = [(PUAlbumListViewController *)self dataSource];
  v7 = [v6 collectionListForSection:a4];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 localizedTitle];
  }

  else
  {
    v8 = 0;
  }

  if ([v8 length])
  {
    v9 = [(PUAlbumListViewController *)self spec];
    [v9 sectionHeaderHeight];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

- (id)bestReferenceItemIndexPath
{
  v3 = [(PUAlbumListViewController *)self _mainCollectionView];
  v4 = [(PUAlbumListViewController *)self _mainCollectionViewLayout];
  v5 = [v4 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 window];

    if (v7)
    {
      [v3 contentOffset];
      v9 = v8;
      v11 = v10;
      [v3 bounds];
      v13 = v12;
      v15 = v14;
      v16 = [v3 numberOfSections];
      if (v16 < 1)
      {
LABEL_7:
        v18 = 0;
        goto LABEL_8;
      }

      v17 = 0;
      while ([v3 numberOfItemsInSection:v17] <= 0)
      {
        if (v16 == ++v17)
        {
          goto LABEL_7;
        }
      }

      v18 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v17];
      if (!v18)
      {
        goto LABEL_8;
      }

      v25 = [v4 layoutAttributesForItemAtIndexPath:v18];
      v26 = v25;
      if (v25 && ([v25 frame], v32.origin.x = v9, v32.origin.y = v11, v32.size.width = v13, v32.size.height = v15, CGRectIntersectsRect(v30, v32)))
      {
        v18 = v18;

        v22 = v18;
      }

      else
      {

LABEL_8:
        while (v16-- >= 1)
        {
          v20 = [v3 numberOfItemsInSection:v16];
          if (v20 >= 1)
          {
            v21 = [MEMORY[0x1E696AC88] indexPathForItem:v20 - 1 inSection:v16];
            if (v21)
            {
              v22 = v21;
              v23 = [v4 layoutAttributesForItemAtIndexPath:v21];
              v24 = v23;
              if (v23)
              {
                [v23 frame];
                v31.origin.x = v9;
                v31.origin.y = v11;
                v31.size.width = v13;
                v31.size.height = v15;
                if (CGRectIntersectsRect(v29, v31))
                {

                  goto LABEL_23;
                }
              }
            }

            break;
          }
        }

        if ([v4 conformsToProtocol:&unk_1F2C21280])
        {
          v22 = [v4 itemIndexPathAtCenterOfRect:{v9, v11, v13, v15}];
        }

        else
        {
          v22 = 0;
        }
      }

LABEL_23:
      v7 = v22;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sectionedGridLayout:(id)a3 sectionsForVisualSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(PUAlbumListViewController *)self albumsSections];
  v9 = v7;
  v10 = v8;
  if (a4)
  {
    if ([(PUAlbumListViewController *)self numberOfVisualSectionsForSectionedGridLayout:v6]- 1 != a4)
    {
      v17 = [MEMORY[0x1E696AC90] indexSetWithIndex:a4];
      goto LABEL_10;
    }

    v11 = v10 + v9 - 1;
    v12 = MEMORY[0x1E696AC90];
    v13 = [(PUAlbumListViewController *)self numberOfSections]- v11;
    v14 = v12;
    v15 = v11;
  }

  else
  {
    v16 = MEMORY[0x1E696AC90];
    if (v8 > 1)
    {
      v13 = v7 + 1;
    }

    else
    {
      v13 = [(PUAlbumListViewController *)self numberOfSections];
    }

    v14 = v16;
    v15 = 0;
  }

  v17 = [v14 indexSetWithIndexesInRange:{v15, v13}];
LABEL_10:
  v18 = v17;

  return v18;
}

- (int64_t)numberOfVisualSectionsForSectionedGridLayout:(id)a3
{
  v3 = [(PUAlbumListViewController *)self dataSource];
  v4 = [v3 numberOfSections];

  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11 == v12 || [v11 isEqual:v12])
  {
    if (v13)
    {
      v13[2](v13);
    }
  }

  else
  {
    v14 = [(PUAlbumListViewController *)self dataSourceManager];
    v15 = [v14 collectionList];
    v16 = [v14 collectionsFetchResult];
    v17 = [(PUAlbumListViewController *)self _unfilteredIndexForFilteredIndexPath:v11];
    v18 = [(PUAlbumListViewController *)self _unfilteredIndexForFilteredIndexPath:v12];
    v21 = [v15 photoLibrary];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __94__PUAlbumListViewController_collectionView_moveItemAtIndexPath_toIndexPath_completionHandler___block_invoke;
    v25[3] = &unk_1E7B80688;
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v29 = v18;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __94__PUAlbumListViewController_collectionView_moveItemAtIndexPath_toIndexPath_completionHandler___block_invoke_2;
    v22[3] = &unk_1E7B78C08;
    v22[4] = self;
    v23 = v26;
    v24 = v13;
    v19 = v26;
    v20 = v16;
    [v21 performChanges:v25 completionHandler:v22];
  }
}

void __94__PUAlbumListViewController_collectionView_moveItemAtIndexPath_toIndexPath_completionHandler___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6978768] changeRequestForCollectionList:*(a1 + 32) childCollections:*(a1 + 40)];
  v3 = [*(a1 + 40) objectAtIndex:*(a1 + 48)];
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:*(a1 + 48)];
  [v2 removeChildCollectionsAtIndexes:v4];

  v7[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:*(a1 + 56)];
  [v2 insertChildCollections:v5 atIndexes:v6];
}

void __94__PUAlbumListViewController_collectionView_moveItemAtIndexPath_toIndexPath_completionHandler___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__PUAlbumListViewController_collectionView_moveItemAtIndexPath_toIndexPath_completionHandler___block_invoke_3;
  block[3] = &unk_1E7B80CB0;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __94__PUAlbumListViewController_collectionView_moveItemAtIndexPath_toIndexPath_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSourceManagerConfiguration];

  if (v2)
  {
    v3 = [*(a1 + 32) dataSourceManagerConfiguration];
    v6 = [v3 newConfigurationWithCollectionList:*(a1 + 40)];

    v4 = v6;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E69C37F0]) initWithCollectionList:*(a1 + 40)];
  }

  v7 = v4;
  [*(a1 + 32) setDataSourceManagerConfiguration:v4];
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (BOOL)collectionView:(id)a3 canReorderItemAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(PUAlbumListViewController *)self isEditing])
  {
    v6 = [(PUAlbumListViewController *)self collectionAtIndexPath:v5];
    if (v6)
    {
      v7 = [(PUAlbumListViewController *)self retitlingCollection];
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v9 = [(PUAlbumListViewController *)self dataSourceManager];
        v8 = [v9 canReorderCollection:v6];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  switch(a5)
  {
    case 1:
      v12 = [(PUAlbumListViewController *)self navigationController];
      [v12 px_pushViewController:v10 animated:1 completion:0];
      goto LABEL_7;
    case 2:
      v12 = [(PUAlbumListViewController *)self navigationController];
      [v12 presentViewController:v10 animated:1 completion:0];
LABEL_7:

      v11 = 1;
      goto LABEL_8;
    case 0:
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:3351 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (void)assetCollectionActionPerformer:(id)a3 playMovieForAssetCollection:(id)a4
{
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E69C36C0];
    v6 = v8;
    v7 = [v5 moviePresenterWithPresentingViewController:self];
    [v7 presentMovieViewControllerForAssetCollection:v6 keyAssetFetchResult:0 preferredTransitionType:1];
  }
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a5;
  v9 = [a4 identifier];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v9 px_descriptionForAssertionMessage];
      [v10 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:3301 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"configuration.identifier", v12, v13}];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __102__PUAlbumListViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v14[3] = &unk_1E7B80C38;
    v14[4] = self;
    v15 = v9;
    [v8 addCompletion:v14];
  }
}

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  v7 = [(PUAlbumListViewController *)self contextMenuInteractionEndBlock];

  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __100__PUAlbumListViewController_collectionView_willEndContextMenuInteractionWithConfiguration_animator___block_invoke;
    aBlock[3] = &unk_1E7B80DD0;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    if (v8)
    {
      v9 = v8;
      if (v6)
      {
        [v6 addCompletion:v8];
      }

      else
      {
        (*(v8 + 2))(v8);
      }
    }
  }
}

uint64_t __100__PUAlbumListViewController_collectionView_willEndContextMenuInteractionWithConfiguration_animator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contextMenuInteractionEndBlock];
  v2[2]();

  v3 = *(a1 + 32);

  return [v3 setContextMenuInteractionEndBlock:0];
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(PUAlbumListViewController *)self collectionAtIndexPath:v8];
  v10 = [(PUAlbumListViewController *)self sessionInfo];
  v11 = [v10 isForAssetPicker];

  v12 = [(PUAlbumListViewController *)self sessionInfo];
  v13 = [v12 isForAlbumPicker];

  v14 = [(PUAlbumListViewController *)self sessionInfo];
  v15 = [v14 isLimitedLibraryPicker];

  v16 = 0;
  if ((v11 & 1) == 0 && (v15 & 1) == 0 && (v13 & 1) == 0)
  {
    if (([(PUAlbumListViewController *)self isEditing]& 1) != 0)
    {
      v16 = 0;
    }

    else
    {
      v17 = MEMORY[0x1E69DC8D8];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __93__PUAlbumListViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke;
      v19[3] = &unk_1E7B750F0;
      v20 = v7;
      v21 = v8;
      v22 = self;
      v23 = v9;
      v16 = [v17 configurationWithIdentifier:v23 previewProvider:0 actionProvider:v19];
    }
  }

  return v16;
}

id __93__PUAlbumListViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke(uint64_t a1, void *a2)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) cellForItemAtIndexPath:*(a1 + 40)];
  objc_initWeak(&location, *(a1 + 48));
  if ([*(a1 + 56) canPerformEditOperation:7])
  {
    v5 = [MEMORY[0x1E69C3960] actionNameForCollection:*(a1 + 56)];
    v6 = MEMORY[0x1E69DC628];
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pencil"];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __93__PUAlbumListViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_2;
    v29[3] = &unk_1E7B7F4F0;
    objc_copyWeak(&v31, &location);
    v30 = v4;
    v8 = [v6 actionWithTitle:v5 image:v7 identifier:0 handler:v29];

    objc_destroyWeak(&v31);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 56);
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    v12 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v10 = v9;

  if (v10)
  {
    v9 = [objc_alloc(MEMORY[0x1E69C37A0]) initWithAssetCollection:v10 displayTitleInfo:0];
    [v9 setPerformerDelegate:*(a1 + 48)];
    [*(a1 + 48) setAssetCollectionActionManager:v9];
    if (v8)
    {
      v33 = *MEMORY[0x1E69C4870];
      v34[0] = v8;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    }

    else
    {
      v11 = MEMORY[0x1E695E0F8];
    }

    v12 = [MEMORY[0x1E69C4460] contextMenuWithActionManager:v9 overrideActions:v11];

    goto LABEL_13;
  }

  v12 = 0;
LABEL_14:
  v13 = *(a1 + 56);
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v14 = v13;

    if (!v14)
    {
      goto LABEL_25;
    }

    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    v13 = v15;
    if (v8)
    {
      [v15 addObject:v8];
    }

    if ([v14 canPerformEditOperation:6])
    {
      v21 = MEMORY[0x1E69DC628];
      v16 = PXLocalizedString();
      v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __93__PUAlbumListViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_4;
      v25 = &unk_1E7B7F518;
      objc_copyWeak(&v28, &location);
      v26 = *(a1 + 56);
      v27 = v4;
      v18 = [v21 actionWithTitle:v16 image:v17 identifier:0 handler:&v22];

      [v18 setAttributes:2];
      [v13 addObject:v18];

      objc_destroyWeak(&v28);
    }

    if ([v13 count])
    {
      v19 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v13];

      v12 = v19;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_25:
  objc_destroyWeak(&location);

  return v12;
}

void __93__PUAlbumListViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __93__PUAlbumListViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_3;
  v3[3] = &unk_1E7B80DD0;
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setContextMenuInteractionEndBlock:v3];
}

void __93__PUAlbumListViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleDeleteCollection:*(a1 + 32) sourceView:*(a1 + 40)];
}

void __93__PUAlbumListViewController_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) albumListCellContentView];
  [v1 startPerformRetitleAction];
}

- (void)configureSupplementaryView:(id)a3 ofKind:(id)a4 forIndexPath:(id)a5
{
  v38 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"PUGridGlobalFooter"])
  {
    [(PUAlbumListViewController *)self setSyncProgressView:v38];
    [(PUAlbumListViewController *)self updateSyncProgress];
  }

  else if ([v9 isEqualToString:@"PUAlbumListViewControllerElementKindSectionHeader"])
  {
    v11 = [(PUAlbumListViewController *)self _mainCollectionViewLayout];
    v12 = [v11 visualSectionForSupplementaryViewIndexPath:v10];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = [MEMORY[0x1E696AAA8] currentHandler];
      [v37 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:3209 description:{@"%@ can't configure header view at %@ as it is not bound to a visual section", self, v10}];
    }

    v13 = [(PUAlbumListViewController *)self dataSource];
    v14 = [v13 collectionListForSection:v12];

    v15 = [v14 localizedTitle];
    v16 = PULocalizedString(v15);

    v17 = v38;
    [v17 setSectionHeaderTitle:v16];
    v18 = [(PUAlbumListViewController *)self _fontManager];
    v19 = [v18 albumListSectionTitleLabelFont];
    [v17 setSectionHeaderTitleFont:v19];

    v20 = [(PUAlbumListViewController *)self spec];
    [(PUAlbumListViewController *)self _layoutReferenceSize];
    v22 = v21;
    v24 = v23;
    [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
    [v20 sectionInsetsForLayoutReferenceSize:v22 safeAreaInsets:{v24, v25, v26, v27, v28}];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    [v17 setSectionHeaderInsets:{v30, v32, v34, v36}];
  }
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(PUAlbumListViewController *)self isPlaceholderAtIndexPath:v5])
  {
    v6 = [(PUAlbumListViewController *)self placeholderKindAtIndexPath:v5];

    return [(PUAlbumListViewController *)self _isPlaceholderEnabled:v6];
  }

  else
  {
    v8 = [(PUAlbumListViewController *)self collectionAtIndexPath:v5];

    if ([(PUAlbumListViewController *)self shouldEnableCollection:v8])
    {
      v9 = [(PUAlbumListViewController *)self isEditing]^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    return v9;
  }
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v9 forIndexPath:v8];
  [(PUAlbumListViewController *)self configureSupplementaryView:v10 ofKind:v9 forIndexPath:v8];

  return v10;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PUAlbumListViewController *)self isPlaceholderAtIndexPath:v7])
  {
    v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"placeholderCell" forIndexPath:v7];
    v9 = [v8 albumListCellContentView];
    [v9 prepareForReuse];
    [(PUAlbumListViewController *)self updatePlaceholderListCellContentView:v9 forItemAtIndexPath:v7 animated:0];
  }

  else
  {
    v9 = [(PUAlbumListViewController *)self collectionAtIndexPath:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = @"albumCell";
    }

    else
    {
      v10 = @"folderCell";
    }

    v8 = [v6 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v7];
    v11 = [(PUAlbumListViewController *)self spec];
    [v11 cellBackgroundCornerRadius];
    [v8 setBackgroundCornerRadius:?];

    v12 = [v8 albumListCellContentView];
    [v12 setDelegate:self];
    [v12 prepareForReuse];
    [(PUAlbumListViewController *)self updateAlbumListCellContentView:v12 forItemAtIndexPath:v7 animated:0];
  }

  return v8;
}

- (BOOL)isEmpty
{
  v3 = [(PUAlbumListViewController *)self dataSource];
  if (v3 && (v4 = v3, -[PUAlbumListViewController dataSource](self, "dataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsAnyItems], v5, v4, (v6 & 1) != 0))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = [(PUAlbumListViewController *)self sessionInfo];
    v7 = [v8 isSelectingTargetAlbum] ^ 1;
  }

  return v7;
}

- (BOOL)px_scrollToInitialPositionAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUAlbumListViewController *)self navigationController];
  v6 = [v5 viewControllers];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = [(PUAlbumListViewController *)self mainScrollView];
    v9 = 1;
    [v8 px_scrollToEdge:1 animated:v3];
  }

  else
  {
    v10 = [(PUAlbumListViewController *)self collectionView];
    v11 = [v10 px_isScrolledAtEdge:1];

    v12 = [(PUAlbumListViewController *)self mainScrollView];
    [v12 px_scrollToEdge:1 animated:v3];

    return v11 ^ 1;
  }

  return v9;
}

- (void)_scrollToCollection:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if ([(PUAlbumListViewController *)self isViewInSyncWithModel])
  {
    v6 = [(PUAlbumListViewController *)self indexPathForCollection:v8];
    if (v6)
    {
      v7 = v6;
      [(PUAlbumListViewController *)self scrollToItemAtIndexPath:v6 centered:1 animated:v4];
    }
  }
}

- (void)_performOrScheduleScrollToCollection:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(PUAlbumListViewController *)self isViewLoaded])
  {
    [(PUAlbumListViewController *)self _scrollToCollection:v6 animated:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__PUAlbumListViewController__performOrScheduleScrollToCollection_animated___block_invoke;
    v7[3] = &unk_1E7B7CE88;
    objc_copyWeak(&v9, &location);
    v8 = v6;
    v10 = v4;
    [(PUAlbumListViewController *)self _setOnViewDidLayoutSubviewsBlock:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __75__PUAlbumListViewController__performOrScheduleScrollToCollection_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _scrollToCollection:*(a1 + 32) animated:*(a1 + 48)];
}

- (void)showPlacesCount:(int64_t)a3 atIndexPath:(id)a4
{
  v9 = [(PUAlbumListViewController *)self _preparedPlaceholderListCellContentViewAtIndexPath:a4];
  if (a3)
  {
    v5 = PLSharedCountFormatter();
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v7 = [v5 stringFromNumber:v6];
  }

  else
  {
    v7 = @" ";
    v8 = @" ";
  }

  [v9 setSubtitle:v7 animated:1];
}

- (void)showPlacesCount:(int64_t)a3
{
  v5 = [(PUAlbumListViewController *)self indexPathForPlacesAlbum];
  [(PUAlbumListViewController *)self showPlacesCount:a3 atIndexPath:v5];
}

- (void)showPlacesPlaceholderImageInStackView:(id)a3 andContentView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUAlbumListViewController *)self spec];
  v9 = [v6 window];
  v10 = [v8 emptyAlbumPlaceholderImageForWindow:v9];

  [(PUAlbumListViewController *)self _updateStackView:v7 forAssets:0 collection:0 withCustomEmptyPlaceholderImage:v10];
  [v6 setCustomImageView:0];
}

- (void)_navigateToPlacesFromCollection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 assetCollectionSubtype] == 1000000203)
  {
    v5 = [(PUAlbumListViewController *)self px_gridPresentation];
    v6 = [v5 createPlacesViewControllerForAssetCollection:v4];

    v7 = [v6 navigationItem];
    [v7 setLargeTitleDisplayMode:2];

    v8 = [(PUAlbumListViewController *)self navigationController];
    [v8 pu_pushViewController:v6 withTransition:0 animated:1 isInteractive:0];

    if ([MEMORY[0x1E69636A8] px_allowsDonationsForCurrentProcess])
    {
      v9 = MEMORY[0x1E69636A8];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __61__PUAlbumListViewController__navigateToPlacesFromCollection___block_invoke_2;
      v10[3] = &unk_1E7B750C8;
      v11 = v4;
      v12 = self;
      [v9 px_requestActivityWithActivityType:@"com.apple.mobileslideshow.album" titleProvider:&__block_literal_global_6983 completionBlock:v10];
    }
  }
}

void __61__PUAlbumListViewController__navigateToPlacesFromCollection___block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setEligibleForSearch:1];
  [v3 _setEligibleForPrediction:1];
  [v3 setEligibleForHandoff:0];
  v6 = @"uuid";
  v4 = [*(a1 + 32) uuid];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 addUserInfoEntriesFromDictionary:v5];

  [v3 px_setPersistentIdentifierFromAssetCollection:*(a1 + 32)];
  [*(a1 + 40) setSiriActionActivity:v3];
  [v3 becomeCurrent];
}

- (void)_navigateToMemories
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:2986 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (void)_navigateToPeopleAnimated:(BOOL)a3 withPersonLocalIdentifier:(id)a4 withCompletion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:2982 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (void)navigateToAllPhotosAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v9 = a4;
  v6 = [(PUAlbumListViewController *)self newGridViewControllerForAllPhotos];
  v7 = [(PUAlbumListViewController *)self navigationController];
  [v7 pu_pushViewController:v6 withTransition:0 animated:v4 isInteractive:0];

  if (v9)
  {
    v8 = [(PUAlbumListViewController *)self pushedController];
    v9[2](v9, v8);
  }
}

- (id)_viewControllerForCollection:(id)a3 userActivity:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 px_isFolder];
  if (v7)
  {
    v8 = [(PUAlbumListViewController *)self _createControllerForFolder:v6];
  }

  else
  {
    v9 = v6;
    if ([v9 isPlacesAlbum])
    {
      [(PUAlbumListViewController *)self _navigateToPlacesFromCollection:v9];
      v8 = 0;
    }

    else
    {
      v8 = [(PUAlbumListViewController *)self newGridViewControllerForAssetCollection:v9];
    }
  }

  [(PUAlbumListViewController *)self setPushedController:v8];
  [(PUAlbumListViewController *)self setPushedAlbum:v6];
  if (a4 && ((v7 | [MEMORY[0x1E69636A8] px_allowsDonationsForCurrentProcess] ^ 1) & 1) == 0)
  {
    v10 = v6;
    v11 = [v10 assetCollectionSubtype];
    if (v11 != 205 && v11 != 1000000201)
    {
      v12 = [v10 localizedTitle];
      if ([v12 length])
      {
        v13 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.mobileslideshow.album"];
        v14 = px_deferredLocalizedStringWithFormat();
        [v13 setTitle:{v14, v12}];

        [v13 setEligibleForSearch:1];
        [v13 _setEligibleForPrediction:1];
        [v13 setEligibleForHandoff:0];
        v19 = @"uuid";
        v15 = [v10 uuid];
        v20[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
        [v13 addUserInfoEntriesFromDictionary:v16];

        [v13 px_setPersistentIdentifierFromAssetCollection:v10];
        [(PUAlbumListViewController *)self setSiriActionActivity:v13];
        v17 = v13;
        *a4 = v13;
      }
    }
  }

  return v8;
}

- (void)navigateToCollection:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v13 = 0;
  v9 = [(PUAlbumListViewController *)self _viewControllerForCollection:a3 userActivity:&v13];
  v10 = v13;
  v11 = [(PUAlbumListViewController *)self navigationController];
  [v11 pu_pushViewController:v9 withTransition:0 animated:v5 isInteractive:0];

  if (v8)
  {
    v12 = [(PUAlbumListViewController *)self pushedController];
    v8[2](v8, v12);
  }

  [v10 becomeCurrent];
}

- (id)_createControllerForFolder:(id)a3
{
  v4 = a3;
  v5 = [(PUAlbumListViewController *)self newGridViewControllerForFolder:v4];
  v6 = [(PUAlbumListViewController *)self sessionInfo];
  [v5 setSessionInfo:v6];

  [v5 setCanShowAggregateItem:1];
  v7 = [objc_alloc(MEMORY[0x1E69C37F0]) initWithCollectionList:v4];

  [v5 setDataSourceManagerConfiguration:v7];
  v8 = [v5 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  return v5;
}

- (BOOL)canNavigateToCollection:(id)a3
{
  v3 = [(PUAlbumListViewController *)self indexPathForCollection:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)px_navigationDestination
{
  v2 = [(PUAlbumListViewController *)self _collectionForNavigation];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:v2 revealMode:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PUAlbumListViewController_navigateToDestination_options_completionHandler___block_invoke;
  v10[3] = &unk_1E7B750A0;
  v11 = v8;
  v9 = v8;
  [(PUAlbumListViewController *)self _navigateToDestination:a3 provideViewControllers:0 options:a4 completionHandler:v10];
}

- (void)_navigateToDestination:(id)a3 provideViewControllers:(BOOL)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v8 = a4;
  v52[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = [(PUAlbumListViewController *)self _collectionForNavigation];
  v14 = [v11 sidebarBackNavigationRootDestination];
  v15 = [v14 collection];
  v16 = [v15 isEqual:v13];

  if (v16)
  {
    v17 = [(PUAlbumListViewController *)self navigationItem];
    [v17 px_setHidesBackButtonInRegularWidth:1];
    v18 = [(PUAlbumListViewController *)self traitCollection];
    [v17 px_updateBackButtonVisibilityForTraitCollection:v18];
  }

  v19 = [v11 collection];
  v20 = [v19 isEqual:v13];

  if (v20)
  {
    v52[0] = self;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
    v12[2](v12, v21, 1, 0);
  }

  else
  {
    v21 = [v11 collectionHierarchy];
    v22 = [v21 px_objectAfterObject:v13];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(PUAlbumListViewController *)self indexPathForCollection:v22], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
    {
      v24 = [v11 type] == 8 && objc_msgSend(v11, "revealMode") == 2;
      if ([(PUAlbumListViewController *)self isEditing])
      {
        [(PUAlbumListViewController *)self setEditing:0];
      }

      [(PUAlbumListViewController *)self _performOrScheduleScrollToCollection:v22 animated:0];
      if (v24)
      {
        v46 = self;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
        v12[2](v12, v26, 1, 0);
      }

      else if (v8)
      {
        v43 = 0;
        v27 = [(PUAlbumListViewController *)self _viewControllerForCollection:v22 userActivity:&v43];
        v26 = v43;
        if (([v27 routingOptionsForDestination:v11] & 2) != 0)
        {
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __101__PUAlbumListViewController__navigateToDestination_provideViewControllers_options_completionHandler___block_invoke;
          v39[3] = &unk_1E7B75028;
          v39[4] = self;
          v42 = v12;
          v40 = v27;
          v41 = v26;
          [v40 provideViewControllersForDestination:v11 options:a5 completionHandler:v39];
        }

        else if (v27)
        {
          v45[0] = self;
          v45[1] = v27;
          v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
          v12[2](v12, v28, 1, 0);

          [v26 becomeCurrent];
        }

        else
        {
          v29 = PXAssertGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v49 = self;
            v50 = 2112;
            v51 = v11;
            _os_log_error_impl(&dword_1B36F3000, v29, OS_LOG_TYPE_ERROR, "Albums list %@ failed to navigate to destination %@", buf, 0x16u);
          }

          v30 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Albums list %@ failed to navigate to destination %@", self, v11}];
          v44 = self;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
          (v12)[2](v12, v31, 2, v30);
        }
      }

      else
      {
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __101__PUAlbumListViewController__navigateToDestination_provideViewControllers_options_completionHandler___block_invoke_409;
        v32[3] = &unk_1E7B75078;
        v33 = v11;
        v37 = a5;
        v38 = a2;
        v36 = v12;
        v34 = self;
        v35 = v22;
        [(PUAlbumListViewController *)self navigateToCollection:v35 animated:0 completion:v32];

        v26 = v33;
      }
    }

    else
    {
      v25 = PXAssertGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v49 = self;
        v50 = 2112;
        v51 = v11;
        _os_log_error_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_ERROR, "Albums list %@ failed to navigate to destination %@", buf, 0x16u);
      }

      v47 = self;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      v12[2](v12, v26, 2, 0);
    }
  }
}

void __101__PUAlbumListViewController__navigateToDestination_provideViewControllers_options_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 32);
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a2;
  v9 = [v6 arrayWithObjects:&v12 count:1];
  v10 = [v9 arrayByAddingObjectsFromArray:{v8, v12, v13}];

  (*(*(a1 + 56) + 16))();
  v11 = [v10 lastObject];
  LODWORD(v9) = [v11 isEqual:*(a1 + 40)];

  if (v9)
  {
    [*(a1 + 48) becomeCurrent];
  }
}

void __101__PUAlbumListViewController__navigateToDestination_provideViewControllers_options_completionHandler___block_invoke_409(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __101__PUAlbumListViewController__navigateToDestination_provideViewControllers_options_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7B75050;
    v5 = *(a1 + 64);
    v10 = *(a1 + 56);
    [a2 navigateToDestination:v4 options:v5 completionHandler:v9];
    v6 = v10;
  }

  else
  {
    v7 = PXAssertGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      *buf = 138412290;
      v12 = v8;
      _os_log_error_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Album List failed to create a view controller for collection %@", buf, 0xCu);
    }

    v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Album List failed to create a view controller for collection %@", *(a1 + 48)}];
    (*(*(a1 + 56) + 16))();
  }
}

- (unint64_t)routingOptionsForDestination:(id)a3
{
  v5 = a3;
  v6 = [(PUAlbumListViewController *)self _collectionForNavigation];
  v7 = [v5 collection];
  v8 = [v7 isEqual:v6];

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v10 = [v5 collectionHierarchy];
    v11 = [v10 px_objectAfterObject:v6];
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [v11 px_descriptionForAssertionMessage];
        [v14 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:2797 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[collectionHierarchy px_objectAfterObject:ownCollection]", v16, v17}];
      }

      v12 = [(PUAlbumListViewController *)self indexPathForCollection:v11];

      if (v12)
      {
        v9 = 3;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_collectionForNavigation
{
  v3 = [(PUAlbumListViewController *)self dataSourceManager];
  v4 = [v3 collectionList];

  if (!v4)
  {
    v4 = [(PUAlbumListViewController *)self collection];
  }

  return v4;
}

- (void)albumListCellContentView:(id)a3 didEndRetitlingFromTitle:(id)a4 toTitle:(id)a5
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PUAlbumListViewController *)self indexPathForAlbumListCellContentView:v8];
  v12 = [(PUAlbumListViewController *)self collectionAtIndexPath:v11];
  if ([v10 length])
  {
    if (([v10 isEqualToString:v9] & 1) == 0)
    {
      if (v12)
      {
        v13 = [(PUAlbumListViewController *)self dataSourceManager];
        v14 = [v13 canRenameCollection:v12];

        if (v14)
        {
          v22 = [objc_alloc(MEMORY[0x1E69C3960]) initWithCollection:v12 title:v10];
          v15 = [(PUAlbumListViewController *)self undoManager];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __87__PUAlbumListViewController_albumListCellContentView_didEndRetitlingFromTitle_toTitle___block_invoke;
          v23[3] = &unk_1E7B7FB70;
          v24 = v8;
          v25 = v10;
          [v22 executeWithUndoManager:v15 completionHandler:v23];

          v16 = MEMORY[0x1E6991F28];
          v28 = *MEMORY[0x1E6991E08];
          v17 = v28;
          v29[0] = v12;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
          [v16 sendEvent:@"com.apple.photos.CPAnalytics.albumRenamed" withPayload:v18];

          v19 = MEMORY[0x1E6991F28];
          v26 = v17;
          v27 = v12;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          [v19 sendEvent:@"com.apple.photos.CPAnalytics.albumRenamedFromEditableTitle" withPayload:v20];
        }
      }
    }
  }

  v21 = [(PUAlbumListViewController *)self retitlingCollection];

  if (v12 == v21)
  {
    [(PUAlbumListViewController *)self setKeyboardAware:0];
    [(PUAlbumListViewController *)self setRetitlingCollection:0];
  }
}

- (BOOL)albumListCellContentViewShouldBeginRetitling:(id)a3
{
  v4 = [(PUAlbumListViewController *)self indexPathForAlbumListCellContentView:a3];
  v5 = [(PUAlbumListViewController *)self shouldBeginRetitlingAlbumAtIndexPath:v4];
  if (v5)
  {
    v6 = [(PUAlbumListViewController *)self collectionAtIndexPath:v4];
    [(PUAlbumListViewController *)self setRetitlingCollection:v6];
    [(PUAlbumListViewController *)self setKeyboardAware:1];
  }

  return v5;
}

- (void)albumListCellContentView:(id)a3 performDeleteAction:(id)a4
{
  v5 = [(PUAlbumListViewController *)self indexPathForAlbumListCellContentView:a3, a4];
  [(PUAlbumListViewController *)self _handleDeleteAlbumAtIndexPath:v5];
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(PUAlbumListViewController *)self collection];
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"updatedCollection"];
      if (!v8)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      v9 = [v10 changeDetailsForObject:v7];
      v8 = [v9 objectAfterChanges];

      if (!v8)
      {
        goto LABEL_5;
      }
    }

    [(PUAlbumListViewController *)self setCollection:v8];
    goto LABEL_5;
  }

LABEL_6:
}

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  v7 = [(PUAlbumListViewController *)self collection];
  v8 = [v5 changeDetailsForObject:v7];

  v9 = [v8 objectAfterChanges];
  [v6 setObject:v9 forKeyedSubscript:@"updatedCollection"];

  return v6;
}

- (void)_updateAlbumSubtitleFormat
{
  v5 = [MEMORY[0x1E69BE670] systemPhotoLibrary];
  v3 = [v5 syncedAlbumSubtitleStringFormat];
  albumSubtitleFormat = self->_albumSubtitleFormat;
  self->_albumSubtitleFormat = v3;
}

- (void)updateSyncProgress
{
  v12 = 1;
  v3 = [(PUAlbumListViewController *)self photoLibrary];
  v4 = [v3 hasSyncProgressReturningImportOperations:&v12];

  v11 = 0;
  v10 = 0;
  if (v4 && [(PUAlbumListViewController *)self canShowSyncProgress])
  {
    v5 = [MEMORY[0x1E69BE670] systemPhotoLibrary];
    [v5 getPhotoCount:&v11 videoCount:&v10];

    [(PUAlbumListViewController *)self setSyncProgressVisible:1];
    v6 = [(PUAlbumListViewController *)self syncProgressView];
    v7 = [v6 viewModel];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__PUAlbumListViewController_updateSyncProgress__block_invoke;
    v8[3] = &__block_descriptor_52_e36_v16__0___PXMutableFooterViewModel__8l;
    v8[4] = v11;
    v8[5] = v10;
    v9 = v12;
    [v7 performChanges:v8];
  }

  else
  {
    [(PUAlbumListViewController *)self setSyncProgressVisible:0];
  }
}

void __47__PUAlbumListViewController_updateSyncProgress__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PLLocalizedCountDescription();
  [v2 setTitle:v3];

  v4 = PLProgressDescription();
  [v2 setSubtitle1:v4];
}

- (void)sessionInfoPhotoSelectionDidChange:(id)a3
{
  [(PUAlbumListViewController *)self updateNavigationBarAnimated:0];

  [(PUAlbumListViewController *)self _updateNavigationBannerAnimated:0];
}

- (void)_keyboardWillChangeFrame:(id)a3
{
  v7 = a3;
  v4 = [(PUAlbumListViewController *)self retitlingCollection];
  if (v4)
  {
    v5 = [(PUAlbumListViewController *)self mainScrollView];
    v6 = [v7 userInfo];
    [(PUAlbumListViewController *)self px_safeAreaInsets];
    [v5 px_adjustInsetsForKeyboardInfo:v6 safeAreaInsets:?];
  }
}

- (void)setKeyboardAware:(BOOL)a3
{
  if (self->__isKeyboardAware != a3)
  {
    self->__isKeyboardAware = a3;
    v5 = [(PUAlbumListViewController *)self _isKeyboardAware];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = v6;
    if (v5)
    {
      [v6 addObserver:self selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];
    }

    else
    {
      [v6 removeObserver:self name:*MEMORY[0x1E69DE068] object:0];
    }
  }
}

- (void)_handlePendingScrollingAnimationEndBlock
{
  v3 = [(PUAlbumListViewController *)self _pendingScrollingAnimationEndBlock];
  if (v3)
  {
    v4 = v3;
    [(PUAlbumListViewController *)self _setPendingScrollingAnimationEndBlock:0];
    v4[2](v4);
    v3 = v4;
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = PUAlbumListViewController;
  v6 = a4;
  [(PUAlbumListViewController *)&v8 willTransitionToTraitCollection:a3 withTransitionCoordinator:v6];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__PUAlbumListViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v7[3] = &unk_1E7B7DC38;
  v7[4] = self;
  [v6 animateAlongsideTransition:0 completion:v7];
}

- (BOOL)pu_wantsToolbarVisible
{
  v3 = [(PUAlbumListViewController *)self sessionInfo];
  v4 = [v3 isForAssetPicker];

  if (v4)
  {
    v5 = [(PUAlbumListViewController *)self navigationController];
    v6 = [v5 isToolbarHidden] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!a3)
  {
    v7 = [(PUAlbumListViewController *)self view];
    [v7 endEditing:1];
  }

  v8 = [(PUAlbumListViewController *)self isEditing];
  v27.receiver = self;
  v27.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v27 setEditing:v5 animated:v4];
  if (v8 != v5)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __49__PUAlbumListViewController_setEditing_animated___block_invoke;
    v25[3] = &unk_1E7B74FB8;
    v25[4] = self;
    v26 = v4;
    [(PUAlbumListViewController *)self _enumerateIndexPathsForPreparedItemsUsingBlock:v25];
    [(PUAlbumListViewController *)self _updatePeripheralInterfaceAnimated:v4];
    if (v5)
    {
      v9 = [(PUAlbumListViewController *)self indexPathForFirstEditableAlbum];
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 1;
      v10 = [(PUAlbumListViewController *)self indexPathsForVisibleItems];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __49__PUAlbumListViewController_setEditing_animated___block_invoke_2;
      v18 = &unk_1E7B74FE0;
      v11 = v9;
      v19 = v11;
      v20 = &v21;
      [v10 enumerateObjectsUsingBlock:&v15];

      if (*(v22 + 24) == 1)
      {
        v12 = [(PUAlbumListViewController *)self indexPathForFirstEditableAlbum:v15];
        [(PUAlbumListViewController *)self scrollToItemAtIndexPath:v12 centered:1 animated:v4];
      }

      _Block_object_dispose(&v21, 8);
    }

    v13 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:{self, v15, v16, v17, v18}];
    [v13 setNeedsFocusUpdate];
  }

  v14 = [(PUAlbumListViewController *)self _mainTableView];
  [v14 setEditing:-[PUAlbumListViewController isEditing](self animated:{"isEditing"), v4}];
}

uint64_t __49__PUAlbumListViewController_setEditing_animated___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) compare:a2];
  if (result == -1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(PUAlbumListViewController *)self retitlingCollection];
  if (v5)
  {
    [(PUAlbumListViewController *)self navigateToRevealAssetCollection:v5 initiallyHidden:0 animated:1];
  }
}

- (id)backgroundColorForTableView
{
  v2 = +[PUInterfaceManager currentTheme];
  v3 = [v2 photoCollectionViewBackgroundColor];

  return v3;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v9 viewDidDisappear:a3];
  [(PUAlbumListViewController *)self _resetPreheating];
  v4 = [(PUAlbumListViewController *)self dataSourceManager];
  [v4 pauseBackgroundFetching];

  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    *buf = 138412290;
    v11 = v6;
    v7 = v6;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "*** %@ ending suppresion contexts", buf, 0xCu);
  }

  v8 = [*MEMORY[0x1E69DDA98] notificationSuppressionContextManager];
  [v8 setNotificationSuppressionContexts:0];
}

- (void)_postDidAppearActions
{
  if ([(PUAlbumListViewController *)self px_isVisible]&& [(PUAlbumListViewController *)self canShowSyncProgress])
  {
    [(PUAlbumListViewController *)self updateSyncProgress];
  }

  [MEMORY[0x1E69C3BE0] preloadResourcesForStyle:2];
  if (!self->_didInitialRequestForPlacesCount)
  {
    self->_didInitialRequestForPlacesCount = 1;
    objc_initWeak(&location, self);
    v3 = [(PUAlbumListViewController *)self _placesAlbumCoverProvider];
    objc_initWeak(&from, v3);

    v4 = dispatch_time(0, 1000000000);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__PUAlbumListViewController__postDidAppearActions__block_invoke;
    v5[3] = &unk_1E7B76F10;
    objc_copyWeak(&v6, &from);
    objc_copyWeak(&v7, &location);
    dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __50__PUAlbumListViewController__postDidAppearActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__PUAlbumListViewController__postDidAppearActions__block_invoke_2;
  v3[3] = &unk_1E7B80660;
  objc_copyWeak(&v4, (a1 + 40));
  [WeakRetained requestAssetCountWithForcedRefresh:1 completion:v3];

  objc_destroyWeak(&v4);
}

void __50__PUAlbumListViewController__postDidAppearActions__block_invoke_2(uint64_t a1, void *a2)
{
  objc_copyWeak(v3, (a1 + 32));
  v3[1] = a2;
  px_dispatch_on_main_queue();
  objc_destroyWeak(v3);
}

void __50__PUAlbumListViewController__postDidAppearActions__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showPlacesCount:*(a1 + 40)];
}

- (void)viewDidAppear:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v11 viewDidAppear:a3];
  v4 = [(PUAlbumListViewController *)self _suppressionContexts];
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    v7 = v6;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "*** %@ Suppressing SB alerts for %@", buf, 0x16u);
  }

  v8 = [*MEMORY[0x1E69DDA98] notificationSuppressionContextManager];
  [v8 setNotificationSuppressionContexts:v4];

  if ([(PUAlbumListViewController *)self isRootSharedAlbumList])
  {
    [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.photoStreamList" withPayload:MEMORY[0x1E695E0F8]];
  }

  v9 = [(PUAlbumListViewController *)self dataSourceManager];
  [v9 startBackgroundFetchingIfNeeded];

  objc_initWeak(buf, self);
  objc_copyWeak(&v10, buf);
  px_dispatch_on_main_queue_when_idle_after_delay();
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __43__PUAlbumListViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _postDidAppearActions];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v21.receiver = self;
  v21.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v21 viewWillAppear:?];
  [(PUAlbumListViewController *)self _resetPreheating];
  v5 = [(PUAlbumListViewController *)self pushedAlbum];
  [(PUAlbumListViewController *)self setPushedAlbum:0];
  [(PUAlbumListViewController *)self setPushedController:0];
  if (![(PUAlbumListViewController *)self isViewInSyncWithModel])
  {
    [(PUAlbumListViewController *)self _updateAlbumSubtitleFormat];
    [(PUAlbumListViewController *)self _updateInterfaceForModelReloadAnimated:0];
  }

  if (v5)
  {
    v6 = [(PUAlbumListViewController *)self indexPathForCollection:v5];
    if (v6)
    {
      v7 = [(PUAlbumListViewController *)self presentingViewController];
      v8 = [v7 transitionCoordinator];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __44__PUAlbumListViewController_viewWillAppear___block_invoke;
      v18 = &unk_1E7B7AC08;
      v19 = self;
      v6 = v6;
      v20 = v6;
      [v8 animateAlongsideTransition:&v15 completion:0];
    }

    goto LABEL_9;
  }

  v6 = [(PUAlbumListViewController *)self sessionInfo];
  v9 = [v6 sourceAlbum];
  if (!v9)
  {
LABEL_9:

    goto LABEL_10;
  }

  v10 = v9;
  v11 = [(PUAlbumListViewController *)self sessionInfo];
  v12 = [v11 scrollToSourceAlbumWhenPresented];

  if (v12)
  {
    v6 = [(PUAlbumListViewController *)self sessionInfo];
    v13 = [v6 sourceAlbum];
    [(PUAlbumListViewController *)self _performOrScheduleScrollToCollection:v13 animated:0];

    goto LABEL_9;
  }

LABEL_10:
  [(PUAlbumListViewController *)self deselectSelectedItemAnimated:v3, v15, v16, v17, v18, v19];
  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:v3];
  v14 = [(PUAlbumListViewController *)self dataSourceManager];
  [v14 prepareBackgroundFetchingIfNeeded];
}

uint64_t __44__PUAlbumListViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  [*(a1 + 32) scrollToItemAtIndexPath:*(a1 + 40) centered:0 animated:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 selectItemAtIndexPath:v3 animated:0];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v7 viewDidLayoutSubviews];
  v3 = [(PUAlbumListViewController *)self mainScrollView];
  [v3 setNeedsLayout];

  v4 = [(PUAlbumListViewController *)self mainScrollView];
  [v4 layoutIfNeeded];

  v5 = [(PUAlbumListViewController *)self _onViewDidLayoutSubviewsBlock];

  if (v5)
  {
    v6 = [(PUAlbumListViewController *)self _onViewDidLayoutSubviewsBlock];
    v6[2]();

    [(PUAlbumListViewController *)self _setOnViewDidLayoutSubviewsBlock:0];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v3 viewWillLayoutSubviews];
  [(PUAlbumListViewController *)self updateInterfaceLayoutIfNecessary];
  [(PUAlbumListViewController *)self _updateIfNeeded];
}

- (void)_updateMainView
{
  v3 = [(PUAlbumListViewController *)self spec];
  v4 = [v3 shouldUseTableView];

  v57 = [(PUAlbumListViewController *)self view];
  [v57 bounds];
  v55 = v6;
  v56 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PUAlbumListViewController *)self _mainTableView];
  v12 = v11;
  if (v4)
  {
    if (!v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:-[PUAlbumListViewController tableViewStyle](self style:{"tableViewStyle"), v56, v55, v8, v10}];
      v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v8, 1.17549435e-38}];
      [v12 setTableHeaderView:v13];

      [v12 setAutoresizingMask:18];
      [v12 setAlwaysBounceVertical:1];
      [v12 setDataSource:self];
      [v12 setDelegate:self];
      v14 = [(PUAlbumListViewController *)self backgroundColorForTableView];
      if (v14)
      {
        [v12 setBackgroundColor:v14];
      }

      [v12 setAllowsSelection:1];
      [v12 setAllowsSelectionDuringEditing:0];
      [v12 setAllowsMultipleSelection:0];
      [v12 setSeparatorStyle:0];
      [v12 setCellLayoutMarginsFollowReadableWidth:0];
      [v57 addSubview:v12];
      [(PUAlbumListViewController *)self _setMainTableView:v12];
      [(PUAlbumListViewController *)self setViewInSyncWithModel:0];
    }

    v15 = [(PUAlbumListViewController *)self spec];
    v16 = [(PUAlbumListViewController *)self view];
    [v16 bounds];
    [v15 cellSizeForBounds:?];
    [v12 setEstimatedRowHeight:v17];

    [v12 setSectionHeaderHeight:0.0];
    v18 = [(PUAlbumListViewController *)self spec];
    [v18 sectionFooterHeight];
    v20 = v19;

    [v12 setSectionFooterHeight:v20];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    [v11 setDataSource:0];
    [v12 setDelegate:0];
    [v12 removeFromSuperview];
    [(PUAlbumListViewController *)self _setMainTableView:0];
  }

LABEL_10:
  v21 = [(PUAlbumListViewController *)self view];
  [v21 frame];
  v23 = v22;
  v25 = v24;

  v26 = [(PUAlbumListViewController *)self view];
  [v26 safeAreaInsets];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [(PUAlbumListViewController *)self _setLayoutReferenceSize:v23, v25];
  [(PUAlbumListViewController *)self _setLayoutSafeAreaInsets:v28, v30, v32, v34];
  v35 = [(PUAlbumListViewController *)self _mainCollectionViewLayout];
  v36 = [(PUAlbumListViewController *)self _mainCollectionView];
  if (v4)
  {
    if (v35)
    {
      [(PUSectionedGridLayout *)v35 setDelegate:0];
      [(PUAlbumListViewController *)self _setMainCollectionViewLayout:0];
    }

    if (v36)
    {
      [(PUCollectionView *)v36 setDataSource:0];
      [(PUCollectionView *)v36 setDelegate:0];
      [(PUCollectionView *)v36 setDragDestinationDelegate:0];
      [(PUCollectionView *)v36 setReorderDelegate:0];
      [(PUCollectionView *)v36 removeFromSuperview];
      [(PUAlbumListViewController *)self _setMainCollectionView:0];
    }
  }

  else
  {
    if (!v35)
    {
      v35 = objc_alloc_init(PUSectionedGridLayout);
      [(PUSectionedGridLayout *)v35 setDelegate:self];
      [(PUAlbumListViewController *)self _setMainCollectionViewLayout:v35];
    }

    [(PUAlbumListViewController *)self _updateLayoutMetrics];
    v37 = [(PUAlbumListViewController *)self spec];
    [(PUAlbumListViewController *)self _layoutReferenceSize];
    v39 = v38;
    v41 = v40;
    [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
    [v37 sectionInsetsForLayoutReferenceSize:v39 safeAreaInsets:{v41, v42, v43, v44, v45}];
    v47 = v46;
    v49 = v48;

    v50 = [(PUAlbumListViewController *)self navigationItem];
    [v50 setLargeTitleInsets:{0.0, v47, 0.0, v49}];

    if (-[PUAlbumListViewController isRootFolder](self, "isRootFolder") && (-[PUAlbumListViewController spec](self, "spec"), v51 = objc_claimAutoreleasedReturnValue(), v52 = [v51 shouldShowSectionHeaders], v51, v52))
    {
      [(PUSectionedGridLayout *)v35 setSectionHeadersEnabled:1];
      [(PUSectionedGridLayout *)v35 setSectionHeaderElementKind:@"PUAlbumListViewControllerElementKindSectionHeader"];
      if (v36)
      {
        goto LABEL_23;
      }
    }

    else
    {
      [(PUSectionedGridLayout *)v35 setSectionHeadersEnabled:0];
      if (v36)
      {
        goto LABEL_23;
      }
    }

    v36 = [[PUCollectionView alloc] initWithFrame:v35 collectionViewLayout:v56, v55, v8, v10];
    [(PUCollectionView *)v36 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"albumCell"];
    [(PUCollectionView *)v36 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"folderCell"];
    [(PUCollectionView *)v36 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"placeholderCell"];
    [(PUCollectionView *)v36 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUGridGlobalHeader" withReuseIdentifier:@"PUGridGlobalHeader"];
    [(PUCollectionView *)v36 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUGridGlobalFooter" withReuseIdentifier:@"PUGridGlobalFooter"];
    [(PUCollectionView *)v36 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUAlbumListViewControllerElementKindSectionHeader" withReuseIdentifier:@"PUAlbumListViewControllerElementKindSectionHeader"];
    [(PUCollectionView *)v36 setAutoresizingMask:18];
    [(PUCollectionView *)v36 setAlwaysBounceVertical:1];
    [(PUCollectionView *)v36 setPrefetchingEnabled:1];
    [(PUCollectionView *)v36 setDataSource:self];
    [(PUCollectionView *)v36 setDelegate:self];
    [(PUCollectionView *)v36 setReorderDelegate:self];
    [(PUAlbumListViewController *)self setupDropDelegateForCollectionView:v36];
    [(PUCollectionView *)v36 setSpringLoaded:1];
    v53 = +[PUInterfaceManager currentTheme];
    v54 = [v53 photoCollectionViewBackgroundColor];

    [(PUCollectionView *)v36 setBackgroundColor:v54];
    [v57 addSubview:v36];
    [(PUAlbumListViewController *)self _setMainCollectionView:v36];
    [(PUAlbumListViewController *)self setViewInSyncWithModel:0];
  }

LABEL_23:
}

- (void)_updateLayoutMetrics
{
  v12 = [(PUAlbumListViewController *)self spec];
  v3 = [(PUAlbumListViewController *)self gridLayout];
  [(PUAlbumListViewController *)self _layoutReferenceSize];
  v5 = v4;
  v7 = v6;
  [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
  [v12 configureGridLayout:v3 forLayoutReferenceSize:v5 safeAreaInsets:{v7, v8, v9, v10, v11}];
}

- (void)_setLayoutSafeAreaInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->__layoutSafeAreaInsets.top, v3), vceqq_f64(*&self->__layoutSafeAreaInsets.bottom, v4)))) & 1) == 0)
  {
    self->__layoutSafeAreaInsets = a3;
    [(PUAlbumListViewController *)self _invalidatePreparedCellsConfiguration];
  }
}

- (void)_setLayoutReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PUAlbumListViewController *)self _layoutReferenceSize];
  if (v7 != width || v6 != height)
  {
    v9 = self->__layoutReferenceSize.width;
    v10 = self->__layoutReferenceSize.height;
    self->__layoutReferenceSize.width = width;
    self->__layoutReferenceSize.height = height;
    if (*MEMORY[0x1E695F060] != v9 || *(MEMORY[0x1E695F060] + 8) != v10)
    {

      [(PUAlbumListViewController *)self _invalidatePreparedCellsConfiguration];
    }
  }
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v9 viewDidLoad];
  [(PUAlbumListViewController *)self updateSpec];
  v3 = [(PUAlbumListViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  [(PUAlbumListViewController *)self _updateAddNewAlbumPlaceholderAnimated:0];
  [(PUAlbumListViewController *)self _updateMainView];
  v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0x100000 action:sel__handleOpenKeyCommand_];
  [(PUAlbumListViewController *)self addKeyCommand:v5];

  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0x80000 action:sel__handleRenameKeyCommand_];
  [(PUAlbumListViewController *)self addKeyCommand:v6];

  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\b" modifierFlags:0 action:sel__handleDeleteKeyCommand_];
  [(PUAlbumListViewController *)self addKeyCommand:v7];

  v8 = [(PUAlbumListViewController *)self sharedLibraryStatusProvider];
  [v8 registerChangeObserver:self context:PXSharedLibraryStatusProviderObservationContext];
}

- (id)_suppressionContexts
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69BFFE0]];
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEBUG, "*** Supressing SB alerts for %@", &v5, 0xCu);
  }

  return v2;
}

- (void)_updatePreheatedAssets
{
  v3 = [(PUAlbumListViewController *)self mainScrollView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v62.origin.x = v5;
  v62.origin.y = v7;
  v62.size.width = v9;
  v62.size.height = v11;
  if (!CGRectIsEmpty(v62))
  {
    [(PUAlbumListViewController *)self _previousPreheatRect];
    v45 = v12;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v63.origin.x = v5;
    v63.origin.y = v7;
    v63.size.width = v9;
    v63.size.height = v11;
    v64 = CGRectInset(v63, 0.0, v11 * -0.5);
    x = v64.origin.x;
    y = v64.origin.y;
    v21 = v64.origin.y - v14;
    v22 = -(v64.origin.y - v14);
    if (v21 < 0.0)
    {
      v21 = v22;
    }

    if (v21 > v11 / 3.0)
    {
      width = v64.size.width;
      height = v64.size.height;
      if ([(PUAlbumListViewController *)self px_isVisible])
      {
        [(PUAlbumListViewController *)self _setPreviousPreheatRect:x, y, width, height];
        v25 = [(PUAlbumListViewController *)self _preheatedCollections];
        if (!v25)
        {
          v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [(PUAlbumListViewController *)self _setPreheatedCollections:v25];
        }

        v56 = 0;
        v57 = &v56;
        v58 = 0x3032000000;
        v59 = __Block_byref_object_copy__7019;
        v60 = __Block_byref_object_dispose__7020;
        v61 = 0;
        v50 = 0;
        v51 = &v50;
        v52 = 0x3032000000;
        v53 = __Block_byref_object_copy__7019;
        v54 = __Block_byref_object_dispose__7020;
        v55 = 0;
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __51__PUAlbumListViewController__updatePreheatedAssets__block_invoke;
        v46[3] = &unk_1E7B74F90;
        v46[4] = self;
        v26 = v25;
        v47 = v26;
        v48 = &v56;
        v49 = &v50;
        PUDiffVerticalRects(v46, v45, v14, v16, v18, x, y, width, height);
        if ([v57[5] count] || objc_msgSend(v51[5], "count"))
        {
          v27 = [(PUAlbumListViewController *)self _imageRequestOptions];
          v28 = [(PUAlbumListViewController *)self spec];
          v29 = [v28 imageContentMode];

          v30 = [(PUAlbumListViewController *)self spec];
          [(PUAlbumListViewController *)self _layoutReferenceSize];
          v32 = v31;
          v34 = v33;
          [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
          [v30 imageSizeForLayoutReferenceSize:v32 safeAreaInsets:{v34, v35, v36, v37, v38}];
          v40 = v39;
          v42 = v41;

          v43 = [(PUAlbumListViewController *)self _cachingImageManager];
          [v43 startCachingImagesForAssets:v57[5] targetSize:v29 contentMode:v27 options:{v40, v42}];

          v44 = [(PUAlbumListViewController *)self _cachingImageManager];
          [v44 stopCachingImagesForAssets:v51[5] targetSize:v29 contentMode:v27 options:{v40, v42}];
        }

        _Block_object_dispose(&v50, 8);
        _Block_object_dispose(&v56, 8);
      }
    }
  }
}

void __51__PUAlbumListViewController__updatePreheatedAssets__block_invoke(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) indexPathsForItemsInRect:?];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(a1 + 32) collectionAtIndexPath:*(*(&v25 + 1) + 8 * v8)];
        v10 = v9;
        if (v9 && ([v9 px_isFolder] & 1) == 0)
        {
          v11 = [*(a1 + 40) containsObject:v10];
          if (a2)
          {
            if (v11)
            {
              goto LABEL_20;
            }

            v12 = [*(a1 + 32) _visibleAssetsForCollection:v10];
            v13 = *(*(a1 + 48) + 8);
            v14 = *(v13 + 40);
            if (v14)
            {
              v15 = v14;
              v16 = *(v13 + 40);
              *(v13 + 40) = v15;
            }

            else
            {
              v21 = [MEMORY[0x1E695DF70] array];
              v22 = *(*(a1 + 48) + 8);
              v16 = *(v22 + 40);
              *(v22 + 40) = v21;
            }

            [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v12];
            [*(a1 + 40) addObject:v10];
          }

          else
          {
            if (!v11)
            {
              goto LABEL_20;
            }

            v12 = [*(a1 + 32) _visibleAssetsForCollection:v10];
            v17 = *(*(a1 + 56) + 8);
            v18 = *(v17 + 40);
            if (v18)
            {
              v19 = v18;
              v20 = *(v17 + 40);
              *(v17 + 40) = v19;
            }

            else
            {
              v23 = [MEMORY[0x1E695DF70] array];
              v24 = *(*(a1 + 56) + 8);
              v20 = *(v24 + 40);
              *(v24 + 40) = v23;
            }

            [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v12];
            [*(a1 + 40) removeObject:v10];
          }
        }

LABEL_20:

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }
}

- (void)_resetPreheating
{
  [(PHCachingImageManager *)self->__cachingImageManager stopCachingImagesForAllAssets];
  [(PUAlbumListViewController *)self _setPreviousPreheatRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  [(PUAlbumListViewController *)self _setPreheatedCollections:0];
}

- (id)_visibleAssetsForCollection:(id)a3 maximumNumberOfVisibleAssets:(int64_t)a4 correspondingCollections:(id *)a5
{
  v8 = a3;
  if ([v8 px_isMacSyncedFacesFolder])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(PUAlbumListViewController *)self _getDisplayableFacesForCollectionList:v8 maximumCount:a4];
LABEL_4:
      v10 = v9;
      goto LABEL_11;
    }
  }

  else if (([v8 px_isPeopleVirtualCollection] & 1) == 0 && (objc_msgSend(v8, "px_isPlacesSmartAlbum") & 1) == 0 && (objc_msgSend(v8, "px_isHiddenSmartAlbum") & 1) == 0 && (objc_msgSend(v8, "px_isRecentlyDeletedSmartAlbum") & 1) == 0 && (objc_msgSend(v8, "px_isRecoveredSmartAlbum") & 1) == 0)
  {
    if ([v8 px_isFolder])
    {
      v9 = [(PUAlbumListViewController *)self _getDisplayableAssetsForFolder:v8 maximumCount:a4 useCache:1 correspondingCollections:a5];
    }

    else
    {
      v12 = 0;
      [(PUAlbumListViewController *)self _getDisplayableAssets:&v12 indexes:0 forCollection:v8 maximumCount:a4 useCache:1];
      v9 = v12;
    }

    goto LABEL_4;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_visibleAssetsForCollection:(id)a3 correspondingCollections:(id *)a4
{
  v6 = a3;
  v7 = [(PUAlbumListViewController *)self _visibleAssetsForCollection:v6 maximumNumberOfVisibleAssets:[PUStackView correspondingCollections:"maximumNumberOfVisibleImagesForStyle:" maximumNumberOfVisibleImagesForStyle:?], a4];

  return v7;
}

- (unint64_t)_stackViewStyleForCollection:(id)a3
{
  v4 = a3;
  if ([v4 px_isSharedAlbum])
  {
    v5 = [(PUAlbumListViewController *)self spec];
    v6 = v5;
LABEL_5:
    v8 = [v5 stackViewStyle];
    goto LABEL_6;
  }

  v7 = [v4 px_isFolder];
  v5 = [(PUAlbumListViewController *)self spec];
  v6 = v5;
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v5 folderStackViewStyle];
LABEL_6:
  v9 = v8;

  return v9;
}

- (void)_getDisplayableAssets:(id *)a3 indexes:(id *)a4 forCollection:(id)a5 maximumCount:(int64_t)a6 useCache:(BOOL)a7
{
  v7 = a7;
  v12 = a5;
  v13 = [(PUAlbumListViewController *)self dataSourceManager];
  [v13 getDisplayableAssets:a3 indexes:a4 forCollection:v12 maximumCount:a6 useCache:v7];
}

- (id)_getDisplayableFacesForCollectionList:(id)a3 maximumCount:(int64_t)a4
{
  v6 = a3;
  v7 = [(PUAlbumListViewController *)self dataSourceManager];
  v8 = [v7 assetsFetchResultForCollection:v6];

  if ([v8 count] <= a4)
  {
    a4 = [v8 count];
  }

  if (a4)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = 0;
    do
    {
      v11 = [v8 objectAtIndex:v10];
      v12 = [MEMORY[0x1E6978650] posterImageForAssetCollection:v11];
      if (v12)
      {
        [v9 addObject:v12];
      }

      ++v10;
    }

    while (a4 != v10);
  }

  else
  {
    v9 = [MEMORY[0x1E695DEC8] array];
  }

  return v9;
}

- (id)_getDisplayableAssetsForFolder:(id)a3 maximumCount:(int64_t)a4 useCache:(BOOL)a5 correspondingCollections:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = [(PUAlbumListViewController *)self dataSourceManager];
  v12 = [v11 displayableAssetsForCollectionList:v10 maximumCount:a4 useCache:v7 correspondingCollections:a6];

  return v12;
}

- (void)navigateToPeopleAnimated:(BOOL)a3 withPersonLocalIdentifier:(id)a4 withCompletion:(id)a5
{
  v6 = a3;
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__PUAlbumListViewController_navigateToPeopleAnimated_withPersonLocalIdentifier_withCompletion___block_invoke;
  v10[3] = &unk_1E7B74F68;
  v11 = v8;
  v9 = v8;
  [(PUAlbumListViewController *)self _navigateToPeopleAnimated:v6 withPersonLocalIdentifier:a4 withCompletion:v10];
}

uint64_t __95__PUAlbumListViewController_navigateToPeopleAnimated_withPersonLocalIdentifier_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)newGridViewControllerForAssetCollection:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 assetCollectionType];
  v6 = [v4 assetCollectionSubtype];
  if (v5 == 2 && v6 == 201)
  {
    v7 = [(PUAlbumListViewController *)self px_gridPresentation];
    v8 = [v7 createPanoramaViewController];
  }

  else
  {
    v9 = [(PUAlbumListViewController *)self dataSourceManager];
    v7 = [v9 assetsFetchResultForCollection:v4];

    v10 = [(PUAlbumListViewController *)self px_gridPresentation];
    v8 = [v10 createPhotosAlbumViewControllerForAlbum:v4 withFetchResult:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(PUAlbumListViewController *)self sessionInfo];
    [v8 setSessionInfo:v11];
  }

  v12 = MEMORY[0x1E6991F28];
  v15 = *MEMORY[0x1E6991E08];
  v16[0] = v4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v12 sendEvent:@"com.apple.photos.CPAnalytics.albumListItemSelected" withPayload:v13];

  return v8;
}

- (id)newGridViewControllerForFolder:(id)a3
{
  v4 = a3;
  v5 = [(PUAlbumListViewController *)self spec];
  v6 = [v5 standInAlbumListViewControllerSpec];

  v7 = [PUAlbumListViewController alloc];
  v8 = [(PUAlbumListViewController *)self photoLibrary];
  v9 = [(PUAlbumListViewController *)v7 initWithSpec:v6 photoLibrary:v8];

  [(PUAlbumListViewController *)v9 setCollection:v4];
  return v9;
}

- (void)handleSessionInfoAlbumSelection:(id)a3
{
  v4 = a3;
  v5 = [(PUAlbumListViewController *)self sessionInfo];
  v6 = [(PUAlbumListViewController *)self _pickerBannerView];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __61__PUAlbumListViewController_handleSessionInfoAlbumSelection___block_invoke;
  v19 = &unk_1E7B80088;
  v20 = v5;
  v7 = v4;
  v21 = v7;
  v8 = v5;
  v9 = _Block_copy(&v16);
  v10 = v9;
  if (v6)
  {
    v11 = [(PUAlbumListViewController *)self indexPathForCollection:v7, v16, v17, v18, v19, v20, v21];
    v12 = [(PUAlbumListViewController *)self _preparedAlbumListCellContentViewAtIndexPath:v11];
    v13 = [v12 stackView];
    v14 = [(PUAlbumListViewController *)self navigationController];
    v15 = [v14 view];

    [v6 animateImagesOntoView:v13 inContainerView:v15 completionHandler:v10];
  }

  else
  {
    (*(v9 + 2))(v9, 1);
  }
}

uint64_t __61__PUAlbumListViewController_handleSessionInfoAlbumSelection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTargetAlbum:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setStatus:1];
}

- (void)_handleDeleteCollection:(id)a3 sourceView:(id)a4
{
  v15 = a3;
  v7 = a4;
  v8 = [(PUAlbumListViewController *)self dataSourceManager];
  v9 = [v8 canDeleteCollection:v15];

  if ((v9 & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:2058 description:@"expected deletable collection"];
  }

  v10 = [(PUAlbumListViewController *)self spec];
  [v10 albumDeletionWarningStyle];

  v11 = [(PUAlbumListViewController *)self undoManager];
  v12 = PXCollectionDeletionAlertControllerForCollection();

  v13 = [v12 popoverPresentationController];
  [v13 setSourceView:v7];

  [v13 setDelegate:self];
  [(PUAlbumListViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_handleDeleteAlbumAtIndexPath:(id)a3
{
  v7 = a3;
  v4 = [(PUAlbumListViewController *)self collectionAtIndexPath:?];
  if (v4)
  {
    v5 = [(PUAlbumListViewController *)self _mainCollectionView];
    v6 = [v5 cellForItemAtIndexPath:v7];

    [(PUAlbumListViewController *)self _handleDeleteCollection:v4 sourceView:v6];
  }
}

- (void)_dismissPhotosPickerControllerAnimated:(BOOL)a3
{
  v4 = [(PUAlbumListViewController *)self pickerViewController];
  if (v4)
  {
    [(PUAlbumListViewController *)self setPickerViewController:0];
    v5 = [v4 presentingViewController];
    v6 = v5;
    if (v5)
    {
      [v5 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      v7 = PXAssertGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Photos picker's presenting view controller is unexpectedly missing.", v8, 2u);
      }
    }
  }
}

- (void)_handleCollectionListActionType:(id)a3
{
  v4 = a3;
  v5 = [(PUAlbumListViewController *)self dataSourceManager];
  v6 = [v5 collectionList];

  v7 = [objc_alloc(MEMORY[0x1E69C37E0]) initWithActionType:v4 collectionList:v6];
  [v7 setDelegate:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__PUAlbumListViewController__handleCollectionListActionType___block_invoke;
  v9[3] = &unk_1E7B7FB70;
  v10 = v7;
  v11 = self;
  v8 = v7;
  [v8 performActionWithCompletionHandler:v9];
}

void __61__PUAlbumListViewController__handleCollectionListActionType___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) createdCollection];
  v7 = [v6 localIdentifier];
  if (a2)
  {
    v8 = [*(a1 + 40) sessionInfo];
    objc_initWeak(&location, *(a1 + 40));
    [*(a1 + 40) _setJustCreatedCollectionIdentifier:v7];
    v9 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__PUAlbumListViewController__handleCollectionListActionType___block_invoke_2;
    v13[3] = &unk_1E7B7F478;
    objc_copyWeak(&v17, &location);
    v10 = v8;
    v14 = v10;
    v11 = v6;
    v12 = *(a1 + 40);
    v15 = v11;
    v16 = v12;
    [v9 _setJustCreatedCollectionAnimationCompletionHandler:v13];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __61__PUAlbumListViewController__handleCollectionListActionType___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if ([a1[4] isSelectingTargetAlbum])
  {
    v3 = [WeakRetained _pickerBannerView];
    v4 = [WeakRetained indexPathForCollection:a1[5]];
    v5 = [WeakRetained collectionView];
    [v5 layoutIfNeeded];

    v6 = [WeakRetained _preparedAlbumListCellContentViewAtIndexPath:v4];
    v7 = [v6 stackView];
    v8 = [WeakRetained navigationController];
    v9 = [v8 view];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__PUAlbumListViewController__handleCollectionListActionType___block_invoke_3;
    v14[3] = &unk_1E7B80088;
    v15 = a1[4];
    v16 = a1[5];
    [v3 animateImagesOntoView:v7 inContainerView:v9 completionHandler:v14];
  }

  v10 = objc_loadWeakRetained(a1 + 7);
  v11 = [v10 sharedLibraryStatusProvider];

  if ([v11 hasSharedLibraryOrPreview])
  {
    v12 = [a1[6] libraryFilterState];
    v13 = [v12 viewMode];

    if (v13 == 2)
    {
      [WeakRetained navigateToCollection:a1[5] animated:1 completion:0];
    }
  }
}

uint64_t __61__PUAlbumListViewController__handleCollectionListActionType___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setTargetAlbum:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setStatus:1];
}

- (void)didSelectItemAtIndexPath:(id)a3
{
  v7 = a3;
  v4 = [(PUAlbumListViewController *)self collectionAtIndexPath:v7];
  if ([(PUAlbumListViewController *)self isPlaceholderAtIndexPath:v7])
  {
    [(PUAlbumListViewController *)self _didSelectPlaceholderAtIndexPath:v7];
    goto LABEL_10;
  }

  if (v4)
  {
    v5 = [(PUAlbumListViewController *)self sessionInfo];
    if ([v5 isSelectingTargetAlbum])
    {
      v6 = [v4 px_isFolder];

      if ((v6 & 1) == 0)
      {
        [(PUAlbumListViewController *)self handleSessionInfoAlbumSelection:v4];
        goto LABEL_10;
      }
    }

    else
    {
    }

    if (([(PUAlbumListViewController *)self isEditing]& 1) == 0)
    {
      [(PUAlbumListViewController *)self navigateToCollection:v4 animated:1 completion:0];
    }
  }

LABEL_10:
}

- (void)_didSelectPlaceholderAtIndexPath:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PUAlbumListViewController *)self placeholderKindAtIndexPath:v5];
  if (![(PUAlbumListViewController *)self _isPlaceholderEnabled:v6])
  {
    goto LABEL_26;
  }

  if (v6 <= 2)
  {
    if (!v6)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:1915 description:@"undefined placeholder"];

      goto LABEL_26;
    }

    if (v6 == 1)
    {
      if ([(PUAlbumListViewController *)self isRootSharedAlbumList])
      {
        [(PUAlbumListViewController *)self newSharedAlbum:0];
      }

      else
      {
        [(PUAlbumListViewController *)self _handleCollectionListActionType:*MEMORY[0x1E69C3FE8]];
      }

      goto LABEL_26;
    }

    if (v6 != 2)
    {
      goto LABEL_26;
    }

    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [(PUAlbumListViewController *)self dataSourceManager];
    v9 = [v8 collectionsFetchResult];
    [(PUAlbumListViewController *)self _recursivelyCollectCollectionsIn:v7 fetchResult:v9];

    v10 = [(PUAlbumListViewController *)self _assetsFetchOptions];
    v29 = [v7 valueForKey:@"objectID"];
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY albums IN (%@)", v29];
    v12 = [v10 internalPredicate];
    v13 = v12;
    v28 = v11;
    if (v12)
    {
      v14 = MEMORY[0x1E696AB28];
      v31[0] = v11;
      v31[1] = v12;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
      v16 = [v14 andPredicateWithSubpredicates:v15];
    }

    else
    {
      v16 = v11;
    }

    [v10 setInternalPredicate:v16];
    v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v30 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [v10 setSortDescriptors:v19];

    [v10 setIncludeAssetSourceTypes:7];
    v20 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v10];
    v21 = MEMORY[0x1E6978650];
    v22 = PULocalizedString(@"ALL_PHOTOS_IN_FOLDER");
    v23 = [v21 transientAssetCollectionWithAssetFetchResult:v20 title:v22];

    v24 = [(PUAlbumListViewController *)self spec];
    v25 = [v24 shouldUseCollageForCloudFeedPlaceholder];

    if (v25)
    {
      v26 = [(PUAlbumListViewController *)self newGridViewControllerForAssetCollection:v23];
      v27 = [(PUAlbumListViewController *)self navigationController];
      [v27 pu_pushViewController:v26 withTransition:0 animated:1 isInteractive:0];
    }

    else
    {
      [(PUAlbumListViewController *)self navigateToCollection:v23 animated:1 completion:0];
    }

LABEL_25:
    goto LABEL_26;
  }

  if (v6 <= 4)
  {
    if (v6 == 3)
    {
      [(PUAlbumListViewController *)self navigateToAllPhotosAnimated:1 completion:0];
    }

    else
    {
      [(PUAlbumListViewController *)self _navigateToPeopleAnimated:1 withPersonLocalIdentifier:0 withCompletion:0];
    }

    goto LABEL_26;
  }

  if (v6 == 5)
  {
    v7 = [(PUAlbumListViewController *)self collectionAtIndexPath:v5];
    [(PUAlbumListViewController *)self _navigateToPlacesFromCollection:v7];
    goto LABEL_25;
  }

  if (v6 == 6)
  {
    [(PUAlbumListViewController *)self _navigateToMemories];
  }

LABEL_26:
}

- (BOOL)_isPlaceholderEnabled:(int64_t)a3
{
  if (([(PUAlbumListViewController *)self isEditing]& 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(PUAlbumListViewController *)self sessionInfo];
    v5 = [v6 isSelectingTargetAlbum] ^ 1;
  }

  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (void)_recursivelyCollectCollectionsIn:(id)a3 fetchResult:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 canContainCollections])
        {
          v13 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v12 options:0];
          [(PUAlbumListViewController *)self _recursivelyCollectCollectionsIn:v6 fetchResult:v13];
        }

        else if ([v12 canContainAssets])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_handleCancelButton:(id)a3
{
  v3 = [(PUAlbumListViewController *)self sessionInfo];
  [v3 setStatus:2];
}

- (void)_handleDoneButton:(id)a3
{
  v3 = [(PUAlbumListViewController *)self sessionInfo];
  [v3 setStatus:1];
}

- (void)_handleDeleteKeyCommand:(id)a3
{
  v4 = [(PUAlbumListViewController *)self focusedListCell];
  if (v4)
  {
    v7 = v4;
    v5 = [(PUAlbumListViewController *)self _mainCollectionView];
    v6 = [v5 indexPathForCell:v7];

    [(PUAlbumListViewController *)self _handleDeleteAlbumAtIndexPath:v6];
    v4 = v7;
  }
}

- (void)_handleRenameKeyCommand:(id)a3
{
  v3 = [(PUAlbumListViewController *)self focusedListCell];
  v4 = [v3 albumListCellContentView];

  [v4 startPerformRetitleAction];
}

- (void)_handleOpenKeyCommand:(id)a3
{
  v4 = [(PUAlbumListViewController *)self focusedListCell];
  if (v4)
  {
    v7 = v4;
    v5 = [(PUAlbumListViewController *)self _mainCollectionView];
    v6 = [v5 indexPathForCell:v7];

    [(PUAlbumListViewController *)self didSelectItemAtIndexPath:v6];
    v4 = v7;
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel__handleOpenKeyCommand_ == a3)
  {
    v7 = [(PUAlbumListViewController *)self focusedListCell];
    LOBYTE(a3) = v7 != 0;

    goto LABEL_10;
  }

  if (sel__handleRenameKeyCommand_ == a3)
  {
    v8 = [(PUAlbumListViewController *)self focusedListCell];
    v9 = [v8 albumListCellContentView];
    a3 = (([v9 editCapabilities] >> 1) & 1);
LABEL_9:

    goto LABEL_10;
  }

  if (sel__handleDeleteKeyCommand_ == a3)
  {
    v8 = [(PUAlbumListViewController *)self focusedListCell];
    v9 = [v8 albumListCellContentView];
    a3 = ([v9 editCapabilities] & 1);
    goto LABEL_9;
  }

  if (sel_newSmartAlbum_ == a3)
  {
    LOBYTE(a3) = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PUAlbumListViewController;
    LOBYTE(a3) = [(PUAlbumListViewController *)&v11 canPerformAction:a3 withSender:v6];
  }

LABEL_10:

  return a3;
}

- (id)_targetIndexPathForMoveFromIndexPath:(id)a3 toProposedIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUAlbumListViewController *)self albumsSections];
  v10 = v9;
  if ([(PUAlbumListViewController *)self isEmpty])
  {
    v11 = v6;
    goto LABEL_14;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = [v7 item];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = [v7 section];
  v12 = v25[3];
  if (v12 < v8 || v12 - v8 >= v10)
  {
    v14 = v10 + v8 - 1;
    if (v12 <= v14)
    {
      if (v12 >= v8)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v25[3] = v8;
    }

    else
    {
      v25[3] = v14;
      v15 = [(PUAlbumListViewController *)self numberOfItemsInSection:?]- 1;
    }

    v29[3] = v15;
  }

LABEL_13:
  v16 = [(PUAlbumListViewController *)self dataSource];
  v17 = [v16 identifier];
  v18 = v25[3];
  v19 = v29[3];

  v20 = [(PUAlbumListViewController *)self dataSource];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__PUAlbumListViewController__targetIndexPathForMoveFromIndexPath_toProposedIndexPath___block_invoke;
  v23[3] = &unk_1E7B74F40;
  v23[4] = self;
  v23[5] = &v24;
  v23[7] = v8;
  v23[8] = v10;
  v23[6] = &v28;
  v22[0] = v17;
  v22[1] = v18 - v8;
  v22[2] = v19;
  v22[3] = 0x7FFFFFFFFFFFFFFFLL;
  [v20 enumerateItemIndexPathsStartingAtIndexPath:v22 reverseDirection:0 usingBlock:v23];

  v11 = [MEMORY[0x1E696AC88] indexPathForItem:v29[3] inSection:v25[3]];
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
LABEL_14:

  return v11;
}

void __86__PUAlbumListViewController__targetIndexPathForMoveFromIndexPath_toProposedIndexPath___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) dataSource];
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v8 = [v6 objectAtIndexPath:v11];

  v9 = [*(a1 + 32) dataSourceManager];
  v10 = [v9 canReorderCollection:v8];

  if (v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 56) + *(a2 + 8);
    *(*(*(a1 + 48) + 8) + 24) = *(a2 + 16);
    *a3 = 1;
  }
}

- (id)indexPathForFirstEditableAlbum
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7019;
  v16 = __Block_byref_object_dispose__7020;
  v17 = 0;
  v10 = 0u;
  v11 = 0u;
  v3 = [(PUAlbumListViewController *)self dataSource];
  v4 = v3;
  if (v3)
  {
    [v3 firstItemIndexPath];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  if (v10 != *MEMORY[0x1E69C4880])
  {
    v5 = [(PUAlbumListViewController *)self dataSource];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__PUAlbumListViewController_indexPathForFirstEditableAlbum__block_invoke;
    v9[3] = &unk_1E7B74F18;
    v9[4] = self;
    v9[5] = &v12;
    v8[0] = v10;
    v8[1] = v11;
    [v5 enumerateItemIndexPathsStartingAtIndexPath:v8 reverseDirection:0 usingBlock:v9];
  }

  v6 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v6;
}

void __59__PUAlbumListViewController_indexPathForFirstEditableAlbum__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) dataSource];
  v7 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v7;
  v8 = [v6 objectAtIndexPath:v12];

  if ([*(a1 + 32) _editCapabilitiesForAlbum:v8])
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:*(a2 + 16) inSection:{objc_msgSend(*(a1 + 32), "albumsSections") + *(a2 + 8)}];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a3 = 1;
  }
}

- (id)indexPathForAggregateItem
{
  if ([(PUAlbumListViewController *)self _shouldShowAggregateItem])
  {
    v3 = [(PUAlbumListViewController *)self topPlaceholdersSection];
    v4 = [(PUAlbumListViewController *)self showAddNewAlbumPlaceholder];
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:v4 inSection:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)indexPathForAddNewAlbumPlaceholder
{
  if ([(PUAlbumListViewController *)self showAddNewAlbumPlaceholder])
  {
    v3 = [(PUAlbumListViewController *)self topPlaceholdersSection];
    v4 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)indexPathForPeopleAlbum
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7019;
  v12 = __Block_byref_object_dispose__7020;
  v13 = 0;
  v4 = [(PUAlbumListViewController *)self dataSource];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PUAlbumListViewController_indexPathForPeopleAlbum__block_invoke;
  v7[3] = &unk_1E7B74EF0;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = a2;
  [v4 enumerateCollectionsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __52__PUAlbumListViewController_indexPathForPeopleAlbum__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 px_isPeopleVirtualCollection])
  {
    v6 = [*(a1 + 32) indexPathForCollection:v9];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (id)indexPathForPlacesAlbum
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7019;
  v12 = __Block_byref_object_dispose__7020;
  v13 = 0;
  v4 = [(PUAlbumListViewController *)self dataSource];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PUAlbumListViewController_indexPathForPlacesAlbum__block_invoke;
  v7[3] = &unk_1E7B74EF0;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = a2;
  [v4 enumerateCollectionsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __52__PUAlbumListViewController_indexPathForPlacesAlbum__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 px_isPlacesSmartAlbum])
  {
    v6 = [*(a1 + 32) indexPathForCollection:v9];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (int64_t)placeholderKindAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 == [(PUAlbumListViewController *)self topPlaceholdersSection])
  {
    v6 = [v4 item];
    v7 = [(PUAlbumListViewController *)self showAddNewAlbumPlaceholder];
    v8 = v6 == 0;
    v9 = v6 - v7;
    v10 = v7 & v8;
    v11 = [(PUAlbumListViewController *)self _shouldShowAggregateItem]& (v9 >= 0);
    if ((v11 & (v9 == 0)) != 0)
    {
      v10 = 2;
    }

    if ([(PUAlbumListViewController *)self shouldShowAllPhotosItem]&& v9 == v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = v10;
    }
  }

  else
  {
    v13 = [v4 section];
    v14 = [(PUAlbumListViewController *)self albumsSections];
    v12 = 0;
    if (v13 >= v14 && v13 - v14 < v15)
    {
      v16 = [(PUAlbumListViewController *)self collectionAtIndexPath:v4];
      if ([v16 px_isPeopleVirtualCollection])
      {
        v12 = 4;
      }

      else if ([v16 px_isPlacesSmartAlbum])
      {
        v12 = 5;
      }

      else if ([v16 px_isMemoriesVirtualCollection])
      {
        v12 = 6;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

- (BOOL)isPlaceholderAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(PUAlbumListViewController *)self albumsSections];
  v8 = 1;
  if (v5 >= v6 && v5 - v6 < v7)
  {
    v9 = [(PUAlbumListViewController *)self collectionAtIndexPath:v4];
    if (([v9 px_isPlacesSmartAlbum] & 1) == 0 && (objc_msgSend(v9, "px_isPeopleVirtualCollection") & 1) == 0)
    {
      v8 = [v9 px_isMemoriesVirtualCollection];
    }
  }

  return v8;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  if ([(PUAlbumListViewController *)self topPlaceholdersSection]== a3)
  {
    LODWORD(v5) = [(PUAlbumListViewController *)self showAddNewAlbumPlaceholder];
    v6 = [(PUAlbumListViewController *)self _shouldShowAggregateItem];
    v7 = 1;
    if (v5)
    {
      v7 = 2;
    }

    if (v6)
    {
      v5 = v7;
    }

    else
    {
      v5 = v5;
    }

    return v5 + [(PUAlbumListViewController *)self shouldShowAllPhotosItem];
  }

  else
  {
    v10 = [(PUAlbumListViewController *)self albumsSections];
    result = 0;
    v11 = a3 >= v10;
    v12 = a3 - v10;
    if (v11 && v12 < v9)
    {
      v13 = [(PUAlbumListViewController *)self dataSource];
      v14 = [v13 numberOfItemsInSection:{a3 - -[PUAlbumListViewController albumsSections](self, "albumsSections")}];

      return v14;
    }
  }

  return result;
}

- (int64_t)numberOfSections
{
  v3 = [(PUAlbumListViewController *)self dataSource];
  v4 = [v3 numberOfSections];

  return v4 + [(PUAlbumListViewController *)self showsTopPlaceholdersSection];
}

- (_NSRange)albumsSections
{
  v3 = [(PUAlbumListViewController *)self showsTopPlaceholdersSection];
  v4 = [(PUAlbumListViewController *)self dataSource];
  v5 = [v4 numberOfSections];

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (int64_t)topPlaceholdersSection
{
  if ([(PUAlbumListViewController *)self showsTopPlaceholdersSection])
  {
    return 0;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (BOOL)showsSeparatorBelowTopPlaceholdersSection
{
  if ([(PUAlbumListViewController *)self _shouldShowAggregateItem])
  {
    return 1;
  }

  return [(PUAlbumListViewController *)self shouldShowAllPhotosItem];
}

- (BOOL)_shouldShowAggregateItem
{
  v2 = self;
  v3 = [(PUAlbumListViewController *)self dataSource];
  v4 = [(PUAlbumListViewController *)v2 canShowAggregateItem];
  v5 = [(PUAlbumListViewController *)v2 isEmpty];
  LOBYTE(v2) = [(PUAlbumListViewController *)v2 isRootFolder];
  v6 = [v3 collectionList];
  v7 = [v6 px_isFolder];

  v8 = [v3 collectionList];
  v9 = [v8 px_isSmartFolder];

  v10 = v7 & (v9 ^ 1);
  if (v2)
  {
    v10 = 0;
  }

  if (v5)
  {
    v10 = 0;
  }

  if (v4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)shouldBeginRetitlingAlbumAtIndexPath:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(PUAlbumListViewController *)self _mainTableView:a3];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) showingDeleteConfirmation])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (id)subtitleForCollection:(id)a3
{
  v4 = a3;
  if ([v4 px_isSharedAlbum])
  {
    v5 = [v4 localizedSharedByLabelAllowsEmail:{-[PUAlbumListViewController shouldAllowEmailInAlbumSubtitle](self, "shouldAllowEmailInAlbumSubtitle")}];
LABEL_6:
    v6 = v5;
    goto LABEL_7;
  }

  if (([v4 px_isMacSyncedFacesFolder] & 1) != 0 || objc_msgSend(v4, "px_isMacSyncedEventsFolder"))
  {
    v5 = PULocalizedString(@"FROM_MY_MAC");
    goto LABEL_6;
  }

  v8 = [(PUAlbumListViewController *)self dataSourceManager];
  v9 = [v8 dataSource];
  v10 = [v9 countForCollection:v4];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = @" ";
    v11 = @" ";
  }

  else
  {
    if (self->_albumSubtitleFormat && [v4 px_isMacSyncedAlbum])
    {
      v12 = PULocalizedString(self->_albumSubtitleFormat);
      v6 = PULocalizedStringWithValidatedFormat(v12, @"%ld");
    }

    else
    {
      v12 = PLSharedCountFormatter();
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
      v6 = [v12 stringFromNumber:v13];
    }
  }

LABEL_7:

  return v6;
}

- (void)setSyncProgressVisible:(BOOL)a3
{
  v3 = a3;
  if ([(PUAlbumListViewController *)self progressViewVisible]== a3)
  {
    return;
  }

  [(PUAlbumListViewController *)self setProgressViewVisible:v3];
  v5 = [(PUAlbumListViewController *)self _mainCollectionView];

  if (v5)
  {
    if (v3)
    {
      v6 = 100.0;
    }

    else
    {
      v6 = 0.0;
    }

    v21 = [(PUAlbumListViewController *)self _mainCollectionViewLayout];
    [v21 setGlobalFooterHeight:v6];
LABEL_12:

    return;
  }

  if (v3)
  {
    v7 = [(PUAlbumListViewController *)self syncProgressView];
    if (!v7)
    {
      v22 = objc_alloc_init(MEMORY[0x1E69C38D0]);
      v8 = objc_alloc_init(MEMORY[0x1E69C4508]);
      [v22 setViewModel:v8];

      [(PUAlbumListViewController *)self setSyncProgressView:v22];
      v7 = v22;
    }

    v21 = v7;
    [v7 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(PUAlbumListViewController *)self _mainTableView];
    [v15 rowHeight];
    v17 = v16;

    [v21 setFrame:{v10, v12, v14, v17}];
    v18 = [(PUAlbumListViewController *)self _mainTableView];
    [v18 setTableFooterView:v21];

    goto LABEL_12;
  }

  v19 = [(PUAlbumListViewController *)self _mainTableView];
  [v19 setTableFooterView:0];

  v20 = [(PUAlbumListViewController *)self syncProgressView];
  [v20 removeFromSuperview];

  [(PUAlbumListViewController *)self setSyncProgressView:0];
}

- (void)_updateCollageView:(id)a3 forAssets:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUAlbumListViewController *)self spec];
  [(PUAlbumListViewController *)self _layoutReferenceSize];
  v10 = v9;
  v12 = v11;
  [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
  [v8 stackSizeForLayoutReferenceSize:v10 safeAreaInsets:{v12, v13, v14, v15, v16}];
  v18 = v17;
  v20 = v19;
  [v8 collageSpacing];
  v22 = v21;
  [v6 setCollageSize:{v18, v20}];
  [v6 setSpacing:v22];
  [v6 setNumberOfItems:{objc_msgSend(v7, "count")}];
  [v8 posterSquareCornerRadius];
  [v6 setCornerRadius:?];
  [v8 posterSubitemCornerRadius];
  [v6 setSubitemCornerRadius:?];
  v23 = [v8 shouldUseTableView];
  v24 = +[PUInterfaceManager currentTheme];
  v25 = [v24 albumCornersBackgroundColor];
  [v6 setHasRoundedCorners:v23 ^ 1u withCornersBackgroundColor:v25];

  v26 = [v6 tag] + 1;
  [v6 setTag:v26];
  v27 = [v8 collageImageContentMode];
  [v8 collageImageSize];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __58__PUAlbumListViewController__updateCollageView_forAssets___block_invoke;
  v31[3] = &unk_1E7B74EC8;
  v32 = v6;
  v33 = self;
  v34 = v28;
  v35 = v29;
  v36 = v27;
  v37 = v26;
  v30 = v6;
  [v7 enumerateObjectsUsingBlock:v31];
}

void __58__PUAlbumListViewController__updateCollageView_forAssets___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setImageSize:a3 forItemAtIndex:{objc_msgSend(v5, "pixelWidth"), objc_msgSend(v5, "pixelHeight")}];
  v6 = [*(a1 + 40) _imageRequestOptions];
  v7 = [*(a1 + 40) _cachingImageManager];
  v8 = *(a1 + 64);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__PUAlbumListViewController__updateCollageView_forAssets___block_invoke_2;
  v11[3] = &unk_1E7B74EA0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 72);
  v12 = v9;
  v13 = v10;
  v14 = a3;
  [v7 requestImageForAsset:v5 targetSize:v8 contentMode:v6 options:v11 resultHandler:{*(a1 + 48), *(a1 + 56)}];
}

void __58__PUAlbumListViewController__updateCollageView_forAssets___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && [*(a1 + 32) tag] == *(a1 + 40))
  {
    [*(a1 + 32) setImage:v6 forItemAtIndex:*(a1 + 48)];
  }
}

- (void)_updateStackView:(id)a3 forFaces:(id)a4 inCollection:(id)a5 withCustomEmptyPlaceholderImage:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  -[PUAlbumListViewController _prepareStackView:forCollection:withStackCount:withCustomEmptyPlaceHolderImage:](self, "_prepareStackView:forCollection:withStackCount:withCustomEmptyPlaceHolderImage:", v10, v12, [v13 count], v11);

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __100__PUAlbumListViewController__updateStackView_forFaces_inCollection_withCustomEmptyPlaceholderImage___block_invoke;
  v20[3] = &unk_1E7B74E78;
  v21 = v10;
  v14 = v10;
  [v13 enumerateObjectsUsingBlock:v20];

  v15 = *(MEMORY[0x1E69C4840] + 16);
  v19[0] = *MEMORY[0x1E69C4840];
  v19[1] = v15;
  [v14 setBadgeInfo:v19 forItemAtIndex:0];
  v16 = [(PUAlbumListViewController *)self spec];
  LODWORD(v13) = [v16 shouldUseTableView];
  v17 = +[PUInterfaceManager currentTheme];
  v18 = [v17 albumCornersBackgroundColor];
  [v14 setHasRoundedCorners:v13 ^ 1 withCornersBackgroundColor:v18];
}

void __100__PUAlbumListViewController__updateStackView_forFaces_inCollection_withCustomEmptyPlaceholderImage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 size];
  [*(a1 + 32) setImageSize:a3 forItemAtIndex:?];
  [*(a1 + 32) setImage:v5 forItemAtIndex:a3];
}

- (void)_updateStackView:(id)a3 forAssets:(id)a4 collection:(id)a5 withCustomEmptyPlaceholderImage:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  -[PUAlbumListViewController _prepareStackView:forCollection:withStackCount:withCustomEmptyPlaceHolderImage:](self, "_prepareStackView:forCollection:withStackCount:withCustomEmptyPlaceHolderImage:", v10, v11, [v13 count], v12);

  v14 = [v10 tag] + 1;
  [v10 setTag:v14];
  v15 = [(PUAlbumListViewController *)self spec];
  v16 = [v15 imageContentMode];

  v17 = [(PUAlbumListViewController *)self spec];
  [(PUAlbumListViewController *)self _layoutReferenceSize];
  v19 = v18;
  v21 = v20;
  [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
  [v17 imageSizeForLayoutReferenceSize:v19 safeAreaInsets:{v21, v22, v23, v24, v25}];
  v27 = v26;
  v29 = v28;

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __99__PUAlbumListViewController__updateStackView_forAssets_collection_withCustomEmptyPlaceholderImage___block_invoke;
  v42[3] = &unk_1E7B74E50;
  v43 = v10;
  v30 = v11;
  v44 = v30;
  v45 = self;
  v46 = v27;
  v47 = v29;
  v48 = v16;
  v49 = v14;
  v31 = v10;
  [v13 enumerateObjectsUsingBlock:v42];

  v32 = [(PUAlbumListViewController *)self spec];
  v33 = [v32 shouldUseTableView];

  v40 = 0u;
  v41 = 0u;
  v34 = [(PUAlbumListViewController *)self _badgeManager];
  v35 = v34;
  if (v34)
  {
    [v34 badgeInfoForCollection:v30 options:0];
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  if (v33)
  {
    v36 = 1;
  }

  else
  {
    v36 = 2;
  }

  v39[0] = v40;
  v39[1] = v41;
  [v31 setBadgeInfo:v39 style:v36 forItemAtIndex:0];
  v37 = +[PUInterfaceManager currentTheme];
  v38 = [v37 albumCornersBackgroundColor];
  [v31 setHasRoundedCorners:v33 ^ 1u withCornersBackgroundColor:v38];
}

void __99__PUAlbumListViewController__updateStackView_forAssets_collection_withCustomEmptyPlaceholderImage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setImageSize:a3 forItemAtIndex:{objc_msgSend(v5, "pixelWidth"), objc_msgSend(v5, "pixelHeight")}];
  if (!a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [*(a1 + 40) assetCollectionSubtype] == 4)
  {
    v6 = [MEMORY[0x1E6978650] posterImageForAssetCollection:*(a1 + 40)];
    v7 = v6;
    if (v6)
    {
      [v6 size];
      [*(a1 + 32) setImageSize:0 forItemAtIndex:?];
      [*(a1 + 32) setImage:v7 forItemAtIndex:0];
    }
  }

  else
  {
    v8 = [*(a1 + 48) _imageRequestOptions];
    v9 = [*(a1 + 48) _cachingImageManager];
    v10 = *(a1 + 72);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __99__PUAlbumListViewController__updateStackView_forAssets_collection_withCustomEmptyPlaceholderImage___block_invoke_2;
    v13[3] = &unk_1E7B74E28;
    v14 = v5;
    v11 = *(a1 + 32);
    v12 = *(a1 + 80);
    v15 = v11;
    v16 = v12;
    v17 = a3;
    [v9 requestImageForAsset:v14 targetSize:v10 contentMode:v8 options:v13 resultHandler:{*(a1 + 56), *(a1 + 64)}];
  }
}

void __99__PUAlbumListViewController__updateStackView_forAssets_collection_withCustomEmptyPlaceholderImage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E6978AB0];
  v11 = a3;
  v12 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  [v5 protectImageManagerResult:v8 outImage:&v12 infoDictionary:v7 outInfoDictionary:&v11 forImageRequestFromAsset:v6 applyLiveBlurIfSensitive:1];
  v9 = v12;

  v10 = v11;
  if (v9 && [*(a1 + 40) tag] == *(a1 + 48))
  {
    [*(a1 + 40) setImage:v9 forItemAtIndex:*(a1 + 56)];
  }
}

- (void)_prepareStackView:(id)a3 forCollection:(id)a4 withStackCount:(int64_t)a5 withCustomEmptyPlaceHolderImage:(id)a6
{
  v47 = a3;
  v10 = a6;
  v11 = a4;
  v12 = [(PUAlbumListViewController *)self _stackViewStyleForCollection:v11];
  [v47 setStyle:v12];
  v13 = [(PUAlbumListViewController *)self spec];
  v14 = v13;
  if (v12 - 3 > 1)
  {
    if (v12 == 6)
    {
      [v47 setGridItemSpacing:4.0];
    }

    else if (v12 == 5)
    {
      v15 = +[PUInterfaceManager currentTheme];
      v16 = [v15 placeholderCellBackgroundColor];
      [v47 setGridBackgroundColor:v16];
    }
  }

  else
  {
    [v13 configureStackViewWithGridStyle:v47];
  }

  if ([v14 shouldUseTableView])
  {
    if (a5)
    {
      [v14 stackPhotoDecoration];
    }

    else
    {
      [v14 emptyStackPhotoDecoration];
    }
    v17 = ;
    [v14 stackOffset];
    v25 = v26;
    v24 = v27;
    [v14 stackPerspectiveInsets];
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    [v14 stackPerspectiveOffset];
    v18 = v32;
    v19 = v33;
  }

  else
  {
    v17 = 0;
    v18 = *MEMORY[0x1E69DE258];
    v19 = *(MEMORY[0x1E69DE258] + 8);
    v20 = *MEMORY[0x1E69DDCE0];
    v21 = *(MEMORY[0x1E69DDCE0] + 8);
    v22 = *(MEMORY[0x1E69DDCE0] + 16);
    v23 = *(MEMORY[0x1E69DDCE0] + 24);
    v24 = v19;
    v25 = *MEMORY[0x1E69DE258];
  }

  [v47 setPhotoDecoration:v17];
  [v47 setStackOffset:{v25, v24}];
  [v47 setStackPerspectiveInsets:{v20, v21, v22, v23}];
  [v47 setStackPerspectiveOffset:{v18, v19}];
  [(PUAlbumListViewController *)self _layoutReferenceSize];
  v35 = v34;
  v37 = v36;
  [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
  [v14 stackSizeForLayoutReferenceSize:v35 safeAreaInsets:{v37, v38, v39, v40, v41}];
  [v47 setStackSize:?];
  [v14 posterSquareCornerRadius];
  [v47 setPosterSquareCornerRadius:?];
  [v14 posterSubitemCornerRadius];
  [v47 setPosterSubitemCornerRadius:?];
  v42 = [PUStackView maximumNumberOfVisibleItemsForStyle:v12];
  if (v42 >= a5)
  {
    v43 = a5;
  }

  else
  {
    v43 = v42;
  }

  if (v43 <= 1)
  {
    v43 = 1;
  }

  if (v12 == 3)
  {
    v44 = v42;
  }

  else
  {
    v44 = v43;
  }

  [v47 setNumberOfVisibleItems:v44];
  [v47 setEmpty:(a5 | v10) == 0];
  v45 = [v11 px_isFolder];

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v10;
  }

  [v47 setEmptyPlaceholderImage:v46];
}

- (id)_keyAssetsForMoments
{
  v35 = *MEMORY[0x1E69E9840];
  keyAssetsForMoments = self->_keyAssetsForMoments;
  if (!keyAssetsForMoments)
  {
    v4 = [PUStackView maximumNumberOfVisibleImagesForStyle:4];
    v5 = [MEMORY[0x1E6978830] px_standardFetchOptions];
    [v5 setFetchLimit:v4];
    [v5 setReverseSortOrder:1];
    v22 = v5;
    v6 = [MEMORY[0x1E6978650] fetchMomentsWithOptions:v5];
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
    v23 = self;
    v8 = [(PUAlbumListViewController *)self _assetsFetchOptions];
    [v8 setFetchLimit:v4];
    [v8 setReverseSortOrder:1];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:*(*(&v29 + 1) + 8 * v12) options:v8];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v26;
LABEL_9:
          v18 = 0;
          while (1)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [(NSArray *)v7 addObject:*(*(&v25 + 1) + 8 * v18)];
            if ([(NSArray *)v7 count]>= v4)
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v16)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }

        v19 = [(NSArray *)v7 count];
        if (v19 >= v4)
        {
          break;
        }

        if (++v12 == v10)
        {
          v10 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v20 = v23->_keyAssetsForMoments;
    v23->_keyAssetsForMoments = v7;

    keyAssetsForMoments = v23->_keyAssetsForMoments;
  }

  return keyAssetsForMoments;
}

- (void)updatePlaceholderListCellContentView:(id)a3 forItemAtIndexPath:(id)a4 animated:(BOOL)a5
{
  v57 = a5;
  v8 = a3;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__7019;
  v73 = __Block_byref_object_dispose__7020;
  v74 = 0;
  v55 = a4;
  v9 = [(PUAlbumListViewController *)self placeholderKindAtIndexPath:?];
  v56 = [v8 stackView];
  v10 = 0;
  if (v9 <= 2)
  {
    if (!v9)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:1205 description:@"undefined placeholder"];
      v10 = 0;
      v11 = 0;
      v12 = 0;
      goto LABEL_41;
    }

    if (v9 == 1)
    {
      if ([(PUAlbumListViewController *)self isRootSharedAlbumList])
      {
        v12 = PULocalizedString(@"ALBUM_LIST_CREATE_NEW_SHARED_ALBUM_PLACEHOLDER_TITLE");
        v25 = [(PUAlbumListViewController *)self spec];
        v26 = [v8 window];
        [v25 emptySharedAlbumPlaceholderImageForWindow:v26];
      }

      else
      {
        v12 = PULocalizedString(@"ALBUM_LIST_CREATE_NEW_ALBUM_PLACEHOLDER_TITLE");
        v25 = [(PUAlbumListViewController *)self spec];
        v26 = [v8 window];
        [v25 emptyAlbumPlaceholderImageForWindow:v26];
      }
      v15 = ;

      [(PUAlbumListViewController *)self _updateStackView:v56 forAssets:0 collection:0 withCustomEmptyPlaceholderImage:v15];
      [v8 setCustomImageView:0];
      goto LABEL_40;
    }

    v11 = 0;
    v12 = 0;
    if (v9 != 2)
    {
      goto LABEL_42;
    }

    v16 = [(PUAlbumListViewController *)self spec];
    v17 = [v16 shouldUseCollageForCloudFeedPlaceholder];

    v67 = 0u;
    v68 = 0u;
    v18 = [(PUAlbumListViewController *)self dataSource];
    v19 = v18;
    if (v18)
    {
      [v18 firstItemIndexPath];
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
    }

    if (v67 != *MEMORY[0x1E69C4880])
    {
      v42 = [(PUAlbumListViewController *)self dataSource];
      *location = v67;
      v66 = v68;
      v15 = [v42 objectAtIndexPath:location];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v15)
        {
          if (!v17)
          {
            v43 = [(PUAlbumListViewController *)self _visibleAssetsForCollection:v15];
            goto LABEL_38;
          }

          v43 = [(PUAlbumListViewController *)self _visibleAssetsForCollection:v15 maximumNumberOfVisibleAssets:+[PUCollageView correspondingCollections:"maximumNumberOfItems"], 0];
LABEL_33:
          if ([v43 count])
          {
            aggregateCollageView = self->_aggregateCollageView;
            if (!aggregateCollageView)
            {
              v46 = [PUCollageView alloc];
              v47 = [(PUCollageView *)v46 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
              v48 = self->_aggregateCollageView;
              self->_aggregateCollageView = v47;

              aggregateCollageView = self->_aggregateCollageView;
            }

            [(PUAlbumListViewController *)self _updateCollageView:aggregateCollageView forAssets:v43];
            [v8 setCustomImageView:self->_aggregateCollageView];
            goto LABEL_39;
          }

LABEL_38:
          v49 = [(PUAlbumListViewController *)self spec];
          v50 = [v8 window];
          v51 = [v49 emptyAlbumPlaceholderImageForWindow:v50];

          [(PUAlbumListViewController *)self _updateStackView:v56 forAssets:v43 collection:0 withCustomEmptyPlaceholderImage:v51];
          [v8 setCustomImageView:0];

LABEL_39:
          v12 = PULocalizedString(@"ALL_PHOTOS_IN_FOLDER");

LABEL_40:
          v10 = 0;
          v11 = 0;
          goto LABEL_41;
        }
      }

      else
      {
      }
    }

    v43 = 0;
    v15 = 0;
    if (!v17)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v9 <= 4)
  {
    if (v9 != 3)
    {
      v44 = [MEMORY[0x1E696AAA8] currentHandler];
      [v44 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:1271 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v15 = [(PUAlbumListViewController *)self _keyAssetsForMoments];
    v20 = [(PUAlbumListViewController *)self spec];
    v21 = [v8 window];
    v22 = [v20 emptyAlbumPlaceholderImageForWindow:v21];

    [(PUAlbumListViewController *)self _updateStackView:v56 forAssets:v15 collection:0 withCustomEmptyPlaceholderImage:v22];
    [v8 setCustomImageView:0];
    v12 = PULocalizedString(@"ALL_PHOTOS_IN_LIBRARY");
    v23 = [(PUAlbumListViewController *)self _fontManager];
    v11 = [v23 albumListTitleLabelFont];

    v10 = 0;
    goto LABEL_41;
  }

  if (v9 == 5)
  {
    v12 = PULocalizedString(@"PLACES_ALBUM_TITLE");
    v24 = [(PUAlbumListViewController *)self collectionAtIndexPath:v55];
    if ([v24 px_isPlacesSmartAlbum])
    {
      v15 = v24;
    }

    else
    {
      v15 = 0;
    }

    v53 = v24;
    v27 = ([v56 tag] + 1);
    [v56 setTag:v27];
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__PUAlbumListViewController_updatePlaceholderListCellContentView_forItemAtIndexPath_animated___block_invoke;
    aBlock[3] = &unk_1E7B74DD8;
    v28 = v56;
    v61 = v28;
    v64[1] = v27;
    objc_copyWeak(v64, location);
    v62 = v8;
    v63 = &v69;
    v29 = _Block_copy(aBlock);
    v54 = [(PUAlbumListViewController *)self px_extendedTraitCollection];
    if (!self->__placesAlbumCoverProvider)
    {
      v30 = [objc_alloc(MEMORY[0x1E69C3910]) initWithDelegate:self andPlacesCollection:v15];
      placesAlbumCoverProvider = self->__placesAlbumCoverProvider;
      self->__placesAlbumCoverProvider = v30;
    }

    v32 = [(PUAlbumListViewController *)self _placesAlbumCoverProvider];
    v33 = [v28 traitCollection];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __94__PUAlbumListViewController_updatePlaceholderListCellContentView_forItemAtIndexPath_animated___block_invoke_2;
    v58[3] = &unk_1E7B74E00;
    v34 = v29;
    v59 = v34;
    [v32 requestPlacesAlbumCover:v54 snapshotTraitCollection:v33 completion:v58];

    v35 = *(MEMORY[0x1E69C4840] + 16);
    v67 = *MEMORY[0x1E69C4840];
    v68 = v35;
    [v28 setBadgeInfo:&v67 forItemAtIndex:0];
    v36 = [(PUAlbumListViewController *)self spec];
    v37 = [v36 shouldUseTableView];
    v38 = +[PUInterfaceManager currentTheme];
    v39 = [v38 albumCornersBackgroundColor];
    [v28 setHasRoundedCorners:v37 ^ 1u withCornersBackgroundColor:v39];

    v40 = [(PUAlbumListViewController *)self _fontManager];
    v11 = [v40 albumListTitleLabelFont];

    v41 = [(PUAlbumListViewController *)self _fontManager];
    v10 = [v41 albumListSubtitleLabelFont];

    objc_destroyWeak(v64);
    objc_destroyWeak(location);

    goto LABEL_41;
  }

  v11 = 0;
  v12 = 0;
  if (v9 == 6)
  {
    v13 = [(PUAlbumListViewController *)self spec];
    v14 = [v8 window];
    v15 = [v13 emptyAlbumPlaceholderImageForWindow:v14];

    [(PUAlbumListViewController *)self _updateStackView:v56 forAssets:0 collection:0 withCustomEmptyPlaceholderImage:v15];
    [v8 setCustomImageView:0];
    v10 = 0;
    v11 = 0;
    v12 = @"Memories";
LABEL_41:
  }

LABEL_42:
  v52 = [(PUAlbumListViewController *)self spec];
  [v8 setLayout:{objc_msgSend(v52, "cellContentViewLayout")}];

  [v8 setTitle:v12];
  [v8 setSubtitle:v70[5]];
  [v8 setEditCapabilities:0];
  [v8 setEditing:-[PUAlbumListViewController isEditing](self animated:{"isEditing"), v57}];
  [v8 setEnabled:1 animated:v57];
  [v8 setTitleFont:v11];
  [v8 setSubtitleFont:v10];

  _Block_object_dispose(&v69, 8);
}

void __94__PUAlbumListViewController_updatePlaceholderListCellContentView_forItemAtIndexPath_animated___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  if ([*(a1 + 32) tag] == *(a1 + 64))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v6 = WeakRetained;
    if (v18)
    {
      [WeakRetained _prepareStackView:*(a1 + 32) forCollection:0 withStackCount:0 withCustomEmptyPlaceHolderImage:?];
    }

    else
    {
      v7 = [WeakRetained spec];
      v8 = [*(a1 + 40) window];
      v9 = [v7 emptyAlbumPlaceholderImageForWindow:v8];

      v10 = objc_loadWeakRetained((a1 + 56));
      [v10 _prepareStackView:*(a1 + 32) forCollection:0 withStackCount:0 withCustomEmptyPlaceHolderImage:v9];

      v6 = v9;
    }

    [*(a1 + 40) setCustomImageView:0];
    if (a3)
    {
      v11 = PLSharedCountFormatter();
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v13 = [v11 stringFromNumber:v12];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    else
    {
      v16 = *(*(a1 + 48) + 8);
      v17 = @" ";
      v11 = *(v16 + 40);
      *(v16 + 40) = @" ";
    }

    [*(a1 + 40) setSubtitle:*(*(*(a1 + 48) + 8) + 40)];
  }
}

void __94__PUAlbumListViewController_updatePlaceholderListCellContentView_forItemAtIndexPath_animated___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v12 = *(a1 + 32);
  v11 = v8;
  v9 = v8;
  v10 = v7;
  px_dispatch_on_main_queue();
}

- (void)setTitleForCell:(id)a3 withCollection:(id)a4
{
  v5 = a3;
  v6 = [a4 localizedTitle];
  [v5 setTitle:v6];
}

- (void)updateAlbumListCellContentView:(id)a3 forItemAtIndexPath:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(PUAlbumListViewController *)self collectionAtIndexPath:a4];
  [v8 setEditCapabilities:-[PUAlbumListViewController _editCapabilitiesForAlbum:](self animated:{"_editCapabilitiesForAlbum:", v9), v5}];
  [v8 setEnabled:-[PUAlbumListViewController shouldEnableCollection:](self animated:{"shouldEnableCollection:", v9), v5}];
  v10 = [(PUAlbumListViewController *)self spec];
  v11 = [v10 cellContentViewLayout];

  [v8 setLayout:v11];
  v12 = [(PUAlbumListViewController *)self sessionInfo];
  if ([v12 showCheckmarkOnSourceAlbum])
  {
    v13 = [v12 sourceAlbum];
    [v8 setShowsCheckmarkView:{objc_msgSend(v13, "isEqual:", v9)}];
  }

  else
  {
    [v8 setShowsCheckmarkView:0];
  }

  v14 = [v8 stackView];
  v32 = 0;
  v15 = [(PUAlbumListViewController *)self _visibleAssetsForCollection:v9 correspondingCollections:&v32];
  v16 = v32;
  if (v15)
  {
    v17 = [v15 count];
    if (([v9 px_isMacSyncedFacesFolder] & 1) == 0)
    {
      if (v17)
      {
        v29 = v16;
        v18 = 0;
        [(PUAlbumListViewController *)self _updateStackView:v14 forAssets:v15 collection:v9 withCustomEmptyPlaceholderImage:0, v29];
LABEL_14:

        v16 = v30;
        goto LABEL_15;
      }

LABEL_10:
      v19 = [(PUAlbumListViewController *)self spec];
      v20 = [v9 px_isSharedAlbum];
      v21 = [v8 window];
      if (v20)
      {
        [v19 emptySharedAlbumPlaceholderImageForWindow:v21];
      }

      else
      {
        [v19 emptyAlbumPlaceholderImageForWindow:v21];
      }
      v18 = ;

      [(PUAlbumListViewController *)self _updateStackView:v14 forAssets:v15 collection:v9 withCustomEmptyPlaceholderImage:v18, v31];
      goto LABEL_14;
    }
  }

  else if (![v9 px_isMacSyncedFacesFolder])
  {
    goto LABEL_10;
  }

  [(PUAlbumListViewController *)self _updateStackView:v14 forFaces:v15 inCollection:v9 withCustomEmptyPlaceholderImage:0];
LABEL_15:
  v22 = [(PUAlbumListViewController *)self spec];
  v23 = [v22 showsDeleteButtonOnCellContentView];

  [v8 setShowsDeleteButtonWhenEditing:v23];
  [v8 setEditing:-[PUAlbumListViewController isEditing](self animated:{"isEditing"), v5}];
  [(PUAlbumListViewController *)self setTitleForCell:v8 withCollection:v9];
  v24 = [(PUAlbumListViewController *)self subtitleForCollection:v9];
  [v8 setSubtitle:v24 animated:v5];
  v25 = [(PUAlbumListViewController *)self _fontManager];
  v26 = [v25 albumListTitleLabelFont];
  [v8 setTitleFont:v26];

  v27 = [(PUAlbumListViewController *)self _fontManager];
  v28 = [v27 albumListSubtitleLabelFont];
  [v8 setSubtitleFont:v28];
}

- (void)updateListCellForItemAtIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([(PUAlbumListViewController *)self isPlaceholderAtIndexPath:?])
  {
    v6 = [(PUAlbumListViewController *)self _preparedPlaceholderListCellContentViewAtIndexPath:v7];
    if (v6)
    {
      [(PUAlbumListViewController *)self updatePlaceholderListCellContentView:v6 forItemAtIndexPath:v7 animated:v4];
    }
  }

  else
  {
    v6 = [(PUAlbumListViewController *)self _preparedAlbumListCellContentViewAtIndexPath:v7];
    if (v6)
    {
      [(PUAlbumListViewController *)self updateAlbumListCellContentView:v6 forItemAtIndexPath:v7 animated:v4];
    }
  }
}

- (void)_updateAddNewAlbumPlaceholderAnimated:(BOOL)a3
{
  v3 = a3;
  v10 = [(PUAlbumListViewController *)self sessionInfo];
  if ([v10 isSelectingTargetAlbum] && !-[PUAlbumListViewController _aboutToCreateAlbum](self, "_aboutToCreateAlbum"))
  {
    v5 = [v10 excludesNewAlbumCreation] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  if (self->_showAddNewAlbumPlaceholder != v5)
  {
    v6 = [(PUAlbumListViewController *)self indexPathForAddNewAlbumPlaceholder];
    self->_showAddNewAlbumPlaceholder = v5;
    v7 = [(PUAlbumListViewController *)self indexPathForAddNewAlbumPlaceholder];
    if (v6 == v7 || ([v6 isEqual:v7] & 1) != 0 || !-[PUAlbumListViewController isViewInSyncWithModel](self, "isViewInSyncWithModel"))
    {
      goto LABEL_17;
    }

    if (!v3)
    {
      [(PUAlbumListViewController *)self reloadContentView];
LABEL_17:

      goto LABEL_18;
    }

    if (v6)
    {
      v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v6];
      if (v7)
      {
LABEL_12:
        v9 = [MEMORY[0x1E695DEC8] arrayWithObject:v7];
LABEL_16:
        [(PUAlbumListViewController *)self _performBatchUpdates:0 withDeletedSections:0 insertedSections:0 changedSections:0 deletedItemsIndexPaths:v8 insertedItemsIndexPaths:v9 changedItemsIndexPaths:0 movedItemsFromIndexPaths:0 movedItemsToIndexPaths:0 completionHandler:0];

        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    v9 = 0;
    goto LABEL_16;
  }

LABEL_18:
}

- (void)_updateEmptyPlaceholder
{
  if ([(PUAlbumListViewController *)self isViewLoaded])
  {
    if ([(PUAlbumListViewController *)self isEmpty]&& [(PUAlbumListViewController *)self showsEmptyPlaceholderWhenEmpty])
    {
      v3 = [(PUAlbumListViewController *)self dataSourceManager];
      v11 = [v3 collectionList];

      if ([v11 px_isFolder] && (objc_msgSend(v11, "px_isSmartFolder") & 1) == 0 && !-[PUAlbumListViewController isRootFolder](self, "isRootFolder"))
      {
        [(PUAlbumListViewController *)self isRootSharedAlbumList];
      }

      v4 = [(PUAlbumListViewController *)self dataSourceManager];
      v5 = [MEMORY[0x1E69DC8C8] emptyConfiguration];
      v6 = [v4 collectionsFetchResult];
      v7 = PXPhotoKitLocalizedTitleForEmptyCollectionListFetchResult();
      [v5 setText:v7];

      v8 = [v4 collectionsFetchResult];
      v9 = PXPhotoKitLocalizedMessageForEmptyCollectionListFetchResult();
      v10 = [v9 string];
      [v5 setSecondaryText:v10];

      [(PUAlbumListViewController *)self _setContentUnavailableConfiguration:v5];
    }

    else
    {

      [(PUAlbumListViewController *)self _setContentUnavailableConfiguration:0];
    }
  }
}

- (void)_updateNavigationBannerAnimated:(BOOL)a3
{
  v3 = a3;
  v30 = *MEMORY[0x1E69E9840];
  v5 = [(PUAlbumListViewController *)self sessionInfo];
  v6 = [(PUAlbumListViewController *)self _pickerBannerView];
  if (v6)
  {
    if ([v5 promptLocation] == 1)
    {
      v7 = [v5 localizedPrompt];
    }

    else
    {
      v7 = 0;
    }

    if ([v5 isSelectingTargetAlbum])
    {
      v8 = [v5 transferredAssets];
    }

    else
    {
      v8 = 0;
    }

    if ([v8 count])
    {
      v22 = v7;
      v23 = v3;
      v24 = v5;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v21 = v8;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        do
        {
          v14 = 0;
          do
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v25 + 1) + 8 * v14);
            v16 = [MEMORY[0x1E69BF248] defaultFormatChooser];
            v17 = [v16 indexSheetUnbakedFormat];
            v18 = [v15 imageWithFormat:objc_msgSend(v17, "formatID")];

            if (v18)
            {
              [v9 addObject:v18];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v12);
      }

      if ([v9 count])
      {
        v19 = v9;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      v5 = v24;
      v3 = v23;
      v8 = v21;
      v7 = v22;
    }

    else
    {
      v20 = 0;
    }

    [v6 setTitle:{v7, v21}];
    [v6 setImages:v20];
    [v6 setLeftView:0 animated:v3];
    [v6 setRightView:0 animated:v3];
  }
}

- (id)_pickerBannerView
{
  v2 = [(PUAlbumListViewController *)self navigationItem];
  v3 = [v2 pu_banner];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 bannerView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updatePeripheralInterfaceAnimated:(BOOL)a3
{
  v3 = a3;
  [(PUAlbumListViewController *)self _updateEmptyPlaceholder];
  [(PUAlbumListViewController *)self updateNavigationBarAnimated:v3];

  [(PUAlbumListViewController *)self _updateNavigationBannerAnimated:v3];
}

- (id)_preparedAlbumListCellContentViewAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PUAlbumListViewController *)self _mainCollectionView];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 cellForItemAtIndexPath:v4];
      v8 = [v7 albumListCellContentView];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(PUAlbumListViewController *)self _mainTableView];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 cellForRowAtIndexPath:v4];
      v12 = [v11 viewWithTag:236897];

      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)indexPathForAlbumListCellContentView:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(PUAlbumListViewController *)self _mainCollectionView];
  v6 = [v5 visibleCells];

  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = *v27;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if ([v4 isDescendantOfView:v10])
        {
          v11 = [(PUAlbumListViewController *)self _mainCollectionView];
          v7 = [v11 indexPathForCell:v10];

          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [(PUAlbumListViewController *)self _mainTableView];
  v13 = [v12 visibleCells];

  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    while (2)
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        if ([v4 isDescendantOfView:v18])
        {
          v19 = [(PUAlbumListViewController *)self _mainTableView];
          v20 = [v19 indexPathForCell:v18];

          v7 = v20;
          goto LABEL_21;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  return v7;
}

- (id)indexPathsForItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PUAlbumListViewController *)self _mainCollectionView];
  if (v8)
  {
    v9 = [(PUAlbumListViewController *)self _mainCollectionViewLayout];
    [v9 assetIndexPathsForElementsInRect:{x, y, width, height}];
  }

  else
  {
    v9 = [(PUAlbumListViewController *)self _mainTableView];
    [v9 indexPathsForRowsInRect:{x, y, width, height}];
  }
  v10 = ;

  return v10;
}

- (id)indexPathForItemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PUAlbumListViewController *)self _mainCollectionView];
  if (v6)
  {
    v7 = [(PUAlbumListViewController *)self _mainCollectionView];
    [v7 indexPathForItemAtPoint:{x, y}];
  }

  else
  {
    v7 = [(PUAlbumListViewController *)self _mainTableView];
    [v7 indexPathForRowAtPoint:{x, y}];
  }
  v8 = ;

  return v8;
}

- (id)indexPathsForVisibleItems
{
  v3 = [(PUAlbumListViewController *)self _mainCollectionView];
  if (v3)
  {
    v4 = [(PUAlbumListViewController *)self _mainCollectionView];
    [v4 indexPathsForVisibleItems];
  }

  else
  {
    v4 = [(PUAlbumListViewController *)self _mainTableView];
    [v4 indexPathsForVisibleRows];
  }
  v5 = ;

  return v5;
}

- (void)_enumerateIndexPathsForPreparedItemsUsingBlock:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUAlbumListViewController *)self _mainCollectionView];
  v6 = [v5 isPrefetchingEnabled];
  [v5 setPrefetchingEnabled:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(PUAlbumListViewController *)self indexPathsForVisibleItems];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [v5 setPrefetchingEnabled:v6];
}

- (void)_performBatchUpdates:(id)a3 withDeletedSections:(id)a4 insertedSections:(id)a5 changedSections:(id)a6 deletedItemsIndexPaths:(id)a7 insertedItemsIndexPaths:(id)a8 changedItemsIndexPaths:(id)a9 movedItemsFromIndexPaths:(id)a10 movedItemsToIndexPaths:(id)a11 completionHandler:(id)a12
{
  v80 = *MEMORY[0x1E69E9840];
  v52 = a3;
  v18 = a4;
  v19 = a5;
  v48 = a6;
  v20 = a7;
  v50 = a8;
  v53 = a9;
  v51 = a10;
  v21 = a11;
  v22 = a12;
  if ([v18 count])
  {
    v23 = 1;
    v24 = v52;
LABEL_5:
    v25 = v50;
    goto LABEL_6;
  }

  v24 = v52;
  if ([v19 count])
  {
    v23 = 1;
    goto LABEL_5;
  }

  v25 = v50;
  if ([v48 count] || objc_msgSend(v20, "count") || objc_msgSend(v50, "count") || objc_msgSend(v51, "count") || objc_msgSend(v21, "count"))
  {
    v23 = 1;
  }

  else
  {
    if (![v53 count])
    {
      goto LABEL_52;
    }

    v23 = 0;
  }

LABEL_6:
  v49 = [(PUAlbumListViewController *)self _mainCollectionView];
  if (v49)
  {
    if (v23)
    {
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __239__PUAlbumListViewController__performBatchUpdates_withDeletedSections_insertedSections_changedSections_deletedItemsIndexPaths_insertedItemsIndexPaths_changedItemsIndexPaths_movedItemsFromIndexPaths_movedItemsToIndexPaths_completionHandler___block_invoke;
      v65[3] = &unk_1E7B74DA8;
      v65[4] = self;
      v73 = v24;
      v66 = v49;
      v67 = v18;
      v68 = v19;
      v69 = v20;
      v70 = v25;
      v71 = v51;
      v72 = v21;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __239__PUAlbumListViewController__performBatchUpdates_withDeletedSections_insertedSections_changedSections_deletedItemsIndexPaths_insertedItemsIndexPaths_changedItemsIndexPaths_movedItemsFromIndexPaths_movedItemsToIndexPaths_completionHandler___block_invoke_3;
      v61[3] = &unk_1E7B7D308;
      v62 = v53;
      v63 = self;
      v64 = v22;
      v24 = v52;
      [v66 performBatchUpdates:v65 completion:v61];
    }

    else
    {
      v46 = v21;
      v26 = v20;
      v27 = v19;
      if (v24)
      {
        v24[2](v24);
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v28 = v53;
      v29 = [v28 countByEnumeratingWithState:&v74 objects:v79 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v75;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v75 != v31)
            {
              objc_enumerationMutation(v28);
            }

            [(PUAlbumListViewController *)self updateListCellForItemAtIndexPath:*(*(&v74 + 1) + 8 * i) animated:1];
          }

          v30 = [v28 countByEnumeratingWithState:&v74 objects:v79 count:16];
        }

        while (v30);
      }

      v19 = v27;
      v20 = v26;
      v24 = v52;
      v21 = v46;
      if (v22)
      {
        (*(v22 + 2))(v22, 1);
      }
    }
  }

  v33 = [(PUAlbumListViewController *)self _mainTableView];
  if (!v33)
  {
    goto LABEL_51;
  }

  v34 = [(PUAlbumListViewController *)self _ignoredReorderNotificationCount];
  v35 = v34 - 1;
  if (v34 >= 1 && ![v20 count] && !objc_msgSend(v25, "count") && !objc_msgSend(v53, "count"))
  {
    [(PUAlbumListViewController *)self _setIgnoredReorderNotificationCount:v35];
    if (!v22)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (v24)
  {
    [v33 beginUpdates];
    v24[2](v24);
  }

  else
  {
    if (![v20 count] && !objc_msgSend(v25, "count") && !objc_msgSend(v51, "count") && !objc_msgSend(v18, "count") && !objc_msgSend(v19, "count"))
    {
      goto LABEL_42;
    }

    [v33 beginUpdates];
  }

  if ([v18 count])
  {
    [v33 deleteSections:v18 withRowAnimation:0];
  }

  if ([v19 count])
  {
    [v33 insertSections:v19 withRowAnimation:0];
  }

  if ([v20 count])
  {
    [v33 deleteRowsAtIndexPaths:v20 withRowAnimation:0];
  }

  if ([v25 count])
  {
    [v33 insertRowsAtIndexPaths:v25 withRowAnimation:0];
  }

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __239__PUAlbumListViewController__performBatchUpdates_withDeletedSections_insertedSections_changedSections_deletedItemsIndexPaths_insertedItemsIndexPaths_changedItemsIndexPaths_movedItemsFromIndexPaths_movedItemsToIndexPaths_completionHandler___block_invoke_4;
  v58[3] = &unk_1E7B74D80;
  v59 = v21;
  v36 = v33;
  v60 = v36;
  [v51 enumerateObjectsUsingBlock:v58];
  [v36 endUpdates];

LABEL_42:
  v47 = v22;
  v37 = v21;
  v38 = v20;
  v39 = v18;
  v40 = v19;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v41 = v53;
  v42 = [v41 countByEnumeratingWithState:&v54 objects:v78 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v55;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v55 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(PUAlbumListViewController *)self updateListCellForItemAtIndexPath:*(*(&v54 + 1) + 8 * j) animated:1];
      }

      v43 = [v41 countByEnumeratingWithState:&v54 objects:v78 count:16];
    }

    while (v43);
  }

  v19 = v40;
  v18 = v39;
  v20 = v38;
  v25 = v50;
  v24 = v52;
  v21 = v37;
  v22 = v47;
  if (!v47)
  {
    goto LABEL_51;
  }

LABEL_50:
  (*(v22 + 2))(v22, 1);
LABEL_51:

LABEL_52:
}

void __239__PUAlbumListViewController__performBatchUpdates_withDeletedSections_insertedSections_changedSections_deletedItemsIndexPaths_insertedItemsIndexPaths_changedItemsIndexPaths_movedItemsFromIndexPaths_movedItemsToIndexPaths_completionHandler___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) indexPathForAggregateItem];
  v3 = *(a1 + 96);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = [*(a1 + 32) indexPathForAggregateItem];
  if (v2 != v4 && ([v2 isEqual:v4] & 1) == 0)
  {
    if (v2)
    {
      v5 = *(a1 + 40);
      v14[0] = v2;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v5 deleteItemsAtIndexPaths:v6];
    }

    if (v4)
    {
      v7 = *(a1 + 40);
      v13 = v4;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      [v7 insertItemsAtIndexPaths:v8];
    }
  }

  if ([*(a1 + 48) count])
  {
    [*(a1 + 40) deleteSections:*(a1 + 48)];
  }

  if ([*(a1 + 56) count])
  {
    [*(a1 + 40) insertSections:*(a1 + 56)];
  }

  if ([*(a1 + 64) count])
  {
    [*(a1 + 40) deleteItemsAtIndexPaths:*(a1 + 64)];
  }

  if ([*(a1 + 72) count])
  {
    [*(a1 + 40) insertItemsAtIndexPaths:*(a1 + 72)];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __239__PUAlbumListViewController__performBatchUpdates_withDeletedSections_insertedSections_changedSections_deletedItemsIndexPaths_insertedItemsIndexPaths_changedItemsIndexPaths_movedItemsFromIndexPaths_movedItemsToIndexPaths_completionHandler___block_invoke_2;
  v10[3] = &unk_1E7B74D80;
  v9 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 40);
  [v9 enumerateObjectsUsingBlock:v10];
}

uint64_t __239__PUAlbumListViewController__performBatchUpdates_withDeletedSections_insertedSections_changedSections_deletedItemsIndexPaths_insertedItemsIndexPaths_changedItemsIndexPaths_movedItemsFromIndexPaths_movedItemsToIndexPaths_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) updateListCellForItemAtIndexPath:*(*(&v10 + 1) + 8 * v8++) animated:{1, v10}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void __239__PUAlbumListViewController__performBatchUpdates_withDeletedSections_insertedSections_changedSections_deletedItemsIndexPaths_insertedItemsIndexPaths_changedItemsIndexPaths_movedItemsFromIndexPaths_movedItemsToIndexPaths_completionHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndex:a3];
  [*(a1 + 40) moveRowAtIndexPath:v6 toIndexPath:v7];
}

void __239__PUAlbumListViewController__performBatchUpdates_withDeletedSections_insertedSections_changedSections_deletedItemsIndexPaths_insertedItemsIndexPaths_changedItemsIndexPaths_movedItemsFromIndexPaths_movedItemsToIndexPaths_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndex:a3];
  [*(a1 + 40) moveItemAtIndexPath:v6 toIndexPath:v7];
}

- (void)_visiblyInsertItemAtIndexPath:(id)a3 modelUpdate:(id)a4 completionHandler:(id)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PUAlbumListViewController *)self _mainCollectionView];
  if (v11)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __89__PUAlbumListViewController__visiblyInsertItemAtIndexPath_modelUpdate_completionHandler___block_invoke;
    v23[3] = &unk_1E7B7C590;
    v23[4] = self;
    v26 = v9;
    v24 = v11;
    v25 = v8;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __89__PUAlbumListViewController__visiblyInsertItemAtIndexPath_modelUpdate_completionHandler___block_invoke_2;
    v18 = &unk_1E7B74D58;
    v19 = self;
    v20 = v25;
    v21 = v24;
    v22 = v10;
    [v21 performBatchUpdates:v23 completion:&v15];
  }

  v12 = [(PUAlbumListViewController *)self _mainTableView:v15];
  v13 = v12;
  if (v8 && v12)
  {
    [v12 beginUpdates];
    if (v9)
    {
      v9[2](v9);
    }

    v27[0] = v8;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    [v13 insertRowsAtIndexPaths:v14 withRowAnimation:0];

    [v13 endUpdates];
    [(PUAlbumListViewController *)self scrollToItemAtIndexPath:v8 centered:1 animated:1];
    if (v10)
    {
      v10[2](v10);
    }
  }
}

void __89__PUAlbumListViewController__visiblyInsertItemAtIndexPath_modelUpdate_completionHandler___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) indexPathForAggregateItem];
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = [*(a1 + 32) indexPathForAggregateItem];
  if (v2 != v4 && ([v2 isEqual:v4] & 1) == 0)
  {
    if (v2)
    {
      v5 = *(a1 + 40);
      v13[0] = v2;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [v5 deleteItemsAtIndexPaths:v6];
    }

    if (v4)
    {
      v7 = *(a1 + 40);
      v12 = v4;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
      [v7 insertItemsAtIndexPaths:v8];
    }
  }

  v9 = *(a1 + 40);
  v11 = *(a1 + 48);
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  [v9 insertItemsAtIndexPaths:v10];
}

void __89__PUAlbumListViewController__visiblyInsertItemAtIndexPath_modelUpdate_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) indexPathsForVisibleItems];
  if ([v2 containsObject:*(a1 + 40)])
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  else
  {
    [*(a1 + 48) scrollToItemAtIndexPath:*(a1 + 40) atScrollPosition:0 animated:1];
    [*(a1 + 32) _setPendingScrollingAnimationEndBlock:*(a1 + 56)];
    objc_initWeak(&location, *(a1 + 32));
    v4 = dispatch_time(0, 2000000000);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __89__PUAlbumListViewController__visiblyInsertItemAtIndexPath_modelUpdate_completionHandler___block_invoke_3;
    v5[3] = &unk_1E7B80638;
    objc_copyWeak(&v6, &location);
    dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __89__PUAlbumListViewController__visiblyInsertItemAtIndexPath_modelUpdate_completionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePendingScrollingAnimationEndBlock];
}

- (id)mainScrollView
{
  v3 = [(PUAlbumListViewController *)self _mainCollectionView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PUAlbumListViewController *)self _mainTableView];
  }

  v6 = v5;

  return v6;
}

- (void)deselectSelectedItemAnimated:(BOOL)a3
{
  v3 = a3;
  v10 = [(PUAlbumListViewController *)self _mainCollectionView];
  if (v10)
  {
    v5 = [v10 indexPathsForSelectedItems];
    v6 = [v5 firstObject];

    [v10 deselectItemAtIndexPath:v6 animated:v3];
  }

  v7 = [(PUAlbumListViewController *)self _mainTableView];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 indexPathForSelectedRow];
    [v8 deselectRowAtIndexPath:v9 animated:v3];
  }
}

- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = [(PUAlbumListViewController *)self _mainCollectionView];
  [v8 selectItemAtIndexPath:v6 animated:v4 scrollPosition:0];
  v7 = [(PUAlbumListViewController *)self _mainTableView];
  [v7 selectRowAtIndexPath:v6 animated:v4 scrollPosition:0];
}

- (void)scrollToItemAtIndexPath:(id)a3 centered:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v14 = a3;
  v8 = [(PUAlbumListViewController *)self _mainCollectionView];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v10 = 18;
    }

    else
    {
      v10 = 0;
    }

    [v8 scrollToItemAtIndexPath:v14 atScrollPosition:v10 animated:v5];
  }

  v11 = [(PUAlbumListViewController *)self _mainTableView];
  v12 = v11;
  if (v11)
  {
    if (v6)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    [v11 scrollToRowAtIndexPath:v14 atScrollPosition:v13 animated:v5];
  }
}

- (void)reloadContentView
{
  v3 = [(PUAlbumListViewController *)self _mainCollectionView];
  [v3 reloadData];

  v4 = [(PUAlbumListViewController *)self _mainTableView];
  [v4 reloadData];
}

- (id)collectionAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUAlbumListViewController *)self albumsSections];
  v7 = v6;
  v8 = [v4 section];
  v9 = 0;
  if (v8 >= v5 && v8 - v5 < v7)
  {
    v10 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v4 inSection:{"item"), objc_msgSend(v4, "section") - v5}];
    v11 = [(PUAlbumListViewController *)self dataSource];
    v9 = [v11 collectionAtIndexPath:v10];
  }

  return v9;
}

- (id)indexPathForCollection:(id)a3
{
  v4 = a3;
  v5 = [(PUAlbumListViewController *)self dataSource];
  v6 = [v5 indexPathForCollection:v4];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v6 inSection:{"item"), -[PUAlbumListViewController albumsSections](self, "albumsSections") + objc_msgSend(v6, "section")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_someAlbumSupportsEditing
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(PUAlbumListViewController *)self dataSource];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PUAlbumListViewController__someAlbumSupportsEditing__block_invoke;
  v5[3] = &unk_1E7B74D30;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 enumerateCollectionsUsingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __54__PUAlbumListViewController__someAlbumSupportsEditing__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) _editCapabilitiesForAlbum:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (unint64_t)_editCapabilitiesForAlbum:(id)a3
{
  v4 = a3;
  v5 = [(PUAlbumListViewController *)self dataSourceManager];
  v6 = [v5 canDeleteCollection:v4];
  if ([v5 canRenameCollection:v4])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 canReorderCollection:v4];

  if (v8)
  {
    v9 = v7 | 4;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (BOOL)shouldEnableCollection:(id)a3
{
  v4 = a3;
  v5 = [(PUAlbumListViewController *)self sessionInfo];
  v6 = [v5 sourceAlbum];
  if ([v4 isEqual:v6])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(PUAlbumListViewController *)self sessionInfo];
    v9 = [v8 targetAlbum];
    v10 = [v4 isEqual:v9];

    if (v10)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v5 = [(PUAlbumListViewController *)self sessionInfo];
    if (![v5 isSelectingTargetAlbum])
    {
      v7 = 1;
      goto LABEL_4;
    }

    v6 = [(PUAlbumListViewController *)self sessionInfo];
    if ([v6 allowSelectingNonEditableAlbums])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v4 canPerformEditOperation:3];
    }
  }

LABEL_4:
LABEL_7:

  return v7 & 1;
}

- (void)updateNavigationBarAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUAlbumListViewController *)self dataSourceManager];
  v6 = [v5 canEditAlbums];

  v34 = [(PUAlbumListViewController *)self isEditing];
  v7 = [(PUAlbumListViewController *)self sessionInfo];
  v8 = [v7 isSelectingAssets];

  v9 = [(PUAlbumListViewController *)self sessionInfo];
  v10 = [v9 isSelectingTargetAlbum];

  v11 = [(PUAlbumListViewController *)self navigationController];
  v12 = [v11 viewControllers];
  if ([v12 indexOfObject:self])
  {
    v13 = [(PUAlbumListViewController *)self navigationItem];
    v14 = [v13 hidesBackButton];
  }

  else
  {
    v14 = 1;
  }

  v15 = [(PUAlbumListViewController *)self sessionInfo];
  v16 = [v15 isForAssetPicker];

  v35 = [(PUAlbumListViewController *)self title];
  v17 = [(PUAlbumListViewController *)self sessionInfo];
  v18 = [v17 promptLocation];

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v20 = [(PUAlbumListViewController *)self sessionInfo];
    v19 = [v20 localizedPrompt];
  }

  v21 = 0;
  if (!(v8 & 1 | ((v6 & 1) == 0) | v10 & 1) && ((v14 | v34) & 1) != 0)
  {
    v21 = [(PUAlbumListViewController *)self _albumCreationButtonItem];
  }

  v22 = [(PUAlbumListViewController *)self navigationItem];
  if ((v16 & 1) == 0)
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = [(PUAlbumListViewController *)self sharedLibraryStatusProvider];
    if (!-[PUAlbumListViewController isRootSharedAlbumList](self, "isRootSharedAlbumList") && [v24 hasSharedLibraryOrPreview])
    {
      [(PUAlbumListViewController *)self libraryFilterState];
      v25 = v33 = v3;
      [v24 hasPreview];
      PXSharedLibrarySwitchLibraryButtonItems();
      v26 = v32 = v6;
      [v23 addObjectsFromArray:v26];

      v6 = v32;
      v3 = v33;
    }

    if (v8)
    {
      v27 = [(PUAlbumListViewController *)self _doneButtonItem];
    }

    else if (v10)
    {
      v27 = [(PUAlbumListViewController *)self _cancelButtonItem];
    }

    else
    {
      if (!v34 && !v6)
      {
        goto LABEL_22;
      }

      v27 = [(PUAlbumListViewController *)self editButtonItem];
    }

    v28 = v27;
    [v23 addObject:v27];

LABEL_22:
    v29 = [v22 leftBarButtonItem];
    v30 = v29;
    if (v29 == v21)
    {
    }

    else
    {
      v31 = [v29 isEqual:v21];

      if ((v31 & 1) == 0)
      {
        [v22 setLeftBarButtonItem:v21 animated:v3];
      }
    }

    [v22 setRightBarButtonItems:v23 animated:v3];
  }

  [v22 setPrompt:v19];
  [v22 setTitle:v35];
}

- (BOOL)_updateInterfaceForIncrementalModelChangeHandler:(id)a3 withSectionedChangeDetails:(id)a4 animated:(BOOL)a5
{
  v24 = a5;
  v7 = a4;
  v8 = a3;
  v26 = [v7 deletedItemsIndexPaths];
  v25 = [v7 insertedItemsIndexPaths];
  v9 = [v7 changedItemsIndexPaths];
  v10 = [v7 contentItemsChangedIndexPaths];
  v23 = v9;
  v11 = [MEMORY[0x1E695DFA8] setWithArray:v9];
  v22 = v10;
  [v11 addObjectsFromArray:v10];
  if ([v7 hasMoves])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v13 = [MEMORY[0x1E695DF70] array];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __114__PUAlbumListViewController__updateInterfaceForIncrementalModelChangeHandler_withSectionedChangeDetails_animated___block_invoke;
    v27[3] = &unk_1E7B74D08;
    v14 = v12;
    v28 = v14;
    v15 = v13;
    v29 = v15;
    [v7 enumerateMovedIndexPathsUsingBlock:v27];
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v16 = [v7 deletedSections];
  v17 = [v7 insertedSections];
  v18 = [v7 changedSections];
  [v11 allObjects];
  v19 = v21 = v11;
  [(PUAlbumListViewController *)self _performBatchUpdates:v8 withDeletedSections:v16 insertedSections:v17 changedSections:v18 deletedItemsIndexPaths:v26 insertedItemsIndexPaths:v25 changedItemsIndexPaths:v19 movedItemsFromIndexPaths:v14 movedItemsToIndexPaths:v15 completionHandler:0];

  [(PUAlbumListViewController *)self _updatePeripheralInterfaceAnimated:v24];
  [(PUAlbumListViewController *)self setViewInSyncWithModel:1];
  [(PUAlbumListViewController *)self _updatePreheatedAssets];

  return 1;
}

void __114__PUAlbumListViewController__updateInterfaceForIncrementalModelChangeHandler_withSectionedChangeDetails_animated___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 40) addObject:v6];
}

- (void)_updateInterfaceForModelReloadAnimated:(BOOL)a3
{
  v3 = a3;
  [(PUAlbumListViewController *)self _resetPreheating];
  [(PUAlbumListViewController *)self reloadContentView];
  [(PUAlbumListViewController *)self _updatePeripheralInterfaceAnimated:v3];
  [(PUAlbumListViewController *)self setViewInSyncWithModel:1];

  [(PUAlbumListViewController *)self _updatePreheatedAssets];
}

- (unint64_t)_unfilteredIndexForFilteredIndexPath:(id)a3
{
  v4 = [(PUAlbumListViewController *)self collectionAtIndexPath:a3];
  v5 = [(PUAlbumListViewController *)self dataSourceManager];
  v6 = [v5 collectionsFetchResult];
  v7 = [v6 indexOfObject:v4];

  return v7;
}

- (PHImageRequestOptions)_imageRequestOptions
{
  imageRequestOptions = self->__imageRequestOptions;
  if (!imageRequestOptions)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6978868]);
    [(PHImageRequestOptions *)v4 setAllowPlaceholder:1];
    [(PHImageRequestOptions *)v4 setNetworkAccessAllowed:1];
    [(PHImageRequestOptions *)v4 setDeliveryMode:0];
    v5 = self->__imageRequestOptions;
    self->__imageRequestOptions = v4;

    imageRequestOptions = self->__imageRequestOptions;
  }

  return imageRequestOptions;
}

- (id)_assetsFetchOptions
{
  v3 = [MEMORY[0x1E6978830] px_standardFetchOptions];
  v4 = [(PUAlbumListViewController *)self assetsFilterPredicate];
  [v3 setInternalPredicate:v4];

  return v3;
}

- (BOOL)isRootSharedAlbumList
{
  v2 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_dataSourceManagerConfiguration collectionList];
  v3 = [v2 px_isSharedAlbumsFolder];

  return v3;
}

- (PUAlbumListCell)focusedListCell
{
  v3 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];
  v4 = [v3 focusedItem];

  v5 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(PUAlbumListViewController *)self _mainCollectionView];
    v7 = [v4 isDescendantOfView:v6];

    if (v7)
    {
      v8 = v4;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (PXPhotoKitCollectionsDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    v4 = [(PUAlbumListViewController *)self dataSourceManager];
    v5 = [v4 dataSource];
    v6 = self->_dataSource;
    self->_dataSource = v5;

    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (void)setDataSourceManagerConfiguration:(id)a3
{
  v5 = a3;
  if (self->_dataSourceManagerConfiguration != v5)
  {
    v9 = v5;
    [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)v5 setAssetTypesToInclude:[(PUAlbumListViewController *)self filteringAssetTypes]];
    objc_storeStrong(&self->_dataSourceManagerConfiguration, a3);
    [(PXPhotoKitCollectionsDataSourceManager *)self->_dataSourceManager unregisterChangeObserver:self context:PXPhotoKitCollectionsDataSourceManagerObservationContext];
    dataSource = self->_dataSource;
    self->_dataSource = 0;

    v7 = [objc_alloc(MEMORY[0x1E69C37E8]) initWithConfiguration:v9];
    dataSourceManager = self->_dataSourceManager;
    self->_dataSourceManager = v7;

    [(PXPhotoKitCollectionsDataSourceManager *)self->_dataSourceManager registerChangeObserver:self context:PXPhotoKitCollectionsDataSourceManagerObservationContext];
    if ([(PUAlbumListViewController *)self px_isVisible])
    {
      [(PUAlbumListViewController *)self _updateInterfaceForModelReloadAnimated:0];
    }

    else
    {
      [(PUAlbumListViewController *)self setViewInSyncWithModel:0];
    }

    v5 = v9;
  }
}

- (void)_updateTitle
{
  v3 = [(PUAlbumListViewController *)self collection];
  v6 = v3;
  if (v3)
  {
    v4 = [v3 localizedTitle];
    [(PUAlbumListViewController *)self setTitle:v4];
    v5 = [(PUAlbumListViewController *)self navigationItem];
    [v5 setTitleView:0];
  }

  else
  {
    v4 = [(PUAlbumListViewController *)self navigationItem];
    [v4 setTitleView:0];
  }
}

- (void)setCollection:(id)a3
{
  v5 = a3;
  collection = self->_collection;
  if (collection != v5)
  {
    v9 = v5;
    v7 = collection;
    objc_storeStrong(&self->_collection, a3);
    if (!v9 || v7)
    {
      if (v9 || !v7)
      {
        goto LABEL_9;
      }

      v8 = [(PHCollection *)v7 photoLibrary];
      [v8 px_unregisterChangeObserver:self];
    }

    else
    {
      v8 = [(PHCollection *)v9 photoLibrary];
      [v8 px_registerChangeObserver:self];
    }

LABEL_9:
    [(PUAlbumListViewController *)self _invalidateTitle];

    v5 = v9;
  }
}

- (void)setSessionInfo:(id)a3
{
  v5 = a3;
  sessionInfo = self->_sessionInfo;
  if (sessionInfo != v5)
  {
    v10 = v5;
    [(PUSessionInfo *)sessionInfo removeSessionInfoObserver:self];
    objc_storeStrong(&self->_sessionInfo, a3);
    [(PUSessionInfo *)self->_sessionInfo addSessionInfoObserver:self];
    v7 = [(PUSessionInfo *)self->_sessionInfo bannerGenerator];
    v8 = v7[2]();

    v9 = [(PUAlbumListViewController *)self navigationItem];
    [v9 pu_setBanner:v8];

    [(PUAlbumListViewController *)self _updateAddNewAlbumPlaceholderAnimated:0];
    [(PUAlbumListViewController *)self _updateInterfaceForModelReloadAnimated:0];

    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](sessionInfo, v5);
}

- (id)_albumCreationButtonItem
{
  v21[2] = *MEMORY[0x1E69E9840];
  albumCreationButtonItem = self->_albumCreationButtonItem;
  if (!albumCreationButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:4 primaryAction:0];
    v5 = self->_albumCreationButtonItem;
    self->_albumCreationButtonItem = v4;

    if ([(PUAlbumListViewController *)self isRootSharedAlbumList])
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __53__PUAlbumListViewController__albumCreationButtonItem__block_invoke;
      v20[3] = &unk_1E7B7C4A0;
      v20[4] = self;
      v6 = [MEMORY[0x1E69DC628] actionWithTitle:&stru_1F2AC6818 image:0 identifier:0 handler:v20];
      [(UIBarButtonItem *)self->_albumCreationButtonItem setPrimaryAction:v6];
    }

    else
    {
      v7 = MEMORY[0x1E69DCC60];
      v8 = MEMORY[0x1E69DC628];
      v6 = PULocalizedString(@"NEW_ALBUM_BUTTON");
      v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.stack.badge.plus"];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __53__PUAlbumListViewController__albumCreationButtonItem__block_invoke_2;
      v19[3] = &unk_1E7B7C4A0;
      v19[4] = self;
      v10 = [v8 actionWithTitle:v6 image:v9 identifier:0 handler:v19];
      v21[0] = v10;
      v11 = MEMORY[0x1E69DC628];
      v12 = PULocalizedString(@"NEW_FOLDER_BUTTON");
      v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"folder.badge.plus"];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __53__PUAlbumListViewController__albumCreationButtonItem__block_invoke_3;
      v18[3] = &unk_1E7B7C4A0;
      v18[4] = self;
      v14 = [v11 actionWithTitle:v12 image:v13 identifier:0 handler:v18];
      v21[1] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
      v16 = [v7 menuWithTitle:&stru_1F2AC6818 children:v15];
      [(UIBarButtonItem *)self->_albumCreationButtonItem setMenu:v16];
    }

    albumCreationButtonItem = self->_albumCreationButtonItem;
  }

  return albumCreationButtonItem;
}

- (id)_cancelButtonItem
{
  cancelButtonItem = self->_cancelButtonItem;
  if (!cancelButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleCancelButton_];
    v5 = self->_cancelButtonItem;
    self->_cancelButtonItem = v4;

    cancelButtonItem = self->_cancelButtonItem;
  }

  return cancelButtonItem;
}

- (id)_doneButtonItem
{
  doneButtonItem = self->_doneButtonItem;
  if (!doneButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleDoneButton_];
    v5 = self->_doneButtonItem;
    self->_doneButtonItem = v4;

    doneButtonItem = self->_doneButtonItem;
  }

  return doneButtonItem;
}

- (void)updateInterfaceLayoutIfNecessary
{
  if (![(PUAlbumListViewController *)self updateSpec])
  {
    v3 = [(PUAlbumListViewController *)self view];
    [v3 frame];
    v5 = v4;
    [(PUAlbumListViewController *)self _layoutReferenceSize];
    v7 = v6;

    if (v5 == v7)
    {
      v8 = [(PUAlbumListViewController *)self view];
      [v8 safeAreaInsets];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
      if (v12 == v20 && v10 == v17 && v16 == v19)
      {
        v21 = v18;

        if (v14 == v21)
        {
          return;
        }
      }

      else
      {
      }
    }
  }

  [(PUAlbumListViewController *)self _updateMainView];
}

- (BOOL)updateSpec
{
  v3 = [(PUAlbumListViewController *)self traitCollection];
  if (![v3 horizontalSizeClass] || !objc_msgSend(v3, "verticalSizeClass"))
  {
    goto LABEL_8;
  }

  [PUInterfaceManager shouldUsePhoneLayoutWithTraitCollection:v3];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() || v5 == objc_opt_class())
  {
    v4 = objc_opt_class();
  }

  if (v4 != v5)
  {
    v6 = objc_alloc_init(v4);
    spec = self->_spec;
    self->_spec = v6;

    v8 = 1;
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

  return v8;
}

- (PUAlbumListViewControllerSpec)spec
{
  spec = self->_spec;
  if (!spec)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:363 description:@"missing spec"];

    spec = self->_spec;
  }

  return spec;
}

- (void)dealloc
{
  [(PUAlbumListViewController *)self setKeyboardAware:0];
  [(PUSessionInfo *)self->_sessionInfo removeSessionInfoObserver:self];
  v3 = [(PUAlbumListViewController *)self _mainCollectionView];
  [v3 setDataSource:0];

  v4 = [(PUAlbumListViewController *)self _mainCollectionView];
  [v4 setDelegate:0];

  v5 = [(PUAlbumListViewController *)self _mainCollectionView];
  [v5 setReorderDelegate:0];

  v6 = [(PUAlbumListViewController *)self _mainTableView];
  [v6 setDataSource:0];

  v7 = [(PUAlbumListViewController *)self _mainTableView];
  [v7 setDelegate:0];

  v8.receiver = self;
  v8.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v8 dealloc];
}

- (PUAlbumListViewController)initWithSpec:(id)a3 dataSourceManager:(id)a4 photoLibrary:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = PUAlbumListViewController;
  v12 = [(PUAlbumListViewController *)&v26 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photoLibrary, a5);
    v14 = [MEMORY[0x1E69C3A08] sharedLibraryStatusProviderWithPhotoLibrary:v11];
    sharedLibraryStatusProvider = v13->_sharedLibraryStatusProvider;
    v13->_sharedLibraryStatusProvider = v14;

    v16 = [objc_alloc(MEMORY[0x1E69C3660]) initWithSharedLibraryStatusProvider:v13->_sharedLibraryStatusProvider];
    libraryFilterState = v13->_libraryFilterState;
    v13->_libraryFilterState = v16;

    objc_storeStrong(&v13->_spec, a3);
    v18 = objc_opt_new();
    cachingImageManager = v13->__cachingImageManager;
    v13->__cachingImageManager = v18;

    v20 = objc_alloc_init(MEMORY[0x1E69C4490]);
    badgeManager = v13->__badgeManager;
    v13->__badgeManager = v20;

    v22 = [(PUAlbumListViewController *)v13 navigationItem];
    [v22 setLargeTitleDisplayMode:2];

    [(PUAlbumListViewController *)v13 _updateAlbumSubtitleFormat];
    [(PUAlbumListViewController *)v13 px_enableExtendedTraitCollection];
    v23 = [v10 configuration];
    dataSourceManagerConfiguration = v13->_dataSourceManagerConfiguration;
    v13->_dataSourceManagerConfiguration = v23;

    objc_storeStrong(&v13->_dataSourceManager, a4);
    [(PXPhotoKitCollectionsDataSourceManager *)v13->_dataSourceManager registerChangeObserver:v13 context:PXPhotoKitCollectionsDataSourceManagerObservationContext];
  }

  return v13;
}

- (PUAlbumListViewController)initWithSpec:(id)a3
{
  v4 = MEMORY[0x1E69789A8];
  v5 = a3;
  v6 = [v4 px_deprecated_appPhotoLibrary];
  v7 = [(PUAlbumListViewController *)self initWithSpec:v5 dataSourceManager:0 photoLibrary:v6];

  return v7;
}

- (PUAlbumListViewController)initWithSpec:(id)a3 isRootSharedAlbumList:(BOOL)a4
{
  v5 = MEMORY[0x1E69789A8];
  v6 = a3;
  v7 = [v5 px_deprecated_appPhotoLibrary];
  v8 = [(PUAlbumListViewController *)self initWithSpec:v6 dataSourceManager:0 photoLibrary:v7];

  return v8;
}

+ (id)newMyAlbumsViewControllerWithSpec:(id)a3 sessionInfo:(id)a4 dataSourceManager:(id)a5 photoLibrary:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[PUAlbumListViewController alloc] initWithSpec:v12 dataSourceManager:v10 photoLibrary:v9];

  [(PUAlbumListViewController *)v13 setSessionInfo:v11];
  v14 = PULocalizedString(@"USER_CREATED_ALBUMS_TITLE");
  [(PUAlbumListViewController *)v13 setTitle:v14];

  return v13;
}

+ (id)newMyAlbumsViewControllerWithSpec:(id)a3 sessionInfo:(id)a4 photoLibrary:(id)a5
{
  v8 = MEMORY[0x1E6978760];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v9 librarySpecificFetchOptions];
  v13 = [v8 fetchRootAlbumCollectionListWithOptions:v12];
  v14 = [v13 firstObject];

  v15 = [objc_alloc(MEMORY[0x1E69C37F0]) initWithCollectionList:v14];
  [v15 setCollectionTypesToInclude:4983826];
  v16 = [objc_alloc(MEMORY[0x1E69C37E8]) initWithConfiguration:v15];
  v17 = [a1 newMyAlbumsViewControllerWithSpec:v11 sessionInfo:v10 dataSourceManager:v16 photoLibrary:v9];

  return v17;
}

- (id)px_gridPresentation
{
  v3 = objc_alloc_init(PUPXGridPresentation);
  v4 = [(PUAlbumListViewController *)self sessionInfo];
  [(PUPXGridPresentation *)v3 setSessionInfo:v4];

  return v3;
}

@end