@interface PUAlbumListViewController
+ (id)newMyAlbumsViewControllerWithSpec:(id)spec sessionInfo:(id)info dataSourceManager:(id)manager photoLibrary:(id)library;
+ (id)newMyAlbumsViewControllerWithSpec:(id)spec sessionInfo:(id)info photoLibrary:(id)library;
- (BOOL)_canDragIn;
- (BOOL)_isPlaceholderEnabled:(int64_t)enabled;
- (BOOL)_shouldShowAggregateItem;
- (BOOL)_someAlbumSupportsEditing;
- (BOOL)_updateInterfaceForIncrementalModelChangeHandler:(id)handler withSectionedChangeDetails:(id)details animated:(BOOL)animated;
- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type;
- (BOOL)albumListCellContentViewShouldBeginRetitling:(id)retitling;
- (BOOL)canNavigateToCollection:(id)collection;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view canReorderItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context;
- (BOOL)isEmpty;
- (BOOL)isPlaceholderAtIndexPath:(id)path;
- (BOOL)isRootSharedAlbumList;
- (BOOL)pu_wantsToolbarVisible;
- (BOOL)px_scrollToInitialPositionAnimated:(BOOL)animated;
- (BOOL)shouldBeginRetitlingAlbumAtIndexPath:(id)path;
- (BOOL)shouldEnableCollection:(id)collection;
- (BOOL)showsSeparatorBelowTopPlaceholdersSection;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)updateSpec;
- (CGRect)_previousPreheatRect;
- (CGSize)_layoutReferenceSize;
- (PHImageRequestOptions)_imageRequestOptions;
- (PHPickerViewController)pickerViewController;
- (PUAlbumListCell)focusedListCell;
- (PUAlbumListViewController)initWithSpec:(id)spec;
- (PUAlbumListViewController)initWithSpec:(id)spec dataSourceManager:(id)manager photoLibrary:(id)library;
- (PUAlbumListViewController)initWithSpec:(id)spec isRootSharedAlbumList:(BOOL)list;
- (PUAlbumListViewControllerSpec)spec;
- (PUFontManager)_fontManager;
- (PXPhotoKitCollectionsDataSource)dataSource;
- (UIEdgeInsets)_layoutSafeAreaInsets;
- (_NSRange)albumsSections;
- (double)sectionedGridLayout:(id)layout sectionHeaderHeightForVisualSection:(int64_t)section;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_albumCreationButtonItem;
- (id)_assetsFetchOptions;
- (id)_cancelButtonItem;
- (id)_collectionForNavigation;
- (id)_createControllerForFolder:(id)folder;
- (id)_doneButtonItem;
- (id)_getDisplayableAssetsForFolder:(id)folder maximumCount:(int64_t)count useCache:(BOOL)cache correspondingCollections:(id *)collections;
- (id)_getDisplayableFacesForCollectionList:(id)list maximumCount:(int64_t)count;
- (id)_keyAssetsForMoments;
- (id)_pickerBannerView;
- (id)_preparedAlbumListCellContentViewAtIndexPath:(id)path;
- (id)_suppressionContexts;
- (id)_targetIndexPathForMoveFromIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)_viewControllerForCollection:(id)collection userActivity:(id *)activity;
- (id)_visibleAssetsForCollection:(id)collection correspondingCollections:(id *)collections;
- (id)_visibleAssetsForCollection:(id)collection maximumNumberOfVisibleAssets:(int64_t)assets correspondingCollections:(id *)collections;
- (id)backgroundColorForTableView;
- (id)bestReferenceItemIndexPath;
- (id)collectionAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)indexPathForAddNewAlbumPlaceholder;
- (id)indexPathForAggregateItem;
- (id)indexPathForAlbumListCellContentView:(id)view;
- (id)indexPathForCollection:(id)collection;
- (id)indexPathForFirstEditableAlbum;
- (id)indexPathForItemAtPoint:(CGPoint)point;
- (id)indexPathForPeopleAlbum;
- (id)indexPathForPlacesAlbum;
- (id)indexPathsForItemsInRect:(CGRect)rect;
- (id)indexPathsForVisibleItems;
- (id)mainScrollView;
- (id)newGridViewControllerForAssetCollection:(id)collection;
- (id)newGridViewControllerForFolder:(id)folder;
- (id)prepareForPhotoLibraryChange:(id)change;
- (id)px_gridPresentation;
- (id)px_navigationDestination;
- (id)sectionedGridLayout:(id)layout sectionsForVisualSection:(int64_t)section;
- (id)subtitleForCollection:(id)collection;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (int64_t)numberOfVisualSectionsForSectionedGridLayout:(id)layout;
- (int64_t)placeholderKindAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)topPlaceholdersSection;
- (unint64_t)_editCapabilitiesForAlbum:(id)album;
- (unint64_t)_stackViewStyleForCollection:(id)collection;
- (unint64_t)_unfilteredIndexForFilteredIndexPath:(id)path;
- (unint64_t)routingOptionsForDestination:(id)destination;
- (void)_didSelectPlaceholderAtIndexPath:(id)path;
- (void)_dismissPhotosPickerControllerAnimated:(BOOL)animated;
- (void)_enumerateIndexPathsForPreparedItemsUsingBlock:(id)block;
- (void)_getDisplayableAssets:(id *)assets indexes:(id *)indexes forCollection:(id)collection maximumCount:(int64_t)count useCache:(BOOL)cache;
- (void)_handleCancelButton:(id)button;
- (void)_handleCollectionListActionType:(id)type;
- (void)_handleDeleteAlbumAtIndexPath:(id)path;
- (void)_handleDeleteCollection:(id)collection sourceView:(id)view;
- (void)_handleDeleteKeyCommand:(id)command;
- (void)_handleDoneButton:(id)button;
- (void)_handleOpenKeyCommand:(id)command;
- (void)_handlePendingScrollingAnimationEndBlock;
- (void)_handleRenameKeyCommand:(id)command;
- (void)_keyboardWillChangeFrame:(id)frame;
- (void)_navigateToDestination:(id)destination provideViewControllers:(BOOL)controllers options:(unint64_t)options completionHandler:(id)handler;
- (void)_navigateToMemories;
- (void)_navigateToPeopleAnimated:(BOOL)animated withPersonLocalIdentifier:(id)identifier withCompletion:(id)completion;
- (void)_navigateToPlacesFromCollection:(id)collection;
- (void)_performBatchUpdates:(id)updates withDeletedSections:(id)sections insertedSections:(id)insertedSections changedSections:(id)changedSections deletedItemsIndexPaths:(id)paths insertedItemsIndexPaths:(id)indexPaths changedItemsIndexPaths:(id)itemsIndexPaths movedItemsFromIndexPaths:(id)self0 movedItemsToIndexPaths:(id)self1 completionHandler:(id)self2;
- (void)_performOrScheduleScrollToCollection:(id)collection animated:(BOOL)animated;
- (void)_postDidAppearActions;
- (void)_prepareStackView:(id)view forCollection:(id)collection withStackCount:(int64_t)count withCustomEmptyPlaceHolderImage:(id)image;
- (void)_recursivelyCollectCollectionsIn:(id)in fetchResult:(id)result;
- (void)_resetPreheating;
- (void)_scrollToCollection:(id)collection animated:(BOOL)animated;
- (void)_setLayoutReferenceSize:(CGSize)size;
- (void)_setLayoutSafeAreaInsets:(UIEdgeInsets)insets;
- (void)_updateAddNewAlbumPlaceholderAnimated:(BOOL)animated;
- (void)_updateAlbumSubtitleFormat;
- (void)_updateCollageView:(id)view forAssets:(id)assets;
- (void)_updateEmptyPlaceholder;
- (void)_updateIfNeeded;
- (void)_updateInterfaceForModelReloadAnimated:(BOOL)animated;
- (void)_updateLayoutMetrics;
- (void)_updateMainView;
- (void)_updateNavigationBannerAnimated:(BOOL)animated;
- (void)_updatePeripheralInterfaceAnimated:(BOOL)animated;
- (void)_updatePreheatedAssets;
- (void)_updatePreparedCellsConfigurationIfNeeded;
- (void)_updateStackView:(id)view forAssets:(id)assets collection:(id)collection withCustomEmptyPlaceholderImage:(id)image;
- (void)_updateStackView:(id)view forFaces:(id)faces inCollection:(id)collection withCustomEmptyPlaceholderImage:(id)image;
- (void)_updateTitle;
- (void)_visiblyInsertItemAtIndexPath:(id)path modelUpdate:(id)update completionHandler:(id)handler;
- (void)albumListCellContentView:(id)view didEndRetitlingFromTitle:(id)title toTitle:(id)toTitle;
- (void)albumListCellContentView:(id)view performDeleteAction:(id)action;
- (void)albumListTableViewCell:(id)cell willChangeState:(unint64_t)state;
- (void)assetCollectionActionPerformer:(id)performer playMovieForAssetCollection:(id)collection;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath completionHandler:(id)handler;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)configureSupplementaryView:(id)view ofKind:(id)kind forIndexPath:(id)path;
- (void)dealloc;
- (void)deselectSelectedItemAnimated:(BOOL)animated;
- (void)didSelectItemAtIndexPath:(id)path;
- (void)handleSessionInfoAlbumSelection:(id)selection;
- (void)navigateToAllPhotosAnimated:(BOOL)animated completion:(id)completion;
- (void)navigateToCollection:(id)collection animated:(BOOL)animated completion:(id)completion;
- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)navigateToPeopleAnimated:(BOOL)animated withPersonLocalIdentifier:(id)identifier withCompletion:(id)completion;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)placesSnapshotCountDidChange;
- (void)placesSnapshotDidChange;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)reloadContentView;
- (void)scrollToItemAtIndexPath:(id)path centered:(BOOL)centered animated:(BOOL)animated;
- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated;
- (void)sessionInfoPhotoSelectionDidChange:(id)change;
- (void)setCollection:(id)collection;
- (void)setDataSourceManagerConfiguration:(id)configuration;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setKeyboardAware:(BOOL)aware;
- (void)setSessionInfo:(id)info;
- (void)setSyncProgressVisible:(BOOL)visible;
- (void)setTitleForCell:(id)cell withCollection:(id)collection;
- (void)setupDropDelegateForCollectionView:(id)view;
- (void)showPlacesCount:(int64_t)count;
- (void)showPlacesCount:(int64_t)count atIndexPath:(id)path;
- (void)showPlacesPlaceholderImageInStackView:(id)view andContentView:(id)contentView;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)updateAlbumListCellContentView:(id)view forItemAtIndexPath:(id)path animated:(BOOL)animated;
- (void)updateInterfaceLayoutIfNecessary;
- (void)updateListCellForItemAtIndexPath:(id)path animated:(BOOL)animated;
- (void)updateNavigationBarAnimated:(BOOL)animated;
- (void)updatePlaceholderListCellContentView:(id)view forItemAtIndexPath:(id)path animated:(BOOL)animated;
- (void)updateSyncProgress;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation PUAlbumListViewController

- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context
{
  viewCopy = view;
  pathCopy = path;
  contextCopy = context;
  collectionViewDropDelegate = [(PUAlbumListViewController *)self collectionViewDropDelegate];
  v12 = [collectionViewDropDelegate collectionView:viewCopy shouldSpringLoadItemAtIndexPath:pathCopy withContext:contextCopy];

  if (v12)
  {
    v13 = [viewCopy cellForItemAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      albumListCellContentView = [v13 albumListCellContentView];
      springLoadingTargetView = [albumListCellContentView springLoadingTargetView];

      if (springLoadingTargetView)
      {
        [contextCopy setTargetView:springLoadingTargetView];
      }
    }
  }

  return v12;
}

- (BOOL)_canDragIn
{
  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  isSelectingTargetAlbum = [sessionInfo isSelectingTargetAlbum];

  return isSelectingTargetAlbum ^ 1;
}

- (void)setupDropDelegateForCollectionView:(id)view
{
  viewCopy = view;
  v5 = objc_alloc_init(PUCollectionsCollectionViewDropDelegate);
  [(PUCollectionsCollectionViewDropDelegate *)v5 setDropDataProvider:self];
  [viewCopy setDropDelegate:v5];

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
  _placesAlbumCoverProvider = [(PUAlbumListViewController *)self _placesAlbumCoverProvider];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PUAlbumListViewController_placesSnapshotCountDidChange__block_invoke;
  v4[3] = &unk_1E7B80660;
  objc_copyWeak(&v5, &location);
  [_placesAlbumCoverProvider requestAssetCountWithForcedRefresh:1 completion:v4];

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
    collectionView = [(PUAlbumListViewController *)self collectionView];
    v4 = [collectionView indexPathsForVisibleSupplementaryElementsOfKind:@"PUAlbumListViewControllerElementKindSectionHeader"];

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
          collectionView2 = [(PUAlbumListViewController *)self collectionView];
          v11 = [collectionView2 supplementaryViewForElementKind:@"PUAlbumListViewControllerElementKindSectionHeader" atIndexPath:v9];

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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXPhotoKitCollectionsDataSourceManagerObservationContext != context)
  {
    if (PUFontManagerObservationContext == context)
    {
      [(PUAlbumListViewController *)self _updateMainView];
      [(PUAlbumListViewController *)self _updateInterfaceForModelReloadAnimated:0];
    }

    else if (PXSpecManagerObservationContext == context)
    {
      _featureSpecManager = [(PUAlbumListViewController *)self _featureSpecManager];
      spec = [_featureSpecManager spec];

      [(PUAlbumListViewController *)self _setFeatureSpec:spec];
    }

    else
    {
      if (PXSharedLibraryStatusProviderObservationContext != context)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:3966 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      if ((changeCopy & 3) != 0)
      {
        [(PUAlbumListViewController *)self updateNavigationBarAnimated:0];
      }
    }

    goto LABEL_39;
  }

  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  changeHistory = [dataSourceManager changeHistory];
  dataSource2 = [(PUAlbumListViewController *)self dataSource];
  v14 = [changeHistory changeDetailsFromDataSourceIdentifier:objc_msgSend(dataSource2 toDataSourceIdentifier:{"identifier"), objc_msgSend(dataSource, "identifier")}];

  if ([v14 count] >= 2)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:3842 description:@"Should only have one change details at most."];
  }

  firstObject = [v14 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isCountUpdateChange = [firstObject isCountUpdateChange];
  }

  else
  {
    isCountUpdateChange = 0;
  }

  v62 = v14;
  v61 = firstObject;
  v17 = [objc_alloc(MEMORY[0x1E69C4550]) initWithSectionedDataSourceChangeDetails:firstObject shiftedSection:{-[PUAlbumListViewController albumsSections](self, "albumsSections")}];
  pushedAlbum = [(PUAlbumListViewController *)self pushedAlbum];
  if (pushedAlbum)
  {
    deletedItemsIndexPaths = [v17 deletedItemsIndexPaths];
    [(PUAlbumListViewController *)self pushedAlbum];
    v20 = observableCopy;
    v22 = v21 = dataSourceManager;
    v23 = [(PUAlbumListViewController *)self indexPathForCollection:v22];
    v63 = [deletedItemsIndexPaths containsObject:v23];

    dataSourceManager = v21;
    observableCopy = v20;
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
  v26 = dataSource;
  v69 = v26;
  v27 = _Block_copy(aBlock);
  isViewInSyncWithModel = [(PUAlbumListViewController *)self isViewInSyncWithModel];
  [(PUAlbumListViewController *)self setViewInSyncWithModel:0];
  if (![(PUAlbumListViewController *)self px_isVisible])
  {
    goto LABEL_32;
  }

  if ((isCountUpdateChange & 1) == 0)
  {
    [(PUAlbumListViewController *)self _updateAlbumSubtitleFormat];
  }

  if (v17 && ![v17 hasIncrementalChanges])
  {
    goto LABEL_31;
  }

  if ([v17 hasMoves] & 1 | !isViewInSyncWithModel)
  {
    goto LABEL_31;
  }

  contentItemsChangedIndexPaths = [v17 contentItemsChangedIndexPaths];
  v30 = [contentItemsChangedIndexPaths count];

  if (!v17)
  {
    if (v30)
    {
      goto LABEL_31;
    }
  }

  _justCreatedCollectionIdentifier = [(PUAlbumListViewController *)self _justCreatedCollectionIdentifier];

  if (_justCreatedCollectionIdentifier)
  {
    deletedSections = [v17 deletedSections];
    if ([deletedSections count])
    {
LABEL_29:

      goto LABEL_30;
    }

    insertedSections = [v17 insertedSections];
    if ([insertedSections count])
    {

      goto LABEL_29;
    }

    changedSections = [v17 changedSections];
    v40 = [changedSections count];

    if (!v40 && ([v17 hasMoves] & 1) == 0)
    {
      deletedItemsIndexPaths2 = [v17 deletedItemsIndexPaths];
      v42 = [deletedItemsIndexPaths2 count];

      if (!v42)
      {
        changedItemsIndexPaths = [v17 changedItemsIndexPaths];
        v44 = [changedItemsIndexPaths count];

        if (!v44)
        {
          insertedItemsIndexPaths = [v17 insertedItemsIndexPaths];
          v46 = [insertedItemsIndexPaths count];

          if (v46 == 1)
          {
            v58 = observableCopy;
            v47 = dataSourceManager;
            insertedItemsIndexPaths2 = [v17 insertedItemsIndexPaths];
            firstObject2 = [insertedItemsIndexPaths2 firstObject];

            v50 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(firstObject2 inSection:{"item"), objc_msgSend(firstObject2, "section") - -[PUAlbumListViewController albumsSections](self, "albumsSections")}];
            v60 = [v26 collectionAtIndexPath:v50];
            localIdentifier = [v60 localIdentifier];
            _justCreatedCollectionIdentifier2 = [(PUAlbumListViewController *)self _justCreatedCollectionIdentifier];
            v52 = [localIdentifier isEqualToString:_justCreatedCollectionIdentifier2];

            v53 = v52 ? firstObject2 : 0;
            dataSourceManager = v47;
            observableCopy = v58;
            if (v53)
            {
              _justCreatedCollectionAnimationCompletionHandler = [(PUAlbumListViewController *)self _justCreatedCollectionAnimationCompletionHandler];
              v64[0] = MEMORY[0x1E69E9820];
              v64[1] = 3221225472;
              v64[2] = __58__PUAlbumListViewController_observable_didChange_context___block_invoke_2;
              v64[3] = &unk_1E7B80CB0;
              v65 = v17;
              selfCopy = self;
              v56 = _justCreatedCollectionAnimationCompletionHandler;
              v67 = v56;
              [(PUAlbumListViewController *)self _visiblyInsertItemAtIndexPath:v53 modelUpdate:v27 completionHandler:v64];
              [(PUAlbumListViewController *)self _setJustCreatedCollectionAnimationCompletionHandler:0];
              [(PUAlbumListViewController *)self _updatePeripheralInterfaceAnimated:1];
              [(PUAlbumListViewController *)self setViewInSyncWithModel:1];
              [(PUAlbumListViewController *)self _updatePreheatedAssets];

              dataSourceManager = v47;
              observableCopy = v58;
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
  _justCreatedCollectionAnimationCompletionHandler2 = [(PUAlbumListViewController *)self _justCreatedCollectionAnimationCompletionHandler];

  if (_justCreatedCollectionAnimationCompletionHandler2)
  {
    _justCreatedCollectionAnimationCompletionHandler3 = [(PUAlbumListViewController *)self _justCreatedCollectionAnimationCompletionHandler];
    _justCreatedCollectionAnimationCompletionHandler3[2]();

    [(PUAlbumListViewController *)self _setJustCreatedCollectionAnimationCompletionHandler:0];
  }

  if (v63)
  {
    pushedController = [(PUAlbumListViewController *)self pushedController];
    [pushedController pl_visitControllerHierarchyWithBlock:&__block_literal_global_623];

    navigationController = [(PUAlbumListViewController *)self navigationController];
    v38 = [navigationController popToViewController:self animated:0];
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

- (void)albumListTableViewCell:(id)cell willChangeState:(unint64_t)state
{
  v16 = *MEMORY[0x1E69E9840];
  if ((state & 2) != 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(PUAlbumListViewController *)self _mainTableView:cell];
    visibleCells = [v4 visibleCells];

    v6 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(visibleCells);
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
        v7 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = PULocalizedString(@"ALBUM_LIST_TABLE_ROW_DELETE_CONFIRMATION");
  v7 = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];

  if ([v7 px_isStreamSharedAlbum] && !objc_msgSend(v7, "px_isOwnedStreamSharedAlbum") || objc_msgSend(v7, "px_isCloudKitSharedAlbum") && (objc_msgSend(v7, "px_isOwnedCloudKitSharedAlbum") & 1) == 0)
  {
    v8 = PULocalizedString(@"ALBUM_LIST_TABLE_ROW_UNSUBSCRIBE_CONFIRMATION");

    v6 = v8;
  }

  return v6;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    [(PUAlbumListViewController *)self _handleDeleteAlbumAtIndexPath:path];
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = [(PUAlbumListViewController *)self collectionAtIndexPath:path];
  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  v7 = [dataSourceManager canDeleteCollection:v5];

  return v7;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  if (pathCopy != indexPathCopy && ([pathCopy isEqual:indexPathCopy] & 1) == 0)
  {
    dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
    collectionList = [dataSourceManager collectionList];
    collectionsFetchResult = [dataSourceManager collectionsFetchResult];
    v14 = [(PUAlbumListViewController *)self _unfilteredIndexForFilteredIndexPath:pathCopy];
    v15 = [(PUAlbumListViewController *)self _unfilteredIndexForFilteredIndexPath:indexPathCopy];
    [(PUAlbumListViewController *)self _setIgnoredReorderNotificationCount:[(PUAlbumListViewController *)self _ignoredReorderNotificationCount]+ 1];
    photoLibrary = [collectionList photoLibrary];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__PUAlbumListViewController_tableView_moveRowAtIndexPath_toIndexPath___block_invoke;
    v19[3] = &unk_1E7B80688;
    v20 = collectionList;
    v21 = collectionsFetchResult;
    v22 = v14;
    v23 = v15;
    v17 = collectionsFetchResult;
    v18 = collectionList;
    [photoLibrary performChanges:v19 completionHandler:0];
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

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(PUAlbumListViewController *)self isEditing])
  {
    v6 = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];
    if (v6)
    {
      retitlingCollection = [(PUAlbumListViewController *)self retitlingCollection];
      if (retitlingCollection)
      {
        v8 = 0;
      }

      else
      {
        dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
        v8 = [dataSourceManager canReorderCollection:v6];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [(PUAlbumListViewController *)self didSelectItemAtIndexPath:pathCopy];
  if ([(PUAlbumListViewController *)self isPlaceholderAtIndexPath:pathCopy])
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(PUAlbumListViewController *)self isPlaceholderAtIndexPath:pathCopy])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];
    v6 = [(PUAlbumListViewController *)self shouldEnableCollection:v7];
  }

  return v6;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if ([(PUAlbumListViewController *)self topPlaceholdersSection]== section && [(PUAlbumListViewController *)self showsSeparatorBelowTopPlaceholdersSection])
  {
    v7 = [PUAlbumListSeparatorView alloc];
    v8 = [(PUAlbumListSeparatorView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    separatorColor = [viewCopy separatorColor];
    [(PUAlbumListSeparatorView *)v8 setLineColor:separatorColor];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  topPlaceholdersSection = [(PUAlbumListViewController *)self topPlaceholdersSection];
  result = 0.0;
  if (topPlaceholdersSection == section)
  {
    showsSeparatorBelowTopPlaceholdersSection = [(PUAlbumListViewController *)self showsSeparatorBelowTopPlaceholdersSection];
    result = 0.0;
    if (showsSeparatorBelowTopPlaceholdersSection)
    {
      return 4.0;
    }
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  delegate = [viewCopy delegate];
  [delegate tableView:viewCopy heightForHeaderInSection:section];
  v9 = v8;

  if (v9 <= 0.0)
  {
    v14 = 0;
  }

  else
  {
    v10 = section - [(PUAlbumListViewController *)self albumsSections];
    dataSource = [(PUAlbumListViewController *)self dataSource];
    v12 = [dataSource collectionListForSection:v10];

    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      localizedTitle = [v12 localizedTitle];
    }

    else
    {
      localizedTitle = 0;
    }

    if ([localizedTitle length])
    {
      sectionHeaderView = self->_sectionHeaderView;
      if (!sectionHeaderView)
      {
        v16 = [PUAlbumListSectionHeaderView alloc];
        [viewCopy frame];
        v18 = v17;
        spec = [(PUAlbumListViewController *)self spec];
        [spec sectionHeaderHeight];
        v21 = [(PUAlbumListSectionHeaderView *)v16 initWithFrame:0.0, 0.0, v18, v20];
        v22 = self->_sectionHeaderView;
        self->_sectionHeaderView = v21;

        sectionHeaderView = self->_sectionHeaderView;
      }

      v23 = PULocalizedString(localizedTitle);
      [(PUAlbumListSectionHeaderView *)sectionHeaderView setSectionHeaderTitle:v23];

      v24 = self->_sectionHeaderView;
      _fontManager = [(PUAlbumListViewController *)self _fontManager];
      albumListSectionTitleLabelFont = [_fontManager albumListSectionTitleLabelFont];
      [(PUAlbumListSectionHeaderView *)v24 setSectionHeaderTitleFont:albumListSectionTitleLabelFont];

      spec2 = [(PUAlbumListViewController *)self spec];
      [(PUAlbumListViewController *)self _layoutReferenceSize];
      v29 = v28;
      v31 = v30;
      [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
      [spec2 sectionInsetsForLayoutReferenceSize:v29 safeAreaInsets:{v31, v32, v33, v34, v35}];
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

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  albumsSections = [(PUAlbumListViewController *)self albumsSections];
  v8 = 0.0;
  if (section >= albumsSections && section - albumsSections < v7)
  {
    if ([(PUAlbumListViewController *)self isRootFolder])
    {
      spec = [(PUAlbumListViewController *)self spec];
      shouldShowSectionHeaders = [spec shouldShowSectionHeaders];

      if (shouldShowSectionHeaders)
      {
        v11 = section - [(PUAlbumListViewController *)self albumsSections];
        dataSource = [(PUAlbumListViewController *)self dataSource];
        v13 = [dataSource collectionListForSection:v11];

        if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          localizedTitle = [v13 localizedTitle];
        }

        else
        {
          localizedTitle = 0;
        }

        if ([localizedTitle length])
        {
          spec2 = [(PUAlbumListViewController *)self spec];
          [spec2 sectionHeaderHeight];
          v8 = v16;
        }
      }
    }
  }

  return v8;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory) && (-[PUAlbumListViewController spec](self, "spec"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 cellContentViewLayout], v7, !v8))
  {
    v12 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    spec = [(PUAlbumListViewController *)self spec];
    view = [(PUAlbumListViewController *)self view];
    [view bounds];
    [spec cellSizeForBounds:?];
    v12 = v11;
  }

  return v12;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(PUAlbumListViewController *)self isPlaceholderAtIndexPath:pathCopy];
  v9 = @"albumCell";
  if (v8)
  {
    v9 = @"placeholderCell";
  }

  v10 = v9;
  v11 = [viewCopy dequeueReusableCellWithIdentifier:v10];

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
    contentView = [v11 contentView];
    [contentView bounds];
    v13 = [(PUAlbumListCellContentView *)v14 initWithFrame:?];

    [(PUAlbumListCellContentView *)v13 setTag:236897];
    [(PUAlbumListCellContentView *)v13 setAutoresizingMask:18];
    [(PUAlbumListCellContentView *)v13 setCombinesPhotoDecorations:1];
    contentView2 = [v11 contentView];
    [contentView2 addSubview:v13];

    if (!v8)
    {
      [(PUAlbumListCellContentView *)v13 setDelegate:self];
    }
  }

  [(PUAlbumListCellContentView *)v13 prepareForReuse];
  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  isSelectingTargetAlbum = [sessionInfo isSelectingTargetAlbum];

  if (v8)
  {
    v19 = [(PUAlbumListViewController *)self placeholderKindAtIndexPath:pathCopy];
    if (v19 == 6)
    {
      v20 = isSelectingTargetAlbum ^ 1;
    }

    else
    {
      v20 = 0;
    }

    if ((v19 - 2) >= 4)
    {
      px_isFolder = v20;
    }

    else
    {
      px_isFolder = isSelectingTargetAlbum ^ 1;
    }

    [(PUAlbumListViewController *)self updatePlaceholderListCellContentView:v13 forItemAtIndexPath:pathCopy animated:0];
  }

  else
  {
    [(PUAlbumListViewController *)self updateAlbumListCellContentView:v13 forItemAtIndexPath:pathCopy animated:0];
    if (isSelectingTargetAlbum)
    {
      v22 = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];
      px_isFolder = [v22 px_isFolder];
    }

    else
    {
      px_isFolder = 1;
    }
  }

  sessionInfo2 = [(PUAlbumListViewController *)self sessionInfo];
  if ([sessionInfo2 hasClearBackgroundColor])
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v24 = ;
  [v11 setBackgroundColor:v24];

  [v11 setAccessoryType:px_isFolder & 1];
  [v11 setSelectionStyle:2];

  return v11;
}

- (void)picker:(id)picker didFinishPicking:(id)picking
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

  finishedPickingBlock = [(PUAlbumListViewController *)self finishedPickingBlock];
  (finishedPickingBlock)[2](finishedPickingBlock, v5);

  [(PUAlbumListViewController *)self setFinishedPickingBlock:0];
  [(PUAlbumListViewController *)self _dismissPhotosPickerControllerAnimated:1];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    collection = [(PUAlbumListViewController *)self collection];
    v7 = 138412290;
    v8 = collection;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_INFO, "Picker in collection view manually dismissed with no picked assets for collection: %@", &v7, 0xCu);
  }

  finishedPickingBlock = [(PUAlbumListViewController *)self finishedPickingBlock];
  finishedPickingBlock[2](finishedPickingBlock, MEMORY[0x1E695E0F0]);

  [(PUAlbumListViewController *)self setFinishedPickingBlock:0];
  [(PUAlbumListViewController *)self setPickerViewController:0];
}

- (double)sectionedGridLayout:(id)layout sectionHeaderHeightForVisualSection:(int64_t)section
{
  dataSource = [(PUAlbumListViewController *)self dataSource];
  v7 = [dataSource collectionListForSection:section];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    localizedTitle = [v7 localizedTitle];
  }

  else
  {
    localizedTitle = 0;
  }

  if ([localizedTitle length])
  {
    spec = [(PUAlbumListViewController *)self spec];
    [spec sectionHeaderHeight];
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
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  _mainCollectionViewLayout = [(PUAlbumListViewController *)self _mainCollectionViewLayout];
  collectionView = [_mainCollectionViewLayout collectionView];
  if (collectionView)
  {
    v6 = collectionView;
    window = [_mainCollectionView window];

    if (window)
    {
      [_mainCollectionView contentOffset];
      v9 = v8;
      v11 = v10;
      [_mainCollectionView bounds];
      v13 = v12;
      v15 = v14;
      numberOfSections = [_mainCollectionView numberOfSections];
      if (numberOfSections < 1)
      {
LABEL_7:
        v18 = 0;
        goto LABEL_8;
      }

      v17 = 0;
      while ([_mainCollectionView numberOfItemsInSection:v17] <= 0)
      {
        if (numberOfSections == ++v17)
        {
          goto LABEL_7;
        }
      }

      v18 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v17];
      if (!v18)
      {
        goto LABEL_8;
      }

      v25 = [_mainCollectionViewLayout layoutAttributesForItemAtIndexPath:v18];
      v26 = v25;
      if (v25 && ([v25 frame], v32.origin.x = v9, v32.origin.y = v11, v32.size.width = v13, v32.size.height = v15, CGRectIntersectsRect(v30, v32)))
      {
        v18 = v18;

        v22 = v18;
      }

      else
      {

LABEL_8:
        while (numberOfSections-- >= 1)
        {
          v20 = [_mainCollectionView numberOfItemsInSection:numberOfSections];
          if (v20 >= 1)
          {
            v21 = [MEMORY[0x1E696AC88] indexPathForItem:v20 - 1 inSection:numberOfSections];
            if (v21)
            {
              v22 = v21;
              v23 = [_mainCollectionViewLayout layoutAttributesForItemAtIndexPath:v21];
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

        if ([_mainCollectionViewLayout conformsToProtocol:&unk_1F2C21280])
        {
          v22 = [_mainCollectionViewLayout itemIndexPathAtCenterOfRect:{v9, v11, v13, v15}];
        }

        else
        {
          v22 = 0;
        }
      }

LABEL_23:
      window = v22;
    }
  }

  else
  {
    window = 0;
  }

  return window;
}

- (id)sectionedGridLayout:(id)layout sectionsForVisualSection:(int64_t)section
{
  layoutCopy = layout;
  albumsSections = [(PUAlbumListViewController *)self albumsSections];
  v9 = albumsSections;
  v10 = v8;
  if (section)
  {
    if ([(PUAlbumListViewController *)self numberOfVisualSectionsForSectionedGridLayout:layoutCopy]- 1 != section)
    {
      v17 = [MEMORY[0x1E696AC90] indexSetWithIndex:section];
      goto LABEL_10;
    }

    v11 = v10 + v9 - 1;
    v12 = MEMORY[0x1E696AC90];
    numberOfSections = [(PUAlbumListViewController *)self numberOfSections]- v11;
    v14 = v12;
    v15 = v11;
  }

  else
  {
    v16 = MEMORY[0x1E696AC90];
    if (v8 > 1)
    {
      numberOfSections = albumsSections + 1;
    }

    else
    {
      numberOfSections = [(PUAlbumListViewController *)self numberOfSections];
    }

    v14 = v16;
    v15 = 0;
  }

  v17 = [v14 indexSetWithIndexesInRange:{v15, numberOfSections}];
LABEL_10:
  v18 = v17;

  return v18;
}

- (int64_t)numberOfVisualSectionsForSectionedGridLayout:(id)layout
{
  dataSource = [(PUAlbumListViewController *)self dataSource];
  numberOfSections = [dataSource numberOfSections];

  if (numberOfSections <= 1)
  {
    return 1;
  }

  else
  {
    return numberOfSections;
  }
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath completionHandler:(id)handler
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  handlerCopy = handler;
  if (pathCopy == indexPathCopy || [pathCopy isEqual:indexPathCopy])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
    collectionList = [dataSourceManager collectionList];
    collectionsFetchResult = [dataSourceManager collectionsFetchResult];
    v17 = [(PUAlbumListViewController *)self _unfilteredIndexForFilteredIndexPath:pathCopy];
    v18 = [(PUAlbumListViewController *)self _unfilteredIndexForFilteredIndexPath:indexPathCopy];
    photoLibrary = [collectionList photoLibrary];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __94__PUAlbumListViewController_collectionView_moveItemAtIndexPath_toIndexPath_completionHandler___block_invoke;
    v25[3] = &unk_1E7B80688;
    v26 = collectionList;
    v27 = collectionsFetchResult;
    v28 = v17;
    v29 = v18;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __94__PUAlbumListViewController_collectionView_moveItemAtIndexPath_toIndexPath_completionHandler___block_invoke_2;
    v22[3] = &unk_1E7B78C08;
    v22[4] = self;
    v23 = v26;
    v24 = handlerCopy;
    v19 = v26;
    v20 = collectionsFetchResult;
    [photoLibrary performChanges:v25 completionHandler:v22];
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

- (BOOL)collectionView:(id)view canReorderItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(PUAlbumListViewController *)self isEditing])
  {
    v6 = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];
    if (v6)
    {
      retitlingCollection = [(PUAlbumListViewController *)self retitlingCollection];
      if (retitlingCollection)
      {
        v8 = 0;
      }

      else
      {
        dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
        v8 = [dataSourceManager canReorderCollection:v6];
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

- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type
{
  performerCopy = performer;
  controllerCopy = controller;
  switch(type)
  {
    case 1:
      navigationController = [(PUAlbumListViewController *)self navigationController];
      [navigationController px_pushViewController:controllerCopy animated:1 completion:0];
      goto LABEL_7;
    case 2:
      navigationController = [(PUAlbumListViewController *)self navigationController];
      [navigationController presentViewController:controllerCopy animated:1 completion:0];
LABEL_7:

      v11 = 1;
      goto LABEL_8;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:3351 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (void)assetCollectionActionPerformer:(id)performer playMovieForAssetCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x1E69C36C0];
    v6 = collectionCopy;
    v7 = [v5 moviePresenterWithPresentingViewController:self];
    [v7 presentMovieViewControllerForAssetCollection:v6 keyAssetFetchResult:0 preferredTransitionType:1];
  }
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  identifier = [configuration identifier];
  if (identifier)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      px_descriptionForAssertionMessage = [identifier px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:3301 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"configuration.identifier", v12, px_descriptionForAssertionMessage}];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __102__PUAlbumListViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v14[3] = &unk_1E7B80C38;
    v14[4] = self;
    v15 = identifier;
    [animatorCopy addCompletion:v14];
  }
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  contextMenuInteractionEndBlock = [(PUAlbumListViewController *)self contextMenuInteractionEndBlock];

  if (contextMenuInteractionEndBlock)
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
      if (animatorCopy)
      {
        [animatorCopy addCompletion:v8];
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

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  v9 = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];
  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  isForAssetPicker = [sessionInfo isForAssetPicker];

  sessionInfo2 = [(PUAlbumListViewController *)self sessionInfo];
  isForAlbumPicker = [sessionInfo2 isForAlbumPicker];

  sessionInfo3 = [(PUAlbumListViewController *)self sessionInfo];
  isLimitedLibraryPicker = [sessionInfo3 isLimitedLibraryPicker];

  v16 = 0;
  if ((isForAssetPicker & 1) == 0 && (isLimitedLibraryPicker & 1) == 0 && (isForAlbumPicker & 1) == 0)
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
      v20 = viewCopy;
      v21 = pathCopy;
      selfCopy = self;
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

- (void)configureSupplementaryView:(id)view ofKind:(id)kind forIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:@"PUGridGlobalFooter"])
  {
    [(PUAlbumListViewController *)self setSyncProgressView:viewCopy];
    [(PUAlbumListViewController *)self updateSyncProgress];
  }

  else if ([kindCopy isEqualToString:@"PUAlbumListViewControllerElementKindSectionHeader"])
  {
    _mainCollectionViewLayout = [(PUAlbumListViewController *)self _mainCollectionViewLayout];
    v12 = [_mainCollectionViewLayout visualSectionForSupplementaryViewIndexPath:pathCopy];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:3209 description:{@"%@ can't configure header view at %@ as it is not bound to a visual section", self, pathCopy}];
    }

    dataSource = [(PUAlbumListViewController *)self dataSource];
    v14 = [dataSource collectionListForSection:v12];

    localizedTitle = [v14 localizedTitle];
    v16 = PULocalizedString(localizedTitle);

    v17 = viewCopy;
    [v17 setSectionHeaderTitle:v16];
    _fontManager = [(PUAlbumListViewController *)self _fontManager];
    albumListSectionTitleLabelFont = [_fontManager albumListSectionTitleLabelFont];
    [v17 setSectionHeaderTitleFont:albumListSectionTitleLabelFont];

    spec = [(PUAlbumListViewController *)self spec];
    [(PUAlbumListViewController *)self _layoutReferenceSize];
    v22 = v21;
    v24 = v23;
    [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
    [spec sectionInsetsForLayoutReferenceSize:v22 safeAreaInsets:{v24, v25, v26, v27, v28}];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    [v17 setSectionHeaderInsets:{v30, v32, v34, v36}];
  }
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(PUAlbumListViewController *)self isPlaceholderAtIndexPath:pathCopy])
  {
    v6 = [(PUAlbumListViewController *)self placeholderKindAtIndexPath:pathCopy];

    return [(PUAlbumListViewController *)self _isPlaceholderEnabled:v6];
  }

  else
  {
    v8 = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];

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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  v10 = [view dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:kindCopy forIndexPath:pathCopy];
  [(PUAlbumListViewController *)self configureSupplementaryView:v10 ofKind:kindCopy forIndexPath:pathCopy];

  return v10;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(PUAlbumListViewController *)self isPlaceholderAtIndexPath:pathCopy])
  {
    v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"placeholderCell" forIndexPath:pathCopy];
    albumListCellContentView = [v8 albumListCellContentView];
    [albumListCellContentView prepareForReuse];
    [(PUAlbumListViewController *)self updatePlaceholderListCellContentView:albumListCellContentView forItemAtIndexPath:pathCopy animated:0];
  }

  else
  {
    albumListCellContentView = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = @"albumCell";
    }

    else
    {
      v10 = @"folderCell";
    }

    v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];
    spec = [(PUAlbumListViewController *)self spec];
    [spec cellBackgroundCornerRadius];
    [v8 setBackgroundCornerRadius:?];

    albumListCellContentView2 = [v8 albumListCellContentView];
    [albumListCellContentView2 setDelegate:self];
    [albumListCellContentView2 prepareForReuse];
    [(PUAlbumListViewController *)self updateAlbumListCellContentView:albumListCellContentView2 forItemAtIndexPath:pathCopy animated:0];
  }

  return v8;
}

- (BOOL)isEmpty
{
  dataSource = [(PUAlbumListViewController *)self dataSource];
  if (dataSource && (v4 = dataSource, -[PUAlbumListViewController dataSource](self, "dataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsAnyItems], v5, v4, (v6 & 1) != 0))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
    v7 = [sessionInfo isSelectingTargetAlbum] ^ 1;
  }

  return v7;
}

- (BOOL)px_scrollToInitialPositionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationController = [(PUAlbumListViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v7 = [viewControllers count];

  if (v7 == 1)
  {
    mainScrollView = [(PUAlbumListViewController *)self mainScrollView];
    v9 = 1;
    [mainScrollView px_scrollToEdge:1 animated:animatedCopy];
  }

  else
  {
    collectionView = [(PUAlbumListViewController *)self collectionView];
    v11 = [collectionView px_isScrolledAtEdge:1];

    mainScrollView2 = [(PUAlbumListViewController *)self mainScrollView];
    [mainScrollView2 px_scrollToEdge:1 animated:animatedCopy];

    return v11 ^ 1;
  }

  return v9;
}

- (void)_scrollToCollection:(id)collection animated:(BOOL)animated
{
  animatedCopy = animated;
  collectionCopy = collection;
  if ([(PUAlbumListViewController *)self isViewInSyncWithModel])
  {
    v6 = [(PUAlbumListViewController *)self indexPathForCollection:collectionCopy];
    if (v6)
    {
      v7 = v6;
      [(PUAlbumListViewController *)self scrollToItemAtIndexPath:v6 centered:1 animated:animatedCopy];
    }
  }
}

- (void)_performOrScheduleScrollToCollection:(id)collection animated:(BOOL)animated
{
  animatedCopy = animated;
  collectionCopy = collection;
  if ([(PUAlbumListViewController *)self isViewLoaded])
  {
    [(PUAlbumListViewController *)self _scrollToCollection:collectionCopy animated:animatedCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__PUAlbumListViewController__performOrScheduleScrollToCollection_animated___block_invoke;
    v7[3] = &unk_1E7B7CE88;
    objc_copyWeak(&v9, &location);
    v8 = collectionCopy;
    v10 = animatedCopy;
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

- (void)showPlacesCount:(int64_t)count atIndexPath:(id)path
{
  v9 = [(PUAlbumListViewController *)self _preparedPlaceholderListCellContentViewAtIndexPath:path];
  if (count)
  {
    v5 = PLSharedCountFormatter();
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:count];
    v7 = [v5 stringFromNumber:v6];
  }

  else
  {
    v7 = @" ";
    v8 = @" ";
  }

  [v9 setSubtitle:v7 animated:1];
}

- (void)showPlacesCount:(int64_t)count
{
  indexPathForPlacesAlbum = [(PUAlbumListViewController *)self indexPathForPlacesAlbum];
  [(PUAlbumListViewController *)self showPlacesCount:count atIndexPath:indexPathForPlacesAlbum];
}

- (void)showPlacesPlaceholderImageInStackView:(id)view andContentView:(id)contentView
{
  contentViewCopy = contentView;
  viewCopy = view;
  spec = [(PUAlbumListViewController *)self spec];
  window = [contentViewCopy window];
  v10 = [spec emptyAlbumPlaceholderImageForWindow:window];

  [(PUAlbumListViewController *)self _updateStackView:viewCopy forAssets:0 collection:0 withCustomEmptyPlaceholderImage:v10];
  [contentViewCopy setCustomImageView:0];
}

- (void)_navigateToPlacesFromCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [collectionCopy assetCollectionSubtype] == 1000000203)
  {
    px_gridPresentation = [(PUAlbumListViewController *)self px_gridPresentation];
    v6 = [px_gridPresentation createPlacesViewControllerForAssetCollection:collectionCopy];

    navigationItem = [v6 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    navigationController = [(PUAlbumListViewController *)self navigationController];
    [navigationController pu_pushViewController:v6 withTransition:0 animated:1 isInteractive:0];

    if ([MEMORY[0x1E69636A8] px_allowsDonationsForCurrentProcess])
    {
      v9 = MEMORY[0x1E69636A8];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __61__PUAlbumListViewController__navigateToPlacesFromCollection___block_invoke_2;
      v10[3] = &unk_1E7B750C8;
      v11 = collectionCopy;
      selfCopy = self;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:2986 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (void)_navigateToPeopleAnimated:(BOOL)animated withPersonLocalIdentifier:(id)identifier withCompletion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:2982 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (void)navigateToAllPhotosAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  newGridViewControllerForAllPhotos = [(PUAlbumListViewController *)self newGridViewControllerForAllPhotos];
  navigationController = [(PUAlbumListViewController *)self navigationController];
  [navigationController pu_pushViewController:newGridViewControllerForAllPhotos withTransition:0 animated:animatedCopy isInteractive:0];

  if (completionCopy)
  {
    pushedController = [(PUAlbumListViewController *)self pushedController];
    completionCopy[2](completionCopy, pushedController);
  }
}

- (id)_viewControllerForCollection:(id)collection userActivity:(id *)activity
{
  v20[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  px_isFolder = [collectionCopy px_isFolder];
  if (px_isFolder)
  {
    v8 = [(PUAlbumListViewController *)self _createControllerForFolder:collectionCopy];
  }

  else
  {
    v9 = collectionCopy;
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
  [(PUAlbumListViewController *)self setPushedAlbum:collectionCopy];
  if (activity && ((px_isFolder | [MEMORY[0x1E69636A8] px_allowsDonationsForCurrentProcess] ^ 1) & 1) == 0)
  {
    v10 = collectionCopy;
    assetCollectionSubtype = [v10 assetCollectionSubtype];
    if (assetCollectionSubtype != 205 && assetCollectionSubtype != 1000000201)
    {
      localizedTitle = [v10 localizedTitle];
      if ([localizedTitle length])
      {
        v13 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.mobileslideshow.album"];
        v14 = px_deferredLocalizedStringWithFormat();
        [v13 setTitle:{v14, localizedTitle}];

        [v13 setEligibleForSearch:1];
        [v13 _setEligibleForPrediction:1];
        [v13 setEligibleForHandoff:0];
        v19 = @"uuid";
        uuid = [v10 uuid];
        v20[0] = uuid;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
        [v13 addUserInfoEntriesFromDictionary:v16];

        [v13 px_setPersistentIdentifierFromAssetCollection:v10];
        [(PUAlbumListViewController *)self setSiriActionActivity:v13];
        v17 = v13;
        *activity = v13;
      }
    }
  }

  return v8;
}

- (void)navigateToCollection:(id)collection animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v13 = 0;
  v9 = [(PUAlbumListViewController *)self _viewControllerForCollection:collection userActivity:&v13];
  v10 = v13;
  navigationController = [(PUAlbumListViewController *)self navigationController];
  [navigationController pu_pushViewController:v9 withTransition:0 animated:animatedCopy isInteractive:0];

  if (completionCopy)
  {
    pushedController = [(PUAlbumListViewController *)self pushedController];
    completionCopy[2](completionCopy, pushedController);
  }

  [v10 becomeCurrent];
}

- (id)_createControllerForFolder:(id)folder
{
  folderCopy = folder;
  v5 = [(PUAlbumListViewController *)self newGridViewControllerForFolder:folderCopy];
  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  [v5 setSessionInfo:sessionInfo];

  [v5 setCanShowAggregateItem:1];
  v7 = [objc_alloc(MEMORY[0x1E69C37F0]) initWithCollectionList:folderCopy];

  [v5 setDataSourceManagerConfiguration:v7];
  navigationItem = [v5 navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  return v5;
}

- (BOOL)canNavigateToCollection:(id)collection
{
  v3 = [(PUAlbumListViewController *)self indexPathForCollection:collection];
  v4 = v3 != 0;

  return v4;
}

- (id)px_navigationDestination
{
  _collectionForNavigation = [(PUAlbumListViewController *)self _collectionForNavigation];
  if (_collectionForNavigation)
  {
    v3 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:_collectionForNavigation revealMode:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PUAlbumListViewController_navigateToDestination_options_completionHandler___block_invoke;
  v10[3] = &unk_1E7B750A0;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(PUAlbumListViewController *)self _navigateToDestination:destination provideViewControllers:0 options:options completionHandler:v10];
}

- (void)_navigateToDestination:(id)destination provideViewControllers:(BOOL)controllers options:(unint64_t)options completionHandler:(id)handler
{
  controllersCopy = controllers;
  v52[1] = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  handlerCopy = handler;
  _collectionForNavigation = [(PUAlbumListViewController *)self _collectionForNavigation];
  sidebarBackNavigationRootDestination = [destinationCopy sidebarBackNavigationRootDestination];
  collection = [sidebarBackNavigationRootDestination collection];
  v16 = [collection isEqual:_collectionForNavigation];

  if (v16)
  {
    navigationItem = [(PUAlbumListViewController *)self navigationItem];
    [navigationItem px_setHidesBackButtonInRegularWidth:1];
    traitCollection = [(PUAlbumListViewController *)self traitCollection];
    [navigationItem px_updateBackButtonVisibilityForTraitCollection:traitCollection];
  }

  collection2 = [destinationCopy collection];
  v20 = [collection2 isEqual:_collectionForNavigation];

  if (v20)
  {
    v52[0] = self;
    collectionHierarchy = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
    handlerCopy[2](handlerCopy, collectionHierarchy, 1, 0);
  }

  else
  {
    collectionHierarchy = [destinationCopy collectionHierarchy];
    v22 = [collectionHierarchy px_objectAfterObject:_collectionForNavigation];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(PUAlbumListViewController *)self indexPathForCollection:v22], v23 = objc_claimAutoreleasedReturnValue(), v23, v23))
    {
      v24 = [destinationCopy type] == 8 && objc_msgSend(destinationCopy, "revealMode") == 2;
      if ([(PUAlbumListViewController *)self isEditing])
      {
        [(PUAlbumListViewController *)self setEditing:0];
      }

      [(PUAlbumListViewController *)self _performOrScheduleScrollToCollection:v22 animated:0];
      if (v24)
      {
        selfCopy = self;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy count:1];
        handlerCopy[2](handlerCopy, v26, 1, 0);
      }

      else if (controllersCopy)
      {
        v43 = 0;
        v27 = [(PUAlbumListViewController *)self _viewControllerForCollection:v22 userActivity:&v43];
        v26 = v43;
        if (([v27 routingOptionsForDestination:destinationCopy] & 2) != 0)
        {
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __101__PUAlbumListViewController__navigateToDestination_provideViewControllers_options_completionHandler___block_invoke;
          v39[3] = &unk_1E7B75028;
          v39[4] = self;
          v42 = handlerCopy;
          v40 = v27;
          v41 = v26;
          [v40 provideViewControllersForDestination:destinationCopy options:options completionHandler:v39];
        }

        else if (v27)
        {
          v45[0] = self;
          v45[1] = v27;
          v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
          handlerCopy[2](handlerCopy, v28, 1, 0);

          [v26 becomeCurrent];
        }

        else
        {
          v29 = PXAssertGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            selfCopy5 = self;
            v50 = 2112;
            v51 = destinationCopy;
            _os_log_error_impl(&dword_1B36F3000, v29, OS_LOG_TYPE_ERROR, "Albums list %@ failed to navigate to destination %@", buf, 0x16u);
          }

          v30 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Albums list %@ failed to navigate to destination %@", self, destinationCopy}];
          selfCopy3 = self;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy3 count:1];
          (handlerCopy)[2](handlerCopy, v31, 2, v30);
        }
      }

      else
      {
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __101__PUAlbumListViewController__navigateToDestination_provideViewControllers_options_completionHandler___block_invoke_409;
        v32[3] = &unk_1E7B75078;
        v33 = destinationCopy;
        optionsCopy = options;
        v38 = a2;
        v36 = handlerCopy;
        selfCopy4 = self;
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
        selfCopy5 = self;
        v50 = 2112;
        v51 = destinationCopy;
        _os_log_error_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_ERROR, "Albums list %@ failed to navigate to destination %@", buf, 0x16u);
      }

      selfCopy6 = self;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy6 count:1];
      handlerCopy[2](handlerCopy, v26, 2, 0);
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

- (unint64_t)routingOptionsForDestination:(id)destination
{
  destinationCopy = destination;
  _collectionForNavigation = [(PUAlbumListViewController *)self _collectionForNavigation];
  collection = [destinationCopy collection];
  v8 = [collection isEqual:_collectionForNavigation];

  if (v8)
  {
    v9 = 3;
  }

  else
  {
    collectionHierarchy = [destinationCopy collectionHierarchy];
    v11 = [collectionHierarchy px_objectAfterObject:_collectionForNavigation];
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        px_descriptionForAssertionMessage = [v11 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:2797 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[collectionHierarchy px_objectAfterObject:ownCollection]", v16, px_descriptionForAssertionMessage}];
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
  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  collectionList = [dataSourceManager collectionList];

  if (!collectionList)
  {
    collectionList = [(PUAlbumListViewController *)self collection];
  }

  return collectionList;
}

- (void)albumListCellContentView:(id)view didEndRetitlingFromTitle:(id)title toTitle:(id)toTitle
{
  v29[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  titleCopy = title;
  toTitleCopy = toTitle;
  v11 = [(PUAlbumListViewController *)self indexPathForAlbumListCellContentView:viewCopy];
  v12 = [(PUAlbumListViewController *)self collectionAtIndexPath:v11];
  if ([toTitleCopy length])
  {
    if (([toTitleCopy isEqualToString:titleCopy] & 1) == 0)
    {
      if (v12)
      {
        dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
        v14 = [dataSourceManager canRenameCollection:v12];

        if (v14)
        {
          v22 = [objc_alloc(MEMORY[0x1E69C3960]) initWithCollection:v12 title:toTitleCopy];
          undoManager = [(PUAlbumListViewController *)self undoManager];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __87__PUAlbumListViewController_albumListCellContentView_didEndRetitlingFromTitle_toTitle___block_invoke;
          v23[3] = &unk_1E7B7FB70;
          v24 = viewCopy;
          v25 = toTitleCopy;
          [v22 executeWithUndoManager:undoManager completionHandler:v23];

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

  retitlingCollection = [(PUAlbumListViewController *)self retitlingCollection];

  if (v12 == retitlingCollection)
  {
    [(PUAlbumListViewController *)self setKeyboardAware:0];
    [(PUAlbumListViewController *)self setRetitlingCollection:0];
  }
}

- (BOOL)albumListCellContentViewShouldBeginRetitling:(id)retitling
{
  v4 = [(PUAlbumListViewController *)self indexPathForAlbumListCellContentView:retitling];
  v5 = [(PUAlbumListViewController *)self shouldBeginRetitlingAlbumAtIndexPath:v4];
  if (v5)
  {
    v6 = [(PUAlbumListViewController *)self collectionAtIndexPath:v4];
    [(PUAlbumListViewController *)self setRetitlingCollection:v6];
    [(PUAlbumListViewController *)self setKeyboardAware:1];
  }

  return v5;
}

- (void)albumListCellContentView:(id)view performDeleteAction:(id)action
{
  action = [(PUAlbumListViewController *)self indexPathForAlbumListCellContentView:view, action];
  [(PUAlbumListViewController *)self _handleDeleteAlbumAtIndexPath:action];
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  queueCopy = queue;
  infoCopy = info;
  collection = [(PUAlbumListViewController *)self collection];
  if (collection)
  {
    if (infoCopy)
    {
      objectAfterChanges = [infoCopy objectForKeyedSubscript:@"updatedCollection"];
      if (!objectAfterChanges)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      v9 = [queueCopy changeDetailsForObject:collection];
      objectAfterChanges = [v9 objectAfterChanges];

      if (!objectAfterChanges)
      {
        goto LABEL_5;
      }
    }

    [(PUAlbumListViewController *)self setCollection:objectAfterChanges];
    goto LABEL_5;
  }

LABEL_6:
}

- (id)prepareForPhotoLibraryChange:(id)change
{
  v4 = MEMORY[0x1E695DF90];
  changeCopy = change;
  dictionary = [v4 dictionary];
  collection = [(PUAlbumListViewController *)self collection];
  v8 = [changeCopy changeDetailsForObject:collection];

  objectAfterChanges = [v8 objectAfterChanges];
  [dictionary setObject:objectAfterChanges forKeyedSubscript:@"updatedCollection"];

  return dictionary;
}

- (void)_updateAlbumSubtitleFormat
{
  systemPhotoLibrary = [MEMORY[0x1E69BE670] systemPhotoLibrary];
  syncedAlbumSubtitleStringFormat = [systemPhotoLibrary syncedAlbumSubtitleStringFormat];
  albumSubtitleFormat = self->_albumSubtitleFormat;
  self->_albumSubtitleFormat = syncedAlbumSubtitleStringFormat;
}

- (void)updateSyncProgress
{
  v12 = 1;
  photoLibrary = [(PUAlbumListViewController *)self photoLibrary];
  v4 = [photoLibrary hasSyncProgressReturningImportOperations:&v12];

  v11 = 0;
  v10 = 0;
  if (v4 && [(PUAlbumListViewController *)self canShowSyncProgress])
  {
    systemPhotoLibrary = [MEMORY[0x1E69BE670] systemPhotoLibrary];
    [systemPhotoLibrary getPhotoCount:&v11 videoCount:&v10];

    [(PUAlbumListViewController *)self setSyncProgressVisible:1];
    syncProgressView = [(PUAlbumListViewController *)self syncProgressView];
    viewModel = [syncProgressView viewModel];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__PUAlbumListViewController_updateSyncProgress__block_invoke;
    v8[3] = &__block_descriptor_52_e36_v16__0___PXMutableFooterViewModel__8l;
    v8[4] = v11;
    v8[5] = v10;
    v9 = v12;
    [viewModel performChanges:v8];
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

- (void)sessionInfoPhotoSelectionDidChange:(id)change
{
  [(PUAlbumListViewController *)self updateNavigationBarAnimated:0];

  [(PUAlbumListViewController *)self _updateNavigationBannerAnimated:0];
}

- (void)_keyboardWillChangeFrame:(id)frame
{
  frameCopy = frame;
  retitlingCollection = [(PUAlbumListViewController *)self retitlingCollection];
  if (retitlingCollection)
  {
    mainScrollView = [(PUAlbumListViewController *)self mainScrollView];
    userInfo = [frameCopy userInfo];
    [(PUAlbumListViewController *)self px_safeAreaInsets];
    [mainScrollView px_adjustInsetsForKeyboardInfo:userInfo safeAreaInsets:?];
  }
}

- (void)setKeyboardAware:(BOOL)aware
{
  if (self->__isKeyboardAware != aware)
  {
    self->__isKeyboardAware = aware;
    _isKeyboardAware = [(PUAlbumListViewController *)self _isKeyboardAware];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = defaultCenter;
    if (_isKeyboardAware)
    {
      [defaultCenter addObserver:self selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];
    }

    else
    {
      [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE068] object:0];
    }
  }
}

- (void)_handlePendingScrollingAnimationEndBlock
{
  _pendingScrollingAnimationEndBlock = [(PUAlbumListViewController *)self _pendingScrollingAnimationEndBlock];
  if (_pendingScrollingAnimationEndBlock)
  {
    v4 = _pendingScrollingAnimationEndBlock;
    [(PUAlbumListViewController *)self _setPendingScrollingAnimationEndBlock:0];
    v4[2](v4);
    _pendingScrollingAnimationEndBlock = v4;
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = PUAlbumListViewController;
  coordinatorCopy = coordinator;
  [(PUAlbumListViewController *)&v8 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinatorCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__PUAlbumListViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v7[3] = &unk_1E7B7DC38;
  v7[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v7];
}

- (BOOL)pu_wantsToolbarVisible
{
  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  isForAssetPicker = [sessionInfo isForAssetPicker];

  if (isForAssetPicker)
  {
    navigationController = [(PUAlbumListViewController *)self navigationController];
    v6 = [navigationController isToolbarHidden] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if (!editing)
  {
    view = [(PUAlbumListViewController *)self view];
    [view endEditing:1];
  }

  isEditing = [(PUAlbumListViewController *)self isEditing];
  v27.receiver = self;
  v27.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v27 setEditing:editingCopy animated:animatedCopy];
  if (isEditing != editingCopy)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __49__PUAlbumListViewController_setEditing_animated___block_invoke;
    v25[3] = &unk_1E7B74FB8;
    v25[4] = self;
    v26 = animatedCopy;
    [(PUAlbumListViewController *)self _enumerateIndexPathsForPreparedItemsUsingBlock:v25];
    [(PUAlbumListViewController *)self _updatePeripheralInterfaceAnimated:animatedCopy];
    if (editingCopy)
    {
      indexPathForFirstEditableAlbum = [(PUAlbumListViewController *)self indexPathForFirstEditableAlbum];
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 1;
      indexPathsForVisibleItems = [(PUAlbumListViewController *)self indexPathsForVisibleItems];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __49__PUAlbumListViewController_setEditing_animated___block_invoke_2;
      v18 = &unk_1E7B74FE0;
      v11 = indexPathForFirstEditableAlbum;
      v19 = v11;
      v20 = &v21;
      [indexPathsForVisibleItems enumerateObjectsUsingBlock:&v15];

      if (*(v22 + 24) == 1)
      {
        v12 = [(PUAlbumListViewController *)self indexPathForFirstEditableAlbum:v15];
        [(PUAlbumListViewController *)self scrollToItemAtIndexPath:v12 centered:1 animated:animatedCopy];
      }

      _Block_object_dispose(&v21, 8);
    }

    v13 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:{self, v15, v16, v17, v18}];
    [v13 setNeedsFocusUpdate];
  }

  _mainTableView = [(PUAlbumListViewController *)self _mainTableView];
  [_mainTableView setEditing:-[PUAlbumListViewController isEditing](self animated:{"isEditing"), animatedCopy}];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v6 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  retitlingCollection = [(PUAlbumListViewController *)self retitlingCollection];
  if (retitlingCollection)
  {
    [(PUAlbumListViewController *)self navigateToRevealAssetCollection:retitlingCollection initiallyHidden:0 animated:1];
  }
}

- (id)backgroundColorForTableView
{
  v2 = +[PUInterfaceManager currentTheme];
  photoCollectionViewBackgroundColor = [v2 photoCollectionViewBackgroundColor];

  return photoCollectionViewBackgroundColor;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v9 viewDidDisappear:disappear];
  [(PUAlbumListViewController *)self _resetPreheating];
  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  [dataSourceManager pauseBackgroundFetching];

  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    *buf = 138412290;
    v11 = v6;
    v7 = v6;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "*** %@ ending suppresion contexts", buf, 0xCu);
  }

  notificationSuppressionContextManager = [*MEMORY[0x1E69DDA98] notificationSuppressionContextManager];
  [notificationSuppressionContextManager setNotificationSuppressionContexts:0];
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
    _placesAlbumCoverProvider = [(PUAlbumListViewController *)self _placesAlbumCoverProvider];
    objc_initWeak(&from, _placesAlbumCoverProvider);

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

- (void)viewDidAppear:(BOOL)appear
{
  v16 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v11 viewDidAppear:appear];
  _suppressionContexts = [(PUAlbumListViewController *)self _suppressionContexts];
  v5 = PLUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = _suppressionContexts;
    v7 = v6;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "*** %@ Suppressing SB alerts for %@", buf, 0x16u);
  }

  notificationSuppressionContextManager = [*MEMORY[0x1E69DDA98] notificationSuppressionContextManager];
  [notificationSuppressionContextManager setNotificationSuppressionContexts:_suppressionContexts];

  if ([(PUAlbumListViewController *)self isRootSharedAlbumList])
  {
    [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.photoStreamList" withPayload:MEMORY[0x1E695E0F8]];
  }

  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  [dataSourceManager startBackgroundFetchingIfNeeded];

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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v21.receiver = self;
  v21.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v21 viewWillAppear:?];
  [(PUAlbumListViewController *)self _resetPreheating];
  pushedAlbum = [(PUAlbumListViewController *)self pushedAlbum];
  [(PUAlbumListViewController *)self setPushedAlbum:0];
  [(PUAlbumListViewController *)self setPushedController:0];
  if (![(PUAlbumListViewController *)self isViewInSyncWithModel])
  {
    [(PUAlbumListViewController *)self _updateAlbumSubtitleFormat];
    [(PUAlbumListViewController *)self _updateInterfaceForModelReloadAnimated:0];
  }

  if (pushedAlbum)
  {
    sessionInfo = [(PUAlbumListViewController *)self indexPathForCollection:pushedAlbum];
    if (sessionInfo)
    {
      presentingViewController = [(PUAlbumListViewController *)self presentingViewController];
      transitionCoordinator = [presentingViewController transitionCoordinator];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __44__PUAlbumListViewController_viewWillAppear___block_invoke;
      v18 = &unk_1E7B7AC08;
      selfCopy = self;
      sessionInfo = sessionInfo;
      v20 = sessionInfo;
      [transitionCoordinator animateAlongsideTransition:&v15 completion:0];
    }

    goto LABEL_9;
  }

  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  sourceAlbum = [sessionInfo sourceAlbum];
  if (!sourceAlbum)
  {
LABEL_9:

    goto LABEL_10;
  }

  v10 = sourceAlbum;
  sessionInfo2 = [(PUAlbumListViewController *)self sessionInfo];
  scrollToSourceAlbumWhenPresented = [sessionInfo2 scrollToSourceAlbumWhenPresented];

  if (scrollToSourceAlbumWhenPresented)
  {
    sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
    sourceAlbum2 = [sessionInfo sourceAlbum];
    [(PUAlbumListViewController *)self _performOrScheduleScrollToCollection:sourceAlbum2 animated:0];

    goto LABEL_9;
  }

LABEL_10:
  [(PUAlbumListViewController *)self deselectSelectedItemAnimated:appearCopy, v15, v16, v17, v18, selfCopy];
  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:appearCopy];
  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  [dataSourceManager prepareBackgroundFetchingIfNeeded];
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
  mainScrollView = [(PUAlbumListViewController *)self mainScrollView];
  [mainScrollView setNeedsLayout];

  mainScrollView2 = [(PUAlbumListViewController *)self mainScrollView];
  [mainScrollView2 layoutIfNeeded];

  _onViewDidLayoutSubviewsBlock = [(PUAlbumListViewController *)self _onViewDidLayoutSubviewsBlock];

  if (_onViewDidLayoutSubviewsBlock)
  {
    _onViewDidLayoutSubviewsBlock2 = [(PUAlbumListViewController *)self _onViewDidLayoutSubviewsBlock];
    _onViewDidLayoutSubviewsBlock2[2]();

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
  spec = [(PUAlbumListViewController *)self spec];
  shouldUseTableView = [spec shouldUseTableView];

  view = [(PUAlbumListViewController *)self view];
  [view bounds];
  v55 = v6;
  v56 = v5;
  v8 = v7;
  v10 = v9;
  _mainTableView = [(PUAlbumListViewController *)self _mainTableView];
  v12 = _mainTableView;
  if (shouldUseTableView)
  {
    if (!_mainTableView)
    {
      v12 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:-[PUAlbumListViewController tableViewStyle](self style:{"tableViewStyle"), v56, v55, v8, v10}];
      v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v8, 1.17549435e-38}];
      [v12 setTableHeaderView:v13];

      [v12 setAutoresizingMask:18];
      [v12 setAlwaysBounceVertical:1];
      [v12 setDataSource:self];
      [v12 setDelegate:self];
      backgroundColorForTableView = [(PUAlbumListViewController *)self backgroundColorForTableView];
      if (backgroundColorForTableView)
      {
        [v12 setBackgroundColor:backgroundColorForTableView];
      }

      [v12 setAllowsSelection:1];
      [v12 setAllowsSelectionDuringEditing:0];
      [v12 setAllowsMultipleSelection:0];
      [v12 setSeparatorStyle:0];
      [v12 setCellLayoutMarginsFollowReadableWidth:0];
      [view addSubview:v12];
      [(PUAlbumListViewController *)self _setMainTableView:v12];
      [(PUAlbumListViewController *)self setViewInSyncWithModel:0];
    }

    spec2 = [(PUAlbumListViewController *)self spec];
    view2 = [(PUAlbumListViewController *)self view];
    [view2 bounds];
    [spec2 cellSizeForBounds:?];
    [v12 setEstimatedRowHeight:v17];

    [v12 setSectionHeaderHeight:0.0];
    spec3 = [(PUAlbumListViewController *)self spec];
    [spec3 sectionFooterHeight];
    v20 = v19;

    [v12 setSectionFooterHeight:v20];
  }

  else
  {
    if (!_mainTableView)
    {
      goto LABEL_10;
    }

    [_mainTableView setDataSource:0];
    [v12 setDelegate:0];
    [v12 removeFromSuperview];
    [(PUAlbumListViewController *)self _setMainTableView:0];
  }

LABEL_10:
  view3 = [(PUAlbumListViewController *)self view];
  [view3 frame];
  v23 = v22;
  v25 = v24;

  view4 = [(PUAlbumListViewController *)self view];
  [view4 safeAreaInsets];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [(PUAlbumListViewController *)self _setLayoutReferenceSize:v23, v25];
  [(PUAlbumListViewController *)self _setLayoutSafeAreaInsets:v28, v30, v32, v34];
  _mainCollectionViewLayout = [(PUAlbumListViewController *)self _mainCollectionViewLayout];
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  if (shouldUseTableView)
  {
    if (_mainCollectionViewLayout)
    {
      [(PUSectionedGridLayout *)_mainCollectionViewLayout setDelegate:0];
      [(PUAlbumListViewController *)self _setMainCollectionViewLayout:0];
    }

    if (_mainCollectionView)
    {
      [(PUCollectionView *)_mainCollectionView setDataSource:0];
      [(PUCollectionView *)_mainCollectionView setDelegate:0];
      [(PUCollectionView *)_mainCollectionView setDragDestinationDelegate:0];
      [(PUCollectionView *)_mainCollectionView setReorderDelegate:0];
      [(PUCollectionView *)_mainCollectionView removeFromSuperview];
      [(PUAlbumListViewController *)self _setMainCollectionView:0];
    }
  }

  else
  {
    if (!_mainCollectionViewLayout)
    {
      _mainCollectionViewLayout = objc_alloc_init(PUSectionedGridLayout);
      [(PUSectionedGridLayout *)_mainCollectionViewLayout setDelegate:self];
      [(PUAlbumListViewController *)self _setMainCollectionViewLayout:_mainCollectionViewLayout];
    }

    [(PUAlbumListViewController *)self _updateLayoutMetrics];
    spec4 = [(PUAlbumListViewController *)self spec];
    [(PUAlbumListViewController *)self _layoutReferenceSize];
    v39 = v38;
    v41 = v40;
    [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
    [spec4 sectionInsetsForLayoutReferenceSize:v39 safeAreaInsets:{v41, v42, v43, v44, v45}];
    v47 = v46;
    v49 = v48;

    navigationItem = [(PUAlbumListViewController *)self navigationItem];
    [navigationItem setLargeTitleInsets:{0.0, v47, 0.0, v49}];

    if (-[PUAlbumListViewController isRootFolder](self, "isRootFolder") && (-[PUAlbumListViewController spec](self, "spec"), v51 = objc_claimAutoreleasedReturnValue(), v52 = [v51 shouldShowSectionHeaders], v51, v52))
    {
      [(PUSectionedGridLayout *)_mainCollectionViewLayout setSectionHeadersEnabled:1];
      [(PUSectionedGridLayout *)_mainCollectionViewLayout setSectionHeaderElementKind:@"PUAlbumListViewControllerElementKindSectionHeader"];
      if (_mainCollectionView)
      {
        goto LABEL_23;
      }
    }

    else
    {
      [(PUSectionedGridLayout *)_mainCollectionViewLayout setSectionHeadersEnabled:0];
      if (_mainCollectionView)
      {
        goto LABEL_23;
      }
    }

    _mainCollectionView = [[PUCollectionView alloc] initWithFrame:_mainCollectionViewLayout collectionViewLayout:v56, v55, v8, v10];
    [(PUCollectionView *)_mainCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"albumCell"];
    [(PUCollectionView *)_mainCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"folderCell"];
    [(PUCollectionView *)_mainCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"placeholderCell"];
    [(PUCollectionView *)_mainCollectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUGridGlobalHeader" withReuseIdentifier:@"PUGridGlobalHeader"];
    [(PUCollectionView *)_mainCollectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUGridGlobalFooter" withReuseIdentifier:@"PUGridGlobalFooter"];
    [(PUCollectionView *)_mainCollectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUAlbumListViewControllerElementKindSectionHeader" withReuseIdentifier:@"PUAlbumListViewControllerElementKindSectionHeader"];
    [(PUCollectionView *)_mainCollectionView setAutoresizingMask:18];
    [(PUCollectionView *)_mainCollectionView setAlwaysBounceVertical:1];
    [(PUCollectionView *)_mainCollectionView setPrefetchingEnabled:1];
    [(PUCollectionView *)_mainCollectionView setDataSource:self];
    [(PUCollectionView *)_mainCollectionView setDelegate:self];
    [(PUCollectionView *)_mainCollectionView setReorderDelegate:self];
    [(PUAlbumListViewController *)self setupDropDelegateForCollectionView:_mainCollectionView];
    [(PUCollectionView *)_mainCollectionView setSpringLoaded:1];
    v53 = +[PUInterfaceManager currentTheme];
    photoCollectionViewBackgroundColor = [v53 photoCollectionViewBackgroundColor];

    [(PUCollectionView *)_mainCollectionView setBackgroundColor:photoCollectionViewBackgroundColor];
    [view addSubview:_mainCollectionView];
    [(PUAlbumListViewController *)self _setMainCollectionView:_mainCollectionView];
    [(PUAlbumListViewController *)self setViewInSyncWithModel:0];
  }

LABEL_23:
}

- (void)_updateLayoutMetrics
{
  spec = [(PUAlbumListViewController *)self spec];
  gridLayout = [(PUAlbumListViewController *)self gridLayout];
  [(PUAlbumListViewController *)self _layoutReferenceSize];
  v5 = v4;
  v7 = v6;
  [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
  [spec configureGridLayout:gridLayout forLayoutReferenceSize:v5 safeAreaInsets:{v7, v8, v9, v10, v11}];
}

- (void)_setLayoutSafeAreaInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->__layoutSafeAreaInsets.top, v3), vceqq_f64(*&self->__layoutSafeAreaInsets.bottom, v4)))) & 1) == 0)
  {
    self->__layoutSafeAreaInsets = insets;
    [(PUAlbumListViewController *)self _invalidatePreparedCellsConfiguration];
  }
}

- (void)_setLayoutReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
  view = [(PUAlbumListViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  [(PUAlbumListViewController *)self _updateAddNewAlbumPlaceholderAnimated:0];
  [(PUAlbumListViewController *)self _updateMainView];
  v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0x100000 action:sel__handleOpenKeyCommand_];
  [(PUAlbumListViewController *)self addKeyCommand:v5];

  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0x80000 action:sel__handleRenameKeyCommand_];
  [(PUAlbumListViewController *)self addKeyCommand:v6];

  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\b" modifierFlags:0 action:sel__handleDeleteKeyCommand_];
  [(PUAlbumListViewController *)self addKeyCommand:v7];

  sharedLibraryStatusProvider = [(PUAlbumListViewController *)self sharedLibraryStatusProvider];
  [sharedLibraryStatusProvider registerChangeObserver:self context:PXSharedLibraryStatusProviderObservationContext];
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
  mainScrollView = [(PUAlbumListViewController *)self mainScrollView];
  [mainScrollView bounds];
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
        _preheatedCollections = [(PUAlbumListViewController *)self _preheatedCollections];
        if (!_preheatedCollections)
        {
          _preheatedCollections = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [(PUAlbumListViewController *)self _setPreheatedCollections:_preheatedCollections];
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
        v26 = _preheatedCollections;
        v47 = v26;
        v48 = &v56;
        v49 = &v50;
        PUDiffVerticalRects(v46, v45, v14, v16, v18, x, y, width, height);
        if ([v57[5] count] || objc_msgSend(v51[5], "count"))
        {
          _imageRequestOptions = [(PUAlbumListViewController *)self _imageRequestOptions];
          spec = [(PUAlbumListViewController *)self spec];
          imageContentMode = [spec imageContentMode];

          spec2 = [(PUAlbumListViewController *)self spec];
          [(PUAlbumListViewController *)self _layoutReferenceSize];
          v32 = v31;
          v34 = v33;
          [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
          [spec2 imageSizeForLayoutReferenceSize:v32 safeAreaInsets:{v34, v35, v36, v37, v38}];
          v40 = v39;
          v42 = v41;

          _cachingImageManager = [(PUAlbumListViewController *)self _cachingImageManager];
          [_cachingImageManager startCachingImagesForAssets:v57[5] targetSize:imageContentMode contentMode:_imageRequestOptions options:{v40, v42}];

          _cachingImageManager2 = [(PUAlbumListViewController *)self _cachingImageManager];
          [_cachingImageManager2 stopCachingImagesForAssets:v51[5] targetSize:imageContentMode contentMode:_imageRequestOptions options:{v40, v42}];
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

- (id)_visibleAssetsForCollection:(id)collection maximumNumberOfVisibleAssets:(int64_t)assets correspondingCollections:(id *)collections
{
  collectionCopy = collection;
  if ([collectionCopy px_isMacSyncedFacesFolder])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(PUAlbumListViewController *)self _getDisplayableFacesForCollectionList:collectionCopy maximumCount:assets];
LABEL_4:
      v10 = v9;
      goto LABEL_11;
    }
  }

  else if (([collectionCopy px_isPeopleVirtualCollection] & 1) == 0 && (objc_msgSend(collectionCopy, "px_isPlacesSmartAlbum") & 1) == 0 && (objc_msgSend(collectionCopy, "px_isHiddenSmartAlbum") & 1) == 0 && (objc_msgSend(collectionCopy, "px_isRecentlyDeletedSmartAlbum") & 1) == 0 && (objc_msgSend(collectionCopy, "px_isRecoveredSmartAlbum") & 1) == 0)
  {
    if ([collectionCopy px_isFolder])
    {
      v9 = [(PUAlbumListViewController *)self _getDisplayableAssetsForFolder:collectionCopy maximumCount:assets useCache:1 correspondingCollections:collections];
    }

    else
    {
      v12 = 0;
      [(PUAlbumListViewController *)self _getDisplayableAssets:&v12 indexes:0 forCollection:collectionCopy maximumCount:assets useCache:1];
      v9 = v12;
    }

    goto LABEL_4;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_visibleAssetsForCollection:(id)collection correspondingCollections:(id *)collections
{
  collectionCopy = collection;
  collections = [(PUAlbumListViewController *)self _visibleAssetsForCollection:collectionCopy maximumNumberOfVisibleAssets:[PUStackView correspondingCollections:"maximumNumberOfVisibleImagesForStyle:" maximumNumberOfVisibleImagesForStyle:?], collections];

  return collections;
}

- (unint64_t)_stackViewStyleForCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy px_isSharedAlbum])
  {
    spec = [(PUAlbumListViewController *)self spec];
    v6 = spec;
LABEL_5:
    stackViewStyle = [spec stackViewStyle];
    goto LABEL_6;
  }

  px_isFolder = [collectionCopy px_isFolder];
  spec = [(PUAlbumListViewController *)self spec];
  v6 = spec;
  if (!px_isFolder)
  {
    goto LABEL_5;
  }

  stackViewStyle = [spec folderStackViewStyle];
LABEL_6:
  v9 = stackViewStyle;

  return v9;
}

- (void)_getDisplayableAssets:(id *)assets indexes:(id *)indexes forCollection:(id)collection maximumCount:(int64_t)count useCache:(BOOL)cache
{
  cacheCopy = cache;
  collectionCopy = collection;
  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  [dataSourceManager getDisplayableAssets:assets indexes:indexes forCollection:collectionCopy maximumCount:count useCache:cacheCopy];
}

- (id)_getDisplayableFacesForCollectionList:(id)list maximumCount:(int64_t)count
{
  listCopy = list;
  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  v8 = [dataSourceManager assetsFetchResultForCollection:listCopy];

  if ([v8 count] <= count)
  {
    count = [v8 count];
  }

  if (count)
  {
    array = [MEMORY[0x1E695DF70] array];
    v10 = 0;
    do
    {
      v11 = [v8 objectAtIndex:v10];
      v12 = [MEMORY[0x1E6978650] posterImageForAssetCollection:v11];
      if (v12)
      {
        [array addObject:v12];
      }

      ++v10;
    }

    while (count != v10);
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

- (id)_getDisplayableAssetsForFolder:(id)folder maximumCount:(int64_t)count useCache:(BOOL)cache correspondingCollections:(id *)collections
{
  cacheCopy = cache;
  folderCopy = folder;
  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  v12 = [dataSourceManager displayableAssetsForCollectionList:folderCopy maximumCount:count useCache:cacheCopy correspondingCollections:collections];

  return v12;
}

- (void)navigateToPeopleAnimated:(BOOL)animated withPersonLocalIdentifier:(id)identifier withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__PUAlbumListViewController_navigateToPeopleAnimated_withPersonLocalIdentifier_withCompletion___block_invoke;
  v10[3] = &unk_1E7B74F68;
  v11 = completionCopy;
  v9 = completionCopy;
  [(PUAlbumListViewController *)self _navigateToPeopleAnimated:animatedCopy withPersonLocalIdentifier:identifier withCompletion:v10];
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

- (id)newGridViewControllerForAssetCollection:(id)collection
{
  v16[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  assetCollectionType = [collectionCopy assetCollectionType];
  assetCollectionSubtype = [collectionCopy assetCollectionSubtype];
  if (assetCollectionType == 2 && assetCollectionSubtype == 201)
  {
    px_gridPresentation = [(PUAlbumListViewController *)self px_gridPresentation];
    createPanoramaViewController = [px_gridPresentation createPanoramaViewController];
  }

  else
  {
    dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
    px_gridPresentation = [dataSourceManager assetsFetchResultForCollection:collectionCopy];

    px_gridPresentation2 = [(PUAlbumListViewController *)self px_gridPresentation];
    createPanoramaViewController = [px_gridPresentation2 createPhotosAlbumViewControllerForAlbum:collectionCopy withFetchResult:px_gridPresentation];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
    [createPanoramaViewController setSessionInfo:sessionInfo];
  }

  v12 = MEMORY[0x1E6991F28];
  v15 = *MEMORY[0x1E6991E08];
  v16[0] = collectionCopy;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v12 sendEvent:@"com.apple.photos.CPAnalytics.albumListItemSelected" withPayload:v13];

  return createPanoramaViewController;
}

- (id)newGridViewControllerForFolder:(id)folder
{
  folderCopy = folder;
  spec = [(PUAlbumListViewController *)self spec];
  standInAlbumListViewControllerSpec = [spec standInAlbumListViewControllerSpec];

  v7 = [PUAlbumListViewController alloc];
  photoLibrary = [(PUAlbumListViewController *)self photoLibrary];
  v9 = [(PUAlbumListViewController *)v7 initWithSpec:standInAlbumListViewControllerSpec photoLibrary:photoLibrary];

  [(PUAlbumListViewController *)v9 setCollection:folderCopy];
  return v9;
}

- (void)handleSessionInfoAlbumSelection:(id)selection
{
  selectionCopy = selection;
  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  _pickerBannerView = [(PUAlbumListViewController *)self _pickerBannerView];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __61__PUAlbumListViewController_handleSessionInfoAlbumSelection___block_invoke;
  v19 = &unk_1E7B80088;
  v20 = sessionInfo;
  v7 = selectionCopy;
  v21 = v7;
  v8 = sessionInfo;
  v9 = _Block_copy(&v16);
  v10 = v9;
  if (_pickerBannerView)
  {
    v11 = [(PUAlbumListViewController *)self indexPathForCollection:v7, v16, v17, v18, v19, v20, v21];
    v12 = [(PUAlbumListViewController *)self _preparedAlbumListCellContentViewAtIndexPath:v11];
    stackView = [v12 stackView];
    navigationController = [(PUAlbumListViewController *)self navigationController];
    view = [navigationController view];

    [_pickerBannerView animateImagesOntoView:stackView inContainerView:view completionHandler:v10];
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

- (void)_handleDeleteCollection:(id)collection sourceView:(id)view
{
  collectionCopy = collection;
  viewCopy = view;
  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  v9 = [dataSourceManager canDeleteCollection:collectionCopy];

  if ((v9 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:2058 description:@"expected deletable collection"];
  }

  spec = [(PUAlbumListViewController *)self spec];
  [spec albumDeletionWarningStyle];

  undoManager = [(PUAlbumListViewController *)self undoManager];
  v12 = PXCollectionDeletionAlertControllerForCollection();

  popoverPresentationController = [v12 popoverPresentationController];
  [popoverPresentationController setSourceView:viewCopy];

  [popoverPresentationController setDelegate:self];
  [(PUAlbumListViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_handleDeleteAlbumAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = [(PUAlbumListViewController *)self collectionAtIndexPath:?];
  if (v4)
  {
    _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
    v6 = [_mainCollectionView cellForItemAtIndexPath:pathCopy];

    [(PUAlbumListViewController *)self _handleDeleteCollection:v4 sourceView:v6];
  }
}

- (void)_dismissPhotosPickerControllerAnimated:(BOOL)animated
{
  pickerViewController = [(PUAlbumListViewController *)self pickerViewController];
  if (pickerViewController)
  {
    [(PUAlbumListViewController *)self setPickerViewController:0];
    presentingViewController = [pickerViewController presentingViewController];
    v6 = presentingViewController;
    if (presentingViewController)
    {
      [presentingViewController dismissViewControllerAnimated:1 completion:0];
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

- (void)_handleCollectionListActionType:(id)type
{
  typeCopy = type;
  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  collectionList = [dataSourceManager collectionList];

  v7 = [objc_alloc(MEMORY[0x1E69C37E0]) initWithActionType:typeCopy collectionList:collectionList];
  [v7 setDelegate:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__PUAlbumListViewController__handleCollectionListActionType___block_invoke;
  v9[3] = &unk_1E7B7FB70;
  v10 = v7;
  selfCopy = self;
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

- (void)didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];
  if ([(PUAlbumListViewController *)self isPlaceholderAtIndexPath:pathCopy])
  {
    [(PUAlbumListViewController *)self _didSelectPlaceholderAtIndexPath:pathCopy];
    goto LABEL_10;
  }

  if (v4)
  {
    sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
    if ([sessionInfo isSelectingTargetAlbum])
    {
      px_isFolder = [v4 px_isFolder];

      if ((px_isFolder & 1) == 0)
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

- (void)_didSelectPlaceholderAtIndexPath:(id)path
{
  v31[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = [(PUAlbumListViewController *)self placeholderKindAtIndexPath:pathCopy];
  if (![(PUAlbumListViewController *)self _isPlaceholderEnabled:v6])
  {
    goto LABEL_26;
  }

  if (v6 <= 2)
  {
    if (!v6)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:1915 description:@"undefined placeholder"];

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

    array = [MEMORY[0x1E695DF70] array];
    dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
    collectionsFetchResult = [dataSourceManager collectionsFetchResult];
    [(PUAlbumListViewController *)self _recursivelyCollectCollectionsIn:array fetchResult:collectionsFetchResult];

    _assetsFetchOptions = [(PUAlbumListViewController *)self _assetsFetchOptions];
    v29 = [array valueForKey:@"objectID"];
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY albums IN (%@)", v29];
    internalPredicate = [_assetsFetchOptions internalPredicate];
    v13 = internalPredicate;
    v28 = v11;
    if (internalPredicate)
    {
      v14 = MEMORY[0x1E696AB28];
      v31[0] = v11;
      v31[1] = internalPredicate;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
      v16 = [v14 andPredicateWithSubpredicates:v15];
    }

    else
    {
      v16 = v11;
    }

    [_assetsFetchOptions setInternalPredicate:v16];
    v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v30 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [_assetsFetchOptions setSortDescriptors:v19];

    [_assetsFetchOptions setIncludeAssetSourceTypes:7];
    v20 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:_assetsFetchOptions];
    v21 = MEMORY[0x1E6978650];
    v22 = PULocalizedString(@"ALL_PHOTOS_IN_FOLDER");
    v23 = [v21 transientAssetCollectionWithAssetFetchResult:v20 title:v22];

    spec = [(PUAlbumListViewController *)self spec];
    shouldUseCollageForCloudFeedPlaceholder = [spec shouldUseCollageForCloudFeedPlaceholder];

    if (shouldUseCollageForCloudFeedPlaceholder)
    {
      v26 = [(PUAlbumListViewController *)self newGridViewControllerForAssetCollection:v23];
      navigationController = [(PUAlbumListViewController *)self navigationController];
      [navigationController pu_pushViewController:v26 withTransition:0 animated:1 isInteractive:0];
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
    array = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];
    [(PUAlbumListViewController *)self _navigateToPlacesFromCollection:array];
    goto LABEL_25;
  }

  if (v6 == 6)
  {
    [(PUAlbumListViewController *)self _navigateToMemories];
  }

LABEL_26:
}

- (BOOL)_isPlaceholderEnabled:(int64_t)enabled
{
  if (([(PUAlbumListViewController *)self isEditing]& 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
    v5 = [sessionInfo isSelectingTargetAlbum] ^ 1;
  }

  if (enabled == 1)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (void)_recursivelyCollectCollectionsIn:(id)in fetchResult:(id)result
{
  v19 = *MEMORY[0x1E69E9840];
  inCopy = in;
  resultCopy = result;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [resultCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(resultCopy);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 canContainCollections])
        {
          v13 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v12 options:0];
          [(PUAlbumListViewController *)self _recursivelyCollectCollectionsIn:inCopy fetchResult:v13];
        }

        else if ([v12 canContainAssets])
        {
          [inCopy addObject:v12];
        }
      }

      v9 = [resultCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_handleCancelButton:(id)button
{
  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  [sessionInfo setStatus:2];
}

- (void)_handleDoneButton:(id)button
{
  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  [sessionInfo setStatus:1];
}

- (void)_handleDeleteKeyCommand:(id)command
{
  focusedListCell = [(PUAlbumListViewController *)self focusedListCell];
  if (focusedListCell)
  {
    v7 = focusedListCell;
    _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
    v6 = [_mainCollectionView indexPathForCell:v7];

    [(PUAlbumListViewController *)self _handleDeleteAlbumAtIndexPath:v6];
    focusedListCell = v7;
  }
}

- (void)_handleRenameKeyCommand:(id)command
{
  focusedListCell = [(PUAlbumListViewController *)self focusedListCell];
  albumListCellContentView = [focusedListCell albumListCellContentView];

  [albumListCellContentView startPerformRetitleAction];
}

- (void)_handleOpenKeyCommand:(id)command
{
  focusedListCell = [(PUAlbumListViewController *)self focusedListCell];
  if (focusedListCell)
  {
    v7 = focusedListCell;
    _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
    v6 = [_mainCollectionView indexPathForCell:v7];

    [(PUAlbumListViewController *)self didSelectItemAtIndexPath:v6];
    focusedListCell = v7;
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel__handleOpenKeyCommand_ == action)
  {
    focusedListCell = [(PUAlbumListViewController *)self focusedListCell];
    LOBYTE(action) = focusedListCell != 0;

    goto LABEL_10;
  }

  if (sel__handleRenameKeyCommand_ == action)
  {
    focusedListCell2 = [(PUAlbumListViewController *)self focusedListCell];
    albumListCellContentView = [focusedListCell2 albumListCellContentView];
    action = (([albumListCellContentView editCapabilities] >> 1) & 1);
LABEL_9:

    goto LABEL_10;
  }

  if (sel__handleDeleteKeyCommand_ == action)
  {
    focusedListCell2 = [(PUAlbumListViewController *)self focusedListCell];
    albumListCellContentView = [focusedListCell2 albumListCellContentView];
    action = ([albumListCellContentView editCapabilities] & 1);
    goto LABEL_9;
  }

  if (sel_newSmartAlbum_ == action)
  {
    LOBYTE(action) = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PUAlbumListViewController;
    LOBYTE(action) = [(PUAlbumListViewController *)&v11 canPerformAction:action withSender:senderCopy];
  }

LABEL_10:

  return action;
}

- (id)_targetIndexPathForMoveFromIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  albumsSections = [(PUAlbumListViewController *)self albumsSections];
  v10 = v9;
  if ([(PUAlbumListViewController *)self isEmpty])
  {
    v11 = pathCopy;
    goto LABEL_14;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  item = [indexPathCopy item];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  section = [indexPathCopy section];
  v12 = v25[3];
  if (v12 < albumsSections || v12 - albumsSections >= v10)
  {
    v14 = v10 + albumsSections - 1;
    if (v12 <= v14)
    {
      if (v12 >= albumsSections)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v25[3] = albumsSections;
    }

    else
    {
      v25[3] = v14;
      v15 = [(PUAlbumListViewController *)self numberOfItemsInSection:?]- 1;
    }

    v29[3] = v15;
  }

LABEL_13:
  dataSource = [(PUAlbumListViewController *)self dataSource];
  identifier = [dataSource identifier];
  v18 = v25[3];
  v19 = v29[3];

  dataSource2 = [(PUAlbumListViewController *)self dataSource];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__PUAlbumListViewController__targetIndexPathForMoveFromIndexPath_toProposedIndexPath___block_invoke;
  v23[3] = &unk_1E7B74F40;
  v23[4] = self;
  v23[5] = &v24;
  v23[7] = albumsSections;
  v23[8] = v10;
  v23[6] = &v28;
  v22[0] = identifier;
  v22[1] = v18 - albumsSections;
  v22[2] = v19;
  v22[3] = 0x7FFFFFFFFFFFFFFFLL;
  [dataSource2 enumerateItemIndexPathsStartingAtIndexPath:v22 reverseDirection:0 usingBlock:v23];

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
  dataSource = [(PUAlbumListViewController *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    [dataSource firstItemIndexPath];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  if (v10 != *MEMORY[0x1E69C4880])
  {
    dataSource2 = [(PUAlbumListViewController *)self dataSource];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__PUAlbumListViewController_indexPathForFirstEditableAlbum__block_invoke;
    v9[3] = &unk_1E7B74F18;
    v9[4] = self;
    v9[5] = &v12;
    v8[0] = v10;
    v8[1] = v11;
    [dataSource2 enumerateItemIndexPathsStartingAtIndexPath:v8 reverseDirection:0 usingBlock:v9];
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
    topPlaceholdersSection = [(PUAlbumListViewController *)self topPlaceholdersSection];
    showAddNewAlbumPlaceholder = [(PUAlbumListViewController *)self showAddNewAlbumPlaceholder];
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:showAddNewAlbumPlaceholder inSection:topPlaceholdersSection];
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
    topPlaceholdersSection = [(PUAlbumListViewController *)self topPlaceholdersSection];
    v4 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:topPlaceholdersSection];
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
  dataSource = [(PUAlbumListViewController *)self dataSource];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PUAlbumListViewController_indexPathForPeopleAlbum__block_invoke;
  v7[3] = &unk_1E7B74EF0;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = a2;
  [dataSource enumerateCollectionsUsingBlock:v7];

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
  dataSource = [(PUAlbumListViewController *)self dataSource];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PUAlbumListViewController_indexPathForPlacesAlbum__block_invoke;
  v7[3] = &unk_1E7B74EF0;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = a2;
  [dataSource enumerateCollectionsUsingBlock:v7];

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

- (int64_t)placeholderKindAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(PUAlbumListViewController *)self topPlaceholdersSection])
  {
    item = [pathCopy item];
    showAddNewAlbumPlaceholder = [(PUAlbumListViewController *)self showAddNewAlbumPlaceholder];
    v8 = item == 0;
    v9 = item - showAddNewAlbumPlaceholder;
    v10 = showAddNewAlbumPlaceholder & v8;
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
    section2 = [pathCopy section];
    albumsSections = [(PUAlbumListViewController *)self albumsSections];
    v12 = 0;
    if (section2 >= albumsSections && section2 - albumsSections < v15)
    {
      v16 = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];
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

- (BOOL)isPlaceholderAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  albumsSections = [(PUAlbumListViewController *)self albumsSections];
  px_isMemoriesVirtualCollection = 1;
  if (section >= albumsSections && section - albumsSections < v7)
  {
    v9 = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];
    if (([v9 px_isPlacesSmartAlbum] & 1) == 0 && (objc_msgSend(v9, "px_isPeopleVirtualCollection") & 1) == 0)
    {
      px_isMemoriesVirtualCollection = [v9 px_isMemoriesVirtualCollection];
    }
  }

  return px_isMemoriesVirtualCollection;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  if ([(PUAlbumListViewController *)self topPlaceholdersSection]== section)
  {
    LODWORD(v5) = [(PUAlbumListViewController *)self showAddNewAlbumPlaceholder];
    _shouldShowAggregateItem = [(PUAlbumListViewController *)self _shouldShowAggregateItem];
    v7 = 1;
    if (v5)
    {
      v7 = 2;
    }

    if (_shouldShowAggregateItem)
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
    albumsSections = [(PUAlbumListViewController *)self albumsSections];
    result = 0;
    v11 = section >= albumsSections;
    v12 = section - albumsSections;
    if (v11 && v12 < v9)
    {
      dataSource = [(PUAlbumListViewController *)self dataSource];
      v14 = [dataSource numberOfItemsInSection:{section - -[PUAlbumListViewController albumsSections](self, "albumsSections")}];

      return v14;
    }
  }

  return result;
}

- (int64_t)numberOfSections
{
  dataSource = [(PUAlbumListViewController *)self dataSource];
  numberOfSections = [dataSource numberOfSections];

  return numberOfSections + [(PUAlbumListViewController *)self showsTopPlaceholdersSection];
}

- (_NSRange)albumsSections
{
  showsTopPlaceholdersSection = [(PUAlbumListViewController *)self showsTopPlaceholdersSection];
  dataSource = [(PUAlbumListViewController *)self dataSource];
  numberOfSections = [dataSource numberOfSections];

  v6 = showsTopPlaceholdersSection;
  v7 = numberOfSections;
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
  selfCopy = self;
  dataSource = [(PUAlbumListViewController *)self dataSource];
  canShowAggregateItem = [(PUAlbumListViewController *)selfCopy canShowAggregateItem];
  isEmpty = [(PUAlbumListViewController *)selfCopy isEmpty];
  LOBYTE(selfCopy) = [(PUAlbumListViewController *)selfCopy isRootFolder];
  collectionList = [dataSource collectionList];
  px_isFolder = [collectionList px_isFolder];

  collectionList2 = [dataSource collectionList];
  px_isSmartFolder = [collectionList2 px_isSmartFolder];

  v10 = px_isFolder & (px_isSmartFolder ^ 1);
  if (selfCopy)
  {
    v10 = 0;
  }

  if (isEmpty)
  {
    v10 = 0;
  }

  if (canShowAggregateItem)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)shouldBeginRetitlingAlbumAtIndexPath:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(PUAlbumListViewController *)self _mainTableView:path];
  visibleCells = [v3 visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        if ([*(*(&v11 + 1) + 8 * i) showingDeleteConfirmation])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)subtitleForCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy px_isSharedAlbum])
  {
    v5 = [collectionCopy localizedSharedByLabelAllowsEmail:{-[PUAlbumListViewController shouldAllowEmailInAlbumSubtitle](self, "shouldAllowEmailInAlbumSubtitle")}];
LABEL_6:
    v6 = v5;
    goto LABEL_7;
  }

  if (([collectionCopy px_isMacSyncedFacesFolder] & 1) != 0 || objc_msgSend(collectionCopy, "px_isMacSyncedEventsFolder"))
  {
    v5 = PULocalizedString(@"FROM_MY_MAC");
    goto LABEL_6;
  }

  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  v10 = [dataSource countForCollection:collectionCopy];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = @" ";
    v11 = @" ";
  }

  else
  {
    if (self->_albumSubtitleFormat && [collectionCopy px_isMacSyncedAlbum])
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

- (void)setSyncProgressVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(PUAlbumListViewController *)self progressViewVisible]== visible)
  {
    return;
  }

  [(PUAlbumListViewController *)self setProgressViewVisible:visibleCopy];
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];

  if (_mainCollectionView)
  {
    if (visibleCopy)
    {
      v6 = 100.0;
    }

    else
    {
      v6 = 0.0;
    }

    _mainCollectionViewLayout = [(PUAlbumListViewController *)self _mainCollectionViewLayout];
    [_mainCollectionViewLayout setGlobalFooterHeight:v6];
LABEL_12:

    return;
  }

  if (visibleCopy)
  {
    syncProgressView = [(PUAlbumListViewController *)self syncProgressView];
    if (!syncProgressView)
    {
      v22 = objc_alloc_init(MEMORY[0x1E69C38D0]);
      v8 = objc_alloc_init(MEMORY[0x1E69C4508]);
      [v22 setViewModel:v8];

      [(PUAlbumListViewController *)self setSyncProgressView:v22];
      syncProgressView = v22;
    }

    _mainCollectionViewLayout = syncProgressView;
    [syncProgressView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    _mainTableView = [(PUAlbumListViewController *)self _mainTableView];
    [_mainTableView rowHeight];
    v17 = v16;

    [_mainCollectionViewLayout setFrame:{v10, v12, v14, v17}];
    _mainTableView2 = [(PUAlbumListViewController *)self _mainTableView];
    [_mainTableView2 setTableFooterView:_mainCollectionViewLayout];

    goto LABEL_12;
  }

  _mainTableView3 = [(PUAlbumListViewController *)self _mainTableView];
  [_mainTableView3 setTableFooterView:0];

  syncProgressView2 = [(PUAlbumListViewController *)self syncProgressView];
  [syncProgressView2 removeFromSuperview];

  [(PUAlbumListViewController *)self setSyncProgressView:0];
}

- (void)_updateCollageView:(id)view forAssets:(id)assets
{
  viewCopy = view;
  assetsCopy = assets;
  spec = [(PUAlbumListViewController *)self spec];
  [(PUAlbumListViewController *)self _layoutReferenceSize];
  v10 = v9;
  v12 = v11;
  [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
  [spec stackSizeForLayoutReferenceSize:v10 safeAreaInsets:{v12, v13, v14, v15, v16}];
  v18 = v17;
  v20 = v19;
  [spec collageSpacing];
  v22 = v21;
  [viewCopy setCollageSize:{v18, v20}];
  [viewCopy setSpacing:v22];
  [viewCopy setNumberOfItems:{objc_msgSend(assetsCopy, "count")}];
  [spec posterSquareCornerRadius];
  [viewCopy setCornerRadius:?];
  [spec posterSubitemCornerRadius];
  [viewCopy setSubitemCornerRadius:?];
  shouldUseTableView = [spec shouldUseTableView];
  v24 = +[PUInterfaceManager currentTheme];
  albumCornersBackgroundColor = [v24 albumCornersBackgroundColor];
  [viewCopy setHasRoundedCorners:shouldUseTableView ^ 1u withCornersBackgroundColor:albumCornersBackgroundColor];

  v26 = [viewCopy tag] + 1;
  [viewCopy setTag:v26];
  collageImageContentMode = [spec collageImageContentMode];
  [spec collageImageSize];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __58__PUAlbumListViewController__updateCollageView_forAssets___block_invoke;
  v31[3] = &unk_1E7B74EC8;
  v32 = viewCopy;
  selfCopy = self;
  v34 = v28;
  v35 = v29;
  v36 = collageImageContentMode;
  v37 = v26;
  v30 = viewCopy;
  [assetsCopy enumerateObjectsUsingBlock:v31];
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

- (void)_updateStackView:(id)view forFaces:(id)faces inCollection:(id)collection withCustomEmptyPlaceholderImage:(id)image
{
  viewCopy = view;
  imageCopy = image;
  collectionCopy = collection;
  facesCopy = faces;
  -[PUAlbumListViewController _prepareStackView:forCollection:withStackCount:withCustomEmptyPlaceHolderImage:](self, "_prepareStackView:forCollection:withStackCount:withCustomEmptyPlaceHolderImage:", viewCopy, collectionCopy, [facesCopy count], imageCopy);

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __100__PUAlbumListViewController__updateStackView_forFaces_inCollection_withCustomEmptyPlaceholderImage___block_invoke;
  v20[3] = &unk_1E7B74E78;
  v21 = viewCopy;
  v14 = viewCopy;
  [facesCopy enumerateObjectsUsingBlock:v20];

  v15 = *(MEMORY[0x1E69C4840] + 16);
  v19[0] = *MEMORY[0x1E69C4840];
  v19[1] = v15;
  [v14 setBadgeInfo:v19 forItemAtIndex:0];
  spec = [(PUAlbumListViewController *)self spec];
  LODWORD(facesCopy) = [spec shouldUseTableView];
  v17 = +[PUInterfaceManager currentTheme];
  albumCornersBackgroundColor = [v17 albumCornersBackgroundColor];
  [v14 setHasRoundedCorners:facesCopy ^ 1 withCornersBackgroundColor:albumCornersBackgroundColor];
}

void __100__PUAlbumListViewController__updateStackView_forFaces_inCollection_withCustomEmptyPlaceholderImage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 size];
  [*(a1 + 32) setImageSize:a3 forItemAtIndex:?];
  [*(a1 + 32) setImage:v5 forItemAtIndex:a3];
}

- (void)_updateStackView:(id)view forAssets:(id)assets collection:(id)collection withCustomEmptyPlaceholderImage:(id)image
{
  viewCopy = view;
  collectionCopy = collection;
  imageCopy = image;
  assetsCopy = assets;
  -[PUAlbumListViewController _prepareStackView:forCollection:withStackCount:withCustomEmptyPlaceHolderImage:](self, "_prepareStackView:forCollection:withStackCount:withCustomEmptyPlaceHolderImage:", viewCopy, collectionCopy, [assetsCopy count], imageCopy);

  v14 = [viewCopy tag] + 1;
  [viewCopy setTag:v14];
  spec = [(PUAlbumListViewController *)self spec];
  imageContentMode = [spec imageContentMode];

  spec2 = [(PUAlbumListViewController *)self spec];
  [(PUAlbumListViewController *)self _layoutReferenceSize];
  v19 = v18;
  v21 = v20;
  [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
  [spec2 imageSizeForLayoutReferenceSize:v19 safeAreaInsets:{v21, v22, v23, v24, v25}];
  v27 = v26;
  v29 = v28;

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __99__PUAlbumListViewController__updateStackView_forAssets_collection_withCustomEmptyPlaceholderImage___block_invoke;
  v42[3] = &unk_1E7B74E50;
  v43 = viewCopy;
  v30 = collectionCopy;
  v44 = v30;
  selfCopy = self;
  v46 = v27;
  v47 = v29;
  v48 = imageContentMode;
  v49 = v14;
  v31 = viewCopy;
  [assetsCopy enumerateObjectsUsingBlock:v42];

  spec3 = [(PUAlbumListViewController *)self spec];
  shouldUseTableView = [spec3 shouldUseTableView];

  v40 = 0u;
  v41 = 0u;
  _badgeManager = [(PUAlbumListViewController *)self _badgeManager];
  v35 = _badgeManager;
  if (_badgeManager)
  {
    [_badgeManager badgeInfoForCollection:v30 options:0];
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  if (shouldUseTableView)
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
  albumCornersBackgroundColor = [v37 albumCornersBackgroundColor];
  [v31 setHasRoundedCorners:shouldUseTableView ^ 1u withCornersBackgroundColor:albumCornersBackgroundColor];
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

- (void)_prepareStackView:(id)view forCollection:(id)collection withStackCount:(int64_t)count withCustomEmptyPlaceHolderImage:(id)image
{
  viewCopy = view;
  imageCopy = image;
  collectionCopy = collection;
  v12 = [(PUAlbumListViewController *)self _stackViewStyleForCollection:collectionCopy];
  [viewCopy setStyle:v12];
  spec = [(PUAlbumListViewController *)self spec];
  v14 = spec;
  if (v12 - 3 > 1)
  {
    if (v12 == 6)
    {
      [viewCopy setGridItemSpacing:4.0];
    }

    else if (v12 == 5)
    {
      v15 = +[PUInterfaceManager currentTheme];
      placeholderCellBackgroundColor = [v15 placeholderCellBackgroundColor];
      [viewCopy setGridBackgroundColor:placeholderCellBackgroundColor];
    }
  }

  else
  {
    [spec configureStackViewWithGridStyle:viewCopy];
  }

  if ([v14 shouldUseTableView])
  {
    if (count)
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

  [viewCopy setPhotoDecoration:v17];
  [viewCopy setStackOffset:{v25, v24}];
  [viewCopy setStackPerspectiveInsets:{v20, v21, v22, v23}];
  [viewCopy setStackPerspectiveOffset:{v18, v19}];
  [(PUAlbumListViewController *)self _layoutReferenceSize];
  v35 = v34;
  v37 = v36;
  [(PUAlbumListViewController *)self _layoutSafeAreaInsets];
  [v14 stackSizeForLayoutReferenceSize:v35 safeAreaInsets:{v37, v38, v39, v40, v41}];
  [viewCopy setStackSize:?];
  [v14 posterSquareCornerRadius];
  [viewCopy setPosterSquareCornerRadius:?];
  [v14 posterSubitemCornerRadius];
  [viewCopy setPosterSubitemCornerRadius:?];
  v42 = [PUStackView maximumNumberOfVisibleItemsForStyle:v12];
  if (v42 >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = v42;
  }

  if (countCopy <= 1)
  {
    countCopy = 1;
  }

  if (v12 == 3)
  {
    v44 = v42;
  }

  else
  {
    v44 = countCopy;
  }

  [viewCopy setNumberOfVisibleItems:v44];
  [viewCopy setEmpty:(count | imageCopy) == 0];
  px_isFolder = [collectionCopy px_isFolder];

  if (px_isFolder)
  {
    v46 = 0;
  }

  else
  {
    v46 = imageCopy;
  }

  [viewCopy setEmptyPlaceholderImage:v46];
}

- (id)_keyAssetsForMoments
{
  v35 = *MEMORY[0x1E69E9840];
  keyAssetsForMoments = self->_keyAssetsForMoments;
  if (!keyAssetsForMoments)
  {
    v4 = [PUStackView maximumNumberOfVisibleImagesForStyle:4];
    px_standardFetchOptions = [MEMORY[0x1E6978830] px_standardFetchOptions];
    [px_standardFetchOptions setFetchLimit:v4];
    [px_standardFetchOptions setReverseSortOrder:1];
    v22 = px_standardFetchOptions;
    v6 = [MEMORY[0x1E6978650] fetchMomentsWithOptions:px_standardFetchOptions];
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
    selfCopy = self;
    _assetsFetchOptions = [(PUAlbumListViewController *)self _assetsFetchOptions];
    [_assetsFetchOptions setFetchLimit:v4];
    [_assetsFetchOptions setReverseSortOrder:1];
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

        v13 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:*(*(&v29 + 1) + 8 * v12) options:_assetsFetchOptions];
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

    v20 = selfCopy->_keyAssetsForMoments;
    selfCopy->_keyAssetsForMoments = v7;

    keyAssetsForMoments = selfCopy->_keyAssetsForMoments;
  }

  return keyAssetsForMoments;
}

- (void)updatePlaceholderListCellContentView:(id)view forItemAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__7019;
  v73 = __Block_byref_object_dispose__7020;
  v74 = 0;
  pathCopy = path;
  v9 = [(PUAlbumListViewController *)self placeholderKindAtIndexPath:?];
  stackView = [viewCopy stackView];
  albumListSubtitleLabelFont = 0;
  if (v9 <= 2)
  {
    if (!v9)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:1205 description:@"undefined placeholder"];
      albumListSubtitleLabelFont = 0;
      albumListTitleLabelFont = 0;
      v12 = 0;
      goto LABEL_41;
    }

    if (v9 == 1)
    {
      if ([(PUAlbumListViewController *)self isRootSharedAlbumList])
      {
        v12 = PULocalizedString(@"ALBUM_LIST_CREATE_NEW_SHARED_ALBUM_PLACEHOLDER_TITLE");
        spec = [(PUAlbumListViewController *)self spec];
        window = [viewCopy window];
        [spec emptySharedAlbumPlaceholderImageForWindow:window];
      }

      else
      {
        v12 = PULocalizedString(@"ALBUM_LIST_CREATE_NEW_ALBUM_PLACEHOLDER_TITLE");
        spec = [(PUAlbumListViewController *)self spec];
        window = [viewCopy window];
        [spec emptyAlbumPlaceholderImageForWindow:window];
      }
      currentHandler = ;

      [(PUAlbumListViewController *)self _updateStackView:stackView forAssets:0 collection:0 withCustomEmptyPlaceholderImage:currentHandler];
      [viewCopy setCustomImageView:0];
      goto LABEL_40;
    }

    albumListTitleLabelFont = 0;
    v12 = 0;
    if (v9 != 2)
    {
      goto LABEL_42;
    }

    spec2 = [(PUAlbumListViewController *)self spec];
    shouldUseCollageForCloudFeedPlaceholder = [spec2 shouldUseCollageForCloudFeedPlaceholder];

    v67 = 0u;
    v68 = 0u;
    dataSource = [(PUAlbumListViewController *)self dataSource];
    v19 = dataSource;
    if (dataSource)
    {
      [dataSource firstItemIndexPath];
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
    }

    if (v67 != *MEMORY[0x1E69C4880])
    {
      dataSource2 = [(PUAlbumListViewController *)self dataSource];
      *location = v67;
      v66 = v68;
      currentHandler = [dataSource2 objectAtIndexPath:location];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (currentHandler)
        {
          if (!shouldUseCollageForCloudFeedPlaceholder)
          {
            v43 = [(PUAlbumListViewController *)self _visibleAssetsForCollection:currentHandler];
            goto LABEL_38;
          }

          v43 = [(PUAlbumListViewController *)self _visibleAssetsForCollection:currentHandler maximumNumberOfVisibleAssets:+[PUCollageView correspondingCollections:"maximumNumberOfItems"], 0];
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
            [viewCopy setCustomImageView:self->_aggregateCollageView];
            goto LABEL_39;
          }

LABEL_38:
          spec3 = [(PUAlbumListViewController *)self spec];
          window2 = [viewCopy window];
          v51 = [spec3 emptyAlbumPlaceholderImageForWindow:window2];

          [(PUAlbumListViewController *)self _updateStackView:stackView forAssets:v43 collection:0 withCustomEmptyPlaceholderImage:v51];
          [viewCopy setCustomImageView:0];

LABEL_39:
          v12 = PULocalizedString(@"ALL_PHOTOS_IN_FOLDER");

LABEL_40:
          albumListSubtitleLabelFont = 0;
          albumListTitleLabelFont = 0;
          goto LABEL_41;
        }
      }

      else
      {
      }
    }

    v43 = 0;
    currentHandler = 0;
    if (!shouldUseCollageForCloudFeedPlaceholder)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v9 <= 4)
  {
    if (v9 != 3)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:1271 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    currentHandler = [(PUAlbumListViewController *)self _keyAssetsForMoments];
    spec4 = [(PUAlbumListViewController *)self spec];
    window3 = [viewCopy window];
    v22 = [spec4 emptyAlbumPlaceholderImageForWindow:window3];

    [(PUAlbumListViewController *)self _updateStackView:stackView forAssets:currentHandler collection:0 withCustomEmptyPlaceholderImage:v22];
    [viewCopy setCustomImageView:0];
    v12 = PULocalizedString(@"ALL_PHOTOS_IN_LIBRARY");
    _fontManager = [(PUAlbumListViewController *)self _fontManager];
    albumListTitleLabelFont = [_fontManager albumListTitleLabelFont];

    albumListSubtitleLabelFont = 0;
    goto LABEL_41;
  }

  if (v9 == 5)
  {
    v12 = PULocalizedString(@"PLACES_ALBUM_TITLE");
    v24 = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];
    if ([v24 px_isPlacesSmartAlbum])
    {
      currentHandler = v24;
    }

    else
    {
      currentHandler = 0;
    }

    v53 = v24;
    v27 = ([stackView tag] + 1);
    [stackView setTag:v27];
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__PUAlbumListViewController_updatePlaceholderListCellContentView_forItemAtIndexPath_animated___block_invoke;
    aBlock[3] = &unk_1E7B74DD8;
    v28 = stackView;
    v61 = v28;
    v64[1] = v27;
    objc_copyWeak(v64, location);
    v62 = viewCopy;
    v63 = &v69;
    v29 = _Block_copy(aBlock);
    px_extendedTraitCollection = [(PUAlbumListViewController *)self px_extendedTraitCollection];
    if (!self->__placesAlbumCoverProvider)
    {
      v30 = [objc_alloc(MEMORY[0x1E69C3910]) initWithDelegate:self andPlacesCollection:currentHandler];
      placesAlbumCoverProvider = self->__placesAlbumCoverProvider;
      self->__placesAlbumCoverProvider = v30;
    }

    _placesAlbumCoverProvider = [(PUAlbumListViewController *)self _placesAlbumCoverProvider];
    traitCollection = [v28 traitCollection];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __94__PUAlbumListViewController_updatePlaceholderListCellContentView_forItemAtIndexPath_animated___block_invoke_2;
    v58[3] = &unk_1E7B74E00;
    v34 = v29;
    v59 = v34;
    [_placesAlbumCoverProvider requestPlacesAlbumCover:px_extendedTraitCollection snapshotTraitCollection:traitCollection completion:v58];

    v35 = *(MEMORY[0x1E69C4840] + 16);
    v67 = *MEMORY[0x1E69C4840];
    v68 = v35;
    [v28 setBadgeInfo:&v67 forItemAtIndex:0];
    spec5 = [(PUAlbumListViewController *)self spec];
    shouldUseTableView = [spec5 shouldUseTableView];
    v38 = +[PUInterfaceManager currentTheme];
    albumCornersBackgroundColor = [v38 albumCornersBackgroundColor];
    [v28 setHasRoundedCorners:shouldUseTableView ^ 1u withCornersBackgroundColor:albumCornersBackgroundColor];

    _fontManager2 = [(PUAlbumListViewController *)self _fontManager];
    albumListTitleLabelFont = [_fontManager2 albumListTitleLabelFont];

    _fontManager3 = [(PUAlbumListViewController *)self _fontManager];
    albumListSubtitleLabelFont = [_fontManager3 albumListSubtitleLabelFont];

    objc_destroyWeak(v64);
    objc_destroyWeak(location);

    goto LABEL_41;
  }

  albumListTitleLabelFont = 0;
  v12 = 0;
  if (v9 == 6)
  {
    spec6 = [(PUAlbumListViewController *)self spec];
    window4 = [viewCopy window];
    currentHandler = [spec6 emptyAlbumPlaceholderImageForWindow:window4];

    [(PUAlbumListViewController *)self _updateStackView:stackView forAssets:0 collection:0 withCustomEmptyPlaceholderImage:currentHandler];
    [viewCopy setCustomImageView:0];
    albumListSubtitleLabelFont = 0;
    albumListTitleLabelFont = 0;
    v12 = @"Memories";
LABEL_41:
  }

LABEL_42:
  spec7 = [(PUAlbumListViewController *)self spec];
  [viewCopy setLayout:{objc_msgSend(spec7, "cellContentViewLayout")}];

  [viewCopy setTitle:v12];
  [viewCopy setSubtitle:v70[5]];
  [viewCopy setEditCapabilities:0];
  [viewCopy setEditing:-[PUAlbumListViewController isEditing](self animated:{"isEditing"), animatedCopy}];
  [viewCopy setEnabled:1 animated:animatedCopy];
  [viewCopy setTitleFont:albumListTitleLabelFont];
  [viewCopy setSubtitleFont:albumListSubtitleLabelFont];

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

- (void)setTitleForCell:(id)cell withCollection:(id)collection
{
  cellCopy = cell;
  localizedTitle = [collection localizedTitle];
  [cellCopy setTitle:localizedTitle];
}

- (void)updateAlbumListCellContentView:(id)view forItemAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  v9 = [(PUAlbumListViewController *)self collectionAtIndexPath:path];
  [viewCopy setEditCapabilities:-[PUAlbumListViewController _editCapabilitiesForAlbum:](self animated:{"_editCapabilitiesForAlbum:", v9), animatedCopy}];
  [viewCopy setEnabled:-[PUAlbumListViewController shouldEnableCollection:](self animated:{"shouldEnableCollection:", v9), animatedCopy}];
  spec = [(PUAlbumListViewController *)self spec];
  cellContentViewLayout = [spec cellContentViewLayout];

  [viewCopy setLayout:cellContentViewLayout];
  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  if ([sessionInfo showCheckmarkOnSourceAlbum])
  {
    sourceAlbum = [sessionInfo sourceAlbum];
    [viewCopy setShowsCheckmarkView:{objc_msgSend(sourceAlbum, "isEqual:", v9)}];
  }

  else
  {
    [viewCopy setShowsCheckmarkView:0];
  }

  stackView = [viewCopy stackView];
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
        [(PUAlbumListViewController *)self _updateStackView:stackView forAssets:v15 collection:v9 withCustomEmptyPlaceholderImage:0, v29];
LABEL_14:

        v16 = v30;
        goto LABEL_15;
      }

LABEL_10:
      spec2 = [(PUAlbumListViewController *)self spec];
      px_isSharedAlbum = [v9 px_isSharedAlbum];
      window = [viewCopy window];
      if (px_isSharedAlbum)
      {
        [spec2 emptySharedAlbumPlaceholderImageForWindow:window];
      }

      else
      {
        [spec2 emptyAlbumPlaceholderImageForWindow:window];
      }
      v18 = ;

      [(PUAlbumListViewController *)self _updateStackView:stackView forAssets:v15 collection:v9 withCustomEmptyPlaceholderImage:v18, v31];
      goto LABEL_14;
    }
  }

  else if (![v9 px_isMacSyncedFacesFolder])
  {
    goto LABEL_10;
  }

  [(PUAlbumListViewController *)self _updateStackView:stackView forFaces:v15 inCollection:v9 withCustomEmptyPlaceholderImage:0];
LABEL_15:
  spec3 = [(PUAlbumListViewController *)self spec];
  showsDeleteButtonOnCellContentView = [spec3 showsDeleteButtonOnCellContentView];

  [viewCopy setShowsDeleteButtonWhenEditing:showsDeleteButtonOnCellContentView];
  [viewCopy setEditing:-[PUAlbumListViewController isEditing](self animated:{"isEditing"), animatedCopy}];
  [(PUAlbumListViewController *)self setTitleForCell:viewCopy withCollection:v9];
  v24 = [(PUAlbumListViewController *)self subtitleForCollection:v9];
  [viewCopy setSubtitle:v24 animated:animatedCopy];
  _fontManager = [(PUAlbumListViewController *)self _fontManager];
  albumListTitleLabelFont = [_fontManager albumListTitleLabelFont];
  [viewCopy setTitleFont:albumListTitleLabelFont];

  _fontManager2 = [(PUAlbumListViewController *)self _fontManager];
  albumListSubtitleLabelFont = [_fontManager2 albumListSubtitleLabelFont];
  [viewCopy setSubtitleFont:albumListSubtitleLabelFont];
}

- (void)updateListCellForItemAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  if ([(PUAlbumListViewController *)self isPlaceholderAtIndexPath:?])
  {
    v6 = [(PUAlbumListViewController *)self _preparedPlaceholderListCellContentViewAtIndexPath:pathCopy];
    if (v6)
    {
      [(PUAlbumListViewController *)self updatePlaceholderListCellContentView:v6 forItemAtIndexPath:pathCopy animated:animatedCopy];
    }
  }

  else
  {
    v6 = [(PUAlbumListViewController *)self _preparedAlbumListCellContentViewAtIndexPath:pathCopy];
    if (v6)
    {
      [(PUAlbumListViewController *)self updateAlbumListCellContentView:v6 forItemAtIndexPath:pathCopy animated:animatedCopy];
    }
  }
}

- (void)_updateAddNewAlbumPlaceholderAnimated:(BOOL)animated
{
  animatedCopy = animated;
  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  if ([sessionInfo isSelectingTargetAlbum] && !-[PUAlbumListViewController _aboutToCreateAlbum](self, "_aboutToCreateAlbum"))
  {
    v5 = [sessionInfo excludesNewAlbumCreation] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  if (self->_showAddNewAlbumPlaceholder != v5)
  {
    indexPathForAddNewAlbumPlaceholder = [(PUAlbumListViewController *)self indexPathForAddNewAlbumPlaceholder];
    self->_showAddNewAlbumPlaceholder = v5;
    indexPathForAddNewAlbumPlaceholder2 = [(PUAlbumListViewController *)self indexPathForAddNewAlbumPlaceholder];
    if (indexPathForAddNewAlbumPlaceholder == indexPathForAddNewAlbumPlaceholder2 || ([indexPathForAddNewAlbumPlaceholder isEqual:indexPathForAddNewAlbumPlaceholder2] & 1) != 0 || !-[PUAlbumListViewController isViewInSyncWithModel](self, "isViewInSyncWithModel"))
    {
      goto LABEL_17;
    }

    if (!animatedCopy)
    {
      [(PUAlbumListViewController *)self reloadContentView];
LABEL_17:

      goto LABEL_18;
    }

    if (indexPathForAddNewAlbumPlaceholder)
    {
      v8 = [MEMORY[0x1E695DEC8] arrayWithObject:indexPathForAddNewAlbumPlaceholder];
      if (indexPathForAddNewAlbumPlaceholder2)
      {
LABEL_12:
        v9 = [MEMORY[0x1E695DEC8] arrayWithObject:indexPathForAddNewAlbumPlaceholder2];
LABEL_16:
        [(PUAlbumListViewController *)self _performBatchUpdates:0 withDeletedSections:0 insertedSections:0 changedSections:0 deletedItemsIndexPaths:v8 insertedItemsIndexPaths:v9 changedItemsIndexPaths:0 movedItemsFromIndexPaths:0 movedItemsToIndexPaths:0 completionHandler:0];

        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
      if (indexPathForAddNewAlbumPlaceholder2)
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
      dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
      collectionList = [dataSourceManager collectionList];

      if ([collectionList px_isFolder] && (objc_msgSend(collectionList, "px_isSmartFolder") & 1) == 0 && !-[PUAlbumListViewController isRootFolder](self, "isRootFolder"))
      {
        [(PUAlbumListViewController *)self isRootSharedAlbumList];
      }

      dataSourceManager2 = [(PUAlbumListViewController *)self dataSourceManager];
      emptyConfiguration = [MEMORY[0x1E69DC8C8] emptyConfiguration];
      collectionsFetchResult = [dataSourceManager2 collectionsFetchResult];
      v7 = PXPhotoKitLocalizedTitleForEmptyCollectionListFetchResult();
      [emptyConfiguration setText:v7];

      collectionsFetchResult2 = [dataSourceManager2 collectionsFetchResult];
      v9 = PXPhotoKitLocalizedMessageForEmptyCollectionListFetchResult();
      string = [v9 string];
      [emptyConfiguration setSecondaryText:string];

      [(PUAlbumListViewController *)self _setContentUnavailableConfiguration:emptyConfiguration];
    }

    else
    {

      [(PUAlbumListViewController *)self _setContentUnavailableConfiguration:0];
    }
  }
}

- (void)_updateNavigationBannerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v30 = *MEMORY[0x1E69E9840];
  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  _pickerBannerView = [(PUAlbumListViewController *)self _pickerBannerView];
  if (_pickerBannerView)
  {
    if ([sessionInfo promptLocation] == 1)
    {
      localizedPrompt = [sessionInfo localizedPrompt];
    }

    else
    {
      localizedPrompt = 0;
    }

    if ([sessionInfo isSelectingTargetAlbum])
    {
      transferredAssets = [sessionInfo transferredAssets];
    }

    else
    {
      transferredAssets = 0;
    }

    if ([transferredAssets count])
    {
      v22 = localizedPrompt;
      v23 = animatedCopy;
      v24 = sessionInfo;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(transferredAssets, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v21 = transferredAssets;
      v10 = transferredAssets;
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
            defaultFormatChooser = [MEMORY[0x1E69BF248] defaultFormatChooser];
            indexSheetUnbakedFormat = [defaultFormatChooser indexSheetUnbakedFormat];
            v18 = [v15 imageWithFormat:objc_msgSend(indexSheetUnbakedFormat, "formatID")];

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

      sessionInfo = v24;
      animatedCopy = v23;
      transferredAssets = v21;
      localizedPrompt = v22;
    }

    else
    {
      v20 = 0;
    }

    [_pickerBannerView setTitle:{localizedPrompt, v21}];
    [_pickerBannerView setImages:v20];
    [_pickerBannerView setLeftView:0 animated:animatedCopy];
    [_pickerBannerView setRightView:0 animated:animatedCopy];
  }
}

- (id)_pickerBannerView
{
  navigationItem = [(PUAlbumListViewController *)self navigationItem];
  pu_banner = [navigationItem pu_banner];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bannerView = [pu_banner bannerView];
  }

  else
  {
    bannerView = 0;
  }

  return bannerView;
}

- (void)_updatePeripheralInterfaceAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(PUAlbumListViewController *)self _updateEmptyPlaceholder];
  [(PUAlbumListViewController *)self updateNavigationBarAnimated:animatedCopy];

  [(PUAlbumListViewController *)self _updateNavigationBannerAnimated:animatedCopy];
}

- (id)_preparedAlbumListCellContentViewAtIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
    v6 = _mainCollectionView;
    if (_mainCollectionView)
    {
      v7 = [_mainCollectionView cellForItemAtIndexPath:pathCopy];
      albumListCellContentView = [v7 albumListCellContentView];
    }

    else
    {
      albumListCellContentView = 0;
    }

    _mainTableView = [(PUAlbumListViewController *)self _mainTableView];
    v10 = _mainTableView;
    if (_mainTableView)
    {
      v11 = [_mainTableView cellForRowAtIndexPath:pathCopy];
      v12 = [v11 viewWithTag:236897];

      albumListCellContentView = v12;
    }
  }

  else
  {
    albumListCellContentView = 0;
  }

  return albumListCellContentView;
}

- (id)indexPathForAlbumListCellContentView:(id)view
{
  v32 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  visibleCells = [_mainCollectionView visibleCells];

  v7 = [visibleCells countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = *v27;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(visibleCells);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if ([viewCopy isDescendantOfView:v10])
        {
          _mainCollectionView2 = [(PUAlbumListViewController *)self _mainCollectionView];
          v7 = [_mainCollectionView2 indexPathForCell:v10];

          goto LABEL_11;
        }
      }

      v7 = [visibleCells countByEnumeratingWithState:&v26 objects:v31 count:16];
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
  _mainTableView = [(PUAlbumListViewController *)self _mainTableView];
  visibleCells2 = [_mainTableView visibleCells];

  v14 = [visibleCells2 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(visibleCells2);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        if ([viewCopy isDescendantOfView:v18])
        {
          _mainTableView2 = [(PUAlbumListViewController *)self _mainTableView];
          v20 = [_mainTableView2 indexPathForCell:v18];

          v7 = v20;
          goto LABEL_21;
        }
      }

      v15 = [visibleCells2 countByEnumeratingWithState:&v22 objects:v30 count:16];
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

- (id)indexPathsForItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  if (_mainCollectionView)
  {
    _mainCollectionViewLayout = [(PUAlbumListViewController *)self _mainCollectionViewLayout];
    [_mainCollectionViewLayout assetIndexPathsForElementsInRect:{x, y, width, height}];
  }

  else
  {
    _mainCollectionViewLayout = [(PUAlbumListViewController *)self _mainTableView];
    [_mainCollectionViewLayout indexPathsForRowsInRect:{x, y, width, height}];
  }
  v10 = ;

  return v10;
}

- (id)indexPathForItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  if (_mainCollectionView)
  {
    _mainCollectionView2 = [(PUAlbumListViewController *)self _mainCollectionView];
    [_mainCollectionView2 indexPathForItemAtPoint:{x, y}];
  }

  else
  {
    _mainCollectionView2 = [(PUAlbumListViewController *)self _mainTableView];
    [_mainCollectionView2 indexPathForRowAtPoint:{x, y}];
  }
  v8 = ;

  return v8;
}

- (id)indexPathsForVisibleItems
{
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  if (_mainCollectionView)
  {
    _mainCollectionView2 = [(PUAlbumListViewController *)self _mainCollectionView];
    [_mainCollectionView2 indexPathsForVisibleItems];
  }

  else
  {
    _mainCollectionView2 = [(PUAlbumListViewController *)self _mainTableView];
    [_mainCollectionView2 indexPathsForVisibleRows];
  }
  v5 = ;

  return v5;
}

- (void)_enumerateIndexPathsForPreparedItemsUsingBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  isPrefetchingEnabled = [_mainCollectionView isPrefetchingEnabled];
  [_mainCollectionView setPrefetchingEnabled:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  indexPathsForVisibleItems = [(PUAlbumListViewController *)self indexPathsForVisibleItems];
  v8 = [indexPathsForVisibleItems countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [indexPathsForVisibleItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [_mainCollectionView setPrefetchingEnabled:isPrefetchingEnabled];
}

- (void)_performBatchUpdates:(id)updates withDeletedSections:(id)sections insertedSections:(id)insertedSections changedSections:(id)changedSections deletedItemsIndexPaths:(id)paths insertedItemsIndexPaths:(id)indexPaths changedItemsIndexPaths:(id)itemsIndexPaths movedItemsFromIndexPaths:(id)self0 movedItemsToIndexPaths:(id)self1 completionHandler:(id)self2
{
  v80 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  sectionsCopy = sections;
  insertedSectionsCopy = insertedSections;
  changedSectionsCopy = changedSections;
  pathsCopy = paths;
  indexPathsCopy = indexPaths;
  itemsIndexPathsCopy = itemsIndexPaths;
  fromIndexPathsCopy = fromIndexPaths;
  toIndexPathsCopy = toIndexPaths;
  handlerCopy = handler;
  if ([sectionsCopy count])
  {
    v23 = 1;
    v24 = updatesCopy;
LABEL_5:
    v25 = indexPathsCopy;
    goto LABEL_6;
  }

  v24 = updatesCopy;
  if ([insertedSectionsCopy count])
  {
    v23 = 1;
    goto LABEL_5;
  }

  v25 = indexPathsCopy;
  if ([changedSectionsCopy count] || objc_msgSend(pathsCopy, "count") || objc_msgSend(indexPathsCopy, "count") || objc_msgSend(fromIndexPathsCopy, "count") || objc_msgSend(toIndexPathsCopy, "count"))
  {
    v23 = 1;
  }

  else
  {
    if (![itemsIndexPathsCopy count])
    {
      goto LABEL_52;
    }

    v23 = 0;
  }

LABEL_6:
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  if (_mainCollectionView)
  {
    if (v23)
    {
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __239__PUAlbumListViewController__performBatchUpdates_withDeletedSections_insertedSections_changedSections_deletedItemsIndexPaths_insertedItemsIndexPaths_changedItemsIndexPaths_movedItemsFromIndexPaths_movedItemsToIndexPaths_completionHandler___block_invoke;
      v65[3] = &unk_1E7B74DA8;
      v65[4] = self;
      v73 = v24;
      v66 = _mainCollectionView;
      v67 = sectionsCopy;
      v68 = insertedSectionsCopy;
      v69 = pathsCopy;
      v70 = v25;
      v71 = fromIndexPathsCopy;
      v72 = toIndexPathsCopy;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __239__PUAlbumListViewController__performBatchUpdates_withDeletedSections_insertedSections_changedSections_deletedItemsIndexPaths_insertedItemsIndexPaths_changedItemsIndexPaths_movedItemsFromIndexPaths_movedItemsToIndexPaths_completionHandler___block_invoke_3;
      v61[3] = &unk_1E7B7D308;
      v62 = itemsIndexPathsCopy;
      selfCopy = self;
      v64 = handlerCopy;
      v24 = updatesCopy;
      [v66 performBatchUpdates:v65 completion:v61];
    }

    else
    {
      v46 = toIndexPathsCopy;
      v26 = pathsCopy;
      v27 = insertedSectionsCopy;
      if (v24)
      {
        v24[2](v24);
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v28 = itemsIndexPathsCopy;
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

      insertedSectionsCopy = v27;
      pathsCopy = v26;
      v24 = updatesCopy;
      toIndexPathsCopy = v46;
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, 1);
      }
    }
  }

  _mainTableView = [(PUAlbumListViewController *)self _mainTableView];
  if (!_mainTableView)
  {
    goto LABEL_51;
  }

  _ignoredReorderNotificationCount = [(PUAlbumListViewController *)self _ignoredReorderNotificationCount];
  v35 = _ignoredReorderNotificationCount - 1;
  if (_ignoredReorderNotificationCount >= 1 && ![pathsCopy count] && !objc_msgSend(v25, "count") && !objc_msgSend(itemsIndexPathsCopy, "count"))
  {
    [(PUAlbumListViewController *)self _setIgnoredReorderNotificationCount:v35];
    if (!handlerCopy)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (v24)
  {
    [_mainTableView beginUpdates];
    v24[2](v24);
  }

  else
  {
    if (![pathsCopy count] && !objc_msgSend(v25, "count") && !objc_msgSend(fromIndexPathsCopy, "count") && !objc_msgSend(sectionsCopy, "count") && !objc_msgSend(insertedSectionsCopy, "count"))
    {
      goto LABEL_42;
    }

    [_mainTableView beginUpdates];
  }

  if ([sectionsCopy count])
  {
    [_mainTableView deleteSections:sectionsCopy withRowAnimation:0];
  }

  if ([insertedSectionsCopy count])
  {
    [_mainTableView insertSections:insertedSectionsCopy withRowAnimation:0];
  }

  if ([pathsCopy count])
  {
    [_mainTableView deleteRowsAtIndexPaths:pathsCopy withRowAnimation:0];
  }

  if ([v25 count])
  {
    [_mainTableView insertRowsAtIndexPaths:v25 withRowAnimation:0];
  }

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __239__PUAlbumListViewController__performBatchUpdates_withDeletedSections_insertedSections_changedSections_deletedItemsIndexPaths_insertedItemsIndexPaths_changedItemsIndexPaths_movedItemsFromIndexPaths_movedItemsToIndexPaths_completionHandler___block_invoke_4;
  v58[3] = &unk_1E7B74D80;
  v59 = toIndexPathsCopy;
  v36 = _mainTableView;
  v60 = v36;
  [fromIndexPathsCopy enumerateObjectsUsingBlock:v58];
  [v36 endUpdates];

LABEL_42:
  v47 = handlerCopy;
  v37 = toIndexPathsCopy;
  v38 = pathsCopy;
  v39 = sectionsCopy;
  v40 = insertedSectionsCopy;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v41 = itemsIndexPathsCopy;
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

  insertedSectionsCopy = v40;
  sectionsCopy = v39;
  pathsCopy = v38;
  v25 = indexPathsCopy;
  v24 = updatesCopy;
  toIndexPathsCopy = v37;
  handlerCopy = v47;
  if (!v47)
  {
    goto LABEL_51;
  }

LABEL_50:
  (*(handlerCopy + 2))(handlerCopy, 1);
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

- (void)_visiblyInsertItemAtIndexPath:(id)path modelUpdate:(id)update completionHandler:(id)handler
{
  v27[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  updateCopy = update;
  handlerCopy = handler;
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  if (_mainCollectionView)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __89__PUAlbumListViewController__visiblyInsertItemAtIndexPath_modelUpdate_completionHandler___block_invoke;
    v23[3] = &unk_1E7B7C590;
    v23[4] = self;
    v26 = updateCopy;
    v24 = _mainCollectionView;
    v25 = pathCopy;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __89__PUAlbumListViewController__visiblyInsertItemAtIndexPath_modelUpdate_completionHandler___block_invoke_2;
    v18 = &unk_1E7B74D58;
    selfCopy = self;
    v20 = v25;
    v21 = v24;
    v22 = handlerCopy;
    [v21 performBatchUpdates:v23 completion:&v15];
  }

  v12 = [(PUAlbumListViewController *)self _mainTableView:v15];
  v13 = v12;
  if (pathCopy && v12)
  {
    [v12 beginUpdates];
    if (updateCopy)
    {
      updateCopy[2](updateCopy);
    }

    v27[0] = pathCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    [v13 insertRowsAtIndexPaths:v14 withRowAnimation:0];

    [v13 endUpdates];
    [(PUAlbumListViewController *)self scrollToItemAtIndexPath:pathCopy centered:1 animated:1];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
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
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  v4 = _mainCollectionView;
  if (_mainCollectionView)
  {
    _mainTableView = _mainCollectionView;
  }

  else
  {
    _mainTableView = [(PUAlbumListViewController *)self _mainTableView];
  }

  v6 = _mainTableView;

  return v6;
}

- (void)deselectSelectedItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  if (_mainCollectionView)
  {
    indexPathsForSelectedItems = [_mainCollectionView indexPathsForSelectedItems];
    firstObject = [indexPathsForSelectedItems firstObject];

    [_mainCollectionView deselectItemAtIndexPath:firstObject animated:animatedCopy];
  }

  _mainTableView = [(PUAlbumListViewController *)self _mainTableView];
  v8 = _mainTableView;
  if (_mainTableView)
  {
    indexPathForSelectedRow = [_mainTableView indexPathForSelectedRow];
    [v8 deselectRowAtIndexPath:indexPathForSelectedRow animated:animatedCopy];
  }
}

- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  [_mainCollectionView selectItemAtIndexPath:pathCopy animated:animatedCopy scrollPosition:0];
  _mainTableView = [(PUAlbumListViewController *)self _mainTableView];
  [_mainTableView selectRowAtIndexPath:pathCopy animated:animatedCopy scrollPosition:0];
}

- (void)scrollToItemAtIndexPath:(id)path centered:(BOOL)centered animated:(BOOL)animated
{
  animatedCopy = animated;
  centeredCopy = centered;
  pathCopy = path;
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  v9 = _mainCollectionView;
  if (_mainCollectionView)
  {
    if (centeredCopy)
    {
      v10 = 18;
    }

    else
    {
      v10 = 0;
    }

    [_mainCollectionView scrollToItemAtIndexPath:pathCopy atScrollPosition:v10 animated:animatedCopy];
  }

  _mainTableView = [(PUAlbumListViewController *)self _mainTableView];
  v12 = _mainTableView;
  if (_mainTableView)
  {
    if (centeredCopy)
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    [_mainTableView scrollToRowAtIndexPath:pathCopy atScrollPosition:v13 animated:animatedCopy];
  }
}

- (void)reloadContentView
{
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  [_mainCollectionView reloadData];

  _mainTableView = [(PUAlbumListViewController *)self _mainTableView];
  [_mainTableView reloadData];
}

- (id)collectionAtIndexPath:(id)path
{
  pathCopy = path;
  albumsSections = [(PUAlbumListViewController *)self albumsSections];
  v7 = v6;
  section = [pathCopy section];
  v9 = 0;
  if (section >= albumsSections && section - albumsSections < v7)
  {
    v10 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(pathCopy inSection:{"item"), objc_msgSend(pathCopy, "section") - albumsSections}];
    dataSource = [(PUAlbumListViewController *)self dataSource];
    v9 = [dataSource collectionAtIndexPath:v10];
  }

  return v9;
}

- (id)indexPathForCollection:(id)collection
{
  collectionCopy = collection;
  dataSource = [(PUAlbumListViewController *)self dataSource];
  v6 = [dataSource indexPathForCollection:collectionCopy];

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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dataSource = [(PUAlbumListViewController *)self dataSource];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PUAlbumListViewController__someAlbumSupportsEditing__block_invoke;
  v5[3] = &unk_1E7B74D30;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [dataSource enumerateCollectionsUsingBlock:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
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

- (unint64_t)_editCapabilitiesForAlbum:(id)album
{
  albumCopy = album;
  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  v6 = [dataSourceManager canDeleteCollection:albumCopy];
  if ([dataSourceManager canRenameCollection:albumCopy])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [dataSourceManager canReorderCollection:albumCopy];

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

- (BOOL)shouldEnableCollection:(id)collection
{
  collectionCopy = collection;
  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  sourceAlbum = [sessionInfo sourceAlbum];
  if ([collectionCopy isEqual:sourceAlbum])
  {
    v7 = 0;
  }

  else
  {
    sessionInfo2 = [(PUAlbumListViewController *)self sessionInfo];
    targetAlbum = [sessionInfo2 targetAlbum];
    v10 = [collectionCopy isEqual:targetAlbum];

    if (v10)
    {
      v7 = 0;
      goto LABEL_7;
    }

    sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
    if (![sessionInfo isSelectingTargetAlbum])
    {
      v7 = 1;
      goto LABEL_4;
    }

    sourceAlbum = [(PUAlbumListViewController *)self sessionInfo];
    if ([sourceAlbum allowSelectingNonEditableAlbums])
    {
      v7 = 1;
    }

    else
    {
      v7 = [collectionCopy canPerformEditOperation:3];
    }
  }

LABEL_4:
LABEL_7:

  return v7 & 1;
}

- (void)updateNavigationBarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  canEditAlbums = [dataSourceManager canEditAlbums];

  isEditing = [(PUAlbumListViewController *)self isEditing];
  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  isSelectingAssets = [sessionInfo isSelectingAssets];

  sessionInfo2 = [(PUAlbumListViewController *)self sessionInfo];
  isSelectingTargetAlbum = [sessionInfo2 isSelectingTargetAlbum];

  navigationController = [(PUAlbumListViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  if ([viewControllers indexOfObject:self])
  {
    navigationItem = [(PUAlbumListViewController *)self navigationItem];
    hidesBackButton = [navigationItem hidesBackButton];
  }

  else
  {
    hidesBackButton = 1;
  }

  sessionInfo3 = [(PUAlbumListViewController *)self sessionInfo];
  isForAssetPicker = [sessionInfo3 isForAssetPicker];

  title = [(PUAlbumListViewController *)self title];
  sessionInfo4 = [(PUAlbumListViewController *)self sessionInfo];
  promptLocation = [sessionInfo4 promptLocation];

  if (promptLocation)
  {
    localizedPrompt = 0;
  }

  else
  {
    sessionInfo5 = [(PUAlbumListViewController *)self sessionInfo];
    localizedPrompt = [sessionInfo5 localizedPrompt];
  }

  _albumCreationButtonItem = 0;
  if (!(isSelectingAssets & 1 | ((canEditAlbums & 1) == 0) | isSelectingTargetAlbum & 1) && ((hidesBackButton | isEditing) & 1) != 0)
  {
    _albumCreationButtonItem = [(PUAlbumListViewController *)self _albumCreationButtonItem];
  }

  navigationItem2 = [(PUAlbumListViewController *)self navigationItem];
  if ((isForAssetPicker & 1) == 0)
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sharedLibraryStatusProvider = [(PUAlbumListViewController *)self sharedLibraryStatusProvider];
    if (!-[PUAlbumListViewController isRootSharedAlbumList](self, "isRootSharedAlbumList") && [sharedLibraryStatusProvider hasSharedLibraryOrPreview])
    {
      [(PUAlbumListViewController *)self libraryFilterState];
      v25 = v33 = animatedCopy;
      [sharedLibraryStatusProvider hasPreview];
      PXSharedLibrarySwitchLibraryButtonItems();
      v26 = v32 = canEditAlbums;
      [v23 addObjectsFromArray:v26];

      canEditAlbums = v32;
      animatedCopy = v33;
    }

    if (isSelectingAssets)
    {
      _doneButtonItem = [(PUAlbumListViewController *)self _doneButtonItem];
    }

    else if (isSelectingTargetAlbum)
    {
      _doneButtonItem = [(PUAlbumListViewController *)self _cancelButtonItem];
    }

    else
    {
      if (!isEditing && !canEditAlbums)
      {
        goto LABEL_22;
      }

      _doneButtonItem = [(PUAlbumListViewController *)self editButtonItem];
    }

    v28 = _doneButtonItem;
    [v23 addObject:_doneButtonItem];

LABEL_22:
    leftBarButtonItem = [navigationItem2 leftBarButtonItem];
    v30 = leftBarButtonItem;
    if (leftBarButtonItem == _albumCreationButtonItem)
    {
    }

    else
    {
      v31 = [leftBarButtonItem isEqual:_albumCreationButtonItem];

      if ((v31 & 1) == 0)
      {
        [navigationItem2 setLeftBarButtonItem:_albumCreationButtonItem animated:animatedCopy];
      }
    }

    [navigationItem2 setRightBarButtonItems:v23 animated:animatedCopy];
  }

  [navigationItem2 setPrompt:localizedPrompt];
  [navigationItem2 setTitle:title];
}

- (BOOL)_updateInterfaceForIncrementalModelChangeHandler:(id)handler withSectionedChangeDetails:(id)details animated:(BOOL)animated
{
  animatedCopy = animated;
  detailsCopy = details;
  handlerCopy = handler;
  deletedItemsIndexPaths = [detailsCopy deletedItemsIndexPaths];
  insertedItemsIndexPaths = [detailsCopy insertedItemsIndexPaths];
  changedItemsIndexPaths = [detailsCopy changedItemsIndexPaths];
  contentItemsChangedIndexPaths = [detailsCopy contentItemsChangedIndexPaths];
  v23 = changedItemsIndexPaths;
  v11 = [MEMORY[0x1E695DFA8] setWithArray:changedItemsIndexPaths];
  v22 = contentItemsChangedIndexPaths;
  [v11 addObjectsFromArray:contentItemsChangedIndexPaths];
  if ([detailsCopy hasMoves])
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __114__PUAlbumListViewController__updateInterfaceForIncrementalModelChangeHandler_withSectionedChangeDetails_animated___block_invoke;
    v27[3] = &unk_1E7B74D08;
    v14 = array;
    v28 = v14;
    v15 = array2;
    v29 = v15;
    [detailsCopy enumerateMovedIndexPathsUsingBlock:v27];
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  deletedSections = [detailsCopy deletedSections];
  insertedSections = [detailsCopy insertedSections];
  changedSections = [detailsCopy changedSections];
  [v11 allObjects];
  v19 = v21 = v11;
  [(PUAlbumListViewController *)self _performBatchUpdates:handlerCopy withDeletedSections:deletedSections insertedSections:insertedSections changedSections:changedSections deletedItemsIndexPaths:deletedItemsIndexPaths insertedItemsIndexPaths:insertedItemsIndexPaths changedItemsIndexPaths:v19 movedItemsFromIndexPaths:v14 movedItemsToIndexPaths:v15 completionHandler:0];

  [(PUAlbumListViewController *)self _updatePeripheralInterfaceAnimated:animatedCopy];
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

- (void)_updateInterfaceForModelReloadAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(PUAlbumListViewController *)self _resetPreheating];
  [(PUAlbumListViewController *)self reloadContentView];
  [(PUAlbumListViewController *)self _updatePeripheralInterfaceAnimated:animatedCopy];
  [(PUAlbumListViewController *)self setViewInSyncWithModel:1];

  [(PUAlbumListViewController *)self _updatePreheatedAssets];
}

- (unint64_t)_unfilteredIndexForFilteredIndexPath:(id)path
{
  v4 = [(PUAlbumListViewController *)self collectionAtIndexPath:path];
  dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
  collectionsFetchResult = [dataSourceManager collectionsFetchResult];
  v7 = [collectionsFetchResult indexOfObject:v4];

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
  px_standardFetchOptions = [MEMORY[0x1E6978830] px_standardFetchOptions];
  assetsFilterPredicate = [(PUAlbumListViewController *)self assetsFilterPredicate];
  [px_standardFetchOptions setInternalPredicate:assetsFilterPredicate];

  return px_standardFetchOptions;
}

- (BOOL)isRootSharedAlbumList
{
  collectionList = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_dataSourceManagerConfiguration collectionList];
  px_isSharedAlbumsFolder = [collectionList px_isSharedAlbumsFolder];

  return px_isSharedAlbumsFolder;
}

- (PUAlbumListCell)focusedListCell
{
  v3 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];
  focusedItem = [v3 focusedItem];

  v5 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
    v7 = [focusedItem isDescendantOfView:_mainCollectionView];

    if (v7)
    {
      v8 = focusedItem;
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
    dataSourceManager = [(PUAlbumListViewController *)self dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    v6 = self->_dataSource;
    self->_dataSource = dataSource;

    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (void)setDataSourceManagerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_dataSourceManagerConfiguration != configurationCopy)
  {
    v9 = configurationCopy;
    [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)configurationCopy setAssetTypesToInclude:[(PUAlbumListViewController *)self filteringAssetTypes]];
    objc_storeStrong(&self->_dataSourceManagerConfiguration, configuration);
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

    configurationCopy = v9;
  }
}

- (void)_updateTitle
{
  collection = [(PUAlbumListViewController *)self collection];
  v6 = collection;
  if (collection)
  {
    localizedTitle = [collection localizedTitle];
    [(PUAlbumListViewController *)self setTitle:localizedTitle];
    navigationItem = [(PUAlbumListViewController *)self navigationItem];
    [navigationItem setTitleView:0];
  }

  else
  {
    localizedTitle = [(PUAlbumListViewController *)self navigationItem];
    [localizedTitle setTitleView:0];
  }
}

- (void)setCollection:(id)collection
{
  collectionCopy = collection;
  collection = self->_collection;
  if (collection != collectionCopy)
  {
    v9 = collectionCopy;
    collectionCopy2 = collection;
    objc_storeStrong(&self->_collection, collection);
    if (!v9 || collectionCopy2)
    {
      if (v9 || !collectionCopy2)
      {
        goto LABEL_9;
      }

      photoLibrary = [(PHCollection *)collectionCopy2 photoLibrary];
      [photoLibrary px_unregisterChangeObserver:self];
    }

    else
    {
      photoLibrary = [(PHCollection *)v9 photoLibrary];
      [photoLibrary px_registerChangeObserver:self];
    }

LABEL_9:
    [(PUAlbumListViewController *)self _invalidateTitle];

    collectionCopy = v9;
  }
}

- (void)setSessionInfo:(id)info
{
  infoCopy = info;
  sessionInfo = self->_sessionInfo;
  if (sessionInfo != infoCopy)
  {
    v10 = infoCopy;
    [(PUSessionInfo *)sessionInfo removeSessionInfoObserver:self];
    objc_storeStrong(&self->_sessionInfo, info);
    [(PUSessionInfo *)self->_sessionInfo addSessionInfoObserver:self];
    bannerGenerator = [(PUSessionInfo *)self->_sessionInfo bannerGenerator];
    v8 = bannerGenerator[2]();

    navigationItem = [(PUAlbumListViewController *)self navigationItem];
    [navigationItem pu_setBanner:v8];

    [(PUAlbumListViewController *)self _updateAddNewAlbumPlaceholderAnimated:0];
    [(PUAlbumListViewController *)self _updateInterfaceForModelReloadAnimated:0];

    infoCopy = v10;
  }

  MEMORY[0x1EEE66BB8](sessionInfo, infoCopy);
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
    view = [(PUAlbumListViewController *)self view];
    [view frame];
    v5 = v4;
    [(PUAlbumListViewController *)self _layoutReferenceSize];
    v7 = v6;

    if (v5 == v7)
    {
      view2 = [(PUAlbumListViewController *)self view];
      [view2 safeAreaInsets];
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
  traitCollection = [(PUAlbumListViewController *)self traitCollection];
  if (![traitCollection horizontalSizeClass] || !objc_msgSend(traitCollection, "verticalSizeClass"))
  {
    goto LABEL_8;
  }

  [PUInterfaceManager shouldUsePhoneLayoutWithTraitCollection:traitCollection];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAlbumListViewController.m" lineNumber:363 description:@"missing spec"];

    spec = self->_spec;
  }

  return spec;
}

- (void)dealloc
{
  [(PUAlbumListViewController *)self setKeyboardAware:0];
  [(PUSessionInfo *)self->_sessionInfo removeSessionInfoObserver:self];
  _mainCollectionView = [(PUAlbumListViewController *)self _mainCollectionView];
  [_mainCollectionView setDataSource:0];

  _mainCollectionView2 = [(PUAlbumListViewController *)self _mainCollectionView];
  [_mainCollectionView2 setDelegate:0];

  _mainCollectionView3 = [(PUAlbumListViewController *)self _mainCollectionView];
  [_mainCollectionView3 setReorderDelegate:0];

  _mainTableView = [(PUAlbumListViewController *)self _mainTableView];
  [_mainTableView setDataSource:0];

  _mainTableView2 = [(PUAlbumListViewController *)self _mainTableView];
  [_mainTableView2 setDelegate:0];

  v8.receiver = self;
  v8.super_class = PUAlbumListViewController;
  [(PUAlbumListViewController *)&v8 dealloc];
}

- (PUAlbumListViewController)initWithSpec:(id)spec dataSourceManager:(id)manager photoLibrary:(id)library
{
  specCopy = spec;
  managerCopy = manager;
  libraryCopy = library;
  v26.receiver = self;
  v26.super_class = PUAlbumListViewController;
  v12 = [(PUAlbumListViewController *)&v26 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_photoLibrary, library);
    v14 = [MEMORY[0x1E69C3A08] sharedLibraryStatusProviderWithPhotoLibrary:libraryCopy];
    sharedLibraryStatusProvider = v13->_sharedLibraryStatusProvider;
    v13->_sharedLibraryStatusProvider = v14;

    v16 = [objc_alloc(MEMORY[0x1E69C3660]) initWithSharedLibraryStatusProvider:v13->_sharedLibraryStatusProvider];
    libraryFilterState = v13->_libraryFilterState;
    v13->_libraryFilterState = v16;

    objc_storeStrong(&v13->_spec, spec);
    v18 = objc_opt_new();
    cachingImageManager = v13->__cachingImageManager;
    v13->__cachingImageManager = v18;

    v20 = objc_alloc_init(MEMORY[0x1E69C4490]);
    badgeManager = v13->__badgeManager;
    v13->__badgeManager = v20;

    navigationItem = [(PUAlbumListViewController *)v13 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    [(PUAlbumListViewController *)v13 _updateAlbumSubtitleFormat];
    [(PUAlbumListViewController *)v13 px_enableExtendedTraitCollection];
    configuration = [managerCopy configuration];
    dataSourceManagerConfiguration = v13->_dataSourceManagerConfiguration;
    v13->_dataSourceManagerConfiguration = configuration;

    objc_storeStrong(&v13->_dataSourceManager, manager);
    [(PXPhotoKitCollectionsDataSourceManager *)v13->_dataSourceManager registerChangeObserver:v13 context:PXPhotoKitCollectionsDataSourceManagerObservationContext];
  }

  return v13;
}

- (PUAlbumListViewController)initWithSpec:(id)spec
{
  v4 = MEMORY[0x1E69789A8];
  specCopy = spec;
  px_deprecated_appPhotoLibrary = [v4 px_deprecated_appPhotoLibrary];
  v7 = [(PUAlbumListViewController *)self initWithSpec:specCopy dataSourceManager:0 photoLibrary:px_deprecated_appPhotoLibrary];

  return v7;
}

- (PUAlbumListViewController)initWithSpec:(id)spec isRootSharedAlbumList:(BOOL)list
{
  v5 = MEMORY[0x1E69789A8];
  specCopy = spec;
  px_deprecated_appPhotoLibrary = [v5 px_deprecated_appPhotoLibrary];
  v8 = [(PUAlbumListViewController *)self initWithSpec:specCopy dataSourceManager:0 photoLibrary:px_deprecated_appPhotoLibrary];

  return v8;
}

+ (id)newMyAlbumsViewControllerWithSpec:(id)spec sessionInfo:(id)info dataSourceManager:(id)manager photoLibrary:(id)library
{
  libraryCopy = library;
  managerCopy = manager;
  infoCopy = info;
  specCopy = spec;
  v13 = [[PUAlbumListViewController alloc] initWithSpec:specCopy dataSourceManager:managerCopy photoLibrary:libraryCopy];

  [(PUAlbumListViewController *)v13 setSessionInfo:infoCopy];
  v14 = PULocalizedString(@"USER_CREATED_ALBUMS_TITLE");
  [(PUAlbumListViewController *)v13 setTitle:v14];

  return v13;
}

+ (id)newMyAlbumsViewControllerWithSpec:(id)spec sessionInfo:(id)info photoLibrary:(id)library
{
  v8 = MEMORY[0x1E6978760];
  libraryCopy = library;
  infoCopy = info;
  specCopy = spec;
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v13 = [v8 fetchRootAlbumCollectionListWithOptions:librarySpecificFetchOptions];
  firstObject = [v13 firstObject];

  v15 = [objc_alloc(MEMORY[0x1E69C37F0]) initWithCollectionList:firstObject];
  [v15 setCollectionTypesToInclude:4983826];
  v16 = [objc_alloc(MEMORY[0x1E69C37E8]) initWithConfiguration:v15];
  v17 = [self newMyAlbumsViewControllerWithSpec:specCopy sessionInfo:infoCopy dataSourceManager:v16 photoLibrary:libraryCopy];

  return v17;
}

- (id)px_gridPresentation
{
  v3 = objc_alloc_init(PUPXGridPresentation);
  sessionInfo = [(PUAlbumListViewController *)self sessionInfo];
  [(PUPXGridPresentation *)v3 setSessionInfo:sessionInfo];

  return v3;
}

@end