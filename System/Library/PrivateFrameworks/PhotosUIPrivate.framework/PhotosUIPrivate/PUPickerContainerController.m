@interface PUPickerContainerController
- (BOOL)_actionPerformer:(id)a3 presentViewController:(id)a4;
- (BOOL)_isConfiguredForStickerSuggestionGroup;
- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5;
- (BOOL)allowsContextMenuInteractionForPhotosViewController:(id)a3;
- (BOOL)hasContent;
- (BOOL)isCompactWidthOrHeight;
- (BOOL)isShowingLiveWallpaperSuggestions;
- (BOOL)isShowingSpatialWallpaperSuggestions;
- (BOOL)photosViewController:(id)a3 canPlayAssetInline:(id)a4;
- (BOOL)photosViewController:(id)a3 isAssetEligibleForPlaybackWithSettlingEffect:(id)a4;
- (BOOL)searchBarIsFirstResponder;
- (BOOL)shouldAnimateFromHeaderView:(id)a3 toHeaderView:(id)a4;
- (CGRect)preferredCropForAsset:(id)a3 withAspectRatio:(double)a4;
- (NSString)selectedSuggestionAnalyticsName;
- (PUPickerContainerController)initWithConfiguration:(id)a3 loadingStatusManager:(id)a4 selectionCoordinator:(id)a5 additionalSelectionState:(id)a6 actionHandler:(id)a7;
- (PUPickerContainerControllerActionHandler)containerControllerActionHandler;
- (PUPickerOnboardingHeaderView)onboardingHeaderView;
- (PUPickerPrivacyBadge)photosIndicator;
- (PUSidebarViewController)sidebarViewController;
- (PXPhotosFilterToggleButtonController)filterButtonController;
- (PXPhotosUIViewController)actionResponderPhotosViewController;
- (UIBarButtonItem)toolbarSortAndFilterBarButtonItem;
- (UIViewController)actionResponderViewController;
- (UIViewController)albumsViewController;
- (UIViewController)collectionsViewController;
- (UIViewController)itemsViewController;
- (id)_albumsPickerViewControllerWithConfiguration:(id)a3 sessionInfo:(id)a4 collectionList:(id)a5 selectionCoordinator:(id)a6;
- (id)_animationForNavigationBarVisible:(BOOL)a3 fromCurrentOpacity:(double)a4;
- (id)_containerForTopViewController;
- (id)_currentContainerViewForInteractionBarTransition;
- (id)_peoplePickerViewControllerWithPhotoLibrary:(id)a3 personIdentifiers:(id)a4 preselectedLocalIdentifiers:(id)a5 disabledLocalIdentifiers:(id)a6 selectionLimit:(int64_t)a7 compactMode:(BOOL)a8 transparentBackground:(BOOL)a9 wantsPets:(BOOL)a10;
- (id)_peopleSortAndFilterMenu;
- (id)_viewControllerWithSidebarNavigationDestination:(id)a3 configuration:(id)a4 sessionInfo:(id)a5 selectionCoordinator:(id)a6;
- (id)collectionListForAlbumIdentifier:(id)a3 configuration:(id)a4;
- (id)headerViewForPhotosViewController:(id)a3;
- (id)photosViewController:(id)a3 animationForProposedAnimation:(id)a4;
- (id)preferredColumnCounts:(id)a3;
- (id)px_gridPresentation;
- (id)px_navigationDestination;
- (id)sessionInfoForConfiguration:(id)a3 loadingStatusManager:(id)a4 selectionCoordinator:(id)a5;
- (id)undoManagerForActionPerformer:(id)a3;
- (int64_t)_currentPeopleSortOrderForPhotoLibrary:(id)a3;
- (unint64_t)photosViewControllerFilterSortedRecordsStrategy:(id)a3;
- (unint64_t)routingOptionsForDestination:(id)a3;
- (void)_addOrReplaceItemViewControllerWithViewController:(id)a3;
- (void)_cleanUpInteractiveBarTransitionIfNeeded;
- (void)_filterWithSearchResultUUIDs:(id)a3;
- (void)_filterWithSuggestionResult:(id)a3;
- (void)_performCancellationAction:(id)a3;
- (void)_performConfirmationAction:(id)a3;
- (void)_performSelectionStatusAction:(id)a3;
- (void)_setupAlbumsViewControllerWithPickerConfiguration:(id)a3 loadingStatusManager:(id)a4 selectionCoordinator:(id)a5 sessionInfo:(id)a6 photosViewConfiguration:(id)a7;
- (void)_setupCollectionsViewControllerWithPickerConfiguration:(id)a3 sessionInfo:(id)a4 photosViewConfiguration:(id)a5;
- (void)_setupPeopleOrPetsPickerWithPickerConfiguration:(id)a3;
- (void)_setupPhotosTabWithPhotosViewConfiguration:(id)a3;
- (void)_setupViewControllersWithConfiguration:(id)a3 loadingStatusManager:(id)a4 selectionCoordinator:(id)a5;
- (void)_showPhotosIndicatorBrieflyIfNeeded;
- (void)_updateAllowedUUIDsForceReload:(BOOL)a3;
- (void)_updateCancellationBarButtonItem;
- (void)_updateConfirmationBarButtonItem;
- (void)_updateEnableSpatialPhotoPlayback;
- (void)_updateInteractiveBarTransition;
- (void)_updateNavigationBar;
- (void)_updateNumberOfItemsToPlayInline;
- (void)_updatePeopleSort;
- (void)_updatePhotosViewControllerNoContentPlaceholder;
- (void)_updateSearchResultContextualVideoThumbnailIdentifiers:(id)a3;
- (void)_updateSelectionStatusBarButtonItem:(BOOL)a3;
- (void)_updateSortDescriptors;
- (void)_updateSortOrder;
- (void)_updateToolbar;
- (void)_updateToolbarSortAndFilterBarButtonItemMenu;
- (void)dealloc;
- (void)handleItemCreationBarButtonItemAction:(id)a3;
- (void)handleNavigationBarSegmentedControl:(id)a3;
- (void)handleToolbarOptionsButton:(id)a3;
- (void)makeSearchBarAsFirstResponder;
- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)navigationWillPresentViewController:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performCancellationAction;
- (void)performConfirmationAction;
- (void)photosGridActionPerformer:(id)a3 contentFilterStateChanged:(id)a4;
- (void)pickerOnboardingHeaderViewWantsToLearnMoreAboutDataAccess:(id)a3;
- (void)pickerSuggestionsView:(id)a3 didSelectSuggestion:(id)a4;
- (void)pickerSuggestionsViewDidSelectSameSuggestion:(id)a3;
- (void)ppt_switchToAlbumsTab;
- (void)resignSearchBarAsFirstResponder;
- (void)scrollContentToInitialPosition;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)searchWithString:(id)a3;
- (void)sessionInfoStatusDidChange:(id)a3;
- (void)setReplacesConfirmationButtonWithActivityIndicator:(BOOL)a3;
- (void)setSidebarViewController:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBars;
- (void)updateSelectionStatusViewWithTitle:(id)a3 titleSystemImage:(id)a4 subtitle:(id)a5 subtitleSystemImage:(id)a6 asset:(id)a7 allowsOpeningStagingArea:(BOOL)a8 centerAlignment:(BOOL)a9;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewSafeAreaInsetsDidChange;
- (void)zoomInContent;
- (void)zoomOutContent;
@end

@implementation PUPickerContainerController

- (id)_containerForTopViewController
{
  v2 = self;
  v3 = PUPickerContainerController._containerForTopViewController()();

  return v3;
}

- (id)_albumsPickerViewControllerWithConfiguration:(id)a3 sessionInfo:(id)a4 collectionList:(id)a5 selectionCoordinator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  v15 = PUPickerContainerController._albumsPickerViewController(configuration:sessionInfo:collectionList:selectionCoordinator:)(v10, v11, a5, a6);

  return v15;
}

- (id)_viewControllerWithSidebarNavigationDestination:(id)a3 configuration:(id)a4 sessionInfo:(id)a5 selectionCoordinator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  v15 = PUPickerContainerController._viewController(sidebarNavigationDestination:configuration:sessionInfo:selectionCoordinator:)(v10, v11, v12, a6);

  return v15;
}

- (void)updateSelectionStatusViewWithTitle:(id)a3 titleSystemImage:(id)a4 subtitle:(id)a5 subtitleSystemImage:(id)a6 asset:(id)a7 allowsOpeningStagingArea:(BOOL)a8 centerAlignment:(BOOL)a9
{
  HIDWORD(v27) = a8;
  v12 = a4;
  LODWORD(v27) = a9;
  if (a3)
  {
    v26 = sub_1B3C9C5E8();
    v15 = v14;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v26 = 0;
  v15 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = sub_1B3C9C5E8();
  v12 = v17;
  if (a5)
  {
LABEL_4:
    v18 = sub_1B3C9C5E8();
    a5 = v19;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  v20 = a6;
  swift_unknownObjectRetain();
  v21 = self;
  if (v20)
  {
    v22 = sub_1B3C9C5E8();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  BYTE1(v25) = a9;
  LOBYTE(v25) = BYTE4(v27);
  sub_1B370CF98(v26, v15, v16, v12, v18, a5, v22, v24, a7, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, HIBYTE(v37));
  swift_unknownObjectRelease();
}

- (id)_peoplePickerViewControllerWithPhotoLibrary:(id)a3 personIdentifiers:(id)a4 preselectedLocalIdentifiers:(id)a5 disabledLocalIdentifiers:(id)a6 selectionLimit:(int64_t)a7 compactMode:(BOOL)a8 transparentBackground:(BOOL)a9 wantsPets:(BOOL)a10
{
  if (a4)
  {
    v15 = sub_1B3C9C788();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1B3C9C788();
  if (a6)
  {
    a6 = sub_1B3C9C788();
  }

  v17 = a3;
  v18 = self;
  v25.value._rawValue = v15;
  v25.is_nil = v16;
  v26.value._rawValue = a7;
  v26.is_nil = a8;
  PUPickerContainerController._peoplePickerViewController(photoLibrary:personIdentifiers:preselectedLocalIdentifiers:disabledLocalIdentifiers:selectionLimit:compactMode:transparentBackground:wantsPets:)(v19, v17, v25, a6, v26, a9, a10, v23, SHIBYTE(v23));
  v21 = v20;

  return v21;
}

- (id)px_gridPresentation
{
  v3 = objc_alloc_init(PUPXGridPresentation);
  v4 = [(PUPickerContainerController *)self sessionInfo];
  [(PUPXGridPresentation *)v3 setSessionInfo:v4];

  return v3;
}

- (PUPickerContainerControllerActionHandler)containerControllerActionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_containerControllerActionHandler);

  return WeakRetained;
}

- (PUSidebarViewController)sidebarViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_sidebarViewController);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{*MEMORY[0x1E69C4120], a4, a5, a6}])
  {

    [(PUPickerContainerController *)self _updateToolbarSortAndFilterBarButtonItemMenu];
  }
}

- (void)pickerOnboardingHeaderViewWantsToLearnMoreAboutDataAccess:(id)a3
{
  v4 = [(PUPickerContainerController *)self containerControllerActionHandler];
  [v4 containerControllerWantsToLearnMoreAboutDataAccess:self];
}

- (void)pickerSuggestionsViewDidSelectSameSuggestion:(id)a3
{
  v3 = [(PUPickerContainerController *)self itemsViewController];
  [v3 px_scrollToInitialPositionAnimated:1];
}

- (void)pickerSuggestionsView:(id)a3 didSelectSuggestion:(id)a4
{
  v5 = a4;
  v6 = [(PUPickerContainerController *)self pickerSuggestionResultFetcher];
  [v6 setCurrentSuggestion:v5];
}

- (id)preferredColumnCounts:(id)a3
{
  v3 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
  v4 = [v3 allowedColumnsOverride];

  return v4;
}

- (CGRect)preferredCropForAsset:(id)a3 withAspectRatio:(double)a4
{
  v5 = a3;
  v6 = [(PUPickerContainerController *)self configuration];
  v7 = [v6 showsWallpaperSuggestions];

  v8 = *MEMORY[0x1E695F050];
  v9 = *(MEMORY[0x1E695F050] + 8);
  v10 = *(MEMORY[0x1E695F050] + 16);
  v11 = *(MEMORY[0x1E695F050] + 24);
  if (v7)
  {
    v12 = v5;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [(PUPickerContainerController *)self pickerSuggestionResultFetcher];

    if (v13 && v14)
    {
      v15 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
      v16 = [v15 suggestionSubtypeByAssetUUID];
      v17 = [v13 uuid];
      v18 = [v16 objectForKeyedSubscript:v17];

      if (v18)
      {
        v19 = [v18 integerValue];
        v20 = [MEMORY[0x1E69C15B0] posterClassificationForSuggestionSubtype:v19];
      }

      else
      {
        v21 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
        v20 = [v21 posterClassification];
      }

      v22 = [(PUPickerContainerController *)self px_screen];
      [v22 bounds];
      v24 = v23;
      v26 = v25;

      if (v24 <= v26)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      v28 = [MEMORY[0x1E69C0790] deviceConfigurationForOrientation:v27];
      [MEMORY[0x1E69C15B0] bestWallpaperCropForAsset:v13 classification:v20 outputCropScore:0 outputLayoutAcceptable:0 layoutConfiguration:v28];
      v8 = v29;
      v9 = v30;
      v10 = v31;
      v11 = v32;
    }
  }

  v33 = v8;
  v34 = v9;
  v35 = v10;
  v36 = v11;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  if ([a3 isTracking])
  {

    [(PUPickerContainerController *)self resignSearchBarAsFirstResponder];
  }
}

- (void)sessionInfoStatusDidChange:(id)a3
{
  v4 = a3;
  v5 = [(PUPickerContainerController *)self configuration];
  v6 = [v5 sourceType];

  if (v6 == 2)
  {
    v7 = [v4 targetAlbum];
    v8 = [v7 objectID];

    if (v8)
    {
      [MEMORY[0x1E695DFB8] orderedSetWithObject:v8];
    }

    else
    {
      [MEMORY[0x1E695DFB8] orderedSet];
    }
    v9 = ;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PUPickerContainerController_sessionInfoStatusDidChange___block_invoke;
    v11[3] = &unk_1E7B80C38;
    v11[4] = self;
    v12 = v9;
    v10 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

void __58__PUPickerContainerController_sessionInfoStatusDidChange___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) selectionCoordinator];
  v2 = [*(a1 + 32) selectionCoordinator];
  v3 = [v2 selectedObjectIDs];
  [v4 modifySelectionWithRemovedOIDs:v3 insertedOIDs:*(a1 + 40)];
}

- (id)_animationForNavigationBarVisible:(BOOL)a3 fromCurrentOpacity:(double)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v6 setFromValue:v7];

  if (v5)
  {
    v8 = &unk_1F2B7F518;
  }

  else
  {
    v8 = &unk_1F2B7F528;
  }

  [v6 setToValue:v8];
  [v6 setFillMode:*MEMORY[0x1E69797E8]];
  [v6 setRemovedOnCompletion:v5];
  [v6 setStiffness:246.7];
  [v6 setDamping:31.4];
  [v6 settlingDuration];
  [v6 setDuration:?];
  v9 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v6 setTimingFunction:v9];

  return v6;
}

- (id)_currentContainerViewForInteractionBarTransition
{
  v3 = [(PUPickerContainerController *)self childViewControllers];
  v4 = [(PUPickerContainerController *)self photosViewController];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    v6 = [(PUPickerContainerController *)self photosViewController];
LABEL_5:
    v10 = v6;
    v11 = [v6 view];

    goto LABEL_7;
  }

  v7 = [(PUPickerContainerController *)self childViewControllers];
  v8 = [(PUPickerContainerController *)self albumsViewController];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v6 = [(PUPickerContainerController *)self albumsViewController];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (void)_updateInteractiveBarTransition
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = [(PUPickerContainerController *)self configuration];
  v4 = [v3 supportsInteractiveBarTransition];

  if (v4)
  {
    v5 = [(PUPickerContainerController *)self _currentContainerViewForInteractionBarTransition];
    if (v5)
    {
      self->_hasNavigationBarTransitionPending = 0;
      v6 = [(PUPickerContainerController *)self photosViewController];
      v7 = [v6 contentController];
      v8 = [v7 gridView];
      [v8 setAvoidSnapshotOnHeightChanges:1];

      v9 = [(PUPickerContainerController *)self navigationController];
      v10 = [(PUPickerContainerController *)self configuration];
      [v10 interactiveBarTransitionFractionExpanded];
      v12 = v11;

      v13 = *(MEMORY[0x1E695EFD0] + 16);
      *&v54.a = *MEMORY[0x1E695EFD0];
      *&v54.c = v13;
      *&v54.tx = *(MEMORY[0x1E695EFD0] + 32);
      *&v53.a = *&v54.a;
      *&v53.c = v13;
      *&v53.tx = *&v54.tx;
      *&v52.a = *&v54.a;
      *&v52.c = v13;
      *&v52.tx = *&v54.tx;
      v14 = [v9 childViewControllers];
      v15 = [v14 count];

      if (v15 == 1)
      {
        v16 = [v9 topViewController];
        v17 = [v16 view];
        [v17 safeAreaInsets];
        v19 = v18;

        v20 = (1.0 - v12) * v19;
        v21 = [(PUPickerContainerController *)self view];
        [v21 safeAreaInsets];
        v23 = v22;

        v24 = [v9 toolbar];
        [v24 bounds];
        v26 = v25;

        v27 = PLPickerGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf.a) = 134218752;
          *(&buf.a + 4) = v20;
          WORD2(buf.b) = 2048;
          *(&buf.b + 6) = v12;
          HIWORD(buf.c) = 2048;
          buf.d = v23;
          LOWORD(buf.tx) = 2048;
          *(&buf.tx + 2) = v26;
          _os_log_impl(&dword_1B36F3000, v27, OS_LOG_TYPE_DEBUG, "_updateInteractiveBarTransition will transition with offset %f, fractionExpanded %f, bottom safe area %f, toolbar height: %f", &buf, 0x2Au);
        }

        memset(&buf, 0, sizeof(buf));
        CGAffineTransformMakeScale(&buf, 1.0, v12);
        memset(&v51, 0, sizeof(v51));
        CGAffineTransformMakeTranslation(&v51, 0.0, v20 * -0.5);
        t1 = buf;
        t2 = v51;
        CGAffineTransformConcat(&v54, &t1, &t2);
        CGAffineTransformMakeTranslation(&v53, 0.0, (1.0 - v12) * (v23 + v26));
        CGAffineTransformMakeTranslation(&v52, 0.0, -v20);
      }

      else
      {
        v29 = v12 <= 0.8;
        v30 = [v9 navigationBar];
        [v30 setHidden:v29];

        v31 = [v9 toolbar];
        [v31 setHidden:v29];
      }

      v48 = v54;
      v32 = [v9 navigationBar];
      buf = v48;
      [v32 setTransform:&buf];

      v47 = v53;
      v33 = [v9 toolbar];
      buf = v47;
      [v33 setTransform:&buf];

      buf = v52;
      [v5 setTransform:&buf];
      v34 = [v9 navigationBar];
      v35 = [v34 layer];
      v36 = [v35 animationForKey:@"navBarOpacity"];

      if (v36)
      {
        v37 = [v36 toValue];
        [v37 floatValue];
        v39 = v38;
      }

      else
      {
        v37 = [v9 navigationBar];
        [v37 alpha];
        v39 = v40;
      }

      v41 = v12 > 0.8 && v39 == 0.0;
      if (v41 || v39 > 0.0 && v12 < 0.8)
      {
        v42 = [(PUPickerContainerController *)self _animationForNavigationBarVisible:v41 fromCurrentOpacity:v39];
        v43 = [v9 navigationBar];
        v44 = [v43 layer];
        [v44 addAnimation:v42 forKey:@"navBarOpacity"];

        v45 = [v9 navigationBar];
        [v45 setUserInteractionEnabled:v41];

        v46 = [v9 toolbar];
        [v46 setUserInteractionEnabled:v41];
      }
    }

    else
    {
      v28 = PLPickerGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v54.a) = 0;
        _os_log_impl(&dword_1B36F3000, v28, OS_LOG_TYPE_DEFAULT, "_updateInteractiveBarTransition will postpone transition, there isn't a view controller presented yet.", &v54, 2u);
      }

      self->_hasNavigationBarTransitionPending = 1;
    }
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (PUPhotoPickerPhotosViewControllerViewModelObservationContext == a5)
  {
    if ((a4 & 0x200000000) != 0)
    {
      [(PUPickerContainerController *)self updateBars];
    }
  }

  else if (PUPhotoPickerConfigurationObservationContext == a5)
  {
    if ((a4 & 0x1F23) != 0)
    {
      [(PUPickerContainerController *)self updateBars];
    }

    if ((a4 & 0x29) != 0)
    {
      v13 = [(PUPickerContainerController *)self photosViewController];
      [v13 invalidateHeaderView];
    }

    if ((a4 & 0xE0) != 0)
    {
      [(PUPickerContainerController *)self _updateInteractiveBarTransition];
      [(PUPickerContainerController *)self _showPhotosIndicatorBrieflyIfNeeded];
      v14 = [(PUPickerContainerController *)self view];
      [v14 setNeedsUpdateConstraints];
    }
  }

  else
  {
    if (PUPhotoPickerAdditionalSelectionStateObservationContext != a5)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:2320 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v10 = PLPickerGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Preparation options were changed.", buf, 2u);
    }

    [(PUPickerContainerController *)self _updateToolbar];
    v11 = [(PUPickerContainerController *)self configuration];
    v12 = [v11 confirmationBehavior];

    if ((v12 - 2) <= 2)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__PUPickerContainerController_observable_didChange_context___block_invoke;
      block[3] = &unk_1E7B80DD0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __60__PUPickerContainerController_observable_didChange_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionCoordinator];
  v7 = [v2 selectedObjectIDs];

  if ([v7 count])
  {
    v3 = [*(a1 + 32) selectionCoordinator];
    v4 = [MEMORY[0x1E695DFB8] orderedSet];
    [v3 modifySelectionWithRemovedOIDs:v7 insertedOIDs:v4];

    v5 = [*(a1 + 32) selectionCoordinator];
    v6 = [MEMORY[0x1E695DFB8] orderedSet];
    [v5 modifySelectionWithRemovedOIDs:v6 insertedOIDs:v7];
  }
}

- (unint64_t)photosViewControllerFilterSortedRecordsStrategy:(id)a3
{
  if ([(PUPickerContainerController *)self _isConfiguredForStickerSuggestionGroup])
  {
    return 2;
  }

  else
  {
    return PXPreferencesGetBool();
  }
}

- (BOOL)photosViewController:(id)a3 isAssetEligibleForPlaybackWithSettlingEffect:(id)a4
{
  v4 = [(PUPickerContainerController *)self configuration:a3];
  v5 = [v4 showsWallpaperSuggestions];

  return v5;
}

- (BOOL)photosViewController:(id)a3 canPlayAssetInline:(id)a4
{
  v5 = a4;
  if ([v5 playbackStyle] != 3)
  {
    v6 = [(PUPickerContainerController *)self photosViewController];
    v7 = [v6 contentController];
    v8 = [v7 enableSpatialPhotoPlayback];

    if (!v8)
    {
      LOBYTE(v16) = 0;
      goto LABEL_12;
    }
  }

  v9 = v5;
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v10 = 0;
    goto LABEL_9;
  }

  v10 = v9;

  if (!v10)
  {
LABEL_9:
    LOBYTE(v16) = 0;
    goto LABEL_10;
  }

  v11 = [(PUPickerContainerController *)self configuration];
  v12 = [v11 showsWallpaperSuggestions];

  if (!v12)
  {
    if ([(PUPickerContainerController *)self _isConfiguredForStickerSuggestionGroup])
    {
      LOBYTE(v16) = [v10 playbackStyle] == 3;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v13 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
  v14 = [v13 inlinePlaybackDisallowedAssetUUIDs];
  v15 = [v10 uuid];
  v16 = [v14 containsObject:v15] ^ 1;

LABEL_10:
LABEL_12:

  return v16;
}

- (BOOL)shouldAnimateFromHeaderView:(id)a3 toHeaderView:(id)a4
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (a4 == 0) & isKindOfClass;
}

- (id)headerViewForPhotosViewController:(id)a3
{
  v4 = a3;
  v5 = [(PUPickerContainerController *)self photosViewController];

  if (v5 == v4)
  {
    v6 = [(PUPickerContainerController *)self configuration];
    v7 = [v6 mode];

    if (v7 != 1)
    {
      v8 = [(PUPickerContainerController *)self configuration];
      v9 = [v8 shouldShowOnboardingHeaderView];

      if (v9)
      {
        v10 = [(PUPickerContainerController *)self onboardingHeaderView];
        goto LABEL_7;
      }

      [(PUPickerContainerController *)self setOnboardingHeaderView:0];
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)photosViewController:(id)a3 animationForProposedAnimation:(id)a4
{
  v5 = a4;
  if ([(PUPickerContainerController *)self searchBarIsFirstResponder])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v6;
}

- (BOOL)allowsContextMenuInteractionForPhotosViewController:(id)a3
{
  v3 = [(PUPickerContainerController *)self configuration];
  v4 = [v3 allowsContextMenuInteraction];

  return v4;
}

- (id)px_navigationDestination
{
  v4 = [(PUPickerContainerController *)self childViewControllers];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:2184 description:{@"Invalid parameter not satisfying: %@", @"self.childViewControllers.count <= 1"}];
  }

  v6 = [(PUPickerContainerController *)self childViewControllers];
  v7 = [v6 firstObject];

  if (!v7 || (-[PUPickerContainerController itemsViewController](self, "itemsViewController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v9))
  {
    v10 = objc_alloc(MEMORY[0x1E69C3930]);
    v11 = 22;
LABEL_6:
    v12 = [v10 initWithType:v11 revealMode:0];
    goto LABEL_7;
  }

  v15 = [(PUPickerContainerController *)self albumsViewController];
  v16 = [v7 isEqual:v15];

  if (v16)
  {
    v10 = objc_alloc(MEMORY[0x1E69C3930]);
    v11 = 23;
    goto LABEL_6;
  }

  v12 = [v7 px_navigationDestination];
LABEL_7:
  v13 = v12;

  return v13;
}

- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (![v9 revealMode] || objc_msgSend(v9, "revealMode") == 1)
  {
    if ([v9 type] == 22)
    {
      v11 = [(PUPickerContainerController *)self itemsViewController];
LABEL_5:
      v12 = v11;
LABEL_39:
      v44 = 0;
LABEL_40:
      if (v12)
      {
        v50 = [(PUPickerContainerController *)self childViewControllers];
        v51 = [v50 containsObject:v12];

        if ((v51 & 1) == 0)
        {
          [(PUPickerContainerController *)self _addOrReplaceItemViewControllerWithViewController:v12];
        }

        [(PUPickerContainerController *)self updateBars];
        if (v44)
        {
          [v12 navigateToDestination:v9 options:a4 completionHandler:v10];
        }

        else
        {
          v52 = [(PUPickerContainerController *)self navigationController];
          v53 = [v52 popToRootViewControllerAnimated:0];

          v10[2](v10, 1, 0);
        }

        goto LABEL_51;
      }

LABEL_45:
      v20 = PLPickerGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v60 = v9;
        v21 = "Unsupported destination: %@";
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    if ([v9 type] == 23)
    {
      v13 = [(PUPickerContainerController *)self sidebarViewController];

      if (!v13)
      {
        v11 = [(PUPickerContainerController *)self albumsViewController];
        goto LABEL_5;
      }
    }

    if ([v9 isCollectionsHome])
    {
LABEL_9:
      v14 = [(PUPickerContainerController *)self configuration];
      v15 = [(PUPickerContainerController *)self sessionInfo];
      v16 = [(PUPickerContainerController *)self selectionCoordinator];
      v12 = [(PUPickerContainerController *)self _viewControllerWithSidebarNavigationDestination:v9 configuration:v14 sessionInfo:v15 selectionCoordinator:v16];

      goto LABEL_39;
    }

    if (!v9)
    {
      goto LABEL_45;
    }

    v22 = [(PUPickerContainerController *)self sidebarViewController];

    if (v22)
    {
      v23 = [(PUPickerContainerController *)self configuration];
      v24 = [(PUPickerContainerController *)self sessionInfo];
      v25 = [(PUPickerContainerController *)self selectionCoordinator];
      v12 = [(PUPickerContainerController *)self _viewControllerWithSidebarNavigationDestination:v9 configuration:v23 sessionInfo:v24 selectionCoordinator:v25];

      v26 = [v9 collection];
      v27 = [v26 localizedSubtitle];

      v28 = [v9 collection];
      v29 = [v28 localizedTitle];

      if (v27)
      {
        v30 = MEMORY[0x1E696AEC0];
        v31 = [v9 collection];
        v32 = v31;
        if (v29)
        {
          v33 = [v31 localizedTitle];
          v34 = [v9 collection];
          v35 = [v34 localizedSubtitle];
          v36 = [v30 stringWithFormat:@"%@ - %@", v33, v35];

LABEL_37:
LABEL_38:
          [v12 setTitle:v36];
          v46 = [(PUPickerContainerController *)self configuration];
          v47 = [v46 hasClearBackgroundColor];
          v48 = [v12 view];
          v49 = [v48 layer];
          [v49 setHitTestsAsOpaque:v47];

          goto LABEL_39;
        }

        v45 = [v31 localizedSubtitle];
      }

      else
      {
        if (!v29)
        {
          v36 = 0;
          goto LABEL_38;
        }

        v30 = MEMORY[0x1E696AEC0];
        v32 = [v9 collection];
        v45 = [v32 localizedTitle];
      }

      v33 = v45;
      v36 = [v30 stringWithFormat:@"%@", v45];
      goto LABEL_37;
    }

    v38 = [v9 collection];
    if (!v38)
    {
      goto LABEL_9;
    }

    v39 = v38;
    v40 = [(PUPickerContainerController *)self navigationBarSegmentedControl];
    v41 = [v40 selectedSegmentIndex];

    if (v41 == 1)
    {
      goto LABEL_9;
    }

    v42 = [(PUPickerContainerController *)self px_gridPresentation];
    v43 = [v9 collection];
    if (v43)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_32:
        v12 = [v42 createViewControllerForAssetCollection:v43 hostViewController:self];

        v44 = 1;
        goto LABEL_40;
      }

      v54 = [MEMORY[0x1E696AAA8] currentHandler];
      v57 = objc_opt_class();
      v56 = NSStringFromClass(v57);
      v58 = [v43 px_descriptionForAssertionMessage];
      [v54 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:2142 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"destination.collection", v56, v58}];
    }

    else
    {
      v54 = [MEMORY[0x1E696AAA8] currentHandler];
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      [v54 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:2142 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"destination.collection", v56}];
    }

    goto LABEL_32;
  }

  if ([v9 revealMode] != 3)
  {
    v20 = PLPickerGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v60 = v9;
      v21 = "Unsupported destination reveal mode: %@";
LABEL_47:
      _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
    }

LABEL_48:

    v10[2](v10, 2, 0);
    goto LABEL_51;
  }

  v17 = [(PUPickerContainerController *)self childViewControllers];
  v18 = [v17 firstObject];

  if (v18)
  {
    if ([v18 px_scrollToInitialPositionAnimated:(a4 >> 1) & 1])
    {
      v19 = 1;
    }

    else
    {
      v19 = 5;
    }

    v10[2](v10, v19, 0);
  }

  else
  {
    v37 = PLPickerGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v60 = v9;
      _os_log_impl(&dword_1B36F3000, v37, OS_LOG_TYPE_ERROR, "Unsupported scrolling to top (can't find child view controller): %@", buf, 0xCu);
    }

    v10[2](v10, 2, 0);
  }

LABEL_51:
}

- (unint64_t)routingOptionsForDestination:(id)a3
{
  v3 = [a3 type];
  if ((v3 - 8) > 0x15)
  {
    return 0;
  }

  else
  {
    return qword_1B3D0D530[v3 - 8];
  }
}

- (BOOL)_actionPerformer:(id)a3 presentViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = [v9 popoverPresentationController];
    if (v10)
    {
      v11 = [v6 actionType];
      if (v11 == *MEMORY[0x1E69A2920])
      {
        v12 = [(PUPickerContainerController *)self toolbarSortAndFilterBarButtonItem];
        [v10 setBarButtonItem:v12];
      }

      else
      {
        v12 = [(PUPickerContainerController *)self navigationController];
        v13 = [v12 view];
        [v10 setSourceView:v13];
      }
    }

    v15 = [(PUPickerContainerController *)self navigationController];
    v14 = 1;
    [v15 presentViewController:v9 animated:1 completion:0];

    v16 = [v9 presentingViewController];
    if (!v16)
    {
      v14 = [v9 px_isDelayingPresentation];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  switch(a5)
  {
    case 1:
      v12 = [(PUPickerContainerController *)self navigationController];
      v11 = 1;
      [v12 px_pushViewController:v10 animated:1 completion:0];

      break;
    case 2:
      v11 = [(PUPickerContainerController *)self _actionPerformer:v9 presentViewController:v10];
      break;
    case 0:
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:2055 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v11 = 0;
      break;
  }

  return v11;
}

- (id)undoManagerForActionPerformer:(id)a3
{
  v3 = [(PUPickerContainerController *)self navigationController];
  v4 = [v3 topViewController];

  v5 = [v4 undoManager];

  return v5;
}

- (void)handleItemCreationBarButtonItemAction:(id)a3
{
  v5 = [(PUPickerContainerController *)self configuration];
  v6 = [v5 sourceType];

  if (v6 != 2)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:2005 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.sourceType == _PHPickerSourceTypeAlbums"}];
  }

  v7 = [(PUPickerContainerController *)self _containerForTopViewController];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(PUPickerContainerController *)self configuration];
    v11 = [v10 photoLibrary];
    v12 = [v11 px_virtualCollections];
    v9 = [v12 rootAlbumCollectionList];
  }

  v13 = objc_alloc(MEMORY[0x1E69C37E0]);
  v14 = [v13 initWithActionType:*MEMORY[0x1E69C3FE8] collectionList:v9];
  [v14 setDelegate:self];
  v15 = [(PUPickerContainerController *)self configuration];
  v16 = [v15 albumsConfiguration];
  v17 = [v16 assetsToAddIdentifiers];

  if ([v17 count])
  {
    v18 = MEMORY[0x1E6978630];
    v19 = [(PUPickerContainerController *)self configuration];
    v20 = [v19 photoLibrary];
    v21 = [v20 librarySpecificFetchOptions];
    v22 = [v18 fetchAssetsWithLocalIdentifiers:v17 options:v21];
    v23 = [v22 fetchedObjects];
    [v14 setPreselectedAssets:v23];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __69__PUPickerContainerController_handleItemCreationBarButtonItemAction___block_invoke;
  v26[3] = &unk_1E7B7FB70;
  v27 = v14;
  v28 = self;
  v24 = v14;
  [v24 performActionWithCompletionHandler:v26];
}

void __69__PUPickerContainerController_handleItemCreationBarButtonItemAction___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLPickerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 localizedDescription];
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to create new album): %@", buf, 0xCu);
    }
  }

  v8 = [*(a1 + 32) createdCollection];
  v9 = [v8 objectID];
  if (v9)
  {
    [MEMORY[0x1E695DFB8] orderedSetWithObject:v9];
  }

  else
  {
    [MEMORY[0x1E695DFB8] orderedSet];
  }
  v10 = ;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PUPickerContainerController_handleItemCreationBarButtonItemAction___block_invoke_522;
  v12[3] = &unk_1E7B80C38;
  v12[4] = *(a1 + 40);
  v13 = v10;
  v11 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __69__PUPickerContainerController_handleItemCreationBarButtonItemAction___block_invoke_522(uint64_t a1)
{
  v4 = [*(a1 + 32) selectionCoordinator];
  v2 = [*(a1 + 32) selectionCoordinator];
  v3 = [v2 selectedObjectIDs];
  [v4 modifySelectionWithRemovedOIDs:v3 insertedOIDs:*(a1 + 40)];
}

- (void)handleToolbarOptionsButton:(id)a3
{
  v5 = a3;
  v6 = [(PUPickerContainerController *)self configuration];
  v7 = [v6 excludesOptionsMenu];

  if (v7)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1959 description:{@"Invalid parameter not satisfying: %@", @"!self.configuration.excludesOptionsMenu"}];
  }

  v8 = [(PUPickerContainerController *)self navigationController];
  v9 = [v8 topViewController];

  v10 = [(PUPickerContainerController *)self configuration];
  v11 = [(PUPickerContainerController *)self selectionCoordinator];
  v12 = [(PUPickerContainerController *)self additionalSelectionState];
  v13 = [PUPickerOptionsViewFactory viewControllerWithConfiguration:v10 selectionCoordinator:v11 additionalSelectionState:v12];

  v14 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v13];
  v15 = PULocalizedString(@"OPTIONS_BUTTON_TITLE");
  [v13 setTitle:v15];

  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E69DC628];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58__PUPickerContainerController_handleToolbarOptionsButton___block_invoke;
  v22[3] = &unk_1E7B7F4F0;
  v17 = v9;
  v23 = v17;
  objc_copyWeak(&v24, &location);
  v18 = [v16 actionWithTitle:&stru_1F2AC6818 image:0 identifier:0 handler:v22];
  v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 primaryAction:v18 menu:0];
  v20 = [v13 navigationItem];
  [v20 setRightBarButtonItem:v19];

  [v17 presentViewController:v14 animated:1 completion:0];
  objc_destroyWeak(&v24);

  objc_destroyWeak(&location);
}

void __58__PUPickerContainerController_handleToolbarOptionsButton___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__PUPickerContainerController_handleToolbarOptionsButton___block_invoke_2;
  v5[3] = &unk_1E7B80638;
  objc_copyWeak(&v6, (a1 + 40));
  [v4 dismissViewControllerAnimated:1 completion:v5];
  objc_destroyWeak(&v6);
}

void __58__PUPickerContainerController_handleToolbarOptionsButton___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateToolbar];
}

- (void)handleNavigationBarSegmentedControl:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [a3 selectedSegmentIndex];
  v5 = v4;
  if (v4)
  {
    if (v4 == 1)
    {
      v6 = [(PUPickerContainerController *)self childViewControllers];
      v7 = [(PUPickerContainerController *)self albumsViewController];
      v8 = [v6 containsObject:v7];

      v9 = 23;
      if ((v8 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      v13 = 1;
      v14 = 3;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = [(PUPickerContainerController *)self childViewControllers];
    v11 = [(PUPickerContainerController *)self itemsViewController];
    v12 = [v10 containsObject:v11];

    v9 = 22;
    if (v12)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v13 = 0;
  v14 = 0;
LABEL_9:
  v15 = [objc_alloc(MEMORY[0x1E69C3930]) initWithType:v9 revealMode:v14];
  v16 = [v15 type];
  v17 = PLPickerGetLog();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"NO";
      if (v13)
      {
        v19 = @"YES";
      }

      v20 = v19;
      *buf = 134218498;
      v27 = v5;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "Selected %ld (same item: %@) to navigate to destination: %@", buf, 0x20u);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __67__PUPickerContainerController_handleNavigationBarSegmentedControl___block_invoke;
    v24[3] = &__block_descriptor_41_e20_v24__0q8__NSError_16l;
    if (v13)
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    v24[4] = v5;
    v25 = v13;
    [(PUPickerContainerController *)self navigateToDestination:v15 options:v21 completionHandler:v24];
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v22 = @"NO";
      if (v13)
      {
        v22 = @"YES";
      }

      v23 = v22;
      *buf = 134218242;
      v27 = v5;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_ERROR, "Unable to select %ld (same item: %@) because a destination doesn't exist.", buf, 0x16u);
    }
  }
}

void __67__PUPickerContainerController_handleNavigationBarSegmentedControl___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLPickerGetLog();
  v7 = v6;
  if (a2 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      if (*(a1 + 40))
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v10 = v9;
      v15 = 134218242;
      v16 = v8;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Selected %ld sucessfully (same item: %@)", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    if (*(a1 + 40))
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = v12;
    v14 = [v5 localizedDescription];
    v15 = 134218754;
    v16 = v11;
    v17 = 2112;
    v18 = v13;
    v19 = 2048;
    v20 = a2;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Unable to select %ld (same item: %@) because of error (%ld): %@", &v15, 0x2Au);
  }
}

- (void)_performSelectionStatusAction:(id)a3
{
  v5 = a3;
  v6 = [(PUPickerContainerController *)self selectionCoordinator];
  v7 = [v6 selectedObjectIDs];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1917 description:{@"Invalid parameter not satisfying: %@", @"self.selectionCoordinator.selectedObjectIDs.count > 0"}];
  }

  v10 = [(PUPickerContainerController *)self containerControllerActionHandler];
  [v10 containerController:self didTapShowSelectedButton:v5];
}

- (void)_performConfirmationAction:(id)a3
{
  v4 = a3;
  v5 = [(PUPickerContainerController *)self containerControllerActionHandler];
  [v5 containerController:self didTapAddButton:v4];
}

- (void)_performCancellationAction:(id)a3
{
  v8 = a3;
  v4 = [(PUPickerContainerController *)self configuration];
  v5 = [(PUPickerContainerController *)self traitCollection];
  v6 = [v4 cancellationBehaviorWithTraitCollection:v5];

  switch(v6)
  {
    case 3:
      v7 = [(PUPickerContainerController *)self containerControllerActionHandler];
      [v7 containerController:self didTapAddButton:v8];
      break;
    case 2:
      v7 = [(PUPickerContainerController *)self containerControllerActionHandler];
      [v7 containerController:self didTapCancelButton:v8];
      break;
    case 1:
      v7 = [(PUPickerContainerController *)self containerControllerActionHandler];
      [v7 containerController:self didTapClearButton:v8];
      break;
    default:
      goto LABEL_8;
  }

LABEL_8:
}

- (void)_cleanUpInteractiveBarTransitionIfNeeded
{
  v18 = [(PUPickerContainerController *)self configuration];
  if ([v18 supportsInteractiveBarTransition])
  {
  }

  else
  {
    v3 = [(PUPickerContainerController *)self viewIfLoaded];

    if (v3)
    {
      v4 = [(PUPickerContainerController *)self photosViewController];
      v5 = [v4 contentController];
      v6 = [v5 gridView];
      [v6 setAvoidSnapshotOnHeightChanges:0];

      v7 = [(PUPickerContainerController *)self navigationController];
      v8 = [v7 navigationBar];

      v9 = *(MEMORY[0x1E695EFD0] + 16);
      *v19 = *MEMORY[0x1E695EFD0];
      v20 = *MEMORY[0x1E695EFD0];
      v16 = *(MEMORY[0x1E695EFD0] + 32);
      v17 = v9;
      v21 = v9;
      v22 = v16;
      [v8 setTransform:&v20];
      [v8 setUserInteractionEnabled:1];
      v10 = [v8 layer];
      [v10 removeAllAnimations];

      v11 = [(PUPickerContainerController *)self navigationController];
      LOBYTE(v6) = [v11 isToolbarHidden];

      if ((v6 & 1) == 0)
      {
        v12 = [(PUPickerContainerController *)self navigationController];
        v13 = [v12 toolbar];

        v20 = *v19;
        v21 = v17;
        v22 = v16;
        [v13 setTransform:&v20];
        [v13 setUserInteractionEnabled:1];
        v14 = [v13 layer];
        [v14 removeAllAnimations];
      }

      v15 = [(PUPickerContainerController *)self _currentContainerViewForInteractionBarTransition];
      v20 = *v19;
      v21 = v17;
      v22 = v16;
      [v15 setTransform:&v20];
    }
  }
}

- (BOOL)_isConfiguredForStickerSuggestionGroup
{
  v2 = [(PUPickerContainerController *)self configuration];
  v3 = [v2 suggestionGroup];
  v4 = [MEMORY[0x1E6979178] stickersSuggestionGroup];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)_updateSearchResultContextualVideoThumbnailIdentifiers:(id)a3
{
  v5 = MEMORY[0x1E696AF00];
  v6 = a3;
  if (([v5 isMainThread] & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1862 description:{@"%s must be called on the main thread", "-[PUPickerContainerController _updateSearchResultContextualVideoThumbnailIdentifiers:]"}];
  }

  v7 = [(PUPickerContainerController *)self photosViewController];
  v8 = [v7 viewModel];
  [v8 setSearchContextualVideoThumbnailIdentifiers:v6];

  v11 = [(PUPickerContainerController *)self photosViewController];
  v9 = [v11 contentControllerIfLoaded];
  [v9 reloadVideoThumbnails];
}

- (void)_filterWithSearchResultUUIDs:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1855 description:{@"%s must be called on the main thread", "-[PUPickerContainerController _filterWithSearchResultUUIDs:]"}];
  }

  [(PUPickerContainerController *)self setSearchResultUUIDs:v6];
  [(PUPickerContainerController *)self _updateAllowedUUIDsForceReload:0];
}

- (void)_filterWithSuggestionResult:(id)a3
{
  v26 = a3;
  if (!v26)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1815 description:{@"Invalid parameter not satisfying: %@", @"result != nil"}];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1816 description:{@"%s must be called on the main thread", "-[PUPickerContainerController _filterWithSuggestionResult:]"}];
  }

  v5 = [(PUPickerContainerController *)self photosViewController];
  v6 = [v5 configuration];
  v7 = [v6 showLoadingPlaceholderWhenEmpty];

  if (v7)
  {
    v8 = [(PUPickerContainerController *)self photosViewController];
    v9 = [v8 viewModelIfLoaded];

    if ([v9 showLoadingPlaceholderWhenEmpty])
    {
      [v9 performChanges:&__block_literal_global_500];
    }

    v10 = [(PUPickerContainerController *)self photosDataSourceManager];
    v11 = [v10 filterPredicate];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 filterPredicate];
      v14 = [MEMORY[0x1E696AE18] predicateWithValue:0];
      v15 = [v13 isEqual:v14];

      if (v15)
      {
        [v10 performChanges:&__block_literal_global_503];
      }
    }
  }

  v16 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
  if (v16)
  {
    v17 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
    v18 = [v17 isSpatialPhotoWallpaperSuggestion];
    v19 = v18 ^ [v26 isSpatialPhotoWallpaperSuggestion];
  }

  else
  {
    v19 = 0;
  }

  [(PUPickerContainerController *)self setPickerSuggestionResultFetcherResult:v26];
  v20 = [v26 selectedFilterableSuggestion];
  v21 = [(PUPickerContainerController *)self _shouldUseSolariumPickerSearch];
  if (v20)
  {
    if (v21)
    {
      v22 = [(PUPickerContainerController *)self searchCoordinator];
      [v22 setContainerFromSuggestion:v26];
    }

    else
    {
      v22 = [(PUPickerContainerController *)self searchBar];
      [v22 updateContainerFromSuggestion:v26];
    }
  }

  else
  {
    if (v21)
    {
      v22 = [(PUPickerContainerController *)self searchCoordinator];
      v23 = [(PUPickerContainerController *)self configuration];
      [v22 setContainerFromPickerConfiguration:v23];
    }

    else
    {
      v22 = [(PUPickerContainerController *)self searchBar];
      v23 = [(PUPickerContainerController *)self configuration];
      [v22 updateContainerFromPickerConfiguration:v23];
    }
  }

  [(PUPickerContainerController *)self _updateEnableSpatialPhotoPlayback];
  [(PUPickerContainerController *)self _updateAllowedUUIDsForceReload:v19];
}

void __59__PUPickerContainerController__filterWithSuggestionResult___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = a2;
  v4 = [v2 set];
  [v3 setFilterPredicate:0 provideIncrementalChangeDetailsForAssetCollections:v4];
}

- (void)_showPhotosIndicatorBrieflyIfNeeded
{
  v35 = [(PUPickerContainerController *)self configuration];
  if (([v35 shouldShowPhotosIndicator] & 1) == 0)
  {
LABEL_4:

    return;
  }

  v3 = [(PUPickerContainerController *)self configuration];
  if ([v3 shouldShowOnboardingOverlayView])
  {

    goto LABEL_4;
  }

  v4 = [(PUPickerContainerController *)self configuration];
  v5 = [v4 shouldShowOnboardingHeaderView];

  if ((v5 & 1) == 0)
  {
    v6 = [(PUPickerContainerController *)self configuration];
    [v6 performChanges:&__block_literal_global_492];

    v7 = [(PUPickerContainerController *)self photosIndicator];
    [v7 removeFromSuperview];

    v8 = [(PUPickerContainerController *)self view];
    v9 = [(PUPickerContainerController *)self photosIndicator];
    [v8 addSubview:v9];

    v10 = [(PUPickerContainerController *)self photosIndicator];
    v11 = [v10 topAnchor];
    v12 = [(PUPickerContainerController *)self view];
    v13 = [v12 topAnchor];
    v14 = [v11 constraintEqualToSystemSpacingBelowAnchor:v13 multiplier:1.0];
    [(PUPickerContainerController *)self setPhotosIndicatorTopConstraint:v14];

    v15 = [(PUPickerContainerController *)self photosIndicator];
    v16 = [v15 topAnchor];
    v17 = [(PUPickerContainerController *)self view];
    v18 = [v17 safeAreaLayoutGuide];
    v19 = [v18 topAnchor];
    v20 = [v16 constraintEqualToSystemSpacingBelowAnchor:v19 multiplier:1.0];
    [(PUPickerContainerController *)self setPhotosIndicatorTopSafeAreaConstraint:v20];

    v21 = [(PUPickerContainerController *)self photosIndicator];
    v22 = [v21 leadingAnchor];
    v23 = [(PUPickerContainerController *)self view];
    v24 = [v23 leadingAnchor];
    v25 = [v22 constraintEqualToSystemSpacingAfterAnchor:v24 multiplier:1.0];
    [(PUPickerContainerController *)self setPhotosIndicatorLeadingConstraint:v25];

    v26 = [(PUPickerContainerController *)self photosIndicator];
    v27 = [v26 leadingAnchor];
    v28 = [(PUPickerContainerController *)self view];
    v29 = [v28 safeAreaLayoutGuide];
    v30 = [v29 leadingAnchor];
    v31 = [v27 constraintEqualToSystemSpacingAfterAnchor:v30 multiplier:1.0];
    [(PUPickerContainerController *)self setPhotosIndicatorLeadingSafeAreaConstraint:v31];

    v32 = [(PUPickerContainerController *)self view];
    [v32 setNeedsUpdateConstraints];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__PUPickerContainerController__showPhotosIndicatorBrieflyIfNeeded__block_invoke_2;
    aBlock[3] = &unk_1E7B7F020;
    aBlock[4] = self;
    v33 = _Block_copy(aBlock);
    v34 = [(PUPickerContainerController *)self photosIndicator];
    [v34 flipToPrivacyIconAndDismissAfterDelay:v33 completion:1.0];
  }
}

uint64_t __66__PUPickerContainerController__showPhotosIndicatorBrieflyIfNeeded__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) photosIndicator];
  [v2 removeFromSuperview];

  [*(a1 + 32) setPhotosIndicator:0];
  [*(a1 + 32) setPhotosIndicatorTopConstraint:0];
  [*(a1 + 32) setPhotosIndicatorTopSafeAreaConstraint:0];
  [*(a1 + 32) setPhotosIndicatorLeadingConstraint:0];
  v3 = *(a1 + 32);

  return [v3 setPhotosIndicatorLeadingSafeAreaConstraint:0];
}

- (void)_updateSelectionStatusBarButtonItem:(BOOL)a3
{
  v55[1] = *MEMORY[0x1E69E9840];
  if ([(PUPickerContainerController *)self hasContent])
  {
    v49 = a3;
    v5 = [(PUPickerContainerController *)self configuration];
    v6 = [(PUPickerContainerController *)self selectionCoordinator];
    v7 = [v6 selectedObjectIDs];
    v8 = [v7 array];

    v9 = [v8 count];
    v10 = [v5 generatedFilter];
    v11 = [v5 photoLibrary];
    v12 = [v10 displayAssetMediaTypeConsideringAssetObjectIDs:v8 photoLibrary:v11];

    v13 = [v5 stagingTitleWithSelectionCount:v9 selectionMediaType:v12];
    v14 = [(PUPickerContainerController *)self additionalSelectionState];
    v54 = 0;
    v15 = [v5 stagingSubtitleWithSelectionCount:v9 includesLocation:objc_msgSend(v14 subtitleLeadingImageName:{"shouldIncludeLocation"), &v54}];
    v16 = v54;

    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = v15;
    }

    if (v13)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }

    if (v13)
    {
      v19 = v15;
    }

    else
    {
      v19 = 0;
    }

    if (v13)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0;
    }

    v53 = v17;
    v52 = v18;
    v21 = v19;
    v22 = v20;
    v23 = [(PUPickerContainerController *)self configuration];
    v24 = [v23 allowsOpeningStagingArea];
    if (v9 > 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v51 = v22;
    if (v25 == 1 && MEMORY[0x1B8C6D660]())
    {
      v26 = [v8 lastObject];
      v46 = objc_alloc(MEMORY[0x1E69788E0]);
      v48 = v8;
      if (v26)
      {
        v55[0] = v26;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
      }

      else
      {
        v27 = MEMORY[0x1E695E0F0];
      }

      v29 = [(PUPickerContainerController *)self configuration];
      v30 = [v29 photoLibrary];
      v31 = v46;
      v47 = v27;
      v32 = [v31 initWithOids:v27 photoLibrary:v30 fetchType:*MEMORY[0x1E6978D98] fetchPropertySets:0 identifier:0 registerIfNeeded:1];

      if (v26)
      {
      }

      v28 = [v32 lastObject];

      v8 = v48;
      v22 = v51;
      v25 = 1;
    }

    else
    {
      v28 = 0;
    }

    LOBYTE(v45) = v49;
    [(PUPickerContainerController *)self updateSelectionStatusViewWithTitle:v53 titleSystemImage:v52 subtitle:v21 subtitleSystemImage:v22 asset:v28 allowsOpeningStagingArea:v25 centerAlignment:v45];
    v33 = [(PUPickerContainerController *)self selectionStatusView];

    if (v33)
    {
      v34 = objc_alloc(MEMORY[0x1E69DC708]);
      [(PUPickerContainerController *)self selectionStatusView];
      v50 = v28;
      v35 = v25;
      v36 = v5;
      v37 = v16;
      v38 = v15;
      v39 = v21;
      v40 = v13;
      v42 = v41 = v8;
      v43 = [v34 initWithCustomView:v42];

      v8 = v41;
      v13 = v40;
      v21 = v39;
      v15 = v38;
      v16 = v37;
      v5 = v36;
      v44 = v35 ^ 1u;
      v28 = v50;
      [v43 setHidesSharedBackground:v44];
      [(PUPickerContainerController *)self setSelectionStatusBarButtonItem:v43];
    }

    else
    {
      [(PUPickerContainerController *)self setSelectionStatusBarButtonItem:0];
    }
  }

  else
  {

    [(PUPickerContainerController *)self setSelectionStatusBarButtonItem:0];
  }
}

- (void)_updateConfirmationBarButtonItem
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = [(PUPickerContainerController *)self configuration];
  v4 = [v3 phPickerConfiguration];
  v5 = [v4 _disabledPrivateCapabilities];

  if ((v5 & 0x400) == 0)
  {
    v6 = [(PUPickerContainerController *)self selectionCoordinator];
    v7 = [v6 selectedObjectIDs];
    v8 = [v7 count];

    if (!-[PUPickerContainerController hasContent](self, "hasContent") || ([v3 confirmationTitle], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v21 = 0;
      goto LABEL_10;
    }

    if ([(PUPickerContainerController *)self replacesConfirmationButtonWithActivityIndicator])
    {

      v9 = &stru_1F2AC6818;
    }

    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69DC628];
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __63__PUPickerContainerController__updateConfirmationBarButtonItem__block_invoke;
    v33 = &unk_1E7B80890;
    objc_copyWeak(&v34, &location);
    v11 = [v10 actionWithTitle:v9 image:0 identifier:0 handler:&v30];
    v12 = [(PUPickerContainerController *)self traitCollection:v30];
    v13 = [v12 userInterfaceIdiom] == 5;

    if (v13)
    {
      v14 = [MEMORY[0x1E69DC740] tintedButtonConfiguration];
      v15 = [MEMORY[0x1E69DC888] whiteColor];
      [v14 setBaseForegroundColor:v15];

      [v14 setShowsActivityIndicator:{-[PUPickerContainerController replacesConfirmationButtonWithActivityIndicator](self, "replacesConfirmationButtonWithActivityIndicator")}];
      v16 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v14 primaryAction:v11];
      v17 = [v16 widthAnchor];
      v18 = [v17 constraintGreaterThanOrEqualToConstant:72.0];
      v36[0] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      [v16 addConstraints:v19];

      v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v16];
    }

    else
    {
      if (![(PUPickerContainerController *)self replacesConfirmationButtonWithActivityIndicator])
      {
        v22 = [(PUPickerContainerController *)self configuration];
        v23 = [v22 confirmationSystemItem];

        if (v23 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithPrimaryAction:v11];
        }

        else
        {
          v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:v23 primaryAction:v11];
        }

        v21 = v24;
LABEL_19:
        [v21 setStyle:2];

        objc_destroyWeak(&v34);
        objc_destroyWeak(&location);

        if (v21)
        {
          v25 = [v3 confirmationBehavior];
          if (v25 >= 2)
          {
            if (v25 != 3)
            {
LABEL_28:
              if ([v21 isEnabled])
              {
                v28 = [(PUPickerContainerController *)self replacesConfirmationButtonWithActivityIndicator]^ 1;
              }

              else
              {
                v28 = 0;
              }

              [v21 setEnabled:v28];
              if ([v21 isEnabled])
              {
                v29 = [v3 confirmationBehavior];
                if (v29 <= 4)
                {
                  [v21 setAccessibilityIdentifier:off_1E7B7D120[v29]];
                }
              }

              goto LABEL_10;
            }

            v27 = 1;
          }

          else
          {
            v26 = ([v3 allowsUnlimitedMultipleSelection] & 1) != 0 || v8 <= objc_msgSend(v3, "selectionLimit");
            v27 = (v8 >= [v3 minimumSelectionLimit]) & v26;
          }

          [v21 setEnabled:v27];
          goto LABEL_28;
        }

LABEL_10:
        [(PUPickerContainerController *)self setConfirmationBarButtonItem:v21];

        goto LABEL_11;
      }

      v14 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      [v14 setShowsActivityIndicator:1];
      v16 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v14 primaryAction:v11];
      v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v16];
    }

    v21 = v20;

    goto LABEL_19;
  }

  [(PUPickerContainerController *)self setConfirmationBarButtonItem:0];
LABEL_11:
}

void __63__PUPickerContainerController__updateConfirmationBarButtonItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained containerControllerActionHandler];
  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v3 sender];

  [v4 containerController:v5 didTapAddButton:v6];
}

- (void)_updateCancellationBarButtonItem
{
  v3 = [(PUPickerContainerController *)self configuration];
  v4 = [(PUPickerContainerController *)self traitCollection];
  v5 = [v3 cancellationBehaviorWithTraitCollection:v4];

  if (!v5)
  {
    v11 = 0;
    goto LABEL_21;
  }

  v6 = [(PUPickerContainerController *)self configuration];
  v7 = [v6 cancellationTitleWithBehavior:v5];

  v8 = [(PUPickerContainerController *)self configuration];
  v9 = [v8 cancellationImageNameWithBehavior:v5];

  if (v9)
  {
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9];
  }

  else
  {
    v10 = 0;
  }

  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69DC628];
  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = &stru_1F2AC6818;
  }

  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __63__PUPickerContainerController__updateCancellationBarButtonItem__block_invoke;
  v26 = &unk_1E7B80890;
  objc_copyWeak(&v27, &location);
  v14 = [v12 actionWithTitle:v13 image:v10 identifier:0 handler:&v23];
  v15 = [(PUPickerContainerController *)self traitCollection:v23];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 5 || (-[PUPickerContainerController configuration](self, "configuration"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 cancellationSystemItemWithBehavior:v5], v18, v19 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithPrimaryAction:v14];
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:v19 primaryAction:v14];
  }

  v11 = v17;

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  if (v11)
  {
    if (v5 == 3)
    {
      v22 = @"Close";
    }

    else
    {
      if (v5 != 2)
      {
        if (v5 == 1)
        {
          v20 = [(PUPickerContainerController *)self selectionCoordinator];
          v21 = [v20 selectedObjectIDs];
          [v11 setEnabled:{objc_msgSend(v21, "count") != 0}];

          [v11 setAccessibilityIdentifier:@"Clear"];
        }

        goto LABEL_21;
      }

      v22 = @"Cancel";
    }

    [v11 setAccessibilityIdentifier:v22];
    [v11 setEnabled:1];
  }

LABEL_21:
  [(PUPickerContainerController *)self setCancellationBarButtonItem:v11];
}

void __63__PUPickerContainerController__updateCancellationBarButtonItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _performCancellationAction:v4];
}

- (void)_updateToolbar
{
  v78[1] = *MEMORY[0x1E69E9840];
  v4 = [(PUPickerContainerController *)self configuration];
  if ([v4 excludesSortAndFilterMenu])
  {

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v5 = [(PUPickerContainerController *)self childViewControllers];
  v6 = [(PUPickerContainerController *)self itemsViewController];
  v2 = [v5 containsObject:v6];

  if (!v2)
  {
    goto LABEL_7;
  }

  v7 = [(PUPickerContainerController *)self toolbarSortAndFilterBarButtonItem];
  if (MEMORY[0x1B8C6D660]())
  {
    v8 = v7;
    v9 = [(PUPickerContainerController *)self configuration];
    v10 = [(PUPickerContainerController *)self selectionCoordinator];
    v11 = [v10 selectedObjectIDs];
    v12 = [v11 count];
    v13 = [(PUPickerContainerController *)self additionalSelectionState];
    v2 = [v9 locationMetadataSubtitleWithSelectionCount:v12 includesLocation:objc_msgSend(v13 usesShortVersion:"shouldIncludeLocation") leadingImageName:{0, 0}];
    v14 = [(PUPickerContainerController *)self optionsAction];
    [v14 setSubtitle:v2];

    v15 = [(PUPickerContainerController *)self configuration];
    v16 = [v15 excludesOptionsMenu];
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v63 = MEMORY[0x1E69DCC60];
      v10 = [(PUPickerContainerController *)self optionsAction];
      v77 = v10;
      v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
      v13 = [v63 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v2];
      v78[0] = v13;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:1];
    }

    v64 = [(PUPickerContainerController *)self filterButtonController];
    [v64 setAdditionalMenuItems:v17];

    if ((v16 & 1) == 0)
    {
    }

    v7 = v8;
  }

LABEL_8:
  v18 = MEMORY[0x1B8C6D660]();
  v19 = [(PUPickerContainerController *)self configuration];
  v20 = [v19 excludesOptionsMenu];
  v21 = v20;
  if (v18)
  {
    if (v7)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = [(PUPickerContainerController *)self toolbarOptionsBarButton];
  }

  if ([(PUPickerContainerController *)self isCompactWidthOrHeight])
  {
    v23 = [(PUPickerContainerController *)self hasContent];
    v24 = v7;
    if (v23)
    {
      v21 = [(PUPickerContainerController *)self configuration];
      if ([v21 allowsSearchBar])
      {
        v18 = [(PUPickerContainerController *)self childViewControllers];
        v2 = [(PUPickerContainerController *)self photosViewController];
        v25 = [v18 containsObject:v2];
        v26 = 1;
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }
    }

    else
    {
      v26 = 0;
      v25 = 0;
    }

    v28 = [(PUPickerContainerController *)self searchCoordinator];
    [v28 setIsVisible:v25];

    if (v26)
    {
    }

    v7 = v24;
    if (v23)
    {
    }

    if ([(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
    {
      v29 = [(PUPickerContainerController *)self searchCoordinator];
      v27 = [v29 regularSearchBarButtonItems];
    }

    else
    {
      v27 = 0;
    }

    if ([(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
    {
      v30 = [(PUPickerContainerController *)self searchCoordinator];
      v31 = [v30 compactSearchBarButtonItem];

      goto LABEL_32;
    }
  }

  else
  {
    v27 = 0;
  }

  v31 = 0;
LABEL_32:
  v32 = [(PUPickerContainerController *)self traitCollection];
  v33 = [v32 userInterfaceIdiom];

  if (v33 == 5)
  {
    [(PUPickerContainerController *)self _updateCancellationBarButtonItem];
    [(PUPickerContainerController *)self _updateConfirmationBarButtonItem];
    v34 = [(PUPickerContainerController *)self cancellationBarButtonItem];
    v35 = [(PUPickerContainerController *)self confirmationBarButtonItem];
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  [(PUPickerContainerController *)self _updateSelectionStatusBarButtonItem:1];
  v36 = [(PUPickerContainerController *)self selectionStatusBarButtonItem];
  v67 = v27;
  v68 = v31;
  v69 = v22;
  if ([v27 count])
  {
    v37 = v27;
    v38 = v36;
  }

  else
  {
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40 = v39;
    if (v34)
    {
      [v39 addObject:v34];
    }

    if (v35)
    {
      [v40 addObject:v35];
    }

    if (!MEMORY[0x1B8C6D660]() && v22 && ![v40 count])
    {
      [v40 addObject:v22];
    }

    if (v31)
    {
      [v40 addObject:v31];
    }

    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = v42;
    if (v7)
    {
      [v42 addObject:v7];
    }

    if (MEMORY[0x1B8C6D660]() && v22)
    {
      [v43 addObject:v22];
    }

    [(PUPickerContainerController *)self _updateSelectionStatusBarButtonItem:1];
    v38 = [(PUPickerContainerController *)self selectionStatusBarButtonItem];

    if (v38)
    {
      [v41 addObject:v38];
    }

    if (![v40 count] && MEMORY[0x1B8C6D660]())
    {
      v44 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      [v40 addObject:v44];
    }

    if (![v41 count])
    {
      v45 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      [v41 addObject:v45];
    }

    v46 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    [v41 addObject:v46];

    if (![v43 count])
    {
      v47 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      [v43 addObject:v47];
    }

    v48 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    [v43 addObject:v48];

    v49 = [v43 arrayByAddingObjectsFromArray:v41];
    v37 = [v49 arrayByAddingObjectsFromArray:v40];

    v27 = v67;
  }

  v50 = 1;
  v65 = v35;
  if (v38 || v34 || v35)
  {
    v51 = v7;
  }

  else
  {
    v51 = v7;
    if (!v7)
    {
      v50 = ([v27 count] | v68 | v69) != 0;
    }
  }

  v52 = [(PUPickerContainerController *)self configuration];
  v53 = [v52 allowsToolbar] & v50;

  v54 = [(PUPickerContainerController *)self albumsViewControllerIfLoaded];
  v55 = [v54 px_barAppearance];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __45__PUPickerContainerController__updateToolbar__block_invoke;
  v74[3] = &__block_descriptor_33_e34_v16__0___PXMutableBarAppearance__8l;
  v75 = v53;
  [v55 performChangesWithAnimationOptions:0 changes:v74];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v56 = [(PUPickerContainerController *)self navigationController];
  v57 = [v56 viewControllers];

  v58 = [v57 countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v71;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v71 != v60)
        {
          objc_enumerationMutation(v57);
        }

        [*(*(&v70 + 1) + 8 * i) setToolbarItems:v37];
      }

      v59 = [v57 countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v59);
  }

  v62 = [(PUPickerContainerController *)self navigationController];
  [v62 setToolbarHidden:v53 ^ 1u animated:0];
}

void __45__PUPickerContainerController__updateToolbar__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPrefersToolbarVisible:v2];
  [v3 setPrefersTabBarVisible:0];
}

- (void)_updateNavigationBar
{
  v125[1] = *MEMORY[0x1E69E9840];
  v4 = [(PUPickerContainerController *)self configuration];
  v113 = [(PUPickerContainerController *)self sidebarViewController];

  v5 = [(PUPickerContainerController *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  v7 = [(PUPickerContainerController *)self childViewControllers];
  v8 = [(PUPickerContainerController *)self photosViewController];
  v9 = [v7 containsObject:v8];

  v10 = 0;
  if ([(PUPickerContainerController *)self hasContent]&& v9)
  {
    v10 = [v4 allowsSearchBar];
  }

  v11 = 0;
  if ([(PUPickerContainerController *)self hasContent]&& !v113)
  {
    v11 = [v4 allowsSegmentedControl];
  }

  if (v9)
  {
    v12 = [v4 suggestionGroup];
    v101 = v12 == 0;
  }

  else
  {
    v101 = 1;
  }

  v102 = v9;
  v97 = v10;
  if (v6 == 5 && ([v4 allowsToolbar] & 1) != 0)
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    [(PUPickerContainerController *)self _updateCancellationBarButtonItem];
    [(PUPickerContainerController *)self _updateConfirmationBarButtonItem];
    v14 = [(PUPickerContainerController *)self cancellationBarButtonItem];
    v13 = [(PUPickerContainerController *)self confirmationBarButtonItem];
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v104 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v4 allowsNewItemCreation])
  {
    v16 = [(PUPickerContainerController *)self itemCreationBarButtonItem];
    [v15 addObject:v16];
  }

  if (v13)
  {
    [v15 addObject:v13];
  }

  v105 = v13;
  v17 = [(PUPickerContainerController *)self configuration];
  v107 = v4;
  if ([v17 excludesSortAndFilterMenu])
  {

LABEL_24:
    v106 = 0;
    goto LABEL_25;
  }

  v18 = [(PUPickerContainerController *)self childViewControllers];
  v19 = [(PUPickerContainerController *)self itemsViewController];
  v2 = [v18 containsObject:v19];

  if (!v2)
  {
    goto LABEL_24;
  }

  v106 = [(PUPickerContainerController *)self toolbarSortAndFilterBarButtonItem];
  if (MEMORY[0x1B8C6D660]())
  {
    v20 = [(PUPickerContainerController *)self configuration];
    v21 = [(PUPickerContainerController *)self selectionCoordinator];
    v22 = [v21 selectedObjectIDs];
    v23 = [v22 count];
    v24 = [(PUPickerContainerController *)self additionalSelectionState];
    v2 = [v20 locationMetadataSubtitleWithSelectionCount:v23 includesLocation:objc_msgSend(v24 usesShortVersion:"shouldIncludeLocation") leadingImageName:{0, 0}];
    v25 = [(PUPickerContainerController *)self optionsAction];
    [v25 setSubtitle:v2];

    v26 = [(PUPickerContainerController *)self configuration];
    v27 = [v26 excludesOptionsMenu];
    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v95 = MEMORY[0x1E69DCC60];
      v111 = [(PUPickerContainerController *)self optionsAction];
      v124 = v111;
      v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
      v24 = [v95 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v2];
      v125[0] = v24;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:1];
    }

    v96 = [(PUPickerContainerController *)self filterButtonController];
    [v96 setAdditionalMenuItems:v28];

    if ((v27 & 1) == 0)
    {
    }

    v4 = v107;
  }

LABEL_25:
  v29 = MEMORY[0x1B8C6D660]();
  v30 = [(PUPickerContainerController *)self configuration];
  v31 = [v30 excludesOptionsMenu];
  v32 = v31;
  if (v29)
  {
    if (v106)
    {
      v32 = 1;
    }

    else
    {
      v32 = v31;
    }
  }

  if ((v32 & 1) == 0)
  {
    [(PUPickerContainerController *)self toolbarOptionsBarButton];
  }

  v108 = v14;
  if (![(PUPickerContainerController *)self isCompactWidthOrHeight])
  {
    if (v113 && [v15 count])
    {
      v33 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:0.0];
      [v15 addObject:v33];
    }

    v34 = [(PUPickerContainerController *)self hasContent];
    if (v34)
    {
      v32 = [(PUPickerContainerController *)self configuration];
      if ([v32 allowsSearchBar])
      {
        v29 = [(PUPickerContainerController *)self childViewControllers];
        v2 = [(PUPickerContainerController *)self photosViewController];
        v35 = [v29 containsObject:v2];
        v36 = 1;
      }

      else
      {
        v36 = 0;
        v35 = 0;
      }
    }

    else
    {
      v36 = 0;
      v35 = 0;
    }

    v37 = [(PUPickerContainerController *)self searchCoordinator];
    [v37 setIsVisible:v35];

    if (v36)
    {
    }

    if (v34)
    {
    }

    v38 = [(PUPickerContainerController *)self searchCoordinator];
    v39 = v38;
    v4 = v107;
    v14 = v108;
    if (v113)
    {
      [v38 regularHasSidebarSearchBarButtonItems];
    }

    else
    {
      [v38 regularSearchBarButtonItems];
    }
    v40 = ;

    if ([v40 count])
    {
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v41 = v40;
      v42 = [v41 countByEnumeratingWithState:&v118 objects:v123 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v119;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v119 != v44)
            {
              objc_enumerationMutation(v41);
            }

            [v15 addObject:*(*(&v118 + 1) + 8 * i)];
          }

          v43 = [v41 countByEnumeratingWithState:&v118 objects:v123 count:16];
        }

        while (v43);
      }

      v14 = v108;
    }

    if (!v113)
    {
      if ([(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
      {
        v46 = [(PUPickerContainerController *)self searchCoordinator];
        v47 = [v46 compactSearchBarButtonItem];

        if (v47)
        {
          [v15 addObject:v47];
        }
      }
    }
  }

  if (v11)
  {
    v112 = [(PUPickerContainerController *)self navigationBarSegmentedControl];
  }

  else
  {
    v112 = 0;
  }

  v48 = [v4 allowsNavigationBar];
  v49 = [(PUPickerContainerController *)self sidebarViewController];
  v50 = [v49 navigationController];
  v110 = [v50 navigationBar];

  v51 = [(PUPickerContainerController *)self navigationController];
  v52 = [v51 navigationBar];

  v53 = [(PUPickerContainerController *)self sidebarViewController];
  v109 = [v53 navigationItem];

  v54 = [(PUPickerContainerController *)self navigationItem];
  if (([v4 supportsInteractiveBarTransition] & 1) == 0)
  {
    [v52 setHidden:v48 ^ 1u];
  }

  v100 = v52;
  v55 = [(PUPickerContainerController *)self configuration];
  v56 = [v55 title];

  v57 = [(PUPickerContainerController *)self searchCoordinator];
  v99 = v56;
  if (([v57 isEditing] & (v113 == 0)) != 0)
  {
    v56 = 0;
  }

  v58 = [(PUPickerContainerController *)self itemsViewController];
  [v58 setTitle:v56];

  v59 = [(PUPickerContainerController *)self childViewControllers];
  v60 = [v59 firstObject];
  v61 = [v60 title];
  [(PUPickerContainerController *)self setTitle:v61];

  [v109 setLeftBarButtonItem:v14];
  v62 = [v109 leftBarButtonItem];
  if (v62)
  {
    [v110 setHidden:0];
  }

  else
  {
    v63 = [v109 rightBarButtonItem];
    [v110 setHidden:v63 == 0];
  }

  if (v109)
  {
    v64 = 0;
  }

  else
  {
    v64 = v14;
  }

  [v54 setLeftBarButtonItem:v64];
  [v54 setTitleView:v112];
  v65 = [(PUPickerContainerController *)self selectionCoordinator];
  v66 = [v65 selectedObjectIDs];
  v67 = [v4 promptWithSelectionCount:{objc_msgSend(v66, "count")}];

  if (v67)
  {
    v68 = &stru_1F2AC6818;
  }

  else
  {
    v68 = 0;
  }

  [v109 setPrompt:v68];
  [v54 setPrompt:v67];
  v69 = [(PUPickerContainerController *)self navigationController];
  v70 = [v69 navigationBar];
  [v70 setNeedsLayout];

  v98 = v67;
  if ([(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
  {
    v71 = [(PUPickerContainerController *)self pickerSuggestionsView];
    v72 = v101;
    [v71 setHidden:v101];

    v73 = v102;
  }

  else
  {
    v74 = v97 ^ 1u;
    v75 = [(PUPickerContainerController *)self searchBar];
    [v75 setHidden:v74];

    v73 = v102;
    if ((v97 & 1) == 0)
    {
      v76 = [(PUPickerContainerController *)self searchBar];
      [v76 updateIsEditing:0];
    }

    v77 = [(PUPickerContainerController *)self pickerSuggestionsView];
    [v77 setHidden:v101];

    v72 = v74 & v101;
  }

  v103 = v73 ^ 1u;
  v78 = [(PUPickerContainerController *)self navigationBarBottomPalette];
  [v78 setHidden:v72];

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v79 = [(PUPickerContainerController *)self navigationController];
  v80 = [v79 viewControllers];

  v81 = [v80 countByEnumeratingWithState:&v114 objects:v122 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v115;
    do
    {
      for (j = 0; j != v82; ++j)
      {
        if (*v115 != v83)
        {
          objc_enumerationMutation(v80);
        }

        v85 = *(*(&v114 + 1) + 8 * j);
        v86 = [v85 navigationItem];
        [v86 setRightBarButtonItems:v15];

        v87 = [(PUPickerContainerController *)self searchCoordinator];
        v88 = [v87 isEditing];

        if (v88 && !v113)
        {
          v89 = [v54 prompt];
          v90 = [v85 navigationItem];
          [v90 setPrompt:v89];
        }
      }

      v82 = [v80 countByEnumeratingWithState:&v114 objects:v122 count:16];
    }

    while (v82);
  }

  v91 = [(PUPickerContainerController *)self navigationBarSegmentedControl];
  [v91 setSelectedSegmentIndex:v103];

  if (![(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
  {
    v92 = [(PUPickerContainerController *)self pickerSuggestionsView];
    if (v92)
    {
      v93 = [(PUPickerContainerController *)self pickerSuggestionsView];
      v94 = [v93 isHidden];

      if (v94)
      {
        v92 = 0;
      }

      else
      {
        v92 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
        [v92 configureWithDefaultBackground];
        [v100 setStandardAppearance:v92];
        [v100 setCompactAppearance:v92];
        [v100 setCompactScrollEdgeAppearance:v92];
      }
    }

    [v100 setScrollEdgeAppearance:v92];
  }
}

- (void)_updateEnableSpatialPhotoPlayback
{
  v6 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
  v3 = [v6 isSpatialPhotoWallpaperSuggestion];
  v4 = [(PUPickerContainerController *)self photosViewController];
  v5 = [v4 contentController];
  [v5 setEnableSpatialPhotoPlayback:v3];
}

- (void)_updateNumberOfItemsToPlayInline
{
  v3 = [(PUPickerContainerController *)self configuration];
  if ([v3 shouldDisableInlinePlayback])
  {
    v4 = 0;
LABEL_3:

    goto LABEL_8;
  }

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();

  if (IsReduceMotionEnabled)
  {
    v4 = 0;
  }

  else
  {
    if (![(PUPickerContainerController *)self _isConfiguredForStickerSuggestionGroup])
    {
      v3 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
      v4 = [v3 numberOfItemsToPlayInline];
      goto LABEL_3;
    }

    v4 = 3;
  }

LABEL_8:
  v7 = [(PUPickerContainerController *)self photosViewController];
  v6 = [v7 contentController];
  [v6 setNumberOfItemsToPlayInline:v4];
}

- (void)_updatePeopleSort
{
  v3 = [(PUPickerContainerController *)self peopleSortOrderType];
  if (v3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 1;
  }

  v5 = MEMORY[0x1E69C3790];
  v7 = [(PUPickerContainerController *)self configuration];
  v6 = [v7 photoLibrary];
  [v5 setSortOrder:v4 toPhotoLibrary:v6];
}

- (void)_updateSortDescriptors
{
  v28[5] = *MEMORY[0x1E69E9840];
  v3 = [(PUPickerContainerController *)self photosDataSourceManager];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;

    if (v4)
    {
      if ([(PUPickerContainerController *)self isShowingLiveWallpaperSuggestions])
      {
        v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"mediaAnalysisAttributes.activityScore" ascending:1];
        v28[0] = v5;
        v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"mediaAnalysisAttributes.wallpaperScore" ascending:1];
        v28[1] = v6;
        v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"favorite" ascending:1];
        v28[2] = v7;
        v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
        v28[3] = v8;
        v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
        v28[4] = v9;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:5];
        v11 = [v4 photosDataSource];
        [v11 setSortDescriptors:v10];
      }

      else
      {
        v14 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
        v15 = [v14 isFilteredBackdropSuggestions];

        if (v15)
        {
          v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"mediaAnalysisAttributes.faceCount" ascending:0];
          v27[0] = v5;
          v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
          v27[1] = v6;
          v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
          v27[2] = v7;
          v16 = MEMORY[0x1E695DEC8];
          v17 = v27;
        }

        else
        {
          v18 = [(PUPickerContainerController *)self configuration];
          v19 = [v18 showsWallpaperSuggestions];

          if (v19)
          {
            v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
            v26[0] = v5;
            v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
            v26[1] = v6;
            v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
            v26[2] = v7;
            v16 = MEMORY[0x1E695DEC8];
            v17 = v26;
          }

          else
          {
            v20 = [(PUPickerContainerController *)self configuration];
            v21 = [v20 customSortDescriptors];

            if (v21)
            {
              v5 = [(PUPickerContainerController *)self configuration];
              v6 = [v5 customSortDescriptors];
              v7 = [v4 photosDataSource];
              [v7 setSortDescriptors:v6];
              goto LABEL_18;
            }

            if ([(PUPickerContainerController *)self assetSortOrderType]!= 1)
            {
              v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
              v24[0] = v5;
              v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortToken" ascending:1];
              v24[1] = v6;
              v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
              v8 = [v4 photosDataSource];
              [v8 setSortDescriptors:v7];
              goto LABEL_17;
            }

            v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
            v25[0] = v5;
            v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
            v25[1] = v6;
            v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
            v25[2] = v7;
            v16 = MEMORY[0x1E695DEC8];
            v17 = v25;
          }
        }

        v8 = [v16 arrayWithObjects:v17 count:3];
        v9 = [v4 photosDataSource];
        [v9 setSortDescriptors:v8];
      }

LABEL_17:
LABEL_18:

      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = PLPickerGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v22 = 138412290;
    v23 = 0;
    _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Can't update sort descriptors because the data source manager (%@) is not PhotoKit based.", &v22, 0xCu);
  }

  v4 = 0;
LABEL_10:
  v13 = [(PUPickerContainerController *)self photosViewController];
  [v13 invalidateHeaderView];
}

- (void)_updateSortOrder
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(PUPickerContainerController *)self photosDataSourceManager];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;

    if (v4)
    {
      v5 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
      v6 = [v5 shouldReverseSortOrder];

      v7 = [v4 photosDataSource];
      [v7 setReverseSortOrder:v6 == 0];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = PLPickerGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = 0;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Can't update sort order because the data source manager (%@) is not PhotoKit based.", &v9, 0xCu);
  }

  v4 = 0;
LABEL_9:
}

- (void)_updatePhotosViewControllerNoContentPlaceholder
{
  v3 = [(PUPickerContainerController *)self searchResultUUIDs];

  if (v3)
  {
    v4 = PXLocalizedString();
  }

  else
  {
    v6 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
    v7 = [v6 selectedFilterableSuggestion];

    if (!v7 || (-[PUPickerContainerController configuration](self, "configuration"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isProcessingSuggestions], v8, !v9))
    {
      v5 = 0;
      v4 = 0;
      goto LABEL_9;
    }

    v4 = PXLocalizedString();
    v10 = [(PUPickerContainerController *)self configuration];
    v11 = [v10 suggestionGroup];
    v12 = [v11 isForWallpaper];

    if ((v12 & 1) == 0)
    {
      v17 = [(PUPickerContainerController *)self configuration];
      v18 = [v17 generatedFilter];
      v19 = [v18 containsStickersFilter];

      if (!v19)
      {
        v5 = 0;
        goto LABEL_9;
      }
    }
  }

  v5 = PXLocalizedString();
LABEL_9:
  v13 = [(PUPickerContainerController *)self photosViewController];
  v14 = [v13 viewModelIfLoaded];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __78__PUPickerContainerController__updatePhotosViewControllerNoContentPlaceholder__block_invoke;
  v20[3] = &unk_1E7B7D080;
  v21 = v4;
  v22 = v5;
  v15 = v5;
  v16 = v4;
  [v14 performChanges:v20];
}

void __78__PUPickerContainerController__updatePhotosViewControllerNoContentPlaceholder__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setNoContentPlaceholderFallbackTitle:v3];
  [v4 setNoContentPlaceholderFallbackMessage:*(a1 + 40)];
}

- (void)_updateAllowedUUIDsForceReload:(BOOL)a3
{
  v5 = [(PUPickerContainerController *)self searchResultUUIDs];
  if (v5)
  {
LABEL_6:
    [(PUPickerContainerController *)self _updatePhotosViewControllerNoContentPlaceholder];
    goto LABEL_7;
  }

  v6 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
  v7 = [v6 fetchResult];

  if (v7)
  {
    v8 = PXMap();
    v9 = v8;
    v10 = MEMORY[0x1E695E0F0];
    if (v8)
    {
      v10 = v8;
    }

    v5 = v10;

    goto LABEL_6;
  }

  v5 = 0;
LABEL_7:
  v11 = [(PUPickerContainerController *)self photosDataSourceManager];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __62__PUPickerContainerController__updateAllowedUUIDsForceReload___block_invoke_2;
  v21 = &unk_1E7B7D058;
  v22 = v5;
  v23 = a3;
  v12 = v5;
  [v11 performChanges:&v18];

  [(PUPickerContainerController *)self _updateSortOrder:v18];
  [(PUPickerContainerController *)self _updateSortDescriptors];
  [(PUPickerContainerController *)self _updateNumberOfItemsToPlayInline];
  [(PUPickerContainerController *)self _updateNavigationBar];
  v13 = [(PUPickerContainerController *)self searchResultUUIDs];
  v14 = [(PUPickerContainerController *)self previousSearchResultUUIDs];
  v15 = [v13 isEqualToArray:v14];

  if ((v15 & 1) == 0)
  {
    v16 = [(PUPickerContainerController *)self photosViewController];
    [v16 px_scrollToInitialPositionAnimated:0];
  }

  v17 = [(PUPickerContainerController *)self searchResultUUIDs];
  [(PUPickerContainerController *)self setPreviousSearchResultUUIDs:v17];
}

void __62__PUPickerContainerController__updateAllowedUUIDsForceReload___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    [v6 setAllowedUUIDs:v4 provideIncrementalChangeDetailsForAssetCollections:0];
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = [MEMORY[0x1E695DFD8] set];
  [v6 setAllowedUUIDs:v4 provideIncrementalChangeDetailsForAssetCollections:v5];

  if (v3)
  {
LABEL_8:
  }

LABEL_9:
}

- (void)_addOrReplaceItemViewControllerWithViewController:(id)a3
{
  v37 = a3;
  [(PUPickerContainerController *)self px_addOrReplaceChildViewController:v37 activateConstraints:0];
  v4 = [(PUPickerContainerController *)self view];
  v5 = [v37 view];
  v6 = [(PUPickerContainerController *)self traitCollection];
  if ([v6 userInterfaceIdiom] == 6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v4 safeAreaLayoutGuide];
      v9 = [v8 topAnchor];
      v10 = [v5 topAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      [(PUPickerContainerController *)self setTopConstraint:v11];

      v12 = [v4 safeAreaLayoutGuide];
      v13 = [v12 bottomAnchor];
      v14 = [v5 bottomAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      [(PUPickerContainerController *)self setBottomConstraint:v15];

      v16 = [v4 safeAreaLayoutGuide];
      v17 = [v16 leadingAnchor];
      v18 = [v5 leadingAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      [(PUPickerContainerController *)self setLeadingConstraint:v19];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v20 = [v4 topAnchor];
  v21 = [v5 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  [(PUPickerContainerController *)self setTopConstraint:v22];

  v23 = [v4 bottomAnchor];
  v24 = [v5 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  [(PUPickerContainerController *)self setBottomConstraint:v25];

  v16 = [v4 leadingAnchor];
  v17 = [v5 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [(PUPickerContainerController *)self setLeadingConstraint:v18];
LABEL_6:

  v26 = [v4 trailingAnchor];
  v27 = [v5 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [(PUPickerContainerController *)self setTrailingConstraint:v28];

  v29 = [v4 safeAreaLayoutGuide];
  v30 = [v29 topAnchor];
  v31 = [v5 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [(PUPickerContainerController *)self setTopSafeAreaConstraint:v32];

  v33 = [v4 safeAreaLayoutGuide];
  v34 = [v33 bottomAnchor];
  v35 = [v5 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  [(PUPickerContainerController *)self setBottomSafeAreaConstraint:v36];

  [v4 setNeedsUpdateConstraints];
}

- (PXPhotosUIViewController)actionResponderPhotosViewController
{
  v4 = [(PUPickerContainerController *)self actionResponderViewController];
  v5 = [v4 px_descendantViewControllerWithClass:objc_opt_class()];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v5 px_descriptionForAssertionMessage];
      [v7 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1083 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[self.actionResponderViewController px_descendantViewControllerWithClass:[PXPhotosUIViewController class]]", v9, v10}];
    }
  }

  return v5;
}

- (UIViewController)actionResponderViewController
{
  v3 = [(PUPickerContainerController *)self navigationController];
  v4 = [v3 visibleViewController];
  v5 = [v4 px_topmostPresentedViewController];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(PUPickerContainerController *)self navigationController];
    v9 = [v8 visibleViewController];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = self;
    }

    v7 = v11;
  }

  return v7;
}

- (UIViewController)itemsViewController
{
  v3 = [(PUPickerContainerController *)self unavailableViewController];

  if (v3)
  {
    v4 = [(PUPickerContainerController *)self unavailableViewController];
    goto LABEL_3;
  }

  v6 = [(PUPickerContainerController *)self configuration];
  v7 = [v6 sourceType];

  if (v7 > 6)
  {
    goto LABEL_13;
  }

  if (((1 << v7) & 0x1A) != 0)
  {
    v4 = [(PUPickerContainerController *)self peopleViewController];
    goto LABEL_3;
  }

  if (((1 << v7) & 0x44) != 0)
  {
    v4 = [(PUPickerContainerController *)self albumsViewController];
    goto LABEL_3;
  }

  if (v7 == 5)
  {
    v4 = [(PUPickerContainerController *)self collectionsViewController];
  }

  else
  {
LABEL_13:
    if (!v7)
    {
      v4 = [(PUPickerContainerController *)self photosViewController];
    }
  }

LABEL_3:

  return v4;
}

- (BOOL)searchBarIsFirstResponder
{
  if ([(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
  {
    v3 = [(PUPickerContainerController *)self searchCoordinator];
    v4 = [v3 isEditing];
  }

  else
  {
    v3 = [(PUPickerContainerController *)self searchBar];
    if (v3)
    {
      v5 = [(PUPickerContainerController *)self firstResponder];
      if (v5)
      {
        v6 = [(PUPickerContainerController *)self searchBar];
        v7 = [(PUPickerContainerController *)self firstResponder];
        v4 = [v6 _containsResponder:v7];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)photosGridActionPerformer:(id)a3 contentFilterStateChanged:(id)a4
{
  v5 = a4;
  v6 = [(PUPickerContainerController *)self photosViewController];
  v7 = [v6 viewModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__PUPickerContainerController_photosGridActionPerformer_contentFilterStateChanged___block_invoke;
  v9[3] = &unk_1E7B7D010;
  v10 = v5;
  v8 = v5;
  [v7 performChanges:v9];
}

- (UIViewController)collectionsViewController
{
  if (!self->_collectionsViewController)
  {
    v4 = [(PUPickerContainerController *)self photosViewConfiguration];
    if (v4)
    {
      v5 = v4;
      v6 = [(PUPickerContainerController *)self sessionInfo];
      if (!v6)
      {
LABEL_8:

        goto LABEL_9;
      }

      v7 = v6;
      v8 = [(PUPickerContainerController *)self configuration];
      v9 = [v8 sourceType];

      if (v9 != 5)
      {
        goto LABEL_9;
      }

      v5 = [(PUPickerContainerController *)self configuration];
      v10 = [(PUPickerContainerController *)self sessionInfo];
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_7:
          v11 = [(PUPickerContainerController *)self photosViewConfiguration];
          [(PUPickerContainerController *)self _setupCollectionsViewControllerWithPickerConfiguration:v5 sessionInfo:v10 photosViewConfiguration:v11];

          goto LABEL_8;
        }

        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = objc_opt_class();
        v16 = NSStringFromClass(v17);
        v18 = [v10 px_descriptionForAssertionMessage];
        [v14 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1026 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.sessionInfo", v16, v18}];
      }

      else
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        [v14 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1026 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.sessionInfo", v16}];
      }

      goto LABEL_7;
    }
  }

LABEL_9:
  collectionsViewController = self->_collectionsViewController;

  return collectionsViewController;
}

- (UIViewController)albumsViewController
{
  if (!self->_albumsViewController)
  {
    v6 = [(PUPickerContainerController *)self photosViewConfiguration];
    if (v6)
    {
      v7 = v6;
      v8 = [(PUPickerContainerController *)self sessionInfo];

      if (v8)
      {
        v9 = [(PUPickerContainerController *)self configuration];
        v10 = [(PUPickerContainerController *)self photosViewConfiguration];
        v11 = [v10 loadingStatusManager];
        v12 = [(PUPickerContainerController *)self selectionCoordinator];
        v13 = [(PUPickerContainerController *)self sessionInfo];
        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
LABEL_9:
            v14 = [(PUPickerContainerController *)self photosViewConfiguration];
            [(PUPickerContainerController *)self _setupAlbumsViewControllerWithPickerConfiguration:v9 loadingStatusManager:v11 selectionCoordinator:v12 sessionInfo:v13 photosViewConfiguration:v14];

            [(PUPickerContainerController *)self updateBars];
            goto LABEL_2;
          }

          v15 = [MEMORY[0x1E696AAA8] currentHandler];
          v18 = objc_opt_class();
          v17 = NSStringFromClass(v18);
          v19 = [v13 px_descriptionForAssertionMessage];
          [v15 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1011 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.sessionInfo", v17, v19}];
        }

        else
        {
          v15 = [MEMORY[0x1E696AAA8] currentHandler];
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          [v15 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1011 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.sessionInfo", v17}];
        }

        goto LABEL_9;
      }
    }
  }

LABEL_2:
  albumsViewController = self->_albumsViewController;

  return albumsViewController;
}

- (PUPickerOnboardingHeaderView)onboardingHeaderView
{
  if (!self->_onboardingHeaderView)
  {
    v3 = [(PUPickerContainerController *)self configuration];
    v4 = [v3 shouldShowOnboardingHeaderView];

    if (v4)
    {
      objc_initWeak(&location, self);
      v5 = [PUPickerOnboardingHeaderView alloc];
      v6 = [(PUPickerContainerController *)self configuration];
      v7 = [v6 pickerClientDisplayName];
      v8 = [(PUPickerContainerController *)self configuration];
      v9 = [v8 isLimitedLibraryPicker];
      v10 = MEMORY[0x1E69DC628];
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __51__PUPickerContainerController_onboardingHeaderView__block_invoke;
      v19 = &unk_1E7B80890;
      objc_copyWeak(&v20, &location);
      v11 = [v10 actionWithHandler:&v16];
      v12 = [(PUPickerOnboardingHeaderView *)v5 initWithClientDisplayName:v7 isLimitedLibraryPicker:v9 closeAction:v11, v16, v17, v18, v19];
      onboardingHeaderView = self->_onboardingHeaderView;
      self->_onboardingHeaderView = v12;

      [(PUPickerOnboardingHeaderView *)self->_onboardingHeaderView setDelegate:self];
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }

  v14 = self->_onboardingHeaderView;

  return v14;
}

void __51__PUPickerContainerController_onboardingHeaderView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained configuration];
  [v1 performChanges:&__block_literal_global_410];
}

- (PUPickerPrivacyBadge)photosIndicator
{
  if (!self->_photosIndicator)
  {
    v3 = [(PUPickerContainerController *)self configuration];
    v4 = [v3 shouldShowPhotosIndicator];

    if (v4)
    {
      v5 = objc_alloc_init(PUPickerPrivacyBadge);
      [(PUPickerPrivacyBadge *)v5 setUserInteractionEnabled:0];
      photosIndicator = self->_photosIndicator;
      self->_photosIndicator = v5;
      v7 = v5;

      [(PUPickerPrivacyBadge *)self->_photosIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    }
  }

  v8 = self->_photosIndicator;

  return v8;
}

- (void)performConfirmationAction
{
  v3 = [(PUPickerContainerController *)self confirmationBarButtonItem];
  v4 = [v3 isEnabled];

  if (v4)
  {
    v5 = [(PUPickerContainerController *)self confirmationBarButtonItem];
    [(PUPickerContainerController *)self _performConfirmationAction:v5];
  }
}

- (void)performCancellationAction
{
  v3 = [(PUPickerContainerController *)self cancellationBarButtonItem];
  v4 = [v3 isEnabled];

  if (v4)
  {
    v5 = [(PUPickerContainerController *)self cancellationBarButtonItem];
    [(PUPickerContainerController *)self _performCancellationAction:v5];
  }
}

- (void)zoomOutContent
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(PUPickerContainerController *)self actionResponderPhotosViewController];
  v3 = PLPickerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Found %@ as the responder view controller for action zoomOutContent", &v7, 0xCu);
  }

  v4 = [v2 viewModel];
  v5 = [v4 gridActionManager];
  v6 = [v5 actionPerformerForActionType:*MEMORY[0x1E69A2930]];
  [v6 performActionWithCompletionHandler:&__block_literal_global_405_68190];
}

void __45__PUPickerContainerController_zoomOutContent__block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPickerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Finished action zoomOutContent with success %@ and error %@", &v8, 0x16u);
  }
}

- (void)zoomInContent
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(PUPickerContainerController *)self actionResponderPhotosViewController];
  v3 = PLPickerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Found %@ as the responder view controller for action zoomInContent", &v7, 0xCu);
  }

  v4 = [v2 viewModel];
  v5 = [v4 gridActionManager];
  v6 = [v5 actionPerformerForActionType:*MEMORY[0x1E69A2928]];
  [v6 performActionWithCompletionHandler:&__block_literal_global_403];
}

void __44__PUPickerContainerController_zoomInContent__block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPickerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Finished action zoomInContent with success %@ and error %@", &v8, 0x16u);
  }
}

- (void)scrollContentToInitialPosition
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [(PUPickerContainerController *)self actionResponderPhotosViewController];
  v3 = PLPickerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Found %@ as the responder view controller for action scrollContentToInitialPosition", &v4, 0xCu);
  }

  [v2 px_scrollToInitialPositionAnimated:1];
}

- (void)setSidebarViewController:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:919 description:{@"%s must be called on the main thread", "-[PUPickerContainerController setSidebarViewController:]"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_sidebarViewController);

  if (WeakRetained != v5)
  {
    objc_storeWeak(&self->_sidebarViewController, v5);
    [(PUPickerContainerController *)self updateBars];
    v7 = [(PUPickerContainerController *)self navigationController];
    v8 = [v7 topViewController];
    v9 = [v8 px_navigationDestination];

    [v5 selectItemForDestination:v9];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PUPickerContainerController_setSidebarViewController___block_invoke;
    v11[3] = &unk_1E7B7CFC8;
    v11[4] = self;
    objc_copyWeak(&v12, &location);
    [(PUPickerContainerController *)self navigateToDestination:v9 options:0 completionHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __56__PUPickerContainerController_setSidebarViewController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 == 1 || ([*(a1 + 32) configuration], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "sourceType"), v6, v7))
  {
    v8 = PLPickerGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = a2;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Completed content view navigation with result: %ld (error: %@)", &v11, 0x16u);
    }
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69C3930]) initWithType:22 revealMode:0];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained navigateToDestination:v9 options:0 completionHandler:&__block_literal_global_68195];
  }
}

void __56__PUPickerContainerController_setSidebarViewController___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPickerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    v7 = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Completed fallback content view navigation with result: %ld (error: %@)", &v6, 0x16u);
  }
}

- (NSString)selectedSuggestionAnalyticsName
{
  v2 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
  v3 = [v2 analyticsName];

  return v3;
}

- (BOOL)isShowingSpatialWallpaperSuggestions
{
  v3 = [(PUPickerContainerController *)self childViewControllers];
  v4 = [(PUPickerContainerController *)self photosViewController];
  if ([v3 containsObject:v4])
  {
    v5 = [(PUPickerContainerController *)self configuration];
    if ([v5 showsWallpaperSuggestions])
    {
      v6 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
      v7 = [v6 isSpatialPhotoWallpaperSuggestion];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isShowingLiveWallpaperSuggestions
{
  v3 = [(PUPickerContainerController *)self childViewControllers];
  v4 = [(PUPickerContainerController *)self photosViewController];
  if ([v3 containsObject:v4])
  {
    v5 = [(PUPickerContainerController *)self configuration];
    if ([v5 showsWallpaperSuggestions])
    {
      v6 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
      v7 = [v6 isLiveWallpaperSuggestion];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasContent
{
  v3 = [(PUPickerContainerController *)self photosViewController];

  if (v3)
  {
    v4 = [(PUPickerContainerController *)self photosDataSourceManager];
    v5 = [v4 dataSource];
    if ([v5 containsAnyItems])
    {
      v6 = 1;
    }

    else
    {
      v8 = [(PUPickerContainerController *)self photosDataSourceManager];
      v9 = [v8 dataSource];
      v6 = [v9 isFiltered];
    }

    goto LABEL_11;
  }

  v7 = [(PUPickerContainerController *)self configuration];
  if ([v7 sourceType] != 2)
  {
    v10 = [(PUPickerContainerController *)self configuration];
    v11 = [v10 sourceType];

    if (v11 == 6)
    {
      goto LABEL_9;
    }

    v14 = [(PUPickerContainerController *)self configuration];
    v15 = [v14 sourceType];

    if (v15 == 5)
    {
      v12 = [(PUPickerContainerController *)self collectionsViewController];
      goto LABEL_10;
    }

    v16 = [(PUPickerContainerController *)self configuration];
    if ([v16 sourceType] != 4)
    {
      v17 = [(PUPickerContainerController *)self configuration];
      if ([v17 sourceType] != 1)
      {
        v18 = [(PUPickerContainerController *)self configuration];
        v19 = [v18 sourceType];

        if (v19 != 3)
        {
          return 0;
        }

        goto LABEL_19;
      }
    }

LABEL_19:
    v12 = [(PUPickerContainerController *)self peopleViewController];
    goto LABEL_10;
  }

LABEL_9:
  v12 = [(PUPickerContainerController *)self albumsViewController];
LABEL_10:
  v4 = v12;
  v6 = v12 != 0;
LABEL_11:

  return v6;
}

- (void)resignSearchBarAsFirstResponder
{
  if ([(PUPickerContainerController *)self searchBarIsFirstResponder])
  {
    v3 = [(PUPickerContainerController *)self firstResponder];
    [v3 resignFirstResponder];
  }
}

- (void)makeSearchBarAsFirstResponder
{
  v3 = [(PUPickerContainerController *)self configuration];
  v4 = [v3 allowsSearchBar];

  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [objc_alloc(MEMORY[0x1E69C3930]) initWithType:22 revealMode:0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__PUPickerContainerController_makeSearchBarAsFirstResponder__block_invoke;
    v6[3] = &unk_1E7B7CFC8;
    v6[4] = self;
    objc_copyWeak(&v7, &location);
    [(PUPickerContainerController *)self navigateToDestination:v5 options:0 completionHandler:v6];
    objc_destroyWeak(&v7);

    objc_destroyWeak(&location);
  }
}

void __60__PUPickerContainerController_makeSearchBarAsFirstResponder__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLPickerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Completed view navigation with result: %ld (error: %@)", &v11, 0x16u);
  }

  v7 = [*(a1 + 32) _shouldUseSolariumPickerSearch];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (v7)
  {
    v10 = [WeakRetained searchCoordinator];
    [v10 setIsEditing:1];
  }

  else
  {
    v10 = [WeakRetained searchBar];
    [v10 updateIsEditing:1];
  }
}

- (void)searchWithString:(id)a3
{
  v4 = a3;
  if ([(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];

    v5 = [(PUPickerContainerController *)self searchCoordinator];
    [v5 setSearchText:v6];
  }

  else
  {
    v6 = [(PUPickerContainerController *)self searchBar];
    v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];

    [v6 updateSearchText:v5];
  }
}

- (void)updateBars
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:852 description:{@"%s must be called on the main thread", "-[PUPickerContainerController updateBars]"}];
  }

  [(PUPickerContainerController *)self _cleanUpInteractiveBarTransitionIfNeeded];
  [(PUPickerContainerController *)self _updateNavigationBar];

  [(PUPickerContainerController *)self _updateToolbar];
}

- (void)navigationWillPresentViewController:(id)a3
{
  [(PUPickerContainerController *)self updateBars];

  [(PUPickerContainerController *)self _updateInteractiveBarTransition];
}

- (void)setReplacesConfirmationButtonWithActivityIndicator:(BOOL)a3
{
  if (self->_replacesConfirmationButtonWithActivityIndicator != a3)
  {
    self->_replacesConfirmationButtonWithActivityIndicator = a3;
    [(PUPickerContainerController *)self updateBars];
  }
}

- (id)collectionListForAlbumIdentifier:(id)a3 configuration:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 photoLibrary];
  v8 = [v7 librarySpecificFetchOptions];

  [v8 setIncludeAllPhotosSmartAlbum:1];
  v9 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithLocalIdentifiers:v6 options:v8];
  v10 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v6];

  v11 = [v9 px_fetchedObjectIDsSortedByLocalIdentifiers:v10];
  v12 = objc_alloc(MEMORY[0x1E69788E0]);
  v13 = [v5 photoLibrary];

  v14 = [v12 initWithOids:v11 photoLibrary:v13 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];
  v15 = MEMORY[0x1E6978760];
  v16 = PXLocalizedString();
  v17 = [v15 transientCollectionListWithCollectionsFetchResult:v14 title:v16];

  return v17;
}

- (int64_t)_currentPeopleSortOrderForPhotoLibrary:(id)a3
{
  result = [MEMORY[0x1E69C3790] currentSortOrderFor:a3];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (void)_setupPeopleOrPetsPickerWithPickerConfiguration:(id)a3
{
  v22 = a3;
  v4 = [v22 sourceType] == 4 || objc_msgSend(v22, "sourceType") == 3;
  v20 = v4;
  v5 = [v22 preselectedItemIdentifiers];
  v6 = [v5 array];

  v21 = [v22 photoLibrary];
  v7 = [v22 allPersonIdentifiers];
  v8 = [v7 array];
  v9 = [v6 count];
  v10 = v6;
  if (!v9)
  {
    v19 = [v22 peopleConfiguration];
    v10 = [v19 suggestedIdentifiers];
  }

  v11 = [v22 peopleConfiguration];
  v12 = [v11 disabledIdentifiers];
  v13 = [v22 selectionLimit];
  v14 = [v22 mode] == 1;
  BYTE1(v18) = v20;
  LOBYTE(v18) = [v22 hasClearBackgroundColor];
  v15 = [(PUPickerContainerController *)self _peoplePickerViewControllerWithPhotoLibrary:v21 personIdentifiers:v8 preselectedLocalIdentifiers:v10 disabledLocalIdentifiers:v12 selectionLimit:v13 compactMode:v14 transparentBackground:v18 wantsPets:?];

  if (!v9)
  {
  }

  peopleViewController = self->_peopleViewController;
  self->_peopleViewController = v15;

  v17 = [v22 photoLibrary];
  [(PUPickerContainerController *)self setPeopleSortOrderType:[(PUPickerContainerController *)self _currentPeopleSortOrderForPhotoLibrary:v17]];
}

- (void)_setupCollectionsViewControllerWithPickerConfiguration:(id)a3 sessionInfo:(id)a4 photosViewConfiguration:(id)a5
{
  if (a5)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(PUPickerContainerController *)self selectionCoordinator];
    v10 = [(PUPickerContainerController *)self _albumsPickerViewControllerWithConfiguration:v8 sessionInfo:v7 collectionList:0 selectionCoordinator:v9];

    collectionsViewController = self->_collectionsViewController;
    self->_collectionsViewController = v10;
  }
}

- (void)_setupAlbumsViewControllerWithPickerConfiguration:(id)a3 loadingStatusManager:(id)a4 selectionCoordinator:(id)a5 sessionInfo:(id)a6 photosViewConfiguration:(id)a7
{
  v34[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  if (a7)
  {
    if (([v10 isAlbumPicker] & 1) != 0 || objc_msgSend(v10, "isCollectionsPicker"))
    {
      v12 = [v10 preselectedItemIdentifiers];
      v13 = [v12 count];

      if (v13)
      {
        v14 = [v10 photoLibrary];
        v15 = [v14 librarySpecificFetchOptions];

        v16 = [v10 preselectedItemIdentifiers];
        v17 = [v16 firstObject];

        v18 = MEMORY[0x1E6978650];
        v34[0] = v17;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
        v20 = [v18 fetchAssetCollectionsWithLocalIdentifiers:v19 options:v15];
        v21 = [v20 firstObject];

        if (v21)
        {
          [v11 setSourceAlbum:v21];
          [v11 setScrollToSourceAlbumWhenPresented:1];
          [v11 setShowCheckmarkOnSourceAlbum:1];
        }
      }
    }

    v22 = [v10 albumsConfiguration];
    v23 = [v22 _identifiers];
    v24 = [v23 count];

    if (v24)
    {
      [v11 setAllowSelectingNonEditableAlbums:1];
      v25 = [v10 albumsConfiguration];
      v26 = [v25 _identifiers];
      v27 = [(PUPickerContainerController *)self collectionListForAlbumIdentifier:v26 configuration:v10];
    }

    else
    {
      v27 = 0;
    }

    v28 = [(PUPickerContainerController *)self selectionCoordinator];
    v29 = [(PUPickerContainerController *)self _albumsPickerViewControllerWithConfiguration:v10 sessionInfo:v11 collectionList:v27 selectionCoordinator:v28];

    v30 = [v10 hasClearBackgroundColor];
    v31 = [(UIViewController *)v29 view];
    v32 = [v31 layer];
    [v32 setHitTestsAsOpaque:v30];

    albumsViewController = self->_albumsViewController;
    self->_albumsViewController = v29;
  }
}

- (void)_setupPhotosTabWithPhotosViewConfiguration:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E69C38F8];
    v5 = a3;
    v6 = [[v4 alloc] initWithConfiguration:v5];

    v7 = [(PUPickerContainerController *)self configuration];
    v8 = [v7 hasClearBackgroundColor];
    v9 = [v6 view];
    v10 = [v9 layer];
    [v10 setHitTestsAsOpaque:v8];

    photosViewController = self->_photosViewController;
    self->_photosViewController = v6;
  }
}

- (void)_setupViewControllersWithConfiguration:(id)a3 loadingStatusManager:(id)a4 selectionCoordinator:(id)a5
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v74 = v9;
  v75 = v10;
  v12 = self;
  v76 = v11;
  v13 = [v11 containerCollectionFetchResult];
  v14 = [v13 firstObject];
  if (v14 && (v15 = [v11 isPeopleOrPetsPicker], v14, (v15 & 1) == 0))
  {
    v17 = [v11 generatedFilter];
    v18 = [v17 assetPredicate];

    v19 = [v11 suggestionGroup];
    if (v19)
    {
      v20 = [MEMORY[0x1E696AE18] predicateWithValue:0];
    }

    else
    {
      v20 = 0;
    }

    v21 = [v11 customSortDescriptors];

    if (v21)
    {
      v22 = [v11 customSortDescriptors];
    }

    else
    {
      if ([v11 showsWallpaperSuggestions])
      {
        v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
        location = v23;
        v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
        v80 = v24;
        v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
        v81 = v25;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&location count:3];
      }

      else
      {
        v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
        location = v23;
        v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortToken" ascending:1];
        v80 = v26;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&location count:2];
      }
    }

    v27 = [v11 containerCollectionFetchResult];
    BYTE2(v71) = 0;
    BYTE1(v71) = [v11 allowsSwipeToSelect];
    LOBYTE(v71) = 1;
    v16 = PXPhotosViewConfigurationForImagePickerWithAssetCollectionFetchResult();

    [v16 setShowLoadingPlaceholderWhenEmpty:{v20 != 0, v71}];
    [v16 setIgnoreFilterStateWhenNotFiltering:v20 != 0];
    [v16 setStartsInSelectMode:1];
    [v16 setWantsNumberedSelectionStyle:{objc_msgSend(v76, "isOrderedSelection")}];
    v28 = [v76 generatedFilter];
    [v16 setNoContentPlaceholderType:{objc_msgSend(v28, "noContentPlaceholderType")}];

    [v16 setLoadingStatusManager:v74];
    [v16 setDelegate:v12];
    [v16 setContentStartingPosition:2];
    if ([v76 hasClearBackgroundColor])
    {
      v29 = 2;
    }

    else
    {
      v29 = 0;
    }

    [v16 setBackgroundStyle:v29];
    v30 = [v76 pickerClientBundleIdentifier];
    [v16 setPickerClientBundleIdentifier:v30];

    v31 = objc_alloc(MEMORY[0x1E69C3900]);
    v32 = [v76 photoLibrary];
    v33 = [v31 initWithPhotoLibrary:v32];
    v34 = [v16 photosAppConfiguration];
    [v34 setViewOptionsModel:v33];

    [v16 setIgnoreFilterPredicateAssert:1];
    v35 = [v76 phPickerConfiguration];
    v36 = [v35 _aspectRatio];

    if (v36)
    {
      [v36 _aspectRatio];
      if (v37 == *MEMORY[0x1E6979180])
      {
        v38 = *MEMORY[0x1E69A2948];
      }

      else
      {
        [v36 _aspectRatio];
      }

      [v16 setItemAspectRatio:v38];
      [v16 setSectionBodyStyle:1];
    }

    if ([v76 showsWallpaperSuggestions])
    {
      [v16 setOverrideDefaultNumberOfColumns:3];
      [v16 setPreferredColumnCountsDelegate:v12];
      [v16 setUseLowMemoryDecode:1];
      [v16 setItemAspectRatio:*MEMORY[0x1E69A2948]];
      [v16 setPreferredAssetCropDelegate:v12];
    }

    if ([v76 mode] == 1)
    {
      [v16 setWantsSingleRowScrollingLayout:1];
      [v16 setSectionBodyStyle:0];
      [v16 setContentMode:1];
    }

    if (![v76 sourceType])
    {
      [v16 setAllowedActions:{objc_msgSend(v16, "allowedActions") | 0x200}];
      v39 = [v76 generatedFilter];
      v40 = [v39 possibleAssetTypes];

      if (v40 == 16)
      {
        [v16 setOverrideDefaultNumberOfColumns:1];
      }
    }

    [v16 setEnableFilterButton:0];
    [v16 setDisableAutoPlaybackInOneUp:{objc_msgSend(v76, "disableAutoPlaybackInPreview")}];
  }

  else
  {
    v16 = 0;
  }

  objc_storeStrong(&v12->_photosViewConfiguration, v16);
  if (v16)
  {
    obj = [(PUPickerContainerController *)v12 sessionInfoForConfiguration:v76 loadingStatusManager:v74 selectionCoordinator:v75];
    objc_storeStrong(&v12->_sessionInfo, obj);
    if (![v76 sourceType])
    {
      [(PUPickerContainerController *)v12 _setupPhotosTabWithPhotosViewConfiguration:v16];
    }

    v72 = [v16 dataSourceManager];
    objc_storeStrong(&v12->_photosDataSourceManager, v72);
    v41 = [v16 selectionManager];
    photosSelectionManager = v12->_photosSelectionManager;
    v12->_photosSelectionManager = v41;

    objc_initWeak(&location, v12);
    v43 = v76;
    v44 = v12;
    v45 = [v43 suggestionGroup];
    if (v45)
    {
      v46 = [PUPickerSuggestionsView alloc];
      v47 = [v43 photoLibrary];
      v48 = [v43 isProcessingSuggestions];
      v49 = [v43 showsWallpaperSuggestions];
      v50 = [v43 generatedFilter];
      v51 = -[PUPickerSuggestionsView initWithPhotoLibrary:suggestionGroup:isProcessing:isDeviceAspectRatioContentMode:contentHasSpecialFilter:](v46, "initWithPhotoLibrary:suggestionGroup:isProcessing:isDeviceAspectRatioContentMode:contentHasSpecialFilter:", v47, v45, v48, v49, [v50 containsStickersFilter]);

      [(PUPickerSuggestionsView *)v51 setDelegate:v44];
    }

    else
    {
      v51 = 0;
    }

    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __112__PUPickerContainerController__setupViewControllersWithConfiguration_loadingStatusManager_selectionCoordinator___block_invoke;
    v77[3] = &unk_1E7B7CFA0;
    objc_copyWeak(&v78, &location);
    v52 = v43;
    v53 = v77;
    v54 = [v52 suggestionGroup];

    if (v54)
    {
      v55 = [PUPickerSuggestionResultFetcher alloc];
      v56 = [v52 photoLibrary];
      v57 = [v52 isProcessingSuggestions];
      v58 = [v52 showsWallpaperSuggestions];
      v59 = [v52 generatedFilter];
      v60 = -[PUPickerSuggestionResultFetcher initWithPhotoLibrary:isProcessing:isDeviceAspectRatioContentMode:contentHasSpecialFilter:updateHandler:](v55, "initWithPhotoLibrary:isProcessing:isDeviceAspectRatioContentMode:contentHasSpecialFilter:updateHandler:", v56, v57, v58, [v59 containsStickersFilter], v53);
    }

    else
    {
      v60 = 0;
    }

    v61 = [(PUPickerSuggestionsView *)v51 selectedSuggestion];
    [(PUPickerSuggestionResultFetcher *)v60 setCurrentSuggestion:v61];

    objc_storeStrong(&v44->_pickerSuggestionsView, v51);
    objc_storeStrong(&v44->_pickerSuggestionResultFetcher, v60);
    if ([(PUPickerContainerController *)v44 _shouldUseSolariumPickerSearch])
    {
      v62 = [[PUPickerNavigationBarPalette alloc] initWithTopView:v51 topViewShouldIgnoreHorizontalMargins:1 bottomView:0 bottomViewShouldIgnoreHorizontalMargins:1];
      navigationBarBottomPalette = v44->_navigationBarBottomPalette;
      v44->_navigationBarBottomPalette = &v62->super;
    }

    else
    {
      v64 = [PUPickerNavigationBarPalette alloc];
      navigationBarBottomPalette = [(PUPickerContainerController *)v44 searchBar];
      v65 = [(PUPickerNavigationBarPalette *)v64 initWithTopView:navigationBarBottomPalette topViewShouldIgnoreHorizontalMargins:1 bottomView:v51 bottomViewShouldIgnoreHorizontalMargins:1];
      v66 = v44->_navigationBarBottomPalette;
      v44->_navigationBarBottomPalette = v65;
    }

    objc_destroyWeak(&v78);
    objc_destroyWeak(&location);
  }

  else if ([v76 isPeopleOrPetsPicker])
  {
    [(PUPickerContainerController *)v12 _setupPeopleOrPetsPickerWithPickerConfiguration:v76];
  }

  else
  {
    v67 = MEMORY[0x1E6979158];
    v68 = [v76 phPickerConfiguration];
    v69 = [v67 unavailableViewController:4 configuration:v68 error:0 delegate:0];
    unavailableViewController = v12->_unavailableViewController;
    v12->_unavailableViewController = v69;
  }
}

void __112__PUPickerContainerController__setupViewControllersWithConfiguration_loadingStatusManager_selectionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v5);
}

void __112__PUPickerContainerController__setupViewControllersWithConfiguration_loadingStatusManager_selectionCoordinator___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _filterWithSuggestionResult:*(a1 + 32)];
}

- (id)sessionInfoForConfiguration:(id)a3 loadingStatusManager:(id)a4 selectionCoordinator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = -[PUImagePickerSessionInfo initWithPhotosViewDelegate:loadingStatusManager:allowMultipleSelection:limitedLibrary:]([PUImagePickerSessionInfo alloc], "initWithPhotosViewDelegate:loadingStatusManager:allowMultipleSelection:limitedLibrary:", self, v9, 1, [v10 isLimitedLibraryPicker]);

  [(PUSessionInfo *)v11 setSelectionCoordinator:v8];
  -[PUSessionInfo setAllowsSwipeToSelect:](v11, "setAllowsSwipeToSelect:", [v10 allowsSwipeToSelect]);
  v12 = [v10 generatedFilter];
  v13 = [v12 assetPredicate];
  [(PUSessionInfo *)v11 setAssetsFilterPredicate:v13];

  v14 = [v10 generatedFilter];
  -[PUSessionInfo setAssetTypesToInclude:](v11, "setAssetTypesToInclude:", [v14 genericAssetTypes]);

  v15 = [v10 generatedFilter];
  -[PUSessionInfo setNoContentPlaceholderType:](v11, "setNoContentPlaceholderType:", [v15 noContentPlaceholderType]);

  -[PUSessionInfo setWantsNumberedSelectionStyle:](v11, "setWantsNumberedSelectionStyle:", [v10 isOrderedSelection]);
  -[PUSessionInfo setExcludesSharedAlbums:](v11, "setExcludesSharedAlbums:", [v10 excludesSharedAlbums]);
  -[PUSessionInfo setExcludesHiddenAlbum:](v11, "setExcludesHiddenAlbum:", [v10 excludesHiddenAlbum]);
  -[PUSessionInfo setExcludesNewAlbumCreation:](v11, "setExcludesNewAlbumCreation:", [v10 allowsNewItemCreation] ^ 1);
  [(PUSessionInfo *)v11 setReverseSortOrder:1];
  -[PUSessionInfo setHasClearBackgroundColor:](v11, "setHasClearBackgroundColor:", [v10 hasClearBackgroundColor]);
  [(PUSessionInfo *)v11 setContentStartingPosition:2];
  -[PUSessionInfo setSelectingTargetAlbum:](v11, "setSelectingTargetAlbum:", [v10 sourceType] == 2);
  v16 = [v10 pickerClientBundleIdentifier];

  [(PUSessionInfo *)v11 setPickerClientBundleIdentifier:v16];
  [(PUSessionInfo *)v11 addSessionInfoObserver:self];

  return v11;
}

- (PXPhotosFilterToggleButtonController)filterButtonController
{
  filterButtonController = self->_filterButtonController;
  if (!filterButtonController)
  {
    v4 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    if ((MEMORY[0x1B8C6D660]() & 1) == 0)
    {
      [v4 setButtonSize:2];
      [v4 setCornerStyle:4];
      v5 = [MEMORY[0x1E69DC888] tintColor];
      [v4 setBaseBackgroundColor:v5];

      v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"line.horizontal.3.decrease"];
      [v4 setImage:v6];
    }

    v7 = objc_alloc(MEMORY[0x1E69C38D8]);
    v8 = [(PUPickerContainerController *)self photosViewController];
    v9 = [v8 viewModelIfLoaded];
    v10 = [v7 initWithViewModel:v9 actionType:*MEMORY[0x1E69A2938]];

    v11 = objc_alloc(MEMORY[0x1E69C38C8]);
    v12 = [(PUPickerContainerController *)self photosViewController];
    v13 = [v12 viewModelIfLoaded];
    v14 = [v11 initWithViewModel:v13 buttonConfiguration:v4 actionPerformer:v10];

    if ((MEMORY[0x1B8C6D660]() & 1) == 0)
    {
      [v14 setShouldUpdateButtonSymbol:0];
    }

    [v14 invalidateButton];
    v15 = self->_filterButtonController;
    self->_filterButtonController = v14;

    filterButtonController = self->_filterButtonController;
  }

  return filterButtonController;
}

- (id)_peopleSortAndFilterMenu
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PUPickerContainerController *)self peopleSortOrderType];
  if (v4 == 1)
  {
    v5 = @"arrow.up.to.line";
    goto LABEL_5;
  }

  if (v4 == 2)
  {
    v5 = @"arrow.down.to.line";
LABEL_5:
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:v5];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = MEMORY[0x1E69DC628];
  v8 = PXLocalizedString();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __55__PUPickerContainerController__peopleSortAndFilterMenu__block_invoke;
  v19[3] = &unk_1E7B80890;
  objc_copyWeak(&v20, &location);
  v9 = [v7 actionWithTitle:v8 image:v6 identifier:0 handler:v19];

  v10 = MEMORY[0x1E69DC628];
  v11 = PXLocalizedString();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__PUPickerContainerController__peopleSortAndFilterMenu__block_invoke_2;
  v17[3] = &unk_1E7B80890;
  objc_copyWeak(&v18, &location);
  v12 = [v10 actionWithTitle:v11 image:0 identifier:0 handler:v17];

  v13 = [(PUPickerContainerController *)self peopleSortOrderType];
  if ((v13 - 1) >= 2)
  {
    if (v13)
    {
      goto LABEL_12;
    }

    [v9 setState:0];
    v14 = 1;
  }

  else
  {
    [v9 setState:1];
    v14 = 0;
  }

  [v12 setState:v14];
LABEL_12:
  [v3 addObject:v9];
  [v3 addObject:v12];
  v15 = [MEMORY[0x1E69DCC60] menuWithChildren:v3];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&location);

  return v15;
}

void __55__PUPickerContainerController__peopleSortAndFilterMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained peopleSortOrderType];

  if (v3 <= 2)
  {
    v4 = qword_1B3D0D518[v3];
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 setPeopleSortOrderType:v4];
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _updatePeopleSort];
}

void __55__PUPickerContainerController__peopleSortAndFilterMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPeopleSortOrderType:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _updatePeopleSort];
}

- (void)_updateToolbarSortAndFilterBarButtonItemMenu
{
  v3 = [(PUPickerContainerController *)self configuration];
  v4 = [v3 sourceType];

  if (v4 <= 4 && ((1 << v4) & 0x1A) != 0)
  {
    v6 = [(PUPickerContainerController *)self _peopleSortAndFilterMenu];
    [(UIBarButtonItem *)self->_toolbarSortAndFilterBarButtonItem setMenu:v6];
  }
}

- (UIBarButtonItem)toolbarSortAndFilterBarButtonItem
{
  toolbarSortAndFilterBarButtonItem = self->_toolbarSortAndFilterBarButtonItem;
  if (!toolbarSortAndFilterBarButtonItem)
  {
    v4 = [(PUPickerContainerController *)self configuration];
    v5 = [v4 sourceType];

    if (v5 <= 4 && ((1 << v5) & 0x1A) != 0)
    {
      v6 = objc_alloc(MEMORY[0x1E69DC708]);
      v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"line.horizontal.3.decrease"];
      v8 = [v6 initWithImage:v7 menu:0];
      v9 = self->_toolbarSortAndFilterBarButtonItem;
      self->_toolbarSortAndFilterBarButtonItem = v8;

      v10 = PXLocalizedString();
      [(UIBarButtonItem *)self->_toolbarSortAndFilterBarButtonItem setAccessibilityLabel:v10];

      [(UIBarButtonItem *)self->_toolbarSortAndFilterBarButtonItem setAccessibilityIdentifier:@"Sort"];
    }

    else
    {
      v11 = [(PUPickerContainerController *)self filterButtonController];
      v12 = [v11 barButtonItem];
      v13 = self->_toolbarSortAndFilterBarButtonItem;
      self->_toolbarSortAndFilterBarButtonItem = v12;

      v14 = PXLocalizedString();
      [(UIBarButtonItem *)self->_toolbarSortAndFilterBarButtonItem setAccessibilityLabel:v14];

      [(UIBarButtonItem *)self->_toolbarSortAndFilterBarButtonItem setAccessibilityIdentifier:@"Sort and Filter"];
    }

    [(PUPickerContainerController *)self _updateToolbarSortAndFilterBarButtonItemMenu];
    toolbarSortAndFilterBarButtonItem = self->_toolbarSortAndFilterBarButtonItem;
  }

  return toolbarSortAndFilterBarButtonItem;
}

- (BOOL)isCompactWidthOrHeight
{
  v3 = [(PUPickerContainerController *)self traitCollection];
  if ([v3 horizontalSizeClass] == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PUPickerContainerController *)self traitCollection];
    v4 = [v5 verticalSizeClass] == 1;
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PUPickerContainerController;
  [(PUPickerContainerController *)&v19 traitCollectionDidChange:v4];
  v5 = [(PUPickerContainerController *)self traitCollection];
  v6 = [v5 _presentationSemanticContext];
  v7 = [v4 _presentationSemanticContext];

  if (v6 != v7)
  {
    [(PUPickerContainerController *)self updateBars];
  }

  v8 = [(PUPickerContainerController *)self traitCollection];
  v9 = [v8 horizontalSizeClass];
  if (v9 != [v4 horizontalSizeClass])
  {

    goto LABEL_7;
  }

  v10 = [(PUPickerContainerController *)self traitCollection];
  v11 = [v10 verticalSizeClass];
  v12 = [v4 verticalSizeClass];

  if (v11 != v12)
  {
LABEL_7:
    v13 = [(PUPickerContainerController *)self isCompactWidthOrHeight];
    v14 = [(PUPickerContainerController *)self searchCoordinator];
    [v14 setIsCompact:v13];

    [(PUPickerContainerController *)self updateBars];
  }

  v15 = [(PUPickerContainerController *)self traitCollection];
  v16 = [v15 preferredContentSizeCategory];
  v17 = [v4 preferredContentSizeCategory];

  if (v16 != v17)
  {
    v18 = [(PUPickerContainerController *)self photosViewController];
    [v18 invalidateHeaderView];
  }
}

- (void)updateViewConstraints
{
  v3 = [(PUPickerContainerController *)self configuration];
  v4 = [v3 mode];
  v5 = v4 == 1;
  v6 = v4 != 1;

  v7 = [(PUPickerContainerController *)self topConstraint];
  [v7 setActive:v6];

  v8 = [(PUPickerContainerController *)self bottomConstraint];
  [v8 setActive:v6];

  v9 = [(PUPickerContainerController *)self topSafeAreaConstraint];
  [v9 setActive:v5];

  v10 = [(PUPickerContainerController *)self bottomSafeAreaConstraint];
  [v10 setActive:v5];

  v11 = [(PUPickerContainerController *)self leadingConstraint];
  [v11 setActive:1];

  v12 = [(PUPickerContainerController *)self trailingConstraint];
  [v12 setActive:1];

  v13 = [(PUPickerContainerController *)self configuration];
  if ([v13 supportsInteractiveBarTransition])
  {
    v14 = [(PUPickerContainerController *)self configuration];
    [v14 interactiveBarTransitionFractionExpanded];
    v16 = v15 < 0.8;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(PUPickerContainerController *)self photosIndicatorTopConstraint];
  [v17 setActive:v16];

  v18 = [(PUPickerContainerController *)self photosIndicatorLeadingConstraint];
  [v18 setActive:v16];

  v19 = [(PUPickerContainerController *)self photosIndicatorTopSafeAreaConstraint];
  [v19 setActive:v16 ^ 1];

  v20 = [(PUPickerContainerController *)self photosIndicatorLeadingSafeAreaConstraint];
  [v20 setActive:v16 ^ 1];

  v21.receiver = self;
  v21.super_class = PUPickerContainerController;
  [(PUPickerContainerController *)&v21 updateViewConstraints];
}

- (void)viewSafeAreaInsetsDidChange
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = PUPickerContainerController;
  [(PUPickerContainerController *)&v6 viewSafeAreaInsetsDidChange];
  v3 = PLPickerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(PUPickerContainerController *)self view];
    [v4 safeAreaInsets];
    v5 = NSStringFromUIEdgeInsets(v10);
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEBUG, "Call _updateInteractiveBarTransition, safe area insets changed to %@", buf, 0xCu);
  }

  [(PUPickerContainerController *)self _updateInteractiveBarTransition];
}

- (void)viewDidLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = PUPickerContainerController;
  [(PUPickerContainerController *)&v16 viewDidLayoutSubviews];
  v3 = [(PUPickerContainerController *)self photosIndicator];
  v4 = [v3 superview];
  v5 = [(PUPickerContainerController *)self photosIndicator];
  [v4 bringSubviewToFront:v5];

  if ([(PUPickerContainerController *)self shouldStopScrollingItemsViewControllerToTop])
  {
    goto LABEL_13;
  }

  v6 = [(PUPickerContainerController *)self itemsViewController];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 viewModel];
  v9 = [v8 firstSelectedAssetReference];

  v10 = [(PUPickerContainerController *)self configuration];
  if (![v10 shouldScrollToSelectedItemInitially] || !v7)
  {

    goto LABEL_11;
  }

  if (!v9)
  {
LABEL_11:
    v11 = [(PUPickerContainerController *)self itemsViewController];
    [v11 px_scrollToInitialPositionAnimated:0];

    goto LABEL_12;
  }

  [v7 scrollToRevealAssetReference:v9 completion:0];
LABEL_12:
  objc_initWeak(&location, self);
  v12 = dispatch_time(0, 1000000000);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__PUPickerContainerController_viewDidLayoutSubviews__block_invoke;
  v13[3] = &unk_1E7B80638;
  objc_copyWeak(&v14, &location);
  dispatch_after(v12, MEMORY[0x1E69E96A0], v13);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

LABEL_13:
  if (self->_hasNavigationBarTransitionPending)
  {
    [(PUPickerContainerController *)self _updateInteractiveBarTransition];
  }
}

void __52__PUPickerContainerController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldStopScrollingItemsViewControllerToTop:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PUPickerContainerController;
  [(PUPickerContainerController *)&v5 viewDidAppear:a3];
  v4 = [(PUPickerContainerController *)self containerControllerActionHandler];
  [v4 containerControllerDidAppear:self];

  [(PUPickerContainerController *)self _showPhotosIndicatorBrieflyIfNeeded];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = PUPickerContainerController;
  [(PUPickerContainerController *)&v11 viewIsAppearing:a3];
  v4 = [(PUPickerContainerController *)self photosViewController];
  v5 = [v4 viewModel];
  [v5 registerChangeObserver:self context:PUPhotoPickerPhotosViewControllerViewModelObservationContext];

  v6 = [(PUPickerContainerController *)self photosViewController];
  v7 = [v6 contentController];
  v8 = [v7 gridView];
  v9 = [v8 scrollViewController];
  [v9 registerObserver:self];

  v10 = [(PUPickerContainerController *)self pickerSuggestionsView];
  [v10 setNeedsRTLInitialOffsetCorrection];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = PUPickerContainerController;
  [(PUPickerContainerController *)&v21 viewDidLoad];
  [(PUPickerContainerController *)self px_enableExtendedTraitCollection];
  v3 = [(PUPickerContainerController *)self navigationBarBottomPalette];
  v4 = [(PUPickerContainerController *)self navigationItem];
  [v4 _setBottomPalette:v3];

  if ([(PUPickerContainerController *)self _isConfiguredForStickerSuggestionGroup])
  {
    [(PUPickerContainerController *)self _updateNumberOfItemsToPlayInline];
  }

  if ([(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
  {
    v5 = [(PUPickerContainerController *)self configuration];
    v6 = [v5 allowsSearch];

    if (v6)
    {
      v7 = [(PUPickerContainerController *)self navigationController];
      v8 = [(PUPickerContainerController *)self searchCoordinator];
      [v8 setSuggestionViewContainerController:v7];
    }
  }

  v9 = [(PUPickerContainerController *)self photosViewController];
  v10 = [v9 viewModel];
  v11 = [v10 gridActionManager];
  [v11 setPerformerDelegate:self];

  v12 = [(PUPickerContainerController *)self configuration];
  v13 = [v12 albumsConfiguration];
  if (v13 || (-[PUPickerContainerController configuration](self, "configuration"), v13 = objc_claimAutoreleasedReturnValue(), ([v13 isAlbumPicker] & 1) != 0))
  {

LABEL_9:
    v14 = [(PUPickerContainerController *)self albumsViewController];
    goto LABEL_10;
  }

  v16 = [(PUPickerContainerController *)self configuration];
  v17 = [v16 isSharedAlbumPicker];

  if (v17)
  {
    goto LABEL_9;
  }

  v18 = [(PUPickerContainerController *)self photosViewController];

  if (v18)
  {
    v14 = [(PUPickerContainerController *)self photosViewController];
  }

  else
  {
    v19 = [(PUPickerContainerController *)self peopleViewController];

    if (v19)
    {
      v14 = [(PUPickerContainerController *)self peopleViewController];
    }

    else
    {
      v20 = [(PUPickerContainerController *)self collectionsViewController];

      if (v20)
      {
        [(PUPickerContainerController *)self collectionsViewController];
      }

      else
      {
        [(PUPickerContainerController *)self unavailableViewController];
      }
      v14 = ;
    }
  }

LABEL_10:
  v15 = v14;
  [(PUPickerContainerController *)self _addOrReplaceItemViewControllerWithViewController:v14];
  [(PUPickerContainerController *)self updateBars];
}

- (void)dealloc
{
  [MEMORY[0x1E69C33E8] tearDownPrivacyControllersIfNeeded];
  v3.receiver = self;
  v3.super_class = PUPickerContainerController;
  [(PUPickerContainerController *)&v3 dealloc];
}

- (PUPickerContainerController)initWithConfiguration:(id)a3 loadingStatusManager:(id)a4 selectionCoordinator:(id)a5 additionalSelectionState:(id)a6 actionHandler:(id)a7
{
  v76[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v56 = a4;
  v57 = a5;
  v14 = a6;
  v15 = a7;
  v75.receiver = self;
  v75.super_class = PUPickerContainerController;
  v16 = [(PUPickerContainerController *)&v75 initWithNibName:0 bundle:0];
  if (v16)
  {
    [v13 registerChangeObserver:v16 context:PUPhotoPickerConfigurationObservationContext];
    v17 = [v14 observable];
    [v17 registerChangeObserver:v16 context:PUPhotoPickerAdditionalSelectionStateObservationContext];

    objc_storeStrong(&v16->_configuration, a3);
    objc_storeStrong(&v16->_selectionCoordinator, a5);
    objc_storeStrong(&v16->_additionalSelectionState, a6);
    objc_storeWeak(&v16->_containerControllerActionHandler, v15);
    v18 = objc_alloc(MEMORY[0x1E69DCF38]);
    v19 = [v13 allPhotosVirtualCollection];
    v20 = [v19 title];
    v76[0] = v20;
    v21 = PXLemonadeLocalizedString();
    v76[1] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
    v23 = [v18 initWithItems:v22];

    [v23 setClipsToBounds:1];
    [v23 _setAlwaysEmitValueChanged:1];
    [v23 addTarget:v16 action:sel_handleNavigationBarSegmentedControl_ forControlEvents:4096];
    [v23 setSelectedSegmentIndex:0];
    objc_storeStrong(&v16->_navigationBarSegmentedControl, v23);
    if ([v13 allowsSearch])
    {
      objc_initWeak(&location, v16);
      if ([(PUPickerContainerController *)v16 _shouldUseSolariumPickerSearch])
      {
        v54 = [PUPickerSearchCoordinator alloc];
        v24 = [v13 photoLibrary];
        v53 = [(PUPickerContainerController *)v16 isCompactWidthOrHeight];
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke;
        v72[3] = &unk_1E7B7CF50;
        v55 = &v73;
        objc_copyWeak(&v73, &location);
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke_2;
        v70[3] = &unk_1E7B7CF78;
        v25 = &v71;
        objc_copyWeak(&v71, &location);
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke_3;
        v68[3] = &unk_1E7B7F988;
        v26 = &v69;
        objc_copyWeak(&v69, &location);
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke_4;
        v66[3] = &unk_1E7B7F988;
        objc_copyWeak(&v67, &location);
        v27 = [(PUPickerSearchCoordinator *)v54 initWithPhotoLibrary:v24 configuration:v13 isCompact:v53 searchHandler:v72 contextualVideoThumbnailsHandler:v70 scopeHandler:v68 editingHandler:v66];

        searchCoordinator = v16->_searchCoordinator;
        v16->_searchCoordinator = v27;

        objc_destroyWeak(&v67);
      }

      else
      {
        v29 = [PUPickerSearchBar alloc];
        v30 = [v13 photoLibrary];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke_5;
        v64[3] = &unk_1E7B7CF50;
        v55 = &v65;
        objc_copyWeak(&v65, &location);
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke_6;
        v62[3] = &unk_1E7B7CF78;
        v25 = &v63;
        objc_copyWeak(&v63, &location);
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke_7;
        v60[3] = &unk_1E7B7F988;
        v26 = &v61;
        objc_copyWeak(&v61, &location);
        v31 = [(PUPickerSearchBar *)v29 initWithPhotoLibrary:v30 searchHandler:v64 searchContextualVideoThumbnailHandler:v62 scopeHandler:v60];

        [(PUPickerSearchBar *)v31 updateContainerFromPickerConfiguration:v13];
        v32 = [v13 initialSearchText];

        if (v32)
        {
          v33 = objc_alloc(MEMORY[0x1E696AAB0]);
          v34 = [v13 initialSearchText];
          v35 = [v33 initWithString:v34];
          [(PUPickerSearchBar *)v31 updateSearchText:v35];
        }

        searchBar = v16->_searchBar;
        v16->_searchBar = v31;
      }

      objc_destroyWeak(v26);
      objc_destroyWeak(v25);
      objc_destroyWeak(v55);
      objc_destroyWeak(&location);
    }

    objc_initWeak(&location, v16);
    v37 = MEMORY[0x1E69DC628];
    v38 = PXLocalizedString();
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke_8;
    v58[3] = &unk_1E7B80890;
    objc_copyWeak(&v59, &location);
    v39 = [v37 actionWithTitle:v38 image:0 identifier:@"OptionsAction" handler:v58];
    optionsAction = v16->_optionsAction;
    v16->_optionsAction = v39;

    v41 = objc_alloc(MEMORY[0x1E69DC708]);
    v42 = MEMORY[0x1E69DCAB8];
    if (MEMORY[0x1B8C6D660]())
    {
      v43 = @"ellipsis";
    }

    else
    {
      v43 = @"switch.2";
    }

    v44 = [v42 systemImageNamed:v43];
    v45 = [v41 initWithImage:v44 style:0 target:v16 action:sel_handleToolbarOptionsButton_];
    toolbarOptionsBarButton = v16->_toolbarOptionsBarButton;
    v16->_toolbarOptionsBarButton = v45;

    v47 = PXLocalizedString();
    [(UIBarButtonItem *)v16->_toolbarOptionsBarButton setAccessibilityLabel:v47];

    [(UIBarButtonItem *)v16->_toolbarOptionsBarButton setAccessibilityIdentifier:@"Options"];
    v48 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:4 target:v16 action:sel_handleItemCreationBarButtonItemAction_];
    itemCreationBarButtonItem = v16->_itemCreationBarButtonItem;
    v16->_itemCreationBarButtonItem = v48;

    [(PUPickerContainerController *)v16 _setupViewControllersWithConfiguration:v13 loadingStatusManager:v56 selectionCoordinator:v57];
    if ([v13 isPeopleOrPetsPicker])
    {
      v50 = [v13 photoLibrary];
      v51 = [v50 px_localDefaults];
      [v51 addObserver:v16 forKeyPath:*MEMORY[0x1E69C4120] options:0 context:0];
    }

    objc_destroyWeak(&v59);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _filterWithSearchResultUUIDs:v3];
}

void __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSearchResultContextualVideoThumbnailIdentifiers:v3];
}

void __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke_3(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained pickerSuggestionsView];
    [v3 clearFilterableSuggestion];
  }
}

void __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateBars];
}

void __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _filterWithSearchResultUUIDs:v3];
}

void __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSearchResultContextualVideoThumbnailIdentifiers:v3];
}

void __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke_7(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained pickerSuggestionsView];
    [v3 clearFilterableSuggestion];
  }
}

void __134__PUPickerContainerController_initWithConfiguration_loadingStatusManager_selectionCoordinator_additionalSelectionState_actionHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleToolbarOptionsButton:v3];
}

- (void)ppt_switchToAlbumsTab
{
  v3 = [(PUPickerContainerController *)self navigationBarSegmentedControl];
  [v3 setSelectedSegmentIndex:1];
  [(PUPickerContainerController *)self handleNavigationBarSegmentedControl:v3];
}

@end