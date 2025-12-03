@interface PUPickerContainerController
- (BOOL)_actionPerformer:(id)performer presentViewController:(id)controller;
- (BOOL)_isConfiguredForStickerSuggestionGroup;
- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type;
- (BOOL)allowsContextMenuInteractionForPhotosViewController:(id)controller;
- (BOOL)hasContent;
- (BOOL)isCompactWidthOrHeight;
- (BOOL)isShowingLiveWallpaperSuggestions;
- (BOOL)isShowingSpatialWallpaperSuggestions;
- (BOOL)photosViewController:(id)controller canPlayAssetInline:(id)inline;
- (BOOL)photosViewController:(id)controller isAssetEligibleForPlaybackWithSettlingEffect:(id)effect;
- (BOOL)searchBarIsFirstResponder;
- (BOOL)shouldAnimateFromHeaderView:(id)view toHeaderView:(id)headerView;
- (CGRect)preferredCropForAsset:(id)asset withAspectRatio:(double)ratio;
- (NSString)selectedSuggestionAnalyticsName;
- (PUPickerContainerController)initWithConfiguration:(id)configuration loadingStatusManager:(id)manager selectionCoordinator:(id)coordinator additionalSelectionState:(id)state actionHandler:(id)handler;
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
- (id)_albumsPickerViewControllerWithConfiguration:(id)configuration sessionInfo:(id)info collectionList:(id)list selectionCoordinator:(id)coordinator;
- (id)_animationForNavigationBarVisible:(BOOL)visible fromCurrentOpacity:(double)opacity;
- (id)_containerForTopViewController;
- (id)_currentContainerViewForInteractionBarTransition;
- (id)_peoplePickerViewControllerWithPhotoLibrary:(id)library personIdentifiers:(id)identifiers preselectedLocalIdentifiers:(id)localIdentifiers disabledLocalIdentifiers:(id)disabledLocalIdentifiers selectionLimit:(int64_t)limit compactMode:(BOOL)mode transparentBackground:(BOOL)background wantsPets:(BOOL)self0;
- (id)_peopleSortAndFilterMenu;
- (id)_viewControllerWithSidebarNavigationDestination:(id)destination configuration:(id)configuration sessionInfo:(id)info selectionCoordinator:(id)coordinator;
- (id)collectionListForAlbumIdentifier:(id)identifier configuration:(id)configuration;
- (id)headerViewForPhotosViewController:(id)controller;
- (id)photosViewController:(id)controller animationForProposedAnimation:(id)animation;
- (id)preferredColumnCounts:(id)counts;
- (id)px_gridPresentation;
- (id)px_navigationDestination;
- (id)sessionInfoForConfiguration:(id)configuration loadingStatusManager:(id)manager selectionCoordinator:(id)coordinator;
- (id)undoManagerForActionPerformer:(id)performer;
- (int64_t)_currentPeopleSortOrderForPhotoLibrary:(id)library;
- (unint64_t)photosViewControllerFilterSortedRecordsStrategy:(id)strategy;
- (unint64_t)routingOptionsForDestination:(id)destination;
- (void)_addOrReplaceItemViewControllerWithViewController:(id)controller;
- (void)_cleanUpInteractiveBarTransitionIfNeeded;
- (void)_filterWithSearchResultUUIDs:(id)ds;
- (void)_filterWithSuggestionResult:(id)result;
- (void)_performCancellationAction:(id)action;
- (void)_performConfirmationAction:(id)action;
- (void)_performSelectionStatusAction:(id)action;
- (void)_setupAlbumsViewControllerWithPickerConfiguration:(id)configuration loadingStatusManager:(id)manager selectionCoordinator:(id)coordinator sessionInfo:(id)info photosViewConfiguration:(id)viewConfiguration;
- (void)_setupCollectionsViewControllerWithPickerConfiguration:(id)configuration sessionInfo:(id)info photosViewConfiguration:(id)viewConfiguration;
- (void)_setupPeopleOrPetsPickerWithPickerConfiguration:(id)configuration;
- (void)_setupPhotosTabWithPhotosViewConfiguration:(id)configuration;
- (void)_setupViewControllersWithConfiguration:(id)configuration loadingStatusManager:(id)manager selectionCoordinator:(id)coordinator;
- (void)_showPhotosIndicatorBrieflyIfNeeded;
- (void)_updateAllowedUUIDsForceReload:(BOOL)reload;
- (void)_updateCancellationBarButtonItem;
- (void)_updateConfirmationBarButtonItem;
- (void)_updateEnableSpatialPhotoPlayback;
- (void)_updateInteractiveBarTransition;
- (void)_updateNavigationBar;
- (void)_updateNumberOfItemsToPlayInline;
- (void)_updatePeopleSort;
- (void)_updatePhotosViewControllerNoContentPlaceholder;
- (void)_updateSearchResultContextualVideoThumbnailIdentifiers:(id)identifiers;
- (void)_updateSelectionStatusBarButtonItem:(BOOL)item;
- (void)_updateSortDescriptors;
- (void)_updateSortOrder;
- (void)_updateToolbar;
- (void)_updateToolbarSortAndFilterBarButtonItemMenu;
- (void)dealloc;
- (void)handleItemCreationBarButtonItemAction:(id)action;
- (void)handleNavigationBarSegmentedControl:(id)control;
- (void)handleToolbarOptionsButton:(id)button;
- (void)makeSearchBarAsFirstResponder;
- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)navigationWillPresentViewController:(id)controller;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performCancellationAction;
- (void)performConfirmationAction;
- (void)photosGridActionPerformer:(id)performer contentFilterStateChanged:(id)changed;
- (void)pickerOnboardingHeaderViewWantsToLearnMoreAboutDataAccess:(id)access;
- (void)pickerSuggestionsView:(id)view didSelectSuggestion:(id)suggestion;
- (void)pickerSuggestionsViewDidSelectSameSuggestion:(id)suggestion;
- (void)ppt_switchToAlbumsTab;
- (void)resignSearchBarAsFirstResponder;
- (void)scrollContentToInitialPosition;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)searchWithString:(id)string;
- (void)sessionInfoStatusDidChange:(id)change;
- (void)setReplacesConfirmationButtonWithActivityIndicator:(BOOL)indicator;
- (void)setSidebarViewController:(id)controller;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBars;
- (void)updateSelectionStatusViewWithTitle:(id)title titleSystemImage:(id)image subtitle:(id)subtitle subtitleSystemImage:(id)systemImage asset:(id)asset allowsOpeningStagingArea:(BOOL)area centerAlignment:(BOOL)alignment;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewSafeAreaInsetsDidChange;
- (void)zoomInContent;
- (void)zoomOutContent;
@end

@implementation PUPickerContainerController

- (id)_containerForTopViewController
{
  selfCopy = self;
  v3 = PUPickerContainerController._containerForTopViewController()();

  return v3;
}

- (id)_albumsPickerViewControllerWithConfiguration:(id)configuration sessionInfo:(id)info collectionList:(id)list selectionCoordinator:(id)coordinator
{
  configurationCopy = configuration;
  infoCopy = info;
  listCopy = list;
  coordinatorCopy = coordinator;
  selfCopy = self;
  v15 = PUPickerContainerController._albumsPickerViewController(configuration:sessionInfo:collectionList:selectionCoordinator:)(configurationCopy, infoCopy, list, coordinator);

  return v15;
}

- (id)_viewControllerWithSidebarNavigationDestination:(id)destination configuration:(id)configuration sessionInfo:(id)info selectionCoordinator:(id)coordinator
{
  destinationCopy = destination;
  configurationCopy = configuration;
  infoCopy = info;
  coordinatorCopy = coordinator;
  selfCopy = self;
  v15 = PUPickerContainerController._viewController(sidebarNavigationDestination:configuration:sessionInfo:selectionCoordinator:)(destinationCopy, configurationCopy, infoCopy, coordinator);

  return v15;
}

- (void)updateSelectionStatusViewWithTitle:(id)title titleSystemImage:(id)image subtitle:(id)subtitle subtitleSystemImage:(id)systemImage asset:(id)asset allowsOpeningStagingArea:(BOOL)area centerAlignment:(BOOL)alignment
{
  HIDWORD(v27) = area;
  imageCopy = image;
  LODWORD(v27) = alignment;
  if (title)
  {
    v26 = sub_1B3C9C5E8();
    v15 = v14;
    if (imageCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (subtitle)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v26 = 0;
  v15 = 0;
  if (!image)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = sub_1B3C9C5E8();
  imageCopy = v17;
  if (subtitle)
  {
LABEL_4:
    v18 = sub_1B3C9C5E8();
    subtitle = v19;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  systemImageCopy = systemImage;
  swift_unknownObjectRetain();
  selfCopy = self;
  if (systemImageCopy)
  {
    v22 = sub_1B3C9C5E8();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  BYTE1(v25) = alignment;
  LOBYTE(v25) = BYTE4(v27);
  sub_1B370CF98(v26, v15, v16, imageCopy, v18, subtitle, v22, v24, asset, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, HIBYTE(v37));
  swift_unknownObjectRelease();
}

- (id)_peoplePickerViewControllerWithPhotoLibrary:(id)library personIdentifiers:(id)identifiers preselectedLocalIdentifiers:(id)localIdentifiers disabledLocalIdentifiers:(id)disabledLocalIdentifiers selectionLimit:(int64_t)limit compactMode:(BOOL)mode transparentBackground:(BOOL)background wantsPets:(BOOL)self0
{
  if (identifiers)
  {
    v15 = sub_1B3C9C788();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1B3C9C788();
  if (disabledLocalIdentifiers)
  {
    disabledLocalIdentifiers = sub_1B3C9C788();
  }

  libraryCopy = library;
  selfCopy = self;
  v25.value._rawValue = v15;
  v25.is_nil = v16;
  v26.value._rawValue = limit;
  v26.is_nil = mode;
  PUPickerContainerController._peoplePickerViewController(photoLibrary:personIdentifiers:preselectedLocalIdentifiers:disabledLocalIdentifiers:selectionLimit:compactMode:transparentBackground:wantsPets:)(v19, libraryCopy, v25, disabledLocalIdentifiers, v26, background, pets, v23, SHIBYTE(v23));
  v21 = v20;

  return v21;
}

- (id)px_gridPresentation
{
  v3 = objc_alloc_init(PUPXGridPresentation);
  sessionInfo = [(PUPickerContainerController *)self sessionInfo];
  [(PUPXGridPresentation *)v3 setSessionInfo:sessionInfo];

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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{*MEMORY[0x1E69C4120], object, change, context}])
  {

    [(PUPickerContainerController *)self _updateToolbarSortAndFilterBarButtonItemMenu];
  }
}

- (void)pickerOnboardingHeaderViewWantsToLearnMoreAboutDataAccess:(id)access
{
  containerControllerActionHandler = [(PUPickerContainerController *)self containerControllerActionHandler];
  [containerControllerActionHandler containerControllerWantsToLearnMoreAboutDataAccess:self];
}

- (void)pickerSuggestionsViewDidSelectSameSuggestion:(id)suggestion
{
  itemsViewController = [(PUPickerContainerController *)self itemsViewController];
  [itemsViewController px_scrollToInitialPositionAnimated:1];
}

- (void)pickerSuggestionsView:(id)view didSelectSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  pickerSuggestionResultFetcher = [(PUPickerContainerController *)self pickerSuggestionResultFetcher];
  [pickerSuggestionResultFetcher setCurrentSuggestion:suggestionCopy];
}

- (id)preferredColumnCounts:(id)counts
{
  pickerSuggestionResultFetcherResult = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
  allowedColumnsOverride = [pickerSuggestionResultFetcherResult allowedColumnsOverride];

  return allowedColumnsOverride;
}

- (CGRect)preferredCropForAsset:(id)asset withAspectRatio:(double)ratio
{
  assetCopy = asset;
  configuration = [(PUPickerContainerController *)self configuration];
  showsWallpaperSuggestions = [configuration showsWallpaperSuggestions];

  v8 = *MEMORY[0x1E695F050];
  v9 = *(MEMORY[0x1E695F050] + 8);
  v10 = *(MEMORY[0x1E695F050] + 16);
  v11 = *(MEMORY[0x1E695F050] + 24);
  if (showsWallpaperSuggestions)
  {
    v12 = assetCopy;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    pickerSuggestionResultFetcher = [(PUPickerContainerController *)self pickerSuggestionResultFetcher];

    if (v13 && pickerSuggestionResultFetcher)
    {
      pickerSuggestionResultFetcherResult = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
      suggestionSubtypeByAssetUUID = [pickerSuggestionResultFetcherResult suggestionSubtypeByAssetUUID];
      uuid = [v13 uuid];
      v18 = [suggestionSubtypeByAssetUUID objectForKeyedSubscript:uuid];

      if (v18)
      {
        integerValue = [v18 integerValue];
        posterClassification = [MEMORY[0x1E69C15B0] posterClassificationForSuggestionSubtype:integerValue];
      }

      else
      {
        pickerSuggestionResultFetcherResult2 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
        posterClassification = [pickerSuggestionResultFetcherResult2 posterClassification];
      }

      px_screen = [(PUPickerContainerController *)self px_screen];
      [px_screen bounds];
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
      [MEMORY[0x1E69C15B0] bestWallpaperCropForAsset:v13 classification:posterClassification outputCropScore:0 outputLayoutAcceptable:0 layoutConfiguration:v28];
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

- (void)scrollViewControllerDidScroll:(id)scroll
{
  if ([scroll isTracking])
  {

    [(PUPickerContainerController *)self resignSearchBarAsFirstResponder];
  }
}

- (void)sessionInfoStatusDidChange:(id)change
{
  changeCopy = change;
  configuration = [(PUPickerContainerController *)self configuration];
  sourceType = [configuration sourceType];

  if (sourceType == 2)
  {
    targetAlbum = [changeCopy targetAlbum];
    objectID = [targetAlbum objectID];

    if (objectID)
    {
      [MEMORY[0x1E695DFB8] orderedSetWithObject:objectID];
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

- (id)_animationForNavigationBarVisible:(BOOL)visible fromCurrentOpacity:(double)opacity
{
  visibleCopy = visible;
  v6 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:opacity];
  [v6 setFromValue:v7];

  if (visibleCopy)
  {
    v8 = &unk_1F2B7F518;
  }

  else
  {
    v8 = &unk_1F2B7F528;
  }

  [v6 setToValue:v8];
  [v6 setFillMode:*MEMORY[0x1E69797E8]];
  [v6 setRemovedOnCompletion:visibleCopy];
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
  childViewControllers = [(PUPickerContainerController *)self childViewControllers];
  photosViewController = [(PUPickerContainerController *)self photosViewController];
  v5 = [childViewControllers containsObject:photosViewController];

  if (v5)
  {
    photosViewController2 = [(PUPickerContainerController *)self photosViewController];
LABEL_5:
    v10 = photosViewController2;
    view = [photosViewController2 view];

    goto LABEL_7;
  }

  childViewControllers2 = [(PUPickerContainerController *)self childViewControllers];
  albumsViewController = [(PUPickerContainerController *)self albumsViewController];
  v9 = [childViewControllers2 containsObject:albumsViewController];

  if (v9)
  {
    photosViewController2 = [(PUPickerContainerController *)self albumsViewController];
    goto LABEL_5;
  }

  view = 0;
LABEL_7:

  return view;
}

- (void)_updateInteractiveBarTransition
{
  v56 = *MEMORY[0x1E69E9840];
  configuration = [(PUPickerContainerController *)self configuration];
  supportsInteractiveBarTransition = [configuration supportsInteractiveBarTransition];

  if (supportsInteractiveBarTransition)
  {
    _currentContainerViewForInteractionBarTransition = [(PUPickerContainerController *)self _currentContainerViewForInteractionBarTransition];
    if (_currentContainerViewForInteractionBarTransition)
    {
      self->_hasNavigationBarTransitionPending = 0;
      photosViewController = [(PUPickerContainerController *)self photosViewController];
      contentController = [photosViewController contentController];
      gridView = [contentController gridView];
      [gridView setAvoidSnapshotOnHeightChanges:1];

      navigationController = [(PUPickerContainerController *)self navigationController];
      configuration2 = [(PUPickerContainerController *)self configuration];
      [configuration2 interactiveBarTransitionFractionExpanded];
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
      childViewControllers = [navigationController childViewControllers];
      v15 = [childViewControllers count];

      if (v15 == 1)
      {
        topViewController = [navigationController topViewController];
        view = [topViewController view];
        [view safeAreaInsets];
        v19 = v18;

        v20 = (1.0 - v12) * v19;
        view2 = [(PUPickerContainerController *)self view];
        [view2 safeAreaInsets];
        v23 = v22;

        toolbar = [navigationController toolbar];
        [toolbar bounds];
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
        navigationBar = [navigationController navigationBar];
        [navigationBar setHidden:v29];

        toolbar2 = [navigationController toolbar];
        [toolbar2 setHidden:v29];
      }

      v48 = v54;
      navigationBar2 = [navigationController navigationBar];
      buf = v48;
      [navigationBar2 setTransform:&buf];

      v47 = v53;
      toolbar3 = [navigationController toolbar];
      buf = v47;
      [toolbar3 setTransform:&buf];

      buf = v52;
      [_currentContainerViewForInteractionBarTransition setTransform:&buf];
      navigationBar3 = [navigationController navigationBar];
      layer = [navigationBar3 layer];
      v36 = [layer animationForKey:@"navBarOpacity"];

      if (v36)
      {
        toValue = [v36 toValue];
        [toValue floatValue];
        v39 = v38;
      }

      else
      {
        toValue = [navigationController navigationBar];
        [toValue alpha];
        v39 = v40;
      }

      v41 = v12 > 0.8 && v39 == 0.0;
      if (v41 || v39 > 0.0 && v12 < 0.8)
      {
        v42 = [(PUPickerContainerController *)self _animationForNavigationBarVisible:v41 fromCurrentOpacity:v39];
        navigationBar4 = [navigationController navigationBar];
        layer2 = [navigationBar4 layer];
        [layer2 addAnimation:v42 forKey:@"navBarOpacity"];

        navigationBar5 = [navigationController navigationBar];
        [navigationBar5 setUserInteractionEnabled:v41];

        toolbar4 = [navigationController toolbar];
        [toolbar4 setUserInteractionEnabled:v41];
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PUPhotoPickerPhotosViewControllerViewModelObservationContext == context)
  {
    if ((change & 0x200000000) != 0)
    {
      [(PUPickerContainerController *)self updateBars];
    }
  }

  else if (PUPhotoPickerConfigurationObservationContext == context)
  {
    if ((change & 0x1F23) != 0)
    {
      [(PUPickerContainerController *)self updateBars];
    }

    if ((change & 0x29) != 0)
    {
      photosViewController = [(PUPickerContainerController *)self photosViewController];
      [photosViewController invalidateHeaderView];
    }

    if ((change & 0xE0) != 0)
    {
      [(PUPickerContainerController *)self _updateInteractiveBarTransition];
      [(PUPickerContainerController *)self _showPhotosIndicatorBrieflyIfNeeded];
      view = [(PUPickerContainerController *)self view];
      [view setNeedsUpdateConstraints];
    }
  }

  else
  {
    if (PUPhotoPickerAdditionalSelectionStateObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:2320 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v10 = PLPickerGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Preparation options were changed.", buf, 2u);
    }

    [(PUPickerContainerController *)self _updateToolbar];
    configuration = [(PUPickerContainerController *)self configuration];
    confirmationBehavior = [configuration confirmationBehavior];

    if ((confirmationBehavior - 2) <= 2)
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

- (unint64_t)photosViewControllerFilterSortedRecordsStrategy:(id)strategy
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

- (BOOL)photosViewController:(id)controller isAssetEligibleForPlaybackWithSettlingEffect:(id)effect
{
  v4 = [(PUPickerContainerController *)self configuration:controller];
  showsWallpaperSuggestions = [v4 showsWallpaperSuggestions];

  return showsWallpaperSuggestions;
}

- (BOOL)photosViewController:(id)controller canPlayAssetInline:(id)inline
{
  inlineCopy = inline;
  if ([inlineCopy playbackStyle] != 3)
  {
    photosViewController = [(PUPickerContainerController *)self photosViewController];
    contentController = [photosViewController contentController];
    enableSpatialPhotoPlayback = [contentController enableSpatialPhotoPlayback];

    if (!enableSpatialPhotoPlayback)
    {
      LOBYTE(v16) = 0;
      goto LABEL_12;
    }
  }

  v9 = inlineCopy;
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

  configuration = [(PUPickerContainerController *)self configuration];
  showsWallpaperSuggestions = [configuration showsWallpaperSuggestions];

  if (!showsWallpaperSuggestions)
  {
    if ([(PUPickerContainerController *)self _isConfiguredForStickerSuggestionGroup])
    {
      LOBYTE(v16) = [v10 playbackStyle] == 3;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  pickerSuggestionResultFetcherResult = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
  inlinePlaybackDisallowedAssetUUIDs = [pickerSuggestionResultFetcherResult inlinePlaybackDisallowedAssetUUIDs];
  uuid = [v10 uuid];
  v16 = [inlinePlaybackDisallowedAssetUUIDs containsObject:uuid] ^ 1;

LABEL_10:
LABEL_12:

  return v16;
}

- (BOOL)shouldAnimateFromHeaderView:(id)view toHeaderView:(id)headerView
{
  viewCopy = view;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (headerView == 0) & isKindOfClass;
}

- (id)headerViewForPhotosViewController:(id)controller
{
  controllerCopy = controller;
  photosViewController = [(PUPickerContainerController *)self photosViewController];

  if (photosViewController == controllerCopy)
  {
    configuration = [(PUPickerContainerController *)self configuration];
    mode = [configuration mode];

    if (mode != 1)
    {
      configuration2 = [(PUPickerContainerController *)self configuration];
      shouldShowOnboardingHeaderView = [configuration2 shouldShowOnboardingHeaderView];

      if (shouldShowOnboardingHeaderView)
      {
        onboardingHeaderView = [(PUPickerContainerController *)self onboardingHeaderView];
        goto LABEL_7;
      }

      [(PUPickerContainerController *)self setOnboardingHeaderView:0];
    }
  }

  onboardingHeaderView = 0;
LABEL_7:

  return onboardingHeaderView;
}

- (id)photosViewController:(id)controller animationForProposedAnimation:(id)animation
{
  animationCopy = animation;
  if ([(PUPickerContainerController *)self searchBarIsFirstResponder])
  {
    v6 = 0;
  }

  else
  {
    v6 = animationCopy;
  }

  v7 = v6;

  return v6;
}

- (BOOL)allowsContextMenuInteractionForPhotosViewController:(id)controller
{
  configuration = [(PUPickerContainerController *)self configuration];
  allowsContextMenuInteraction = [configuration allowsContextMenuInteraction];

  return allowsContextMenuInteraction;
}

- (id)px_navigationDestination
{
  childViewControllers = [(PUPickerContainerController *)self childViewControllers];
  v5 = [childViewControllers count];

  if (v5 >= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:2184 description:{@"Invalid parameter not satisfying: %@", @"self.childViewControllers.count <= 1"}];
  }

  childViewControllers2 = [(PUPickerContainerController *)self childViewControllers];
  firstObject = [childViewControllers2 firstObject];

  if (!firstObject || (-[PUPickerContainerController itemsViewController](self, "itemsViewController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [firstObject isEqual:v8], v8, v9))
  {
    v10 = objc_alloc(MEMORY[0x1E69C3930]);
    v11 = 22;
LABEL_6:
    px_navigationDestination = [v10 initWithType:v11 revealMode:0];
    goto LABEL_7;
  }

  albumsViewController = [(PUPickerContainerController *)self albumsViewController];
  v16 = [firstObject isEqual:albumsViewController];

  if (v16)
  {
    v10 = objc_alloc(MEMORY[0x1E69C3930]);
    v11 = 23;
    goto LABEL_6;
  }

  px_navigationDestination = [firstObject px_navigationDestination];
LABEL_7:
  v13 = px_navigationDestination;

  return v13;
}

- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  v61 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  handlerCopy = handler;
  if (![destinationCopy revealMode] || objc_msgSend(destinationCopy, "revealMode") == 1)
  {
    if ([destinationCopy type] == 22)
    {
      itemsViewController = [(PUPickerContainerController *)self itemsViewController];
LABEL_5:
      v12 = itemsViewController;
LABEL_39:
      v44 = 0;
LABEL_40:
      if (v12)
      {
        childViewControllers = [(PUPickerContainerController *)self childViewControllers];
        v51 = [childViewControllers containsObject:v12];

        if ((v51 & 1) == 0)
        {
          [(PUPickerContainerController *)self _addOrReplaceItemViewControllerWithViewController:v12];
        }

        [(PUPickerContainerController *)self updateBars];
        if (v44)
        {
          [v12 navigateToDestination:destinationCopy options:options completionHandler:handlerCopy];
        }

        else
        {
          navigationController = [(PUPickerContainerController *)self navigationController];
          v53 = [navigationController popToRootViewControllerAnimated:0];

          handlerCopy[2](handlerCopy, 1, 0);
        }

        goto LABEL_51;
      }

LABEL_45:
      v20 = PLPickerGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v60 = destinationCopy;
        v21 = "Unsupported destination: %@";
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    if ([destinationCopy type] == 23)
    {
      sidebarViewController = [(PUPickerContainerController *)self sidebarViewController];

      if (!sidebarViewController)
      {
        itemsViewController = [(PUPickerContainerController *)self albumsViewController];
        goto LABEL_5;
      }
    }

    if ([destinationCopy isCollectionsHome])
    {
LABEL_9:
      configuration = [(PUPickerContainerController *)self configuration];
      sessionInfo = [(PUPickerContainerController *)self sessionInfo];
      selectionCoordinator = [(PUPickerContainerController *)self selectionCoordinator];
      v12 = [(PUPickerContainerController *)self _viewControllerWithSidebarNavigationDestination:destinationCopy configuration:configuration sessionInfo:sessionInfo selectionCoordinator:selectionCoordinator];

      goto LABEL_39;
    }

    if (!destinationCopy)
    {
      goto LABEL_45;
    }

    sidebarViewController2 = [(PUPickerContainerController *)self sidebarViewController];

    if (sidebarViewController2)
    {
      configuration2 = [(PUPickerContainerController *)self configuration];
      sessionInfo2 = [(PUPickerContainerController *)self sessionInfo];
      selectionCoordinator2 = [(PUPickerContainerController *)self selectionCoordinator];
      v12 = [(PUPickerContainerController *)self _viewControllerWithSidebarNavigationDestination:destinationCopy configuration:configuration2 sessionInfo:sessionInfo2 selectionCoordinator:selectionCoordinator2];

      collection = [destinationCopy collection];
      localizedSubtitle = [collection localizedSubtitle];

      collection2 = [destinationCopy collection];
      localizedTitle = [collection2 localizedTitle];

      if (localizedSubtitle)
      {
        v30 = MEMORY[0x1E696AEC0];
        collection3 = [destinationCopy collection];
        collection5 = collection3;
        if (localizedTitle)
        {
          localizedTitle2 = [collection3 localizedTitle];
          collection4 = [destinationCopy collection];
          localizedSubtitle2 = [collection4 localizedSubtitle];
          v36 = [v30 stringWithFormat:@"%@ - %@", localizedTitle2, localizedSubtitle2];

LABEL_37:
LABEL_38:
          [v12 setTitle:v36];
          configuration3 = [(PUPickerContainerController *)self configuration];
          hasClearBackgroundColor = [configuration3 hasClearBackgroundColor];
          view = [v12 view];
          layer = [view layer];
          [layer setHitTestsAsOpaque:hasClearBackgroundColor];

          goto LABEL_39;
        }

        localizedSubtitle3 = [collection3 localizedSubtitle];
      }

      else
      {
        if (!localizedTitle)
        {
          v36 = 0;
          goto LABEL_38;
        }

        v30 = MEMORY[0x1E696AEC0];
        collection5 = [destinationCopy collection];
        localizedSubtitle3 = [collection5 localizedTitle];
      }

      localizedTitle2 = localizedSubtitle3;
      v36 = [v30 stringWithFormat:@"%@", localizedSubtitle3];
      goto LABEL_37;
    }

    collection6 = [destinationCopy collection];
    if (!collection6)
    {
      goto LABEL_9;
    }

    v39 = collection6;
    navigationBarSegmentedControl = [(PUPickerContainerController *)self navigationBarSegmentedControl];
    selectedSegmentIndex = [navigationBarSegmentedControl selectedSegmentIndex];

    if (selectedSegmentIndex == 1)
    {
      goto LABEL_9;
    }

    px_gridPresentation = [(PUPickerContainerController *)self px_gridPresentation];
    collection7 = [destinationCopy collection];
    if (collection7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_32:
        v12 = [px_gridPresentation createViewControllerForAssetCollection:collection7 hostViewController:self];

        v44 = 1;
        goto LABEL_40;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v57 = objc_opt_class();
      v56 = NSStringFromClass(v57);
      px_descriptionForAssertionMessage = [collection7 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:2142 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"destination.collection", v56, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:2142 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"destination.collection", v56}];
    }

    goto LABEL_32;
  }

  if ([destinationCopy revealMode] != 3)
  {
    v20 = PLPickerGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v60 = destinationCopy;
      v21 = "Unsupported destination reveal mode: %@";
LABEL_47:
      _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
    }

LABEL_48:

    handlerCopy[2](handlerCopy, 2, 0);
    goto LABEL_51;
  }

  childViewControllers2 = [(PUPickerContainerController *)self childViewControllers];
  firstObject = [childViewControllers2 firstObject];

  if (firstObject)
  {
    if ([firstObject px_scrollToInitialPositionAnimated:(options >> 1) & 1])
    {
      v19 = 1;
    }

    else
    {
      v19 = 5;
    }

    handlerCopy[2](handlerCopy, v19, 0);
  }

  else
  {
    v37 = PLPickerGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v60 = destinationCopy;
      _os_log_impl(&dword_1B36F3000, v37, OS_LOG_TYPE_ERROR, "Unsupported scrolling to top (can't find child view controller): %@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 2, 0);
  }

LABEL_51:
}

- (unint64_t)routingOptionsForDestination:(id)destination
{
  type = [destination type];
  if ((type - 8) > 0x15)
  {
    return 0;
  }

  else
  {
    return qword_1B3D0D530[type - 8];
  }
}

- (BOOL)_actionPerformer:(id)performer presentViewController:(id)controller
{
  performerCopy = performer;
  controllerCopy = controller;
  v8 = controllerCopy;
  if (controllerCopy)
  {
    v9 = controllerCopy;
    popoverPresentationController = [v9 popoverPresentationController];
    if (popoverPresentationController)
    {
      actionType = [performerCopy actionType];
      if (actionType == *MEMORY[0x1E69A2920])
      {
        toolbarSortAndFilterBarButtonItem = [(PUPickerContainerController *)self toolbarSortAndFilterBarButtonItem];
        [popoverPresentationController setBarButtonItem:toolbarSortAndFilterBarButtonItem];
      }

      else
      {
        toolbarSortAndFilterBarButtonItem = [(PUPickerContainerController *)self navigationController];
        view = [toolbarSortAndFilterBarButtonItem view];
        [popoverPresentationController setSourceView:view];
      }
    }

    navigationController = [(PUPickerContainerController *)self navigationController];
    px_isDelayingPresentation = 1;
    [navigationController presentViewController:v9 animated:1 completion:0];

    presentingViewController = [v9 presentingViewController];
    if (!presentingViewController)
    {
      px_isDelayingPresentation = [v9 px_isDelayingPresentation];
    }
  }

  else
  {
    px_isDelayingPresentation = 0;
  }

  return px_isDelayingPresentation;
}

- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type
{
  performerCopy = performer;
  controllerCopy = controller;
  switch(type)
  {
    case 1:
      navigationController = [(PUPickerContainerController *)self navigationController];
      v11 = 1;
      [navigationController px_pushViewController:controllerCopy animated:1 completion:0];

      break;
    case 2:
      v11 = [(PUPickerContainerController *)self _actionPerformer:performerCopy presentViewController:controllerCopy];
      break;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:2055 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v11 = 0;
      break;
  }

  return v11;
}

- (id)undoManagerForActionPerformer:(id)performer
{
  navigationController = [(PUPickerContainerController *)self navigationController];
  topViewController = [navigationController topViewController];

  undoManager = [topViewController undoManager];

  return undoManager;
}

- (void)handleItemCreationBarButtonItemAction:(id)action
{
  configuration = [(PUPickerContainerController *)self configuration];
  sourceType = [configuration sourceType];

  if (sourceType != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:2005 description:{@"Invalid parameter not satisfying: %@", @"self.configuration.sourceType == _PHPickerSourceTypeAlbums"}];
  }

  _containerForTopViewController = [(PUPickerContainerController *)self _containerForTopViewController];
  v8 = _containerForTopViewController;
  if (_containerForTopViewController)
  {
    rootAlbumCollectionList = _containerForTopViewController;
  }

  else
  {
    configuration2 = [(PUPickerContainerController *)self configuration];
    photoLibrary = [configuration2 photoLibrary];
    px_virtualCollections = [photoLibrary px_virtualCollections];
    rootAlbumCollectionList = [px_virtualCollections rootAlbumCollectionList];
  }

  v13 = objc_alloc(MEMORY[0x1E69C37E0]);
  v14 = [v13 initWithActionType:*MEMORY[0x1E69C3FE8] collectionList:rootAlbumCollectionList];
  [v14 setDelegate:self];
  configuration3 = [(PUPickerContainerController *)self configuration];
  albumsConfiguration = [configuration3 albumsConfiguration];
  assetsToAddIdentifiers = [albumsConfiguration assetsToAddIdentifiers];

  if ([assetsToAddIdentifiers count])
  {
    v18 = MEMORY[0x1E6978630];
    configuration4 = [(PUPickerContainerController *)self configuration];
    photoLibrary2 = [configuration4 photoLibrary];
    librarySpecificFetchOptions = [photoLibrary2 librarySpecificFetchOptions];
    v22 = [v18 fetchAssetsWithLocalIdentifiers:assetsToAddIdentifiers options:librarySpecificFetchOptions];
    fetchedObjects = [v22 fetchedObjects];
    [v14 setPreselectedAssets:fetchedObjects];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __69__PUPickerContainerController_handleItemCreationBarButtonItemAction___block_invoke;
  v26[3] = &unk_1E7B7FB70;
  v27 = v14;
  selfCopy = self;
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

- (void)handleToolbarOptionsButton:(id)button
{
  buttonCopy = button;
  configuration = [(PUPickerContainerController *)self configuration];
  excludesOptionsMenu = [configuration excludesOptionsMenu];

  if (excludesOptionsMenu)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1959 description:{@"Invalid parameter not satisfying: %@", @"!self.configuration.excludesOptionsMenu"}];
  }

  navigationController = [(PUPickerContainerController *)self navigationController];
  topViewController = [navigationController topViewController];

  configuration2 = [(PUPickerContainerController *)self configuration];
  selectionCoordinator = [(PUPickerContainerController *)self selectionCoordinator];
  additionalSelectionState = [(PUPickerContainerController *)self additionalSelectionState];
  v13 = [PUPickerOptionsViewFactory viewControllerWithConfiguration:configuration2 selectionCoordinator:selectionCoordinator additionalSelectionState:additionalSelectionState];

  v14 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v13];
  v15 = PULocalizedString(@"OPTIONS_BUTTON_TITLE");
  [v13 setTitle:v15];

  objc_initWeak(&location, self);
  v16 = MEMORY[0x1E69DC628];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58__PUPickerContainerController_handleToolbarOptionsButton___block_invoke;
  v22[3] = &unk_1E7B7F4F0;
  v17 = topViewController;
  v23 = v17;
  objc_copyWeak(&v24, &location);
  v18 = [v16 actionWithTitle:&stru_1F2AC6818 image:0 identifier:0 handler:v22];
  v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 primaryAction:v18 menu:0];
  navigationItem = [v13 navigationItem];
  [navigationItem setRightBarButtonItem:v19];

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

- (void)handleNavigationBarSegmentedControl:(id)control
{
  v32 = *MEMORY[0x1E69E9840];
  selectedSegmentIndex = [control selectedSegmentIndex];
  v5 = selectedSegmentIndex;
  if (selectedSegmentIndex)
  {
    if (selectedSegmentIndex == 1)
    {
      childViewControllers = [(PUPickerContainerController *)self childViewControllers];
      albumsViewController = [(PUPickerContainerController *)self albumsViewController];
      v8 = [childViewControllers containsObject:albumsViewController];

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
    childViewControllers2 = [(PUPickerContainerController *)self childViewControllers];
    itemsViewController = [(PUPickerContainerController *)self itemsViewController];
    v12 = [childViewControllers2 containsObject:itemsViewController];

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
  type = [v15 type];
  v17 = PLPickerGetLog();
  v18 = v17;
  if (type)
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

- (void)_performSelectionStatusAction:(id)action
{
  actionCopy = action;
  selectionCoordinator = [(PUPickerContainerController *)self selectionCoordinator];
  selectedObjectIDs = [selectionCoordinator selectedObjectIDs];
  v8 = [selectedObjectIDs count];

  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1917 description:{@"Invalid parameter not satisfying: %@", @"self.selectionCoordinator.selectedObjectIDs.count > 0"}];
  }

  containerControllerActionHandler = [(PUPickerContainerController *)self containerControllerActionHandler];
  [containerControllerActionHandler containerController:self didTapShowSelectedButton:actionCopy];
}

- (void)_performConfirmationAction:(id)action
{
  actionCopy = action;
  containerControllerActionHandler = [(PUPickerContainerController *)self containerControllerActionHandler];
  [containerControllerActionHandler containerController:self didTapAddButton:actionCopy];
}

- (void)_performCancellationAction:(id)action
{
  actionCopy = action;
  configuration = [(PUPickerContainerController *)self configuration];
  traitCollection = [(PUPickerContainerController *)self traitCollection];
  v6 = [configuration cancellationBehaviorWithTraitCollection:traitCollection];

  switch(v6)
  {
    case 3:
      containerControllerActionHandler = [(PUPickerContainerController *)self containerControllerActionHandler];
      [containerControllerActionHandler containerController:self didTapAddButton:actionCopy];
      break;
    case 2:
      containerControllerActionHandler = [(PUPickerContainerController *)self containerControllerActionHandler];
      [containerControllerActionHandler containerController:self didTapCancelButton:actionCopy];
      break;
    case 1:
      containerControllerActionHandler = [(PUPickerContainerController *)self containerControllerActionHandler];
      [containerControllerActionHandler containerController:self didTapClearButton:actionCopy];
      break;
    default:
      goto LABEL_8;
  }

LABEL_8:
}

- (void)_cleanUpInteractiveBarTransitionIfNeeded
{
  configuration = [(PUPickerContainerController *)self configuration];
  if ([configuration supportsInteractiveBarTransition])
  {
  }

  else
  {
    viewIfLoaded = [(PUPickerContainerController *)self viewIfLoaded];

    if (viewIfLoaded)
    {
      photosViewController = [(PUPickerContainerController *)self photosViewController];
      contentController = [photosViewController contentController];
      gridView = [contentController gridView];
      [gridView setAvoidSnapshotOnHeightChanges:0];

      navigationController = [(PUPickerContainerController *)self navigationController];
      navigationBar = [navigationController navigationBar];

      v9 = *(MEMORY[0x1E695EFD0] + 16);
      *v19 = *MEMORY[0x1E695EFD0];
      v20 = *MEMORY[0x1E695EFD0];
      v16 = *(MEMORY[0x1E695EFD0] + 32);
      v17 = v9;
      v21 = v9;
      v22 = v16;
      [navigationBar setTransform:&v20];
      [navigationBar setUserInteractionEnabled:1];
      layer = [navigationBar layer];
      [layer removeAllAnimations];

      navigationController2 = [(PUPickerContainerController *)self navigationController];
      LOBYTE(gridView) = [navigationController2 isToolbarHidden];

      if ((gridView & 1) == 0)
      {
        navigationController3 = [(PUPickerContainerController *)self navigationController];
        toolbar = [navigationController3 toolbar];

        v20 = *v19;
        v21 = v17;
        v22 = v16;
        [toolbar setTransform:&v20];
        [toolbar setUserInteractionEnabled:1];
        layer2 = [toolbar layer];
        [layer2 removeAllAnimations];
      }

      _currentContainerViewForInteractionBarTransition = [(PUPickerContainerController *)self _currentContainerViewForInteractionBarTransition];
      v20 = *v19;
      v21 = v17;
      v22 = v16;
      [_currentContainerViewForInteractionBarTransition setTransform:&v20];
    }
  }
}

- (BOOL)_isConfiguredForStickerSuggestionGroup
{
  configuration = [(PUPickerContainerController *)self configuration];
  suggestionGroup = [configuration suggestionGroup];
  stickersSuggestionGroup = [MEMORY[0x1E6979178] stickersSuggestionGroup];
  v5 = [suggestionGroup isEqual:stickersSuggestionGroup];

  return v5;
}

- (void)_updateSearchResultContextualVideoThumbnailIdentifiers:(id)identifiers
{
  v5 = MEMORY[0x1E696AF00];
  identifiersCopy = identifiers;
  if (([v5 isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1862 description:{@"%s must be called on the main thread", "-[PUPickerContainerController _updateSearchResultContextualVideoThumbnailIdentifiers:]"}];
  }

  photosViewController = [(PUPickerContainerController *)self photosViewController];
  viewModel = [photosViewController viewModel];
  [viewModel setSearchContextualVideoThumbnailIdentifiers:identifiersCopy];

  photosViewController2 = [(PUPickerContainerController *)self photosViewController];
  contentControllerIfLoaded = [photosViewController2 contentControllerIfLoaded];
  [contentControllerIfLoaded reloadVideoThumbnails];
}

- (void)_filterWithSearchResultUUIDs:(id)ds
{
  dsCopy = ds;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1855 description:{@"%s must be called on the main thread", "-[PUPickerContainerController _filterWithSearchResultUUIDs:]"}];
  }

  [(PUPickerContainerController *)self setSearchResultUUIDs:dsCopy];
  [(PUPickerContainerController *)self _updateAllowedUUIDsForceReload:0];
}

- (void)_filterWithSuggestionResult:(id)result
{
  resultCopy = result;
  if (!resultCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1815 description:{@"Invalid parameter not satisfying: %@", @"result != nil"}];
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1816 description:{@"%s must be called on the main thread", "-[PUPickerContainerController _filterWithSuggestionResult:]"}];
  }

  photosViewController = [(PUPickerContainerController *)self photosViewController];
  configuration = [photosViewController configuration];
  showLoadingPlaceholderWhenEmpty = [configuration showLoadingPlaceholderWhenEmpty];

  if (showLoadingPlaceholderWhenEmpty)
  {
    photosViewController2 = [(PUPickerContainerController *)self photosViewController];
    viewModelIfLoaded = [photosViewController2 viewModelIfLoaded];

    if ([viewModelIfLoaded showLoadingPlaceholderWhenEmpty])
    {
      [viewModelIfLoaded performChanges:&__block_literal_global_500];
    }

    photosDataSourceManager = [(PUPickerContainerController *)self photosDataSourceManager];
    filterPredicate = [photosDataSourceManager filterPredicate];
    if (filterPredicate)
    {
      v12 = filterPredicate;
      filterPredicate2 = [photosDataSourceManager filterPredicate];
      v14 = [MEMORY[0x1E696AE18] predicateWithValue:0];
      v15 = [filterPredicate2 isEqual:v14];

      if (v15)
      {
        [photosDataSourceManager performChanges:&__block_literal_global_503];
      }
    }
  }

  pickerSuggestionResultFetcherResult = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
  if (pickerSuggestionResultFetcherResult)
  {
    pickerSuggestionResultFetcherResult2 = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
    isSpatialPhotoWallpaperSuggestion = [pickerSuggestionResultFetcherResult2 isSpatialPhotoWallpaperSuggestion];
    v19 = isSpatialPhotoWallpaperSuggestion ^ [resultCopy isSpatialPhotoWallpaperSuggestion];
  }

  else
  {
    v19 = 0;
  }

  [(PUPickerContainerController *)self setPickerSuggestionResultFetcherResult:resultCopy];
  selectedFilterableSuggestion = [resultCopy selectedFilterableSuggestion];
  _shouldUseSolariumPickerSearch = [(PUPickerContainerController *)self _shouldUseSolariumPickerSearch];
  if (selectedFilterableSuggestion)
  {
    if (_shouldUseSolariumPickerSearch)
    {
      searchCoordinator = [(PUPickerContainerController *)self searchCoordinator];
      [searchCoordinator setContainerFromSuggestion:resultCopy];
    }

    else
    {
      searchCoordinator = [(PUPickerContainerController *)self searchBar];
      [searchCoordinator updateContainerFromSuggestion:resultCopy];
    }
  }

  else
  {
    if (_shouldUseSolariumPickerSearch)
    {
      searchCoordinator = [(PUPickerContainerController *)self searchCoordinator];
      configuration2 = [(PUPickerContainerController *)self configuration];
      [searchCoordinator setContainerFromPickerConfiguration:configuration2];
    }

    else
    {
      searchCoordinator = [(PUPickerContainerController *)self searchBar];
      configuration2 = [(PUPickerContainerController *)self configuration];
      [searchCoordinator updateContainerFromPickerConfiguration:configuration2];
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
  configuration = [(PUPickerContainerController *)self configuration];
  if (([configuration shouldShowPhotosIndicator] & 1) == 0)
  {
LABEL_4:

    return;
  }

  configuration2 = [(PUPickerContainerController *)self configuration];
  if ([configuration2 shouldShowOnboardingOverlayView])
  {

    goto LABEL_4;
  }

  configuration3 = [(PUPickerContainerController *)self configuration];
  shouldShowOnboardingHeaderView = [configuration3 shouldShowOnboardingHeaderView];

  if ((shouldShowOnboardingHeaderView & 1) == 0)
  {
    configuration4 = [(PUPickerContainerController *)self configuration];
    [configuration4 performChanges:&__block_literal_global_492];

    photosIndicator = [(PUPickerContainerController *)self photosIndicator];
    [photosIndicator removeFromSuperview];

    view = [(PUPickerContainerController *)self view];
    photosIndicator2 = [(PUPickerContainerController *)self photosIndicator];
    [view addSubview:photosIndicator2];

    photosIndicator3 = [(PUPickerContainerController *)self photosIndicator];
    topAnchor = [photosIndicator3 topAnchor];
    view2 = [(PUPickerContainerController *)self view];
    topAnchor2 = [view2 topAnchor];
    v14 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
    [(PUPickerContainerController *)self setPhotosIndicatorTopConstraint:v14];

    photosIndicator4 = [(PUPickerContainerController *)self photosIndicator];
    topAnchor3 = [photosIndicator4 topAnchor];
    view3 = [(PUPickerContainerController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    topAnchor4 = [safeAreaLayoutGuide topAnchor];
    v20 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:topAnchor4 multiplier:1.0];
    [(PUPickerContainerController *)self setPhotosIndicatorTopSafeAreaConstraint:v20];

    photosIndicator5 = [(PUPickerContainerController *)self photosIndicator];
    leadingAnchor = [photosIndicator5 leadingAnchor];
    view4 = [(PUPickerContainerController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v25 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
    [(PUPickerContainerController *)self setPhotosIndicatorLeadingConstraint:v25];

    photosIndicator6 = [(PUPickerContainerController *)self photosIndicator];
    leadingAnchor3 = [photosIndicator6 leadingAnchor];
    view5 = [(PUPickerContainerController *)self view];
    safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
    leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
    v31 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:leadingAnchor4 multiplier:1.0];
    [(PUPickerContainerController *)self setPhotosIndicatorLeadingSafeAreaConstraint:v31];

    view6 = [(PUPickerContainerController *)self view];
    [view6 setNeedsUpdateConstraints];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__PUPickerContainerController__showPhotosIndicatorBrieflyIfNeeded__block_invoke_2;
    aBlock[3] = &unk_1E7B7F020;
    aBlock[4] = self;
    v33 = _Block_copy(aBlock);
    photosIndicator7 = [(PUPickerContainerController *)self photosIndicator];
    [photosIndicator7 flipToPrivacyIconAndDismissAfterDelay:v33 completion:1.0];
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

- (void)_updateSelectionStatusBarButtonItem:(BOOL)item
{
  v55[1] = *MEMORY[0x1E69E9840];
  if ([(PUPickerContainerController *)self hasContent])
  {
    itemCopy = item;
    configuration = [(PUPickerContainerController *)self configuration];
    selectionCoordinator = [(PUPickerContainerController *)self selectionCoordinator];
    selectedObjectIDs = [selectionCoordinator selectedObjectIDs];
    array = [selectedObjectIDs array];

    v9 = [array count];
    generatedFilter = [configuration generatedFilter];
    photoLibrary = [configuration photoLibrary];
    v12 = [generatedFilter displayAssetMediaTypeConsideringAssetObjectIDs:array photoLibrary:photoLibrary];

    v13 = [configuration stagingTitleWithSelectionCount:v9 selectionMediaType:v12];
    additionalSelectionState = [(PUPickerContainerController *)self additionalSelectionState];
    v54 = 0;
    v15 = [configuration stagingSubtitleWithSelectionCount:v9 includesLocation:objc_msgSend(additionalSelectionState subtitleLeadingImageName:{"shouldIncludeLocation"), &v54}];
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
    configuration2 = [(PUPickerContainerController *)self configuration];
    allowsOpeningStagingArea = [configuration2 allowsOpeningStagingArea];
    if (v9 > 0)
    {
      v25 = allowsOpeningStagingArea;
    }

    else
    {
      v25 = 0;
    }

    v51 = v22;
    if (v25 == 1 && MEMORY[0x1B8C6D660]())
    {
      lastObject = [array lastObject];
      v46 = objc_alloc(MEMORY[0x1E69788E0]);
      v48 = array;
      if (lastObject)
      {
        v55[0] = lastObject;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
      }

      else
      {
        v27 = MEMORY[0x1E695E0F0];
      }

      configuration3 = [(PUPickerContainerController *)self configuration];
      photoLibrary2 = [configuration3 photoLibrary];
      v31 = v46;
      v47 = v27;
      v32 = [v31 initWithOids:v27 photoLibrary:photoLibrary2 fetchType:*MEMORY[0x1E6978D98] fetchPropertySets:0 identifier:0 registerIfNeeded:1];

      if (lastObject)
      {
      }

      lastObject2 = [v32 lastObject];

      array = v48;
      v22 = v51;
      v25 = 1;
    }

    else
    {
      lastObject2 = 0;
    }

    LOBYTE(v45) = itemCopy;
    [(PUPickerContainerController *)self updateSelectionStatusViewWithTitle:v53 titleSystemImage:v52 subtitle:v21 subtitleSystemImage:v22 asset:lastObject2 allowsOpeningStagingArea:v25 centerAlignment:v45];
    selectionStatusView = [(PUPickerContainerController *)self selectionStatusView];

    if (selectionStatusView)
    {
      v34 = objc_alloc(MEMORY[0x1E69DC708]);
      [(PUPickerContainerController *)self selectionStatusView];
      v50 = lastObject2;
      v35 = v25;
      v36 = configuration;
      v37 = v16;
      v38 = v15;
      v39 = v21;
      v40 = v13;
      v42 = v41 = array;
      v43 = [v34 initWithCustomView:v42];

      array = v41;
      v13 = v40;
      v21 = v39;
      v15 = v38;
      v16 = v37;
      configuration = v36;
      v44 = v35 ^ 1u;
      lastObject2 = v50;
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
  configuration = [(PUPickerContainerController *)self configuration];
  phPickerConfiguration = [configuration phPickerConfiguration];
  _disabledPrivateCapabilities = [phPickerConfiguration _disabledPrivateCapabilities];

  if ((_disabledPrivateCapabilities & 0x400) == 0)
  {
    selectionCoordinator = [(PUPickerContainerController *)self selectionCoordinator];
    selectedObjectIDs = [selectionCoordinator selectedObjectIDs];
    v8 = [selectedObjectIDs count];

    if (!-[PUPickerContainerController hasContent](self, "hasContent") || ([configuration confirmationTitle], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
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
      tintedButtonConfiguration = [MEMORY[0x1E69DC740] tintedButtonConfiguration];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      [tintedButtonConfiguration setBaseForegroundColor:whiteColor];

      [tintedButtonConfiguration setShowsActivityIndicator:{-[PUPickerContainerController replacesConfirmationButtonWithActivityIndicator](self, "replacesConfirmationButtonWithActivityIndicator")}];
      v16 = [MEMORY[0x1E69DC738] buttonWithConfiguration:tintedButtonConfiguration primaryAction:v11];
      widthAnchor = [v16 widthAnchor];
      v18 = [widthAnchor constraintGreaterThanOrEqualToConstant:72.0];
      v36[0] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      [v16 addConstraints:v19];

      v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v16];
    }

    else
    {
      if (![(PUPickerContainerController *)self replacesConfirmationButtonWithActivityIndicator])
      {
        configuration2 = [(PUPickerContainerController *)self configuration];
        confirmationSystemItem = [configuration2 confirmationSystemItem];

        if (confirmationSystemItem == 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithPrimaryAction:v11];
        }

        else
        {
          v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:confirmationSystemItem primaryAction:v11];
        }

        v21 = v24;
LABEL_19:
        [v21 setStyle:2];

        objc_destroyWeak(&v34);
        objc_destroyWeak(&location);

        if (v21)
        {
          confirmationBehavior = [configuration confirmationBehavior];
          if (confirmationBehavior >= 2)
          {
            if (confirmationBehavior != 3)
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
                confirmationBehavior2 = [configuration confirmationBehavior];
                if (confirmationBehavior2 <= 4)
                {
                  [v21 setAccessibilityIdentifier:off_1E7B7D120[confirmationBehavior2]];
                }
              }

              goto LABEL_10;
            }

            v27 = 1;
          }

          else
          {
            v26 = ([configuration allowsUnlimitedMultipleSelection] & 1) != 0 || v8 <= objc_msgSend(configuration, "selectionLimit");
            v27 = (v8 >= [configuration minimumSelectionLimit]) & v26;
          }

          [v21 setEnabled:v27];
          goto LABEL_28;
        }

LABEL_10:
        [(PUPickerContainerController *)self setConfirmationBarButtonItem:v21];

        goto LABEL_11;
      }

      tintedButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
      [tintedButtonConfiguration setShowsActivityIndicator:1];
      v16 = [MEMORY[0x1E69DC738] buttonWithConfiguration:tintedButtonConfiguration primaryAction:v11];
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
  configuration = [(PUPickerContainerController *)self configuration];
  traitCollection = [(PUPickerContainerController *)self traitCollection];
  v5 = [configuration cancellationBehaviorWithTraitCollection:traitCollection];

  if (!v5)
  {
    v11 = 0;
    goto LABEL_21;
  }

  configuration2 = [(PUPickerContainerController *)self configuration];
  v7 = [configuration2 cancellationTitleWithBehavior:v5];

  configuration3 = [(PUPickerContainerController *)self configuration];
  v9 = [configuration3 cancellationImageNameWithBehavior:v5];

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
  userInterfaceIdiom = [v15 userInterfaceIdiom];

  if (userInterfaceIdiom == 5 || (-[PUPickerContainerController configuration](self, "configuration"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 cancellationSystemItemWithBehavior:v5], v18, v19 == 0x7FFFFFFFFFFFFFFFLL))
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
          selectionCoordinator = [(PUPickerContainerController *)self selectionCoordinator];
          selectedObjectIDs = [selectionCoordinator selectedObjectIDs];
          [v11 setEnabled:{objc_msgSend(selectedObjectIDs, "count") != 0}];

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
  configuration = [(PUPickerContainerController *)self configuration];
  if ([configuration excludesSortAndFilterMenu])
  {

LABEL_7:
    toolbarSortAndFilterBarButtonItem = 0;
    goto LABEL_8;
  }

  childViewControllers = [(PUPickerContainerController *)self childViewControllers];
  itemsViewController = [(PUPickerContainerController *)self itemsViewController];
  photosViewController = [childViewControllers containsObject:itemsViewController];

  if (!photosViewController)
  {
    goto LABEL_7;
  }

  toolbarSortAndFilterBarButtonItem = [(PUPickerContainerController *)self toolbarSortAndFilterBarButtonItem];
  if (MEMORY[0x1B8C6D660]())
  {
    v8 = toolbarSortAndFilterBarButtonItem;
    configuration2 = [(PUPickerContainerController *)self configuration];
    selectionCoordinator = [(PUPickerContainerController *)self selectionCoordinator];
    selectedObjectIDs = [selectionCoordinator selectedObjectIDs];
    v12 = [selectedObjectIDs count];
    additionalSelectionState = [(PUPickerContainerController *)self additionalSelectionState];
    photosViewController = [configuration2 locationMetadataSubtitleWithSelectionCount:v12 includesLocation:objc_msgSend(additionalSelectionState usesShortVersion:"shouldIncludeLocation") leadingImageName:{0, 0}];
    optionsAction = [(PUPickerContainerController *)self optionsAction];
    [optionsAction setSubtitle:photosViewController];

    configuration3 = [(PUPickerContainerController *)self configuration];
    excludesOptionsMenu = [configuration3 excludesOptionsMenu];
    if (excludesOptionsMenu)
    {
      v17 = 0;
    }

    else
    {
      v63 = MEMORY[0x1E69DCC60];
      selectionCoordinator = [(PUPickerContainerController *)self optionsAction];
      v77 = selectionCoordinator;
      photosViewController = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
      additionalSelectionState = [v63 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:photosViewController];
      v78[0] = additionalSelectionState;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:1];
    }

    filterButtonController = [(PUPickerContainerController *)self filterButtonController];
    [filterButtonController setAdditionalMenuItems:v17];

    if ((excludesOptionsMenu & 1) == 0)
    {
    }

    toolbarSortAndFilterBarButtonItem = v8;
  }

LABEL_8:
  childViewControllers2 = MEMORY[0x1B8C6D660]();
  configuration4 = [(PUPickerContainerController *)self configuration];
  excludesOptionsMenu2 = [configuration4 excludesOptionsMenu];
  configuration5 = excludesOptionsMenu2;
  if (childViewControllers2)
  {
    if (toolbarSortAndFilterBarButtonItem)
    {
      configuration5 = 1;
    }

    else
    {
      configuration5 = excludesOptionsMenu2;
    }
  }

  if (configuration5)
  {
    toolbarOptionsBarButton = 0;
  }

  else
  {
    toolbarOptionsBarButton = [(PUPickerContainerController *)self toolbarOptionsBarButton];
  }

  if ([(PUPickerContainerController *)self isCompactWidthOrHeight])
  {
    hasContent = [(PUPickerContainerController *)self hasContent];
    v24 = toolbarSortAndFilterBarButtonItem;
    if (hasContent)
    {
      configuration5 = [(PUPickerContainerController *)self configuration];
      if ([configuration5 allowsSearchBar])
      {
        childViewControllers2 = [(PUPickerContainerController *)self childViewControllers];
        photosViewController = [(PUPickerContainerController *)self photosViewController];
        v25 = [childViewControllers2 containsObject:photosViewController];
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

    searchCoordinator = [(PUPickerContainerController *)self searchCoordinator];
    [searchCoordinator setIsVisible:v25];

    if (v26)
    {
    }

    toolbarSortAndFilterBarButtonItem = v24;
    if (hasContent)
    {
    }

    if ([(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
    {
      searchCoordinator2 = [(PUPickerContainerController *)self searchCoordinator];
      regularSearchBarButtonItems = [searchCoordinator2 regularSearchBarButtonItems];
    }

    else
    {
      regularSearchBarButtonItems = 0;
    }

    if ([(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
    {
      searchCoordinator3 = [(PUPickerContainerController *)self searchCoordinator];
      compactSearchBarButtonItem = [searchCoordinator3 compactSearchBarButtonItem];

      goto LABEL_32;
    }
  }

  else
  {
    regularSearchBarButtonItems = 0;
  }

  compactSearchBarButtonItem = 0;
LABEL_32:
  traitCollection = [(PUPickerContainerController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    [(PUPickerContainerController *)self _updateCancellationBarButtonItem];
    [(PUPickerContainerController *)self _updateConfirmationBarButtonItem];
    cancellationBarButtonItem = [(PUPickerContainerController *)self cancellationBarButtonItem];
    confirmationBarButtonItem = [(PUPickerContainerController *)self confirmationBarButtonItem];
  }

  else
  {
    cancellationBarButtonItem = 0;
    confirmationBarButtonItem = 0;
  }

  [(PUPickerContainerController *)self _updateSelectionStatusBarButtonItem:1];
  selectionStatusBarButtonItem = [(PUPickerContainerController *)self selectionStatusBarButtonItem];
  v67 = regularSearchBarButtonItems;
  v68 = compactSearchBarButtonItem;
  v69 = toolbarOptionsBarButton;
  if ([regularSearchBarButtonItems count])
  {
    v37 = regularSearchBarButtonItems;
    selectionStatusBarButtonItem2 = selectionStatusBarButtonItem;
  }

  else
  {
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40 = v39;
    if (cancellationBarButtonItem)
    {
      [v39 addObject:cancellationBarButtonItem];
    }

    if (confirmationBarButtonItem)
    {
      [v40 addObject:confirmationBarButtonItem];
    }

    if (!MEMORY[0x1B8C6D660]() && toolbarOptionsBarButton && ![v40 count])
    {
      [v40 addObject:toolbarOptionsBarButton];
    }

    if (compactSearchBarButtonItem)
    {
      [v40 addObject:compactSearchBarButtonItem];
    }

    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = v42;
    if (toolbarSortAndFilterBarButtonItem)
    {
      [v42 addObject:toolbarSortAndFilterBarButtonItem];
    }

    if (MEMORY[0x1B8C6D660]() && toolbarOptionsBarButton)
    {
      [v43 addObject:toolbarOptionsBarButton];
    }

    [(PUPickerContainerController *)self _updateSelectionStatusBarButtonItem:1];
    selectionStatusBarButtonItem2 = [(PUPickerContainerController *)self selectionStatusBarButtonItem];

    if (selectionStatusBarButtonItem2)
    {
      [v41 addObject:selectionStatusBarButtonItem2];
    }

    if (![v40 count] && MEMORY[0x1B8C6D660]())
    {
      flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      [v40 addObject:flexibleSpaceItem];
    }

    if (![v41 count])
    {
      flexibleSpaceItem2 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      [v41 addObject:flexibleSpaceItem2];
    }

    flexibleSpaceItem3 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    [v41 addObject:flexibleSpaceItem3];

    if (![v43 count])
    {
      flexibleSpaceItem4 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
      [v43 addObject:flexibleSpaceItem4];
    }

    flexibleSpaceItem5 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    [v43 addObject:flexibleSpaceItem5];

    v49 = [v43 arrayByAddingObjectsFromArray:v41];
    v37 = [v49 arrayByAddingObjectsFromArray:v40];

    regularSearchBarButtonItems = v67;
  }

  v50 = 1;
  v65 = confirmationBarButtonItem;
  if (selectionStatusBarButtonItem2 || cancellationBarButtonItem || confirmationBarButtonItem)
  {
    v51 = toolbarSortAndFilterBarButtonItem;
  }

  else
  {
    v51 = toolbarSortAndFilterBarButtonItem;
    if (!toolbarSortAndFilterBarButtonItem)
    {
      v50 = ([regularSearchBarButtonItems count] | v68 | v69) != 0;
    }
  }

  configuration6 = [(PUPickerContainerController *)self configuration];
  v53 = [configuration6 allowsToolbar] & v50;

  albumsViewControllerIfLoaded = [(PUPickerContainerController *)self albumsViewControllerIfLoaded];
  px_barAppearance = [albumsViewControllerIfLoaded px_barAppearance];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __45__PUPickerContainerController__updateToolbar__block_invoke;
  v74[3] = &__block_descriptor_33_e34_v16__0___PXMutableBarAppearance__8l;
  v75 = v53;
  [px_barAppearance performChangesWithAnimationOptions:0 changes:v74];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  navigationController = [(PUPickerContainerController *)self navigationController];
  viewControllers = [navigationController viewControllers];

  v58 = [viewControllers countByEnumeratingWithState:&v70 objects:v76 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        [*(*(&v70 + 1) + 8 * i) setToolbarItems:v37];
      }

      v59 = [viewControllers countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v59);
  }

  navigationController2 = [(PUPickerContainerController *)self navigationController];
  [navigationController2 setToolbarHidden:v53 ^ 1u animated:0];
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
  configuration = [(PUPickerContainerController *)self configuration];
  sidebarViewController = [(PUPickerContainerController *)self sidebarViewController];

  traitCollection = [(PUPickerContainerController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  childViewControllers = [(PUPickerContainerController *)self childViewControllers];
  photosViewController = [(PUPickerContainerController *)self photosViewController];
  v9 = [childViewControllers containsObject:photosViewController];

  allowsSearchBar = 0;
  if ([(PUPickerContainerController *)self hasContent]&& v9)
  {
    allowsSearchBar = [configuration allowsSearchBar];
  }

  allowsSegmentedControl = 0;
  if ([(PUPickerContainerController *)self hasContent]&& !sidebarViewController)
  {
    allowsSegmentedControl = [configuration allowsSegmentedControl];
  }

  if (v9)
  {
    suggestionGroup = [configuration suggestionGroup];
    v101 = suggestionGroup == 0;
  }

  else
  {
    v101 = 1;
  }

  v102 = v9;
  v97 = allowsSearchBar;
  if (userInterfaceIdiom == 5 && ([configuration allowsToolbar] & 1) != 0)
  {
    confirmationBarButtonItem = 0;
    cancellationBarButtonItem = 0;
  }

  else
  {
    [(PUPickerContainerController *)self _updateCancellationBarButtonItem];
    [(PUPickerContainerController *)self _updateConfirmationBarButtonItem];
    cancellationBarButtonItem = [(PUPickerContainerController *)self cancellationBarButtonItem];
    confirmationBarButtonItem = [(PUPickerContainerController *)self confirmationBarButtonItem];
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v104 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([configuration allowsNewItemCreation])
  {
    itemCreationBarButtonItem = [(PUPickerContainerController *)self itemCreationBarButtonItem];
    [v15 addObject:itemCreationBarButtonItem];
  }

  if (confirmationBarButtonItem)
  {
    [v15 addObject:confirmationBarButtonItem];
  }

  v105 = confirmationBarButtonItem;
  configuration2 = [(PUPickerContainerController *)self configuration];
  v107 = configuration;
  if ([configuration2 excludesSortAndFilterMenu])
  {

LABEL_24:
    toolbarSortAndFilterBarButtonItem = 0;
    goto LABEL_25;
  }

  childViewControllers2 = [(PUPickerContainerController *)self childViewControllers];
  itemsViewController = [(PUPickerContainerController *)self itemsViewController];
  photosViewController2 = [childViewControllers2 containsObject:itemsViewController];

  if (!photosViewController2)
  {
    goto LABEL_24;
  }

  toolbarSortAndFilterBarButtonItem = [(PUPickerContainerController *)self toolbarSortAndFilterBarButtonItem];
  if (MEMORY[0x1B8C6D660]())
  {
    configuration3 = [(PUPickerContainerController *)self configuration];
    selectionCoordinator = [(PUPickerContainerController *)self selectionCoordinator];
    selectedObjectIDs = [selectionCoordinator selectedObjectIDs];
    v23 = [selectedObjectIDs count];
    additionalSelectionState = [(PUPickerContainerController *)self additionalSelectionState];
    photosViewController2 = [configuration3 locationMetadataSubtitleWithSelectionCount:v23 includesLocation:objc_msgSend(additionalSelectionState usesShortVersion:"shouldIncludeLocation") leadingImageName:{0, 0}];
    optionsAction = [(PUPickerContainerController *)self optionsAction];
    [optionsAction setSubtitle:photosViewController2];

    configuration4 = [(PUPickerContainerController *)self configuration];
    excludesOptionsMenu = [configuration4 excludesOptionsMenu];
    if (excludesOptionsMenu)
    {
      v28 = 0;
    }

    else
    {
      v95 = MEMORY[0x1E69DCC60];
      optionsAction2 = [(PUPickerContainerController *)self optionsAction];
      v124 = optionsAction2;
      photosViewController2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
      additionalSelectionState = [v95 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:photosViewController2];
      v125[0] = additionalSelectionState;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:1];
    }

    filterButtonController = [(PUPickerContainerController *)self filterButtonController];
    [filterButtonController setAdditionalMenuItems:v28];

    if ((excludesOptionsMenu & 1) == 0)
    {
    }

    configuration = v107;
  }

LABEL_25:
  childViewControllers3 = MEMORY[0x1B8C6D660]();
  configuration5 = [(PUPickerContainerController *)self configuration];
  excludesOptionsMenu2 = [configuration5 excludesOptionsMenu];
  configuration6 = excludesOptionsMenu2;
  if (childViewControllers3)
  {
    if (toolbarSortAndFilterBarButtonItem)
    {
      configuration6 = 1;
    }

    else
    {
      configuration6 = excludesOptionsMenu2;
    }
  }

  if ((configuration6 & 1) == 0)
  {
    [(PUPickerContainerController *)self toolbarOptionsBarButton];
  }

  v108 = cancellationBarButtonItem;
  if (![(PUPickerContainerController *)self isCompactWidthOrHeight])
  {
    if (sidebarViewController && [v15 count])
    {
      v33 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:0.0];
      [v15 addObject:v33];
    }

    hasContent = [(PUPickerContainerController *)self hasContent];
    if (hasContent)
    {
      configuration6 = [(PUPickerContainerController *)self configuration];
      if ([configuration6 allowsSearchBar])
      {
        childViewControllers3 = [(PUPickerContainerController *)self childViewControllers];
        photosViewController2 = [(PUPickerContainerController *)self photosViewController];
        v35 = [childViewControllers3 containsObject:photosViewController2];
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

    searchCoordinator = [(PUPickerContainerController *)self searchCoordinator];
    [searchCoordinator setIsVisible:v35];

    if (v36)
    {
    }

    if (hasContent)
    {
    }

    searchCoordinator2 = [(PUPickerContainerController *)self searchCoordinator];
    v39 = searchCoordinator2;
    configuration = v107;
    cancellationBarButtonItem = v108;
    if (sidebarViewController)
    {
      [searchCoordinator2 regularHasSidebarSearchBarButtonItems];
    }

    else
    {
      [searchCoordinator2 regularSearchBarButtonItems];
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

      cancellationBarButtonItem = v108;
    }

    if (!sidebarViewController)
    {
      if ([(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
      {
        searchCoordinator3 = [(PUPickerContainerController *)self searchCoordinator];
        compactSearchBarButtonItem = [searchCoordinator3 compactSearchBarButtonItem];

        if (compactSearchBarButtonItem)
        {
          [v15 addObject:compactSearchBarButtonItem];
        }
      }
    }
  }

  if (allowsSegmentedControl)
  {
    navigationBarSegmentedControl = [(PUPickerContainerController *)self navigationBarSegmentedControl];
  }

  else
  {
    navigationBarSegmentedControl = 0;
  }

  allowsNavigationBar = [configuration allowsNavigationBar];
  sidebarViewController2 = [(PUPickerContainerController *)self sidebarViewController];
  navigationController = [sidebarViewController2 navigationController];
  navigationBar = [navigationController navigationBar];

  navigationController2 = [(PUPickerContainerController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];

  sidebarViewController3 = [(PUPickerContainerController *)self sidebarViewController];
  navigationItem = [sidebarViewController3 navigationItem];

  navigationItem2 = [(PUPickerContainerController *)self navigationItem];
  if (([configuration supportsInteractiveBarTransition] & 1) == 0)
  {
    [navigationBar2 setHidden:allowsNavigationBar ^ 1u];
  }

  v100 = navigationBar2;
  configuration7 = [(PUPickerContainerController *)self configuration];
  title = [configuration7 title];

  searchCoordinator4 = [(PUPickerContainerController *)self searchCoordinator];
  v99 = title;
  if (([searchCoordinator4 isEditing] & (sidebarViewController == 0)) != 0)
  {
    title = 0;
  }

  itemsViewController2 = [(PUPickerContainerController *)self itemsViewController];
  [itemsViewController2 setTitle:title];

  childViewControllers4 = [(PUPickerContainerController *)self childViewControllers];
  firstObject = [childViewControllers4 firstObject];
  title2 = [firstObject title];
  [(PUPickerContainerController *)self setTitle:title2];

  [navigationItem setLeftBarButtonItem:cancellationBarButtonItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  if (leftBarButtonItem)
  {
    [navigationBar setHidden:0];
  }

  else
  {
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [navigationBar setHidden:rightBarButtonItem == 0];
  }

  if (navigationItem)
  {
    v64 = 0;
  }

  else
  {
    v64 = cancellationBarButtonItem;
  }

  [navigationItem2 setLeftBarButtonItem:v64];
  [navigationItem2 setTitleView:navigationBarSegmentedControl];
  selectionCoordinator2 = [(PUPickerContainerController *)self selectionCoordinator];
  selectedObjectIDs2 = [selectionCoordinator2 selectedObjectIDs];
  v67 = [configuration promptWithSelectionCount:{objc_msgSend(selectedObjectIDs2, "count")}];

  if (v67)
  {
    v68 = &stru_1F2AC6818;
  }

  else
  {
    v68 = 0;
  }

  [navigationItem setPrompt:v68];
  [navigationItem2 setPrompt:v67];
  navigationController3 = [(PUPickerContainerController *)self navigationController];
  navigationBar3 = [navigationController3 navigationBar];
  [navigationBar3 setNeedsLayout];

  v98 = v67;
  if ([(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
  {
    pickerSuggestionsView = [(PUPickerContainerController *)self pickerSuggestionsView];
    v72 = v101;
    [pickerSuggestionsView setHidden:v101];

    v73 = v102;
  }

  else
  {
    v74 = v97 ^ 1u;
    searchBar = [(PUPickerContainerController *)self searchBar];
    [searchBar setHidden:v74];

    v73 = v102;
    if ((v97 & 1) == 0)
    {
      searchBar2 = [(PUPickerContainerController *)self searchBar];
      [searchBar2 updateIsEditing:0];
    }

    pickerSuggestionsView2 = [(PUPickerContainerController *)self pickerSuggestionsView];
    [pickerSuggestionsView2 setHidden:v101];

    v72 = v74 & v101;
  }

  v103 = v73 ^ 1u;
  navigationBarBottomPalette = [(PUPickerContainerController *)self navigationBarBottomPalette];
  [navigationBarBottomPalette setHidden:v72];

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  navigationController4 = [(PUPickerContainerController *)self navigationController];
  viewControllers = [navigationController4 viewControllers];

  v81 = [viewControllers countByEnumeratingWithState:&v114 objects:v122 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v85 = *(*(&v114 + 1) + 8 * j);
        navigationItem3 = [v85 navigationItem];
        [navigationItem3 setRightBarButtonItems:v15];

        searchCoordinator5 = [(PUPickerContainerController *)self searchCoordinator];
        isEditing = [searchCoordinator5 isEditing];

        if (isEditing && !sidebarViewController)
        {
          prompt = [navigationItem2 prompt];
          navigationItem4 = [v85 navigationItem];
          [navigationItem4 setPrompt:prompt];
        }
      }

      v82 = [viewControllers countByEnumeratingWithState:&v114 objects:v122 count:16];
    }

    while (v82);
  }

  navigationBarSegmentedControl2 = [(PUPickerContainerController *)self navigationBarSegmentedControl];
  [navigationBarSegmentedControl2 setSelectedSegmentIndex:v103];

  if (![(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
  {
    pickerSuggestionsView3 = [(PUPickerContainerController *)self pickerSuggestionsView];
    if (pickerSuggestionsView3)
    {
      pickerSuggestionsView4 = [(PUPickerContainerController *)self pickerSuggestionsView];
      isHidden = [pickerSuggestionsView4 isHidden];

      if (isHidden)
      {
        pickerSuggestionsView3 = 0;
      }

      else
      {
        pickerSuggestionsView3 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
        [pickerSuggestionsView3 configureWithDefaultBackground];
        [v100 setStandardAppearance:pickerSuggestionsView3];
        [v100 setCompactAppearance:pickerSuggestionsView3];
        [v100 setCompactScrollEdgeAppearance:pickerSuggestionsView3];
      }
    }

    [v100 setScrollEdgeAppearance:pickerSuggestionsView3];
  }
}

- (void)_updateEnableSpatialPhotoPlayback
{
  pickerSuggestionResultFetcherResult = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
  isSpatialPhotoWallpaperSuggestion = [pickerSuggestionResultFetcherResult isSpatialPhotoWallpaperSuggestion];
  photosViewController = [(PUPickerContainerController *)self photosViewController];
  contentController = [photosViewController contentController];
  [contentController setEnableSpatialPhotoPlayback:isSpatialPhotoWallpaperSuggestion];
}

- (void)_updateNumberOfItemsToPlayInline
{
  configuration = [(PUPickerContainerController *)self configuration];
  if ([configuration shouldDisableInlinePlayback])
  {
    numberOfItemsToPlayInline = 0;
LABEL_3:

    goto LABEL_8;
  }

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();

  if (IsReduceMotionEnabled)
  {
    numberOfItemsToPlayInline = 0;
  }

  else
  {
    if (![(PUPickerContainerController *)self _isConfiguredForStickerSuggestionGroup])
    {
      configuration = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
      numberOfItemsToPlayInline = [configuration numberOfItemsToPlayInline];
      goto LABEL_3;
    }

    numberOfItemsToPlayInline = 3;
  }

LABEL_8:
  photosViewController = [(PUPickerContainerController *)self photosViewController];
  contentController = [photosViewController contentController];
  [contentController setNumberOfItemsToPlayInline:numberOfItemsToPlayInline];
}

- (void)_updatePeopleSort
{
  peopleSortOrderType = [(PUPickerContainerController *)self peopleSortOrderType];
  if (peopleSortOrderType == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = peopleSortOrderType == 1;
  }

  v5 = MEMORY[0x1E69C3790];
  configuration = [(PUPickerContainerController *)self configuration];
  photoLibrary = [configuration photoLibrary];
  [v5 setSortOrder:v4 toPhotoLibrary:photoLibrary];
}

- (void)_updateSortDescriptors
{
  v28[5] = *MEMORY[0x1E69E9840];
  photosDataSourceManager = [(PUPickerContainerController *)self photosDataSourceManager];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = photosDataSourceManager;

    if (v4)
    {
      if ([(PUPickerContainerController *)self isShowingLiveWallpaperSuggestions])
      {
        configuration3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"mediaAnalysisAttributes.activityScore" ascending:1];
        v28[0] = configuration3;
        customSortDescriptors2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"mediaAnalysisAttributes.wallpaperScore" ascending:1];
        v28[1] = customSortDescriptors2;
        photosDataSource2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"favorite" ascending:1];
        v28[2] = photosDataSource2;
        photosDataSource3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
        v28[3] = photosDataSource3;
        photosDataSource4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
        v28[4] = photosDataSource4;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:5];
        photosDataSource = [v4 photosDataSource];
        [photosDataSource setSortDescriptors:v10];
      }

      else
      {
        pickerSuggestionResultFetcherResult = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
        isFilteredBackdropSuggestions = [pickerSuggestionResultFetcherResult isFilteredBackdropSuggestions];

        if (isFilteredBackdropSuggestions)
        {
          configuration3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"mediaAnalysisAttributes.faceCount" ascending:0];
          v27[0] = configuration3;
          customSortDescriptors2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
          v27[1] = customSortDescriptors2;
          photosDataSource2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
          v27[2] = photosDataSource2;
          v16 = MEMORY[0x1E695DEC8];
          v17 = v27;
        }

        else
        {
          configuration = [(PUPickerContainerController *)self configuration];
          showsWallpaperSuggestions = [configuration showsWallpaperSuggestions];

          if (showsWallpaperSuggestions)
          {
            configuration3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
            v26[0] = configuration3;
            customSortDescriptors2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
            v26[1] = customSortDescriptors2;
            photosDataSource2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
            v26[2] = photosDataSource2;
            v16 = MEMORY[0x1E695DEC8];
            v17 = v26;
          }

          else
          {
            configuration2 = [(PUPickerContainerController *)self configuration];
            customSortDescriptors = [configuration2 customSortDescriptors];

            if (customSortDescriptors)
            {
              configuration3 = [(PUPickerContainerController *)self configuration];
              customSortDescriptors2 = [configuration3 customSortDescriptors];
              photosDataSource2 = [v4 photosDataSource];
              [photosDataSource2 setSortDescriptors:customSortDescriptors2];
              goto LABEL_18;
            }

            if ([(PUPickerContainerController *)self assetSortOrderType]!= 1)
            {
              configuration3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
              v24[0] = configuration3;
              customSortDescriptors2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortToken" ascending:1];
              v24[1] = customSortDescriptors2;
              photosDataSource2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
              photosDataSource3 = [v4 photosDataSource];
              [photosDataSource3 setSortDescriptors:photosDataSource2];
              goto LABEL_17;
            }

            configuration3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
            v25[0] = configuration3;
            customSortDescriptors2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
            v25[1] = customSortDescriptors2;
            photosDataSource2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
            v25[2] = photosDataSource2;
            v16 = MEMORY[0x1E695DEC8];
            v17 = v25;
          }
        }

        photosDataSource3 = [v16 arrayWithObjects:v17 count:3];
        photosDataSource4 = [v4 photosDataSource];
        [photosDataSource4 setSortDescriptors:photosDataSource3];
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
  photosViewController = [(PUPickerContainerController *)self photosViewController];
  [photosViewController invalidateHeaderView];
}

- (void)_updateSortOrder
{
  v11 = *MEMORY[0x1E69E9840];
  photosDataSourceManager = [(PUPickerContainerController *)self photosDataSourceManager];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = photosDataSourceManager;

    if (v4)
    {
      pickerSuggestionResultFetcherResult = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
      shouldReverseSortOrder = [pickerSuggestionResultFetcherResult shouldReverseSortOrder];

      photosDataSource = [v4 photosDataSource];
      [photosDataSource setReverseSortOrder:shouldReverseSortOrder == 0];

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
  searchResultUUIDs = [(PUPickerContainerController *)self searchResultUUIDs];

  if (searchResultUUIDs)
  {
    v4 = PXLocalizedString();
  }

  else
  {
    pickerSuggestionResultFetcherResult = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
    selectedFilterableSuggestion = [pickerSuggestionResultFetcherResult selectedFilterableSuggestion];

    if (!selectedFilterableSuggestion || (-[PUPickerContainerController configuration](self, "configuration"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isProcessingSuggestions], v8, !v9))
    {
      v5 = 0;
      v4 = 0;
      goto LABEL_9;
    }

    v4 = PXLocalizedString();
    configuration = [(PUPickerContainerController *)self configuration];
    suggestionGroup = [configuration suggestionGroup];
    isForWallpaper = [suggestionGroup isForWallpaper];

    if ((isForWallpaper & 1) == 0)
    {
      configuration2 = [(PUPickerContainerController *)self configuration];
      generatedFilter = [configuration2 generatedFilter];
      containsStickersFilter = [generatedFilter containsStickersFilter];

      if (!containsStickersFilter)
      {
        v5 = 0;
        goto LABEL_9;
      }
    }
  }

  v5 = PXLocalizedString();
LABEL_9:
  photosViewController = [(PUPickerContainerController *)self photosViewController];
  viewModelIfLoaded = [photosViewController viewModelIfLoaded];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __78__PUPickerContainerController__updatePhotosViewControllerNoContentPlaceholder__block_invoke;
  v20[3] = &unk_1E7B7D080;
  v21 = v4;
  v22 = v5;
  v15 = v5;
  v16 = v4;
  [viewModelIfLoaded performChanges:v20];
}

void __78__PUPickerContainerController__updatePhotosViewControllerNoContentPlaceholder__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setNoContentPlaceholderFallbackTitle:v3];
  [v4 setNoContentPlaceholderFallbackMessage:*(a1 + 40)];
}

- (void)_updateAllowedUUIDsForceReload:(BOOL)reload
{
  searchResultUUIDs = [(PUPickerContainerController *)self searchResultUUIDs];
  if (searchResultUUIDs)
  {
LABEL_6:
    [(PUPickerContainerController *)self _updatePhotosViewControllerNoContentPlaceholder];
    goto LABEL_7;
  }

  pickerSuggestionResultFetcherResult = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
  fetchResult = [pickerSuggestionResultFetcherResult fetchResult];

  if (fetchResult)
  {
    v8 = PXMap();
    v9 = v8;
    v10 = MEMORY[0x1E695E0F0];
    if (v8)
    {
      v10 = v8;
    }

    searchResultUUIDs = v10;

    goto LABEL_6;
  }

  searchResultUUIDs = 0;
LABEL_7:
  photosDataSourceManager = [(PUPickerContainerController *)self photosDataSourceManager];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __62__PUPickerContainerController__updateAllowedUUIDsForceReload___block_invoke_2;
  v21 = &unk_1E7B7D058;
  v22 = searchResultUUIDs;
  reloadCopy = reload;
  v12 = searchResultUUIDs;
  [photosDataSourceManager performChanges:&v18];

  [(PUPickerContainerController *)self _updateSortOrder:v18];
  [(PUPickerContainerController *)self _updateSortDescriptors];
  [(PUPickerContainerController *)self _updateNumberOfItemsToPlayInline];
  [(PUPickerContainerController *)self _updateNavigationBar];
  searchResultUUIDs2 = [(PUPickerContainerController *)self searchResultUUIDs];
  previousSearchResultUUIDs = [(PUPickerContainerController *)self previousSearchResultUUIDs];
  v15 = [searchResultUUIDs2 isEqualToArray:previousSearchResultUUIDs];

  if ((v15 & 1) == 0)
  {
    photosViewController = [(PUPickerContainerController *)self photosViewController];
    [photosViewController px_scrollToInitialPositionAnimated:0];
  }

  searchResultUUIDs3 = [(PUPickerContainerController *)self searchResultUUIDs];
  [(PUPickerContainerController *)self setPreviousSearchResultUUIDs:searchResultUUIDs3];
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

- (void)_addOrReplaceItemViewControllerWithViewController:(id)controller
{
  controllerCopy = controller;
  [(PUPickerContainerController *)self px_addOrReplaceChildViewController:controllerCopy activateConstraints:0];
  view = [(PUPickerContainerController *)self view];
  view2 = [controllerCopy view];
  traitCollection = [(PUPickerContainerController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      safeAreaLayoutGuide = [view safeAreaLayoutGuide];
      topAnchor = [safeAreaLayoutGuide topAnchor];
      topAnchor2 = [view2 topAnchor];
      v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [(PUPickerContainerController *)self setTopConstraint:v11];

      safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
      bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
      bottomAnchor2 = [view2 bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [(PUPickerContainerController *)self setBottomConstraint:v15];

      safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
      leadingAnchor = [safeAreaLayoutGuide3 leadingAnchor];
      leadingAnchor2 = [view2 leadingAnchor];
      v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [(PUPickerContainerController *)self setLeadingConstraint:v19];

      goto LABEL_6;
    }
  }

  else
  {
  }

  topAnchor3 = [view topAnchor];
  topAnchor4 = [view2 topAnchor];
  v22 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [(PUPickerContainerController *)self setTopConstraint:v22];

  bottomAnchor3 = [view bottomAnchor];
  bottomAnchor4 = [view2 bottomAnchor];
  v25 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [(PUPickerContainerController *)self setBottomConstraint:v25];

  safeAreaLayoutGuide3 = [view leadingAnchor];
  leadingAnchor = [view2 leadingAnchor];
  leadingAnchor2 = [safeAreaLayoutGuide3 constraintEqualToAnchor:leadingAnchor];
  [(PUPickerContainerController *)self setLeadingConstraint:leadingAnchor2];
LABEL_6:

  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [view2 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(PUPickerContainerController *)self setTrailingConstraint:v28];

  safeAreaLayoutGuide4 = [view safeAreaLayoutGuide];
  topAnchor5 = [safeAreaLayoutGuide4 topAnchor];
  topAnchor6 = [view2 topAnchor];
  v32 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [(PUPickerContainerController *)self setTopSafeAreaConstraint:v32];

  safeAreaLayoutGuide5 = [view safeAreaLayoutGuide];
  bottomAnchor5 = [safeAreaLayoutGuide5 bottomAnchor];
  bottomAnchor6 = [view2 bottomAnchor];
  v36 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [(PUPickerContainerController *)self setBottomSafeAreaConstraint:v36];

  [view setNeedsUpdateConstraints];
}

- (PXPhotosUIViewController)actionResponderPhotosViewController
{
  actionResponderViewController = [(PUPickerContainerController *)self actionResponderViewController];
  v5 = [actionResponderViewController px_descendantViewControllerWithClass:objc_opt_class()];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      px_descriptionForAssertionMessage = [v5 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1083 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[self.actionResponderViewController px_descendantViewControllerWithClass:[PXPhotosUIViewController class]]", v9, px_descriptionForAssertionMessage}];
    }
  }

  return v5;
}

- (UIViewController)actionResponderViewController
{
  navigationController = [(PUPickerContainerController *)self navigationController];
  visibleViewController = [navigationController visibleViewController];
  px_topmostPresentedViewController = [visibleViewController px_topmostPresentedViewController];
  v6 = px_topmostPresentedViewController;
  if (px_topmostPresentedViewController)
  {
    v7 = px_topmostPresentedViewController;
  }

  else
  {
    navigationController2 = [(PUPickerContainerController *)self navigationController];
    visibleViewController2 = [navigationController2 visibleViewController];
    v10 = visibleViewController2;
    if (visibleViewController2)
    {
      selfCopy = visibleViewController2;
    }

    else
    {
      selfCopy = self;
    }

    v7 = selfCopy;
  }

  return v7;
}

- (UIViewController)itemsViewController
{
  unavailableViewController = [(PUPickerContainerController *)self unavailableViewController];

  if (unavailableViewController)
  {
    unavailableViewController2 = [(PUPickerContainerController *)self unavailableViewController];
    goto LABEL_3;
  }

  configuration = [(PUPickerContainerController *)self configuration];
  sourceType = [configuration sourceType];

  if (sourceType > 6)
  {
    goto LABEL_13;
  }

  if (((1 << sourceType) & 0x1A) != 0)
  {
    unavailableViewController2 = [(PUPickerContainerController *)self peopleViewController];
    goto LABEL_3;
  }

  if (((1 << sourceType) & 0x44) != 0)
  {
    unavailableViewController2 = [(PUPickerContainerController *)self albumsViewController];
    goto LABEL_3;
  }

  if (sourceType == 5)
  {
    unavailableViewController2 = [(PUPickerContainerController *)self collectionsViewController];
  }

  else
  {
LABEL_13:
    if (!sourceType)
    {
      unavailableViewController2 = [(PUPickerContainerController *)self photosViewController];
    }
  }

LABEL_3:

  return unavailableViewController2;
}

- (BOOL)searchBarIsFirstResponder
{
  if ([(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
  {
    searchCoordinator = [(PUPickerContainerController *)self searchCoordinator];
    isEditing = [searchCoordinator isEditing];
  }

  else
  {
    searchCoordinator = [(PUPickerContainerController *)self searchBar];
    if (searchCoordinator)
    {
      firstResponder = [(PUPickerContainerController *)self firstResponder];
      if (firstResponder)
      {
        searchBar = [(PUPickerContainerController *)self searchBar];
        firstResponder2 = [(PUPickerContainerController *)self firstResponder];
        isEditing = [searchBar _containsResponder:firstResponder2];
      }

      else
      {
        isEditing = 0;
      }
    }

    else
    {
      isEditing = 0;
    }
  }

  return isEditing;
}

- (void)photosGridActionPerformer:(id)performer contentFilterStateChanged:(id)changed
{
  changedCopy = changed;
  photosViewController = [(PUPickerContainerController *)self photosViewController];
  viewModel = [photosViewController viewModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__PUPickerContainerController_photosGridActionPerformer_contentFilterStateChanged___block_invoke;
  v9[3] = &unk_1E7B7D010;
  v10 = changedCopy;
  v8 = changedCopy;
  [viewModel performChanges:v9];
}

- (UIViewController)collectionsViewController
{
  if (!self->_collectionsViewController)
  {
    photosViewConfiguration = [(PUPickerContainerController *)self photosViewConfiguration];
    if (photosViewConfiguration)
    {
      configuration2 = photosViewConfiguration;
      sessionInfo = [(PUPickerContainerController *)self sessionInfo];
      if (!sessionInfo)
      {
LABEL_8:

        goto LABEL_9;
      }

      v7 = sessionInfo;
      configuration = [(PUPickerContainerController *)self configuration];
      sourceType = [configuration sourceType];

      if (sourceType != 5)
      {
        goto LABEL_9;
      }

      configuration2 = [(PUPickerContainerController *)self configuration];
      sessionInfo2 = [(PUPickerContainerController *)self sessionInfo];
      if (sessionInfo2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_7:
          photosViewConfiguration2 = [(PUPickerContainerController *)self photosViewConfiguration];
          [(PUPickerContainerController *)self _setupCollectionsViewControllerWithPickerConfiguration:configuration2 sessionInfo:sessionInfo2 photosViewConfiguration:photosViewConfiguration2];

          goto LABEL_8;
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = objc_opt_class();
        v16 = NSStringFromClass(v17);
        px_descriptionForAssertionMessage = [sessionInfo2 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1026 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.sessionInfo", v16, px_descriptionForAssertionMessage}];
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1026 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.sessionInfo", v16}];
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
    photosViewConfiguration = [(PUPickerContainerController *)self photosViewConfiguration];
    if (photosViewConfiguration)
    {
      v7 = photosViewConfiguration;
      sessionInfo = [(PUPickerContainerController *)self sessionInfo];

      if (sessionInfo)
      {
        configuration = [(PUPickerContainerController *)self configuration];
        photosViewConfiguration2 = [(PUPickerContainerController *)self photosViewConfiguration];
        loadingStatusManager = [photosViewConfiguration2 loadingStatusManager];
        selectionCoordinator = [(PUPickerContainerController *)self selectionCoordinator];
        sessionInfo2 = [(PUPickerContainerController *)self sessionInfo];
        if (sessionInfo2)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
LABEL_9:
            photosViewConfiguration3 = [(PUPickerContainerController *)self photosViewConfiguration];
            [(PUPickerContainerController *)self _setupAlbumsViewControllerWithPickerConfiguration:configuration loadingStatusManager:loadingStatusManager selectionCoordinator:selectionCoordinator sessionInfo:sessionInfo2 photosViewConfiguration:photosViewConfiguration3];

            [(PUPickerContainerController *)self updateBars];
            goto LABEL_2;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v18 = objc_opt_class();
          v17 = NSStringFromClass(v18);
          px_descriptionForAssertionMessage = [sessionInfo2 px_descriptionForAssertionMessage];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1011 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.sessionInfo", v17, px_descriptionForAssertionMessage}];
        }

        else
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:1011 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.sessionInfo", v17}];
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
    configuration = [(PUPickerContainerController *)self configuration];
    shouldShowOnboardingHeaderView = [configuration shouldShowOnboardingHeaderView];

    if (shouldShowOnboardingHeaderView)
    {
      objc_initWeak(&location, self);
      v5 = [PUPickerOnboardingHeaderView alloc];
      configuration2 = [(PUPickerContainerController *)self configuration];
      pickerClientDisplayName = [configuration2 pickerClientDisplayName];
      configuration3 = [(PUPickerContainerController *)self configuration];
      isLimitedLibraryPicker = [configuration3 isLimitedLibraryPicker];
      v10 = MEMORY[0x1E69DC628];
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __51__PUPickerContainerController_onboardingHeaderView__block_invoke;
      v19 = &unk_1E7B80890;
      objc_copyWeak(&v20, &location);
      v11 = [v10 actionWithHandler:&v16];
      v12 = [(PUPickerOnboardingHeaderView *)v5 initWithClientDisplayName:pickerClientDisplayName isLimitedLibraryPicker:isLimitedLibraryPicker closeAction:v11, v16, v17, v18, v19];
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
    configuration = [(PUPickerContainerController *)self configuration];
    shouldShowPhotosIndicator = [configuration shouldShowPhotosIndicator];

    if (shouldShowPhotosIndicator)
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
  confirmationBarButtonItem = [(PUPickerContainerController *)self confirmationBarButtonItem];
  isEnabled = [confirmationBarButtonItem isEnabled];

  if (isEnabled)
  {
    confirmationBarButtonItem2 = [(PUPickerContainerController *)self confirmationBarButtonItem];
    [(PUPickerContainerController *)self _performConfirmationAction:confirmationBarButtonItem2];
  }
}

- (void)performCancellationAction
{
  cancellationBarButtonItem = [(PUPickerContainerController *)self cancellationBarButtonItem];
  isEnabled = [cancellationBarButtonItem isEnabled];

  if (isEnabled)
  {
    cancellationBarButtonItem2 = [(PUPickerContainerController *)self cancellationBarButtonItem];
    [(PUPickerContainerController *)self _performCancellationAction:cancellationBarButtonItem2];
  }
}

- (void)zoomOutContent
{
  v9 = *MEMORY[0x1E69E9840];
  actionResponderPhotosViewController = [(PUPickerContainerController *)self actionResponderPhotosViewController];
  v3 = PLPickerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = actionResponderPhotosViewController;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Found %@ as the responder view controller for action zoomOutContent", &v7, 0xCu);
  }

  viewModel = [actionResponderPhotosViewController viewModel];
  gridActionManager = [viewModel gridActionManager];
  v6 = [gridActionManager actionPerformerForActionType:*MEMORY[0x1E69A2930]];
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
  actionResponderPhotosViewController = [(PUPickerContainerController *)self actionResponderPhotosViewController];
  v3 = PLPickerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = actionResponderPhotosViewController;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Found %@ as the responder view controller for action zoomInContent", &v7, 0xCu);
  }

  viewModel = [actionResponderPhotosViewController viewModel];
  gridActionManager = [viewModel gridActionManager];
  v6 = [gridActionManager actionPerformerForActionType:*MEMORY[0x1E69A2928]];
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
  actionResponderPhotosViewController = [(PUPickerContainerController *)self actionResponderPhotosViewController];
  v3 = PLPickerGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = actionResponderPhotosViewController;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Found %@ as the responder view controller for action scrollContentToInitialPosition", &v4, 0xCu);
  }

  [actionResponderPhotosViewController px_scrollToInitialPositionAnimated:1];
}

- (void)setSidebarViewController:(id)controller
{
  controllerCopy = controller;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:919 description:{@"%s must be called on the main thread", "-[PUPickerContainerController setSidebarViewController:]"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_sidebarViewController);

  if (WeakRetained != controllerCopy)
  {
    objc_storeWeak(&self->_sidebarViewController, controllerCopy);
    [(PUPickerContainerController *)self updateBars];
    navigationController = [(PUPickerContainerController *)self navigationController];
    topViewController = [navigationController topViewController];
    px_navigationDestination = [topViewController px_navigationDestination];

    [controllerCopy selectItemForDestination:px_navigationDestination];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PUPickerContainerController_setSidebarViewController___block_invoke;
    v11[3] = &unk_1E7B7CFC8;
    v11[4] = self;
    objc_copyWeak(&v12, &location);
    [(PUPickerContainerController *)self navigateToDestination:px_navigationDestination options:0 completionHandler:v11];
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
  pickerSuggestionResultFetcherResult = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
  analyticsName = [pickerSuggestionResultFetcherResult analyticsName];

  return analyticsName;
}

- (BOOL)isShowingSpatialWallpaperSuggestions
{
  childViewControllers = [(PUPickerContainerController *)self childViewControllers];
  photosViewController = [(PUPickerContainerController *)self photosViewController];
  if ([childViewControllers containsObject:photosViewController])
  {
    configuration = [(PUPickerContainerController *)self configuration];
    if ([configuration showsWallpaperSuggestions])
    {
      pickerSuggestionResultFetcherResult = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
      isSpatialPhotoWallpaperSuggestion = [pickerSuggestionResultFetcherResult isSpatialPhotoWallpaperSuggestion];
    }

    else
    {
      isSpatialPhotoWallpaperSuggestion = 0;
    }
  }

  else
  {
    isSpatialPhotoWallpaperSuggestion = 0;
  }

  return isSpatialPhotoWallpaperSuggestion;
}

- (BOOL)isShowingLiveWallpaperSuggestions
{
  childViewControllers = [(PUPickerContainerController *)self childViewControllers];
  photosViewController = [(PUPickerContainerController *)self photosViewController];
  if ([childViewControllers containsObject:photosViewController])
  {
    configuration = [(PUPickerContainerController *)self configuration];
    if ([configuration showsWallpaperSuggestions])
    {
      pickerSuggestionResultFetcherResult = [(PUPickerContainerController *)self pickerSuggestionResultFetcherResult];
      isLiveWallpaperSuggestion = [pickerSuggestionResultFetcherResult isLiveWallpaperSuggestion];
    }

    else
    {
      isLiveWallpaperSuggestion = 0;
    }
  }

  else
  {
    isLiveWallpaperSuggestion = 0;
  }

  return isLiveWallpaperSuggestion;
}

- (BOOL)hasContent
{
  photosViewController = [(PUPickerContainerController *)self photosViewController];

  if (photosViewController)
  {
    photosDataSourceManager = [(PUPickerContainerController *)self photosDataSourceManager];
    dataSource = [photosDataSourceManager dataSource];
    if ([dataSource containsAnyItems])
    {
      isFiltered = 1;
    }

    else
    {
      photosDataSourceManager2 = [(PUPickerContainerController *)self photosDataSourceManager];
      dataSource2 = [photosDataSourceManager2 dataSource];
      isFiltered = [dataSource2 isFiltered];
    }

    goto LABEL_11;
  }

  configuration = [(PUPickerContainerController *)self configuration];
  if ([configuration sourceType] != 2)
  {
    configuration2 = [(PUPickerContainerController *)self configuration];
    sourceType = [configuration2 sourceType];

    if (sourceType == 6)
    {
      goto LABEL_9;
    }

    configuration3 = [(PUPickerContainerController *)self configuration];
    sourceType2 = [configuration3 sourceType];

    if (sourceType2 == 5)
    {
      collectionsViewController = [(PUPickerContainerController *)self collectionsViewController];
      goto LABEL_10;
    }

    configuration4 = [(PUPickerContainerController *)self configuration];
    if ([configuration4 sourceType] != 4)
    {
      configuration5 = [(PUPickerContainerController *)self configuration];
      if ([configuration5 sourceType] != 1)
      {
        configuration6 = [(PUPickerContainerController *)self configuration];
        sourceType3 = [configuration6 sourceType];

        if (sourceType3 != 3)
        {
          return 0;
        }

        goto LABEL_19;
      }
    }

LABEL_19:
    collectionsViewController = [(PUPickerContainerController *)self peopleViewController];
    goto LABEL_10;
  }

LABEL_9:
  collectionsViewController = [(PUPickerContainerController *)self albumsViewController];
LABEL_10:
  photosDataSourceManager = collectionsViewController;
  isFiltered = collectionsViewController != 0;
LABEL_11:

  return isFiltered;
}

- (void)resignSearchBarAsFirstResponder
{
  if ([(PUPickerContainerController *)self searchBarIsFirstResponder])
  {
    firstResponder = [(PUPickerContainerController *)self firstResponder];
    [firstResponder resignFirstResponder];
  }
}

- (void)makeSearchBarAsFirstResponder
{
  configuration = [(PUPickerContainerController *)self configuration];
  allowsSearchBar = [configuration allowsSearchBar];

  if (allowsSearchBar)
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

- (void)searchWithString:(id)string
{
  stringCopy = string;
  if ([(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
  {
    searchBar = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy];

    searchCoordinator = [(PUPickerContainerController *)self searchCoordinator];
    [searchCoordinator setSearchText:searchBar];
  }

  else
  {
    searchBar = [(PUPickerContainerController *)self searchBar];
    searchCoordinator = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy];

    [searchBar updateSearchText:searchCoordinator];
  }
}

- (void)updateBars
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPickerContainerController.m" lineNumber:852 description:{@"%s must be called on the main thread", "-[PUPickerContainerController updateBars]"}];
  }

  [(PUPickerContainerController *)self _cleanUpInteractiveBarTransitionIfNeeded];
  [(PUPickerContainerController *)self _updateNavigationBar];

  [(PUPickerContainerController *)self _updateToolbar];
}

- (void)navigationWillPresentViewController:(id)controller
{
  [(PUPickerContainerController *)self updateBars];

  [(PUPickerContainerController *)self _updateInteractiveBarTransition];
}

- (void)setReplacesConfirmationButtonWithActivityIndicator:(BOOL)indicator
{
  if (self->_replacesConfirmationButtonWithActivityIndicator != indicator)
  {
    self->_replacesConfirmationButtonWithActivityIndicator = indicator;
    [(PUPickerContainerController *)self updateBars];
  }
}

- (id)collectionListForAlbumIdentifier:(id)identifier configuration:(id)configuration
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  photoLibrary = [configurationCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeAllPhotosSmartAlbum:1];
  v9 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithLocalIdentifiers:identifierCopy options:librarySpecificFetchOptions];
  v10 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:identifierCopy];

  v11 = [v9 px_fetchedObjectIDsSortedByLocalIdentifiers:v10];
  v12 = objc_alloc(MEMORY[0x1E69788E0]);
  photoLibrary2 = [configurationCopy photoLibrary];

  v14 = [v12 initWithOids:v11 photoLibrary:photoLibrary2 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];
  v15 = MEMORY[0x1E6978760];
  v16 = PXLocalizedString();
  v17 = [v15 transientCollectionListWithCollectionsFetchResult:v14 title:v16];

  return v17;
}

- (int64_t)_currentPeopleSortOrderForPhotoLibrary:(id)library
{
  result = [MEMORY[0x1E69C3790] currentSortOrderFor:library];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (void)_setupPeopleOrPetsPickerWithPickerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [configurationCopy sourceType] == 4 || objc_msgSend(configurationCopy, "sourceType") == 3;
  v20 = v4;
  preselectedItemIdentifiers = [configurationCopy preselectedItemIdentifiers];
  array = [preselectedItemIdentifiers array];

  photoLibrary = [configurationCopy photoLibrary];
  allPersonIdentifiers = [configurationCopy allPersonIdentifiers];
  array2 = [allPersonIdentifiers array];
  v9 = [array count];
  suggestedIdentifiers = array;
  if (!v9)
  {
    peopleConfiguration = [configurationCopy peopleConfiguration];
    suggestedIdentifiers = [peopleConfiguration suggestedIdentifiers];
  }

  peopleConfiguration2 = [configurationCopy peopleConfiguration];
  disabledIdentifiers = [peopleConfiguration2 disabledIdentifiers];
  selectionLimit = [configurationCopy selectionLimit];
  v14 = [configurationCopy mode] == 1;
  BYTE1(v18) = v20;
  LOBYTE(v18) = [configurationCopy hasClearBackgroundColor];
  v15 = [(PUPickerContainerController *)self _peoplePickerViewControllerWithPhotoLibrary:photoLibrary personIdentifiers:array2 preselectedLocalIdentifiers:suggestedIdentifiers disabledLocalIdentifiers:disabledIdentifiers selectionLimit:selectionLimit compactMode:v14 transparentBackground:v18 wantsPets:?];

  if (!v9)
  {
  }

  peopleViewController = self->_peopleViewController;
  self->_peopleViewController = v15;

  photoLibrary2 = [configurationCopy photoLibrary];
  [(PUPickerContainerController *)self setPeopleSortOrderType:[(PUPickerContainerController *)self _currentPeopleSortOrderForPhotoLibrary:photoLibrary2]];
}

- (void)_setupCollectionsViewControllerWithPickerConfiguration:(id)configuration sessionInfo:(id)info photosViewConfiguration:(id)viewConfiguration
{
  if (viewConfiguration)
  {
    infoCopy = info;
    configurationCopy = configuration;
    selectionCoordinator = [(PUPickerContainerController *)self selectionCoordinator];
    v10 = [(PUPickerContainerController *)self _albumsPickerViewControllerWithConfiguration:configurationCopy sessionInfo:infoCopy collectionList:0 selectionCoordinator:selectionCoordinator];

    collectionsViewController = self->_collectionsViewController;
    self->_collectionsViewController = v10;
  }
}

- (void)_setupAlbumsViewControllerWithPickerConfiguration:(id)configuration loadingStatusManager:(id)manager selectionCoordinator:(id)coordinator sessionInfo:(id)info photosViewConfiguration:(id)viewConfiguration
{
  v34[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  infoCopy = info;
  if (viewConfiguration)
  {
    if (([configurationCopy isAlbumPicker] & 1) != 0 || objc_msgSend(configurationCopy, "isCollectionsPicker"))
    {
      preselectedItemIdentifiers = [configurationCopy preselectedItemIdentifiers];
      v13 = [preselectedItemIdentifiers count];

      if (v13)
      {
        photoLibrary = [configurationCopy photoLibrary];
        librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

        preselectedItemIdentifiers2 = [configurationCopy preselectedItemIdentifiers];
        firstObject = [preselectedItemIdentifiers2 firstObject];

        v18 = MEMORY[0x1E6978650];
        v34[0] = firstObject;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
        v20 = [v18 fetchAssetCollectionsWithLocalIdentifiers:v19 options:librarySpecificFetchOptions];
        firstObject2 = [v20 firstObject];

        if (firstObject2)
        {
          [infoCopy setSourceAlbum:firstObject2];
          [infoCopy setScrollToSourceAlbumWhenPresented:1];
          [infoCopy setShowCheckmarkOnSourceAlbum:1];
        }
      }
    }

    albumsConfiguration = [configurationCopy albumsConfiguration];
    _identifiers = [albumsConfiguration _identifiers];
    v24 = [_identifiers count];

    if (v24)
    {
      [infoCopy setAllowSelectingNonEditableAlbums:1];
      albumsConfiguration2 = [configurationCopy albumsConfiguration];
      _identifiers2 = [albumsConfiguration2 _identifiers];
      v27 = [(PUPickerContainerController *)self collectionListForAlbumIdentifier:_identifiers2 configuration:configurationCopy];
    }

    else
    {
      v27 = 0;
    }

    selectionCoordinator = [(PUPickerContainerController *)self selectionCoordinator];
    v29 = [(PUPickerContainerController *)self _albumsPickerViewControllerWithConfiguration:configurationCopy sessionInfo:infoCopy collectionList:v27 selectionCoordinator:selectionCoordinator];

    hasClearBackgroundColor = [configurationCopy hasClearBackgroundColor];
    view = [(UIViewController *)v29 view];
    layer = [view layer];
    [layer setHitTestsAsOpaque:hasClearBackgroundColor];

    albumsViewController = self->_albumsViewController;
    self->_albumsViewController = v29;
  }
}

- (void)_setupPhotosTabWithPhotosViewConfiguration:(id)configuration
{
  if (configuration)
  {
    v4 = MEMORY[0x1E69C38F8];
    configurationCopy = configuration;
    v6 = [[v4 alloc] initWithConfiguration:configurationCopy];

    configuration = [(PUPickerContainerController *)self configuration];
    hasClearBackgroundColor = [configuration hasClearBackgroundColor];
    view = [v6 view];
    layer = [view layer];
    [layer setHitTestsAsOpaque:hasClearBackgroundColor];

    photosViewController = self->_photosViewController;
    self->_photosViewController = v6;
  }
}

- (void)_setupViewControllersWithConfiguration:(id)configuration loadingStatusManager:(id)manager selectionCoordinator:(id)coordinator
{
  v82 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  managerCopy = manager;
  coordinatorCopy = coordinator;
  v11 = configurationCopy;
  v74 = managerCopy;
  v75 = coordinatorCopy;
  selfCopy = self;
  v76 = v11;
  containerCollectionFetchResult = [v11 containerCollectionFetchResult];
  firstObject = [containerCollectionFetchResult firstObject];
  if (firstObject && (v15 = [v11 isPeopleOrPetsPicker], firstObject, (v15 & 1) == 0))
  {
    generatedFilter = [v11 generatedFilter];
    assetPredicate = [generatedFilter assetPredicate];

    suggestionGroup = [v11 suggestionGroup];
    if (suggestionGroup)
    {
      v20 = [MEMORY[0x1E696AE18] predicateWithValue:0];
    }

    else
    {
      v20 = 0;
    }

    customSortDescriptors = [v11 customSortDescriptors];

    if (customSortDescriptors)
    {
      customSortDescriptors2 = [v11 customSortDescriptors];
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
        customSortDescriptors2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&location count:3];
      }

      else
      {
        v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
        location = v23;
        v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortToken" ascending:1];
        v80 = v26;
        customSortDescriptors2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&location count:2];
      }
    }

    containerCollectionFetchResult2 = [v11 containerCollectionFetchResult];
    BYTE2(v71) = 0;
    BYTE1(v71) = [v11 allowsSwipeToSelect];
    LOBYTE(v71) = 1;
    v16 = PXPhotosViewConfigurationForImagePickerWithAssetCollectionFetchResult();

    [v16 setShowLoadingPlaceholderWhenEmpty:{v20 != 0, v71}];
    [v16 setIgnoreFilterStateWhenNotFiltering:v20 != 0];
    [v16 setStartsInSelectMode:1];
    [v16 setWantsNumberedSelectionStyle:{objc_msgSend(v76, "isOrderedSelection")}];
    generatedFilter2 = [v76 generatedFilter];
    [v16 setNoContentPlaceholderType:{objc_msgSend(generatedFilter2, "noContentPlaceholderType")}];

    [v16 setLoadingStatusManager:v74];
    [v16 setDelegate:selfCopy];
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
    pickerClientBundleIdentifier = [v76 pickerClientBundleIdentifier];
    [v16 setPickerClientBundleIdentifier:pickerClientBundleIdentifier];

    v31 = objc_alloc(MEMORY[0x1E69C3900]);
    photoLibrary = [v76 photoLibrary];
    v33 = [v31 initWithPhotoLibrary:photoLibrary];
    photosAppConfiguration = [v16 photosAppConfiguration];
    [photosAppConfiguration setViewOptionsModel:v33];

    [v16 setIgnoreFilterPredicateAssert:1];
    phPickerConfiguration = [v76 phPickerConfiguration];
    _aspectRatio = [phPickerConfiguration _aspectRatio];

    if (_aspectRatio)
    {
      [_aspectRatio _aspectRatio];
      if (v37 == *MEMORY[0x1E6979180])
      {
        v38 = *MEMORY[0x1E69A2948];
      }

      else
      {
        [_aspectRatio _aspectRatio];
      }

      [v16 setItemAspectRatio:v38];
      [v16 setSectionBodyStyle:1];
    }

    if ([v76 showsWallpaperSuggestions])
    {
      [v16 setOverrideDefaultNumberOfColumns:3];
      [v16 setPreferredColumnCountsDelegate:selfCopy];
      [v16 setUseLowMemoryDecode:1];
      [v16 setItemAspectRatio:*MEMORY[0x1E69A2948]];
      [v16 setPreferredAssetCropDelegate:selfCopy];
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
      generatedFilter3 = [v76 generatedFilter];
      possibleAssetTypes = [generatedFilter3 possibleAssetTypes];

      if (possibleAssetTypes == 16)
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

  objc_storeStrong(&selfCopy->_photosViewConfiguration, v16);
  if (v16)
  {
    obj = [(PUPickerContainerController *)selfCopy sessionInfoForConfiguration:v76 loadingStatusManager:v74 selectionCoordinator:v75];
    objc_storeStrong(&selfCopy->_sessionInfo, obj);
    if (![v76 sourceType])
    {
      [(PUPickerContainerController *)selfCopy _setupPhotosTabWithPhotosViewConfiguration:v16];
    }

    dataSourceManager = [v16 dataSourceManager];
    objc_storeStrong(&selfCopy->_photosDataSourceManager, dataSourceManager);
    selectionManager = [v16 selectionManager];
    photosSelectionManager = selfCopy->_photosSelectionManager;
    selfCopy->_photosSelectionManager = selectionManager;

    objc_initWeak(&location, selfCopy);
    v43 = v76;
    v44 = selfCopy;
    suggestionGroup2 = [v43 suggestionGroup];
    if (suggestionGroup2)
    {
      v46 = [PUPickerSuggestionsView alloc];
      photoLibrary2 = [v43 photoLibrary];
      isProcessingSuggestions = [v43 isProcessingSuggestions];
      showsWallpaperSuggestions = [v43 showsWallpaperSuggestions];
      generatedFilter4 = [v43 generatedFilter];
      v51 = -[PUPickerSuggestionsView initWithPhotoLibrary:suggestionGroup:isProcessing:isDeviceAspectRatioContentMode:contentHasSpecialFilter:](v46, "initWithPhotoLibrary:suggestionGroup:isProcessing:isDeviceAspectRatioContentMode:contentHasSpecialFilter:", photoLibrary2, suggestionGroup2, isProcessingSuggestions, showsWallpaperSuggestions, [generatedFilter4 containsStickersFilter]);

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
    suggestionGroup3 = [v52 suggestionGroup];

    if (suggestionGroup3)
    {
      v55 = [PUPickerSuggestionResultFetcher alloc];
      photoLibrary3 = [v52 photoLibrary];
      isProcessingSuggestions2 = [v52 isProcessingSuggestions];
      showsWallpaperSuggestions2 = [v52 showsWallpaperSuggestions];
      generatedFilter5 = [v52 generatedFilter];
      v60 = -[PUPickerSuggestionResultFetcher initWithPhotoLibrary:isProcessing:isDeviceAspectRatioContentMode:contentHasSpecialFilter:updateHandler:](v55, "initWithPhotoLibrary:isProcessing:isDeviceAspectRatioContentMode:contentHasSpecialFilter:updateHandler:", photoLibrary3, isProcessingSuggestions2, showsWallpaperSuggestions2, [generatedFilter5 containsStickersFilter], v53);
    }

    else
    {
      v60 = 0;
    }

    selectedSuggestion = [(PUPickerSuggestionsView *)v51 selectedSuggestion];
    [(PUPickerSuggestionResultFetcher *)v60 setCurrentSuggestion:selectedSuggestion];

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
    [(PUPickerContainerController *)selfCopy _setupPeopleOrPetsPickerWithPickerConfiguration:v76];
  }

  else
  {
    v67 = MEMORY[0x1E6979158];
    phPickerConfiguration2 = [v76 phPickerConfiguration];
    v69 = [v67 unavailableViewController:4 configuration:phPickerConfiguration2 error:0 delegate:0];
    unavailableViewController = selfCopy->_unavailableViewController;
    selfCopy->_unavailableViewController = v69;
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

- (id)sessionInfoForConfiguration:(id)configuration loadingStatusManager:(id)manager selectionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  managerCopy = manager;
  configurationCopy = configuration;
  v11 = -[PUImagePickerSessionInfo initWithPhotosViewDelegate:loadingStatusManager:allowMultipleSelection:limitedLibrary:]([PUImagePickerSessionInfo alloc], "initWithPhotosViewDelegate:loadingStatusManager:allowMultipleSelection:limitedLibrary:", self, managerCopy, 1, [configurationCopy isLimitedLibraryPicker]);

  [(PUSessionInfo *)v11 setSelectionCoordinator:coordinatorCopy];
  -[PUSessionInfo setAllowsSwipeToSelect:](v11, "setAllowsSwipeToSelect:", [configurationCopy allowsSwipeToSelect]);
  generatedFilter = [configurationCopy generatedFilter];
  assetPredicate = [generatedFilter assetPredicate];
  [(PUSessionInfo *)v11 setAssetsFilterPredicate:assetPredicate];

  generatedFilter2 = [configurationCopy generatedFilter];
  -[PUSessionInfo setAssetTypesToInclude:](v11, "setAssetTypesToInclude:", [generatedFilter2 genericAssetTypes]);

  generatedFilter3 = [configurationCopy generatedFilter];
  -[PUSessionInfo setNoContentPlaceholderType:](v11, "setNoContentPlaceholderType:", [generatedFilter3 noContentPlaceholderType]);

  -[PUSessionInfo setWantsNumberedSelectionStyle:](v11, "setWantsNumberedSelectionStyle:", [configurationCopy isOrderedSelection]);
  -[PUSessionInfo setExcludesSharedAlbums:](v11, "setExcludesSharedAlbums:", [configurationCopy excludesSharedAlbums]);
  -[PUSessionInfo setExcludesHiddenAlbum:](v11, "setExcludesHiddenAlbum:", [configurationCopy excludesHiddenAlbum]);
  -[PUSessionInfo setExcludesNewAlbumCreation:](v11, "setExcludesNewAlbumCreation:", [configurationCopy allowsNewItemCreation] ^ 1);
  [(PUSessionInfo *)v11 setReverseSortOrder:1];
  -[PUSessionInfo setHasClearBackgroundColor:](v11, "setHasClearBackgroundColor:", [configurationCopy hasClearBackgroundColor]);
  [(PUSessionInfo *)v11 setContentStartingPosition:2];
  -[PUSessionInfo setSelectingTargetAlbum:](v11, "setSelectingTargetAlbum:", [configurationCopy sourceType] == 2);
  pickerClientBundleIdentifier = [configurationCopy pickerClientBundleIdentifier];

  [(PUSessionInfo *)v11 setPickerClientBundleIdentifier:pickerClientBundleIdentifier];
  [(PUSessionInfo *)v11 addSessionInfoObserver:self];

  return v11;
}

- (PXPhotosFilterToggleButtonController)filterButtonController
{
  filterButtonController = self->_filterButtonController;
  if (!filterButtonController)
  {
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    if ((MEMORY[0x1B8C6D660]() & 1) == 0)
    {
      [plainButtonConfiguration setButtonSize:2];
      [plainButtonConfiguration setCornerStyle:4];
      tintColor = [MEMORY[0x1E69DC888] tintColor];
      [plainButtonConfiguration setBaseBackgroundColor:tintColor];

      v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"line.horizontal.3.decrease"];
      [plainButtonConfiguration setImage:v6];
    }

    v7 = objc_alloc(MEMORY[0x1E69C38D8]);
    photosViewController = [(PUPickerContainerController *)self photosViewController];
    viewModelIfLoaded = [photosViewController viewModelIfLoaded];
    v10 = [v7 initWithViewModel:viewModelIfLoaded actionType:*MEMORY[0x1E69A2938]];

    v11 = objc_alloc(MEMORY[0x1E69C38C8]);
    photosViewController2 = [(PUPickerContainerController *)self photosViewController];
    viewModelIfLoaded2 = [photosViewController2 viewModelIfLoaded];
    v14 = [v11 initWithViewModel:viewModelIfLoaded2 buttonConfiguration:plainButtonConfiguration actionPerformer:v10];

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
  peopleSortOrderType = [(PUPickerContainerController *)self peopleSortOrderType];
  if (peopleSortOrderType == 1)
  {
    v5 = @"arrow.up.to.line";
    goto LABEL_5;
  }

  if (peopleSortOrderType == 2)
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

  peopleSortOrderType2 = [(PUPickerContainerController *)self peopleSortOrderType];
  if ((peopleSortOrderType2 - 1) >= 2)
  {
    if (peopleSortOrderType2)
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
  configuration = [(PUPickerContainerController *)self configuration];
  sourceType = [configuration sourceType];

  if (sourceType <= 4 && ((1 << sourceType) & 0x1A) != 0)
  {
    _peopleSortAndFilterMenu = [(PUPickerContainerController *)self _peopleSortAndFilterMenu];
    [(UIBarButtonItem *)self->_toolbarSortAndFilterBarButtonItem setMenu:_peopleSortAndFilterMenu];
  }
}

- (UIBarButtonItem)toolbarSortAndFilterBarButtonItem
{
  toolbarSortAndFilterBarButtonItem = self->_toolbarSortAndFilterBarButtonItem;
  if (!toolbarSortAndFilterBarButtonItem)
  {
    configuration = [(PUPickerContainerController *)self configuration];
    sourceType = [configuration sourceType];

    if (sourceType <= 4 && ((1 << sourceType) & 0x1A) != 0)
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
      filterButtonController = [(PUPickerContainerController *)self filterButtonController];
      barButtonItem = [filterButtonController barButtonItem];
      v13 = self->_toolbarSortAndFilterBarButtonItem;
      self->_toolbarSortAndFilterBarButtonItem = barButtonItem;

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
  traitCollection = [(PUPickerContainerController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {
    v4 = 1;
  }

  else
  {
    traitCollection2 = [(PUPickerContainerController *)self traitCollection];
    v4 = [traitCollection2 verticalSizeClass] == 1;
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v19.receiver = self;
  v19.super_class = PUPickerContainerController;
  [(PUPickerContainerController *)&v19 traitCollectionDidChange:changeCopy];
  traitCollection = [(PUPickerContainerController *)self traitCollection];
  _presentationSemanticContext = [traitCollection _presentationSemanticContext];
  _presentationSemanticContext2 = [changeCopy _presentationSemanticContext];

  if (_presentationSemanticContext != _presentationSemanticContext2)
  {
    [(PUPickerContainerController *)self updateBars];
  }

  traitCollection2 = [(PUPickerContainerController *)self traitCollection];
  horizontalSizeClass = [traitCollection2 horizontalSizeClass];
  if (horizontalSizeClass != [changeCopy horizontalSizeClass])
  {

    goto LABEL_7;
  }

  traitCollection3 = [(PUPickerContainerController *)self traitCollection];
  verticalSizeClass = [traitCollection3 verticalSizeClass];
  verticalSizeClass2 = [changeCopy verticalSizeClass];

  if (verticalSizeClass != verticalSizeClass2)
  {
LABEL_7:
    isCompactWidthOrHeight = [(PUPickerContainerController *)self isCompactWidthOrHeight];
    searchCoordinator = [(PUPickerContainerController *)self searchCoordinator];
    [searchCoordinator setIsCompact:isCompactWidthOrHeight];

    [(PUPickerContainerController *)self updateBars];
  }

  traitCollection4 = [(PUPickerContainerController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection4 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    photosViewController = [(PUPickerContainerController *)self photosViewController];
    [photosViewController invalidateHeaderView];
  }
}

- (void)updateViewConstraints
{
  configuration = [(PUPickerContainerController *)self configuration];
  mode = [configuration mode];
  v5 = mode == 1;
  v6 = mode != 1;

  topConstraint = [(PUPickerContainerController *)self topConstraint];
  [topConstraint setActive:v6];

  bottomConstraint = [(PUPickerContainerController *)self bottomConstraint];
  [bottomConstraint setActive:v6];

  topSafeAreaConstraint = [(PUPickerContainerController *)self topSafeAreaConstraint];
  [topSafeAreaConstraint setActive:v5];

  bottomSafeAreaConstraint = [(PUPickerContainerController *)self bottomSafeAreaConstraint];
  [bottomSafeAreaConstraint setActive:v5];

  leadingConstraint = [(PUPickerContainerController *)self leadingConstraint];
  [leadingConstraint setActive:1];

  trailingConstraint = [(PUPickerContainerController *)self trailingConstraint];
  [trailingConstraint setActive:1];

  configuration2 = [(PUPickerContainerController *)self configuration];
  if ([configuration2 supportsInteractiveBarTransition])
  {
    configuration3 = [(PUPickerContainerController *)self configuration];
    [configuration3 interactiveBarTransitionFractionExpanded];
    v16 = v15 < 0.8;
  }

  else
  {
    v16 = 0;
  }

  photosIndicatorTopConstraint = [(PUPickerContainerController *)self photosIndicatorTopConstraint];
  [photosIndicatorTopConstraint setActive:v16];

  photosIndicatorLeadingConstraint = [(PUPickerContainerController *)self photosIndicatorLeadingConstraint];
  [photosIndicatorLeadingConstraint setActive:v16];

  photosIndicatorTopSafeAreaConstraint = [(PUPickerContainerController *)self photosIndicatorTopSafeAreaConstraint];
  [photosIndicatorTopSafeAreaConstraint setActive:v16 ^ 1];

  photosIndicatorLeadingSafeAreaConstraint = [(PUPickerContainerController *)self photosIndicatorLeadingSafeAreaConstraint];
  [photosIndicatorLeadingSafeAreaConstraint setActive:v16 ^ 1];

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
    view = [(PUPickerContainerController *)self view];
    [view safeAreaInsets];
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
  photosIndicator = [(PUPickerContainerController *)self photosIndicator];
  superview = [photosIndicator superview];
  photosIndicator2 = [(PUPickerContainerController *)self photosIndicator];
  [superview bringSubviewToFront:photosIndicator2];

  if ([(PUPickerContainerController *)self shouldStopScrollingItemsViewControllerToTop])
  {
    goto LABEL_13;
  }

  itemsViewController = [(PUPickerContainerController *)self itemsViewController];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = itemsViewController;
  }

  else
  {
    v7 = 0;
  }

  viewModel = [v7 viewModel];
  firstSelectedAssetReference = [viewModel firstSelectedAssetReference];

  configuration = [(PUPickerContainerController *)self configuration];
  if (![configuration shouldScrollToSelectedItemInitially] || !v7)
  {

    goto LABEL_11;
  }

  if (!firstSelectedAssetReference)
  {
LABEL_11:
    itemsViewController2 = [(PUPickerContainerController *)self itemsViewController];
    [itemsViewController2 px_scrollToInitialPositionAnimated:0];

    goto LABEL_12;
  }

  [v7 scrollToRevealAssetReference:firstSelectedAssetReference completion:0];
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

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PUPickerContainerController;
  [(PUPickerContainerController *)&v5 viewDidAppear:appear];
  containerControllerActionHandler = [(PUPickerContainerController *)self containerControllerActionHandler];
  [containerControllerActionHandler containerControllerDidAppear:self];

  [(PUPickerContainerController *)self _showPhotosIndicatorBrieflyIfNeeded];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v11.receiver = self;
  v11.super_class = PUPickerContainerController;
  [(PUPickerContainerController *)&v11 viewIsAppearing:appearing];
  photosViewController = [(PUPickerContainerController *)self photosViewController];
  viewModel = [photosViewController viewModel];
  [viewModel registerChangeObserver:self context:PUPhotoPickerPhotosViewControllerViewModelObservationContext];

  photosViewController2 = [(PUPickerContainerController *)self photosViewController];
  contentController = [photosViewController2 contentController];
  gridView = [contentController gridView];
  scrollViewController = [gridView scrollViewController];
  [scrollViewController registerObserver:self];

  pickerSuggestionsView = [(PUPickerContainerController *)self pickerSuggestionsView];
  [pickerSuggestionsView setNeedsRTLInitialOffsetCorrection];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = PUPickerContainerController;
  [(PUPickerContainerController *)&v21 viewDidLoad];
  [(PUPickerContainerController *)self px_enableExtendedTraitCollection];
  navigationBarBottomPalette = [(PUPickerContainerController *)self navigationBarBottomPalette];
  navigationItem = [(PUPickerContainerController *)self navigationItem];
  [navigationItem _setBottomPalette:navigationBarBottomPalette];

  if ([(PUPickerContainerController *)self _isConfiguredForStickerSuggestionGroup])
  {
    [(PUPickerContainerController *)self _updateNumberOfItemsToPlayInline];
  }

  if ([(PUPickerContainerController *)self _shouldUseSolariumPickerSearch])
  {
    configuration = [(PUPickerContainerController *)self configuration];
    allowsSearch = [configuration allowsSearch];

    if (allowsSearch)
    {
      navigationController = [(PUPickerContainerController *)self navigationController];
      searchCoordinator = [(PUPickerContainerController *)self searchCoordinator];
      [searchCoordinator setSuggestionViewContainerController:navigationController];
    }
  }

  photosViewController = [(PUPickerContainerController *)self photosViewController];
  viewModel = [photosViewController viewModel];
  gridActionManager = [viewModel gridActionManager];
  [gridActionManager setPerformerDelegate:self];

  configuration2 = [(PUPickerContainerController *)self configuration];
  albumsConfiguration = [configuration2 albumsConfiguration];
  if (albumsConfiguration || (-[PUPickerContainerController configuration](self, "configuration"), albumsConfiguration = objc_claimAutoreleasedReturnValue(), ([albumsConfiguration isAlbumPicker] & 1) != 0))
  {

LABEL_9:
    albumsViewController = [(PUPickerContainerController *)self albumsViewController];
    goto LABEL_10;
  }

  configuration3 = [(PUPickerContainerController *)self configuration];
  isSharedAlbumPicker = [configuration3 isSharedAlbumPicker];

  if (isSharedAlbumPicker)
  {
    goto LABEL_9;
  }

  photosViewController2 = [(PUPickerContainerController *)self photosViewController];

  if (photosViewController2)
  {
    albumsViewController = [(PUPickerContainerController *)self photosViewController];
  }

  else
  {
    peopleViewController = [(PUPickerContainerController *)self peopleViewController];

    if (peopleViewController)
    {
      albumsViewController = [(PUPickerContainerController *)self peopleViewController];
    }

    else
    {
      collectionsViewController = [(PUPickerContainerController *)self collectionsViewController];

      if (collectionsViewController)
      {
        [(PUPickerContainerController *)self collectionsViewController];
      }

      else
      {
        [(PUPickerContainerController *)self unavailableViewController];
      }
      albumsViewController = ;
    }
  }

LABEL_10:
  v15 = albumsViewController;
  [(PUPickerContainerController *)self _addOrReplaceItemViewControllerWithViewController:albumsViewController];
  [(PUPickerContainerController *)self updateBars];
}

- (void)dealloc
{
  [MEMORY[0x1E69C33E8] tearDownPrivacyControllersIfNeeded];
  v3.receiver = self;
  v3.super_class = PUPickerContainerController;
  [(PUPickerContainerController *)&v3 dealloc];
}

- (PUPickerContainerController)initWithConfiguration:(id)configuration loadingStatusManager:(id)manager selectionCoordinator:(id)coordinator additionalSelectionState:(id)state actionHandler:(id)handler
{
  v76[2] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  managerCopy = manager;
  coordinatorCopy = coordinator;
  stateCopy = state;
  handlerCopy = handler;
  v75.receiver = self;
  v75.super_class = PUPickerContainerController;
  v16 = [(PUPickerContainerController *)&v75 initWithNibName:0 bundle:0];
  if (v16)
  {
    [configurationCopy registerChangeObserver:v16 context:PUPhotoPickerConfigurationObservationContext];
    observable = [stateCopy observable];
    [observable registerChangeObserver:v16 context:PUPhotoPickerAdditionalSelectionStateObservationContext];

    objc_storeStrong(&v16->_configuration, configuration);
    objc_storeStrong(&v16->_selectionCoordinator, coordinator);
    objc_storeStrong(&v16->_additionalSelectionState, state);
    objc_storeWeak(&v16->_containerControllerActionHandler, handlerCopy);
    v18 = objc_alloc(MEMORY[0x1E69DCF38]);
    allPhotosVirtualCollection = [configurationCopy allPhotosVirtualCollection];
    title = [allPhotosVirtualCollection title];
    v76[0] = title;
    v21 = PXLemonadeLocalizedString();
    v76[1] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
    v23 = [v18 initWithItems:v22];

    [v23 setClipsToBounds:1];
    [v23 _setAlwaysEmitValueChanged:1];
    [v23 addTarget:v16 action:sel_handleNavigationBarSegmentedControl_ forControlEvents:4096];
    [v23 setSelectedSegmentIndex:0];
    objc_storeStrong(&v16->_navigationBarSegmentedControl, v23);
    if ([configurationCopy allowsSearch])
    {
      objc_initWeak(&location, v16);
      if ([(PUPickerContainerController *)v16 _shouldUseSolariumPickerSearch])
      {
        v54 = [PUPickerSearchCoordinator alloc];
        photoLibrary = [configurationCopy photoLibrary];
        isCompactWidthOrHeight = [(PUPickerContainerController *)v16 isCompactWidthOrHeight];
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
        v27 = [(PUPickerSearchCoordinator *)v54 initWithPhotoLibrary:photoLibrary configuration:configurationCopy isCompact:isCompactWidthOrHeight searchHandler:v72 contextualVideoThumbnailsHandler:v70 scopeHandler:v68 editingHandler:v66];

        searchCoordinator = v16->_searchCoordinator;
        v16->_searchCoordinator = v27;

        objc_destroyWeak(&v67);
      }

      else
      {
        v29 = [PUPickerSearchBar alloc];
        photoLibrary2 = [configurationCopy photoLibrary];
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
        v31 = [(PUPickerSearchBar *)v29 initWithPhotoLibrary:photoLibrary2 searchHandler:v64 searchContextualVideoThumbnailHandler:v62 scopeHandler:v60];

        [(PUPickerSearchBar *)v31 updateContainerFromPickerConfiguration:configurationCopy];
        initialSearchText = [configurationCopy initialSearchText];

        if (initialSearchText)
        {
          v33 = objc_alloc(MEMORY[0x1E696AAB0]);
          initialSearchText2 = [configurationCopy initialSearchText];
          v35 = [v33 initWithString:initialSearchText2];
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

    [(PUPickerContainerController *)v16 _setupViewControllersWithConfiguration:configurationCopy loadingStatusManager:managerCopy selectionCoordinator:coordinatorCopy];
    if ([configurationCopy isPeopleOrPetsPicker])
    {
      photoLibrary3 = [configurationCopy photoLibrary];
      px_localDefaults = [photoLibrary3 px_localDefaults];
      [px_localDefaults addObserver:v16 forKeyPath:*MEMORY[0x1E69C4120] options:0 context:0];
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
  navigationBarSegmentedControl = [(PUPickerContainerController *)self navigationBarSegmentedControl];
  [navigationBarSegmentedControl setSelectedSegmentIndex:1];
  [(PUPickerContainerController *)self handleNavigationBarSegmentedControl:navigationBarSegmentedControl];
}

@end