@interface PUOneUpBarsController
- (BOOL)_canShowCommentsForCurrentAsset;
- (BOOL)_canShowSensitiveAssetMoreHelpContextMenuForCurrentAsset;
- (BOOL)_currentAssetNeedsSensitivityProtection;
- (BOOL)_physicalDeviceIsIPad;
- (BOOL)_shouldShowDoneEditingButton;
- (BOOL)_sizeClassesSupportsVisibleToolbar;
- (BOOL)_wantsChromeVisible;
- (BOOL)prefersStatusBarHidden;
- (BOOL)scrubberView:(id)a3 shouldIgnoreHitTest:(CGPoint)a4 withEvent:(id)a5;
- (BOOL)shouldTapBeginAtLocationFromProvider:(id)a3;
- (BOOL)wantsNavigationBarVisible;
- (BOOL)wantsToolbarVisible;
- (CGRect)oneUpActionsControllerPopoverSourceRectIn:(id)a3 actionType:(unint64_t)a4;
- (NSString)subtitle;
- (NSString)title;
- (PUOneUpBarsController)init;
- (PUOneUpBarsController)initWithStyle:(int64_t)a3 browsingSession:(id)a4 viewController:(id)a5 actionsController:(id)a6 delegate:(id)a7;
- (PUOneUpBarsController)initWithViewController:(id)a3 delegate:(id)a4;
- (PUOneUpBarsControllerDelegate)delegate;
- (UITapGestureRecognizer)tapGestureRecognizer;
- (id)_actionsMenu;
- (id)_activeBarButtonItemForIdentifier:(int64_t)a3;
- (id)_airPlayBarButtonItemForPopoverPresentation;
- (id)_allPhotosImageButton;
- (id)_assetActionMenuElements;
- (id)_attributedCommentTitleForTitle:(id)a3 controlState:(unint64_t)a4;
- (id)_barButtonIdentifiersForLocation:(int64_t)a3;
- (id)_barButtonItemCollectionForLocation:(int64_t)a3;
- (id)_barButtonItemForActionType:(unint64_t)a3;
- (id)_barButtonItemForIdentifier:(int64_t)a3;
- (id)_barButtonItemForIdentifier:(int64_t)a3 location:(int64_t)a4;
- (id)_barButtonItemWithSystemImageName:(id)a3 title:(id)a4;
- (id)_barButtonItemWithSystemItem:(int64_t)a3;
- (id)_commentTitleAttributes;
- (id)_commentsButtonWithTitle:(id)a3;
- (id)_customButtonTitleColor;
- (id)_disabledCommentTitleColor;
- (id)_internalAssetActionMenuElements;
- (id)_localizedTitleForMergeDuplicatesBarButtonItem;
- (id)_moreHelpMenu;
- (id)_newBarButtonItemWithIdentifier:(int64_t)a3 location:(int64_t)a4;
- (id)_textColorForTitleViewController:(BOOL)a3;
- (id)accessibilityIdentifierForBarButtonItemIdentifier:(int64_t)a3;
- (id)barButtonItemCollection:(id)a3 newBarButtonItemForIdentifier:(int64_t)a4;
- (id)currentAssetByAssetCollection;
- (id)oneUpActionsControllerPopoverSourceItemWithActionType:(unint64_t)a3;
- (id)overOneUpPresentationSession:(id)a3 barButtonItemForActivityType:(id)a4;
- (id)requestInfoOfKind:(id)a3 withResultHandler:(id)a4;
- (id)sourceItemForActionType:(id)a3;
- (int64_t)_identifierForButton:(id)a3;
- (int64_t)_lemonadeLocationForBarButtonItemWithIdentifier:(int64_t)a3;
- (int64_t)_lemonadeNavigationOnlyLocationForBarButtonItemWithIdentifier:(int64_t)a3;
- (int64_t)_lemonadeNavigationOrToolbarLocationForBarButtonItemWithIdentifier:(int64_t)a3;
- (int64_t)_locationForBarButtonItemCollection:(id)a3;
- (int64_t)_locationForBarButtonItemWithIdentifier:(int64_t)a3;
- (int64_t)_scrubberType;
- (int64_t)_trashBinLocation;
- (int64_t)preferredBarStyle;
- (void)_barButtonTappedWithIdentifier:(int64_t)a3;
- (void)_browsingViewModel:(id)a3 didChange:(id)a4;
- (void)_handleCreativeControlsButton:(id)a3;
- (void)_handleFavoriteButton:(id)a3;
- (void)_handleInfoButton:(id)a3;
- (void)_handleTapGestureRecognizer:(id)a3;
- (void)_handleTraitCollectionSizeClassChangeWithPreviousTraitCollection:(id)a3;
- (void)_handleTrashButton:(id)a3;
- (void)_initializeBarButtonItemCollections;
- (void)_invalidateChromeVisibilityWithAnimationType:(int64_t)a3;
- (void)_invalidateCommentsTitle;
- (void)_invalidateScrubber;
- (void)_invalidateTitle;
- (void)_invalidateTitleViewProvider;
- (void)_performPlayPauseAction:(int64_t)a3;
- (void)_resetIdentifierIndexes;
- (void)_setShowingPlayPauseButton:(BOOL)a3;
- (void)_showActionsMenu;
- (void)_showMenu:(id)a3 forIdentifier:(int64_t)a4;
- (void)_showSensitiveAssetMoreHelpContextMenu;
- (void)_startObservingOrientationChanges;
- (void)_stopObservingOrientationChanges;
- (void)_toolbarViewModel:(id)a3 didChange:(id)a4;
- (void)_updateActionsBarButtonItem;
- (void)_updateAddToLibraryBarButtonItem;
- (void)_updateChromeVisibilityIfNeeded;
- (void)_updateCommentsButton:(id)a3 withTitle:(id)a4;
- (void)_updateCommentsButtonIfNeeded;
- (void)_updateCommentsIcon:(unint64_t)a3;
- (void)_updateFavoriteBarButtonItem;
- (void)_updateIdentifiersIndexesWithIdentifier:(int64_t)a3 location:(int64_t)a4 shouldEnable:(BOOL)a5;
- (void)_updateScrubberViewIfNeeded;
- (void)_updateSensitiveAssetMoreHelpBarButtonItem;
- (void)_updateShowingPlayPauseButton;
- (void)_updateSpotlightOpenAppButton;
- (void)_updateSyndicationSaveBarButtonItem;
- (void)_updateTitleIfNeeded;
- (void)_updateTitleViewContentModeIfNeeded;
- (void)_updateTitleViewProviderIfNeeded;
- (void)_updateWantsAllPhotosButton;
- (void)barButtonItemTapped:(id)a3;
- (void)dealloc;
- (void)infoUpdaterDidUpdate:(id)a3;
- (void)invalidateViewControllerView;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)oneUpNavigationTitleSubtitleViewDidTapView:(id)a3;
- (void)overOneUpPresentationSession:(id)a3 didAppendReviewScreenAction:(unint64_t)a4;
- (void)photoBrowserTitleViewControllerTapped:(id)a3;
- (void)playPauseBarItemsController:(id)a3 didChange:(id)a4;
- (void)ppt_performAction:(unint64_t)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setAllowShowingPlayPauseButton:(BOOL)a3;
- (void)setAllowTapOnTitle:(BOOL)a3;
- (void)setDebuggingObservedImageModulationManager:(id)a3;
- (void)setDisableShowingNavigationBars:(BOOL)a3;
- (void)setMaximumAccessoryToolbarHeight:(double)a3;
- (void)setMaximumToolbarHeight:(double)a3;
- (void)setPresentedTipID:(id)a3;
- (void)setShouldPlaceButtonsInNavigationBar:(BOOL)a3;
- (void)setShouldPlaceScrubberInScrubberBar:(BOOL)a3;
- (void)setShouldShowAirPlayButton:(BOOL)a3;
- (void)setShouldShowMuteButton:(BOOL)a3;
- (void)setShouldShowProgrammaticNavBackButton:(BOOL)a3;
- (void)setShouldShowScrubber:(BOOL)a3;
- (void)setShouldUseCompactCommentsTitle:(BOOL)a3;
- (void)setShouldUseCompactTitleView:(BOOL)a3;
- (void)setWantsAllPhotosButton:(BOOL)a3;
- (void)setWantsShowInLibraryButton:(BOOL)a3;
- (void)updateBars;
- (void)updateContentGuideInsets;
- (void)updateGestureRecognizersWithHostingView:(id)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUOneUpBarsController

- (void)oneUpNavigationTitleSubtitleViewDidTapView:(id)a3
{
  v4 = [(PUOneUpBarsController *)self delegate];
  [v4 oneUpBarsControllerDidTapTitle:self];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PUDebuggingObservedImageModulationManagerObservationContext == a5)
  {
    v11 = v9;
    [(PUOneUpBarsController *)self _invalidateTitle];
    goto LABEL_7;
  }

  if (PhotosUICoreSelectionManagerObservationContext != a5 && VideoMuteControllerContext_43170 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUOneUpBarsController.m" lineNumber:3848 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v11 = v9;
    [(PUBarsController *)self invalidateBars];
LABEL_7:
    v9 = v11;
  }
}

- (id)requestInfoOfKind:(id)a3 withResultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  if (![v7 isEqualToString:@"PUCurrentAssetDisplayInfo"])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUOneUpBarsController.m" lineNumber:3825 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = [(PUOneUpBarsController *)self browsingSession];
  v11 = [v10 viewModel];

  v12 = [v11 currentAssetReference];
  v13 = [(PUOneUpBarsController *)self _canShowCommentsForCurrentAsset];
  v14 = [(PUOneUpBarsController *)self infoRequestSerialQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __61__PUOneUpBarsController_requestInfoOfKind_withResultHandler___block_invoke;
  v20[3] = &unk_1E7B7B478;
  v15 = v9;
  v24 = v13;
  v21 = v15;
  v22 = v12;
  v23 = v8;
  v16 = v8;
  v17 = v12;
  dispatch_async(v14, v20);

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

- (void)infoUpdaterDidUpdate:(id)a3
{
  v7 = a3;
  v5 = [(PUOneUpBarsController *)self _currentAssetDisplayInfoUpdater];

  if (v5 != v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUOneUpBarsController.m" lineNumber:3761 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [(PUOneUpBarsController *)self _invalidateTitle];
  [(PUOneUpBarsController *)self _invalidateCommentsTitle];
}

- (void)photoBrowserTitleViewControllerTapped:(id)a3
{
  if (self->_delegateFlags.respondsToDidTapTitle)
  {
    v5 = [(PUOneUpBarsController *)self delegate];
    [v5 oneUpBarsControllerDidTapTitle:self];
  }
}

- (BOOL)scrubberView:(id)a3 shouldIgnoreHitTest:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  v10 = a3;
  v11 = [(PUBarsController *)self viewController];
  v12 = [v11 view];

  [v12 convertPoint:v10 fromView:{x, y}];
  v14 = v13;
  v16 = v15;
  LOBYTE(v11) = [v10 isDescendantOfView:v12];

  if (v11)
  {
    isKindOfClass = 0;
  }

  else
  {
    v18 = [v12 hitTest:v9 withEvent:{v14, v16}];
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

- (void)ppt_performAction:(unint64_t)a3
{
  if (a3 == 35)
  {
    v3 = [(PUOneUpBarsController *)self actionsController];
    [v3 performShareAction];
  }

  else
  {
    if (a3 != 15)
    {
      return;
    }

    v3 = [(PUOneUpBarsController *)self actionsController];
    [v3 performSimpleActionWithActionType:15];
  }
}

- (void)overOneUpPresentationSession:(id)a3 didAppendReviewScreenAction:(unint64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v9 = v6;
    v7 = 50;
  }

  else
  {
    v9 = v6;
    v7 = 51;
  }

  v8 = [(PUOneUpBarsController *)self actionsController];
  [v8 performSimpleActionWithActionType:v7];

  v6 = v9;
LABEL_6:
}

- (id)overOneUpPresentationSession:(id)a3 barButtonItemForActivityType:(id)a4
{
  if ([a4 isEqual:*MEMORY[0x1E69C3CF0]])
  {
    v5 = [(PUOneUpBarsController *)self _airPlayBarButtonItemForPopoverPresentation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)playPauseBarItemsController:(id)a3 didChange:(id)a4
{
  if ([a4 playPauseStateDidChange])
  {
    [(PUBarsController *)self invalidateBars];

    [(PUOneUpBarsController *)self _updateShowingPlayPauseButton];
  }
}

- (int64_t)_identifierForButton:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v13 = [v11 identifierForBarButtonItem:v4];
      }

      else
      {
        if ((v6 & 1) == 0)
        {

          goto LABEL_13;
        }

        v13 = [v11 identifierForCustomButton:v4];
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

- (id)_barButtonItemForIdentifier:(int64_t)a3
{
  v5 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:?];
  v6 = [(PUOneUpBarsController *)self _barButtonItemCollectionForLocation:v5];
  v7 = [(PUOneUpBarsController *)self _barButtonIdentifiersForLocation:v5];
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    if ([v7 containsIndex:a3])
    {
      v9 = [v6 barButtonItemForIdentifier:a3];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_activeBarButtonItemForIdentifier:(int64_t)a3
{
  v5 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:?];

  return [(PUOneUpBarsController *)self _barButtonItemForIdentifier:a3 location:v5];
}

- (id)_barButtonItemForIdentifier:(int64_t)a3 location:(int64_t)a4
{
  v5 = [(PUOneUpBarsController *)self _barButtonItemCollectionForLocation:a4];
  v6 = [v5 barButtonItemForIdentifier:a3];

  return v6;
}

- (int64_t)_locationForBarButtonItemCollection:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpBarsController *)self _leftNavBarButtonItemCollection];

  if (v5 == v4)
  {
    v12 = 2;
  }

  else
  {
    v6 = [(PUOneUpBarsController *)self _rightNavBarButtonItemCollection];

    if (v6 == v4)
    {
      v12 = 1;
    }

    else
    {
      v7 = [(PUOneUpBarsController *)self _toolbarButtonItemCollection];

      if (v7 == v4)
      {
        v12 = 3;
      }

      else
      {
        v8 = [(PUOneUpBarsController *)self _leftToolbarButtonItemCollection];

        if (v8 == v4)
        {
          v12 = 6;
        }

        else
        {
          v9 = [(PUOneUpBarsController *)self _centerToolbarButtonItemCollection];

          if (v9 == v4)
          {
            v12 = 5;
          }

          else
          {
            v10 = [(PUOneUpBarsController *)self _rightToolbarButtonItemCollection];
            v11 = v10 == v4;

            v12 = 4 * v11;
          }
        }
      }
    }
  }

  return v12;
}

- (id)_barButtonIdentifiersForLocation:(int64_t)a3
{
  v4 = 0;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v4 = [(PUOneUpBarsController *)self _rightToolbarButtonIdentifiers];
        break;
      case 5:
        v4 = [(PUOneUpBarsController *)self _centerToolbarButtonIdentifiers];
        break;
      case 6:
        v4 = [(PUOneUpBarsController *)self _leftToolbarButtonIdentifiers];
        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        v4 = [(PUOneUpBarsController *)self _rightNavBarButtonIdentifiers];
        break;
      case 2:
        v4 = [(PUOneUpBarsController *)self _leftNavBarButtonIdentifiers];
        break;
      case 3:
        v4 = [(PUOneUpBarsController *)self _toolbarButtonIdentifiers];
        break;
    }
  }

  return v4;
}

- (id)_barButtonItemCollectionForLocation:(int64_t)a3
{
  v4 = 0;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v4 = [(PUOneUpBarsController *)self _rightToolbarButtonItemCollection];
        break;
      case 5:
        v4 = [(PUOneUpBarsController *)self _centerToolbarButtonItemCollection];
        break;
      case 6:
        v4 = [(PUOneUpBarsController *)self _leftToolbarButtonItemCollection];
        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        v4 = [(PUOneUpBarsController *)self _rightNavBarButtonItemCollection];
        break;
      case 2:
        v4 = [(PUOneUpBarsController *)self _leftNavBarButtonItemCollection];
        break;
      case 3:
        v4 = [(PUOneUpBarsController *)self _toolbarButtonItemCollection];
        break;
    }
  }

  return v4;
}

- (id)barButtonItemCollection:(id)a3 newBarButtonItemForIdentifier:(int64_t)a4
{
  v4 = [(PUOneUpBarsController *)self _newBarButtonItemWithIdentifier:a4 location:[(PUOneUpBarsController *)self _locationForBarButtonItemCollection:a3]];

  return v4;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = [(PUOneUpBarsController *)self browsingSession];
  v4 = [v3 viewModel];

  if ([v4 isPresentingOverOneUp])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PUOneUpBarsController_presentationControllerDidDismiss___block_invoke;
    v5[3] = &unk_1E7B80DD0;
    v6 = v4;
    [v6 performChanges:v5];
  }
}

- (CGRect)oneUpActionsControllerPopoverSourceRectIn:(id)a3 actionType:(unint64_t)a4
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

- (id)oneUpActionsControllerPopoverSourceItemWithActionType:(unint64_t)a3
{
  if (a3 == 38)
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

- (id)_barButtonItemForActionType:(unint64_t)a3
{
  v6 = 0;
  if (a3 <= 14)
  {
    v7 = 2;
    if (a3 <= 7)
    {
      if (a3 != 1)
      {
        if (a3 == 4)
        {
          v7 = 44;
        }

        else
        {
          if (a3 != 6)
          {
            goto LABEL_36;
          }

          v7 = 45;
        }
      }
    }

    else if (a3 > 10)
    {
      if (a3 == 11)
      {
        v7 = 4;
      }

      else
      {
        if (a3 != 13)
        {
          goto LABEL_36;
        }

        v7 = 5;
      }
    }

    else if (a3 != 8)
    {
      if (a3 != 10)
      {
        goto LABEL_36;
      }

      v7 = 3;
    }
  }

  else
  {
    switch(a3)
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
        if (a3 != 15 && a3 != 19)
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

- (id)sourceItemForActionType:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*MEMORY[0x1E69C46E8] == v4 || *MEMORY[0x1E69C4688] == v4)
  {
    v7 = 46;
  }

  else if (*MEMORY[0x1E69C4828] == v4 || *MEMORY[0x1E69C4780] == v4 || *MEMORY[0x1E69C4838] == v4 || *MEMORY[0x1E69C46D8] == v4)
  {
    v7 = 2;
  }

  else if (*MEMORY[0x1E69C4680] == v4)
  {
    v7 = 3;
  }

  else
  {
    if (*MEMORY[0x1E69C4670] != v4 && *MEMORY[0x1E69C4690] != v4)
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

- (void)_toolbarViewModel:(id)a3 didChange:(id)a4
{
  if ([a4 accessoryViewChanged])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__PUOneUpBarsController__toolbarViewModel_didChange___block_invoke;
    block[3] = &unk_1E7B80DD0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_browsingViewModel:(id)a3 didChange:(id)a4
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[PUOneUpSettings sharedInstance];
  v68 = [v8 chromeAnimationType];

  if ([v7 assetsDataSourceDidChange])
  {
    [(PUBarsController *)self invalidateBars];
  }

  if ([v7 contentPrivacyStateDidChange])
  {
    [(PUOneUpBarsController *)self _invalidateChromeVisibilityWithAnimationType:0];
    [(PUBarsController *)self invalidateBars];
    v9 = [v6 contentPrivacyState] == 1;
    [(PUOneUpBarsController *)self _invalidateTitle];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 currentAssetDidChange];
  if (v10)
  {
    [(PUOneUpBarsController *)self _invalidateSpotlightOpenAppButton];
    [(PUOneUpBarsController *)self _invalidateWantsAllPhotosButton];
    v11 = [(PUOneUpBarsController *)self _currentAssetDisplayInfoUpdater];
    [v11 invalidateInfo];

    [(PUOneUpBarsController *)self _invalidateTitle];
    [(PUOneUpBarsController *)self _invalidateTitleViewProvider];
    [(PUOneUpBarsController *)self _invalidateCommentsTitle];
    [(PUBarsController *)self invalidateBars];
    v12 = [(PUOneUpBarsController *)self detailsBarButtonController];
    [v12 currentAssetDidChange];

    v68 = 2;
  }

  if ([v7 reviewScreenSelectionDidChange])
  {
    [(PUOneUpBarsController *)self _invalidateTitle];
    [(PUBarsController *)self invalidateBars];
  }

  if ([v7 navigationBarTitleDidChange])
  {
    [(PUOneUpBarsController *)self _invalidateTitle];
  }

  if ([v7 reviewScreenBarsModelDidChange])
  {
    [(PUBarsController *)self invalidateBars];
    [(PUBarsController *)self invalidateContentGuideInsets];
  }

  if ([v7 isInSelectionModeDidChange])
  {
    v13 = [(PUOneUpBarsController *)self browsingSession];
    v14 = [v13 actionManager];
    v15 = [v14 px_selectionManager];

    [v15 performChanges:&__block_literal_global_43206];
    v16 = [(PUOneUpBarsController *)self browsingSession];
    v17 = [v16 actionManager];

    LODWORD(v14) = [v6 isInSelectionMode];
    v18 = [v17 px_selectionManager];
    v19 = v18;
    if (v14)
    {
      [v18 registerChangeObserver:self context:PhotosUICoreSelectionManagerObservationContext];
    }

    else
    {
      [v18 unregisterChangeObserver:self context:PhotosUICoreSelectionManagerObservationContext];
    }

    [(PUBarsController *)self invalidateBars];
  }

  if ([v7 chromeVisibilityDidChange])
  {
    v10 = [(PUOneUpBarsController *)self disableShowingNavigationBars]^ 1;
    v20 = [(PUBarsController *)self viewController];
    v21 = [v20 px_isVisible];
    v22 = v68;
    if (!v21)
    {
      v22 = 0;
    }

    v68 = v22;
  }

  if ([v7 currentAssetTransitionProgressDidChange])
  {
    v23 = +[PUOneUpSettings sharedInstance];
    v24 = PUShouldAutoHideChrome(v6, [v23 chromeAutoHideBehaviorOnSwipe]);
  }

  else
  {
    v24 = 0;
  }

  v25 = [v6 currentAssetReference];

  if (v25)
  {
    v64 = v9;
    v26 = [v6 currentAssetReference];
    v65 = v7;
    v62 = [v7 assetViewModelChangesByAssetReference];
    v71 = v26;
    [v62 objectForKeyedSubscript:v26];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = v81 = 0u;
    v27 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
    v63 = v24;
    if (!v27)
    {
      v30 = v68;
      goto LABEL_62;
    }

    v28 = v27;
    v29 = *v79;
    v30 = v68;
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
        v33 = [v32 videoPlayerChange];
        if (([v32 accessoryViewVisibilityChanged] & 1) != 0 || (objc_msgSend(v32, "isInEditModeChanged") & 1) != 0 || (objc_msgSend(v32, "isFavoriteChanged") & 1) != 0 || (objc_msgSend(v32, "assetSyndicationStateChanged") & 1) != 0 || (objc_msgSend(v32, "assetChanged") & 1) != 0 || (objc_msgSend(v32, "importStateChanged") & 1) != 0 || (objc_msgSend(v33, "audioStatusDidChange") & 1) != 0 || (objc_msgSend(v33, "isActivatedDidChange") & 1) != 0 || objc_msgSend(v33, "desiredPlayStateDidChange"))
        {
          [(PUBarsController *)self invalidateBars];
        }

        if ([v32 accessoryViewVisibilityChanged])
        {
          [v6 assetViewModelForAssetReference:v71];
          v34 = v30;
          v35 = v28;
          v36 = v10;
          v37 = self;
          v38 = v6;
          v40 = v39 = v33;
          v41 = [v40 isLastAccessoryViewVisibilityChangeReasonUserAction];

          v33 = v39;
          v6 = v38;
          self = v37;
          v42 = v36;
          v28 = v35;
          if (v41)
          {
            v30 = 1;
          }

          else
          {
            v30 = v34;
          }

          v10 = v41 | v42;
          v29 = v70;
        }

        if ([v32 isInEditModeChanged])
        {
          [(PUOneUpBarsController *)self _invalidateChromeVisibilityWithAnimationType:v30];
        }

        if ([v32 contentOffsetChanged])
        {
          [(PUBarsController *)self invalidateBars];
          v10 = 1;
        }

        if ([v32 infoButtonPropertyChanged])
        {
          v69 = v33;
          v43 = v10;
          v44 = v30;
          v45 = v6;
          v46 = [v6 assetViewModelForAssetReference:v71];
          v47 = [v46 assetReference];
          v48 = [v47 asset];
          v49 = [v71 asset];
          v50 = v49;
          if (v48 == v49)
          {
          }

          else
          {
            v51 = [v48 isEqual:v49];

            if ((v51 & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          [(PUBarsController *)self invalidateBars];
LABEL_57:

          v6 = v45;
          v30 = v44;
          v10 = v43;
          v33 = v69;
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
        v52 = v10;
        v68 = v30;
        v7 = v65;
        v53 = [v65 assetSharedViewModelChangesByAssetUUID];
        v54 = [v71 asset];
        v55 = [v54 uuid];
        v56 = [v53 objectForKey:v55];

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
        LOBYTE(v10) = v52;
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
    v73 = v6;
    [v73 performChanges:v72];
  }

  else if (v10)
  {
    [(PUOneUpBarsController *)self _invalidateChromeVisibilityWithAnimationType:v68];
  }

  if (v9)
  {
    [(PUOneUpBarsController *)self updateBars];
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUOneUpBarsController *)self _browsingViewModel:v7 didChange:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PUOneUpBarsController *)self _toolbarViewModel:v7 didChange:v6];
    }
  }
}

- (void)_handleTapGestureRecognizer:(id)a3
{
  v4 = [(PUOneUpBarsController *)self browsingSession];
  v5 = [v4 viewModel];

  if ([v5 isInSelectionMode])
  {
    v6 = [(PUOneUpBarsController *)self actionsController];
    [v6 performSimpleActionWithActionType:45];
  }

  else
  {
    v7 = +[PUOneUpSettings sharedInstance];
    if ([v7 allowChromeHiding])
    {
      v8 = [(PUOneUpBarsController *)self disableChromeHiding];

      if (!v8)
      {
        v9 = [v5 isChromeVisible];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __53__PUOneUpBarsController__handleTapGestureRecognizer___block_invoke;
        v10[3] = &unk_1E7B7FF98;
        v11 = v5;
        v12 = v9;
        [v11 performChanges:v10];
      }
    }

    else
    {
    }
  }
}

- (void)_performPlayPauseAction:(int64_t)a3
{
  v5 = [(PUOneUpBarsController *)self _scrubberView];
  [v5 cancelDeceleration];

  v6 = [(PUOneUpBarsController *)self actionsController];
  [v6 performPlayPauseActionWithDesiredState:a3];

  if (self->_delegateFlags.respondsToDidTapPlayPauseButton)
  {
    v7 = [(PUOneUpBarsController *)self delegate];
    [v7 oneUpBarsController:self didTapPlayPauseButton:a3 == 4];
  }
}

- (void)_showMenu:(id)a3 forIdentifier:(int64_t)a4
{
  v6 = a3;
  v7 = [(PUOneUpBarsController *)self _barButtonItemForIdentifier:a4 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:a4]];
  [v7 setMenu:v6];

  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 performSelector:sel_view];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;

      if (v9)
      {
        v10 = [v9 contextMenuInteraction];
        [v10 _presentMenuAtLocation:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

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
  v3 = [(PUOneUpBarsController *)self _moreHelpMenu];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v3 = [(PUOneUpBarsController *)self _showMenu:v3 forIdentifier:47];
    v4 = v5;
  }

  MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)_showActionsMenu
{
  v3 = [(PUOneUpBarsController *)self delegate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__PUOneUpBarsController__showActionsMenu__block_invoke;
  v4[3] = &unk_1E7B80DD0;
  v4[4] = self;
  [v3 oneUpBarsControllerWillPresentActionsMenu:self completionHandler:v4];
}

void __41__PUOneUpBarsController__showActionsMenu__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _actionsMenu];
  [v1 _showMenu:v2 forIdentifier:46];
}

- (void)_barButtonTappedWithIdentifier:(int64_t)a3
{
  switch(a3)
  {
    case 1:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 15;
      goto LABEL_52;
    case 2:
      v12 = [(PUOneUpBarsController *)self actionsController];
      [v12 performTrashAction];
      goto LABEL_53;
    case 3:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 10;
      goto LABEL_52;
    case 4:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 11;
      goto LABEL_52;
    case 5:
      v12 = [(PUOneUpBarsController *)self actionsController];
      [v12 performRestoreAction];
      goto LABEL_53;
    case 6:
      v12 = [(PUOneUpBarsController *)self actionsController];
      [v12 performShareAction];
      goto LABEL_53;
    case 7:
      v12 = [(PUOneUpBarsController *)self actionsController];
      [v12 performToggleFavoriteAction];
      goto LABEL_53;
    case 10:
    case 29:
      v12 = [(PUBarsController *)self viewController];
      [v12 dismissViewControllerAnimated:1 completion:0];
      goto LABEL_53;
    case 11:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
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
      v12 = [(PUOneUpBarsController *)self actionsController];
      [v12 performToggleCommentsActionAndBeginEditing:{-[PUOneUpBarsController shouldBeginEditingAfterShowingComments](self, "shouldBeginEditingAfterShowingComments")}];
      goto LABEL_53;
    case 16:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 37;
      goto LABEL_52;
    case 17:
      v12 = [(PUOneUpBarsController *)self actionsController];
      [v12 performCancelEditingAction];
      goto LABEL_53;
    case 18:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 38;
      goto LABEL_52;
    case 19:
      v9 = [(PUOneUpBarsController *)self actionsController];
      v12 = v9;
      v10 = 1;
      goto LABEL_48;
    case 20:
      v9 = [(PUOneUpBarsController *)self actionsController];
      v12 = v9;
      v10 = 0;
LABEL_48:
      [v9 performLikeActionWithLike:v10];
      goto LABEL_53;
    case 21:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 46;
      goto LABEL_52;
    case 22:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 47;
      goto LABEL_52;
    case 23:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 50;
      goto LABEL_52;
    case 24:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 48;
      goto LABEL_52;
    case 25:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 51;
      goto LABEL_52;
    case 26:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 52;
      goto LABEL_52;
    case 27:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 53;
      goto LABEL_52;
    case 28:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 54;
      goto LABEL_52;
    case 30:
      v12 = [(PUOneUpBarsController *)self actionsController];
      [v12 performShowInLibraryAction];
      goto LABEL_53;
    case 31:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 62;
      goto LABEL_52;
    case 32:
      v7 = [(PUOneUpBarsController *)self actionsController];
      v12 = v7;
      v8 = 1;
      goto LABEL_30;
    case 33:
      v7 = [(PUOneUpBarsController *)self actionsController];
      v12 = v7;
      v8 = 0;
LABEL_30:
      [v7 performMuteActionWithShouldMute:v8];
      goto LABEL_53;
    case 34:
      v12 = [(PUOneUpBarsController *)self actionsController];
      [v12 performDoneEditingAction];
      goto LABEL_53;
    case 35:
      v12 = [(PUOneUpBarsController *)self actionsController];
      [v12 performToggleDetailsAction];
      goto LABEL_53;
    case 36:
      v12 = [(PUOneUpBarsController *)self actionsController];
      [v12 performSyndicationSaveAction];
      goto LABEL_53;
    case 37:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 57;
      goto LABEL_52;
    case 38:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 59;
      goto LABEL_52;
    case 39:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 60;
      goto LABEL_52;
    case 40:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 61;
      goto LABEL_52;
    case 41:
    case 42:
      v12 = [(PUOneUpBarsController *)self actionsController];
      [v12 toggleSelectionMode];
      goto LABEL_53;
    case 43:
      v12 = [(PUOneUpBarsController *)self actionsController];
      [v12 performMergeDuplicatesAction];
      goto LABEL_53;
    case 44:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 4;
      goto LABEL_52;
    case 45:
      v4 = [(PUOneUpBarsController *)self actionsController];
      v12 = v4;
      v5 = 6;
LABEL_52:
      [v4 performSimpleActionWithActionType:v5];
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

- (void)barButtonItemTapped:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUOneUpBarsController *)self _identifierForButton:v4];
  if (!v5)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_fault_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_FAULT, "Untracked BarButtonItem tapped: %@", &v7, 0xCu);
    }
  }

  [(PUOneUpBarsController *)self _barButtonTappedWithIdentifier:v5];
}

- (void)_handleFavoriteButton:(id)a3
{
  v3 = [(PUOneUpBarsController *)self actionsController];
  [v3 performToggleFavoriteAction];
}

- (void)_handleCreativeControlsButton:(id)a3
{
  v3 = [(PUOneUpBarsController *)self actionsController];
  [v3 performSimpleActionWithActionType:15];
}

- (void)_handleInfoButton:(id)a3
{
  v3 = [(PUOneUpBarsController *)self actionsController];
  [v3 performToggleDetailsAction];
}

- (void)_handleTrashButton:(id)a3
{
  v3 = [(PUOneUpBarsController *)self actionsController];
  [v3 performTrashAction];
}

- (void)_stopObservingOrientationChanges
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  [v4 endGeneratingDeviceOrientationNotifications];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];
}

- (void)_startObservingOrientationChanges
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_orientationChanged_ name:*MEMORY[0x1E69DDCB8] object:v4];

  [v4 beginGeneratingDeviceOrientationNotifications];
}

- (void)_updateSpotlightOpenAppButton
{
  v3 = [(PUOneUpBarsController *)self spotlightOpenAppButton];

  if (v3)
  {
    v4 = [(PUOneUpBarsController *)self browsingSession];
    v5 = [v4 viewModel];
    v6 = [v5 currentAssetReference];
    v7 = [v6 asset];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    v8 = PXOwningAppBundleIdentifierForSpotlightAsset();
    v9 = [(PUOneUpBarsController *)self spotlightOpenAppButton];
    [v9 setAppBundleIdentifier:v8];
  }
}

- (void)setWantsAllPhotosButton:(BOOL)a3
{
  if (self->_wantsAllPhotosButton != a3)
  {
    self->_wantsAllPhotosButton = a3;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)_updateWantsAllPhotosButton
{
  v3 = [(PUOneUpBarsController *)self browsingSession];
  v4 = [v3 actionManager];
  v5 = [(PUOneUpBarsController *)self currentAssetByAssetCollection];
  v6 = [v4 canPerformAction:43 onAllAssetsByAssetCollection:v5];

  [(PUOneUpBarsController *)self setWantsAllPhotosButton:v6];
}

- (void)_setShowingPlayPauseButton:(BOOL)a3
{
  if (self->_isShowingPlayPauseButton != a3)
  {
    self->_isShowingPlayPauseButton = a3;
    if (self->_delegateFlags.respondsToDidChangeShowingPlayPauseButton)
    {
      v4 = [(PUOneUpBarsController *)self delegate];
      [v4 oneUpBarsControllerDidChangeShowingPlayPauseButton:self];
    }
  }
}

- (void)_updateShowingPlayPauseButton
{
  if ([(PUOneUpBarsController *)self allowShowingPlayPauseButton])
  {
    v3 = [(PUOneUpBarsController *)self _playPauseBarItemsController];
    v4 = [v3 playPauseState];

    v5 = +[PUOneUpSettings sharedInstance];
    v6 = [v5 allowPlayButtonInBars];

    if (v6)
    {
      v7 = v4 != 0;
    }

    else
    {
      v7 = v4 == 1;
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
  v3 = [(PUOneUpBarsController *)self _wantsChromeVisible];
  v4 = [(PUOneUpBarsController *)self _nextChromeVisibilityUpdateAnimationType];
  v5 = [(PUBarsController *)self viewController];
  v9 = v5;
  if (v4)
  {
    v6 = [(PUOneUpBarsController *)self browsingSession];
    v7 = [v6 viewModel];
    v8 = PUChromeAnimationDuration(v7);

    if (!v3)
    {
      if ([(PUOneUpBarsController *)self _lastChromeVisibility])
      {
        [(PUBarsController *)self disableUpdateBarsForDuration:v8];
      }

      [v9 pu_performBarsVisibilityUpdatesWithAnimationSettings:{v4, *&v8}];
      goto LABEL_12;
    }

    [v9 pu_performBarsVisibilityUpdatesWithAnimationSettings:{v4, *&v8}];
    goto LABEL_7;
  }

  [v5 pu_performBarsVisibilityUpdatesWithAnimationSettings:{0, 0}];
  if (v3)
  {
LABEL_7:
    if (![(PUOneUpBarsController *)self _lastChromeVisibility])
    {
      [(PUBarsController *)self invalidateContentGuideInsets];
    }
  }

LABEL_12:
  [(PUOneUpBarsController *)self _setLastChromeVisibility:v3];
}

- (void)_invalidateChromeVisibilityWithAnimationType:(int64_t)a3
{
  [(PUOneUpBarsController *)self _setNeedsUpdateChromeVisibility:1];
  [(PUOneUpBarsController *)self _setNextChromeVisibilityUpdateAnimationType:a3];

  [(PUOneUpBarsController *)self _updateChromeVisibilityIfNeeded];
}

- (void)_updateCommentsIcon:(unint64_t)a3
{
  v6 = [(PUOneUpBarsController *)self _activeBarButtonItemForIdentifier:14];
  if (a3)
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
  v4 = [(PUOneUpBarsController *)self _currentAssetDisplayInfoUpdater];
  v30 = [v4 info];

  v5 = [v30 objectForKeyedSubscript:@"PUCommentsInfoDictionaryKey"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"PUCommentsInfoCommentCountKey"];
    v8 = [v7 integerValue];

    if ([(PUOneUpBarsController *)self _sizeClassesSupportsVisibleToolbar])
    {
      v9 = [(PUOneUpBarsController *)self _activeBarButtonItemForIdentifier:14];
      if (!v9)
      {
LABEL_24:

        goto LABEL_25;
      }

      v10 = [v6 objectForKeyedSubscript:@"PUCommentsInfoLikeCountKey"];
      v11 = [v10 integerValue];

      if (v11 && v8)
      {
        v12 = PULocalizedString(@"ONEUP_COMMENTS_TOGGLE_CONSOLIDATED_COMMENTS");
        v13 = PULocalizedStringWithValidatedFormat(v12, @"%d");

        if (![v13 length] || !-[PUOneUpBarsController shouldUseCompactCommentsTitle](self, "shouldUseCompactCommentsTitle"))
        {
          v14 = [(PUOneUpBarsController *)self _attributedCommentTitleForTitle:v13 controlState:0];
          v15 = [(PUBarsController *)self viewController];
          [v14 size];
          v17 = v16;
          v18 = [v15 view];
          [v18 bounds];
          v20 = v19 * 0.5;

          if (v17 < v20)
          {
            v21 = PULocalizedString(@"ONEUP_COMMENTS_TOGGLE_COMMENTS_AND_LIKES");
            v28 = v11;
            v29 = v8;
            v22 = PULocalizedStringWithValidatedFormat(v21, @"%d %d");

            v13 = v22;
          }
        }
      }

      else if (v11 || !v8)
      {
        if (!v11 || v8)
        {
          v13 = PULocalizedString(@"ONEUP_COMMENTS_TOGGLE_NO_COMMENTS");
          v25 = 1;
LABEL_21:
          [(PUOneUpBarsController *)self setShouldBeginEditingAfterShowingComments:v25, v28, v29];
          v26 = [v9 customView];
          if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v27 = [MEMORY[0x1E696AAA8] currentHandler];
            [v27 handleFailureInMethod:a2 object:self file:@"PUOneUpBarsController.m" lineNumber:2839 description:{@"Invalid parameter not satisfying: %@", @"commentsItemButton && [commentsItemButton isKindOfClass:UIButton.class]"}];
          }

          [(PUOneUpBarsController *)self _updateCommentsButton:v26 withTitle:v13];

          goto LABEL_24;
        }

        v24 = PULocalizedString(@"ONEUP_COMMENTS_TOGGLE_LIKES_ONLY");
        v28 = v11;
        v13 = PULocalizedStringWithValidatedFormat(v24, @"%d");
      }

      else
      {
        v23 = PULocalizedString(@"ONEUP_COMMENTS_TOGGLE_COMMENTS_ONLY");
        v28 = v8;
        v13 = PULocalizedStringWithValidatedFormat(v23, @"%d");
      }

      v25 = 0;
      goto LABEL_21;
    }

    [(PUOneUpBarsController *)self _updateCommentsIcon:v8];
  }

LABEL_25:
}

- (void)_invalidateCommentsTitle
{
  [(PUOneUpBarsController *)self _setNeedsUpdateCommentsTitle:1];

  [(PUBarsController *)self invalidateBars];
}

- (id)_textColorForTitleViewController:(BOOL)a3
{
  v4 = [(PUOneUpBarsController *)self style];
  v5 = +[PUInterfaceManager currentTheme];
  v6 = v5;
  if (v4 == 1)
  {
    v7 = [v5 photoBrowserSpotlightThemeColor];
  }

  else
  {
    if (a3)
    {
      [v5 photoBrowserTitleViewTappableTextColor];
    }

    else
    {
      [v5 photoBrowserTitleViewTextColor];
    }
    v7 = ;
  }

  v8 = v7;

  return v8;
}

- (void)_updateTitleIfNeeded
{
  if ([(PUOneUpBarsController *)self _needsUpdateTitle])
  {
    [(PUOneUpBarsController *)self _setNeedsUpdateTitle:0];
    v3 = [(PUOneUpBarsController *)self _titleViewController];

    if (v3)
    {
      v4 = [(PUOneUpBarsController *)self browsingSession];
      v5 = [v4 viewModel];
      v6 = [v5 navigationBarTitle];

      v7 = +[PUOneUpSettings sharedInstance];
      v8 = [v7 debuggingTitleType];

      switch(v8)
      {
        case 3:
          v25 = [(PUOneUpBarsController *)self browsingSession];
          v26 = [v25 viewModel];
          v27 = [v26 currentAssetReference];
          v10 = [v27 asset];

          if (objc_opt_respondsToSelector())
          {
            v28 = [v10 deferredProcessingNeeded];
            v29 = @"Processing…";
            if (!v28)
            {
              v29 = @"Processing Done";
            }

            v30 = v29;

            v20 = 0;
            v6 = v30;
          }

          else
          {
            v20 = 0;
          }

          break;
        case 2:
          v21 = [(PUBarsController *)self viewController];
          v20 = [v21 px_imageModulationManager];

          v22 = MEMORY[0x1B8C6CCC0]([v20 requestedEDRHeadroomFactor]);
          v23 = MEMORY[0x1E696AEC0];
          [v20 HDRFocus];
          [v23 stringWithFormat:@"HDR %0.1f · Req %0.1f", v24, *&v22];
          v6 = v10 = v6;
          break;
        case 1:
          v9 = [(PUOneUpBarsController *)self browsingSession];
          v10 = [v9 viewModel];

          v11 = [v10 currentAssetReference];
          v12 = [v10 assetsDataSource];
          v13 = [v12 indexPathForAssetReference:v11];
          v14 = [MEMORY[0x1E696AC88] indexPathWithIndex:{objc_msgSend(v13, "section")}];
          v15 = [v12 numberOfSubItemsAtIndexPath:v14];

          v16 = MEMORY[0x1E696AEC0];
          v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "item") + 1}];
          v18 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
          v19 = [v16 stringWithFormat:@"%@ of %@", v17, v18];

          v20 = 0;
          v6 = v19;
          break;
        default:
          v20 = 0;
LABEL_15:
          v46 = v20;
          v47 = v6;
          [(PUOneUpBarsController *)self _setTitle:v6];
          [(PUOneUpBarsController *)self setDebuggingObservedImageModulationManager:v20];
          v31 = [(PUOneUpBarsController *)self shouldUseCompactTitleView];
          v32 = [(PUOneUpBarsController *)self _currentAssetDisplayInfoUpdater];
          v33 = [v32 info];

          v34 = [v33 objectForKeyedSubscript:@"PUTitleInfoDictionaryKey"];
          v35 = [v34 objectForKeyedSubscript:@"PUTitleInfoGeoDescriptionKey"];
          v36 = [v34 objectForKeyedSubscript:@"PUTitleInfoCreationDateKey"];
          v37 = [(PUOneUpBarsController *)self allowTapOnTitle];
          v38 = [(PUOneUpBarsController *)self _titleTextColorForTitleViewController:v37];
          v39 = [(PUOneUpBarsController *)self _subtitleTextColorForTitleViewController:v37];
          v40 = [(PUOneUpBarsController *)self _titleViewController];
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __45__PUOneUpBarsController__updateTitleIfNeeded__block_invoke;
          v48[3] = &unk_1E7B79988;
          v54 = v31;
          v49 = v40;
          v50 = v35;
          v51 = v36;
          v52 = v38;
          v53 = v39;
          v55 = v37;
          v41 = v39;
          v42 = v38;
          v43 = v36;
          v44 = v35;
          v45 = v40;
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
    v3 = [(PUOneUpBarsController *)self browsingSession];
    v7 = [v3 viewModel];

    v4 = [v7 currentAssetReference];
    v5 = [v4 asset];

    v6 = [(PUOneUpBarsController *)self titleSubtitleViewProvider];
    [v6 setInputAsset:v5];
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
    v3 = [(PUBarsController *)self viewController];
    v9 = [v3 traitCollection];

    v4 = [(PUBarsController *)self viewController];
    v5 = [v4 navigationItem];
    v6 = [v5 rightBarButtonItems];

    v7 = [v9 horizontalSizeClass] == 1 && objc_msgSend(v6, "count") > 1;
    v8 = [(PUOneUpBarsController *)self titleSubtitleViewProvider];
    [v8 setTitleContentMode:v7];
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
  v4 = [(PUOneUpBarsController *)self _scrubberType];
  scrubberView = self->__scrubberView;
  if (!v4)
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

  v12 = [(PUOneUpBarsController *)self browsingSession];
  if (!v12)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUOneUpBarsController.m" lineNumber:2622 description:{@"Invalid parameter not satisfying: %@", @"browsingSession != nil"}];
  }

  v7 = [PUScrubberView alloc];
  v8 = [(PUScrubberView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = self->__scrubberView;
  self->__scrubberView = v8;
  v10 = v8;

  [(PUScrubberView *)v10 setDelegate:self];
  [(PUScrubberView *)v10 setBrowsingSession:v12];
  [(PUScrubberView *)v10 setType:v4 == 2];
}

- (id)_localizedTitleForMergeDuplicatesBarButtonItem
{
  v2 = [(PUOneUpBarsController *)self browsingSession];
  v3 = [v2 viewModel];
  v4 = [v3 isInSelectionMode];

  if (v4)
  {
    v5 = [v2 actionManager];
    v6 = [v5 localizedTitleForActionType:65];
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

- (id)_newBarButtonItemWithIdentifier:(int64_t)a3 location:(int64_t)a4
{
  v56[1] = *MEMORY[0x1E69E9840];
  v6 = [(PUOneUpBarsController *)self accessibilityIdentifierForBarButtonItemIdentifier:a3, a4];
  switch(a3)
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
      v9 = ;
      goto LABEL_89;
    case 2:
      v9 = [(PUOneUpBarsController *)self _barButtonItemWithSystemItem:16];
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
      v7 = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_FAVORITE");
      v8 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"heart" title:v7];
      goto LABEL_86;
    case 8:
      v7 = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_UNFAVORITE");
      v8 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"heart.fill" title:v7];
      goto LABEL_86;
    case 10:
    case 29:
      if (MEMORY[0x1B8C6D660]())
      {
        v9 = [(PUOneUpBarsController *)self _barButtonItemWithSystemItem:101];
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
        v9 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"text.bubble" title:0];
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
      v9 = [(PUOneUpBarsController *)self _barButtonItemWithSystemItem:111];
      goto LABEL_89;
    case 19:
      v7 = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_LIKE");
      v8 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"hand.thumbsup" title:v7];
      goto LABEL_86;
    case 20:
      v7 = PULocalizedString(@"BAR_BUTTON_ITEM_TITLE_LIKED");
      v8 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"hand.thumbsup.fill" title:v7];
      goto LABEL_86;
    case 22:
    case 34:
      v9 = [(PUOneUpBarsController *)self _barButtonItemWithSystemItem:0];
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
      v9 = [(PUOneUpBarsController *)self _barButtonItemWithSystemItem:2];
      goto LABEL_89;
    case 26:
      v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:&stru_1F2AC6818 style:0 target:self action:sel_barButtonItemTapped_];
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
        v9 = [(PUOneUpBarsController *)self _allPhotosImageButton];
        goto LABEL_89;
      }

      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      v32 = PULocalizedString(@"PUPHOTOBROWSER_SHOW_IN_LIBRARY");
      goto LABEL_84;
    case 31:
      v35 = [(PUOneUpBarsController *)self style];
      v31 = objc_alloc(MEMORY[0x1E69DC708]);
      if (v35 == 2)
      {
        v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.down"];
LABEL_64:
        v7 = v33;
        v8 = [v31 initWithImage:v33 style:0 target:self action:sel_barButtonItemTapped_];
      }

      else
      {
        v32 = PULocalizedString(@"ONE_UP_SAVE_TO_LIBRARY");
LABEL_84:
        v7 = v32;
        v10 = v31;
LABEL_85:
        v8 = [v10 initWithTitle:v7 style:0 target:self action:sel_barButtonItemTapped_];
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
      v15 = [(PUOneUpBarsController *)self browsingSession];
      v7 = [v15 viewModel];

      v16 = [PUOneUpDetailsBarButtonController defaultGlyphNameFor:v7];
      v17 = [PUAnimatableBarButtonItem barButtonItemWithSystemImageName:v16];
      [v17 addTarget:self action:sel_barButtonItemTapped_ for:64];
      [v17 setAccessibilityIdentifier:@"com.apple.mobileslideshow.infoButton"];
      v13 = v17;
      v18 = [[PUOneUpDetailsBarButtonController alloc] initWithBarButtonItem:v13 browseViewModel:v7];

      [(PUOneUpBarsController *)self setDetailsBarButtonController:v18];
      goto LABEL_15;
    case 36:
      v19 = [(PUOneUpBarsController *)self browsingSession];
      v20 = [v19 viewModel];
      v21 = [v20 currentAssetReference];
      v7 = [v21 asset];

      v22 = [v7 mediaType];
      v23 = @"ITEM";
      if (v22 == 1)
      {
        v23 = @"PHOTO";
      }

      if (v22 == 2)
      {
        v23 = @"VIDEO";
      }

      v16 = v23;
      v24 = [@"ONE_UP_SYNDICATION_SAVE_TO_LIBRARY_" stringByAppendingString:v16];
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
      v41 = [(PUOneUpBarsController *)self browsingSession];
      v42 = [v41 actionManager];

      v13 = [v42 barButtonItemForActionType:59];
      v43 = [v13 customView];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v44 = PXAssertGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          LOWORD(location[0]) = 0;
          _os_log_error_impl(&dword_1B36F3000, v44, OS_LOG_TYPE_ERROR, "Expected spotlight action button to conform to PXPhotoKitSpotlightActionButton", location, 2u);
        }
      }

      [v43 addTarget:self action:sel_barButtonItemTapped_ forControlEvents:64];
      [(PUOneUpBarsController *)self setSpotlightOpenAppButton:v43];

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
      v7 = [(PUOneUpBarsController *)self _localizedTitleForMergeDuplicatesBarButtonItem];
      v10 = objc_alloc(MEMORY[0x1E69DC708]);
      goto LABEL_85;
    case 44:
      if ([(PUOneUpBarsController *)self _sizeClassesSupportsVisibleToolbar])
      {
        goto LABEL_61;
      }

      v9 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"person.2" title:0];
      goto LABEL_89;
    case 45:
      if (![(PUOneUpBarsController *)self _sizeClassesSupportsVisibleToolbar])
      {
        v9 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"person" title:0];
        goto LABEL_89;
      }

LABEL_61:
      v7 = PXLocalizedSharedLibraryString();
      v40 = MEMORY[0x1E69C36C8];
      v16 = [(PUOneUpBarsController *)self _customButtonTitleColor];
      v13 = [v40 px_toolbarMultilineBarButtonItemWithTitle:v7 titleColor:v16 target:self action:sel_barButtonItemTapped_];
LABEL_62:

      goto LABEL_87;
    case 46:
      if ([(PUOneUpBarsController *)self style]== 4)
      {
        v9 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"ellipsis" title:0];
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
        v9 = [(PUOneUpBarsController *)self _barButtonItemWithSystemImageName:@"exclamationmark.triangle" title:0];
        goto LABEL_89;
      }

      v45 = objc_alloc(MEMORY[0x1E69DC708]);
      v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"exclamationmark.triangle"];
      v8 = [v45 initWithImage:v7 menu:0];
LABEL_86:
      v13 = v8;
LABEL_87:

      break;
    case 48:
      if ([(PUOneUpBarsController *)self style]== 4)
      {
LABEL_24:
        v9 = [(PUOneUpBarsController *)self _barButtonItemWithSystemItem:1];
LABEL_89:
        v13 = v9;
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

  v48 = [v13 customView];

  if (v48)
  {
    v49 = [v13 customView];
    [v49 setAccessibilityIdentifier:v6];
  }

  else
  {
    [v13 setAccessibilityIdentifier:v6];
  }

  return v13;
}

void __66__PUOneUpBarsController__newBarButtonItemWithIdentifier_location___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained actionsController];
  [v1 preheatShareAction];
}

- (id)_barButtonItemWithSystemItem:(int64_t)a3
{
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:a3 target:self action:sel_barButtonItemTapped_];

  return v3;
}

- (id)_barButtonItemWithSystemImageName:(id)a3 title:(id)a4
{
  v6 = MEMORY[0x1E69DC708];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v8];

  v11 = [v9 initWithImage:v10 style:0 target:self action:sel_barButtonItemTapped_];
  [v11 setTitle:v7];

  return v11;
}

- (id)accessibilityIdentifierForBarButtonItemIdentifier:(int64_t)a3
{
  if ((a3 - 1) > 0x2F)
  {
    return @"PUOneUpBarButtonItemIdentifierUndefined";
  }

  else
  {
    return *(&off_1E7B79660 + a3 - 1);
  }
}

- (id)_commentsButtonWithTitle:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [v5 addTarget:self action:sel_barButtonItemTapped_ forControlEvents:64];
  if (v4)
  {
    [(PUOneUpBarsController *)self _updateCommentsButton:v5 withTitle:v4];
  }

  return v5;
}

- (void)_updateCommentsButton:(id)a3 withTitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(PUOneUpBarsController *)self _attributedCommentTitleForTitle:v6 controlState:2];
  v8 = [(PUOneUpBarsController *)self _attributedCommentTitleForTitle:v6 controlState:0];
  v9 = [(PUOneUpBarsController *)self _attributedCommentTitleForTitle:v6 controlState:1];

  [v7 addTarget:self action:sel_barButtonItemTapped_ forControlEvents:64];
  [v7 setAttributedTitle:v8 forState:0];
  [v7 setAttributedTitle:v10 forState:2];
  [v7 setAttributedTitle:v9 forState:1];
  [v7 sizeToFit];
}

- (id)_attributedCommentTitleForTitle:(id)a3 controlState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PUOneUpBarsController *)self _commentTitleAttributes];
  v8 = [MEMORY[0x1E696AAB0] px_attributedStringWithHTMLString:v6 defaultAttributes:v7];

  if (a4 == 2)
  {
    v9 = [(PUOneUpBarsController *)self _disabledCommentTitleColor];
LABEL_4:
    v11 = [v8 mutableCopy];
    [v11 addAttribute:*MEMORY[0x1E69DB650] value:v9 range:{0, objc_msgSend(v11, "length")}];
    goto LABEL_6;
  }

  v10 = [(PUOneUpBarsController *)self _customButtonTitleColor];
  v9 = [v10 colorWithAlphaComponent:0.5];

  if (a4 - 1 <= 1)
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
  v6 = [(PUOneUpBarsController *)self _customButtonTitleColor];
  v10[1] = v6;
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

- (int64_t)_locationForBarButtonItemWithIdentifier:(int64_t)a3
{
  if ([(PUOneUpBarsController *)self style]== 4)
  {

    return [(PUOneUpBarsController *)self _lemonadeLocationForBarButtonItemWithIdentifier:a3];
  }

  else
  {
    v6 = [(PUOneUpBarsController *)self _playPauseBarItemsController];
    v7 = [v6 playPauseState];
    v8 = [(PUOneUpBarsController *)self shouldPlaceButtonsInNavigationBar];
    v9 = [(PUOneUpBarsController *)self allowShowingPlayPauseButton];
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [(PUOneUpBarsController *)self isInCompactLayoutStyle];
    if (v11)
    {
      LOBYTE(v11) = [(PUOneUpBarsController *)self _physicalDeviceIsIPad];
    }

    if (v8)
    {
      v12 = 1;
    }

    else
    {
      v12 = 3;
    }

    v13 = v12;
    if (!v8 && !v11)
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

    v14 = [(PUOneUpBarsController *)self _canShowCommentsForCurrentAsset];
    if (!v10 || (v27 = v7, v15 = v13, v16 = v14, +[PUOneUpSettings sharedInstance](PUOneUpSettings, "sharedInstance"), v17 = v10, v18 = v6, v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 allowPlayButtonInBars], v19, v14 = v16, v13 = v15, v6 = v18, v10 = v17, (v20 & 1) != 0) || a3 == 13 || v27 != 1 || a3 == 10 || a3 == 18 || (a3 - 21) <= 1)
    {
      switch(a3)
      {
        case 1:
          break;
        case 2:
        case 37:
          if (v8 || v14)
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
          if (v8)
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
          v24 = [v23 allowPlayButtonInBars];

          if ((v24 & v10) != 1)
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
          v21 = [(PUOneUpBarsController *)self style];
          v22 = 2;
          if (!v8)
          {
            v22 = 3;
          }

          if (v21 == 1)
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
          if (v8)
          {
LABEL_39:
            v13 = 2;
          }

          else
          {
            v25 = [(PUOneUpBarsController *)self browsingSession];
            v26 = [v25 viewModel];
            if ([v26 isInSelectionMode])
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

- (int64_t)_lemonadeNavigationOnlyLocationForBarButtonItemWithIdentifier:(int64_t)a3
{
  result = 0;
  v8 = *MEMORY[0x1E69E9840];
  if (a3 <= 0x30)
  {
    if (((1 << a3) & 0x1FEFCDA5CC83ELL) != 0)
    {
      return 1;
    }

    else if (((1 << a3) & 0x20A207C0) != 0)
    {
      return 2;
    }

    else if (((1 << a3) & 0x10305003001) != 0)
    {
      v5 = PXAssertGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v6 = 134217984;
        v7 = a3;
        _os_log_fault_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_FAULT, "Unsupported button item: %ld for Lemonade style", &v6, 0xCu);
      }

      return 0;
    }
  }

  return result;
}

- (int64_t)_lemonadeNavigationOrToolbarLocationForBarButtonItemWithIdentifier:(int64_t)a3
{
  v3 = 0;
  v12 = *MEMORY[0x1E69E9840];
  switch(a3)
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
        v11 = a3;
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
      v7 = [(PUOneUpBarsController *)self delegate];
      v8 = [v7 oneUpBarsControllerAssetActionManager:self];

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

- (int64_t)_lemonadeLocationForBarButtonItemWithIdentifier:(int64_t)a3
{
  if ([(PUOneUpBarsController *)self _sizeClassesSupportsVisibleToolbar])
  {

    return [(PUOneUpBarsController *)self _lemonadeNavigationOrToolbarLocationForBarButtonItemWithIdentifier:a3];
  }

  else
  {

    return [(PUOneUpBarsController *)self _lemonadeNavigationOnlyLocationForBarButtonItemWithIdentifier:a3];
  }
}

- (int64_t)_scrubberType
{
  v3 = [(PUOneUpBarsController *)self browsingSession];
  v4 = [v3 viewModel];

  v5 = [v4 contentPrivacyState];
  v6 = 0;
  if ([(PUOneUpBarsController *)self shouldShowScrubber]&& v5 != 1)
  {
    v7 = +[PUOneUpSettings sharedInstance];
    v8 = [v7 allowScrubber];

    if (v8 && !-[PUOneUpBarsController _canShowCommentsForCurrentAsset](self, "_canShowCommentsForCurrentAsset") && (-[PUOneUpBarsController browsingSession](self, "browsingSession"), v9 = objc_claimAutoreleasedReturnValue(), [v9 viewModel], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "assetsDataSource"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsMultipleAssets"), v11, v10, v9, (v12 & 1) != 0))
    {
      v6 = 1;
    }

    else
    {
      v13 = [v4 currentAssetReference];
      v14 = [v4 assetViewModelForAssetReference:v13];
      v15 = [v14 asset];
      v16 = [v15 playbackStyle];

      v17 = [v14 videoPlayer];
      v18 = v17;
      if (v16 == 4 && (([v17 isPlaybackDesired] & 1) != 0 || objc_msgSend(v18, "isActivated")))
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
  v2 = [(PUOneUpBarsController *)self browsingSession];
  v3 = [v2 viewModel];

  v4 = [v3 assetViewModelForCurrentAssetReference];
  if ([v4 isInEditMode])
  {
    v5 = [v4 editStyle] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_currentAssetNeedsSensitivityProtection
{
  v2 = [(PUOneUpBarsController *)self browsingSession];
  v3 = [v2 viewModel];
  v4 = [v3 currentAssetReference];

  v5 = [v4 asset];
  LOBYTE(v3) = [v5 needsSensitivityProtection];

  return v3;
}

- (BOOL)_canShowSensitiveAssetMoreHelpContextMenuForCurrentAsset
{
  v2 = [(PUOneUpBarsController *)self _moreHelpMenu];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_canShowCommentsForCurrentAsset
{
  v3 = [(PUOneUpBarsController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 currentAssetReference];

  v6 = [v5 asset];
  if (self->_delegateFlags.respondsToCanShowCommentsForAsset)
  {
    v7 = [(PUOneUpBarsController *)self delegate];
    v8 = [v7 oneUpBarsController:self canShowCommentsForAsset:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_physicalDeviceIsIPad
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return v3;
}

- (BOOL)_wantsChromeVisible
{
  v3 = [(PUOneUpBarsController *)self browsingSession];
  v4 = [v3 viewModel];
  if ([v4 isChromeVisible])
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
  v2 = [(PUOneUpBarsController *)self _titleViewController];
  v3 = [v2 subtitle];

  return v3;
}

- (NSString)title
{
  v2 = [(PUOneUpBarsController *)self _titleViewController];
  v3 = [v2 title];

  return v3;
}

- (int64_t)preferredBarStyle
{
  v2 = +[PUInterfaceManager currentTheme];
  v3 = [v2 photoBrowserBarStyle];

  return v3;
}

- (BOOL)_sizeClassesSupportsVisibleToolbar
{
  v2 = [(PUBarsController *)self viewController];
  v3 = [v2 traitCollection];
  v4 = [PUOneUpChromeToolbarVisibilityUtilities sizeClassSupportsVisibleToolbarWithTraitCollection:v3];

  return v4;
}

- (BOOL)wantsToolbarVisible
{
  if (![(PUOneUpBarsController *)self _wantsChromeVisible]|| +[PUOneUpChromeUserDefaultsWrapper shouldHideToolbar])
  {
    return 0;
  }

  v4 = [(PUOneUpBarsController *)self browsingSession];
  v5 = [v4 viewModel];

  v6 = [v5 assetViewModelForCurrentAssetReference];
  if ([v6 isAccessoryViewVisible])
  {
    v7 = [v6 assetReference];
    if (v7 && self->_delegateFlags.respondsToShouldHideToolbarWhenShowingAccessoryViewForAssetReference)
    {
      v8 = [(PUOneUpBarsController *)self delegate];
      v9 = [v8 oneUpBarsController:self shouldHideToolbarWhenShowingAccessoryViewForAssetReference:v7] ^ 1;
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

  v10 = [(PUOneUpBarsController *)self style];
  v3 = (v10 != 4) & v9;
  if (v10 == 4 && v9)
  {
    v3 = [(PUOneUpBarsController *)self _sizeClassesSupportsVisibleToolbar];
  }

  return v3;
}

- (id)currentAssetByAssetCollection
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [(PUOneUpBarsController *)self browsingSession];
  v3 = [v2 viewModel];
  v4 = [v3 currentAssetReference];

  v5 = [v4 assetCollection];
  if (v5)
  {
    v6 = [v4 asset];
    if (v6)
    {
      v7 = [v4 assetCollection];
      v13 = v7;
      v8 = [v4 asset];
      v12 = v8;
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
    v4 = [(PUOneUpBarsController *)self browsingSession];
    v5 = [v4 viewModel];

    v6 = [v5 assetViewModelForCurrentAssetReference];
    if ([v6 isAccessoryViewVisible])
    {
      v7 = [v6 assetReference];
      if (v7 && self->_delegateFlags.respondsToShouldHideNavigationBarWhenShowingAccessoryViewForAssetReference)
      {
        v8 = [(PUOneUpBarsController *)self delegate];
        v3 = [v8 oneUpBarsController:self shouldHideNavigationBarWhenShowingAccessoryViewForAssetReference:v7] ^ 1;
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
  v3 = [(PUOneUpBarsController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 currentAssetReference];

  if ([(PUOneUpBarsController *)self _wantsChromeVisible])
  {
    v6 = +[PUOneUpSettings sharedInstance];
    v7 = [v6 allowStatusBar] ^ 1;

    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v7) = 1;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (self->_delegateFlags.respondsToShouldHideStatusBarWhenShowingAccessoryViewForAssetReference)
  {
    v8 = [(PUOneUpBarsController *)self delegate];
    v9 = [v8 oneUpBarsController:self shouldHideStatusBarWhenShowingAccessoryViewForAssetReference:v5];

    if (!(v7 & 1 | ((v9 & 1) == 0)))
    {
      v10 = [(PUOneUpBarsController *)self browsingSession];
      v11 = [v10 viewModel];

      v12 = [v11 assetViewModelForCurrentAssetReference];
      LOBYTE(v7) = [v12 isAccessoryViewVisible];
    }
  }

LABEL_8:

  return v7;
}

- (BOOL)shouldTapBeginAtLocationFromProvider:(id)a3
{
  if (!self->_delegateFlags.respondsToShouldTapBeginAtLocationFromProvider)
  {
    return 1;
  }

  v3 = self;
  v4 = a3;
  v5 = [(PUOneUpBarsController *)v3 delegate];
  LOBYTE(v3) = [v5 oneUpBarsController:v3 shouldTapBeginAtLocationFromProvider:v4];

  return v3;
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
  v12 = [(PUBarsController *)self viewController];
  if ([v12 isViewLoaded])
  {
    v13 = [v12 view];
    v14 = MEMORY[0x1E69DDCE0];
    v15 = *MEMORY[0x1E69DDCE0];
    v16 = [v12 navigationController];
    v17 = [v16 navigationBar];
    v18 = [v17 window];

    if (v18)
    {
      if ([v17 barStyle] == 4)
      {
        [v17 frame];
      }

      else
      {
        [v17 bounds];
        [v13 convertRect:v17 fromView:?];
      }

      MaxY = CGRectGetMaxY(*&v19);
      [v13 bounds];
      v37 = MaxY - CGRectGetMinY(v134);
      v23 = PLOneUpGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = v37;
        _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_DEBUG, "\t topBarHeight: %f", buf, 0xCu);
      }
    }

    else
    {
      v23 = [MEMORY[0x1E69DC668] sharedApplication];
      v24 = [v23 statusBarOrientation];
      v25 = PLOneUpGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = [MEMORY[0x1E696AD98] numberWithInteger:v24];
        *buf = 138412290;
        *&buf[4] = v26;
        _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_DEBUG, "\t interfaceOrientation: %@", buf, 0xCu);

        v14 = MEMORY[0x1E69DDCE0];
      }

      v27 = 0.0;
      if (([v16 prefersStatusBarHidden] & 1) == 0)
      {
        v28 = [v13 window];
        v29 = [v28 windowScene];
        v30 = [v29 statusBarManager];
        [v30 statusBarFrame];
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

      [MEMORY[0x1E69DCCC0] defaultSizeForOrientation:v24];
      v35 = v34;
      v36 = PLOneUpGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = v35;
        _os_log_impl(&dword_1B36F3000, v36, OS_LOG_TYPE_DEBUG, "\t statusBarHeight: %f", buf, 0xCu);
      }

      v37 = v27 + v35;
      [v13 safeAreaInsets];
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

    v41 = [v16 toolbar];
    if ([(PUOneUpBarsController *)self wantsToolbarVisible])
    {
      v42 = [v41 window];
      v43 = [v13 window];

      if (v42 == v43)
      {
        [v41 bounds];
        [v13 convertRect:v41 fromView:?];
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v54 = v5;
        v56 = v55;
        [v13 bounds];
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
        if (v41)
        {
          [v41 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
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
      [v13 safeAreaInsets];
      v9 = v47;
    }

    v109 = v14[1];
    v110 = v14[3];
    if ([(PUOneUpBarsController *)self disableShowingNavigationBars])
    {
      v59 = [(PUOneUpBarsController *)self browsingSession];
      v60 = [v59 viewModel];
      v61 = [v60 reviewScreenBarsModel];

      if (v61)
      {
        v105 = v40;
        v108 = v15;
        [v13 bounds];
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v69 = v68;
        UIRectGetCenter();
        v104 = v70;
        v72 = v71;
        v73 = [v13 window];
        v74 = [v73 _windowInterfaceOrientation];

        if (!v74)
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
        [PUReviewScreenUtilities reviewScreenTopBarGeometryForReferenceBounds:v74 withOrientation:v63, v65, v67, v69];
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        [PUReviewScreenUtilities reviewScreenControlBarGeometryForReferenceBounds:v74 withOrientation:v63, v65, v67, v69];
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v106 = v69;
        v107 = v67;
        [PUReviewScreenUtilities reviewScreenScrubberBarGeometryForReferenceBounds:v74 withOrientation:v63 safeAreaInsets:v65, v67, v69, v5, v109, v9, v110];
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

- (void)updateGestureRecognizersWithHostingView:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PUOneUpBarsController;
  [(PUBarsController *)&v12 updateGestureRecognizersWithHostingView:v4];
  if ([(PUOneUpBarsController *)self style]!= 4)
  {
    v5 = [(PUOneUpBarsController *)self _tapGestureRecognizer];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {
        v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapGestureRecognizer_];
        [(PUOneUpBarsController *)self _setTapGestureRecognizer:v6];
        v7 = [(PUOneUpBarsController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v8 = [v7 barsController:self delegateForGestureRecognizer:v6];
        }

        else
        {
          v8 = 0;
        }

        [v6 setDelegate:v8];
      }

      v10 = [v6 view];

      if (v10 != v4)
      {
        v11 = [v6 view];
        [v11 removeGestureRecognizer:v6];

        [v4 addGestureRecognizer:v6];
      }
    }

    else if (v5)
    {
      v9 = [v5 view];
      [v9 removeGestureRecognizer:v6];

      [(PUOneUpBarsController *)self _setTapGestureRecognizer:0];
    }
  }
}

- (void)_updateAddToLibraryBarButtonItem
{
  v3 = [MEMORY[0x1E69C33D8] sharedInstance];
  v4 = [v3 disableOneUpDescriptiveAdd];

  if (v4)
  {
    return;
  }

  v5 = [(PUOneUpBarsController *)self browsingSession];
  v13 = [v5 viewModel];

  v6 = [v13 currentAssetReference];
  v7 = [v13 assetViewModelForAssetReference:v6];

  if (v7)
  {
    v8 = [v7 importState];
    v9 = 0;
    v10 = 1;
    if (v8 > 2)
    {
      if ((v8 - 3) >= 2)
      {
        goto LABEL_12;
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v10 = 0;
        v11 = @"ONE_UP_SAVING_TO_LIBRARY";
        goto LABEL_11;
      }

      if (v8 == 2)
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
  v3 = [(PUOneUpBarsController *)self browsingSession];
  v16 = [v3 viewModel];

  v4 = [(PUOneUpBarsController *)self browsingSession];
  v5 = [v4 viewModel];
  v6 = [v5 currentAssetReference];

  v7 = [v16 assetViewModelForAssetReference:v6];
  if (v7)
  {
    v8 = [(PUOneUpBarsController *)self _activeBarButtonItemForIdentifier:36];
    v9 = [v7 asset];
    v10 = [v9 mediaType];
    v11 = @"ITEM";
    if (v10 == 1)
    {
      v11 = @"PHOTO";
    }

    if (v10 == 2)
    {
      v11 = @"VIDEO";
    }

    v12 = v11;

    v13 = [v7 fetchAssetSyndicationState];
    if ((v13 - 2) > 2)
    {
      v15 = &stru_1F2AC6818;
    }

    else
    {
      v14 = [(__CFString *)*(&off_1E7B79648 + v13 - 2) stringByAppendingString:v12];
      v15 = PULocalizedString(v14);
    }

    [v8 setTitle:v15];
    [v8 setEnabled:v13 == 2];
  }
}

- (void)_updateFavoriteBarButtonItem
{
  v3 = [(PUOneUpBarsController *)self browsingSession];
  v15 = [v3 viewModel];

  v4 = [v15 currentAssetReference];
  v5 = [v15 assetViewModelForAssetReference:v4];
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
    v10 = [v8 image];
    v11 = [v9 image];

    if (v10 != v11)
    {
      v12 = [v8 image];
      [v9 setImage:v12];

      v13 = [v8 landscapeImagePhone];
      [v9 setLandscapeImagePhone:v13];

      v14 = [v8 title];
      [v9 setTitle:v14];
    }
  }
}

- (void)_updateSensitiveAssetMoreHelpBarButtonItem
{
  v4 = [(PUOneUpBarsController *)self _barButtonItemForIdentifier:47 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:47]];
  v3 = [(PUOneUpBarsController *)self _moreHelpMenu];
  [v4 setMenu:v3];
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
    v3 = [(PUOneUpBarsController *)self _actionsMenu];
    [v4 setMenu:v3];
  }
}

- (id)_moreHelpMenu
{
  v3 = [(PUOneUpBarsController *)self browsingSession];
  v4 = [v3 viewModel];

  v5 = [v4 currentAssetReference];
  v6 = [v5 asset];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 assetCollection];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;

    if (!v7 || !v9 || ![v9 px_isSharedAlbum])
    {
      goto LABEL_13;
    }

    v10 = objc_alloc(MEMORY[0x1E69C39B0]);
    v8 = [(PUBarsController *)self viewController];
    v11 = [v10 initWithAsset:v7 sharedAlbum:v9 presentingViewController:v8];
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
    v14 = [(PXSensitivityAssetMoreHelpMenuManager *)v13 createMenuIfNeeded];
  }

  else
  {
    v14 = 0;
  }

  return v14;
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
    v5 = [(PUOneUpBarsController *)self delegate];
    v6 = [v5 oneUpBarsControllerAssetActionManager:self];

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
  v3 = [(PUOneUpBarsController *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 currentAssetReference];
  v6 = [v5 asset];
  v7 = [v5 assetCollection];
  v8 = [v3 actionManager];
  v9 = [v8 canPerformActionType:66 onAsset:v6 inAssetCollection:v7];

  if (v9)
  {
    objc_initWeak(&location, self);
    v10 = [(PUOneUpBarsController *)self actionsController];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__PUOneUpBarsController__assetActionMenuElements__block_invoke;
    v13[3] = &unk_1E7B79608;
    v13[4] = &v16;
    objc_copyWeak(&v14, &location);
    [v10 performSimpleActionWithActionType:66 completionHandler:v13];

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
  v3 = [(PUOneUpBarsController *)self browsingSession];
  v4 = [v3 viewModel];

  v5 = [v4 currentAssetReference];
  v6 = [v4 assetViewModelForAssetReference:v5];
  v7 = [v5 asset];
  v8 = [v5 assetCollection];
  v172 = [v4 contentPrivacyState];
  v9 = [MEMORY[0x1E69C3740] shouldHideChrome];
  [(PUOneUpBarsController *)self _updateTitleIfNeeded];
  [(PUOneUpBarsController *)self _updateTitleViewProviderIfNeeded];
  v167 = [(PUOneUpBarsController *)self _title];
  v10 = [(PUOneUpBarsController *)self _titleViewController];
  v166 = [v10 view];

  v11 = [(PUOneUpBarsController *)self browsingSession];
  v12 = [v11 actionManager];

  v176 = [(PUOneUpBarsController *)self currentAssetByAssetCollection];
  v175 = [(PUBarsController *)self viewController];
  [(PUOneUpBarsController *)self _updateCommentsButtonIfNeeded];
  LODWORD(v11) = [(PUOneUpBarsController *)self shouldShowProgrammaticNavBackButton];
  v13 = [(PUOneUpBarsController *)self shouldShowTitleView];
  v174 = 0;
  v165 = v5;
  v164 = v11;
  if (v5 && v13 && v172 != 1 && (v9 & 1) == 0)
  {
    v174 = [(PUOneUpBarsController *)self _shouldShowCenterNavigationBarItems];
  }

  v14 = [(PUOneUpBarsController *)self titleSubtitleViewProvider];
  v15 = [v14 titleSubtitleView];
  [v15 setVisibility:v174];

  LODWORD(v16) = [v6 isInEditMode] | (v172 == 1) | v9;
  v160 = [(PUOneUpBarsController *)self _canShowCommentsForCurrentAsset];
  v156 = [(PUOneUpBarsController *)self allowShowingPlayPauseButton];
  v163 = [(PUOneUpBarsController *)self _shouldShowDoneEditingButton];
  v177 = [v4 isInSelectionMode];
  v17 = [(PUOneUpBarsController *)self wantsAllPhotosButton];
  v155 = [(PUOneUpBarsController *)self _canShowSensitiveAssetMoreHelpContextMenuForCurrentAsset];
  [(PUOneUpBarsController *)self _resetIdentifierIndexes];
  v157 = v17;
  if (v16)
  {
    if ((v172 == 1) | v9 & 1)
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

    v20 = self;
    v21 = 17;
    v22 = v18;
    v23 = 1;
  }

  else
  {
    if (!v17)
    {
      goto LABEL_16;
    }

    v24 = [v12 shouldEnableActionType:43 onAllAssetsByAssetCollection:v176];
    v22 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:11];
    v20 = self;
    v21 = 11;
    v23 = v24;
  }

  [(PUOneUpBarsController *)v20 _updateIdentifiersIndexesWithIdentifier:v21 location:v22 shouldEnable:v23];
LABEL_16:
  v162 = v9 ^ 1;
  v25 = [v12 canPerformAction:13 onAllAssetsByAssetCollection:v176];
  v171 = [v12 canPerformAction:11 onAllAssetsByAssetCollection:v176];
  v169 = v6;
  if ([v12 canPerformActionType:35 onAsset:v7 inAssetCollection:v8])
  {
    if ((v25 & 1) == 0)
    {
LABEL_18:
      v26 = (v171 | v177) ^ 1;
      goto LABEL_21;
    }
  }

  else if (!(v25 & 1 | ![(PUOneUpBarsController *)self _currentAssetNeedsSensitivityProtection]))
  {
    goto LABEL_18;
  }

  v26 = 0;
LABEL_21:
  if (v7)
  {
    v27 = v8 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v27;
  v170 = v4;
  v158 = v9;
  if ((v28 | v16))
  {
    goto LABEL_148;
  }

  v161 = v25;
  v159 = v16;
  v29 = [v12 canPerformActionType:4 onAsset:v7 inAssetCollection:v8];
  if (v29)
  {
    v30 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:44];
    if (v30)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 44, v30, [v12 shouldEnableActionType:4 onAllAssetsByAssetCollection:v176]);
    }
  }

  v31 = [v12 canPerformActionType:6 onAsset:v7 inAssetCollection:v8];
  if (v31)
  {
    v32 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:45];
    if (v32)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 45, v32, [v12 shouldEnableActionType:6 onAllAssetsByAssetCollection:v176]);
    }
  }

  v33 = [v4 assetSharedViewModelForAsset:v7];
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
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 6, v36, [v12 shouldEnableActionType:35 onAsset:v7 inAssetCollection:v8]);
    }
  }

  if ([v12 canPerformActionType:59 onAsset:v7 inAssetCollection:v8])
  {
    if ([MEMORY[0x1E69C3348] isAppInstalled:1])
    {
      v37 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:38];
      if (v37)
      {
        -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 38, v37, [v12 shouldEnableActionType:59 onAsset:v7 inAssetCollection:v8]);
      }
    }
  }

  v154 = v33;
  if (!(v161 & 1 | (([v12 canPerformActionType:37 onAsset:v7 inAssetCollection:v8] & 1) == 0) | v171 & 1))
  {
    v38 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:16];
    if (v38)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 16, v38, [v12 shouldEnableActionType:37 onAsset:v7 inAssetCollection:v8]);
    }
  }

  v39 = [v12 canPerformActionType:66 onAsset:v7 inAssetCollection:v8];
  v40 = [(PUOneUpBarsController *)self delegate];
  v41 = [v40 oneUpBarsControllerWantsActionsMenu:self];

  if ((v41 & v26) == 1 && v39)
  {
    -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 46, -[PUOneUpBarsController _locationForBarButtonItemWithIdentifier:](self, "_locationForBarButtonItemWithIdentifier:", 46), [v12 shouldEnableActionType:66 onAsset:v7 inAssetCollection:v8]);
    [(PUOneUpBarsController *)self _updateActionsBarButtonItem];
  }

  if (v155)
  {
    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:47 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:47] shouldEnable:1];
    [(PUOneUpBarsController *)self _updateSensitiveAssetMoreHelpBarButtonItem];
  }

  if (!(v31 & 1 | (v29 | v171) & 1 | v161 & 1 | (([v12 canPerformActionType:15 onAsset:v7 inAssetCollection:v8] & 1) == 0)))
  {
    v42 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:1];
    if (v42)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 1, v42, [v12 shouldEnableActionType:15 onAsset:v7 inAssetCollection:v8]);
    }
  }

  v43 = v29 | v31;
  v44 = [v12 canPerformActionType:56 onAsset:v7 inAssetCollection:v8];
  if (v44)
  {
    v45 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:36];
    if (v45)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 36, v45, [v12 shouldEnableActionType:56 onAllAssetsByAssetCollection:v176]);
    }
  }

  LOBYTE(v16) = v159;
  if (((v43 | v160 | v177) & 1) == 0)
  {
    if (self->_delegateFlags.respondsToIsDetailsAccessoryAvailableForAssetReference)
    {
      v52 = [(PUOneUpBarsController *)self delegate];
      v53 = [v52 oneUpBarsController:self isDetailsAccessoryAvailableForAssetReference:v165];
    }

    else
    {
      v53 = 0;
    }

    v16 = +[PUOneUpSettings sharedInstance];
    v81 = [v16 allowsDetailsToggleButtonInBars];

    LOBYTE(v16) = v159;
    if (v81)
    {
      if (v53 && (!v44 || [(PUOneUpBarsController *)self shouldPlaceButtonsInNavigationBar]))
      {
        v82 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:35];
        if (v82)
        {
          [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:35 location:v82 shouldEnable:1];
          v83 = [(PUOneUpBarsController *)self detailsBarButtonController];
          [v83 update];
        }
      }
    }
  }

  if ([v12 canPerformActionType:65 onAsset:v7 inAssetCollection:v8])
  {
    v46 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:43];
    v4 = v170;
    if (v46)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 43, v46, [v12 shouldEnableActionType:65 onAsset:v7 inAssetCollection:v8]);
      v47 = [(PUOneUpBarsController *)self _activeBarButtonItemForIdentifier:43];
      v16 = [(PUOneUpBarsController *)self _localizedTitleForMergeDuplicatesBarButtonItem];
      [v47 setTitle:v16];

      LOBYTE(v16) = v159;
    }

    if ((v177 & 1) == 0)
    {
      v48 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:41];
      if (v48)
      {
        v49 = v48;
        v50 = self;
        v51 = 41;
LABEL_70:
        [(PUOneUpBarsController *)v50 _updateIdentifiersIndexesWithIdentifier:v51 location:v49 shouldEnable:1];
        goto LABEL_71;
      }

      goto LABEL_71;
    }
  }

  else
  {
    v4 = v170;
    if (!v177)
    {
      goto LABEL_71;
    }
  }

  v54 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:42];
  if (v54)
  {
    v49 = v54;
    v50 = self;
    v51 = 42;
    goto LABEL_70;
  }

LABEL_71:
  if (!((v44 | v177) & 1 | v43 & 1 | (([v12 canPerformActionType:44 onAsset:v7 inAssetCollection:v8] & 1) == 0)))
  {
    v55 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:7];
    if (v55)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 7, v55, [v12 shouldEnableActionType:44 onAsset:v7 inAssetCollection:v8]);
    }
  }

  v56 = v157;
  if (-[PUOneUpBarsController shouldShowAirPlayButton](self, "shouldShowAirPlayButton") && [v12 canPerformActionType:38 onAsset:v7 inAssetCollection:v8])
  {
    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:18 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:18] shouldEnable:1];
  }

  if (v160)
  {
    v57 = [v4 currentAssetReference];
    v58 = [v4 assetViewModelForAssetReference:v57];

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

    v62 = [(PUOneUpBarsController *)self _currentAssetNeedsSensitivityProtection];
    v63 = +[PUOneUpSettings sharedInstance];
    v64 = [v63 simulateDisabledCommentButtonState];

    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:v59 location:v60 shouldEnable:((v64 | v62) & 1) == 0];
    v65 = [(PUOneUpBarsController *)self _currentAssetDisplayInfoUpdater];
    v66 = [v65 info];

    v67 = [v66 objectForKeyedSubscript:@"PUCommentsInfoDictionaryKey"];
    v68 = [v67 objectForKeyedSubscript:@"PUCommentsInfoHasLikedKey"];
    v69 = [v68 BOOLValue];

    if (v69)
    {
      v16 = 20;
    }

    else
    {
      v16 = 19;
    }

    v70 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:v16];
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

    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:v16 location:v71 shouldEnable:[(PUOneUpBarsController *)self _currentAssetNeedsSensitivityProtection]^ 1];

    v4 = v170;
    LOBYTE(v16) = v159;
    v56 = v157;
  }

  LOBYTE(v9) = v158;
  if ((v177 & 1) == 0)
  {
    v72 = [v7 conformsToProtocol:&unk_1F2CFE578];
    v73 = [(PUOneUpBarsController *)self delegate];
    v74 = [v73 oneUpBarsControllerAssetActionManager:self];

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
        v78 = self;
        v79 = 3;
        v80 = v75;
      }

      else
      {
        v80 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:2];
        v77 = v72 ^ 1u;
        v78 = self;
        v79 = 2;
      }

      [(PUOneUpBarsController *)v78 _updateIdentifiersIndexesWithIdentifier:v79 location:v80 shouldEnable:v77];
    }

    LOBYTE(v16) = v159;
  }

  if (v156)
  {
    v84 = [(PUOneUpBarsController *)self _playPauseBarItemsController];
    v85 = [v84 playPauseState];

    if (v85 == 2)
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
    v87 = [MEMORY[0x1E69C3C48] sharedController];
    if ([v87 isMuted])
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

    -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 4, v90, [v12 shouldEnableActionType:11 onAllAssetsByAssetCollection:v176]);
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

    -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 5, v92, [v12 shouldEnableActionType:13 onAllAssetsByAssetCollection:v176]);
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
  if ([v12 canPerformActionType:60 onAsset:v7 inAssetCollection:v8])
  {
    v95 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:39];
    if (v95)
    {
      [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:39 location:v95 shouldEnable:1];
    }
  }

  if ([v12 canPerformActionType:61 onAsset:v7 inAssetCollection:v8])
  {
    v96 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:40];
    if (v96)
    {
      [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:40 location:v96 shouldEnable:1];
    }
  }

  if ([v12 canPerformActionType:62 onAsset:v7 inAssetCollection:v8])
  {
    v97 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:31];
    if (v97)
    {
      -[PUOneUpBarsController _updateIdentifiersIndexesWithIdentifier:location:shouldEnable:](self, "_updateIdentifiersIndexesWithIdentifier:location:shouldEnable:", 31, v97, [v12 shouldEnableActionType:62 onAllAssetsByAssetCollection:v176]);
      [(PUOneUpBarsController *)self _updateAddToLibraryBarButtonItem];
    }
  }

LABEL_148:
  if (!((v7 == 0 || (v16 & 1) == 0) | v162 & 1))
  {
    v98 = [(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:48];
    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:48 location:v98 shouldEnable:1];
    v99 = [(PUOneUpBarsController *)self _barButtonItemForIdentifier:48 location:v98];
  }

  if (v164 && !(v16 & (v172 != 1) | v9 & 1))
  {
    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:10 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:10] shouldEnable:1];
  }

  if (v163)
  {
    [(PUOneUpBarsController *)self _updateIdentifiersIndexesWithIdentifier:34 location:[(PUOneUpBarsController *)self _locationForBarButtonItemWithIdentifier:34] shouldEnable:1];
  }

  v100 = [v4 reviewScreenBarsModel];
  v168 = v8;
  if (v100)
  {
    v101 = [MEMORY[0x1E695DF90] dictionary];
  }

  else
  {
    v101 = 0;
  }

  v102 = v100;
  if ((v16 & 1) == 0)
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
    v190 = v12;
    v191 = v7;
    v192 = v168;
    v193 = self;
    v194 = v101;
    [v103 enumerateKeysAndObjectsUsingBlock:v189];
  }

  v173 = v101;
  [(PUOneUpBarsController *)self _updateFavoriteBarButtonItem];
  [(PUOneUpBarsController *)self _updateSyndicationSaveBarButtonItem];
  if ([(PUOneUpBarsController *)self style]== 4)
  {
    v104 = [(PUOneUpBarsController *)self _leftToolbarButtonItemCollection];
    v105 = [(PUOneUpBarsController *)self _leftToolbarButtonIdentifiers];
    v106 = [v104 orderedBarButtonsItemsForIdentifiers:v105];

    v107 = [(PUOneUpBarsController *)self _centerToolbarButtonItemCollection];
    v108 = [(PUOneUpBarsController *)self _centerToolbarButtonIdentifiers];
    v109 = [v107 orderedBarButtonsItemsForIdentifiers:v108];

    v110 = [(PUOneUpBarsController *)self _rightToolbarButtonItemCollection];
    v111 = [(PUOneUpBarsController *)self _rightToolbarButtonIdentifiers];
    v112 = [v110 orderedBarButtonsItemsForIdentifiers:v111];

    v113 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v106, "count") + objc_msgSend(v109, "count") + objc_msgSend(v112, "count") + 2}];
    if ([(PUOneUpBarsController *)self _shouldShowLeftToolbarItems])
    {
      [v113 addObjectsFromArray:v106];
    }

    v114 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    [v113 addObject:v114];

    if ([(PUOneUpBarsController *)self _shouldShowCenterToolbarItems])
    {
      [v113 addObjectsFromArray:v109];
    }

    v115 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
    [v113 addObject:v115];

    if ([(PUOneUpBarsController *)self _shouldShowRightToolbarItems])
    {
      [v113 addObjectsFromArray:v112];
    }

    v116 = v113;
  }

  else
  {
    v106 = [(PUOneUpBarsController *)self _toolbarButtonItemCollection];
    v109 = [(PUOneUpBarsController *)self _toolbarButtonIdentifiers];
    v116 = [v106 orderedBarButtonsItemsForIdentifiers:v109];
  }

  v117 = [(PUOneUpBarsController *)self _rightNavBarButtonItemCollection];
  v118 = [(PUOneUpBarsController *)self _rightNavBarButtonIdentifiers];
  v119 = [v117 orderedBarButtonsItemsForIdentifiers:v118];

  v120 = [(PUOneUpBarsController *)self _leftNavBarButtonItemCollection];
  v121 = [(PUOneUpBarsController *)self _leftNavBarButtonIdentifiers];
  v122 = [v120 orderedBarButtonsItemsForIdentifiers:v121];

  v123 = [v175 navigationItem];
  v124 = [(PUOneUpBarsController *)self titleSubtitleViewProvider];

  if (v124)
  {
    if (v174)
    {
      v125 = [(PUOneUpBarsController *)self titleSubtitleViewProvider];
      v126 = [v125 titleSubtitleView];
      [v123 setTitleView:v126];

      goto LABEL_180;
    }
  }

  else
  {
    if (v174)
    {
      [v175 setTitle:v167];
      if (v167)
      {
        v127 = 0;
      }

      else
      {
        v127 = v166;
      }

      v128 = v123;
      goto LABEL_179;
    }

    [v175 setTitle:0];
  }

  v128 = v123;
  v127 = 0;
LABEL_179:
  [v128 setTitleView:v127];
LABEL_180:
  v129 = [v123 leftBarButtonItems];
  v130 = v122;
  v131 = v130;
  if (v129 == v130)
  {
  }

  else
  {
    v132 = [v129 isEqual:v130];

    if ((v132 & 1) == 0)
    {
      [v123 setLeftItemsSupplementBackButton:{objc_msgSend(v131, "count") != 0}];
      if ([(PUOneUpBarsController *)self _shouldShowLeftNavigationBarItems])
      {
        [v123 setLeftBarButtonItems:v131 animated:{-[PUOneUpBarsController wantsAnimatedBarsUpdate](self, "wantsAnimatedBarsUpdate")}];
      }
    }
  }

  v133 = [v123 rightBarButtonItems];
  v134 = v119;
  v135 = v134;
  if (v133 == v134)
  {
  }

  else
  {
    v136 = [v133 isEqual:v134];

    if ((v136 & 1) == 0)
    {
      if ([(PUOneUpBarsController *)self _shouldShowRightNavigationBarItems])
      {
        [v123 setRightBarButtonItems:v135 animated:{-[PUOneUpBarsController wantsAnimatedBarsUpdate](self, "wantsAnimatedBarsUpdate")}];
      }

      [(PUOneUpBarsController *)self _invalidateTitleViewContentMode];
    }
  }

  [(PUOneUpBarsController *)self setWantsAnimatedBarsUpdate:0];
  [(PUOneUpBarsController *)self _updateTitleViewContentModeIfNeeded];
  v137 = [(PUOneUpBarsController *)self title];
  [v123 setBackButtonTitle:v137];

  v138 = 1;
  [v123 px_setBackButtonDisplayMode:1];
  if ((v177 & 1) == 0)
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

  [v123 setHidesBackButton:v138];
  [(PUOneUpBarsController *)self _updateScrubberViewIfNeeded];
  v139 = [(PUOneUpBarsController *)self _scrubberView];
  if ([v139 isHidden])
  {
    v140 = 0;
  }

  else
  {
    v140 = v139;
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
      v181 = self;
      [v102 performChanges:v178];
    }
  }

  else
  {
    if (MEMORY[0x1B8C6D660]())
    {
      [v175 setToolbarItems:v116];
    }

    else
    {
      [v142 topOutset];
      v145 = v144;
      [(PUOneUpBarsController *)self maximumToolbarHeight];
      v147 = v146;
      [(PUOneUpBarsController *)self maximumAccessoryToolbarHeight];
      v149 = v148;
      v150 = [v175 pu_toolbarViewModel];
      v182[0] = MEMORY[0x1E69E9820];
      v182[1] = 3221225472;
      v182[2] = __35__PUOneUpBarsController_updateBars__block_invoke_2;
      v182[3] = &unk_1E7B795B8;
      v151 = v150;
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

- (void)_updateIdentifiersIndexesWithIdentifier:(int64_t)a3 location:(int64_t)a4 shouldEnable:(BOOL)a5
{
  v5 = a5;
  v8 = 0;
  if (a4 <= 2)
  {
    switch(a4)
    {
      case 0:
        return;
      case 1:
        v15 = [(PUOneUpBarsController *)self _rightNavBarButtonIdentifiers];
        [v15 addIndex:a3];

        v10 = [(PUOneUpBarsController *)self _rightNavBarButtonItemCollection];
        goto LABEL_17;
      case 2:
        v11 = [(PUOneUpBarsController *)self _leftNavBarButtonIdentifiers];
        [v11 addIndex:a3];

        v10 = [(PUOneUpBarsController *)self _leftNavBarButtonItemCollection];
LABEL_17:
        v16 = v10;
        v17 = [v10 barButtonItemForIdentifier:a3];

        v8 = v17;
        break;
    }
  }

  else
  {
    if (a4 <= 4)
    {
      if (a4 == 3)
      {
        v13 = [(PUOneUpBarsController *)self _toolbarButtonIdentifiers];
        [v13 addIndex:a3];

        [(PUOneUpBarsController *)self _toolbarButtonItemCollection];
      }

      else
      {
        v9 = [(PUOneUpBarsController *)self _rightToolbarButtonIdentifiers];
        [v9 addIndex:a3];

        [(PUOneUpBarsController *)self _rightToolbarButtonItemCollection];
      }
      v10 = ;
      goto LABEL_17;
    }

    if (a4 == 5)
    {
      v14 = [(PUOneUpBarsController *)self _centerToolbarButtonIdentifiers];
      [v14 addIndex:a3];

      v10 = [(PUOneUpBarsController *)self _centerToolbarButtonItemCollection];
      goto LABEL_17;
    }

    if (a4 == 6)
    {
      v12 = [(PUOneUpBarsController *)self _leftToolbarButtonIdentifiers];
      [v12 addIndex:a3];

      v10 = [(PUOneUpBarsController *)self _leftToolbarButtonItemCollection];
      goto LABEL_17;
    }
  }

  v18 = v8;
  [v8 setEnabled:v5];
}

- (void)_resetIdentifierIndexes
{
  v8 = [(PUOneUpBarsController *)self _toolbarButtonIdentifiers];
  v3 = [(PUOneUpBarsController *)self _leftToolbarButtonIdentifiers];
  v4 = [(PUOneUpBarsController *)self _centerToolbarButtonIdentifiers];
  v5 = [(PUOneUpBarsController *)self _rightToolbarButtonIdentifiers];
  v6 = [(PUOneUpBarsController *)self _rightNavBarButtonIdentifiers];
  v7 = [(PUOneUpBarsController *)self _leftNavBarButtonIdentifiers];
  [v8 removeAllIndexes];
  [v3 removeAllIndexes];
  [v4 removeAllIndexes];
  [v5 removeAllIndexes];
  [v6 removeAllIndexes];
  [v7 removeAllIndexes];
}

- (void)invalidateViewControllerView
{
  v3.receiver = self;
  v3.super_class = PUOneUpBarsController;
  [(PUBarsController *)&v3 invalidateViewControllerView];
  [(PUBarsController *)self invalidateContentGuideInsets];
}

- (void)setPresentedTipID:(id)a3
{
  objc_storeStrong(&self->_presentedTipID, a3);

  [(PUOneUpBarsController *)self _updateActionsBarButtonItem];
}

- (void)setDebuggingObservedImageModulationManager:(id)a3
{
  v5 = a3;
  debuggingObservedImageModulationManager = self->_debuggingObservedImageModulationManager;
  if (debuggingObservedImageModulationManager != v5)
  {
    v7 = v5;
    [(PXImageModulationManager *)debuggingObservedImageModulationManager unregisterChangeObserver:self context:PUDebuggingObservedImageModulationManagerObservationContext];
    objc_storeStrong(&self->_debuggingObservedImageModulationManager, a3);
    debuggingObservedImageModulationManager = [(PXImageModulationManager *)self->_debuggingObservedImageModulationManager registerChangeObserver:self context:PUDebuggingObservedImageModulationManagerObservationContext];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](debuggingObservedImageModulationManager, v5);
}

- (void)setShouldShowMuteButton:(BOOL)a3
{
  if (self->_shouldShowMuteButton != a3)
  {
    self->_shouldShowMuteButton = a3;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setAllowShowingPlayPauseButton:(BOOL)a3
{
  if (self->_allowShowingPlayPauseButton != a3)
  {
    self->_allowShowingPlayPauseButton = a3;
    [(PUBarsController *)self invalidateBars];

    [(PUOneUpBarsController *)self _updateShowingPlayPauseButton];
  }
}

- (void)setAllowTapOnTitle:(BOOL)a3
{
  if (self->_allowTapOnTitle != a3)
  {
    self->_allowTapOnTitle = a3;
    [(PUOneUpBarsController *)self _invalidateTitle];
  }
}

- (void)setShouldPlaceScrubberInScrubberBar:(BOOL)a3
{
  if (self->_shouldPlaceScrubberInScrubberBar != a3)
  {
    self->_shouldPlaceScrubberInScrubberBar = a3;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setDisableShowingNavigationBars:(BOOL)a3
{
  if (self->_disableShowingNavigationBars != a3)
  {
    self->_disableShowingNavigationBars = a3;
    [(PUOneUpBarsController *)self _invalidateChromeVisibilityWithAnimationType:0];
  }
}

- (void)setShouldShowScrubber:(BOOL)a3
{
  if (self->_shouldShowScrubber != a3)
  {
    self->_shouldShowScrubber = a3;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setWantsShowInLibraryButton:(BOOL)a3
{
  if (self->_wantsShowInLibraryButton != a3)
  {
    self->_wantsShowInLibraryButton = a3;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setShouldShowAirPlayButton:(BOOL)a3
{
  if (self->_shouldShowAirPlayButton != a3)
  {
    self->_shouldShowAirPlayButton = a3;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setShouldShowProgrammaticNavBackButton:(BOOL)a3
{
  if (self->_shouldShowProgrammaticNavBackButton != a3)
  {
    self->_shouldShowProgrammaticNavBackButton = a3;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setMaximumAccessoryToolbarHeight:(double)a3
{
  if (self->_maximumAccessoryToolbarHeight != a3)
  {
    self->_maximumAccessoryToolbarHeight = a3;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setMaximumToolbarHeight:(double)a3
{
  if (self->_maximumToolbarHeight != a3)
  {
    self->_maximumToolbarHeight = a3;
    [(PUBarsController *)self invalidateBars];
  }
}

- (void)setShouldUseCompactCommentsTitle:(BOOL)a3
{
  if (self->_shouldUseCompactCommentsTitle != a3)
  {
    self->_shouldUseCompactCommentsTitle = a3;
    [(PUOneUpBarsController *)self _invalidateCommentsTitle];
  }
}

- (void)setShouldUseCompactTitleView:(BOOL)a3
{
  if (self->_shouldUseCompactTitleView != a3)
  {
    self->_shouldUseCompactTitleView = a3;
    [(PUOneUpBarsController *)self _invalidateTitle];
  }
}

- (void)setShouldPlaceButtonsInNavigationBar:(BOOL)a3
{
  if (self->_shouldPlaceButtonsInNavigationBar != a3)
  {
    self->_shouldPlaceButtonsInNavigationBar = a3;
    [(PUBarsController *)self invalidateBars];
  }
}

- (PUOneUpBarsControllerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = PUOneUpBarsController;
  v2 = [(PUBarsController *)&v4 delegate];

  return v2;
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
  v14 = [MEMORY[0x1E696AD50] indexSet];
  [v14 addIndex:14];
  [v14 addIndex:15];
  [v14 addIndex:8];
  [v14 addIndex:9];
  [v14 addIndex:7];
  [v14 addIndex:24];
  if ([(PUOneUpBarsController *)self style]!= 2)
  {
    [v14 addIndex:31];
  }

  [v14 addIndex:44];
  [v14 addIndex:45];
  [v14 addIndex:27];
  [v14 addIndex:28];
  [v14 addIndex:36];
  if ([(PUOneUpBarsController *)self style]== 1)
  {
    [v14 addIndex:12];
    [v14 addIndex:13];
    [v14 addIndex:32];
  }

  [(PUBarButtonItemCollection *)self->__toolbarButtonItemCollection setCenteredItemIdentifiers:v14];
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

- (void)_handleTraitCollectionSizeClassChangeWithPreviousTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(PUBarsController *)self viewController];
  v6 = [v5 traitCollection];
  v7 = [v6 horizontalSizeClass];
  v8 = [v4 horizontalSizeClass];

  [(PUOneUpBarsController *)self setWantsAnimatedBarsUpdate:v7 != v8];
  [(PUOneUpBarsController *)self _invalidateTitleViewContentMode];
  [(PUBarsController *)self invalidateBars];

  [(PUOneUpBarsController *)self _invalidateChromeVisibilityWithAnimationType:0];
}

- (PUOneUpBarsController)initWithStyle:(int64_t)a3 browsingSession:(id)a4 viewController:(id)a5 actionsController:(id)a6 delegate:(id)a7
{
  v51[2] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v50.receiver = self;
  v50.super_class = PUOneUpBarsController;
  v17 = [(PUBarsController *)&v50 initWithViewController:v14 delegate:v16];
  v18 = v17;
  if (v17)
  {
    v17->_style = a3;
    objc_storeStrong(&v17->_browsingSession, a4);
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
    v19 = [(PUBrowsingSession *)v18->_browsingSession viewModel];
    [v19 registerChangeObserver:v18];

    v20 = [MEMORY[0x1E69C3C48] sharedController];
    [v20 registerChangeObserver:v18 context:VideoMuteControllerContext_43170];

    objc_storeStrong(&v18->_actionsController, a6);
    [(PUOneUpActionsController *)v18->_actionsController setPopoverHelper:v18];
    v21 = [(PUBarsController *)v18 viewController];
    v22 = [v21 pu_toolbarViewModel];
    [v22 registerChangeObserver:v18];

    if (a3 == 4)
    {
      objc_initWeak(&location, v18);
      v23 = [(PUBarsController *)v18 viewController];
      v51[0] = objc_opt_class();
      v51[1] = objc_opt_class();
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __97__PUOneUpBarsController_initWithStyle_browsingSession_viewController_actionsController_delegate___block_invoke;
      v47[3] = &unk_1E7B79E70;
      objc_copyWeak(&v48, &location);
      v25 = [v23 registerForTraitChanges:v24 withHandler:v47];

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
    v33 = [MEMORY[0x1E696AFB0] UUID];
    v34 = [v33 UUIDString];
    v35 = [v32 stringByAppendingString:v34];
    scrubbingIdentifier = v18->__scrubbingIdentifier;
    v18->__scrubbingIdentifier = v35;

    v37 = [objc_alloc(MEMORY[0x1E69C4530]) initWithInfoProvider:v18 infoKind:@"PUCurrentAssetDisplayInfo"];
    currentAssetDisplayInfoUpdater = v18->__currentAssetDisplayInfoUpdater;
    v18->__currentAssetDisplayInfoUpdater = v37;

    [(PXInfoUpdater *)v18->__currentAssetDisplayInfoUpdater setObserver:v18];
    v39 = [PUPlayPauseBarItemsController alloc];
    v40 = [(PUBrowsingSession *)v18->_browsingSession viewModel];
    v41 = [(PUPlayPauseBarItemsController *)v39 initWithViewModel:v40];
    playPauseBarItemsController = v18->__playPauseBarItemsController;
    v18->__playPauseBarItemsController = v41;

    [(PUPlayPauseBarItemsController *)v18->__playPauseBarItemsController registerChangeObserver:v18];
    v18->__lastChromeVisibility = 1;
    [(PUOneUpBarsController *)v18 _initializeBarButtonItemCollections];
    [(PUOneUpBarsController *)v18 _startObservingOrientationChanges];
    [(PUOneUpBarsController *)v18 _invalidateScrubber];
    v43 = [(PUOneUpBarsController *)v18 _currentAssetDisplayInfoUpdater];
    [v43 invalidateInfo];

    [(PUOneUpBarsController *)v18 _invalidateWantsAllPhotosButton];
    [(PUOneUpBarsController *)v18 _invalidateTitleViewProvider];
    v44 = [MEMORY[0x1E696AD88] defaultCenter];
    v45 = [MEMORY[0x1E69C3740] notificationName3DBadgeToggled];
    [v44 addObserver:v18 selector:sel_updateBars name:v45 object:0];

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

- (PUOneUpBarsController)initWithViewController:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PUOneUpBarsController.m" lineNumber:207 description:{@"%s is not available as initializer", "-[PUOneUpBarsController initWithViewController:delegate:]"}];

  abort();
}

- (PUOneUpBarsController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUOneUpBarsController.m" lineNumber:203 description:{@"%s is not available as initializer", "-[PUOneUpBarsController init]"}];

  abort();
}

@end