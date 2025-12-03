@interface PUOneUpBarsController
- (BOOL)_canShowCommentsForCurrentAsset;
- (BOOL)_canShowSensitiveAssetMoreHelpContextMenuForCurrentAsset;
- (BOOL)_currentAssetNeedsSensitivityProtection;
- (BOOL)_physicalDeviceIsIPad;
- (BOOL)_shouldShowDoneEditingButton;
- (BOOL)_sizeClassesSupportsVisibleToolbar;
- (BOOL)_wantsChromeVisible;
- (BOOL)prefersStatusBarHidden;
- (BOOL)scrubberView:(id)view shouldIgnoreHitTest:(CGPoint)test withEvent:(id)event;
- (BOOL)shouldTapBeginAtLocationFromProvider:(id)provider;
- (BOOL)wantsNavigationBarVisible;
- (BOOL)wantsToolbarVisible;
- (CGRect)oneUpActionsControllerPopoverSourceRectIn:(id)in actionType:(unint64_t)type;
- (NSString)subtitle;
- (NSString)title;
- (PUOneUpBarsController)init;
- (PUOneUpBarsController)initWithStyle:(int64_t)style browsingSession:(id)session viewController:(id)controller actionsController:(id)actionsController delegate:(id)delegate;
- (PUOneUpBarsController)initWithViewController:(id)controller delegate:(id)delegate;
- (PUOneUpBarsControllerDelegate)delegate;
- (UITapGestureRecognizer)tapGestureRecognizer;
- (id)_actionsMenu;
- (id)_activeBarButtonItemForIdentifier:(int64_t)identifier;
- (id)_airPlayBarButtonItemForPopoverPresentation;
- (id)_allPhotosImageButton;
- (id)_assetActionMenuElements;
- (id)_attributedCommentTitleForTitle:(id)title controlState:(unint64_t)state;
- (id)_barButtonIdentifiersForLocation:(int64_t)location;
- (id)_barButtonItemCollectionForLocation:(int64_t)location;
- (id)_barButtonItemForActionType:(unint64_t)type;
- (id)_barButtonItemForIdentifier:(int64_t)identifier;
- (id)_barButtonItemForIdentifier:(int64_t)identifier location:(int64_t)location;
- (id)_barButtonItemWithSystemImageName:(id)name title:(id)title;
- (id)_barButtonItemWithSystemItem:(int64_t)item;
- (id)_commentTitleAttributes;
- (id)_commentsButtonWithTitle:(id)title;
- (id)_customButtonTitleColor;
- (id)_disabledCommentTitleColor;
- (id)_internalAssetActionMenuElements;
- (id)_localizedTitleForMergeDuplicatesBarButtonItem;
- (id)_moreHelpMenu;
- (id)_newBarButtonItemWithIdentifier:(int64_t)identifier location:(int64_t)location;
- (id)_textColorForTitleViewController:(BOOL)controller;
- (id)accessibilityIdentifierForBarButtonItemIdentifier:(int64_t)identifier;
- (id)barButtonItemCollection:(id)collection newBarButtonItemForIdentifier:(int64_t)identifier;
- (id)currentAssetByAssetCollection;
- (id)oneUpActionsControllerPopoverSourceItemWithActionType:(unint64_t)type;
- (id)overOneUpPresentationSession:(id)session barButtonItemForActivityType:(id)type;
- (id)requestInfoOfKind:(id)kind withResultHandler:(id)handler;
- (id)sourceItemForActionType:(id)type;
- (int64_t)_identifierForButton:(id)button;
- (int64_t)_lemonadeLocationForBarButtonItemWithIdentifier:(int64_t)identifier;
- (int64_t)_lemonadeNavigationOnlyLocationForBarButtonItemWithIdentifier:(int64_t)identifier;
- (int64_t)_lemonadeNavigationOrToolbarLocationForBarButtonItemWithIdentifier:(int64_t)identifier;
- (int64_t)_locationForBarButtonItemCollection:(id)collection;
- (int64_t)_locationForBarButtonItemWithIdentifier:(int64_t)identifier;
- (int64_t)_scrubberType;
- (int64_t)_trashBinLocation;
- (int64_t)preferredBarStyle;
- (void)_barButtonTappedWithIdentifier:(int64_t)identifier;
- (void)_browsingViewModel:(id)model didChange:(id)change;
- (void)_handleCreativeControlsButton:(id)button;
- (void)_handleFavoriteButton:(id)button;
- (void)_handleInfoButton:(id)button;
- (void)_handleTapGestureRecognizer:(id)recognizer;
- (void)_handleTraitCollectionSizeClassChangeWithPreviousTraitCollection:(id)collection;
- (void)_handleTrashButton:(id)button;
- (void)_initializeBarButtonItemCollections;
- (void)_invalidateChromeVisibilityWithAnimationType:(int64_t)type;
- (void)_invalidateCommentsTitle;
- (void)_invalidateScrubber;
- (void)_invalidateTitle;
- (void)_invalidateTitleViewProvider;
- (void)_performPlayPauseAction:(int64_t)action;
- (void)_resetIdentifierIndexes;
- (void)_setShowingPlayPauseButton:(BOOL)button;
- (void)_showActionsMenu;
- (void)_showMenu:(id)menu forIdentifier:(int64_t)identifier;
- (void)_showSensitiveAssetMoreHelpContextMenu;
- (void)_startObservingOrientationChanges;
- (void)_stopObservingOrientationChanges;
- (void)_toolbarViewModel:(id)model didChange:(id)change;
- (void)_updateActionsBarButtonItem;
- (void)_updateAddToLibraryBarButtonItem;
- (void)_updateChromeVisibilityIfNeeded;
- (void)_updateCommentsButton:(id)button withTitle:(id)title;
- (void)_updateCommentsButtonIfNeeded;
- (void)_updateCommentsIcon:(unint64_t)icon;
- (void)_updateFavoriteBarButtonItem;
- (void)_updateIdentifiersIndexesWithIdentifier:(int64_t)identifier location:(int64_t)location shouldEnable:(BOOL)enable;
- (void)_updateScrubberViewIfNeeded;
- (void)_updateSensitiveAssetMoreHelpBarButtonItem;
- (void)_updateShowingPlayPauseButton;
- (void)_updateSpotlightOpenAppButton;
- (void)_updateSyndicationSaveBarButtonItem;
- (void)_updateTitleIfNeeded;
- (void)_updateTitleViewContentModeIfNeeded;
- (void)_updateTitleViewProviderIfNeeded;
- (void)_updateWantsAllPhotosButton;
- (void)barButtonItemTapped:(id)tapped;
- (void)dealloc;
- (void)infoUpdaterDidUpdate:(id)update;
- (void)invalidateViewControllerView;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)oneUpNavigationTitleSubtitleViewDidTapView:(id)view;
- (void)overOneUpPresentationSession:(id)session didAppendReviewScreenAction:(unint64_t)action;
- (void)photoBrowserTitleViewControllerTapped:(id)tapped;
- (void)playPauseBarItemsController:(id)controller didChange:(id)change;
- (void)ppt_performAction:(unint64_t)action;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setAllowShowingPlayPauseButton:(BOOL)button;
- (void)setAllowTapOnTitle:(BOOL)title;
- (void)setDebuggingObservedImageModulationManager:(id)manager;
- (void)setDisableShowingNavigationBars:(BOOL)bars;
- (void)setMaximumAccessoryToolbarHeight:(double)height;
- (void)setMaximumToolbarHeight:(double)height;
- (void)setPresentedTipID:(id)d;
- (void)setShouldPlaceButtonsInNavigationBar:(BOOL)bar;
- (void)setShouldPlaceScrubberInScrubberBar:(BOOL)bar;
- (void)setShouldShowAirPlayButton:(BOOL)button;
- (void)setShouldShowMuteButton:(BOOL)button;
- (void)setShouldShowProgrammaticNavBackButton:(BOOL)button;
- (void)setShouldShowScrubber:(BOOL)scrubber;
- (void)setShouldUseCompactCommentsTitle:(BOOL)title;
- (void)setShouldUseCompactTitleView:(BOOL)view;
- (void)setWantsAllPhotosButton:(BOOL)button;
- (void)setWantsShowInLibraryButton:(BOOL)button;
- (void)updateBars;
- (void)updateContentGuideInsets;
- (void)updateGestureRecognizersWithHostingView:(id)view;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUOneUpBarsController

- (void)oneUpNavigationTitleSubtitleViewDidTapView:(id)view
{
  delegate = [(PUOneUpBarsController *)self delegate];
  [delegate oneUpBarsControllerDidTapTitle:self];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PUDebuggingObservedImageModulationManagerObservationContext == context)
  {
    v11 = observableCopy;
    [(PUOneUpBarsController *)self _invalidateTitle];
    goto LABEL_7;
  }

  if (PhotosUICoreSelectionManagerObservationContext != context && VideoMuteControllerContext_43170 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpBarsController.m" lineNumber:3848 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v11 = observableCopy;
    [(PUBarsController *)self invalidateBars];
LABEL_7:
    observableCopy = v11;
  }
}

- (id)requestInfoOfKind:(id)kind withResultHandler:(id)handler
{
  kindCopy = kind;
  handlerCopy = handler;
  v9 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  if (![kindCopy isEqualToString:@"PUCurrentAssetDisplayInfo"])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpBarsController.m" lineNumber:3825 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  currentAssetReference = [viewModel currentAssetReference];
  _canShowCommentsForCurrentAsset = [(PUOneUpBarsController *)self _canShowCommentsForCurrentAsset];
  infoRequestSerialQueue = [(PUOneUpBarsController *)self infoRequestSerialQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__PUOneUpBarsController_requestInfoOfKind_withResultHandler___block_invoke;
  v20[3] = &unk_1E7B7B478;
  v15 = v9;
  v24 = _canShowCommentsForCurrentAsset;
  v21 = v15;
  v22 = currentAssetReference;
  v23 = handlerCopy;
  v16 = handlerCopy;
  v17 = currentAssetReference;
  dispatch_async(infoRequestSerialQueue, v20);

  return v15;
}

void __61__PUOneUpBarsController_requestInfoOfKind_withResultHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    if (*(a1 + 56) == 1)
    {
      v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    }

    else
    {
      v5 = 0;
    }

    v6 = [*(a1 + 40) asset];
    v7 = [v6 localCreationDate];
    if (v7)
    {
      [v4 setObject:v7 forKeyedSubscript:@"PUTitleInfoCreationDateKey"];
    }

    v8 = [v6 localizedGeoDescription];
    if (v8)
    {
      [v4 setObject:v8 forKeyedSubscript:@"PUTitleInfoGeoDescriptionKey"];
    }

    if (*(a1 + 56) == 1)
    {
      v24 = v2;
      v9 = [PUOneUpCommentsInfoProvider likeCountForDisplayAsset:v6];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v10 = [v6 uuid];
        *buf = 138543618;
        v26 = v10;
        v27 = 2048;
        v28 = v9;
        _os_log_impl(&dword_1B36F3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[79401480]: Like count for asset (%{public}@) BEFORE reload = %lu", buf, 0x16u);
      }

      v23 = v9;
      v11 = [*(a1 + 40) asset];
      v12 = [v11 photoLibrary];
      v13 = [v12 fetchUpdatedObject:v11];

      [v13 fetchPropertySetsIfNeeded];
      v14 = v13;

      v15 = [PUOneUpCommentsInfoProvider likeCountForDisplayAsset:v14];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v16 = [v14 uuid];
        *buf = 138543618;
        v26 = v16;
        v27 = 2048;
        v28 = v15;
        _os_log_impl(&dword_1B36F3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[79401480]: Like count for asset (%{public}@) AFTER reload = %lu", buf, 0x16u);
      }

      if (v23 != v15 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = [v14 uuid];
        *buf = 138543362;
        v26 = v22;
        _os_log_error_impl(&dword_1B36F3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[79401480]: *** Like count for asset (%{public}@) is different before and after asset reload ***", buf, 0xCu);
      }

      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
      [v5 setObject:v17 forKeyedSubscript:@"PUCommentsInfoLikeCountKey"];

      v18 = [PUOneUpCommentsInfoProvider hasUserLikedDisplayAsset:v14];
      v19 = [MEMORY[0x1E696AD98] numberWithBool:v18];
      [v5 setObject:v19 forKeyedSubscript:@"PUCommentsInfoHasLikedKey"];

      v20 = [PUOneUpCommentsInfoProvider commentCountForDisplayAsset:v14];
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
      [v5 setObject:v21 forKeyedSubscript:@"PUCommentsInfoCommentCountKey"];

      v2 = v24;
    }

    else
    {
      v14 = v6;
    }

    [v3 setObject:v4 forKeyedSubscript:@"PUTitleInfoDictionaryKey"];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"PUCommentsInfoDictionaryKey"];
    }

    (*(*(a1 + 48) + 16))();

    objc_autoreleasePoolPop(v2);
  }
}

- (void)infoUpdaterDidUpdate:(id)update
{
  updateCopy = update;
  _currentAssetDisplayInfoUpdater = [(PUOneUpBarsController *)self _currentAssetDisplayInfoUpdater];

  if (_currentAssetDisplayInfoUpdater != updateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpBarsController.m" lineNumber:3761 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [(PUOneUpBarsController *)self _invalidateTitle];
  [(PUOneUpBarsController *)self _invalidateCommentsTitle];
}

- (void)photoBrowserTitleViewControllerTapped:(id)tapped
{
  if (self->_delegateFlags.respondsToDidTapTitle)
  {
    delegate = [(PUOneUpBarsController *)self delegate];
    [delegate oneUpBarsControllerDidTapTitle:self];
  }
}

- (BOOL)scrubberView:(id)view shouldIgnoreHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  viewCopy = view;
  viewController = [(PUBarsController *)self viewController];
  view = [viewController view];

  [view convertPoint:viewCopy fromView:{x, y}];
  v14 = v13;
  v16 = v15;
  LOBYTE(viewController) = [viewCopy isDescendantOfView:view];

  if (viewController)
  {
    isKindOfClass = 0;
  }

  else
  {
    v18 = [view hitTest:eventCopy withEvent:{v14, v16}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  return isKindOfClass & 1;
}

- (void)ppt_performAction:(unint64_t)action
{
  if (action == 35)
  {
    actionsController = [(PUOneUpBarsController *)self actionsController];
    [actionsController performShareAction];
  }

  else
  {
    if (action != 15)
    {
      return;
    }

    actionsController = [(PUOneUpBarsController *)self actionsController];
    [actionsController performSimpleActionWithActionType:15];
  }
}

- (void)overOneUpPresentationSession:(id)session didAppendReviewScreenAction:(unint64_t)action
{
  sessionCopy = session;
  if (action)
  {
    if (action != 1)
    {
      goto LABEL_6;
    }

    v9 = sessionCopy;
    v7 = 50;
  }

  else
  {
    v9 = sessionCopy;
    v7 = 51;
  }

  actionsController = [(PUOneUpBarsController *)self actionsController];
  [actionsController performSimpleActionWithActionType:v7];

  sessionCopy = v9;
LABEL_6:
}

- (id)overOneUpPresentationSession:(id)session barButtonItemForActivityType:(id)type
{
  if ([type isEqual:*MEMORY[0x1E69C3CF0]])
  {
    _airPlayBarButtonItemForPopoverPresentation = [(PUOneUpBarsController *)self _airPlayBarButtonItemForPopoverPresentation];
  }

  else
  {
    _airPlayBarButtonItemForPopoverPresentation = 0;
  }

  return _airPlayBarButtonItemForPopoverPresentation;
}

- (void)playPauseBarItemsController:(id)controller didChange:(id)change
{
  if ([change playPauseStateDidChange])
  {
    [(PUBarsController *)self invalidateBars];

    [(PUOneUpBarsController *)self _updateShowingPlayPauseButton];
  }
}

- (int64_t)_identifierForButton:(id)button
{
  v21 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [&unk_1F2B7D040 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = *v17;
  do
  {
    v10 = 0;
    do
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(&unk_1F2B7D040);
      }

      v11 = -[PUOneUpBarsController _barButtonItemCollectionForLocation:](self, "_barButtonItemCollectionForLocation:", [*(*(&v16 + 1) + 8 * v10) integerValue]);
      v12 = v11;
      if (isKindOfClass)
      {
        v13 = [v11 identifierForBarButtonItem:buttonCopy];
      }

      else
      {
        if ((v6 & 1) == 0)
        {

          goto LABEL_13;
        }

        v13 = [v11 identifierForCustomButton:buttonCopy];
      }

      v14 = v13;

      if (v14)
      {
        goto LABEL_16;
      }

LABEL_13:
      ++v10;
    }

    while (v8 != v10);
    v8 = [&unk_1F2B7D040 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v8);
LABEL_15:
  v14 = 0;
LABEL_16:

  return v14;
}

- (id)_barButtonItemForIdentifier:(int64_t)identifier
{
  v5 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:?];
  v6 = [(PUOneUpBarsController *)self _barButtonItemCollectionForLocation:v5];
  v7 = [(PUOneUpBarsController *)self _barButtonIdentifiersForLocation:v5];
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    if ([v7 containsIndex:identifier])
    {
      v9 = [v6 barButtonItemForIdentifier:identifier];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_activeBarButtonItemForIdentifier:(int64_t)identifier
{
  v5 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:?];

  return [(PUOneUpBarsController *)self _barButtonItemForIdentifier:identifier location:v5];
}

- (id)_barButtonItemForIdentifier:(int64_t)identifier location:(int64_t)location
{
  v5 = [(PUOneUpBarsController *)self _barButtonItemCollectionForLocation:location];
  v6 = [v5 barButtonItemForIdentifier:identifier];

  return v6;
}

- (int64_t)_locationForBarButtonItemCollection:(id)collection
{
  collectionCopy = collection;
  _leftNavBarButtonItemCollection = [(PUOneUpBarsController *)self _leftNavBarButtonItemCollection];

  if (_leftNavBarButtonItemCollection == collectionCopy)
  {
    v12 = 2;
  }

  else
  {
    _rightNavBarButtonItemCollection = [(PUOneUpBarsController *)self _rightNavBarButtonItemCollection];

    if (_rightNavBarButtonItemCollection == collectionCopy)
    {
      v12 = 1;
    }

    else
    {
      _toolbarButtonItemCollection = [(PUOneUpBarsController *)self _toolbarButtonItemCollection];

      if (_toolbarButtonItemCollection == collectionCopy)
      {
        v12 = 3;
      }

      else
      {
        _leftToolbarButtonItemCollection = [(PUOneUpBarsController *)self _leftToolbarButtonItemCollection];

        if (_leftToolbarButtonItemCollection == collectionCopy)
        {
          v12 = 6;
        }

        else
        {
          _centerToolbarButtonItemCollection = [(PUOneUpBarsController *)self _centerToolbarButtonItemCollection];

          if (_centerToolbarButtonItemCollection == collectionCopy)
          {
            v12 = 5;
          }

          else
          {
            _rightToolbarButtonItemCollection = [(PUOneUpBarsController *)self _rightToolbarButtonItemCollection];
            v11 = _rightToolbarButtonItemCollection == collectionCopy;

            v12 = 4 * v11;
          }
        }
      }
    }
  }

  return v12;
}

- (id)_barButtonIdentifiersForLocation:(int64_t)location
{
  _rightToolbarButtonIdentifiers = 0;
  if (location > 3)
  {
    switch(location)
    {
      case 4:
        _rightToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _rightToolbarButtonIdentifiers];
        break;
      case 5:
        _rightToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _centerToolbarButtonIdentifiers];
        break;
      case 6:
        _rightToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _leftToolbarButtonIdentifiers];
        break;
    }
  }

  else
  {
    switch(location)
    {
      case 1:
        _rightToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _rightNavBarButtonIdentifiers];
        break;
      case 2:
        _rightToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _leftNavBarButtonIdentifiers];
        break;
      case 3:
        _rightToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _toolbarButtonIdentifiers];
        break;
    }
  }

  return _rightToolbarButtonIdentifiers;
}

- (id)_barButtonItemCollectionForLocation:(int64_t)location
{
  _rightToolbarButtonItemCollection = 0;
  if (location > 3)
  {
    switch(location)
    {
      case 4:
        _rightToolbarButtonItemCollection = [(PUOneUpBarsController *)self _rightToolbarButtonItemCollection];
        break;
      case 5:
        _rightToolbarButtonItemCollection = [(PUOneUpBarsController *)self _centerToolbarButtonItemCollection];
        break;
      case 6:
        _rightToolbarButtonItemCollection = [(PUOneUpBarsController *)self _leftToolbarButtonItemCollection];
        break;
    }
  }

  else
  {
    switch(location)
    {
      case 1:
        _rightToolbarButtonItemCollection = [(PUOneUpBarsController *)self _rightNavBarButtonItemCollection];
        break;
      case 2:
        _rightToolbarButtonItemCollection = [(PUOneUpBarsController *)self _leftNavBarButtonItemCollection];
        break;
      case 3:
        _rightToolbarButtonItemCollection = [(PUOneUpBarsController *)self _toolbarButtonItemCollection];
        break;
    }
  }

  return _rightToolbarButtonItemCollection;
}

- (id)barButtonItemCollection:(id)collection newBarButtonItemForIdentifier:(int64_t)identifier
{
  v4 = [(PUOneUpBarsController *)self _newBarButtonItemWithIdentifier:identifier location:[(PUOneUpBarsController *)self _locationForBarButtonItemCollection:collection]];

  return v4;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  if ([viewModel isPresentingOverOneUp])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PUOneUpBarsController_presentationControllerDidDismiss___block_invoke;
    v5[3] = &unk_1E7B80DD0;
    v6 = viewModel;
    [v6 performChanges:v5];
  }
}

- (CGRect)oneUpActionsControllerPopoverSourceRectIn:(id)in actionType:(unint64_t)type
{
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)oneUpActionsControllerPopoverSourceItemWithActionType:(unint64_t)type
{
  if (type == 38)
  {
    [(PUOneUpBarsController *)self _airPlayBarButtonItemForPopoverPresentation];
  }

  else
  {
    [(PUOneUpBarsController *)self _barButtonItemForActionType:?];
  }
  v3 = ;

  return v3;
}

- (id)_airPlayBarButtonItemForPopoverPresentation
{
  if ([(PUOneUpBarsController *)self shouldShowAirPlayButton])
  {
    v3 = 38;
  }

  else
  {
    v3 = 35;
  }

  v4 = [(PUOneUpBarsController *)self _barButtonItemForActionType:v3];

  return v4;
}

- (id)_barButtonItemForActionType:(unint64_t)type
{
  v6 = 0;
  if (type <= 14)
  {
    v7 = 2;
    if (type <= 7)
    {
      if (type != 1)
      {
        if (type == 4)
        {
          v7 = 44;
        }

        else
        {
          if (type != 6)
          {
            goto LABEL_36;
          }

          v7 = 45;
        }
      }
    }

    else if (type > 10)
    {
      if (type == 11)
      {
        v7 = 4;
      }

      else
      {
        if (type != 13)
        {
          goto LABEL_36;
        }

        v7 = 5;
      }
    }

    else if (type != 8)
    {
      if (type != 10)
      {
        goto LABEL_36;
      }

      v7 = 3;
    }
  }

  else
  {
    switch(type)
    {
      case '#':
      case ')':
        v7 = 6;
        break;
      case '$':
      case '\'':
      case '*':
      case ',':
      case '-':
      case '.':
      case '/':
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '7':
      case ':':
      case '?':
      case '@':
        goto LABEL_36;
      case '%':
        v7 = 16;
        break;
      case '&':
        v7 = 18;
        break;
      case '(':
      case 'B':
        v7 = 46;
        break;
      case '+':
        v7 = 11;
        break;
      case '5':
        v7 = 27;
        break;
      case '6':
        v7 = 28;
        break;
      case '8':
        v7 = 36;
        break;
      case '9':
        v7 = 37;
        break;
      case ';':
        v7 = 38;
        break;
      case '<':
        v7 = 39;
        break;
      case '=':
        v7 = 40;
        break;
      case '>':
        v7 = 31;
        break;
      case 'A':
        v7 = 43;
        break;
      case 'C':
        v7 = 48;
        break;
      default:
        if (type != 15 && type != 19)
        {
          goto LABEL_36;
        }

        v7 = 1;
        break;
    }
  }

  v6 = [(PUOneUpBarsController *)self _activeBarButtonItemForIdentifier:v7, v3];
LABEL_36:

  return v6;
}

- (id)sourceItemForActionType:(id)type
{
  typeCopy = type;
  v5 = typeCopy;
  if (*MEMORY[0x1E69C46E8] == typeCopy || *MEMORY[0x1E69C4688] == typeCopy)
  {
    v7 = 46;
  }

  else if (*MEMORY[0x1E69C4828] == typeCopy || *MEMORY[0x1E69C4780] == typeCopy || *MEMORY[0x1E69C4838] == typeCopy || *MEMORY[0x1E69C46D8] == typeCopy)
  {
    v7 = 2;
  }

  else if (*MEMORY[0x1E69C4680] == typeCopy)
  {
    v7 = 3;
  }

  else
  {
    if (*MEMORY[0x1E69C4670] != typeCopy && *MEMORY[0x1E69C4690] != typeCopy)
    {
      v13 = 0;
      goto LABEL_28;
    }

    v7 = 1;
  }

  v13 = [(PUOneUpBarsController *)self _barButtonItemForIdentifier:v7];
LABEL_28:

  return v13;
}

- (void)_toolbarViewModel:(id)model didChange:(id)change
{
  if ([change accessoryViewChanged])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__PUOneUpBarsController__toolbarViewModel_didChange___block_invoke;
    block[3] = &unk_1E7B80DD0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_browsingViewModel:(id)model didChange:(id)change
{
  v84 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  changeCopy = change;
  v8 = +[PUOneUpSettings sharedInstance];
  chromeAnimationType = [v8 chromeAnimationType];

  if ([changeCopy assetsDataSourceDidChange])
  {
    [(PUBarsController *)self invalidateBars];
  }

  if ([changeCopy contentPrivacyStateDidChange])
  {
    [(PUOneUpBarsController *)self _invalidateChromeVisibilityWithAnimationType:0];
    [(PUBarsController *)self invalidateBars];
    v9 = [modelCopy contentPrivacyState] == 1;
    [(PUOneUpBarsController *)self _invalidateTitle];
  }

  else
  {
    v9 = 0;
  }

  currentAssetDidChange = [changeCopy currentAssetDidChange];
  if (currentAssetDidChange)
  {
    [(PUOneUpBarsController *)self _invalidateSpotlightOpenAppButton];
    [(PUOneUpBarsController *)self _invalidateWantsAllPhotosButton];
    _currentAssetDisplayInfoUpdater = [(PUOneUpBarsController *)self _currentAssetDisplayInfoUpdater];
    [_currentAssetDisplayInfoUpdater invalidateInfo];

    [(PUOneUpBarsController *)self _invalidateTitle];
    [(PUOneUpBarsController *)self _invalidateTitleViewProvider];
    [(PUOneUpBarsController *)self _invalidateCommentsTitle];
    [(PUBarsController *)self invalidateBars];
    detailsBarButtonController = [(PUOneUpBarsController *)self detailsBarButtonController];
    [detailsBarButtonController currentAssetDidChange];

    chromeAnimationType = 2;
  }

  if ([changeCopy reviewScreenSelectionDidChange])
  {
    [(PUOneUpBarsController *)self _invalidateTitle];
    [(PUBarsController *)self invalidateBars];
  }

  if ([changeCopy navigationBarTitleDidChange])
  {
    [(PUOneUpBarsController *)self _invalidateTitle];
  }

  if ([changeCopy reviewScreenBarsModelDidChange])
  {
    [(PUBarsController *)self invalidateBars];
    [(PUBarsController *)self invalidateContentGuideInsets];
  }

  if ([changeCopy isInSelectionModeDidChange])
  {
    browsingSession = [(PUOneUpBarsController *)self browsingSession];
    actionManager = [browsingSession actionManager];
    px_selectionManager = [actionManager px_selectionManager];

    [px_selectionManager performChanges:&__block_literal_global_43206];
    browsingSession2 = [(PUOneUpBarsController *)self browsingSession];
    actionManager2 = [browsingSession2 actionManager];

    LODWORD(actionManager) = [modelCopy isInSelectionMode];
    px_selectionManager2 = [actionManager2 px_selectionManager];
    v19 = px_selectionManager2;
    if (actionManager)
    {
      [px_selectionManager2 registerChangeObserver:self context:PhotosUICoreSelectionManagerObservationContext];
    }

    else
    {
      [px_selectionManager2 unregisterChangeObserver:self context:PhotosUICoreSelectionManagerObservationContext];
    }

    [(PUBarsController *)self invalidateBars];
  }

  if ([changeCopy chromeVisibilityDidChange])
  {
    currentAssetDidChange = [(PUOneUpBarsController *)self disableShowingNavigationBars]^ 1;
    viewController = [(PUBarsController *)self viewController];
    px_isVisible = [viewController px_isVisible];
    v22 = chromeAnimationType;
    if (!px_isVisible)
    {
      v22 = 0;
    }

    chromeAnimationType = v22;
  }

  if ([changeCopy currentAssetTransitionProgressDidChange])
  {
    v23 = +[PUOneUpSettings sharedInstance];
    v24 = PUShouldAutoHideChrome(modelCopy, [v23 chromeAutoHideBehaviorOnSwipe]);
  }

  else
  {
    v24 = 0;
  }

  currentAssetReference = [modelCopy currentAssetReference];

  if (currentAssetReference)
  {
    v64 = v9;
    currentAssetReference2 = [modelCopy currentAssetReference];
    v65 = changeCopy;
    assetViewModelChangesByAssetReference = [changeCopy assetViewModelChangesByAssetReference];
    v71 = currentAssetReference2;
    [assetViewModelChangesByAssetReference objectForKeyedSubscript:currentAssetReference2];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = v81 = 0u;
    v27 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
    v63 = v24;
    if (!v27)
    {
      v30 = chromeAnimationType;
      goto LABEL_62;
    }

    v28 = v27;
    v29 = *v79;
    v30 = chromeAnimationType;
    v70 = *v79;
    while (1)
    {
      v31 = 0;
      v66 = v28;
      do
      {
        if (*v79 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v78 + 1) + 8 * v31);
        videoPlayerChange = [v32 videoPlayerChange];
        if (([v32 accessoryViewVisibilityChanged] & 1) != 0 || (objc_msgSend(v32, "isInEditModeChanged") & 1) != 0 || (objc_msgSend(v32, "isFavoriteChanged") & 1) != 0 || (objc_msgSend(v32, "assetSyndicationStateChanged") & 1) != 0 || (objc_msgSend(v32, "assetChanged") & 1) != 0 || (objc_msgSend(v32, "importStateChanged") & 1) != 0 || (objc_msgSend(videoPlayerChange, "audioStatusDidChange") & 1) != 0 || (objc_msgSend(videoPlayerChange, "isActivatedDidChange") & 1) != 0 || objc_msgSend(videoPlayerChange, "desiredPlayStateDidChange"))
        {
          [(PUBarsController *)self invalidateBars];
        }

        if ([v32 accessoryViewVisibilityChanged])
        {
          [modelCopy assetViewModelForAssetReference:v71];
          v34 = v30;
          v35 = v28;
          v36 = currentAssetDidChange;
          selfCopy = self;
          v38 = modelCopy;
          v40 = v39 = videoPlayerChange;
          isLastAccessoryViewVisibilityChangeReasonUserAction = [v40 isLastAccessoryViewVisibilityChangeReasonUserAction];

          videoPlayerChange = v39;
          modelCopy = v38;
          self = selfCopy;
          v42 = v36;
          v28 = v35;
          if (isLastAccessoryViewVisibilityChangeReasonUserAction)
          {
            v30 = 1;
          }

          else
          {
            v30 = v34;
          }

          currentAssetDidChange = isLastAccessoryViewVisibilityChangeReasonUserAction | v42;
          v29 = v70;
        }

        if ([v32 isInEditModeChanged])
        {
          [(PUOneUpBarsController *)self _invalidateChromeVisibilityWithAnimationType:v30];
        }

        if ([v32 contentOffsetChanged])
        {
          [(PUBarsController *)self invalidateBars];
          currentAssetDidChange = 1;
        }

        if ([v32 infoButtonPropertyChanged])
        {
          v69 = videoPlayerChange;
          v43 = currentAssetDidChange;
          v44 = v30;
          v45 = modelCopy;
          v46 = [modelCopy assetViewModelForAssetReference:v71];
          assetReference = [v46 assetReference];
          asset = [assetReference asset];
          asset2 = [v71 asset];
          v50 = asset2;
          if (asset == asset2)
          {
          }

          else
          {
            v51 = [asset isEqual:asset2];

            if ((v51 & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          [(PUBarsController *)self invalidateBars];
LABEL_57:

          modelCopy = v45;
          v30 = v44;
          currentAssetDidChange = v43;
          videoPlayerChange = v69;
          v29 = v70;
          v28 = v66;
        }

        ++v31;
      }

      while (v28 != v31);
      v28 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
      if (!v28)
      {
LABEL_62:
        v52 = currentAssetDidChange;
        chromeAnimationType = v30;
        changeCopy = v65;
        assetSharedViewModelChangesByAssetUUID = [v65 assetSharedViewModelChangesByAssetUUID];
        asset3 = [v71 asset];
        uuid = [asset3 uuid];
        v56 = [assetSharedViewModelChangesByAssetUUID objectForKey:uuid];

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v57 = v56;
        v58 = [v57 countByEnumeratingWithState:&v74 objects:v82 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v75;
          do
          {
            for (i = 0; i != v59; ++i)
            {
              if (*v75 != v60)
              {
                objc_enumerationMutation(v57);
              }

              if ([*(*(&v74 + 1) + 8 * i) needsDeferredProcessingChanged])
              {
                [(PUBarsController *)self invalidateBars];
              }
            }

            v59 = [v57 countByEnumeratingWithState:&v74 objects:v82 count:16];
          }

          while (v59);
        }

        v24 = v63;
        v9 = v64;
        LOBYTE(currentAssetDidChange) = v52;
        break;
      }
    }
  }

  if (v24)
  {
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __54__PUOneUpBarsController__browsingViewModel_didChange___block_invoke_2;
    v72[3] = &unk_1E7B80DD0;
    v73 = modelCopy;
    [v73 performChanges:v72];
  }

  else if (currentAssetDidChange)
  {
    [(PUOneUpBarsController *)self _invalidateChromeVisibilityWithAnimationType:chromeAnimationType];
  }

  if (v9)
  {
    [(PUOneUpBarsController *)self updateBars];
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUOneUpBarsController *)self _browsingViewModel:modelCopy didChange:changeCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PUOneUpBarsController *)self _toolbarViewModel:modelCopy didChange:changeCopy];
    }
  }
}

- (void)_handleTapGestureRecognizer:(id)recognizer
{
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  if ([viewModel isInSelectionMode])
  {
    actionsController = [(PUOneUpBarsController *)self actionsController];
    [actionsController performSimpleActionWithActionType:45];
  }

  else
  {
    v7 = +[PUOneUpSettings sharedInstance];
    if ([v7 allowChromeHiding])
    {
      disableChromeHiding = [(PUOneUpBarsController *)self disableChromeHiding];

      if (!disableChromeHiding)
      {
        isChromeVisible = [viewModel isChromeVisible];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __53__PUOneUpBarsController__handleTapGestureRecognizer___block_invoke;
        v10[3] = &unk_1E7B7FF98;
        v11 = viewModel;
        v12 = isChromeVisible;
        [v11 performChanges:v10];
      }
    }

    else
    {
    }
  }
}

- (void)_performPlayPauseAction:(int64_t)action
{
  _scrubberView = [(PUOneUpBarsController *)self _scrubberView];
  [_scrubberView cancelDeceleration];

  actionsController = [(PUOneUpBarsController *)self actionsController];
  [actionsController performPlayPauseActionWithDesiredState:action];

  if (self->_delegateFlags.respondsToDidTapPlayPauseButton)
  {
    delegate = [(PUOneUpBarsController *)self delegate];
    [delegate oneUpBarsController:self didTapPlayPauseButton:action == 4];
  }
}

- (void)_showMenu:(id)menu forIdentifier:(int64_t)identifier
{
  menuCopy = menu;
  v7 = [(PUOneUpBarsController *)self _barButtonItemForIdentifier:identifier location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:identifier]];
  [v7 setMenu:menuCopy];

  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 performSelector:sel_view];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;

      if (v9)
      {
        contextMenuInteraction = [v9 contextMenuInteraction];
        [contextMenuInteraction _presentMenuAtLocation:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
    }

    v11 = PXAssertGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "Unexpected type found for view, menu will not present", v12, 2u);
    }

    v9 = 0;
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_showSensitiveAssetMoreHelpContextMenu
{
  _moreHelpMenu = [(PUOneUpBarsController *)self _moreHelpMenu];
  v4 = _moreHelpMenu;
  if (_moreHelpMenu)
  {
    v5 = _moreHelpMenu;
    _moreHelpMenu = [(PUOneUpBarsController *)self _showMenu:_moreHelpMenu forIdentifier:47];
    v4 = v5;
  }

  MEMORY[0x1EEE66BB8](_moreHelpMenu, v4);
}

- (void)_showActionsMenu
{
  delegate = [(PUOneUpBarsController *)self delegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__PUOneUpBarsController__showActionsMenu__block_invoke;
  v4[3] = &unk_1E7B80DD0;
  v4[4] = self;
  [delegate oneUpBarsControllerWillPresentActionsMenu:self completionHandler:v4];
}

void __41__PUOneUpBarsController__showActionsMenu__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _actionsMenu];
  [v1 _showMenu:v2 forIdentifier:46];
}

- (void)_barButtonTappedWithIdentifier:(int64_t)identifier
{
  switch(identifier)
  {
    case 1:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 15;
      goto LABEL_52;
    case 2:
      actionsController2 = [(PUOneUpBarsController *)self actionsController];
      [actionsController2 performTrashAction];
      goto LABEL_53;
    case 3:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 10;
      goto LABEL_52;
    case 4:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 11;
      goto LABEL_52;
    case 5:
      actionsController2 = [(PUOneUpBarsController *)self actionsController];
      [actionsController2 performRestoreAction];
      goto LABEL_53;
    case 6:
      actionsController2 = [(PUOneUpBarsController *)self actionsController];
      [actionsController2 performShareAction];
      goto LABEL_53;
    case 7:
      actionsController2 = [(PUOneUpBarsController *)self actionsController];
      [actionsController2 performToggleFavoriteAction];
      goto LABEL_53;
    case 10:
    case 29:
      actionsController2 = [(PUBarsController *)self viewController];
      [actionsController2 dismissViewControllerAnimated:1 completion:0];
      goto LABEL_53;
    case 11:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 43;
      goto LABEL_52;
    case 12:
      v6 = 4;
      goto LABEL_21;
    case 13:
      v6 = 2;
LABEL_21:

      [(PUOneUpBarsController *)self _performPlayPauseAction:v6];
      return;
    case 14:
    case 15:
      actionsController2 = [(PUOneUpBarsController *)self actionsController];
      [actionsController2 performToggleCommentsActionAndBeginEditing:{-[PUOneUpBarsController shouldBeginEditingAfterShowingComments](self, "shouldBeginEditingAfterShowingComments")}];
      goto LABEL_53;
    case 16:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 37;
      goto LABEL_52;
    case 17:
      actionsController2 = [(PUOneUpBarsController *)self actionsController];
      [actionsController2 performCancelEditingAction];
      goto LABEL_53;
    case 18:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 38;
      goto LABEL_52;
    case 19:
      actionsController3 = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController3;
      v10 = 1;
      goto LABEL_48;
    case 20:
      actionsController3 = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController3;
      v10 = 0;
LABEL_48:
      [actionsController3 performLikeActionWithLike:v10];
      goto LABEL_53;
    case 21:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 46;
      goto LABEL_52;
    case 22:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 47;
      goto LABEL_52;
    case 23:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 50;
      goto LABEL_52;
    case 24:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 48;
      goto LABEL_52;
    case 25:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 51;
      goto LABEL_52;
    case 26:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 52;
      goto LABEL_52;
    case 27:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 53;
      goto LABEL_52;
    case 28:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 54;
      goto LABEL_52;
    case 30:
      actionsController2 = [(PUOneUpBarsController *)self actionsController];
      [actionsController2 performShowInLibraryAction];
      goto LABEL_53;
    case 31:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 62;
      goto LABEL_52;
    case 32:
      actionsController4 = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController4;
      v8 = 1;
      goto LABEL_30;
    case 33:
      actionsController4 = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController4;
      v8 = 0;
LABEL_30:
      [actionsController4 performMuteActionWithShouldMute:v8];
      goto LABEL_53;
    case 34:
      actionsController2 = [(PUOneUpBarsController *)self actionsController];
      [actionsController2 performDoneEditingAction];
      goto LABEL_53;
    case 35:
      actionsController2 = [(PUOneUpBarsController *)self actionsController];
      [actionsController2 performToggleDetailsAction];
      goto LABEL_53;
    case 36:
      actionsController2 = [(PUOneUpBarsController *)self actionsController];
      [actionsController2 performSyndicationSaveAction];
      goto LABEL_53;
    case 37:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 57;
      goto LABEL_52;
    case 38:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 59;
      goto LABEL_52;
    case 39:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 60;
      goto LABEL_52;
    case 40:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 61;
      goto LABEL_52;
    case 41:
    case 42:
      actionsController2 = [(PUOneUpBarsController *)self actionsController];
      [actionsController2 toggleSelectionMode];
      goto LABEL_53;
    case 43:
      actionsController2 = [(PUOneUpBarsController *)self actionsController];
      [actionsController2 performMergeDuplicatesAction];
      goto LABEL_53;
    case 44:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 4;
      goto LABEL_52;
    case 45:
      actionsController = [(PUOneUpBarsController *)self actionsController];
      actionsController2 = actionsController;
      v5 = 6;
LABEL_52:
      [actionsController performSimpleActionWithActionType:v5];
LABEL_53:

      break;
    case 46:

      [(PUOneUpBarsController *)self _showActionsMenu];
      break;
    case 47:

      [(PUOneUpBarsController *)self _showSensitiveAssetMoreHelpContextMenu];
      break;
    case 48:
      v11 = MEMORY[0x1E69C3740];

      [v11 toggle];
      break;
    default:
      return;
  }
}

- (void)barButtonItemTapped:(id)tapped
{
  v9 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  v5 = [(PUOneUpBarsController *)self _identifierForButton:tappedCopy];
  if (!v5)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 138412290;
      v8 = tappedCopy;
      _os_log_fault_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_FAULT, "Untracked BarButtonItem tapped: %@", &v7, 0xCu);
    }
  }

  [(PUOneUpBarsController *)self _barButtonTappedWithIdentifier:v5];
}

- (void)_handleFavoriteButton:(id)button
{
  actionsController = [(PUOneUpBarsController *)self actionsController];
  [actionsController performToggleFavoriteAction];
}

- (void)_handleCreativeControlsButton:(id)button
{
  actionsController = [(PUOneUpBarsController *)self actionsController];
  [actionsController performSimpleActionWithActionType:15];
}

- (void)_handleInfoButton:(id)button
{
  actionsController = [(PUOneUpBarsController *)self actionsController];
  [actionsController performToggleDetailsAction];
}

- (void)_handleTrashButton:(id)button
{
  actionsController = [(PUOneUpBarsController *)self actionsController];
  [actionsController performTrashAction];
}

- (void)_stopObservingOrientationChanges
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  [currentDevice endGeneratingDeviceOrientationNotifications];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)_startObservingOrientationChanges
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_orientationChanged_ name:*MEMORY[0x1E69DDCB8] object:currentDevice];

  [currentDevice beginGeneratingDeviceOrientationNotifications];
}

- (void)_updateSpotlightOpenAppButton
{
  spotlightOpenAppButton = [(PUOneUpBarsController *)self spotlightOpenAppButton];

  if (spotlightOpenAppButton)
  {
    browsingSession = [(PUOneUpBarsController *)self browsingSession];
    viewModel = [browsingSession viewModel];
    currentAssetReference = [viewModel currentAssetReference];
    asset = [currentAssetReference asset];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = asset;
    }

    else
    {
      v10 = 0;
    }

    v8 = PXOwningAppBundleIdentifierForSpotlightAsset();
    spotlightOpenAppButton2 = [(PUOneUpBarsController *)self spotlightOpenAppButton];
    [spotlightOpenAppButton2 setAppBundleIdentifier:v8];
  }
}

- (void)setWantsAllPhotosButton:(BOOL)button
{
  if (self->_wantsAllPhotosButton != button)
  {
    self->_wantsAllPhotosButton = button;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)_updateWantsAllPhotosButton
{
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  actionManager = [browsingSession actionManager];
  currentAssetByAssetCollection = [(PUOneUpBarsController *)self currentAssetByAssetCollection];
  v6 = [actionManager canPerformAction:43 onAllAssetsByAssetCollection:currentAssetByAssetCollection];

  [(PUOneUpBarsController *)self setWantsAllPhotosButton:v6];
}

- (void)_setShowingPlayPauseButton:(BOOL)button
{
  if (self->_isShowingPlayPauseButton != button)
  {
    self->_isShowingPlayPauseButton = button;
    if (self->_delegateFlags.respondsToDidChangeShowingPlayPauseButton)
    {
      delegate = [(PUOneUpBarsController *)self delegate];
      [delegate oneUpBarsControllerDidChangeShowingPlayPauseButton:self];
    }
  }
}

- (void)_updateShowingPlayPauseButton
{
  if ([(PUOneUpBarsController *)self allowShowingPlayPauseButton])
  {
    _playPauseBarItemsController = [(PUOneUpBarsController *)self _playPauseBarItemsController];
    playPauseState = [_playPauseBarItemsController playPauseState];

    v5 = +[PUOneUpSettings sharedInstance];
    allowPlayButtonInBars = [v5 allowPlayButtonInBars];

    if (allowPlayButtonInBars)
    {
      v7 = playPauseState != 0;
    }

    else
    {
      v7 = playPauseState == 1;
    }
  }

  else
  {
    v7 = 0;
  }

  [(PUOneUpBarsController *)self _setShowingPlayPauseButton:v7];
}

- (void)_updateChromeVisibilityIfNeeded
{
  if (![(PUOneUpBarsController *)self _needsUpdateChromeVisibility])
  {
    return;
  }

  [(PUOneUpBarsController *)self _setNeedsUpdateChromeVisibility:0];
  _wantsChromeVisible = [(PUOneUpBarsController *)self _wantsChromeVisible];
  _nextChromeVisibilityUpdateAnimationType = [(PUOneUpBarsController *)self _nextChromeVisibilityUpdateAnimationType];
  viewController = [(PUBarsController *)self viewController];
  v9 = viewController;
  if (_nextChromeVisibilityUpdateAnimationType)
  {
    browsingSession = [(PUOneUpBarsController *)self browsingSession];
    viewModel = [browsingSession viewModel];
    v8 = PUChromeAnimationDuration(viewModel);

    if (!_wantsChromeVisible)
    {
      if ([(PUOneUpBarsController *)self _lastChromeVisibility])
      {
        [(PUBarsController *)self disableUpdateBarsForDuration:v8];
      }

      [v9 pu_performBarsVisibilityUpdatesWithAnimationSettings:{_nextChromeVisibilityUpdateAnimationType, *&v8}];
      goto LABEL_12;
    }

    [v9 pu_performBarsVisibilityUpdatesWithAnimationSettings:{_nextChromeVisibilityUpdateAnimationType, *&v8}];
    goto LABEL_7;
  }

  [viewController pu_performBarsVisibilityUpdatesWithAnimationSettings:{0, 0}];
  if (_wantsChromeVisible)
  {
LABEL_7:
    if (![(PUOneUpBarsController *)self _lastChromeVisibility])
    {
      [(PUBarsController *)self invalidateContentGuideInsets];
    }
  }

LABEL_12:
  [(PUOneUpBarsController *)self _setLastChromeVisibility:_wantsChromeVisible];
}

- (void)_invalidateChromeVisibilityWithAnimationType:(int64_t)type
{
  [(PUOneUpBarsController *)self _setNeedsUpdateChromeVisibility:1];
  [(PUOneUpBarsController *)self _setNextChromeVisibilityUpdateAnimationType:type];

  [(PUOneUpBarsController *)self _updateChromeVisibilityIfNeeded];
}

- (void)_updateCommentsIcon:(unint64_t)icon
{
  v6 = [(PUOneUpBarsController *)self _activeBarButtonItemForIdentifier:14];
  if (icon)
  {
    v4 = @"text.bubble.fill";
  }

  else
  {
    v4 = @"text.bubble";
  }

  v5 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v4];
  [v6 setImage:v5];
}

- (void)_updateCommentsButtonIfNeeded
{
  if (![(PUOneUpBarsController *)self _needsUpdateCommentsTitle])
  {
    return;
  }

  [(PUOneUpBarsController *)self _setNeedsUpdateCommentsTitle:0];
  _currentAssetDisplayInfoUpdater = [(PUOneUpBarsController *)self _currentAssetDisplayInfoUpdater];
  info = [_currentAssetDisplayInfoUpdater info];

  v5 = [info objectForKeyedSubscript:@"PUCommentsInfoDictionaryKey"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"PUCommentsInfoCommentCountKey"];
    integerValue = [v7 integerValue];

    if ([(PUOneUpBarsController *)self _sizeClassesSupportsVisibleToolbar])
    {
      v9 = [(PUOneUpBarsController *)self _activeBarButtonItemForIdentifier:14];
      if (!v9)
      {
LABEL_24:

        goto LABEL_25;
      }

      v10 = [v6 objectForKeyedSubscript:@"PUCommentsInfoLikeCountKey"];
      integerValue2 = [v10 integerValue];

      if (integerValue2 && integerValue)
      {
        v12 = PULocalizedString(@"ONEUP_COMMENTS_TOGGLE_CONSOLIDATED_COMMENTS");
        v13 = PULocalizedStringWithValidatedFormat(v12, @"%d");

        if (![v13 length] || !-[PUOneUpBarsController shouldUseCompactCommentsTitle](self, "shouldUseCompactCommentsTitle"))
        {
          v14 = [(PUOneUpBarsController *)self _attributedCommentTitleForTitle:v13 controlState:0];
          viewController = [(PUBarsController *)self viewController];
          [v14 size];
          v17 = v16;
          view = [viewController view];
          [view bounds];
          v20 = v19 * 0.5;

          if (v17 < v20)
          {
            v21 = PULocalizedString(@"ONEUP_COMMENTS_TOGGLE_COMMENTS_AND_LIKES");
            v28 = integerValue2;
            v29 = integerValue;
            v22 = PULocalizedStringWithValidatedFormat(v21, @"%d %d");

            v13 = v22;
          }
        }
      }

      else if (integerValue2 || !integerValue)
      {
        if (!integerValue2 || integerValue)
        {
          v13 = PULocalizedString(@"ONEUP_COMMENTS_TOGGLE_NO_COMMENTS");
          v25 = 1;
LABEL_21:
          [(PUOneUpBarsController *)self setShouldBeginEditingAfterShowingComments:v25, v28, v29];
          customView = [v9 customView];
          if (!customView || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpBarsController.m" lineNumber:2839 description:{@"Invalid parameter not satisfying: %@", @"commentsItemButton && [commentsItemButton isKindOfClass:UIButton.class]"}];
          }

          [(PUOneUpBarsController *)self _updateCommentsButton:customView withTitle:v13];

          goto LABEL_24;
        }

        v24 = PULocalizedString(@"ONEUP_COMMENTS_TOGGLE_LIKES_ONLY");
        v28 = integerValue2;
        v13 = PULocalizedStringWithValidatedFormat(v24, @"%d");
      }

      else
      {
        v23 = PULocalizedString(@"ONEUP_COMMENTS_TOGGLE_COMMENTS_ONLY");
        v28 = integerValue;
        v13 = PULocalizedStringWithValidatedFormat(v23, @"%d");
      }

      v25 = 0;
      goto LABEL_21;
    }

    [(PUOneUpBarsController *)self _updateCommentsIcon:integerValue];
  }

LABEL_25:
}

- (void)_invalidateCommentsTitle
{
  [(PUOneUpBarsController *)self _setNeedsUpdateCommentsTitle:1];

  [(PUBarsController *)self invalidateBars];
}

- (id)_textColorForTitleViewController:(BOOL)controller
{
  style = [(PUOneUpBarsController *)self style];
  v5 = +[PUInterfaceManager currentTheme];
  v6 = v5;
  if (style == 1)
  {
    photoBrowserSpotlightThemeColor = [v5 photoBrowserSpotlightThemeColor];
  }

  else
  {
    if (controller)
    {
      [v5 photoBrowserTitleViewTappableTextColor];
    }

    else
    {
      [v5 photoBrowserTitleViewTextColor];
    }
    photoBrowserSpotlightThemeColor = ;
  }

  v8 = photoBrowserSpotlightThemeColor;

  return v8;
}

- (void)_updateTitleIfNeeded
{
  if ([(PUOneUpBarsController *)self _needsUpdateTitle])
  {
    [(PUOneUpBarsController *)self _setNeedsUpdateTitle:0];
    _titleViewController = [(PUOneUpBarsController *)self _titleViewController];

    if (_titleViewController)
    {
      browsingSession = [(PUOneUpBarsController *)self browsingSession];
      viewModel = [browsingSession viewModel];
      navigationBarTitle = [viewModel navigationBarTitle];

      v7 = +[PUOneUpSettings sharedInstance];
      debuggingTitleType = [v7 debuggingTitleType];

      switch(debuggingTitleType)
      {
        case 3:
          browsingSession2 = [(PUOneUpBarsController *)self browsingSession];
          viewModel2 = [browsingSession2 viewModel];
          currentAssetReference = [viewModel2 currentAssetReference];
          asset = [currentAssetReference asset];

          if (objc_opt_respondsToSelector())
          {
            deferredProcessingNeeded = [asset deferredProcessingNeeded];
            v29 = @"Processing…";
            if (!deferredProcessingNeeded)
            {
              v29 = @"Processing Done";
            }

            v30 = v29;

            px_imageModulationManager = 0;
            navigationBarTitle = v30;
          }

          else
          {
            px_imageModulationManager = 0;
          }

          break;
        case 2:
          viewController = [(PUBarsController *)self viewController];
          px_imageModulationManager = [viewController px_imageModulationManager];

          v22 = MEMORY[0x1B8C6CCC0]([px_imageModulationManager requestedEDRHeadroomFactor]);
          v23 = MEMORY[0x1E696AEC0];
          [px_imageModulationManager HDRFocus];
          [v23 stringWithFormat:@"HDR %0.1f · Req %0.1f", v24, *&v22];
          navigationBarTitle = asset = navigationBarTitle;
          break;
        case 1:
          browsingSession3 = [(PUOneUpBarsController *)self browsingSession];
          asset = [browsingSession3 viewModel];

          currentAssetReference2 = [asset currentAssetReference];
          assetsDataSource = [asset assetsDataSource];
          v13 = [assetsDataSource indexPathForAssetReference:currentAssetReference2];
          v14 = [MEMORY[0x1E696AC88] indexPathWithIndex:{objc_msgSend(v13, "section")}];
          v15 = [assetsDataSource numberOfSubItemsAtIndexPath:v14];

          v16 = MEMORY[0x1E696AEC0];
          v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "item") + 1}];
          v18 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
          v19 = [v16 stringWithFormat:@"%@ of %@", v17, v18];

          px_imageModulationManager = 0;
          navigationBarTitle = v19;
          break;
        default:
          px_imageModulationManager = 0;
LABEL_15:
          v46 = px_imageModulationManager;
          v47 = navigationBarTitle;
          [(PUOneUpBarsController *)self _setTitle:navigationBarTitle];
          [(PUOneUpBarsController *)self setDebuggingObservedImageModulationManager:px_imageModulationManager];
          shouldUseCompactTitleView = [(PUOneUpBarsController *)self shouldUseCompactTitleView];
          _currentAssetDisplayInfoUpdater = [(PUOneUpBarsController *)self _currentAssetDisplayInfoUpdater];
          info = [_currentAssetDisplayInfoUpdater info];

          v34 = [info objectForKeyedSubscript:@"PUTitleInfoDictionaryKey"];
          v35 = [v34 objectForKeyedSubscript:@"PUTitleInfoGeoDescriptionKey"];
          v36 = [v34 objectForKeyedSubscript:@"PUTitleInfoCreationDateKey"];
          allowTapOnTitle = [(PUOneUpBarsController *)self allowTapOnTitle];
          v38 = [(PUOneUpBarsController *)self _titleTextColorForTitleViewController:allowTapOnTitle];
          v39 = [(PUOneUpBarsController *)self _subtitleTextColorForTitleViewController:allowTapOnTitle];
          _titleViewController2 = [(PUOneUpBarsController *)self _titleViewController];
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __45__PUOneUpBarsController__updateTitleIfNeeded__block_invoke;
          v48[3] = &unk_1E7B79988;
          v54 = shouldUseCompactTitleView;
          v49 = _titleViewController2;
          v50 = v35;
          v51 = v36;
          v52 = v38;
          v53 = v39;
          v55 = allowTapOnTitle;
          v41 = v39;
          v42 = v38;
          v43 = v36;
          v44 = v35;
          v45 = _titleViewController2;
          [v45 performChanges:v48];

          return;
      }

      goto LABEL_15;
    }
  }
}

uint64_t __45__PUOneUpBarsController__updateTitleIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUsingCompactTitleView:*(a1 + 72)];
  [*(a1 + 32) setGeoDescription:*(a1 + 40)];
  [*(a1 + 32) setCreationDate:*(a1 + 48)];
  [*(a1 + 32) setTitleTextColor:*(a1 + 56)];
  [*(a1 + 32) setSubtitleTextColor:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 73);

  return [v2 setTappable:v3];
}

- (void)_invalidateTitle
{
  [(PUOneUpBarsController *)self _setNeedsUpdateTitle:1];

  [(PUBarsController *)self invalidateBars];
}

- (void)_updateTitleViewProviderIfNeeded
{
  if ([(PUOneUpBarsController *)self _needsUpdateTitleViewProvider])
  {
    [(PUOneUpBarsController *)self _setNeedsUpdateTitleViewProvider:0];
    browsingSession = [(PUOneUpBarsController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    currentAssetReference = [viewModel currentAssetReference];
    asset = [currentAssetReference asset];

    titleSubtitleViewProvider = [(PUOneUpBarsController *)self titleSubtitleViewProvider];
    [titleSubtitleViewProvider setInputAsset:asset];
  }
}

- (void)_invalidateTitleViewProvider
{
  [(PUOneUpBarsController *)self _setNeedsUpdateTitleViewProvider:1];

  [(PUBarsController *)self invalidateBars];
}

- (void)_updateTitleViewContentModeIfNeeded
{
  if ([(PUOneUpBarsController *)self _needsUpdateTitleViewContentMode])
  {
    [(PUOneUpBarsController *)self _setNeedsUpdateTitleViewContentMode:0];
    viewController = [(PUBarsController *)self viewController];
    traitCollection = [viewController traitCollection];

    viewController2 = [(PUBarsController *)self viewController];
    navigationItem = [viewController2 navigationItem];
    rightBarButtonItems = [navigationItem rightBarButtonItems];

    v7 = [traitCollection horizontalSizeClass] == 1 && objc_msgSend(rightBarButtonItems, "count") > 1;
    titleSubtitleViewProvider = [(PUOneUpBarsController *)self titleSubtitleViewProvider];
    [titleSubtitleViewProvider setTitleContentMode:v7];
  }
}

- (void)_invalidateScrubber
{
  [(PUScrubberView *)self->__scrubberView removeFromSuperview];
  scrubberView = self->__scrubberView;
  self->__scrubberView = 0;

  [(PUBarsController *)self invalidateBars];
}

- (void)_updateScrubberViewIfNeeded
{
  _scrubberType = [(PUOneUpBarsController *)self _scrubberType];
  scrubberView = self->__scrubberView;
  if (!_scrubberType)
  {
    if (!scrubberView)
    {
      return;
    }

    v6 = 1;
    goto LABEL_6;
  }

  if (scrubberView)
  {
    v6 = 0;
LABEL_6:

    [(PUScrubberView *)scrubberView setHidden:v6];
    return;
  }

  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  if (!browsingSession)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpBarsController.m" lineNumber:2622 description:{@"Invalid parameter not satisfying: %@", @"browsingSession != nil"}];
  }

  v7 = [PUScrubberView alloc];
  v8 = [(PUScrubberView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = self->__scrubberView;
  self->__scrubberView = v8;
  v10 = v8;

  [(PUScrubberView *)v10 setDelegate:self];
  [(PUScrubberView *)v10 setBrowsingSession:browsingSession];
  [(PUScrubberView *)v10 setType:_scrubberType == 2];
}

- (id)_localizedTitleForMergeDuplicatesBarButtonItem
{
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  isInSelectionMode = [viewModel isInSelectionMode];

  if (isInSelectionMode)
  {
    actionManager = [browsingSession actionManager];
    v6 = [actionManager localizedTitleForActionType:65];
  }

  else
  {
    v6 = PULocalizedString(@"ONE_UP_MERGE_DUPLICATES_BUTTON_TITLE_MERGE_ALL");
  }

  return v6;
}

- (id)_allPhotosImageButton
{
  v3 = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_ALL_PHOTOS");
  v4 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"photo.on.rectangle" title:v3];

  return v4;
}

- (id)_newBarButtonItemWithIdentifier:(int64_t)identifier location:(int64_t)location
{
  v56[1] = *MEMORY[0x1E69E9840];
  location = [(PUOneUpBarsController *)self accessibilityIdentifierForBarButtonItemIdentifier:identifier, location];
  switch(identifier)
  {
    case 0:
      v34 = PXAssertGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_fault_impl(&dword_1B36F3000, v34, OS_LOG_TYPE_FAULT, "undefined identifier", location, 2u);
      }

      goto LABEL_40;
    case 1:
      if ([(PUOneUpBarsController *)self style]== 4)
      {
        [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"slider.horizontal.3" title:0];
      }

      else
      {
        [(PUOneUpBarsController *)self _barButtonItemWithSystemItem:2];
      }
      _allPhotosImageButton = ;
      goto LABEL_89;
    case 2:
      _allPhotosImageButton = [(PUOneUpBarsController *)self _barButtonItemWithSystemItem:16];
      goto LABEL_89;
    case 3:
      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      v32 = PULocalizedString(@"DELETE_BUTTON_TITLE");
      goto LABEL_84;
    case 4:
      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      v32 = PULocalizedString(@"RECOVER_BUTTON_TITLE");
      goto LABEL_84;
    case 5:
      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      v32 = PULocalizedString(@"RESTORE_BUTTON_TITLE");
      goto LABEL_84;
    case 6:
      v13 = [(PUOneUpBarsController *)self _barButtonItemWithSystemItem:9];
      objc_initWeak(location, self);
      v36 = [_PUSharingPreheatGestureRecognizer alloc];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __66__PUOneUpBarsController__newBarButtonItemWithIdentifier_location___block_invoke;
      v53[3] = &unk_1E7B80638;
      objc_copyWeak(&v54, location);
      v37 = [(_PUSharingPreheatGestureRecognizer *)v36 initWithSharingPreheatBlock:v53];
      v56[0] = v37;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
      [v13 _setGestureRecognizers:v38];

      objc_destroyWeak(&v54);
      objc_destroyWeak(location);
      break;
    case 7:
    case 9:
      viewModel = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_FAVORITE");
      v8 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"heart" title:viewModel];
      goto LABEL_86;
    case 8:
      viewModel = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_UNFAVORITE");
      v8 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"heart.fill" title:viewModel];
      goto LABEL_86;
    case 10:
    case 29:
      if (MEMORY[0x1B8C6D660]())
      {
        _allPhotosImageButton = [(PUOneUpBarsController *)self _barButtonItemWithSystemItem:101];
        goto LABEL_89;
      }

      v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@" " style:0 target:self action:sel_barButtonItemTapped_];
      [v13 _setShowsBackButtonIndicator:1];
      break;
    case 11:
      if (MEMORY[0x1B8C6D660]())
      {
        goto LABEL_29;
      }

      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      v32 = PULocalizedString(@"PUPHOTOBROWSER_BUTTON_CAMERA_ALLPHOTOS");
      goto LABEL_84;
    case 12:
      v27 = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_PLAY");
      v28 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"play.fill" title:v27];
      goto LABEL_53;
    case 13:
      v27 = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_PAUSE");
      v28 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"pause.fill" title:v27];
LABEL_53:
      v13 = v28;

      v39 = 50.0;
      goto LABEL_59;
    case 14:
      if (![(PUOneUpBarsController *)self _sizeClassesSupportsVisibleToolbar])
      {
        _allPhotosImageButton = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"text.bubble" title:0];
        goto LABEL_89;
      }

      v26 = [(PUOneUpBarsController *)self _commentsButtonWithTitle:0];
LABEL_36:
      v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v26];
      goto LABEL_96;
    case 15:
      v25 = PULocalizedString(@"PUPHOTOBROWSER_BUTTON_HIDECOMMENTS");
      v26 = [(PUOneUpBarsController *)self _commentsButtonWithTitle:v25];

      goto LABEL_36;
    case 16:
      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      v32 = PULocalizedString(@"PUPHOTOBROWSER_BUTTON_REVIEW");
      goto LABEL_84;
    case 17:
    case 21:
    case 42:
      goto LABEL_24;
    case 18:
      _allPhotosImageButton = [(PUOneUpBarsController *)self _barButtonItemWithSystemItem:111];
      goto LABEL_89;
    case 19:
      viewModel = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_LIKE");
      v8 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"hand.thumbsup" title:viewModel];
      goto LABEL_86;
    case 20:
      viewModel = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_LIKED");
      v8 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"hand.thumbsup.fill" title:viewModel];
      goto LABEL_86;
    case 22:
    case 34:
      _allPhotosImageButton = [(PUOneUpBarsController *)self _barButtonItemWithSystemItem:0];
      goto LABEL_89;
    case 23:
      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      v32 = PULocalizedString(@"PUPHOTOBROWSER_BUTTON_ASSET_EXPLORER_REVIEW_SCREEN_MARKUP");
      goto LABEL_84;
    case 24:
      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      v32 = PULocalizedString(@"PUPHOTOBROWSER_BUTTON_ASSET_EXPLORER_REVIEW_SCREEN_RETAKE");
      goto LABEL_84;
    case 25:
      _allPhotosImageButton = [(PUOneUpBarsController *)self _barButtonItemWithSystemItem:2];
      goto LABEL_89;
    case 26:
      _allPhotosImageButton = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:&stru_1F2AC6818 style:0 target:self action:sel_barButtonItemTapped_];
      goto LABEL_89;
    case 27:
      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      v32 = PULocalizedString(@"PUPHOTOBROWSER_BUTTON_ASSET_EXPLORER_REVIEW_SCREEN_SELECT_ALL");
      goto LABEL_84;
    case 28:
      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      v32 = PULocalizedString(@"PUPHOTOBROWSER_BUTTON_ASSET_EXPLORER_REVIEW_SCREEN_DESELECT_ALL");
      goto LABEL_84;
    case 30:
      if (MEMORY[0x1B8C6D660]())
      {
LABEL_29:
        _allPhotosImageButton = [(PUOneUpBarsController *)self _allPhotosImageButton];
        goto LABEL_89;
      }

      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      v32 = PULocalizedString(@"PUPHOTOBROWSER_SHOW_IN_LIBRARY");
      goto LABEL_84;
    case 31:
      style = [(PUOneUpBarsController *)self style];
      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      if (style == 2)
      {
        v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.down"];
LABEL_64:
        viewModel = v33;
        v8 = [v31 initWithImage:v33 style:0 target:self action:sel_barButtonItemTapped_];
      }

      else
      {
        v32 = PULocalizedString(@"ONE_UP_SAVE_TO_LIBRARY");
LABEL_84:
        viewModel = v32;
        v10 = v31;
LABEL_85:
        v8 = [v10 initWithTitle:viewModel style:0 target:self action:sel_barButtonItemTapped_];
      }

      goto LABEL_86;
    case 32:
      v29 = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_MUTE");
      v30 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"speaker.2.fill" title:v29];
      goto LABEL_58;
    case 33:
      v29 = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_MUTED");
      v30 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"speaker.slash.fill" title:v29];
LABEL_58:
      v13 = v30;

      v39 = 53.0;
LABEL_59:
      [v13 setWidth:v39];
      break;
    case 35:
      browsingSession = [(PUOneUpBarsController *)self browsingSession];
      viewModel = [browsingSession viewModel];

      _customButtonTitleColor = [PUOneUpDetailsBarButtonController defaultGlyphNameFor:viewModel];
      v17 = [PUAnimatableBarButtonItem barButtonItemWithSystemImageName:_customButtonTitleColor];
      [v17 addTarget:self action:sel_barButtonItemTapped_ for:64];
      [v17 setAccessibilityIdentifier:@"com.apple.mobileslideshow.infoButton"];
      v13 = v17;
      v18 = [[PUOneUpDetailsBarButtonController alloc] initWithBarButtonItem:v13 browseViewModel:viewModel];

      [(PUOneUpBarsController *)self setDetailsBarButtonController:v18];
      goto LABEL_15;
    case 36:
      browsingSession2 = [(PUOneUpBarsController *)self browsingSession];
      viewModel2 = [browsingSession2 viewModel];
      currentAssetReference = [viewModel2 currentAssetReference];
      viewModel = [currentAssetReference asset];

      mediaType = [viewModel mediaType];
      v23 = @"ITEM";
      if (mediaType == 1)
      {
        v23 = @"PHOTO";
      }

      if (mediaType == 2)
      {
        v23 = @"VIDEO";
      }

      _customButtonTitleColor = v23;
      v24 = [@"ONE_UP_SYNDICATION_SAVE_TO_LIBRARY_" stringByAppendingString:_customButtonTitleColor];
      v18 = PULocalizedString(v24);

      v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v18 style:0 target:self action:sel_barButtonItemTapped_];
LABEL_15:

      goto LABEL_62;
    case 37:
      v11 = objc_alloc(MEMORY[0x1E69DC708]);
      v12 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"trash"];
      v13 = [v11 initWithImage:v12 style:0 target:self action:sel_barButtonItemTapped_];

      v14 = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_TRASH");
      goto LABEL_95;
    case 38:
      browsingSession3 = [(PUOneUpBarsController *)self browsingSession];
      actionManager = [browsingSession3 actionManager];

      v13 = [actionManager barButtonItemForActionType:59];
      customView = [v13 customView];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v44 = PXAssertGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          LOWORD(location[0]) = 0;
          _os_log_error_impl(&dword_1B36F3000, v44, OS_LOG_TYPE_ERROR, "Expected spotlight action button to conform to PXPhotoKitSpotlightActionButton", location, 2u);
        }
      }

      [customView addTarget:self action:sel_barButtonItemTapped_ forControlEvents:64];
      [(PUOneUpBarsController *)self setSpotlightOpenAppButton:customView];

      break;
    case 39:
      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrowshape.turn.up.left"];
      goto LABEL_64;
    case 40:
      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      v33 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"plus.bubble.tapback"];
      goto LABEL_64;
    case 41:
      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      v32 = PULocalizedString(@"ONE_UP_SELECT_BUTTON_TITLE");
      goto LABEL_84;
    case 43:
      viewModel = [(PUOneUpBarsController *)self _localizedTitleForMergeDuplicatesBarButtonItem];
      v10 = objc_alloc(MEMORY[0x1E69DC708]);
      goto LABEL_85;
    case 44:
      if ([(PUOneUpBarsController *)self _sizeClassesSupportsVisibleToolbar])
      {
        goto LABEL_61;
      }

      _allPhotosImageButton = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"person.2" title:0];
      goto LABEL_89;
    case 45:
      if (![(PUOneUpBarsController *)self _sizeClassesSupportsVisibleToolbar])
      {
        _allPhotosImageButton = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"person" title:0];
        goto LABEL_89;
      }

LABEL_61:
      viewModel = PXLocalizedSharedLibraryString();
      v40 = MEMORY[0x1E69C36C8];
      _customButtonTitleColor = [(PUOneUpBarsController *)self _customButtonTitleColor];
      v13 = [v40 px_toolbarMultilineBarButtonItemWithTitle:viewModel titleColor:_customButtonTitleColor target:self action:sel_barButtonItemTapped_];
LABEL_62:

      goto LABEL_87;
    case 46:
      if ([(PUOneUpBarsController *)self style]== 4)
      {
        _allPhotosImageButton = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"ellipsis" title:0];
        goto LABEL_89;
      }

      v51 = objc_alloc(MEMORY[0x1E69DC708]);
      v52 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"ellipsis.circle"];
      v13 = [v51 initWithImage:v52 menu:0];

      v14 = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_ACTIONS");
      goto LABEL_95;
    case 47:
      if ([(PUOneUpBarsController *)self style]== 4)
      {
        _allPhotosImageButton = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"exclamationmark.triangle" title:0];
        goto LABEL_89;
      }

      v45 = objc_alloc(MEMORY[0x1E69DC708]);
      viewModel = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"exclamationmark.triangle"];
      v8 = [v45 initWithImage:viewModel menu:0];
LABEL_86:
      v13 = v8;
LABEL_87:

      break;
    case 48:
      if ([(PUOneUpBarsController *)self style]== 4)
      {
LABEL_24:
        _allPhotosImageButton = [(PUOneUpBarsController *)self _barButtonItemWithSystemItem:1];
LABEL_89:
        v13 = _allPhotosImageButton;
      }

      else
      {
        v46 = objc_alloc(MEMORY[0x1E69DC708]);
        v47 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"xmark.circle"];
        v13 = [v46 initWithImage:v47 menu:0];

        v14 = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_EXIT_SPATIAL_SCENE");
LABEL_95:
        v26 = v14;
        [v13 setTitle:v14];
LABEL_96:
      }

      break;
    default:
LABEL_40:
      v13 = 0;
      break;
  }

  customView2 = [v13 customView];

  if (customView2)
  {
    customView3 = [v13 customView];
    [customView3 setAccessibilityIdentifier:location];
  }

  else
  {
    [v13 setAccessibilityIdentifier:location];
  }

  return v13;
}

void __66__PUOneUpBarsController__newBarButtonItemWithIdentifier_location___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained actionsController];
  [v1 preheatShareAction];
}

- (id)_barButtonItemWithSystemItem:(int64_t)item
{
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:item target:self action:sel_barButtonItemTapped_];

  return v3;
}

- (id)_barButtonItemWithSystemImageName:(id)name title:(id)title
{
  v6 = MEMORY[0x1E69DC708];
  titleCopy = title;
  nameCopy = name;
  v9 = [v6 alloc];
  v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:nameCopy];

  v11 = [v9 initWithImage:v10 style:0 target:self action:sel_barButtonItemTapped_];
  [v11 setTitle:titleCopy];

  return v11;
}

- (id)accessibilityIdentifierForBarButtonItemIdentifier:(int64_t)identifier
{
  if ((identifier - 1) > 0x2F)
  {
    return @"PUOneUpBarButtonItemIdentifierUndefined";
  }

  else
  {
    return *(&off_1E7B79660 + identifier - 1);
  }
}

- (id)_commentsButtonWithTitle:(id)title
{
  titleCopy = title;
  v5 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [v5 addTarget:self action:sel_barButtonItemTapped_ forControlEvents:64];
  if (titleCopy)
  {
    [(PUOneUpBarsController *)self _updateCommentsButton:v5 withTitle:titleCopy];
  }

  return v5;
}

- (void)_updateCommentsButton:(id)button withTitle:(id)title
{
  titleCopy = title;
  buttonCopy = button;
  v10 = [(PUOneUpBarsController *)self _attributedCommentTitleForTitle:titleCopy controlState:2];
  v8 = [(PUOneUpBarsController *)self _attributedCommentTitleForTitle:titleCopy controlState:0];
  v9 = [(PUOneUpBarsController *)self _attributedCommentTitleForTitle:titleCopy controlState:1];

  [buttonCopy addTarget:self action:sel_barButtonItemTapped_ forControlEvents:64];
  [buttonCopy setAttributedTitle:v8 forState:0];
  [buttonCopy setAttributedTitle:v10 forState:2];
  [buttonCopy setAttributedTitle:v9 forState:1];
  [buttonCopy sizeToFit];
}

- (id)_attributedCommentTitleForTitle:(id)title controlState:(unint64_t)state
{
  titleCopy = title;
  _commentTitleAttributes = [(PUOneUpBarsController *)self _commentTitleAttributes];
  v8 = [MEMORY[0x1E696AAB0] px_attributedStringWithHTMLString:titleCopy defaultAttributes:_commentTitleAttributes];

  if (state == 2)
  {
    _disabledCommentTitleColor = [(PUOneUpBarsController *)self _disabledCommentTitleColor];
LABEL_4:
    v11 = [v8 mutableCopy];
    [v11 addAttribute:*MEMORY[0x1E69DB650] value:_disabledCommentTitleColor range:{0, objc_msgSend(v11, "length")}];
    goto LABEL_6;
  }

  _customButtonTitleColor = [(PUOneUpBarsController *)self _customButtonTitleColor];
  _disabledCommentTitleColor = [_customButtonTitleColor colorWithAlphaComponent:0.5];

  if (state - 1 <= 1)
  {
    goto LABEL_4;
  }

  v11 = v8;
LABEL_6:

  return v11;
}

- (id)_commentTitleAttributes
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] maxContentSizeCategory:*MEMORY[0x1E69DDC50] withSymbolicTraits:0];
  v4 = *MEMORY[0x1E69DB648];
  v10[0] = v3;
  v5 = *MEMORY[0x1E69DB650];
  v9[0] = v4;
  v9[1] = v5;
  _customButtonTitleColor = [(PUOneUpBarsController *)self _customButtonTitleColor];
  v10[1] = _customButtonTitleColor;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)_disabledCommentTitleColor
{
  if (MEMORY[0x1B8C6D660](self, a2))
  {
    [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] lightGrayColor];
  }
  v2 = ;

  return v2;
}

- (id)_customButtonTitleColor
{
  if (MEMORY[0x1B8C6D660](self, a2))
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] _systemInteractionTintColor];
  }
  v2 = ;

  return v2;
}

- (int64_t)_locationForBarButtonItemWithIdentifier:(int64_t)identifier
{
  if ([(PUOneUpBarsController *)self style]== 4)
  {

    return [(PUOneUpBarsController *)self _lemonadeLocationForBarButtonItemWithIdentifier:identifier];
  }

  else
  {
    _playPauseBarItemsController = [(PUOneUpBarsController *)self _playPauseBarItemsController];
    playPauseState = [_playPauseBarItemsController playPauseState];
    shouldPlaceButtonsInNavigationBar = [(PUOneUpBarsController *)self shouldPlaceButtonsInNavigationBar];
    allowShowingPlayPauseButton = [(PUOneUpBarsController *)self allowShowingPlayPauseButton];
    if (playPauseState)
    {
      v10 = allowShowingPlayPauseButton;
    }

    else
    {
      v10 = 0;
    }

    isInCompactLayoutStyle = [(PUOneUpBarsController *)self isInCompactLayoutStyle];
    if (isInCompactLayoutStyle)
    {
      LOBYTE(isInCompactLayoutStyle) = [(PUOneUpBarsController *)self _physicalDeviceIsIPad];
    }

    if (shouldPlaceButtonsInNavigationBar)
    {
      v12 = 1;
    }

    else
    {
      v12 = 3;
    }

    v13 = v12;
    if (!shouldPlaceButtonsInNavigationBar && !isInCompactLayoutStyle)
    {
      if ([(PUOneUpBarsController *)self shouldShowAirPlayButton]|| [(PUOneUpBarsController *)self wantsShowInLibraryButton])
      {
        v13 = 3;
      }

      else if ([(PUOneUpBarsController *)self wantsAllPhotosButton])
      {
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }
    }

    _canShowCommentsForCurrentAsset = [(PUOneUpBarsController *)self _canShowCommentsForCurrentAsset];
    if (!v10 || (v27 = playPauseState, v15 = v13, v16 = _canShowCommentsForCurrentAsset, +[PUOneUpSettings sharedInstance](PUOneUpSettings, "sharedInstance"), v17 = v10, v18 = _playPauseBarItemsController, v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 allowPlayButtonInBars], v19, _canShowCommentsForCurrentAsset = v16, v13 = v15, _playPauseBarItemsController = v18, v10 = v17, (v20 & 1) != 0) || identifier == 13 || v27 != 1 || identifier == 10 || identifier == 18 || (identifier - 21) <= 1)
    {
      switch(identifier)
      {
        case 1:
          break;
        case 2:
        case 37:
          if (shouldPlaceButtonsInNavigationBar || _canShowCommentsForCurrentAsset)
          {
            v13 = 1;
          }

          else
          {
            v13 = 3;
          }

          break;
        case 3:
        case 4:
        case 5:
        case 14:
        case 15:
        case 19:
        case 20:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 31:
        case 38:
        case 39:
        case 40:
        case 44:
        case 45:
          v13 = 3;
          break;
        case 6:
        case 7:
        case 8:
        case 9:
        case 16:
        case 36:
          if (shouldPlaceButtonsInNavigationBar)
          {
            v13 = 2;
          }

          else
          {
            v13 = 3;
          }

          break;
        case 10:
        case 17:
        case 21:
        case 29:
          goto LABEL_39;
        case 11:
        case 18:
        case 22:
        case 30:
        case 34:
        case 42:
        case 46:
        case 47:
        case 48:
          v13 = 1;
          break;
        case 12:
          v23 = +[PUOneUpSettings sharedInstance];
          allowPlayButtonInBars = [v23 allowPlayButtonInBars];

          if ((allowPlayButtonInBars & v10) != 1)
          {
            goto LABEL_47;
          }

          goto LABEL_41;
        case 13:
          if (!v10)
          {
            goto LABEL_47;
          }

          goto LABEL_41;
        case 32:
        case 33:
LABEL_41:
          style = [(PUOneUpBarsController *)self style];
          v22 = 2;
          if (!shouldPlaceButtonsInNavigationBar)
          {
            v22 = 3;
          }

          if (style == 1)
          {
            v13 = 3;
          }

          else
          {
            v13 = v22;
          }

          break;
        case 35:
        case 41:
          v13 = v12;
          break;
        case 43:
          if (shouldPlaceButtonsInNavigationBar)
          {
LABEL_39:
            v13 = 2;
          }

          else
          {
            browsingSession = [(PUOneUpBarsController *)self browsingSession];
            viewModel = [browsingSession viewModel];
            if ([viewModel isInSelectionMode])
            {
              v13 = 3;
            }

            else
            {
              v13 = 1;
            }
          }

          break;
        default:
          goto LABEL_47;
      }
    }

    else
    {
LABEL_47:
      v13 = 0;
    }

    return v13;
  }
}

- (int64_t)_lemonadeNavigationOnlyLocationForBarButtonItemWithIdentifier:(int64_t)identifier
{
  result = 0;
  v8 = *MEMORY[0x1E69E9840];
  if (identifier <= 0x30)
  {
    if (((1 << identifier) & 0x1FEFCDA5CC83ELL) != 0)
    {
      return 1;
    }

    else if (((1 << identifier) & 0x20A207C0) != 0)
    {
      return 2;
    }

    else if (((1 << identifier) & 0x10305003001) != 0)
    {
      v5 = PXAssertGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v6 = 134217984;
        identifierCopy = identifier;
        _os_log_fault_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_FAULT, "Unsupported button item: %ld for Lemonade style", &v6, 0xCu);
      }

      return 0;
    }
  }

  return result;
}

- (int64_t)_lemonadeNavigationOrToolbarLocationForBarButtonItemWithIdentifier:(int64_t)identifier
{
  v3 = 0;
  v12 = *MEMORY[0x1E69E9840];
  switch(identifier)
  {
    case 0:
    case 12:
    case 13:
    case 24:
    case 26:
    case 40:
      v6 = PXAssertGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v10 = 134217984;
        identifierCopy = identifier;
        _os_log_fault_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_FAULT, "Unsupported button item: %ld for Lemonade style", &v10, 0xCu);
      }

      return 0;
    case 1:
    case 7:
    case 8:
    case 9:
    case 14:
    case 15:
    case 27:
    case 28:
    case 31:
    case 36:
    case 39:
    case 43:
    case 44:
    case 45:
      return 5;
    case 2:

      return [(PUOneUpBarsController *)self _trashBinLocation];
    case 3:
    case 6:
    case 23:
      return 6;
    case 4:
    case 5:
    case 19:
    case 20:
    case 25:
    case 37:
    case 38:
      return 4;
    case 10:
    case 17:
    case 21:
    case 29:
      return 2;
    case 11:
    case 18:
    case 22:
    case 30:
    case 34:
    case 41:
    case 42:
    case 46:
    case 47:
    case 48:
      return 1;
    case 35:
      delegate = [(PUOneUpBarsController *)self delegate];
      v8 = [delegate oneUpBarsControllerAssetActionManager:self];

      if ([v8 canPerformActionType:*MEMORY[0x1E69C4838]])
      {
        v3 = 5;
      }

      else if ([(PUOneUpBarsController *)self _trashBinLocation]== 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      return v3;
    default:
      return v3;
  }
}

- (int64_t)_trashBinLocation
{
  if ([(PUOneUpBarsController *)self _canShowCommentsForCurrentAsset])
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (int64_t)_lemonadeLocationForBarButtonItemWithIdentifier:(int64_t)identifier
{
  if ([(PUOneUpBarsController *)self _sizeClassesSupportsVisibleToolbar])
  {

    return [(PUOneUpBarsController *)self _lemonadeNavigationOrToolbarLocationForBarButtonItemWithIdentifier:identifier];
  }

  else
  {

    return [(PUOneUpBarsController *)self _lemonadeNavigationOnlyLocationForBarButtonItemWithIdentifier:identifier];
  }
}

- (int64_t)_scrubberType
{
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  contentPrivacyState = [viewModel contentPrivacyState];
  v6 = 0;
  if ([(PUOneUpBarsController *)self shouldShowScrubber]&& contentPrivacyState != 1)
  {
    v7 = +[PUOneUpSettings sharedInstance];
    allowScrubber = [v7 allowScrubber];

    if (allowScrubber && !-[PUOneUpBarsController _canShowCommentsForCurrentAsset](self, "_canShowCommentsForCurrentAsset") && (-[PUOneUpBarsController browsingSession](self, "browsingSession"), v9 = objc_claimAutoreleasedReturnValue(), [v9 viewModel], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "assetsDataSource"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsMultipleAssets"), v11, v10, v9, (v12 & 1) != 0))
    {
      v6 = 1;
    }

    else
    {
      currentAssetReference = [viewModel currentAssetReference];
      v14 = [viewModel assetViewModelForAssetReference:currentAssetReference];
      asset = [v14 asset];
      playbackStyle = [asset playbackStyle];

      videoPlayer = [v14 videoPlayer];
      v18 = videoPlayer;
      if (playbackStyle == 4 && (([videoPlayer isPlaybackDesired] & 1) != 0 || objc_msgSend(v18, "isActivated")))
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (BOOL)_shouldShowDoneEditingButton
{
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  assetViewModelForCurrentAssetReference = [viewModel assetViewModelForCurrentAssetReference];
  if ([assetViewModelForCurrentAssetReference isInEditMode])
  {
    v5 = [assetViewModelForCurrentAssetReference editStyle] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_currentAssetNeedsSensitivityProtection
{
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  asset = [currentAssetReference asset];
  LOBYTE(viewModel) = [asset needsSensitivityProtection];

  return viewModel;
}

- (BOOL)_canShowSensitiveAssetMoreHelpContextMenuForCurrentAsset
{
  _moreHelpMenu = [(PUOneUpBarsController *)self _moreHelpMenu];
  v3 = _moreHelpMenu != 0;

  return v3;
}

- (BOOL)_canShowCommentsForCurrentAsset
{
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  asset = [currentAssetReference asset];
  if (self->_delegateFlags.respondsToCanShowCommentsForAsset)
  {
    delegate = [(PUOneUpBarsController *)self delegate];
    v8 = [delegate oneUpBarsController:self canShowCommentsForAsset:asset];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_physicalDeviceIsIPad
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

- (BOOL)_wantsChromeVisible
{
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  if ([viewModel isChromeVisible])
  {
    v5 = ![(PUOneUpBarsController *)self disableShowingNavigationBars];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (NSString)subtitle
{
  _titleViewController = [(PUOneUpBarsController *)self _titleViewController];
  subtitle = [_titleViewController subtitle];

  return subtitle;
}

- (NSString)title
{
  _titleViewController = [(PUOneUpBarsController *)self _titleViewController];
  title = [_titleViewController title];

  return title;
}

- (int64_t)preferredBarStyle
{
  v2 = +[PUInterfaceManager currentTheme];
  photoBrowserBarStyle = [v2 photoBrowserBarStyle];

  return photoBrowserBarStyle;
}

- (BOOL)_sizeClassesSupportsVisibleToolbar
{
  viewController = [(PUBarsController *)self viewController];
  traitCollection = [viewController traitCollection];
  v4 = [PUOneUpChromeToolbarVisibilityUtilities sizeClassSupportsVisibleToolbarWithTraitCollection:traitCollection];

  return v4;
}

- (BOOL)wantsToolbarVisible
{
  if (![(PUOneUpBarsController *)self _wantsChromeVisible]|| +[PUOneUpChromeUserDefaultsWrapper shouldHideToolbar])
  {
    return 0;
  }

  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  assetViewModelForCurrentAssetReference = [viewModel assetViewModelForCurrentAssetReference];
  if ([assetViewModelForCurrentAssetReference isAccessoryViewVisible])
  {
    assetReference = [assetViewModelForCurrentAssetReference assetReference];
    if (assetReference && self->_delegateFlags.respondsToShouldHideToolbarWhenShowingAccessoryViewForAssetReference)
    {
      delegate = [(PUOneUpBarsController *)self delegate];
      v9 = [delegate oneUpBarsController:self shouldHideToolbarWhenShowingAccessoryViewForAssetReference:assetReference] ^ 1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  style = [(PUOneUpBarsController *)self style];
  _sizeClassesSupportsVisibleToolbar = (style != 4) & v9;
  if (style == 4 && v9)
  {
    _sizeClassesSupportsVisibleToolbar = [(PUOneUpBarsController *)self _sizeClassesSupportsVisibleToolbar];
  }

  return _sizeClassesSupportsVisibleToolbar;
}

- (id)currentAssetByAssetCollection
{
  v14[1] = *MEMORY[0x1E69E9840];
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  assetCollection = [currentAssetReference assetCollection];
  if (assetCollection)
  {
    asset = [currentAssetReference asset];
    if (asset)
    {
      assetCollection2 = [currentAssetReference assetCollection];
      v13 = assetCollection2;
      asset2 = [currentAssetReference asset];
      v12 = asset2;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
      v14[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)wantsNavigationBarVisible
{
  if ([(PUOneUpBarsController *)self _wantsChromeVisible]&& !+[PUOneUpChromeUserDefaultsWrapper shouldHideNavigationBar])
  {
    browsingSession = [(PUOneUpBarsController *)self browsingSession];
    viewModel = [browsingSession viewModel];

    assetViewModelForCurrentAssetReference = [viewModel assetViewModelForCurrentAssetReference];
    if ([assetViewModelForCurrentAssetReference isAccessoryViewVisible])
    {
      assetReference = [assetViewModelForCurrentAssetReference assetReference];
      if (assetReference && self->_delegateFlags.respondsToShouldHideNavigationBarWhenShowingAccessoryViewForAssetReference)
      {
        delegate = [(PUOneUpBarsController *)self delegate];
        v3 = [delegate oneUpBarsController:self shouldHideNavigationBarWhenShowingAccessoryViewForAssetReference:assetReference] ^ 1;
      }

      else
      {
        LOBYTE(v3) = 1;
      }
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)prefersStatusBarHidden
{
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];

  if ([(PUOneUpBarsController *)self _wantsChromeVisible])
  {
    v6 = +[PUOneUpSettings sharedInstance];
    v7 = [v6 allowStatusBar] ^ 1;

    if (!currentAssetReference)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v7) = 1;
    if (!currentAssetReference)
    {
      goto LABEL_8;
    }
  }

  if (self->_delegateFlags.respondsToShouldHideStatusBarWhenShowingAccessoryViewForAssetReference)
  {
    delegate = [(PUOneUpBarsController *)self delegate];
    v9 = [delegate oneUpBarsController:self shouldHideStatusBarWhenShowingAccessoryViewForAssetReference:currentAssetReference];

    if (!(v7 & 1 | ((v9 & 1) == 0)))
    {
      browsingSession2 = [(PUOneUpBarsController *)self browsingSession];
      viewModel2 = [browsingSession2 viewModel];

      assetViewModelForCurrentAssetReference = [viewModel2 assetViewModelForCurrentAssetReference];
      LOBYTE(v7) = [assetViewModelForCurrentAssetReference isAccessoryViewVisible];
    }
  }

LABEL_8:

  return v7;
}

- (BOOL)shouldTapBeginAtLocationFromProvider:(id)provider
{
  if (!self->_delegateFlags.respondsToShouldTapBeginAtLocationFromProvider)
  {
    return 1;
  }

  selfCopy = self;
  providerCopy = provider;
  delegate = [(PUOneUpBarsController *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate oneUpBarsController:selfCopy shouldTapBeginAtLocationFromProvider:providerCopy];

  return selfCopy;
}

- (UITapGestureRecognizer)tapGestureRecognizer
{
  [(PUBarsController *)self updateIfNeeded];

  return [(PUOneUpBarsController *)self _tapGestureRecognizer];
}

- (void)updateContentGuideInsets
{
  v133 = *MEMORY[0x1E69E9840];
  v130.receiver = self;
  v130.super_class = PUOneUpBarsController;
  [(PUBarsController *)&v130 updateContentGuideInsets];
  v3 = PLOneUpGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEBUG, "Updating content guide insets for %@", buf, 0xCu);
  }

  [(PUBarsController *)self contentGuideInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  viewController = [(PUBarsController *)self viewController];
  if ([viewController isViewLoaded])
  {
    view = [viewController view];
    v14 = MEMORY[0x1E69DDCE0];
    v15 = *MEMORY[0x1E69DDCE0];
    navigationController = [viewController navigationController];
    navigationBar = [navigationController navigationBar];
    window = [navigationBar window];

    if (window)
    {
      if ([navigationBar barStyle] == 4)
      {
        [navigationBar frame];
      }

      else
      {
        [navigationBar bounds];
        [view convertRect:navigationBar fromView:?];
      }

      MaxY = CGRectGetMaxY(*&v19);
      [view bounds];
      v37 = MaxY - CGRectGetMinY(v134);
      mEMORY[0x1E69DC668] = PLOneUpGetLog();
      if (os_log_type_enabled(mEMORY[0x1E69DC668], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = v37;
        _os_log_impl(&dword_1B36F3000, mEMORY[0x1E69DC668], OS_LOG_TYPE_DEBUG, "\t topBarHeight: %f", buf, 0xCu);
      }
    }

    else
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      statusBarOrientation = [mEMORY[0x1E69DC668] statusBarOrientation];
      v25 = PLOneUpGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = [MEMORY[0x1E696AD98] numberWithInteger:statusBarOrientation];
        *buf = 138412290;
        *&buf[4] = v26;
        _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_DEBUG, "\t interfaceOrientation: %@", buf, 0xCu);

        v14 = MEMORY[0x1E69DDCE0];
      }

      v27 = 0.0;
      if (([navigationController prefersStatusBarHidden] & 1) == 0)
      {
        window2 = [view window];
        windowScene = [window2 windowScene];
        statusBarManager = [windowScene statusBarManager];
        [statusBarManager statusBarFrame];
        v32 = v31;

        v33 = PLOneUpGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          *&buf[4] = v32;
          _os_log_impl(&dword_1B36F3000, v33, OS_LOG_TYPE_DEBUG, "\t statusBarHeight: %f", buf, 0xCu);
        }

        v27 = v32 + 0.0;
        v14 = MEMORY[0x1E69DDCE0];
      }

      [MEMORY[0x1E69DCCC0] defaultSizeForOrientation:statusBarOrientation];
      v35 = v34;
      v36 = PLOneUpGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = v35;
        _os_log_impl(&dword_1B36F3000, v36, OS_LOG_TYPE_DEBUG, "\t statusBarHeight: %f", buf, 0xCu);
      }

      v37 = v27 + v35;
      [view safeAreaInsets];
      if (v37 < v38)
      {
        v37 = v38;
      }
    }

    v40 = v14[2];

    if (v15 >= v37)
    {
      v5 = v15;
    }

    else
    {
      v5 = v37;
    }

    toolbar = [navigationController toolbar];
    if ([(PUOneUpBarsController *)self wantsToolbarVisible])
    {
      window3 = [toolbar window];
      window4 = [view window];

      if (window3 == window4)
      {
        [toolbar bounds];
        [view convertRect:toolbar fromView:?];
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v54 = v5;
        v56 = v55;
        [view bounds];
        v58 = v57;
        v135.origin.x = v49;
        v135.origin.y = v51;
        v135.size.width = v53;
        v135.size.height = v56;
        v5 = v54;
        v9 = v58 - CGRectGetMinY(v135);
      }

      else
      {
        v9 = v40;
        if (toolbar)
        {
          [toolbar sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
          v45 = v44;
          v46 = PLOneUpGetLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = v45;
            _os_log_impl(&dword_1B36F3000, v46, OS_LOG_TYPE_DEBUG, "\t toolbarHeight: %f", buf, 0xCu);
          }

          if (v40 >= v45)
          {
            v9 = v40;
          }

          else
          {
            v9 = v45;
          }
        }
      }
    }

    else
    {
      [view safeAreaInsets];
      v9 = v47;
    }

    v109 = v14[1];
    v110 = v14[3];
    if ([(PUOneUpBarsController *)self disableShowingNavigationBars])
    {
      browsingSession = [(PUOneUpBarsController *)self browsingSession];
      viewModel = [browsingSession viewModel];
      reviewScreenBarsModel = [viewModel reviewScreenBarsModel];

      if (reviewScreenBarsModel)
      {
        v105 = v40;
        v108 = v15;
        [view bounds];
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v69 = v68;
        UIRectGetCenter();
        v104 = v70;
        v72 = v71;
        window5 = [view window];
        _windowInterfaceOrientation = [window5 _windowInterfaceOrientation];

        if (!_windowInterfaceOrientation)
        {
          [(PUBarsController *)self contentGuideInsets];
          v5 = v100;
          v7 = v101;
          v9 = v102;
          v11 = v103;
          goto LABEL_63;
        }

        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        [PUReviewScreenUtilities reviewScreenTopBarGeometryForReferenceBounds:_windowInterfaceOrientation withOrientation:v63, v65, v67, v69];
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        [PUReviewScreenUtilities reviewScreenControlBarGeometryForReferenceBounds:_windowInterfaceOrientation withOrientation:v63, v65, v67, v69];
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v106 = v69;
        v107 = v67;
        [PUReviewScreenUtilities reviewScreenScrubberBarGeometryForReferenceBounds:_windowInterfaceOrientation withOrientation:v63 safeAreaInsets:v65, v67, v69, v5, v109, v9, v110];
        v75 = 0;
        *buf = 0u;
        memset(v132, 0, sizeof(v132));
        do
        {
          v76 = &buf[v75];
          v78 = *&buf[v75];
          v77 = *&buf[v75 + 8];
          v79 = *&buf[v75 + 16];
          v80 = *(&v132[v75 / 0x10] + 1);
          v136.origin.x = v78;
          v136.origin.y = v77;
          v136.size.width = v79;
          v136.size.height = v80;
          if (!CGRectIsEmpty(v136))
          {
            v81 = *(v76 + 4);
            *&v111.a = *(v76 + 3);
            *&v111.c = v81;
            *&v111.tx = *(v76 + 5);
            v82 = v78;
            *&v81 = v77;
            v83 = v79;
            v84 = v80;
            CGRectApplyAffineTransform(*(&v81 - 8), &v111);
            UIRectCenteredAboutPoint();
            x = v137.origin.x;
            y = v137.origin.y;
            width = v137.size.width;
            height = v137.size.height;
            MinX = CGRectGetMinX(v137);
            v138.origin.x = x;
            v138.origin.y = y;
            v138.size.width = width;
            v138.size.height = height;
            MaxX = CGRectGetMaxX(v138);
            v139.origin.x = x;
            v139.origin.y = y;
            v139.size.width = width;
            v139.size.height = height;
            MinY = CGRectGetMinY(v139);
            v140.origin.x = x;
            v140.origin.y = y;
            v140.size.width = width;
            v140.size.height = height;
            v92 = CGRectGetMaxY(v140);
            if (MinY < v72 && v92 < v72)
            {
              v108 = v92;
            }

            else if (MinY <= v72 || v92 <= v72)
            {
              if (MinX < v104 && MaxX < v104)
              {
                v109 = MaxX;
              }

              else
              {
                v96 = MaxX <= v104 || MinX <= v104;
                v97 = v110;
                if (!v96)
                {
                  v97 = v107 - MinX;
                }

                v110 = v97;
              }
            }

            else
            {
              v105 = v106 - MinY;
            }
          }

          v75 += 96;
        }

        while (v75 != 288);
        v5 = v108;
        v9 = v105;
      }
    }

    v7 = v109;
    v11 = v110;
LABEL_63:
  }

  v98 = PLOneUpGetLog();
  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
  {
    v141.top = v5;
    v141.left = v7;
    v141.bottom = v9;
    v141.right = v11;
    v99 = NSStringFromUIEdgeInsets(v141);
    *buf = 138412290;
    *&buf[4] = v99;
    _os_log_impl(&dword_1B36F3000, v98, OS_LOG_TYPE_DEBUG, "\t contentGuideInsets: %@", buf, 0xCu);
  }

  [(PUBarsController *)self setContentGuideInsets:v5, v7, v9, v11];
}

- (void)updateGestureRecognizersWithHostingView:(id)view
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = PUOneUpBarsController;
  [(PUBarsController *)&v12 updateGestureRecognizersWithHostingView:viewCopy];
  if ([(PUOneUpBarsController *)self style]!= 4)
  {
    _tapGestureRecognizer = [(PUOneUpBarsController *)self _tapGestureRecognizer];
    v6 = _tapGestureRecognizer;
    if (viewCopy)
    {
      if (!_tapGestureRecognizer)
      {
        v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapGestureRecognizer_];
        [(PUOneUpBarsController *)self _setTapGestureRecognizer:v6];
        delegate = [(PUOneUpBarsController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v8 = [delegate barsController:self delegateForGestureRecognizer:v6];
        }

        else
        {
          v8 = 0;
        }

        [v6 setDelegate:v8];
      }

      view = [v6 view];

      if (view != viewCopy)
      {
        view2 = [v6 view];
        [view2 removeGestureRecognizer:v6];

        [viewCopy addGestureRecognizer:v6];
      }
    }

    else if (_tapGestureRecognizer)
    {
      view3 = [_tapGestureRecognizer view];
      [view3 removeGestureRecognizer:v6];

      [(PUOneUpBarsController *)self _setTapGestureRecognizer:0];
    }
  }
}

- (void)_updateAddToLibraryBarButtonItem
{
  mEMORY[0x1E69C33D8] = [MEMORY[0x1E69C33D8] sharedInstance];
  disableOneUpDescriptiveAdd = [mEMORY[0x1E69C33D8] disableOneUpDescriptiveAdd];

  if (disableOneUpDescriptiveAdd)
  {
    return;
  }

  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  currentAssetReference = [viewModel currentAssetReference];
  v7 = [viewModel assetViewModelForAssetReference:currentAssetReference];

  if (v7)
  {
    importState = [v7 importState];
    v9 = 0;
    v10 = 1;
    if (importState > 2)
    {
      if ((importState - 3) >= 2)
      {
        goto LABEL_12;
      }
    }

    else if (importState)
    {
      if (importState == 1)
      {
        v10 = 0;
        v11 = @"ONE_UP_SAVING_TO_LIBRARY";
        goto LABEL_11;
      }

      if (importState == 2)
      {
        v10 = 0;
        v11 = @"ONE_UP_SAVED_TO_LIBRARY";
LABEL_11:
        v9 = PULocalizedString(v11);
      }

LABEL_12:
      v12 = [(PUOneUpBarsController *)self _activeBarButtonItemForIdentifier:31];
      [v12 setTitle:v9];
      [v12 setEnabled:v10];

      goto LABEL_13;
    }

    v11 = @"ONE_UP_SAVE_TO_LIBRARY";
    goto LABEL_11;
  }

LABEL_13:
}

- (void)_updateSyndicationSaveBarButtonItem
{
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  browsingSession2 = [(PUOneUpBarsController *)self browsingSession];
  viewModel2 = [browsingSession2 viewModel];
  currentAssetReference = [viewModel2 currentAssetReference];

  v7 = [viewModel assetViewModelForAssetReference:currentAssetReference];
  if (v7)
  {
    v8 = [(PUOneUpBarsController *)self _activeBarButtonItemForIdentifier:36];
    asset = [v7 asset];
    mediaType = [asset mediaType];
    v11 = @"ITEM";
    if (mediaType == 1)
    {
      v11 = @"PHOTO";
    }

    if (mediaType == 2)
    {
      v11 = @"VIDEO";
    }

    v12 = v11;

    fetchAssetSyndicationState = [v7 fetchAssetSyndicationState];
    if ((fetchAssetSyndicationState - 2) > 2)
    {
      v15 = &stru_1F2AC6818;
    }

    else
    {
      v14 = [(__CFString *)*(&off_1E7B79648 + fetchAssetSyndicationState - 2) stringByAppendingString:v12];
      v15 = PULocalizedString(v14);
    }

    [v8 setTitle:v15];
    [v8 setEnabled:fetchAssetSyndicationState == 2];
  }
}

- (void)_updateFavoriteBarButtonItem
{
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  currentAssetReference = [viewModel currentAssetReference];
  v5 = [viewModel assetViewModelForAssetReference:currentAssetReference];
  v6 = v5;
  if (v5)
  {
    if ([v5 isFavorite])
    {
      v7 = 8;
    }

    else
    {
      v7 = 9;
    }

    v8 = [(PUOneUpBarsController *)self _barButtonItemForIdentifier:v7 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:7]];
    v9 = [(PUOneUpBarsController *)self _activeBarButtonItemForIdentifier:7];
    image = [v8 image];
    image2 = [v9 image];

    if (image != image2)
    {
      image3 = [v8 image];
      [v9 setImage:image3];

      landscapeImagePhone = [v8 landscapeImagePhone];
      [v9 setLandscapeImagePhone:landscapeImagePhone];

      title = [v8 title];
      [v9 setTitle:title];
    }
  }
}

- (void)_updateSensitiveAssetMoreHelpBarButtonItem
{
  v4 = [(PUOneUpBarsController *)self _barButtonItemForIdentifier:47 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:47]];
  _moreHelpMenu = [(PUOneUpBarsController *)self _moreHelpMenu];
  [v4 setMenu:_moreHelpMenu];
}

- (void)_updateActionsBarButtonItem
{
  v4 = [(PUOneUpBarsController *)self _barButtonItemForIdentifier:46 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:46]];
  if (self->_presentedTipID)
  {
    [v4 setTarget:self];
    [v4 setAction:sel_barButtonItemTapped_];
    [v4 setMenu:0];
  }

  else
  {
    [v4 setTarget:0];
    [v4 setAction:0];
    _actionsMenu = [(PUOneUpBarsController *)self _actionsMenu];
    [v4 setMenu:_actionsMenu];
  }
}

- (id)_moreHelpMenu
{
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  currentAssetReference = [viewModel currentAssetReference];
  asset = [currentAssetReference asset];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = asset;
  }

  else
  {
    v7 = 0;
  }

  assetCollection = [currentAssetReference assetCollection];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = assetCollection;

    if (!v7 || !v9 || ![v9 px_isSharedAlbum])
    {
      goto LABEL_13;
    }

    v10 = objc_alloc(MEMORY[0x1E69C39B0]);
    assetCollection = [(PUBarsController *)self viewController];
    v11 = [v10 initWithAsset:v7 sharedAlbum:v9 presentingViewController:assetCollection];
    sensitivityMoreHelpMenuManager = self->_sensitivityMoreHelpMenuManager;
    self->_sensitivityMoreHelpMenuManager = v11;
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  v13 = self->_sensitivityMoreHelpMenuManager;
  if (v13)
  {
    createMenuIfNeeded = [(PXSensitivityAssetMoreHelpMenuManager *)v13 createMenuIfNeeded];
  }

  else
  {
    createMenuIfNeeded = 0;
  }

  return createMenuIfNeeded;
}

- (id)_actionsMenu
{
  v14[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC928];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37__PUOneUpBarsController__actionsMenu__block_invoke;
  v11 = &unk_1E7B7B388;
  objc_copyWeak(&v12, &location);
  v3 = [v2 elementWithUncachedProvider:&v8];
  v4 = MEMORY[0x1E69DCC60];
  v14[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:{1, v8, v9, v10, v11}];
  v6 = [v4 menuWithChildren:v5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __37__PUOneUpBarsController__actionsMenu__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _assetActionMenuElements];

  if (![v5 count])
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_FAULT, "Action Menu has no actions, this is illegal.", v8, 2u);
    }
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  (v3)[2](v3, v7);
}

- (id)_internalAssetActionMenuElements
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (!self->_delegateFlags.respondsToMenuElements || (-[PUOneUpBarsController delegate](self, "delegate"), v3 = objc_claimAutoreleasedReturnValue(), [v3 oneUpBarsControllerCustomActionMenuElements:self], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    delegate = [(PUOneUpBarsController *)self delegate];
    v6 = [delegate oneUpBarsControllerAssetActionManager:self];

    v7 = MEMORY[0x1E69C4488];
    v8 = *MEMORY[0x1E69C4828];
    v11[0] = *MEMORY[0x1E69C47C0];
    v11[1] = v8;
    v11[2] = *MEMORY[0x1E69C4818];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
    v4 = [v7 menuElementsForActionManager:v6 excludedActionTypes:v9];
  }

  return v4;
}

- (id)_assetActionMenuElements
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__43371;
  v20 = __Block_byref_object_dispose__43372;
  v21 = MEMORY[0x1E695E0F0];
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];
  currentAssetReference = [viewModel currentAssetReference];
  asset = [currentAssetReference asset];
  assetCollection = [currentAssetReference assetCollection];
  actionManager = [browsingSession actionManager];
  v9 = [actionManager canPerformActionType:66 onAsset:asset inAssetCollection:assetCollection];

  if (v9)
  {
    objc_initWeak(&location, self);
    actionsController = [(PUOneUpBarsController *)self actionsController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__PUOneUpBarsController__assetActionMenuElements__block_invoke;
    v13[3] = &unk_1E7B79608;
    v13[4] = &v16;
    objc_copyWeak(&v14, &location);
    [actionsController performSimpleActionWithActionType:66 completionHandler:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __49__PUOneUpBarsController__assetActionMenuElements__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained _internalAssetActionMenuElements];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (void)updateBars
{
  v198[8] = *MEMORY[0x1E69E9840];
  v196.receiver = self;
  v196.super_class = PUOneUpBarsController;
  [(PUBarsController *)&v196 updateBars];
  browsingSession = [(PUOneUpBarsController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  currentAssetReference = [viewModel currentAssetReference];
  v6 = [viewModel assetViewModelForAssetReference:currentAssetReference];
  asset = [currentAssetReference asset];
  assetCollection = [currentAssetReference assetCollection];
  contentPrivacyState = [viewModel contentPrivacyState];
  shouldHideChrome = [MEMORY[0x1E69C3740] shouldHideChrome];
  [(PUOneUpBarsController *)self _updateTitleIfNeeded];
  [(PUOneUpBarsController *)self _updateTitleViewProviderIfNeeded];
  _title = [(PUOneUpBarsController *)self _title];
  _titleViewController = [(PUOneUpBarsController *)self _titleViewController];
  view = [_titleViewController view];

  browsingSession2 = [(PUOneUpBarsController *)self browsingSession];
  actionManager = [browsingSession2 actionManager];

  currentAssetByAssetCollection = [(PUOneUpBarsController *)self currentAssetByAssetCollection];
  viewController = [(PUBarsController *)self viewController];
  [(PUOneUpBarsController *)self _updateCommentsButtonIfNeeded];
  LODWORD(browsingSession2) = [(PUOneUpBarsController *)self shouldShowProgrammaticNavBackButton];
  shouldShowTitleView = [(PUOneUpBarsController *)self shouldShowTitleView];
  _shouldShowCenterNavigationBarItems = 0;
  v165 = currentAssetReference;
  v164 = browsingSession2;
  if (currentAssetReference && shouldShowTitleView && contentPrivacyState != 1 && (shouldHideChrome & 1) == 0)
  {
    _shouldShowCenterNavigationBarItems = [(PUOneUpBarsController *)self _shouldShowCenterNavigationBarItems];
  }

  titleSubtitleViewProvider = [(PUOneUpBarsController *)self titleSubtitleViewProvider];
  titleSubtitleView = [titleSubtitleViewProvider titleSubtitleView];
  [titleSubtitleView setVisibility:_shouldShowCenterNavigationBarItems];

  LODWORD(_localizedTitleForMergeDuplicatesBarButtonItem) = [v6 isInEditMode] | (contentPrivacyState == 1) | shouldHideChrome;
  _canShowCommentsForCurrentAsset = [(PUOneUpBarsController *)self _canShowCommentsForCurrentAsset];
  allowShowingPlayPauseButton = [(PUOneUpBarsController *)self allowShowingPlayPauseButton];
  _shouldShowDoneEditingButton = [(PUOneUpBarsController *)self _shouldShowDoneEditingButton];
  isInSelectionMode = [viewModel isInSelectionMode];
  wantsAllPhotosButton = [(PUOneUpBarsController *)self wantsAllPhotosButton];
  _canShowSensitiveAssetMoreHelpContextMenuForCurrentAsset = [(PUOneUpBarsController *)self _canShowSensitiveAssetMoreHelpContextMenuForCurrentAsset];
  [(PUOneUpBarsController *)self _resetIdentifierIndexes];
  v157 = wantsAllPhotosButton;
  if (_localizedTitleForMergeDuplicatesBarButtonItem)
  {
    if ((contentPrivacyState == 1) | shouldHideChrome & 1)
    {
      goto LABEL_16;
    }

    v18 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:17];
    if (!v18)
    {
      v19 = PXAssertGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_FAULT, "The cancel item needs a location", buf, 2u);
      }
    }

    selfCopy2 = self;
    v21 = 17;
    v22 = v18;
    v23 = 1;
  }

  else
  {
    if (!wantsAllPhotosButton)
    {
      goto LABEL_16;
    }

    v24 = [actionManager shouldEnableActionType:43 onAllAssetsByAssetCollection:currentAssetByAssetCollection];
    v22 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:11];
    selfCopy2 = self;
    v21 = 11;
    v23 = v24;
  }

  [(PUOneUpBarsController *)selfCopy2 _updateIdentifiersIndexesWithIdentifier:v21 location:v22 shouldEnable:v23];
LABEL_16:
  v162 = shouldHideChrome ^ 1;
  v25 = [actionManager canPerformAction:13 onAllAssetsByAssetCollection:currentAssetByAssetCollection];
  v171 = [actionManager canPerformAction:11 onAllAssetsByAssetCollection:currentAssetByAssetCollection];
  v169 = v6;
  if ([actionManager canPerformActionType:35 onAsset:asset inAssetCollection:assetCollection])
  {
    if ((v25 & 1) == 0)
    {
LABEL_18:
      v26 = (v171 | isInSelectionMode) ^ 1;
      goto LABEL_21;
    }
  }

  else if (!(v25 & 1 | ![(PUOneUpBarsController *)self _currentAssetNeedsSensitivityProtection]))
  {
    goto LABEL_18;
  }

  v26 = 0;
LABEL_21:
  if (asset)
  {
    v27 = assetCollection == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v27;
  v170 = viewModel;
  v158 = shouldHideChrome;
  if ((v28 | _localizedTitleForMergeDuplicatesBarButtonItem))
  {
    goto LABEL_148;
  }

  v161 = v25;
  v159 = _localizedTitleForMergeDuplicatesBarButtonItem;
  v29 = [actionManager canPerformActionType:4 onAsset:asset inAssetCollection:assetCollection];
  if (v29)
  {
    v30 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:44];
    if (v30)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 44, v30, [actionManager shouldEnableActionType:4 onAllAssetsByAssetCollection:currentAssetByAssetCollection]);
    }
  }

  v31 = [actionManager canPerformActionType:6 onAsset:asset inAssetCollection:assetCollection];
  if (v31)
  {
    v32 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:45];
    if (v32)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 45, v32, [actionManager shouldEnableActionType:6 onAllAssetsByAssetCollection:currentAssetByAssetCollection]);
    }
  }

  v33 = [viewModel assetSharedViewModelForAsset:asset];
  v34 = +[PUPhotoEditProtoSettings sharedInstance];
  if ([v34 enableLiveVideoRender])
  {
    v35 = 1;
  }

  else
  {
    v35 = [v33 needsDeferredProcessing] ^ 1;
  }

  v153 = v35;

  if (v26)
  {
    v36 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:6];
    if (v36)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 6, v36, [actionManager shouldEnableActionType:35 onAsset:asset inAssetCollection:assetCollection]);
    }
  }

  if ([actionManager canPerformActionType:59 onAsset:asset inAssetCollection:assetCollection])
  {
    if ([MEMORY[0x1E69C3348] isAppInstalled:1])
    {
      v37 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:38];
      if (v37)
      {
        -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 38, v37, [actionManager shouldEnableActionType:59 onAsset:asset inAssetCollection:assetCollection]);
      }
    }
  }

  v154 = v33;
  if (!(v161 & 1 | (([actionManager canPerformActionType:37 onAsset:asset inAssetCollection:assetCollection] & 1) == 0) | v171 & 1))
  {
    v38 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:16];
    if (v38)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 16, v38, [actionManager shouldEnableActionType:37 onAsset:asset inAssetCollection:assetCollection]);
    }
  }

  v39 = [actionManager canPerformActionType:66 onAsset:asset inAssetCollection:assetCollection];
  delegate = [(PUOneUpBarsController *)self delegate];
  v41 = [delegate oneUpBarsControllerWantsActionsMenu:self];

  if ((v41 & v26) == 1 && v39)
  {
    -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 46, -[PUOneUpBarsController _locationForBarButtonItemWithIdentifier:](self, "_locationForBarButtonItemWithIdentifier:", 46), [actionManager shouldEnableActionType:66 onAsset:asset inAssetCollection:assetCollection]);
    [(PUOneUpBarsController *)self _updateActionsBarButtonItem];
  }

  if (_canShowSensitiveAssetMoreHelpContextMenuForCurrentAsset)
  {
    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:47 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:47] shouldEnable:1];
    [(PUOneUpBarsController *)self _updateSensitiveAssetMoreHelpBarButtonItem];
  }

  if (!(v31 & 1 | (v29 | v171) & 1 | v161 & 1 | (([actionManager canPerformActionType:15 onAsset:asset inAssetCollection:assetCollection] & 1) == 0)))
  {
    v42 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:1];
    if (v42)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 1, v42, [actionManager shouldEnableActionType:15 onAsset:asset inAssetCollection:assetCollection]);
    }
  }

  v43 = v29 | v31;
  v44 = [actionManager canPerformActionType:56 onAsset:asset inAssetCollection:assetCollection];
  if (v44)
  {
    v45 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:36];
    if (v45)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 36, v45, [actionManager shouldEnableActionType:56 onAllAssetsByAssetCollection:currentAssetByAssetCollection]);
    }
  }

  LOBYTE(_localizedTitleForMergeDuplicatesBarButtonItem) = v159;
  if (((v43 | _canShowCommentsForCurrentAsset | isInSelectionMode) & 1) == 0)
  {
    if (self->_delegateFlags.respondsToIsDetailsAccessoryAvailableForAssetReference)
    {
      delegate2 = [(PUOneUpBarsController *)self delegate];
      v53 = [delegate2 oneUpBarsController:self isDetailsAccessoryAvailableForAssetReference:v165];
    }

    else
    {
      v53 = 0;
    }

    _localizedTitleForMergeDuplicatesBarButtonItem = +[PUOneUpSettings sharedInstance];
    allowsDetailsToggleButtonInBars = [_localizedTitleForMergeDuplicatesBarButtonItem allowsDetailsToggleButtonInBars];

    LOBYTE(_localizedTitleForMergeDuplicatesBarButtonItem) = v159;
    if (allowsDetailsToggleButtonInBars)
    {
      if (v53 && (!v44 || [(PUOneUpBarsController *)self shouldPlaceButtonsInNavigationBar]))
      {
        v82 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:35];
        if (v82)
        {
          [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:35 location:v82 shouldEnable:1];
          detailsBarButtonController = [(PUOneUpBarsController *)self detailsBarButtonController];
          [detailsBarButtonController update];
        }
      }
    }
  }

  if ([actionManager canPerformActionType:65 onAsset:asset inAssetCollection:assetCollection])
  {
    v46 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:43];
    viewModel = v170;
    if (v46)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 43, v46, [actionManager shouldEnableActionType:65 onAsset:asset inAssetCollection:assetCollection]);
      v47 = [(PUOneUpBarsController *)self _activeBarButtonItemForIdentifier:43];
      _localizedTitleForMergeDuplicatesBarButtonItem = [(PUOneUpBarsController *)self _localizedTitleForMergeDuplicatesBarButtonItem];
      [v47 setTitle:_localizedTitleForMergeDuplicatesBarButtonItem];

      LOBYTE(_localizedTitleForMergeDuplicatesBarButtonItem) = v159;
    }

    if ((isInSelectionMode & 1) == 0)
    {
      v48 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:41];
      if (v48)
      {
        v49 = v48;
        selfCopy4 = self;
        v51 = 41;
LABEL_70:
        [(PUOneUpBarsController *)selfCopy4 _updateIdentifiersIndexesWithIdentifier:v51 location:v49 shouldEnable:1];
        goto LABEL_71;
      }

      goto LABEL_71;
    }
  }

  else
  {
    viewModel = v170;
    if (!isInSelectionMode)
    {
      goto LABEL_71;
    }
  }

  v54 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:42];
  if (v54)
  {
    v49 = v54;
    selfCopy4 = self;
    v51 = 42;
    goto LABEL_70;
  }

LABEL_71:
  if (!((v44 | isInSelectionMode) & 1 | v43 & 1 | (([actionManager canPerformActionType:44 onAsset:asset inAssetCollection:assetCollection] & 1) == 0)))
  {
    v55 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:7];
    if (v55)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 7, v55, [actionManager shouldEnableActionType:44 onAsset:asset inAssetCollection:assetCollection]);
    }
  }

  v56 = v157;
  if (-[PUOneUpBarsController shouldShowAirPlayButton](self, "shouldShowAirPlayButton") && [actionManager canPerformActionType:38 onAsset:asset inAssetCollection:assetCollection])
  {
    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:18 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:18] shouldEnable:1];
  }

  if (_canShowCommentsForCurrentAsset)
  {
    currentAssetReference2 = [viewModel currentAssetReference];
    v58 = [viewModel assetViewModelForAssetReference:currentAssetReference2];

    if ([v58 isAccessoryViewVisible])
    {
      v59 = 15;
    }

    else
    {
      v59 = 14;
    }

    v60 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:v59];
    if (!v60)
    {
      v61 = PXAssertGetLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1B36F3000, v61, OS_LOG_TYPE_FAULT, "The comments item needs a location", buf, 2u);
      }
    }

    _currentAssetNeedsSensitivityProtection = [(PUOneUpBarsController *)self _currentAssetNeedsSensitivityProtection];
    v63 = +[PUOneUpSettings sharedInstance];
    simulateDisabledCommentButtonState = [v63 simulateDisabledCommentButtonState];

    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:v59 location:v60 shouldEnable:((simulateDisabledCommentButtonState | _currentAssetNeedsSensitivityProtection) & 1) == 0];
    _currentAssetDisplayInfoUpdater = [(PUOneUpBarsController *)self _currentAssetDisplayInfoUpdater];
    info = [_currentAssetDisplayInfoUpdater info];

    v67 = [info objectForKeyedSubscript:@"PUCommentsInfoDictionaryKey"];
    v68 = [v67 objectForKeyedSubscript:@"PUCommentsInfoHasLikedKey"];
    bOOLValue = [v68 BOOLValue];

    if (bOOLValue)
    {
      _localizedTitleForMergeDuplicatesBarButtonItem = 20;
    }

    else
    {
      _localizedTitleForMergeDuplicatesBarButtonItem = 19;
    }

    v70 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:_localizedTitleForMergeDuplicatesBarButtonItem];
    v71 = v70;
    if (v70 > 4 || v70 == 2)
    {
      v152 = PXAssertGetLog();
      if (os_log_type_enabled(v152, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1B36F3000, v152, OS_LOG_TYPE_FAULT, "The like item can only be in the toolbar", buf, 2u);
      }
    }

    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:_localizedTitleForMergeDuplicatesBarButtonItem location:v71 shouldEnable:[(PUOneUpBarsController *)self _currentAssetNeedsSensitivityProtection]^ 1];

    viewModel = v170;
    LOBYTE(_localizedTitleForMergeDuplicatesBarButtonItem) = v159;
    v56 = v157;
  }

  LOBYTE(shouldHideChrome) = v158;
  if ((isInSelectionMode & 1) == 0)
  {
    v72 = [asset conformsToProtocol:&unk_1F2CFE578];
    delegate3 = [(PUOneUpBarsController *)self delegate];
    v74 = [delegate3 oneUpBarsControllerAssetActionManager:self];

    if (([v74 canPerformActionType:*MEMORY[0x1E69C4838]] & 1) != 0 || v72)
    {
      if ([v74 canPerformActionType:*MEMORY[0x1E69C4680]])
      {
        v75 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:3];
        if (!v75)
        {
          v76 = PXAssertGetLog();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1B36F3000, v76, OS_LOG_TYPE_FAULT, "The delete item needs a location", buf, 2u);
          }

          v56 = v157;
        }

        v77 = v72 ^ 1u;
        selfCopy6 = self;
        v79 = 3;
        v80 = v75;
      }

      else
      {
        v80 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:2];
        v77 = v72 ^ 1u;
        selfCopy6 = self;
        v79 = 2;
      }

      [(PUOneUpBarsController *)selfCopy6 _updateIdentifiersIndexesWithIdentifier:v79 location:v80 shouldEnable:v77];
    }

    LOBYTE(_localizedTitleForMergeDuplicatesBarButtonItem) = v159;
  }

  if (allowShowingPlayPauseButton)
  {
    _playPauseBarItemsController = [(PUOneUpBarsController *)self _playPauseBarItemsController];
    playPauseState = [_playPauseBarItemsController playPauseState];

    if (playPauseState == 2)
    {
      v86 = 12;
    }

    else
    {
      v86 = 13;
    }

    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:v86 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:v86] shouldEnable:v153];
  }

  if ([(PUOneUpBarsController *)self shouldShowMuteButton])
  {
    mEMORY[0x1E69C3C48] = [MEMORY[0x1E69C3C48] sharedController];
    if ([mEMORY[0x1E69C3C48] isMuted])
    {
      v88 = 33;
    }

    else
    {
      v88 = 32;
    }

    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:v88 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:v88] shouldEnable:v153];
  }

  if (v171)
  {
    v89 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:4];
    v90 = v89;
    if ((v89 - 3) >= 2)
    {
      if (!v89)
      {
        goto LABEL_128;
      }

      if (v89 != 1)
      {
        v91 = PXAssertGetLog();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1B36F3000, v91, OS_LOG_TYPE_FAULT, "Unsupported location for recover item", buf, 2u);
        }
      }
    }

    -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 4, v90, [actionManager shouldEnableActionType:11 onAllAssetsByAssetCollection:currentAssetByAssetCollection]);
  }

LABEL_128:
  if (v161)
  {
    v92 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:5];
    if (!v92)
    {
      v94 = PXAssertGetLog();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1B36F3000, v94, OS_LOG_TYPE_FAULT, "The restore item needs a location", buf, 2u);
      }

      if (v56)
      {
        goto LABEL_138;
      }

      goto LABEL_132;
    }

    -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 5, v92, [actionManager shouldEnableActionType:13 onAllAssetsByAssetCollection:currentAssetByAssetCollection]);
  }

  if (!v56)
  {
LABEL_132:
    if ([(PUOneUpBarsController *)self wantsShowInLibraryButton])
    {
      v93 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:30];
      if (v93)
      {
        [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:30 location:v93 shouldEnable:1];
      }
    }
  }

LABEL_138:
  if ([actionManager canPerformActionType:60 onAsset:asset inAssetCollection:assetCollection])
  {
    v95 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:39];
    if (v95)
    {
      [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:39 location:v95 shouldEnable:1];
    }
  }

  if ([actionManager canPerformActionType:61 onAsset:asset inAssetCollection:assetCollection])
  {
    v96 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:40];
    if (v96)
    {
      [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:40 location:v96 shouldEnable:1];
    }
  }

  if ([actionManager canPerformActionType:62 onAsset:asset inAssetCollection:assetCollection])
  {
    v97 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:31];
    if (v97)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 31, v97, [actionManager shouldEnableActionType:62 onAllAssetsByAssetCollection:currentAssetByAssetCollection]);
      [(PUOneUpBarsController *)self _updateAddToLibraryBarButtonItem];
    }
  }

LABEL_148:
  if (!((asset == 0 || (_localizedTitleForMergeDuplicatesBarButtonItem & 1) == 0) | v162 & 1))
  {
    v98 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:48];
    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:48 location:v98 shouldEnable:1];
    v99 = [(PUOneUpBarsController *)self _barButtonItemForIdentifier:48 location:v98];
  }

  if (v164 && !(_localizedTitleForMergeDuplicatesBarButtonItem & (contentPrivacyState != 1) | shouldHideChrome & 1))
  {
    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:10 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:10] shouldEnable:1];
  }

  if (_shouldShowDoneEditingButton)
  {
    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:34 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:34] shouldEnable:1];
  }

  reviewScreenBarsModel = [viewModel reviewScreenBarsModel];
  v168 = assetCollection;
  if (reviewScreenBarsModel)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  else
  {
    dictionary = 0;
  }

  v102 = reviewScreenBarsModel;
  if ((_localizedTitleForMergeDuplicatesBarButtonItem & 1) == 0)
  {
    v197[0] = &unk_1F2B7E240;
    v197[1] = &unk_1F2B7E258;
    v198[0] = &unk_1F2B7E1E0;
    v198[1] = &unk_1F2B7E228;
    v197[2] = &unk_1F2B7E270;
    v197[3] = &unk_1F2B7E288;
    v198[2] = &unk_1F2B7E090;
    v198[3] = &unk_1F2B7E078;
    v197[4] = &unk_1F2B7E2A0;
    v197[5] = &unk_1F2B7E2B8;
    v198[4] = &unk_1F2B7E0A8;
    v198[5] = &unk_1F2B7E0C0;
    v197[6] = &unk_1F2B7E2D0;
    v197[7] = &unk_1F2B7E2E8;
    v198[6] = &unk_1F2B7E0D8;
    v198[7] = &unk_1F2B7E0F0;
    v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v198 forKeys:v197 count:8];
    v189[0] = MEMORY[0x1E69E9820];
    v189[1] = 3221225472;
    v189[2] = __35__PUOneUpBarsController_updateBars__block_invoke;
    v189[3] = &unk_1E7B79590;
    v190 = actionManager;
    v191 = asset;
    v192 = v168;
    selfCopy7 = self;
    v194 = dictionary;
    [v103 enumerateKeysAndObjectsUsingBlock:v189];
  }

  v173 = dictionary;
  [(PUOneUpBarsController *)self _updateFavoriteBarButtonItem];
  [(PUOneUpBarsController *)self _updateSyndicationSaveBarButtonItem];
  if ([(PUOneUpBarsController *)self style]== 4)
  {
    _leftToolbarButtonItemCollection = [(PUOneUpBarsController *)self _leftToolbarButtonItemCollection];
    _leftToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _leftToolbarButtonIdentifiers];
    _toolbarButtonItemCollection = [_leftToolbarButtonItemCollection orderedBarButtonsItemsForIdentifiers:_leftToolbarButtonIdentifiers];

    _centerToolbarButtonItemCollection = [(PUOneUpBarsController *)self _centerToolbarButtonItemCollection];
    _centerToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _centerToolbarButtonIdentifiers];
    _toolbarButtonIdentifiers = [_centerToolbarButtonItemCollection orderedBarButtonsItemsForIdentifiers:_centerToolbarButtonIdentifiers];

    _rightToolbarButtonItemCollection = [(PUOneUpBarsController *)self _rightToolbarButtonItemCollection];
    _rightToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _rightToolbarButtonIdentifiers];
    v112 = [_rightToolbarButtonItemCollection orderedBarButtonsItemsForIdentifiers:_rightToolbarButtonIdentifiers];

    v113 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_toolbarButtonItemCollection, "count") + objc_msgSend(_toolbarButtonIdentifiers, "count") + objc_msgSend(v112, "count") + 2}];
    if ([(PUOneUpBarsController *)self _shouldShowLeftToolbarItems])
    {
      [v113 addObjectsFromArray:_toolbarButtonItemCollection];
    }

    flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    [v113 addObject:flexibleSpaceItem];

    if ([(PUOneUpBarsController *)self _shouldShowCenterToolbarItems])
    {
      [v113 addObjectsFromArray:_toolbarButtonIdentifiers];
    }

    flexibleSpaceItem2 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    [v113 addObject:flexibleSpaceItem2];

    if ([(PUOneUpBarsController *)self _shouldShowRightToolbarItems])
    {
      [v113 addObjectsFromArray:v112];
    }

    v116 = v113;
  }

  else
  {
    _toolbarButtonItemCollection = [(PUOneUpBarsController *)self _toolbarButtonItemCollection];
    _toolbarButtonIdentifiers = [(PUOneUpBarsController *)self _toolbarButtonIdentifiers];
    v116 = [_toolbarButtonItemCollection orderedBarButtonsItemsForIdentifiers:_toolbarButtonIdentifiers];
  }

  _rightNavBarButtonItemCollection = [(PUOneUpBarsController *)self _rightNavBarButtonItemCollection];
  _rightNavBarButtonIdentifiers = [(PUOneUpBarsController *)self _rightNavBarButtonIdentifiers];
  v119 = [_rightNavBarButtonItemCollection orderedBarButtonsItemsForIdentifiers:_rightNavBarButtonIdentifiers];

  _leftNavBarButtonItemCollection = [(PUOneUpBarsController *)self _leftNavBarButtonItemCollection];
  _leftNavBarButtonIdentifiers = [(PUOneUpBarsController *)self _leftNavBarButtonIdentifiers];
  v122 = [_leftNavBarButtonItemCollection orderedBarButtonsItemsForIdentifiers:_leftNavBarButtonIdentifiers];

  navigationItem = [viewController navigationItem];
  titleSubtitleViewProvider2 = [(PUOneUpBarsController *)self titleSubtitleViewProvider];

  if (titleSubtitleViewProvider2)
  {
    if (_shouldShowCenterNavigationBarItems)
    {
      titleSubtitleViewProvider3 = [(PUOneUpBarsController *)self titleSubtitleViewProvider];
      titleSubtitleView2 = [titleSubtitleViewProvider3 titleSubtitleView];
      [navigationItem setTitleView:titleSubtitleView2];

      goto LABEL_180;
    }
  }

  else
  {
    if (_shouldShowCenterNavigationBarItems)
    {
      [viewController setTitle:_title];
      if (_title)
      {
        v127 = 0;
      }

      else
      {
        v127 = view;
      }

      v128 = navigationItem;
      goto LABEL_179;
    }

    [viewController setTitle:0];
  }

  v128 = navigationItem;
  v127 = 0;
LABEL_179:
  [v128 setTitleView:v127];
LABEL_180:
  leftBarButtonItems = [navigationItem leftBarButtonItems];
  v130 = v122;
  v131 = v130;
  if (leftBarButtonItems == v130)
  {
  }

  else
  {
    v132 = [leftBarButtonItems isEqual:v130];

    if ((v132 & 1) == 0)
    {
      [navigationItem setLeftItemsSupplementBackButton:{objc_msgSend(v131, "count") != 0}];
      if ([(PUOneUpBarsController *)self _shouldShowLeftNavigationBarItems])
      {
        [navigationItem setLeftBarButtonItems:v131 animated:{-[PUOneUpBarsController wantsAnimatedBarsUpdate](self, "wantsAnimatedBarsUpdate")}];
      }
    }
  }

  rightBarButtonItems = [navigationItem rightBarButtonItems];
  v134 = v119;
  v135 = v134;
  if (rightBarButtonItems == v134)
  {
  }

  else
  {
    v136 = [rightBarButtonItems isEqual:v134];

    if ((v136 & 1) == 0)
    {
      if ([(PUOneUpBarsController *)self _shouldShowRightNavigationBarItems])
      {
        [navigationItem setRightBarButtonItems:v135 animated:{-[PUOneUpBarsController wantsAnimatedBarsUpdate](self, "wantsAnimatedBarsUpdate")}];
      }

      [(PUOneUpBarsController *)self _invalidateTitleViewContentMode];
    }
  }

  [(PUOneUpBarsController *)self setWantsAnimatedBarsUpdate:0];
  [(PUOneUpBarsController *)self _updateTitleViewContentModeIfNeeded];
  title = [(PUOneUpBarsController *)self title];
  [navigationItem setBackButtonTitle:title];

  v138 = 1;
  [navigationItem px_setBackButtonDisplayMode:1];
  if ((isInSelectionMode & 1) == 0)
  {
    if ([v169 isInEditMode] && objc_msgSend(v169, "editStyle"))
    {
      v138 = 1;
    }

    else
    {
      v138 = v158;
    }
  }

  [navigationItem setHidesBackButton:v138];
  [(PUOneUpBarsController *)self _updateScrubberViewIfNeeded];
  _scrubberView = [(PUOneUpBarsController *)self _scrubberView];
  if ([_scrubberView isHidden])
  {
    v140 = 0;
  }

  else
  {
    v140 = _scrubberView;
  }

  v141 = v140;

  v142 = v141;
  if ([(PUOneUpBarsController *)self disableShowingNavigationBars])
  {
    v143 = v170;
    if (v102)
    {
      v178[0] = MEMORY[0x1E69E9820];
      v178[1] = 3221225472;
      v178[2] = __35__PUOneUpBarsController_updateBars__block_invoke_3;
      v178[3] = &unk_1E7B795E0;
      v179 = v173;
      v180 = v142;
      selfCopy8 = self;
      [v102 performChanges:v178];
    }
  }

  else
  {
    if (MEMORY[0x1B8C6D660]())
    {
      [viewController setToolbarItems:v116];
    }

    else
    {
      [v142 topOutset];
      v145 = v144;
      [(PUOneUpBarsController *)self maximumToolbarHeight];
      v147 = v146;
      [(PUOneUpBarsController *)self maximumAccessoryToolbarHeight];
      v149 = v148;
      pu_toolbarViewModel = [viewController pu_toolbarViewModel];
      v182[0] = MEMORY[0x1E69E9820];
      v182[1] = 3221225472;
      v182[2] = __35__PUOneUpBarsController_updateBars__block_invoke_2;
      v182[3] = &unk_1E7B795B8;
      v151 = pu_toolbarViewModel;
      v183 = v151;
      v184 = v116;
      v185 = v142;
      v186 = v145;
      v187 = v149;
      v188 = v147;
      [v151 performChanges:v182];
    }

    v143 = v170;
  }
}

void __35__PUOneUpBarsController_updateBars__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 integerValue];
  v6 = [v10 integerValue];
  if ([*(a1 + 32) canPerformActionType:v5 onAsset:*(a1 + 40) inAssetCollection:*(a1 + 48)])
  {
    v7 = [*(a1 + 56) _locationForBarButtonItemWithIdentifier:v6];
    if (v7)
    {
      v8 = v7;
      [*(a1 + 56) _updateIdentifiersIndexesWithIdentifier:v6 location:v7 shouldEnable:{objc_msgSend(*(a1 + 32), "shouldEnableActionType:onAsset:inAssetCollection:", v5, *(a1 + 40), *(a1 + 48))}];
      v9 = [*(a1 + 56) _barButtonItemForIdentifier:v6 location:v8];
      [*(a1 + 64) setObject:v9 forKeyedSubscript:v10];
    }
  }
}

uint64_t __35__PUOneUpBarsController_updateBars__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setToolbarItems:*(a1 + 40)];
  [*(a1 + 32) setAccessoryView:*(a1 + 48)];
  [*(a1 + 32) setAccessoryViewTopOutset:*(a1 + 56)];
  [*(a1 + 32) setAccessoryViewMaximumHeight:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);

  return [v2 setMaximumHeight:v3];
}

void __35__PUOneUpBarsController_updateBars__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAvailableItemsByIdentifier:v3];
  [v4 setAccessoryView:*(a1 + 40)];
  [v4 setShouldPlaceScrubberInScrubberBar:{objc_msgSend(*(a1 + 48), "shouldPlaceScrubberInScrubberBar")}];
}

- (void)_updateIdentifiersIndexesWithIdentifier:(int64_t)identifier location:(int64_t)location shouldEnable:(BOOL)enable
{
  enableCopy = enable;
  v8 = 0;
  if (location <= 2)
  {
    switch(location)
    {
      case 0:
        return;
      case 1:
        _rightNavBarButtonIdentifiers = [(PUOneUpBarsController *)self _rightNavBarButtonIdentifiers];
        [_rightNavBarButtonIdentifiers addIndex:identifier];

        _rightNavBarButtonItemCollection = [(PUOneUpBarsController *)self _rightNavBarButtonItemCollection];
        goto LABEL_17;
      case 2:
        _leftNavBarButtonIdentifiers = [(PUOneUpBarsController *)self _leftNavBarButtonIdentifiers];
        [_leftNavBarButtonIdentifiers addIndex:identifier];

        _rightNavBarButtonItemCollection = [(PUOneUpBarsController *)self _leftNavBarButtonItemCollection];
LABEL_17:
        v16 = _rightNavBarButtonItemCollection;
        v17 = [_rightNavBarButtonItemCollection barButtonItemForIdentifier:identifier];

        v8 = v17;
        break;
    }
  }

  else
  {
    if (location <= 4)
    {
      if (location == 3)
      {
        _toolbarButtonIdentifiers = [(PUOneUpBarsController *)self _toolbarButtonIdentifiers];
        [_toolbarButtonIdentifiers addIndex:identifier];

        [(PUOneUpBarsController *)self _toolbarButtonItemCollection];
      }

      else
      {
        _rightToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _rightToolbarButtonIdentifiers];
        [_rightToolbarButtonIdentifiers addIndex:identifier];

        [(PUOneUpBarsController *)self _rightToolbarButtonItemCollection];
      }
      _rightNavBarButtonItemCollection = ;
      goto LABEL_17;
    }

    if (location == 5)
    {
      _centerToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _centerToolbarButtonIdentifiers];
      [_centerToolbarButtonIdentifiers addIndex:identifier];

      _rightNavBarButtonItemCollection = [(PUOneUpBarsController *)self _centerToolbarButtonItemCollection];
      goto LABEL_17;
    }

    if (location == 6)
    {
      _leftToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _leftToolbarButtonIdentifiers];
      [_leftToolbarButtonIdentifiers addIndex:identifier];

      _rightNavBarButtonItemCollection = [(PUOneUpBarsController *)self _leftToolbarButtonItemCollection];
      goto LABEL_17;
    }
  }

  v18 = v8;
  [v8 setEnabled:enableCopy];
}

- (void)_resetIdentifierIndexes
{
  _toolbarButtonIdentifiers = [(PUOneUpBarsController *)self _toolbarButtonIdentifiers];
  _leftToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _leftToolbarButtonIdentifiers];
  _centerToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _centerToolbarButtonIdentifiers];
  _rightToolbarButtonIdentifiers = [(PUOneUpBarsController *)self _rightToolbarButtonIdentifiers];
  _rightNavBarButtonIdentifiers = [(PUOneUpBarsController *)self _rightNavBarButtonIdentifiers];
  _leftNavBarButtonIdentifiers = [(PUOneUpBarsController *)self _leftNavBarButtonIdentifiers];
  [_toolbarButtonIdentifiers removeAllIndexes];
  [_leftToolbarButtonIdentifiers removeAllIndexes];
  [_centerToolbarButtonIdentifiers removeAllIndexes];
  [_rightToolbarButtonIdentifiers removeAllIndexes];
  [_rightNavBarButtonIdentifiers removeAllIndexes];
  [_leftNavBarButtonIdentifiers removeAllIndexes];
}

- (void)invalidateViewControllerView
{
  v3.receiver = self;
  v3.super_class = PUOneUpBarsController;
  [(PUBarsController *)&v3 invalidateViewControllerView];
  [(PUBarsController *)self invalidateContentGuideInsets];
}

- (void)setPresentedTipID:(id)d
{
  objc_storeStrong(&self->_presentedTipID, d);

  [(PUOneUpBarsController *)self _updateActionsBarButtonItem];
}

- (void)setDebuggingObservedImageModulationManager:(id)manager
{
  managerCopy = manager;
  debuggingObservedImageModulationManager = self->_debuggingObservedImageModulationManager;
  if (debuggingObservedImageModulationManager != managerCopy)
  {
    v7 = managerCopy;
    [(PXImageModulationManager *)debuggingObservedImageModulationManager unregisterChangeObserver:self context:PUDebuggingObservedImageModulationManagerObservationContext];
    objc_storeStrong(&self->_debuggingObservedImageModulationManager, manager);
    debuggingObservedImageModulationManager = [(PXImageModulationManager *)self->_debuggingObservedImageModulationManager registerChangeObserver:self context:PUDebuggingObservedImageModulationManagerObservationContext];
    managerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](debuggingObservedImageModulationManager, managerCopy);
}

- (void)setShouldShowMuteButton:(BOOL)button
{
  if (self->_shouldShowMuteButton != button)
  {
    self->_shouldShowMuteButton = button;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setAllowShowingPlayPauseButton:(BOOL)button
{
  if (self->_allowShowingPlayPauseButton != button)
  {
    self->_allowShowingPlayPauseButton = button;
    [(PUBarsController *)self invalidateBars];

    [(PUOneUpBarsController *)self _updateShowingPlayPauseButton];
  }
}

- (void)setAllowTapOnTitle:(BOOL)title
{
  if (self->_allowTapOnTitle != title)
  {
    self->_allowTapOnTitle = title;
    [(PUOneUpBarsController *)self _invalidateTitle];
  }
}

- (void)setShouldPlaceScrubberInScrubberBar:(BOOL)bar
{
  if (self->_shouldPlaceScrubberInScrubberBar != bar)
  {
    self->_shouldPlaceScrubberInScrubberBar = bar;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setDisableShowingNavigationBars:(BOOL)bars
{
  if (self->_disableShowingNavigationBars != bars)
  {
    self->_disableShowingNavigationBars = bars;
    [(PUOneUpBarsController *)self _invalidateChromeVisibilityWithAnimationType:0];
  }
}

- (void)setShouldShowScrubber:(BOOL)scrubber
{
  if (self->_shouldShowScrubber != scrubber)
  {
    self->_shouldShowScrubber = scrubber;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setWantsShowInLibraryButton:(BOOL)button
{
  if (self->_wantsShowInLibraryButton != button)
  {
    self->_wantsShowInLibraryButton = button;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setShouldShowAirPlayButton:(BOOL)button
{
  if (self->_shouldShowAirPlayButton != button)
  {
    self->_shouldShowAirPlayButton = button;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setShouldShowProgrammaticNavBackButton:(BOOL)button
{
  if (self->_shouldShowProgrammaticNavBackButton != button)
  {
    self->_shouldShowProgrammaticNavBackButton = button;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setMaximumAccessoryToolbarHeight:(double)height
{
  if (self->_maximumAccessoryToolbarHeight != height)
  {
    self->_maximumAccessoryToolbarHeight = height;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setMaximumToolbarHeight:(double)height
{
  if (self->_maximumToolbarHeight != height)
  {
    self->_maximumToolbarHeight = height;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setShouldUseCompactCommentsTitle:(BOOL)title
{
  if (self->_shouldUseCompactCommentsTitle != title)
  {
    self->_shouldUseCompactCommentsTitle = title;
    [(PUOneUpBarsController *)self _invalidateCommentsTitle];
  }
}

- (void)setShouldUseCompactTitleView:(BOOL)view
{
  if (self->_shouldUseCompactTitleView != view)
  {
    self->_shouldUseCompactTitleView = view;
    [(PUOneUpBarsController *)self _invalidateTitle];
  }
}

- (void)setShouldPlaceButtonsInNavigationBar:(BOOL)bar
{
  if (self->_shouldPlaceButtonsInNavigationBar != bar)
  {
    self->_shouldPlaceButtonsInNavigationBar = bar;
    [(PUBarsController *)self invalidateBars];
  }
}

- (PUOneUpBarsControllerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = PUOneUpBarsController;
  delegate = [(PUBarsController *)&v4 delegate];

  return delegate;
}

- (void)dealloc
{
  [(PUPlayPauseBarItemsController *)self->__playPauseBarItemsController unregisterChangeObserver:self];
  [(PUOneUpBarsController *)self _stopObservingOrientationChanges];
  v3.receiver = self;
  v3.super_class = PUOneUpBarsController;
  [(PUOneUpBarsController *)&v3 dealloc];
}

- (void)_initializeBarButtonItemCollections
{
  if ([(PUOneUpBarsController *)self style]== 3)
  {
    v3 = 5;
  }

  else if ([(PUOneUpBarsController *)self style]== 1)
  {
    if ([(PUOneUpBarsController *)self _physicalDeviceIsIPad])
    {
      v3 = 5;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 3;
  }

  p_cache = _PUSharingPreheatGestureRecognizer.cache;
  v5 = [[PUBarButtonItemCollection alloc] initWithOptions:v3];
  toolbarButtonItemCollection = self->__toolbarButtonItemCollection;
  self->__toolbarButtonItemCollection = v5;

  [(PUBarButtonItemCollection *)self->__toolbarButtonItemCollection setDataSource:self];
  if ([(PUOneUpBarsController *)self style]== 3)
  {
    v7 = [&unk_1F2B7CF80 mutableCopy];
    v8 = [&unk_1F2B7CF80 indexOfObject:&unk_1F2B7DE38];
    v9 = [&unk_1F2B7CF80 indexOfObject:&unk_1F2B7DE50];
    v10 = [&unk_1F2B7CF80 indexOfObject:&unk_1F2B7DEC8];
    v11 = [&unk_1F2B7CF80 indexOfObject:&unk_1F2B7DEE0];
    v12 = v8;
    p_cache = (_PUSharingPreheatGestureRecognizer + 16);
    [v7 replaceObjectAtIndex:v12 withObject:&unk_1F2B7DEC8];
    [v7 replaceObjectAtIndex:v9 withObject:&unk_1F2B7DEE0];
    [v7 replaceObjectAtIndex:v10 withObject:&unk_1F2B7DE38];
    [v7 replaceObjectAtIndex:v11 withObject:&unk_1F2B7DE50];
    v39 = [v7 copy];

    v13 = v39;
  }

  else
  {
    v13 = &unk_1F2B7CF80;
  }

  v40 = v13;
  [(PUBarButtonItemCollection *)self->__toolbarButtonItemCollection setIdentifiersOrder:?];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  [indexSet addIndex:14];
  [indexSet addIndex:15];
  [indexSet addIndex:8];
  [indexSet addIndex:9];
  [indexSet addIndex:7];
  [indexSet addIndex:24];
  if ([(PUOneUpBarsController *)self style]!= 2)
  {
    [indexSet addIndex:31];
  }

  [indexSet addIndex:44];
  [indexSet addIndex:45];
  [indexSet addIndex:27];
  [indexSet addIndex:28];
  [indexSet addIndex:36];
  if ([(PUOneUpBarsController *)self style]== 1)
  {
    [indexSet addIndex:12];
    [indexSet addIndex:13];
    [indexSet addIndex:32];
  }

  [(PUBarButtonItemCollection *)self->__toolbarButtonItemCollection setCenteredItemIdentifiers:indexSet];
  v15 = objc_alloc_init(MEMORY[0x1E696AD50]);
  toolbarButtonIdentifiers = self->__toolbarButtonIdentifiers;
  self->__toolbarButtonIdentifiers = v15;

  v17 = [objc_alloc((p_cache + 393)) initWithOptions:0];
  leftToolbarButtonItemCollection = self->__leftToolbarButtonItemCollection;
  self->__leftToolbarButtonItemCollection = v17;

  [(PUBarButtonItemCollection *)self->__leftToolbarButtonItemCollection setDataSource:self];
  [(PUBarButtonItemCollection *)self->__leftToolbarButtonItemCollection setIdentifiersOrder:&unk_1F2B7CF98];
  v19 = objc_alloc_init(MEMORY[0x1E696AD50]);
  leftToolbarButtonIdentifiers = self->__leftToolbarButtonIdentifiers;
  self->__leftToolbarButtonIdentifiers = v19;

  v21 = [objc_alloc((p_cache + 393)) initWithOptions:0];
  centerToolbarButtonItemCollection = self->__centerToolbarButtonItemCollection;
  self->__centerToolbarButtonItemCollection = v21;

  [(PUBarButtonItemCollection *)self->__centerToolbarButtonItemCollection setDataSource:self];
  [(PUBarButtonItemCollection *)self->__centerToolbarButtonItemCollection setIdentifiersOrder:&unk_1F2B7CFB0];
  v23 = objc_alloc_init(MEMORY[0x1E696AD50]);
  centerToolbarButtonIdentifiers = self->__centerToolbarButtonIdentifiers;
  self->__centerToolbarButtonIdentifiers = v23;

  v25 = [objc_alloc((p_cache + 393)) initWithOptions:0];
  rightToolbarButtonItemCollection = self->__rightToolbarButtonItemCollection;
  self->__rightToolbarButtonItemCollection = v25;

  [(PUBarButtonItemCollection *)self->__rightToolbarButtonItemCollection setDataSource:self];
  [(PUBarButtonItemCollection *)self->__rightToolbarButtonItemCollection setIdentifiersOrder:&unk_1F2B7CFC8];
  v27 = objc_alloc_init(MEMORY[0x1E696AD50]);
  rightToolbarButtonIdentifiers = self->__rightToolbarButtonIdentifiers;
  self->__rightToolbarButtonIdentifiers = v27;

  v29 = [objc_alloc((p_cache + 393)) initWithOptions:0];
  rightNavBarButtonItemCollection = self->__rightNavBarButtonItemCollection;
  self->__rightNavBarButtonItemCollection = v29;

  [(PUBarButtonItemCollection *)self->__rightNavBarButtonItemCollection setDataSource:self];
  if ([(PUOneUpBarsController *)self style]== 4)
  {
    v31 = &unk_1F2B7CFE0;
  }

  else
  {
    v31 = &unk_1F2B7CFF8;
  }

  [(PUBarButtonItemCollection *)self->__rightNavBarButtonItemCollection setIdentifiersOrder:v31];
  v32 = objc_alloc_init(MEMORY[0x1E696AD50]);
  rightNavBarButtonIdentifiers = self->__rightNavBarButtonIdentifiers;
  self->__rightNavBarButtonIdentifiers = v32;

  v34 = [objc_alloc((p_cache + 393)) initWithOptions:0];
  leftNavBarButtonItemCollection = self->__leftNavBarButtonItemCollection;
  self->__leftNavBarButtonItemCollection = v34;

  [(PUBarButtonItemCollection *)self->__leftNavBarButtonItemCollection setDataSource:self];
  if ([(PUOneUpBarsController *)self style]== 4)
  {
    v36 = &unk_1F2B7D010;
  }

  else
  {
    v36 = &unk_1F2B7D028;
  }

  [(PUBarButtonItemCollection *)self->__leftNavBarButtonItemCollection setIdentifiersOrder:v36];
  v37 = objc_alloc_init(MEMORY[0x1E696AD50]);
  leftNavBarButtonIdentifiers = self->__leftNavBarButtonIdentifiers;
  self->__leftNavBarButtonIdentifiers = v37;
}

- (void)_handleTraitCollectionSizeClassChangeWithPreviousTraitCollection:(id)collection
{
  collectionCopy = collection;
  viewController = [(PUBarsController *)self viewController];
  traitCollection = [viewController traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  horizontalSizeClass2 = [collectionCopy horizontalSizeClass];

  [(PUOneUpBarsController *)self setWantsAnimatedBarsUpdate:horizontalSizeClass != horizontalSizeClass2];
  [(PUOneUpBarsController *)self _invalidateTitleViewContentMode];
  [(PUBarsController *)self invalidateBars];

  [(PUOneUpBarsController *)self _invalidateChromeVisibilityWithAnimationType:0];
}

- (PUOneUpBarsController)initWithStyle:(int64_t)style browsingSession:(id)session viewController:(id)controller actionsController:(id)actionsController delegate:(id)delegate
{
  v51[2] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  controllerCopy = controller;
  actionsControllerCopy = actionsController;
  delegateCopy = delegate;
  v50.receiver = self;
  v50.super_class = PUOneUpBarsController;
  v17 = [(PUBarsController *)&v50 initWithViewController:controllerCopy delegate:delegateCopy];
  v18 = v17;
  if (v17)
  {
    v17->_style = style;
    objc_storeStrong(&v17->_browsingSession, session);
    v18->_delegateFlags.respondsToDidChangeShowingPlayPauseButton = objc_opt_respondsToSelector() & 1;
    v18->_delegateFlags.respondsToDidTapPlayPauseButton = objc_opt_respondsToSelector() & 1;
    v18->_delegateFlags.respondsToDidTapTitle = objc_opt_respondsToSelector() & 1;
    v18->_delegateFlags.respondsToIsDetailsAccessoryAvailableForAssetReference = objc_opt_respondsToSelector() & 1;
    v18->_delegateFlags.respondsToToggleDetailsVisibility = objc_opt_respondsToSelector() & 1;
    v18->_delegateFlags.respondsToToggleCommentsVisibility = objc_opt_respondsToSelector() & 1;
    v18->_delegateFlags.respondsToCanShowCommentsForAsset = objc_opt_respondsToSelector() & 1;
    v18->_delegateFlags.respondsToShouldTapBeginAtLocationFromProvider = objc_opt_respondsToSelector() & 1;
    v18->_delegateFlags.respondsToShouldHideToolbarWhenShowingAccessoryViewForAssetReference = objc_opt_respondsToSelector() & 1;
    v18->_delegateFlags.respondsToShouldHideNavigationBarWhenShowingAccessoryViewForAssetReference = objc_opt_respondsToSelector() & 1;
    v18->_delegateFlags.respondsToShouldHideStatusBarWhenShowingAccessoryViewForAssetReference = objc_opt_respondsToSelector() & 1;
    v18->_delegateFlags.respondsToMenuElements = objc_opt_respondsToSelector() & 1;
    viewModel = [(PUBrowsingSession *)v18->_browsingSession viewModel];
    [viewModel registerChangeObserver:v18];

    mEMORY[0x1E69C3C48] = [MEMORY[0x1E69C3C48] sharedController];
    [mEMORY[0x1E69C3C48] registerChangeObserver:v18 context:VideoMuteControllerContext_43170];

    objc_storeStrong(&v18->_actionsController, actionsController);
    [(PUOneUpActionsController *)v18->_actionsController setPopoverHelper:v18];
    viewController = [(PUBarsController *)v18 viewController];
    pu_toolbarViewModel = [viewController pu_toolbarViewModel];
    [pu_toolbarViewModel registerChangeObserver:v18];

    if (style == 4)
    {
      objc_initWeak(&location, v18);
      viewController2 = [(PUBarsController *)v18 viewController];
      v51[0] = objc_opt_class();
      v51[1] = objc_opt_class();
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __97__PUOneUpBarsController_initWithStyle_browsingSession_viewController_actionsController_delegate___block_invoke;
      v47[3] = &unk_1E7B79E70;
      objc_copyWeak(&v48, &location);
      v25 = [viewController2 registerForTraitChanges:v24 withHandler:v47];

      v26 = objc_alloc_init(PUOneUpNavigationTitleSubtitleViewProvider);
      titleSubtitleViewProvider = v18->_titleSubtitleViewProvider;
      v18->_titleSubtitleViewProvider = v26;

      [(PUOneUpNavigationTitleSubtitleViewProvider *)v18->_titleSubtitleViewProvider setViewDelegate:v18];
      objc_destroyWeak(&v48);
      objc_destroyWeak(&location);
    }

    else
    {
      v28 = objc_alloc_init(PUPhotoBrowserTitleViewController);
      titleViewController = v18->__titleViewController;
      v18->__titleViewController = v28;

      [(PUPhotoBrowserTitleViewController *)v18->__titleViewController setDelegate:v18];
      v18->__needsUpdateTitle = 1;
    }

    v30 = dispatch_queue_create("com.apple.photos.one-up-info-provider-request", 0);
    infoRequestSerialQueue = v18->_infoRequestSerialQueue;
    v18->_infoRequestSerialQueue = v30;

    v32 = [objc_opt_class() description];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v35 = [v32 stringByAppendingString:uUIDString];
    scrubbingIdentifier = v18->__scrubbingIdentifier;
    v18->__scrubbingIdentifier = v35;

    v37 = [objc_alloc(MEMORY[0x1E69C4530]) initWithInfoProvider:v18 infoKind:@"PUCurrentAssetDisplayInfo"];
    currentAssetDisplayInfoUpdater = v18->__currentAssetDisplayInfoUpdater;
    v18->__currentAssetDisplayInfoUpdater = v37;

    [(PXInfoUpdater *)v18->__currentAssetDisplayInfoUpdater setObserver:v18];
    v39 = [PUPlayPauseBarItemsController alloc];
    viewModel2 = [(PUBrowsingSession *)v18->_browsingSession viewModel];
    v41 = [(PUPlayPauseBarItemsController *)v39 initWithViewModel:viewModel2];
    playPauseBarItemsController = v18->__playPauseBarItemsController;
    v18->__playPauseBarItemsController = v41;

    [(PUPlayPauseBarItemsController *)v18->__playPauseBarItemsController registerChangeObserver:v18];
    v18->__lastChromeVisibility = 1;
    [(PUOneUpBarsController *)v18 _initializeBarButtonItemCollections];
    [(PUOneUpBarsController *)v18 _startObservingOrientationChanges];
    [(PUOneUpBarsController *)v18 _invalidateScrubber];
    _currentAssetDisplayInfoUpdater = [(PUOneUpBarsController *)v18 _currentAssetDisplayInfoUpdater];
    [_currentAssetDisplayInfoUpdater invalidateInfo];

    [(PUOneUpBarsController *)v18 _invalidateWantsAllPhotosButton];
    [(PUOneUpBarsController *)v18 _invalidateTitleViewProvider];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    notificationName3DBadgeToggled = [MEMORY[0x1E69C3740] notificationName3DBadgeToggled];
    [defaultCenter addObserver:v18 selector:sel_updateBars name:notificationName3DBadgeToggled object:0];

    v18->_navigationBarVisibleElementPositions = +[PUOneUpChromeUserDefaultsWrapper navigationBarVisibleElementPositions];
    v18->_toolbarVisibleElementPositions = +[PUOneUpChromeUserDefaultsWrapper toolbarVisibleElementPositions];
  }

  return v18;
}

void __97__PUOneUpBarsController_initWithStyle_browsingSession_viewController_actionsController_delegate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTraitCollectionSizeClassChangeWithPreviousTraitCollection:v4];
}

- (PUOneUpBarsController)initWithViewController:(id)controller delegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpBarsController.m" lineNumber:207 description:{@"%s is not available as initializer", "-[PUOneUpBarsController initWithViewController:delegate:]"}];

  abort();
}

- (PUOneUpBarsController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpBarsController.m" lineNumber:203 description:{@"%s is not available as initializer", "-[PUOneUpBarsController init]"}];

  abort();
}

@end